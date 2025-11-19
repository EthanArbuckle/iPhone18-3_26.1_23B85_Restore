@interface TUCallProviderManager
+ (NSArray)defaultProviders;
+ (NSSet)invitationPreferencesForRecentCall;
+ (int)serviceForProvider:(id)a3 video:(BOOL)a4;
- (NSArray)providers;
- (NSArray)sortedProviders;
- (NSDictionary)providersByIdentifier;
- (NSString)debugDescription;
- (TUCallProvider)defaultAppProvider;
- (TUCallProvider)faceTimeProvider;
- (TUCallProvider)superboxProvider;
- (TUCallProvider)telephonyProvider;
- (TUCallProvider)tinCanProvider;
- (TUCallProviderManager)initWithDataSource:(id)a3 type:(unint64_t)a4 queue:(id)a5;
- (TUCallProviderManager)initWithDataSource:(id)a3 type:(unint64_t)a4 queue:(id)a5 featureFlags:(id)a6;
- (TUCallProviderManager)initWithType:(unint64_t)a3;
- (id)dialRequestForRecentCall:(id)a3;
- (id)joinConversationRequestForRecentCall:(id)a3;
- (id)providerForFavoritesEntry:(id)a3;
- (id)providerForFavoritesEntryActionBundleIdentifier:(id)a3;
- (id)providerForRecentCall:(id)a3;
- (id)providerWithIdentifier:(id)a3;
- (id)providerWithService:(int)a3 video:(BOOL *)a4;
- (id)providersPassingTest:(id)a3;
- (id)sortedProvidersPassingTest:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)a3;
- (void)donateUserIntentForProviderWithIdentifier:(id)a3;
- (void)launchAppForDialRequest:(id)a3 completion:(id)a4;
- (void)providersChangedForDataSource:(id)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation TUCallProviderManager

+ (NSArray)defaultProviders
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [[TUCallProvider alloc] initWithIdentifier:@"com.apple.coretelephony"];
  [(TUCallProvider *)v3 setBundleIdentifier:@"com.apple.mobilephone"];
  [(TUCallProvider *)v3 setLocalizedName:@"Telephony"];
  [(TUCallProvider *)v3 setSupportsAudioOnly:1];
  [(TUCallProvider *)v3 setSupportsEmergency:1];
  [(TUCallProvider *)v3 setSupportsVoicemail:1];
  [(TUCallProvider *)v3 setSupportsRecents:1];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F09C6298];
  [(TUCallProvider *)v3 setSupportedHandleTypes:v4];

  [v2 addObject:v3];
  v5 = [[TUCallProvider alloc] initWithIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];
  v6 = TUPreferredFaceTimeBundleIdentifier();
  [(TUCallProvider *)v5 setBundleIdentifier:v6];

  [(TUCallProvider *)v5 setLocalizedName:@"FaceTime"];
  [(TUCallProvider *)v5 setSupportsAudioOnly:1];
  [(TUCallProvider *)v5 setSupportsAudioAndVideo:1];
  [(TUCallProvider *)v5 setSupportsRecents:1];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F09C6298, &unk_1F09C62B0, 0}];
  [(TUCallProvider *)v5 setSupportedHandleTypes:v7];

  [v2 addObject:v5];
  if (TUShouldCreateSuperboxProvider())
  {
    v8 = [[TUCallProvider alloc] initWithIdentifier:@"com.apple.Superbox"];
    [(TUCallProvider *)v8 setLocalizedName:@"Superbox"];
    [(TUCallProvider *)v8 setSupportsAudioOnly:1];
    [(TUCallProvider *)v8 setSupportsEmergency:1];
    [(TUCallProvider *)v8 setSupportsAudioAndVideo:1];
    [(TUCallProvider *)v8 setSupportsRecents:1];
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F09C6298, &unk_1F09C62B0, 0}];
    [(TUCallProvider *)v8 setSupportedHandleTypes:v9];

    [v2 addObject:v8];
  }

  v10 = [v2 copy];

  return v10;
}

