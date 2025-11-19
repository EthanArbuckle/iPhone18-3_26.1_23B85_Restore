@interface CSDConversationProviderManager
+ (CSDConversationProviderManager)sharedInstance;
+ (id)errorForDisabledPseudonyms;
+ (id)errorForUnregisteredProviderIdentifier:(id)a3;
- (CSDConversationProviderManager)init;
- (id)conversationProviderForIdentifier:(id)a3;
- (id)providerIdentifiersForClient:(id)a3;
- (id)serviceForProvider:(id)a3;
- (id)tuConversationProviderForIdentifier:(id)a3;
- (void)createProcessMonitorIfNecessary:(id)a3 forClient:(id)a4;
- (void)doesHandle:(id)a3 correspondToConversationProvider:(id)a4 completionHandler:(id)a5;
- (void)generatePseudonymHandleForConversationProvider:(id)a3 expiryDuration:(double)a4 URI:(id)a5 completionHandler:(id)a6;
- (void)registerConversationProvider:(id)a3 completionHandler:(id)a4;
- (void)renewPseudonymHandle:(id)a3 forConversationProvider:(id)a4 expirationDate:(id)a5 completionHandler:(id)a6;
- (void)revokePseudonymHandle:(id)a3 forConversationProvider:(id)a4 completionHandler:(id)a5;
- (void)setBeginListeningBlock:(id)a3;
- (void)startTrackingClient:(id)a3 forProviderIdentifier:(id)a4;
- (void)stopTrackingClient:(id)a3;
@end

@implementation CSDConversationProviderManager

+ (CSDConversationProviderManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021F9E8;
  block[3] = &unk_10061A860;
  block[4] = a1;
  if (qword_1006ACEF0 != -1)
  {
    dispatch_once(&qword_1006ACEF0, block);
  }

  v2 = qword_1006ACEE8;

  return v2;
}

- (CSDConversationProviderManager)init
{
  v17.receiver = self;
  v17.super_class = CSDConversationProviderManager;
  v2 = [(CSDConversationProviderManager *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    providerIdentifierToProvider = v3->_providerIdentifierToProvider;
    v3->_providerIdentifierToProvider = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    pidToProviderIdentifiers = v3->_pidToProviderIdentifiers;
    v3->_pidToProviderIdentifiers = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    pidToCachedProviderIdentifiers = v3->_pidToCachedProviderIdentifiers;
    v3->_pidToCachedProviderIdentifiers = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    pidToProcessHandle = v3->_pidToProcessHandle;
    v3->_pidToProcessHandle = v10;

    v12 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v3->_featureFlags;
    v3->_featureFlags = v12;

    v14 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v3->_serverBag;
    v3->_serverBag = v14;
  }

  return v3;
}

- (void)startTrackingClient:(id)a3 forProviderIdentifier:(id)a4
{
  v21 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_accessorLock);
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v21 processIdentifier]);
  v8 = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = [(CSDConversationProviderManager *)self pidToProviderIdentifiers];
    v11 = [v10 objectForKeyedSubscript:v7];

    if (!v11)
    {
      v12 = objc_alloc_init(NSMutableSet);
      v13 = [(CSDConversationProviderManager *)self pidToProviderIdentifiers];
      [v13 setObject:v12 forKeyedSubscript:v7];
    }

    v14 = [(CSDConversationProviderManager *)self pidToProviderIdentifiers];
    v15 = [v14 objectForKeyedSubscript:v7];
    v16 = [v6 copy];
    [v15 addObject:v16];
  }

  else
  {
    v17 = [(CSDConversationProviderManager *)self pidToCachedProviderIdentifiers];
    v18 = [v17 objectForKeyedSubscript:v7];

    if (!v18)
    {
      v19 = objc_alloc_init(NSMutableSet);
      v20 = [(CSDConversationProviderManager *)self pidToCachedProviderIdentifiers];
      [v20 setObject:v19 forKeyedSubscript:v7];
    }

    v14 = [(CSDConversationProviderManager *)self pidToCachedProviderIdentifiers];
    v15 = [v14 objectForKeyedSubscript:v7];
    v16 = [v6 copy];
    [v15 addObject:v16];
  }

  [(CSDConversationProviderManager *)self createProcessMonitorIfNecessary:v7 forClient:v21];
  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)stopTrackingClient:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 processIdentifier]);
  v5 = [(CSDConversationProviderManager *)self pidToProcessHandle];
  [v5 setObject:0 forKeyedSubscript:v4];

  v6 = [(CSDConversationProviderManager *)self pidToProviderIdentifiers];
  [v6 setObject:0 forKeyedSubscript:v4];

  v7 = [(CSDConversationProviderManager *)self pidToCachedProviderIdentifiers];
  [v7 setObject:0 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)providerIdentifiersForClient:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(CSDConversationProviderManager *)self pidToProviderIdentifiers];
  v6 = [[NSNumber alloc] initWithInt:{objc_msgSend(v4, "processIdentifier")}];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 copy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(NSSet);
  }

  v11 = v10;

  os_unfair_lock_unlock(&self->_accessorLock);

  return v11;
}

