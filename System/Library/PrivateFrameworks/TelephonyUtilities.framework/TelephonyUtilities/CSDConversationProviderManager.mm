@interface CSDConversationProviderManager
+ (CSDConversationProviderManager)sharedInstance;
+ (id)errorForDisabledPseudonyms;
+ (id)errorForUnregisteredProviderIdentifier:(id)identifier;
- (CSDConversationProviderManager)init;
- (id)conversationProviderForIdentifier:(id)identifier;
- (id)providerIdentifiersForClient:(id)client;
- (id)serviceForProvider:(id)provider;
- (id)tuConversationProviderForIdentifier:(id)identifier;
- (void)createProcessMonitorIfNecessary:(id)necessary forClient:(id)client;
- (void)doesHandle:(id)handle correspondToConversationProvider:(id)provider completionHandler:(id)handler;
- (void)generatePseudonymHandleForConversationProvider:(id)provider expiryDuration:(double)duration URI:(id)i completionHandler:(id)handler;
- (void)registerConversationProvider:(id)provider completionHandler:(id)handler;
- (void)renewPseudonymHandle:(id)handle forConversationProvider:(id)provider expirationDate:(id)date completionHandler:(id)handler;
- (void)revokePseudonymHandle:(id)handle forConversationProvider:(id)provider completionHandler:(id)handler;
- (void)setBeginListeningBlock:(id)block;
- (void)startTrackingClient:(id)client forProviderIdentifier:(id)identifier;
- (void)stopTrackingClient:(id)client;
@end

@implementation CSDConversationProviderManager

+ (CSDConversationProviderManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021F9E8;
  block[3] = &unk_10061A860;
  block[4] = self;
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

- (void)startTrackingClient:(id)client forProviderIdentifier:(id)identifier
{
  clientCopy = client;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [clientCopy processIdentifier]);
  providerIdentifierToProvider = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  v9 = [providerIdentifierToProvider objectForKeyedSubscript:identifierCopy];

  if (v9)
  {
    pidToProviderIdentifiers = [(CSDConversationProviderManager *)self pidToProviderIdentifiers];
    v11 = [pidToProviderIdentifiers objectForKeyedSubscript:v7];

    if (!v11)
    {
      v12 = objc_alloc_init(NSMutableSet);
      pidToProviderIdentifiers2 = [(CSDConversationProviderManager *)self pidToProviderIdentifiers];
      [pidToProviderIdentifiers2 setObject:v12 forKeyedSubscript:v7];
    }

    pidToProviderIdentifiers3 = [(CSDConversationProviderManager *)self pidToProviderIdentifiers];
    v15 = [pidToProviderIdentifiers3 objectForKeyedSubscript:v7];
    v16 = [identifierCopy copy];
    [v15 addObject:v16];
  }

  else
  {
    pidToCachedProviderIdentifiers = [(CSDConversationProviderManager *)self pidToCachedProviderIdentifiers];
    v18 = [pidToCachedProviderIdentifiers objectForKeyedSubscript:v7];

    if (!v18)
    {
      v19 = objc_alloc_init(NSMutableSet);
      pidToCachedProviderIdentifiers2 = [(CSDConversationProviderManager *)self pidToCachedProviderIdentifiers];
      [pidToCachedProviderIdentifiers2 setObject:v19 forKeyedSubscript:v7];
    }

    pidToProviderIdentifiers3 = [(CSDConversationProviderManager *)self pidToCachedProviderIdentifiers];
    v15 = [pidToProviderIdentifiers3 objectForKeyedSubscript:v7];
    v16 = [identifierCopy copy];
    [v15 addObject:v16];
  }

  [(CSDConversationProviderManager *)self createProcessMonitorIfNecessary:v7 forClient:clientCopy];
  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)stopTrackingClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_accessorLock);
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [clientCopy processIdentifier]);
  pidToProcessHandle = [(CSDConversationProviderManager *)self pidToProcessHandle];
  [pidToProcessHandle setObject:0 forKeyedSubscript:v4];

  pidToProviderIdentifiers = [(CSDConversationProviderManager *)self pidToProviderIdentifiers];
  [pidToProviderIdentifiers setObject:0 forKeyedSubscript:v4];

  pidToCachedProviderIdentifiers = [(CSDConversationProviderManager *)self pidToCachedProviderIdentifiers];
  [pidToCachedProviderIdentifiers setObject:0 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)providerIdentifiersForClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_accessorLock);
  pidToProviderIdentifiers = [(CSDConversationProviderManager *)self pidToProviderIdentifiers];
  v6 = [[NSNumber alloc] initWithInt:{objc_msgSend(clientCopy, "processIdentifier")}];
  v7 = [pidToProviderIdentifiers objectForKeyedSubscript:v6];
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