- (NSDictionary)providersByIdentifier
{
  v3 = [(TUCallProviderManager *)self dataSource];
  v4 = [v3 currentProcessCanAccessInitialState];

  if (v4)
  {
    v5 = [(TUCallProviderManager *)self dataSource];
    [v5 blockUntilInitialStateReceived];
  }

  v6 = [(TUCallProviderManager *)self dataSource];
  v7 = [v6 providersByIdentifier];

  v8 = [(TUCallProviderManager *)self type];
  if (v8 == 2)
  {
    v9 = [(TUCallProviderManager *)self dataSource];
    v10 = [v9 pairedHostDeviceProvidersByIdentifier];
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_8;
    }

    v9 = [(TUCallProviderManager *)self dataSource];
    v10 = [v9 localProvidersByIdentifier];
  }

  v11 = v10;

  v7 = v11;
LABEL_8:

  return v7;
}

- (TUCallProvider)telephonyProvider
{
  v10 = *MEMORY[0x1E69E9840];
  if (TUShouldUseSuperboxTelephonyProvider())
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = @"TUShouldUseSuperBoxTelephonyProvider";
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Because this is an internal install and the %@ default is set, com.apple.Superbox (aka Speakerbox)                     is acting as the telephony provider", &v8, 0xCu);
    }

    v4 = [(TUCallProviderManager *)self superboxProvider];
  }

  else
  {
    v5 = [(TUCallProviderManager *)self providersByIdentifier];
    v4 = [v5 objectForKeyedSubscript:@"com.apple.coretelephony"];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (TUCallProvider)faceTimeProvider
{
  v2 = [(TUCallProviderManager *)self providersByIdentifier];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  return v3;
}

- (NSArray)providers
{
  v2 = [(TUCallProviderManager *)self providersByIdentifier];
  v3 = [v2 allValues];
  v4 = [v3 copy];

  return v4;
}

- (void)dealloc
{
  [(TUCallProviderManagerDataSource *)self->_dataSource invalidate];
  v3.receiver = self;
  v3.super_class = TUCallProviderManager;
  [(TUCallProviderManager *)&v3 dealloc];
}

- (TUCallProviderManager)initWithType:(unint64_t)a3
{
  v5 = objc_alloc_init(TUCallProviderManagerXPCClient);
  v6 = dispatch_queue_create("com.apple.telephonyutilities.callprovidermanager", 0);
  v7 = [(TUCallProviderManager *)self initWithDataSource:v5 type:a3 queue:v6];

  return v7;
}

- (TUCallProviderManager)initWithDataSource:(id)a3 type:(unint64_t)a4 queue:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(TUFeatureFlags);
  v11 = [(TUCallProviderManager *)self initWithDataSource:v9 type:a4 queue:v8 featureFlags:v10];

  return v11;
}

- (TUCallProviderManager)initWithDataSource:(id)a3 type:(unint64_t)a4 queue:(id)a5 featureFlags:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = TUCallProviderManager;
  v14 = [(TUCallProviderManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_featureFlags, a6);
    objc_storeStrong(&v15->_queue, a5);
    v15->_type = a4;
    objc_storeStrong(&v15->_dataSource, a3);
    [(TUCallProviderManagerDataSource *)v15->_dataSource setDelegate:v15];
    v16 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v15->_delegateToQueue;
    v15->_delegateToQueue = v16;
  }

  return v15;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUCallProviderManager *)self providers];
  v6 = [v3 stringWithFormat:@"<%@ %p providers=%@>", v4, self, v5];

  return v6;
}

- (TUCallProvider)superboxProvider
{
  v2 = [(TUCallProviderManager *)self providersByIdentifier];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.Superbox"];

  return v3;
}

- (TUCallProvider)tinCanProvider
{
  v2 = [(TUCallProviderManager *)self providersByIdentifier];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.telephonyutilities.callservicesd.TinCan"];

  return v3;
}