- (void)registerConversationProvider:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [(CSDConversationProviderManager *)self conversationProviderForIdentifier:v8];

  if (v9)
  {
    v10 = [v6 identifier];
    v11 = [NSString stringWithFormat:@"Already registered provider for identifier: %@", v10];

    v19 = NSLocalizedFailureReasonErrorKey;
    v20 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v13 = [NSError errorWithDomain:@"CSDConversationProviderManager" code:1 userInfo:v12];

    v7[2](v7, v13);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100220128;
    v15[3] = &unk_10061DE70;
    v15[4] = self;
    v16 = [[CSDConversationProvider alloc] initWithProvider:v6];
    v17 = v6;
    v18 = v7;
    v11 = v16;
    v14 = objc_retainBlock(v15);
    [(CSDConversationProvider *)v11 registerWithIDSWithCompletionHandler:v14];
  }
}

- (id)conversationProviderForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  v6 = [v5 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_accessorLock);

  return v6;
}

- (id)tuConversationProviderForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationProviderManager *)self conversationProviderForIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    [v5 tuProvider];
  }

  else
  {
    [TUConversationProvider providerForIdentifier:v4];
  }
  v7 = ;

  return v7;
}

- (void)generatePseudonymHandleForConversationProvider:(id)a3 expiryDuration:(double)a4 URI:(id)a5 completionHandler:(id)a6
{
  v22 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(CSDConversationProviderManager *)self serverBag];
  v13 = [v22 identifier];
  v14 = [v12 gftaasPseudonymsEnabled:v13];

  if ((v14 & 1) == 0)
  {
    v15 = [objc_opt_class() errorForDisabledPseudonyms];
    (*(v11 + 2))(v11, 0, 0, v15);
  }

  os_unfair_lock_lock(&self->_accessorLock);
  v16 = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  v17 = [v22 identifier];
  v18 = [v16 objectForKeyedSubscript:v17];

  if (v18)
  {
    [v18 generatePseudonymHandleForConversationWithExpiryDuration:v10 URI:v11 completionHandler:a4];
    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    v19 = [v22 identifier];
    v20 = [v19 copy];

    os_unfair_lock_unlock(&self->_accessorLock);
    v21 = [objc_opt_class() errorForUnregisteredProviderIdentifier:v20];
    (*(v11 + 2))(v11, 0, 0, v21);
  }
}