- (void)registerConversationProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  identifier = [providerCopy identifier];
  v9 = [(CSDConversationProviderManager *)self conversationProviderForIdentifier:identifier];

  if (v9)
  {
    identifier2 = [providerCopy identifier];
    v11 = [NSString stringWithFormat:@"Already registered provider for identifier: %@", identifier2];

    v19 = NSLocalizedFailureReasonErrorKey;
    v20 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v13 = [NSError errorWithDomain:@"CSDConversationProviderManager" code:1 userInfo:v12];

    handlerCopy[2](handlerCopy, v13);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100220128;
    v15[3] = &unk_10061DE70;
    v15[4] = self;
    v16 = [[CSDConversationProvider alloc] initWithProvider:providerCopy];
    v17 = providerCopy;
    v18 = handlerCopy;
    v11 = v16;
    v14 = objc_retainBlock(v15);
    [(CSDConversationProvider *)v11 registerWithIDSWithCompletionHandler:v14];
  }
}

- (id)conversationProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  providerIdentifierToProvider = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  v6 = [providerIdentifierToProvider objectForKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_accessorLock);

  return v6;
}

- (id)tuConversationProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CSDConversationProviderManager *)self conversationProviderForIdentifier:identifierCopy];
  v6 = v5;
  if (v5)
  {
    [v5 tuProvider];
  }

  else
  {
    [TUConversationProvider providerForIdentifier:identifierCopy];
  }
  v7 = ;

  return v7;
}

- (void)generatePseudonymHandleForConversationProvider:(id)provider expiryDuration:(double)duration URI:(id)i completionHandler:(id)handler
{
  providerCopy = provider;
  iCopy = i;
  handlerCopy = handler;
  serverBag = [(CSDConversationProviderManager *)self serverBag];
  identifier = [providerCopy identifier];
  v14 = [serverBag gftaasPseudonymsEnabled:identifier];

  if ((v14 & 1) == 0)
  {
    errorForDisabledPseudonyms = [objc_opt_class() errorForDisabledPseudonyms];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, errorForDisabledPseudonyms);
  }

  os_unfair_lock_lock(&self->_accessorLock);
  providerIdentifierToProvider = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  identifier2 = [providerCopy identifier];
  v18 = [providerIdentifierToProvider objectForKeyedSubscript:identifier2];

  if (v18)
  {
    [v18 generatePseudonymHandleForConversationWithExpiryDuration:iCopy URI:handlerCopy completionHandler:duration];
    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    identifier3 = [providerCopy identifier];
    v20 = [identifier3 copy];

    os_unfair_lock_unlock(&self->_accessorLock);
    v21 = [objc_opt_class() errorForUnregisteredProviderIdentifier:v20];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v21);
  }
}

