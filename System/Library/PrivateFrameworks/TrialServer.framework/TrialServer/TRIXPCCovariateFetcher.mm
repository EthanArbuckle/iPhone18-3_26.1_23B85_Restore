@interface TRIXPCCovariateFetcher
- (TRIXPCCovariateFetcher)init;
- (id)geoservicesBucketID;
- (id)mapsDeviceCountryCode;
- (int64_t)appleIntelligenceState;
- (int64_t)appleIntelligenceStateWithUseCaseIdentifiers:(id)identifiers;
- (void)invalidateConnection;
- (void)sendMessageToRemoteObject:(id)object;
- (void)setupArchivingServiceXPCConnection;
@end

@implementation TRIXPCCovariateFetcher

- (void)invalidateConnection
{
  os_unfair_lock_lock(&self->connectionLock);
  xpcConnection = self->xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection invalidate];
    v4 = self->xpcConnection;
    self->xpcConnection = 0;
  }

  os_unfair_lock_unlock(&self->connectionLock);
}

- (void)setupArchivingServiceXPCConnection
{
  os_unfair_lock_lock(&self->connectionLock);
  if (!self->xpcConnection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.trial.TrialArchivingService"];
    xpcConnection = self->xpcConnection;
    self->xpcConnection = v3;

    if (self->xpcConnection)
    {
      v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FEF680];
      [(NSXPCConnection *)self->xpcConnection setRemoteObjectInterface:v5];

      [(NSXPCConnection *)self->xpcConnection setInterruptionHandler:&__block_literal_global_17];
      [(NSXPCConnection *)self->xpcConnection setInvalidationHandler:&__block_literal_global_30];
      [(NSXPCConnection *)self->xpcConnection resume];
    }

    else
    {
      v6 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "TRIXPCCovariateFetcher was unable to establish a connection to TrialArchivingService.", v7, 2u);
      }
    }
  }

  os_unfair_lock_unlock(&self->connectionLock);
}

void __60__TRIXPCCovariateFetcher_setupArchivingServiceXPCConnection__block_invoke()
{
  v0 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26F567000, v0, OS_LOG_TYPE_DEFAULT, "Covariate fetch connection to TrialArchivingService was interrupted.", v1, 2u);
  }
}

void __60__TRIXPCCovariateFetcher_setupArchivingServiceXPCConnection__block_invoke_28()
{
  v0 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26F567000, v0, OS_LOG_TYPE_DEFAULT, "Covariate fetch connection to TrialArchivingService was invalidated.", v1, 2u);
  }
}

- (TRIXPCCovariateFetcher)init
{
  v6.receiver = self;
  v6.super_class = TRIXPCCovariateFetcher;
  v2 = [(TRIXPCCovariateFetcher *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.Trial.covariateFetchOperationQueue" qosClass:17];
    inFlightConnectionQueue = v2->inFlightConnectionQueue;
    v2->inFlightConnectionQueue = v3;

    v2->connectionLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)sendMessageToRemoteObject:(id)object
{
  objectCopy = object;
  [(TRIXPCCovariateFetcher *)self setupArchivingServiceXPCConnection];
  v5 = dispatch_group_create();
  inFlightConnectionQueue = self->inFlightConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__TRIXPCCovariateFetcher_sendMessageToRemoteObject___block_invoke;
  block[3] = &unk_279DDF470;
  block[4] = self;
  v10 = v5;
  v11 = objectCopy;
  v7 = objectCopy;
  v8 = v5;
  dispatch_group_async(v8, inFlightConnectionQueue, block);
  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  [(TRIXPCCovariateFetcher *)self invalidateConnection];
}

void __52__TRIXPCCovariateFetcher_sendMessageToRemoteObject___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = [*(*(a1 + 32) + 8) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_36];
  if (v2)
  {
    dispatch_group_enter(*(a1 + 40));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__TRIXPCCovariateFetcher_sendMessageToRemoteObject___block_invoke_37;
    v6[3] = &unk_279DDEEE0;
    v7 = *(a1 + 40);
    v3 = MEMORY[0x2743948D0](v6);
    (*(*(a1 + 48) + 16))();

    v4 = v7;
  }

  else
  {
    v4 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "TRIXPCCovariateFetcher did not receive a proxy for the remote object.", v5, 2u);
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 16));
}