- (void)renewPseudonymHandle:(id)a3 forConversationProvider:(id)a4 expirationDate:(id)a5 completionHandler:(id)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  os_unfair_lock_lock(&self->_accessorLock);
  v13 = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  v14 = [v10 identifier];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15)
  {
    [v15 renewPseudonymHandle:v20 expirationDate:v11 completionHandler:v12];
  }

  else
  {
    v16 = objc_opt_class();
    v17 = [v10 identifier];
    v18 = [v17 copy];
    v19 = [v16 errorForUnregisteredProviderIdentifier:v18];
    (*(v12 + 2))(v12, 0, 0, v19);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)revokePseudonymHandle:(id)a3 forConversationProvider:(id)a4 completionHandler:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_accessorLock);
  v10 = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  v11 = [v8 identifier];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    [v12 revokePseudonymHandle:v16 completionHandler:v9];
  }

  else
  {
    v13 = objc_opt_class();
    v14 = [v8 identifier];
    v15 = [v13 errorForUnregisteredProviderIdentifier:v14];
    v9[2](v9, 0, v15);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)doesHandle:(id)a3 correspondToConversationProvider:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_accessorLock);
  v11 = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  v12 = [v9 identifier];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [v13 copy];

  if (v14)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100220B88;
    v18[3] = &unk_10061EE38;
    v19 = v10;
    [v14 isPseudonymHandleForProvider:v8 completionHandler:v18];
  }

  else
  {
    v15 = objc_opt_class();
    v16 = [v9 identifier];
    v17 = [v15 errorForUnregisteredProviderIdentifier:v16];
    (*(v10 + 2))(v10, 0, v17);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)serviceForProvider:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (([v4 isDefaultProvider] & 1) != 0 || (-[CSDConversationProviderManager featureFlags](self, "featureFlags"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "groupFacetimeAsAServiceEnabled"), v5, (v6 & 1) == 0))
  {
    v10 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 isDefaultProvider];
      v14 = @"NO";
      if (v13)
      {
        v14 = @"YES";
      }

      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "provider.isDefaultProvider: %@, provider: %@", &v17, 0x16u);
    }
  }

  else
  {
    v7 = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
    v8 = [v4 identifier];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v9 service];

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
      v17 = 138412802;
      v18 = v10;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "service: %@, provider: %@, providerIdentifierToProvider: %@", &v17, 0x20u);
    }
  }

  if (TUSimulatedModeEnabled())
  {
    v15 = +[CSDSimulatedIDSService sharedInstance];

    v10 = v15;
  }

  os_unfair_lock_unlock(&self->_accessorLock);

  return v10;
}

- (void)setBeginListeningBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = objc_retainBlock(v4);
  beginListeningBlock = self->_beginListeningBlock;
  self->_beginListeningBlock = v5;

  v7 = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  v8 = [v7 allValues];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = [(CSDConversationProviderManager *)self beginListeningBlock];
        v15 = [v13 service];
        (v14)[2](v14, v15);

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

+ (id)errorForUnregisteredProviderIdentifier:(id)a3
{
  v3 = [NSString stringWithFormat:@"Did not register GFT Provider with identifier: %@", a3];
  v7 = NSLocalizedFailureReasonErrorKey;
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [NSError errorWithDomain:@"CSDConversationProviderManager" code:0 userInfo:v4];

  return v5;
}

+ (id)errorForDisabledPseudonyms
{
  v5 = NSLocalizedFailureReasonErrorKey;
  v6 = @"Pseudonym creation is not enabled";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:@"CSDConversationProviderManager" code:0 userInfo:v2];

  return v3;
}

- (void)createProcessMonitorIfNecessary:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationProviderManager *)self pidToProcessHandle];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    objc_initWeak(&location, self);
    v10 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v7 processIdentifier]);
    v11 = [RBSProcessHandle handleForIdentifier:v10 error:0];

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1002212F0;
    v16 = &unk_10061EE60;
    objc_copyWeak(&v17, &location);
    [v11 monitorForDeath:&v13];
    v12 = [(CSDConversationProviderManager *)self pidToProcessHandle:v13];
    [v12 setObject:v11 forKeyedSubscript:v6];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

@end