- (void)renewPseudonymHandle:(id)handle forConversationProvider:(id)provider expirationDate:(id)date completionHandler:(id)handler
{
  handleCopy = handle;
  providerCopy = provider;
  dateCopy = date;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_accessorLock);
  providerIdentifierToProvider = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  identifier = [providerCopy identifier];
  v15 = [providerIdentifierToProvider objectForKeyedSubscript:identifier];

  if (v15)
  {
    [v15 renewPseudonymHandle:handleCopy expirationDate:dateCopy completionHandler:handlerCopy];
  }

  else
  {
    v16 = objc_opt_class();
    identifier2 = [providerCopy identifier];
    v18 = [identifier2 copy];
    v19 = [v16 errorForUnregisteredProviderIdentifier:v18];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v19);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)revokePseudonymHandle:(id)handle forConversationProvider:(id)provider completionHandler:(id)handler
{
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_accessorLock);
  providerIdentifierToProvider = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  identifier = [providerCopy identifier];
  v12 = [providerIdentifierToProvider objectForKeyedSubscript:identifier];

  if (v12)
  {
    [v12 revokePseudonymHandle:handleCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = objc_opt_class();
    identifier2 = [providerCopy identifier];
    v15 = [v13 errorForUnregisteredProviderIdentifier:identifier2];
    handlerCopy[2](handlerCopy, 0, v15);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)doesHandle:(id)handle correspondToConversationProvider:(id)provider completionHandler:(id)handler
{
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_accessorLock);
  providerIdentifierToProvider = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  identifier = [providerCopy identifier];
  v13 = [providerIdentifierToProvider objectForKeyedSubscript:identifier];
  v14 = [v13 copy];

  if (v14)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100220B88;
    v18[3] = &unk_10061EE38;
    v19 = handlerCopy;
    [v14 isPseudonymHandleForProvider:handleCopy completionHandler:v18];
  }

  else
  {
    v15 = objc_opt_class();
    identifier2 = [providerCopy identifier];
    v17 = [v15 errorForUnregisteredProviderIdentifier:identifier2];
    (*(handlerCopy + 2))(handlerCopy, 0, v17);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)serviceForProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_lock(&self->_accessorLock);
  if (([providerCopy isDefaultProvider] & 1) != 0 || (-[CSDConversationProviderManager featureFlags](self, "featureFlags"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "groupFacetimeAsAServiceEnabled"), v5, (v6 & 1) == 0))
  {
    service = +[CSDFaceTimeMultiwayIDSService sharedInstance];
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      isDefaultProvider = [providerCopy isDefaultProvider];
      v14 = @"NO";
      if (isDefaultProvider)
      {
        v14 = @"YES";
      }

      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = providerCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "provider.isDefaultProvider: %@, provider: %@", &v17, 0x16u);
    }
  }

  else
  {
    providerIdentifierToProvider = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
    identifier = [providerCopy identifier];
    v9 = [providerIdentifierToProvider objectForKeyedSubscript:identifier];
    service = [v9 service];

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      providerIdentifierToProvider2 = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
      v17 = 138412802;
      v18 = service;
      v19 = 2112;
      v20 = providerCopy;
      v21 = 2112;
      v22 = providerIdentifierToProvider2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "service: %@, provider: %@, providerIdentifierToProvider: %@", &v17, 0x20u);
    }
  }

  if (TUSimulatedModeEnabled())
  {
    v15 = +[CSDSimulatedIDSService sharedInstance];

    service = v15;
  }

  os_unfair_lock_unlock(&self->_accessorLock);

  return service;
}

- (void)setBeginListeningBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = objc_retainBlock(blockCopy);
  beginListeningBlock = self->_beginListeningBlock;
  self->_beginListeningBlock = v5;

  providerIdentifierToProvider = [(CSDConversationProviderManager *)self providerIdentifierToProvider];
  allValues = [providerIdentifierToProvider allValues];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = allValues;
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
        beginListeningBlock = [(CSDConversationProviderManager *)self beginListeningBlock];
        service = [v13 service];
        (beginListeningBlock)[2](beginListeningBlock, service);

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

+ (id)errorForUnregisteredProviderIdentifier:(id)identifier
{
  identifier = [NSString stringWithFormat:@"Did not register GFT Provider with identifier: %@", identifier];
  v7 = NSLocalizedFailureReasonErrorKey;
  v8 = identifier;
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

- (void)createProcessMonitorIfNecessary:(id)necessary forClient:(id)client
{
  necessaryCopy = necessary;
  clientCopy = client;
  pidToProcessHandle = [(CSDConversationProviderManager *)self pidToProcessHandle];
  v9 = [pidToProcessHandle objectForKeyedSubscript:necessaryCopy];

  if (!v9)
  {
    objc_initWeak(&location, self);
    v10 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [clientCopy processIdentifier]);
    v11 = [RBSProcessHandle handleForIdentifier:v10 error:0];

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1002212F0;
    v16 = &unk_10061EE60;
    objc_copyWeak(&v17, &location);
    [v11 monitorForDeath:&v13];
    v12 = [(CSDConversationProviderManager *)self pidToProcessHandle:v13];
    [v12 setObject:v11 forKeyedSubscript:necessaryCopy];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

@end