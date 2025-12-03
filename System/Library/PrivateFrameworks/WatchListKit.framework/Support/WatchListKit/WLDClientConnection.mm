@interface WLDClientConnection
- (WLDClientConnection)initWithConnection:(id)connection clientIdentifier:(id)identifier;
- (WLDClientConnectionDelegate)delegate;
- (void)_didInvalidate;
- (void)checkPendingPlaybackReports;
- (void)clearOffers:(id)offers;
- (void)deletePlaybackActivityWithIdentifier:(id)identifier bundleID:(id)d;
- (void)endPlaybackSession:(id)session;
- (void)fetchApplications:(id)applications;
- (void)fetchLocationAuthorizationStatus:(id)status;
- (void)fetchSettings:(id)settings;
- (void)performSportsFavoritesAction:(unint64_t)action ids:(id)ids caller:(id)caller completion:(id)completion;
- (void)postSettings:(id)settings replyHandler:(id)handler;
- (void)prewarm;
- (void)readSettingsStore:(id)store;
- (void)removeOfferByBadgeId:(id)id completionHandler:(id)handler;
- (void)reportFederatedPunchout:(id)punchout;
- (void)reportPlayback:(id)playback sessionID:(id)d completion:(id)completion;
- (void)requestConsentForBundleID:(id)d forceAuth:(BOOL)auth replyHandler:(id)handler;
- (void)requestDecoratedNowPlayingSummaries:(id)summaries;
- (void)requestNowPlayingSummaries:(id)summaries;
- (void)saveOffer:(id)offer completionHandler:(id)handler;
- (void)vppaConsentedBundleIDsWithCompletion:(id)completion;
- (void)writeSettingsStore:(id)store replyHandler:(id)handler;
@end

@implementation WLDClientConnection

- (void)checkPendingPlaybackReports
{
  v2 = +[WLDPlaybackManager sharedManager];
  [v2 checkPendingReports];
}

- (WLDClientConnection)initWithConnection:(id)connection clientIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = WLDClientConnection;
  v9 = [(WLDClientConnection *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = [identifierCopy copy];
    clientIdentifier = v10->_clientIdentifier;
    v10->_clientIdentifier = v11;

    connection = v10->_connection;
    v14 = WLKConnectionClientInterface();
    [(NSXPCConnection *)connection setRemoteObjectInterface:v14];

    v15 = [(NSXPCConnection *)v10->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global];
    remoteObjectProxy = v10->_remoteObjectProxy;
    v10->_remoteObjectProxy = v15;

    v17 = v10->_connection;
    v18 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v17 setExportedInterface:v18];

    [(NSXPCConnection *)v10->_connection setExportedObject:v10];
    objc_initWeak(&location, v10);
    v19 = v10->_connection;
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = __59__WLDClientConnection_initWithConnection_clientIdentifier___block_invoke_2;
    v24 = &unk_100044AE8;
    objc_copyWeak(&v25, &location);
    [(NSXPCConnection *)v19 setInvalidationHandler:&v21];
    [(NSXPCConnection *)v10->_connection resume:v21];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __59__WLDClientConnection_initWithConnection_clientIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didInvalidate];
    WeakRetained = v2;
  }
}

- (void)deletePlaybackActivityWithIdentifier:(id)identifier bundleID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.deletePlaybackActivityWithIdentifier"];
  if (identifierCopy && dCopy)
  {
    NSLog(@"Delete requested for content ID: %@, bundle ID: %@", identifierCopy, dCopy);
    v7 = [[WLKPlayHistoryRemoveRequest alloc] initWithBundleID:dCopy externalID:identifierCopy];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __69__WLDClientConnection_deletePlaybackActivityWithIdentifier_bundleID___block_invoke;
    v8[3] = &unk_100044B10;
    v8[4] = &v9;
    [v7 makeRequestWithCompletion:v8];
  }

  else
  {
    NSLog(@"Invalid delete requested for content ID: %@, bundle ID: %@. Ignoring.", identifierCopy, dCopy);
    v7 = v10[5];
    v10[5] = 0;
  }

  _Block_object_dispose(&v9, 8);
}