- (id)providerWithService:(int)a3 video:(BOOL *)a4
{
  if (a3 == 3)
  {
    v5 = 1;
LABEL_7:
    v6 = [(TUCallProviderManager *)self faceTimeProvider];
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = 0;
  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v6 = [(TUCallProviderManager *)self telephonyProvider];
    v5 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    *a4 = v5;
    goto LABEL_9;
  }

  v6 = 0;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

+ (int)serviceForProvider:(id)a3 video:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:@"com.apple.coretelephony"];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 identifier];
    v10 = [v9 isEqualToString:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

    if (v4)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    if (v10)
    {
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallProviderManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__TUCallProviderManager_addDelegate_queue___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __43__TUCallProviderManager_addDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
  }

  [v2 setObject:v3 forKey:*(a1 + 48)];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TUCallProviderManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__TUCallProviderManager_removeDelegate___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __40__TUCallProviderManager_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (id)providerWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.private.expanse"])
  {
    v5 = @"com.apple.telephonyutilities.callservicesd.FaceTimeProvider";
  }

  else
  {
    v5 = v4;
  }

  v6 = [(TUCallProviderManager *)self providersByIdentifier];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

- (id)providersPassingTest:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [(TUCallProviderManager *)self providers];
  v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(TUCallProviderManager *)self providers];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (v4[2](v4, v13))
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)sortedProvidersPassingTest:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUCallProviderManager *)self sortedProviders];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (v4[2](v4, v12))
        {
          [v6 addObject:{v12, v16}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (TUCallProvider)defaultAppProvider
{
  v4 = [(TUCallProviderManager *)self featureFlags];
  v5 = TUDefaultAppsEnabled(v4);
  if (v5 & 1) != 0 || (-[TUCallProviderManager featureFlags](self, "featureFlags"), v2 = objc_claimAutoreleasedReturnValue(), ([v2 uplevelFTAEnabled]))
  {
    v6 = [(TUCallProviderManager *)self dataSource];
    v7 = [v6 currentProcessCanAccessInitialState];

    if (v5)
    {

      if (!v7)
      {
        goto LABEL_10;
      }

LABEL_7:
      v8 = [(TUCallProviderManager *)self dataSource];
      v9 = [v8 defaultAppProvider];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [(TUCallProviderManager *)self telephonyProvider];
      }

      v12 = v11;

      goto LABEL_13;
    }

    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

LABEL_10:
  v12 = [(TUCallProviderManager *)self telephonyProvider];
LABEL_13:

  return v12;
}

- (NSArray)sortedProviders
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUCallProviderManager *)self featureFlags];
  if (([v3 defaultAppsEnabled] & 1) == 0)
  {

    goto LABEL_6;
  }

  v4 = [(TUCallProviderManager *)self dataSource];
  v5 = [v4 currentProcessCanAccessInitialState];

  if (!v5)
  {
LABEL_6:
    v7 = [(TUCallProviderManager *)self telephonyProvider];
    v13 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    goto LABEL_7;
  }

  v6 = [(TUCallProviderManager *)self dataSource];
  v7 = [v6 sortedProviders];

  if ([v7 count])
  {
    v8 = v7;
    v7 = v8;
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  v12 = [(TUCallProviderManager *)self telephonyProvider];
  v14[0] = v12;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)providerForRecentCall:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v5 = getkCHServiceProviderTelephonySymbolLoc_ptr_0;
  v19 = getkCHServiceProviderTelephonySymbolLoc_ptr_0;
  if (!getkCHServiceProviderTelephonySymbolLoc_ptr_0)
  {
    v6 = CallHistoryLibrary_0();
    v17[3] = dlsym(v6, "kCHServiceProviderTelephony");
    getkCHServiceProviderTelephonySymbolLoc_ptr_0 = v17[3];
    v5 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v5)
  {
    [TUCallProviderManager providerForRecentCall:];
  }

  v7 = *v5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v8 = getkCHServiceProviderFaceTimeSymbolLoc_ptr_0;
  v19 = getkCHServiceProviderFaceTimeSymbolLoc_ptr_0;
  if (!getkCHServiceProviderFaceTimeSymbolLoc_ptr_0)
  {
    v9 = CallHistoryLibrary_0();
    v17[3] = dlsym(v9, "kCHServiceProviderFaceTime");
    getkCHServiceProviderFaceTimeSymbolLoc_ptr_0 = v17[3];
    v8 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v8)
  {
    [TUCallProviderManager providerForRecentCall:];
  }

  v10 = *v8;
  v11 = [v4 serviceProvider];
  v12 = v11;
  if (v7 && [v11 isEqualToString:v7])
  {
    v13 = [(TUCallProviderManager *)self telephonyProvider];
  }

  else if (v10 && [v12 isEqualToString:v10])
  {
    v13 = [(TUCallProviderManager *)self faceTimeProvider];
  }

  else
  {
    v13 = [(TUCallProviderManager *)self providerWithIdentifier:v12];
  }

  v14 = v13;

  return v14;
}