void __52__TRIXPCCovariateFetcher_sendMessageToRemoteObject___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_26F567000, v3, OS_LOG_TYPE_ERROR, "TRIXPCCovariateFetcher failed to connect to remote object proxy with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)mapsDeviceCountryCode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = &stru_287FA0430;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__TRIXPCCovariateFetcher_mapsDeviceCountryCode__block_invoke;
  v6[3] = &unk_279DE1380;
  v6[4] = &v7;
  v3 = MEMORY[0x2743948D0](v6, a2);
  [(TRIXPCCovariateFetcher *)self sendMessageToRemoteObject:v3];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__TRIXPCCovariateFetcher_mapsDeviceCountryCode__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__TRIXPCCovariateFetcher_mapsDeviceCountryCode__block_invoke_2;
  v8[3] = &unk_279DE1358;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a2 mapsDeviceCountryCode:v8];
}

void __47__TRIXPCCovariateFetcher_mapsDeviceCountryCode__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (id)geoservicesBucketID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = &unk_287FC47C8;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__TRIXPCCovariateFetcher_geoservicesBucketID__block_invoke;
  v6[3] = &unk_279DE1380;
  v6[4] = &v7;
  v3 = MEMORY[0x2743948D0](v6, a2);
  [(TRIXPCCovariateFetcher *)self sendMessageToRemoteObject:v3];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__TRIXPCCovariateFetcher_geoservicesBucketID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__TRIXPCCovariateFetcher_geoservicesBucketID__block_invoke_2;
  v8[3] = &unk_279DE13A8;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a2 geoservicesBucketID:v8];
}

void __45__TRIXPCCovariateFetcher_geoservicesBucketID__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (int64_t)appleIntelligenceState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = &unk_287FC47E0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__TRIXPCCovariateFetcher_appleIntelligenceState__block_invoke;
  v6[3] = &unk_279DE1380;
  v6[4] = &v7;
  v3 = MEMORY[0x2743948D0](v6, a2);
  [(TRIXPCCovariateFetcher *)self sendMessageToRemoteObject:v3];
  integerValue = [v8[5] integerValue];

  _Block_object_dispose(&v7, 8);
  return integerValue;
}

void __48__TRIXPCCovariateFetcher_appleIntelligenceState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__TRIXPCCovariateFetcher_appleIntelligenceState__block_invoke_2;
  v8[3] = &unk_279DE13A8;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a2 appleIntelligenceState:v8];
}

void __48__TRIXPCCovariateFetcher_appleIntelligenceState__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (int64_t)appleIntelligenceStateWithUseCaseIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__15;
  v19 = __Block_byref_object_dispose__15;
  v20 = &unk_287FC47E0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __71__TRIXPCCovariateFetcher_appleIntelligenceStateWithUseCaseIdentifiers___block_invoke;
  v12 = &unk_279DE13D0;
  v5 = identifiersCopy;
  v13 = v5;
  v14 = &v15;
  v6 = MEMORY[0x2743948D0](&v9);
  [(TRIXPCCovariateFetcher *)self sendMessageToRemoteObject:v6, v9, v10, v11, v12];
  integerValue = [v16[5] integerValue];

  _Block_object_dispose(&v15, 8);
  return integerValue;
}

void __71__TRIXPCCovariateFetcher_appleIntelligenceStateWithUseCaseIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__TRIXPCCovariateFetcher_appleIntelligenceStateWithUseCaseIdentifiers___block_invoke_2;
  v9[3] = &unk_279DE13A8;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v8 = v5;
  [a2 appleIntelligenceStateWithUseCaseIDs:v7 handler:v9];
}

void __71__TRIXPCCovariateFetcher_appleIntelligenceStateWithUseCaseIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

@end