void __69__WLDClientConnection_deletePlaybackActivityWithIdentifier_bundleID___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)requestNowPlayingSummaries:(id)summaries
{
  summariesCopy = summaries;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy_;
  v9[4] = __Block_byref_object_dispose_;
  v10 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.requestNowPlayingSummaries"];
  v4 = +[WLDPlaybackManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __50__WLDClientConnection_requestNowPlayingSummaries___block_invoke;
  v6[3] = &unk_100044B38;
  v5 = summariesCopy;
  v7 = v5;
  v8 = v9;
  [v4 fetchNowPlayingSummaries:v6];

  _Block_object_dispose(v9, 8);
}

void __50__WLDClientConnection_requestNowPlayingSummaries___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)requestDecoratedNowPlayingSummaries:(id)summaries
{
  summariesCopy = summaries;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy_;
  v9[4] = __Block_byref_object_dispose_;
  v10 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.requestDecoratedNowPlayingSummaries"];
  v4 = +[WLDPlaybackManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __59__WLDClientConnection_requestDecoratedNowPlayingSummaries___block_invoke;
  v6[3] = &unk_100044B60;
  v5 = summariesCopy;
  v7 = v5;
  v8 = v9;
  [v4 fetchDecoratedNowPlayingSummaries:v6];

  _Block_object_dispose(v9, 8);
}

void __59__WLDClientConnection_requestDecoratedNowPlayingSummaries___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)reportPlayback:(id)playback sessionID:(id)d completion:(id)completion
{
  playbackCopy = playback;
  dCopy = d;
  completionCopy = completion;
  v10 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.reportPlayback"];
  connection = [(WLDClientConnection *)self connection];
  v12 = WLKEntitlementPlaybackReport;
  HasBoolValueForEntitlement = WLDConnectionHasBoolValueForEntitlement(connection, WLKEntitlementPlaybackReport);

  if (HasBoolValueForEntitlement)
  {
    v14 = +[WLDPlaybackManager sharedManager];
    [v14 handleDirectPlaybackSummary:playbackCopy sessionID:dCopy];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v15 = [NSString stringWithFormat:@"Ignoring reportPlayback request from client lacking the entitlement: %@", v12];
    NSLog(@"Error: %@", v15);
    if (completionCopy)
    {
      v16 = WLKError();
      (completionCopy)[2](completionCopy, 0, v16);
    }
  }
}

- (void)endPlaybackSession:(id)session
{
  sessionCopy = session;
  v4 = +[WLDPlaybackManager sharedManager];
  [v4 endDirectPlaybackSession:sessionCopy];
}

- (void)requestConsentForBundleID:(id)d forceAuth:(BOOL)auth replyHandler:(id)handler
{
  authCopy = auth;
  dCopy = d;
  handlerCopy = handler;
  if (authCopy)
  {
    v9 = dispatch_time(0, 2000000000);
    dispatch_after(v9, &_dispatch_main_q, &__block_literal_global_34);
  }

  v10 = objc_alloc_init(WLDPlaybackManager);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __72__WLDClientConnection_requestConsentForBundleID_forceAuth_replyHandler___block_invoke_3;
  v12[3] = &unk_100044C08;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(WLDPlaybackManager *)v10 requestToPromptForBundleID:dCopy completionHandler:v12];
}

void __72__WLDClientConnection_requestConsentForBundleID_forceAuth_replyHandler___block_invoke(id a1)
{
  NSLog(@"Start auth");
  v1 = [AMSAuthenticateTask alloc];
  v2 = +[TVAppAccountStoreObjC activeAccount];
  v4 = [v1 initWithAccount:v2 options:0];

  v3 = [v4 performAuthentication];
  [v3 addFinishBlock:&__block_literal_global_42];
}

uint64_t __72__WLDClientConnection_requestConsentForBundleID_forceAuth_replyHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchApplications:(id)applications
{
  if (applications)
  {
    applicationsCopy = applications;
    v6 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.fetchApplications"];
    v4 = +[WLKAppLibrary defaultAppLibrary];
    allAppProxiesPerCategory = [v4 allAppProxiesPerCategory];
    applicationsCopy[2](applicationsCopy, allAppProxiesPerCategory);
  }
}