- (id)providerForFavoritesEntry:(id)a3
{
  v4 = [a3 bundleIdentifier];
  v5 = [(TUCallProviderManager *)self providerForFavoritesEntryActionBundleIdentifier:v4];

  return v5;
}

- (id)providerForFavoritesEntryActionBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E695C140]])
  {
    v5 = [(TUCallProviderManager *)self telephonyProvider];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E695C118]])
  {
    v5 = [(TUCallProviderManager *)self faceTimeProvider];
    goto LABEL_5;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__TUCallProviderManager_providerForFavoritesEntryActionBundleIdentifier___block_invoke;
  v9[3] = &unk_1E7426840;
  v10 = v4;
  v7 = [(TUCallProviderManager *)self providersPassingTest:v9];
  v6 = [v7 firstObject];

LABEL_7:

  return v6;
}

uint64_t __73__TUCallProviderManager_providerForFavoritesEntryActionBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)donateUserIntentForProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TUCallProviderManager *)self dataSource];
  [v5 donateUserIntentForProviderWithIdentifier:v4];
}

- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TUCallProviderManager *)self dataSource];
  [v5 donateBackgroundCallIntentForProviderWithIdentifier:v4];
}

- (void)launchAppForDialRequest:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", buf, 0xCu);
  }

  if ([v6 isValid])
  {
    v9 = [v6 provider];
    v10 = [v9 isSystemProvider];

    if (!v10)
    {
      v21 = [(TUCallProviderManager *)self dataSource];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke_3;
      v23[3] = &unk_1E7424A10;
      v24 = v7;
      [v21 launchAppForDialRequest:v6 completion:v23];

      v16 = v24;
      goto LABEL_16;
    }

    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Opening URL because dial request is using a system provider", buf, 2u);
    }

    v12 = [v6 dialType];
    v13 = [v6 launchInBackground];
    v14 = [(TUCallProviderManager *)self dataSource];
    v15 = [v6 URL];
    if (v12 != 1 && v13)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke;
      v25[3] = &unk_1E7424A10;
      v26 = v7;
      [v14 openURL:v15 shouldActivate:0 completionHandler:v25];

      v16 = v26;
LABEL_16:

      v7 = 0;
      v20 = 0;
      goto LABEL_17;
    }

    v27 = 0;
    [v14 openURL:v15 isSensitive:v12 == 1 error:&v27];
    v19 = v27;
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot launch app for invalid dial request: %@", v6];
    v17 = TUDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TUCallProviderManager launchAppForDialRequest:v14 completion:v17];
    }

    v18 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v19 = [v18 errorWithDomain:@"com.apple.TelephonyUtilities" code:1 userInfo:v15];
  }

  v20 = v19;

  if (v7)
  {
    v7[2](v7, v20);
  }

LABEL_17:

  v22 = *MEMORY[0x1E69E9840];
}

void __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke_2;
    v6[3] = &unk_1E7425540;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke_4;
    v6[3] = &unk_1E7425540;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)providersChangedForDataSource:(id)a3
{
  v4 = [(TUCallProviderManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__TUCallProviderManager_providersChangedForDataSource___block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v4, block);
}

void __55__TUCallProviderManager_providersChangedForDataSource___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __55__TUCallProviderManager_providersChangedForDataSource___block_invoke_2;
        block[3] = &unk_1E7424898;
        v9 = *(a1 + 32);
        block[4] = v6;
        block[5] = v9;
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__TUCallProviderManager_providersChangedForDataSource___block_invoke_3;
  v12[3] = &unk_1E7424950;
  v12[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v12);
  v10 = *MEMORY[0x1E69E9840];
}

void __55__TUCallProviderManager_providersChangedForDataSource___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUCallProviderManagerProvidersChangedNotification" object:*(a1 + 32)];
}