- (void)readSettingsStore:(id)store
{
  storeCopy = store;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy_;
  v9[4] = __Block_byref_object_dispose_;
  v10 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.readSettingsStore"];
  v4 = +[WLKSettingsStore sharedSettings];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __41__WLDClientConnection_readSettingsStore___block_invoke;
  v6[3] = &unk_100044B60;
  v5 = storeCopy;
  v7 = v5;
  v8 = v9;
  [v4 _dictionaryOnDisk:v6];

  _Block_object_dispose(v9, 8);
}

void __41__WLDClientConnection_readSettingsStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)writeSettingsStore:(id)store replyHandler:(id)handler
{
  storeCopy = store;
  handlerCopy = handler;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy_;
  v12[4] = __Block_byref_object_dispose_;
  v13 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.writeSettingsStore"];
  v7 = +[WLKSettingsStore sharedSettings];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __55__WLDClientConnection_writeSettingsStore_replyHandler___block_invoke;
  v9[3] = &unk_100044C30;
  v8 = handlerCopy;
  v10 = v8;
  v11 = v12;
  [v7 _writeToDisk:storeCopy completion:v9];

  _Block_object_dispose(v12, 8);
}

void __55__WLDClientConnection_writeSettingsStore_replyHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)postSettings:(id)settings replyHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy_;
  v11[4] = __Block_byref_object_dispose_;
  v12 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.postSettings"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __49__WLDClientConnection_postSettings_replyHandler___block_invoke;
  v8[3] = &unk_100044C58;
  v7 = handlerCopy;
  v9 = v7;
  v10 = v11;
  [WLKSettingsCloudUtilities _postChangeDictionaryToCloud:settingsCopy completion:v8];

  _Block_object_dispose(v11, 8);
}

void __49__WLDClientConnection_postSettings_replyHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [WLKSanitizer sanitizeError:?];
    (*(*(a1 + 32) + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)fetchSettings:(id)settings
{
  settingsCopy = settings;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy_;
  v8[4] = __Block_byref_object_dispose_;
  v9 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.fetchSettings"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __37__WLDClientConnection_fetchSettings___block_invoke;
  v5[3] = &unk_100044C80;
  v4 = settingsCopy;
  v6 = v4;
  v7 = v8;
  [WLKSettingsCloudUtilities _fetchSyncDictionary:v5];

  _Block_object_dispose(v8, 8);
}

void __37__WLDClientConnection_fetchSettings___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    v5 = a2;
    v6 = [WLKSanitizer sanitizeError:a3];
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (void)fetchLocationAuthorizationStatus:(id)status
{
  statusCopy = status;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy_;
  v9[4] = __Block_byref_object_dispose_;
  v10 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.fetchLocationAuthorizationStatus"];
  v4 = +[WLKLocationManager defaultLocationManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __56__WLDClientConnection_fetchLocationAuthorizationStatus___block_invoke;
  v6[3] = &unk_100044CA8;
  v5 = statusCopy;
  v7 = v5;
  v8 = v9;
  [v4 _locationAuthorizationStatus:v6];

  _Block_object_dispose(v9, 8);
}

void __56__WLDClientConnection_fetchLocationAuthorizationStatus___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)prewarm
{
  v3 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.prewarm"];
  v2 = +[TVAppBag app];
  [v2 prewarm];
}

- (void)saveOffer:(id)offer completionHandler:(id)handler
{
  offerCopy = offer;
  handlerCopy = handler;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy_;
  v12[4] = __Block_byref_object_dispose_;
  v13 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.saveOffer"];
  v7 = +[WLKOfferManager defaultOfferManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __51__WLDClientConnection_saveOffer_completionHandler___block_invoke;
  v9[3] = &unk_100044CD0;
  v8 = handlerCopy;
  v10 = v8;
  v11 = v12;
  [v7 saveOffer:offerCopy completionHandler:v9];

  _Block_object_dispose(v12, 8);
}

void __51__WLDClientConnection_saveOffer_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [WLKSanitizer sanitizeError:a2];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)removeOfferByBadgeId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy_;
  v12[4] = __Block_byref_object_dispose_;
  v13 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.removeOffer"];
  v7 = +[WLKOfferManager defaultOfferManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __62__WLDClientConnection_removeOfferByBadgeId_completionHandler___block_invoke;
  v9[3] = &unk_100044CD0;
  v8 = handlerCopy;
  v10 = v8;
  v11 = v12;
  [v7 removeOfferByBadgeId:idCopy completionHandler:v9];

  _Block_object_dispose(v12, 8);
}

void __62__WLDClientConnection_removeOfferByBadgeId_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [WLKSanitizer sanitizeError:a2];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __46__WLDClientConnection_fetchOffers_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = a2;
    v7 = [WLKSanitizer sanitizeError:a3];
    (*(v4 + 16))(v4, v6, v7);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (void)clearOffers:(id)offers
{
  offersCopy = offers;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy_;
  v9[4] = __Block_byref_object_dispose_;
  v10 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.fetchOffers"];
  v4 = +[WLKOfferManager defaultOfferManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __35__WLDClientConnection_clearOffers___block_invoke;
  v6[3] = &unk_100044CD0;
  v5 = offersCopy;
  v7 = v5;
  v8 = v9;
  [v4 clearOffers:v6];

  _Block_object_dispose(v9, 8);
}

void __35__WLDClientConnection_clearOffers___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [WLKSanitizer sanitizeError:a2];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __72__WLDClientConnection_fetchSubscriptionData_callerProcessID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = WLKSubscriptionSyncLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempt to xpc encode SubscriptionData which has wrong type.", buf, 2u);
        }

        v5 = 0;
      }
    }

    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = WLKSubscriptionSyncLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempt to xpc encode SubscriptionData error which has wrong type.", v12, 2u);
        }

        v6 = 0;
      }
    }

    v9 = [WLKSanitizer sanitizeError:v6];
    (*(*(a1 + 32) + 16))();
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

- (void)reportFederatedPunchout:(id)punchout
{
  punchoutCopy = punchout;
  v4 = +[WLDFederatedPunchoutReporter sharedFederatedPunchoutReporter];
  [v4 recordPunchout:punchoutCopy];
}

void __47__WLDClientConnection_refreshSubscriptionData___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)vppaConsentedBundleIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[WLDChannelManager defaultChannelManager];
  [v4 vppaConsentedBundleIDsWithCompletion:completionCopy];
}

- (void)performSportsFavoritesAction:(unint64_t)action ids:(id)ids caller:(id)caller completion:(id)completion
{
  idsCopy = ids;
  callerCopy = caller;
  completionCopy = completion;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy_;
  v17[4] = __Block_byref_object_dispose_;
  v18 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDClientConnection.performSportsFavoritesAction"];
  v12 = +[WLKSportsFavoriteManager defaultManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __74__WLDClientConnection_performSportsFavoritesAction_ids_caller_completion___block_invoke;
  v14[3] = &unk_100044D70;
  v13 = completionCopy;
  v15 = v13;
  v16 = v17;
  [v12 _performAction:action withIDs:idsCopy caller:callerCopy completion:v14];

  _Block_object_dispose(v17, 8);
}

void __74__WLDClientConnection_performSportsFavoritesAction_ids_caller_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(NSMutableSet);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v21 + 1) + 8 * v15) ID];
        [v10 addObject:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v17 = *(a1 + 32);
  v18 = [v10 allObjects];
  (*(v17 + 16))(v17, v18, v8, v9);

  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}

void __91__WLDClientConnection_performSportsFavoritesAction_favoritesSyncEnabled_caller_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)_didInvalidate
{
  NSLog(@"Connection invalidated for client: %@", a2, self->_clientIdentifier);
  connection = self->_connection;
  self->_connection = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 clientConnectionDidInvalidate:self];
  }
}

- (WLDClientConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end