- (id)dialRequestForRecentCall:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUCallProviderManager *)self providerForRecentCall:v4];
  if (v5)
  {
    v6 = [[TUDialRequest alloc] initWithProvider:v5];
    v7 = [v4 validRemoteParticipantHandles];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v4 validRemoteParticipantHandles];
      v10 = [v9 anyObject];

      if ([v10 type] == 2 && objc_msgSend(v5, "isTelephonyProvider"))
      {
        v21 = 0;
        v11 = [v4 isoCountryCode];
        v12 = [v10 value];
        v22 = TUNumberToDialOptionsSuppressLocalAssistKey;
        v23[0] = MEMORY[0x1E695E118];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        v14 = TUNumberToDial(v12, v11, 0, v13, &v21);

        [(TUDialRequest *)v6 setDialAssisted:v21];
        v15 = [TUHandle normalizedPhoneNumberHandleForValue:v14 isoCountryCode:v11];
        [(TUDialRequest *)v6 setHandle:v15];
      }

      else
      {
        v11 = [TUHandle handlesForCHRecentCall:v4 validHandlesOnly:1];
        v17 = [MEMORY[0x1E695DFD8] setWithArray:v11];
        [(TUDialRequest *)v6 setHandles:v17];
      }
    }

    v18 = [v4 outgoingLocalParticipantUUID];
    [(TUDialRequest *)v6 setLocalSenderIdentityAccountUUID:v18];

    [(TUDialRequest *)v6 setPerformDialAssist:0];
    [(TUDialRequest *)v6 setPerformLocalDialAssist:0];
    -[TUDialRequest setTtyType:](v6, "setTtyType:", +[TUDialRequest dialRequestTTYTypeForCHRecentCallTTYType:](TUDialRequest, "dialRequestTTYTypeForCHRecentCallTTYType:", [v4 ttyType]));
    -[TUDialRequest setVideo:](v6, "setVideo:", [v4 mediaType] == 2);
    [(TUDialRequest *)v6 setOriginatingUIType:8];
  }

  else
  {
    v16 = TUDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(TUCallProviderManager(CallHistoryAdditions) *)v4 dialRequestForRecentCall:v16];
    }

    v6 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)joinConversationRequestForRecentCall:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DFA8];
  v5 = [v3 validRemoteParticipantHandles];
  v6 = [v4 setWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = [TUHandle handlesForCHRecentCall:v3 validHandlesOnly:1];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if (v12)
        {
          v13 = [TUConversationMember alloc];
          v14 = [MEMORY[0x1E695DFD8] setWithObject:v12];
          v15 = [(TUConversationMember *)v13 initWithHandles:v14];

          [v6 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v16 = [[TUJoinConversationRequest alloc] initWithRemoteMembers:v6 originatingUIType:8];
    -[TUJoinConversationRequest setVideo:](v16, "setVideo:", [v3 mediaType] == 2);
    -[TUJoinConversationRequest setVideoEnabled:](v16, "setVideoEnabled:", [v3 mediaType] == 2);
    v17 = [(TUCallProviderManager *)self faceTimeProvider];
    v18 = [v3 outgoingLocalParticipantUUID];
    v19 = [v17 senderIdentityForAccountUUID:v18];

    if (v19)
    {
      v20 = [v19 handle];
      [(TUJoinConversationRequest *)v16 setCallerID:v20];
    }

    v21 = +[TUCallProviderManager invitationPreferencesForRecentCall];
    [(TUJoinConversationRequest *)v16 setInvitationPreferences:v21];
  }

  else
  {
    v19 = TUDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v3;
      _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "Could not create join request for recent call: %@", buf, 0xCu);
    }

    v16 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (NSSet)invitationPreferencesForRecentCall
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [[TUConversationInvitationPreference alloc] initWithHandleType:2 notificationStyles:6];
  v3 = [[TUConversationInvitationPreference alloc] initWithHandleType:3 notificationStyles:6, v2];
  v9[1] = v3;
  v4 = [[TUConversationInvitationPreference alloc] initWithHandleType:1 notificationStyles:6];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)providerForRecentCall:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCHServiceProviderFaceTime(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUCallProviderManager.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)providerForRecentCall:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCHServiceProviderTelephony(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUCallProviderManager.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)launchAppForDialRequest:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end