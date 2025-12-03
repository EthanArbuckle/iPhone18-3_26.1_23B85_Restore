@interface CSDFaceTimeProviderDelegate
- (BOOL)providerDelegate:(id)delegate isExclusivelyManagingCallWithUUID:(id)d;
- (BOOL)providerDelegate:(id)delegate isManagingCallWithUUID:(id)d;
- (CSDFaceTimeProviderDelegate)init;
- (CSDFaceTimeProviderDelegate)initWithCallSource:(id)source queue:(id)queue chManager:(id)manager conversationManager:(id)conversationManager;
- (CSDFaceTimeProviderDelegate)initWithCallSource:(id)source queue:(id)queue featureFlags:(id)flags blockUtilities:(id)utilities shouldUseIDSDemuxer:(BOOL)demuxer chManager:(id)manager conversationManager:(id)conversationManager;
- (CSDProviderCallDataSource)callDataSource;
- (CXProviderConfiguration)providerConfiguration;
- (id)ISOCountryCodeForCallWithUUID:(id)d;
- (id)_createJoinCallAction:(id)action outgoingCallerID:(id)d gftOneToOneDestinations:(id)destinations;
- (void)_checkAndSendReturningSilencedIMAVAnalytic:(id)analytic;
- (void)_createDelayedActionListIfNecessary:(id)necessary;
- (void)_processDelayedActionList:(id)list provider:(id)provider;
- (void)dealloc;
- (void)deferReportingAudioFinishedForCallWithUUID:(id)d;
- (void)initiateModernFTInviteForAction:(id)action destinations:(id)destinations excludedIMAVDestinations:(id)vDestinations joinCallActionToFulfill:(id)fulfill;
- (void)provider:(id)provider didActivateAudioSession:(id)session;
- (void)provider:(id)provider didDeactivateAudioSession:(id)session;
- (void)provider:(id)provider performAnswerCallAction:(id)action;
- (void)provider:(id)provider performEnableVideoCallAction:(id)action;
- (void)provider:(id)provider performEndCallAction:(id)action;
- (void)provider:(id)provider performJoinCallAction:(id)action;
- (void)provider:(id)provider performJoinCallAction:(id)action shouldUseIDSDemuxer:(BOOL)demuxer;
- (void)provider:(id)provider performSetAllowUplinkAudioInjectionAction:(id)action;
- (void)provider:(id)provider performSetHeldCallAction:(id)action;
- (void)provider:(id)provider performSetMutedCallAction:(id)action;
- (void)provider:(id)provider performSetRelayingCallAction:(id)action;
- (void)provider:(id)provider performSetScreenShareAttributesCallAction:(id)action;
- (void)provider:(id)provider performSetScreeningCallAction:(id)action;
- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action;
- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action;
- (void)provider:(id)provider performStartCallAction:(id)action;
- (void)provider:(id)provider performStartCallAction:(id)action shouldUseIDSDemuxer:(BOOL)demuxer;
- (void)provider:(id)provider timedOutPerformingAction:(id)action;
- (void)providerDelegate:(id)delegate callWithUUID:(id)d connectedAtDate:(id)date;
- (void)providerDelegate:(id)delegate callWithUUID:(id)d endedAtDate:(id)date withReason:(int64_t)reason failureContext:(id)context;
- (void)providerDelegate:(id)delegate callWithUUID:(id)d startedConnectingAtDate:(id)date;
- (void)providerDelegate:(id)delegate endOtherProvidersCallWithUUID:(id)d;
- (void)providerDelegate:(id)delegate requestedTransaction:(id)transaction completion:(id)completion;
- (void)providerDelegate:(id)delegate requestedUpgradeToExistingCallForConversation:(id)conversation withSessionToken:(id)token completion:(id)completion;
- (void)providerDidBegin:(id)begin;
- (void)providerDidReset:(id)reset;
- (void)updateProviderConfigurationWithSenderIdentities:(id)identities;
@end

@implementation CSDFaceTimeProviderDelegate

- (CSDFaceTimeProviderDelegate)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDFaceTimeProviderDelegate.m" lineNumber:82 description:{@"%s is not available. Use a designated initializer instead.", "-[CSDFaceTimeProviderDelegate init]"}];

  return 0;
}

- (CSDFaceTimeProviderDelegate)initWithCallSource:(id)source queue:(id)queue chManager:(id)manager conversationManager:(id)conversationManager
{
  conversationManagerCopy = conversationManager;
  managerCopy = manager;
  queueCopy = queue;
  sourceCopy = source;
  v14 = objc_alloc_init(TUFeatureFlags);
  v15 = objc_alloc_init(CSDBlockUtilities);
  v16 = -[CSDFaceTimeProviderDelegate initWithCallSource:queue:featureFlags:blockUtilities:shouldUseIDSDemuxer:chManager:conversationManager:](self, "initWithCallSource:queue:featureFlags:blockUtilities:shouldUseIDSDemuxer:chManager:conversationManager:", sourceCopy, queueCopy, v14, v15, [v14 conversationOneToOneModeEnabled], managerCopy, conversationManagerCopy);

  return v16;
}

- (CSDFaceTimeProviderDelegate)initWithCallSource:(id)source queue:(id)queue featureFlags:(id)flags blockUtilities:(id)utilities shouldUseIDSDemuxer:(BOOL)demuxer chManager:(id)manager conversationManager:(id)conversationManager
{
  sourceCopy = source;
  queueCopy = queue;
  flagsCopy = flags;
  utilitiesCopy = utilities;
  managerCopy = manager;
  conversationManagerCopy = conversationManager;
  v78.receiver = self;
  v78.super_class = CSDFaceTimeProviderDelegate;
  v19 = [(CSDFaceTimeProviderDelegate *)&v78 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, queue);
    queue = [(CSDFaceTimeProviderDelegate *)v20 queue];
    dispatch_assert_queue_V2(queue);

    objc_storeStrong(&v20->_featureFlags, flags);
    v22 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v20->_serverBag;
    v20->_serverBag = v22;

    objc_storeStrong(&v20->_blockUtilities, utilities);
    v20->_shouldUseIDSDemuxer = demuxer;
    v24 = objc_alloc_init(CSDFaceTimeInviteDemuxer);
    faceTimeInviteDemuxer = v20->_faceTimeInviteDemuxer;
    v20->_faceTimeInviteDemuxer = v24;

    v26 = [[CSDFaceTimeIDSProviderDelegate alloc] initWithQueue:queueCopy];
    faceTimeIDSProviderDelegate = v20->_faceTimeIDSProviderDelegate;
    v20->_faceTimeIDSProviderDelegate = v26;

    [(CSDFaceTimeIDSProviderDelegate *)v20->_faceTimeIDSProviderDelegate setFaceTimeDemuxerDelegate:v20];
    v28 = [[CSDFaceTimeIMAVProviderDelegate alloc] initWithQueue:queueCopy];
    faceTimeIMAVProviderDelegate = v20->_faceTimeIMAVProviderDelegate;
    v20->_faceTimeIMAVProviderDelegate = v28;

    [(CSDFaceTimeIMAVProviderDelegate *)v20->_faceTimeIMAVProviderDelegate setFaceTimeDemuxerDelegate:v20];
    v30 = objc_alloc_init(NSMutableDictionary);
    delayedActionsByCallUUID = v20->_delayedActionsByCallUUID;
    v20->_delayedActionsByCallUUID = v30;

    v32 = objc_alloc_init(CPApplicationController);
    v33 = [CSDIDSFirewallManager alloc];
    v34 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
    v35 = objc_alloc_init(CSDSharedConversationServerBag);
    v36 = [(CSDIDSFirewallManager *)v33 initWithService:v34 chManager:managerCopy featureFlags:flagsCopy serverBag:v35 queue:queueCopy];
    firewallManager = v20->_firewallManager;
    v20->_firewallManager = v36;

    [(CSDIDSFirewallManager *)v20->_firewallManager updateFirewallWithCallHistoryIfNecessary];
    v38 = objc_alloc_init(CSDConversationInvitationResolver);
    objc_storeStrong(&v20->_conversationManager, conversationManager);
    v39 = [[CSDConversationManagerXPCServer alloc] initWithConversationManager:v20->_conversationManager featureFlags:v20->_featureFlags];
    conversationManagerXPCServer = v20->_conversationManagerXPCServer;
    v20->_conversationManagerXPCServer = v39;

    v41 = +[FTDeviceSupport sharedInstance];
    deviceType = [v41 deviceType];

    if (deviceType != 7 && (TUSharePlayForceDisabled() & 1) == 0)
    {
      v43 = +[TUCallCenter sharedInstance];
      neighborhoodActivityConduit = [v43 neighborhoodActivityConduit];
      neighborhoodActivityConduit = v20->_neighborhoodActivityConduit;
      v20->_neighborhoodActivityConduit = neighborhoodActivityConduit;

      v46 = [CSDConduitLifecycleController alloc];
      v47 = +[TUCallCenter sharedInstance];
      conversationManager = [v47 conversationManager];
      v49 = [(CSDConduitLifecycleController *)v46 initWithConversationManager:conversationManager delegate:v20->_neighborhoodActivityConduit];
      [(TUNeighborhoodActivityConduit *)v20->_neighborhoodActivityConduit setConduitLifecycleController:v49];
    }

    v50 = [[CPBiomeSessionDonator alloc] initWithDataSource:v20->_conversationManager parentQueue:queueCopy];
    cpBiomeStreamDonator = v20->_cpBiomeStreamDonator;
    v20->_cpBiomeStreamDonator = v50;

    v52 = [[CPConversationManagerHost alloc] initWithDataSource:v20->_conversationManager];
    conversationManagerHost = v20->_conversationManagerHost;
    v20->_conversationManagerHost = v52;

    v54 = [[CPApplicationMonitor alloc] initWithApplicationController:v32 queue:queueCopy];
    applicationMonitor = v20->_applicationMonitor;
    v20->_applicationMonitor = v54;

    [(CSDConversationManager *)v20->_conversationManager addObserver:v20->_applicationMonitor queue:queueCopy];
    v56 = [[CSDFaceTimeConversationProviderDelegate alloc] initWithConversationManager:v20->_conversationManager queue:queueCopy invitationResolver:v38];
    faceTimeConversationProviderDelegate = v20->_faceTimeConversationProviderDelegate;
    v20->_faceTimeConversationProviderDelegate = v56;

    [(CSDAbstractFaceTimeConversationProviderDelegate *)v20->_faceTimeConversationProviderDelegate setFaceTimeDemuxerDelegate:v20];
    if ([flagsCopy groupFacetimeAsAServiceEnabled])
    {
      v58 = [[CSDGFTServiceConversationProviderDelegate alloc] initWithConversationManager:v20->_conversationManager queue:queueCopy invitationResolver:v38];
      groupFaceTimeServiceProviderDelegate = v20->_groupFaceTimeServiceProviderDelegate;
      v20->_groupFaceTimeServiceProviderDelegate = v58;

      [(CSDAbstractFaceTimeConversationProviderDelegate *)v20->_groupFaceTimeServiceProviderDelegate setFaceTimeDemuxerDelegate:v20];
      objc_initWeak(&location, v20);
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_10012C820;
      v75[3] = &unk_10061C2B0;
      objc_copyWeak(&v76, &location);
      v60 = +[CSDConversationProviderManager sharedInstance];
      [v60 setBeginListeningBlock:v75];

      objc_destroyWeak(&v76);
      objc_destroyWeak(&location);
    }

    v61 = TUSimulatedModeEnabled();
    v62 = &off_1006166A8;
    conversationManager = v20->_conversationManager;
    if (!v61)
    {
      v62 = off_100616618;
    }

    sharedInstance = [(__objc2_class *)*v62 sharedInstance];
    [(CSDConversationManager *)conversationManager beginListeningOnService:sharedInstance];

    [(CSDConversationManager *)v20->_conversationManager generateAllInactiveLinks];
    v65 = [CXInProcessProvider alloc];
    providerConfiguration = [(CSDFaceTimeProviderDelegate *)v20 providerConfiguration];
    v67 = [v65 initWithConfiguration:providerConfiguration callSource:sourceCopy];
    provider = v20->_provider;
    v20->_provider = v67;

    [(CXProvider *)v20->_provider setDelegate:v20 queue:v20->_queue];
    featureFlags = [(CSDFaceTimeProviderDelegate *)v20 featureFlags];
    LODWORD(providerConfiguration) = [featureFlags ftAppDeletionEnabled];

    if (providerConfiguration)
    {
      v70 = [[CSDFaceTimeInstallationNotifier alloc] initWithQueue:v20->_queue];
      facetimeInstallationNotifier = v20->_facetimeInstallationNotifier;
      v20->_facetimeInstallationNotifier = v70;
    }
  }

  return v20;
}

- (void)dealloc
{
  conversationManagerXPCServer = [(CSDFaceTimeProviderDelegate *)self conversationManagerXPCServer];
  [conversationManagerXPCServer invalidate];

  v4.receiver = self;
  v4.super_class = CSDFaceTimeProviderDelegate;
  [(CSDFaceTimeProviderDelegate *)&v4 dealloc];
}

- (CXProviderConfiguration)providerConfiguration
{
  v2 = objc_alloc_init(CXProviderConfiguration);
  [v2 setMaximumCallGroups:2];
  [v2 setMaximumCallsPerCallGroup:1];
  [v2 setSupportsAudioOnly:1];
  [v2 setSupportsVideo:1];
  v3 = [NSSet setWithObjects:&off_10063EC90, &off_10063ECA8, 0];
  [v2 setSupportedHandleTypes:v3];

  [v2 setSupportsAudioTranslation:1];

  return v2;
}

- (id)ISOCountryCodeForCallWithUUID:(id)d
{
  dCopy = d;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v6 = [faceTimeIDSProviderDelegate ISOCountryCodeForCallWithUUID:dCopy];

  return v6;
}

- (void)updateProviderConfigurationWithSenderIdentities:(id)identities
{
  identitiesCopy = identities;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  [faceTimeIDSProviderDelegate updateProviderConfigurationWithSenderIdentities:identitiesCopy];
}

- (void)deferReportingAudioFinishedForCallWithUUID:(id)d
{
  dCopy = d;
  v5 = dispatch_time(0, 1750000000);
  queue = [(CSDFaceTimeProviderDelegate *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012CBDC;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_after(v5, queue, v8);
}

- (void)_createDelayedActionListIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
  v5 = [delayedActionsByCallUUID objectForKeyedSubscript:necessaryCopy];

  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
    [delayedActionsByCallUUID2 setObject:v6 forKeyedSubscript:necessaryCopy];
  }
}

- (void)_processDelayedActionList:(id)list provider:(id)provider
{
  listCopy = list;
  providerCopy = provider;
  delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
  v9 = [delayedActionsByCallUUID objectForKeyedSubscript:listCopy];

  if (v9)
  {
    delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
    v11 = [delayedActionsByCallUUID2 objectForKeyedSubscript:listCopy];
    v12 = [v11 copy];

    delayedActionsByCallUUID3 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
    [delayedActionsByCallUUID3 setObject:0 forKeyedSubscript:listCopy];

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v15 = [callDataSource _callWithUUID:listCopy];

    v16 = sub_100004778();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 138412290;
        v43 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Processing delayed actions: %@", buf, 0xCu);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = v12;
      v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v18)
      {
        v19 = v18;
        v35 = v12;
        v36 = listCopy;
        v20 = *v38;
        v21 = &swift_cvw_initEnumMetadataSinglePayloadWithLayoutString_ptr;
        v22 = &swift_cvw_initEnumMetadataSinglePayloadWithLayoutString_ptr;
        v23 = &swift_cvw_initEnumMetadataSinglePayloadWithLayoutString_ptr;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v38 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v25 = *(*(&v37 + 1) + 8 * i);
            v26 = v21[394];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(CSDFaceTimeProviderDelegate *)self provider:providerCopy performSetRelayingCallAction:v25];
            }

            else
            {
              v27 = v22[393];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(CSDFaceTimeProviderDelegate *)self provider:providerCopy performSetMutedCallAction:v25];
              }

              else
              {
                v28 = v23[397];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(CSDFaceTimeProviderDelegate *)self provider:providerCopy performSetSendingVideoCallAction:v25];
                }

                else
                {
                  selfCopy = self;
                  v30 = providerCopy;
                  v31 = v16;
                  v32 = v22;
                  v33 = v23;
                  v34 = sub_100004778();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v43 = v25;
                    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unsupported delayed action: %@", buf, 0xCu);
                  }

                  [v25 fail];
                  v23 = v33;
                  v22 = v32;
                  v16 = v31;
                  providerCopy = v30;
                  self = selfCopy;
                  v21 = &swift_cvw_initEnumMetadataSinglePayloadWithLayoutString_ptr;
                }
              }
            }
          }

          v19 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v19);
        v12 = v35;
        listCopy = v36;
      }
    }

    else if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not processing delayed actions because we no longer have a call", buf, 2u);
    }
  }
}

- (void)providerDelegate:(id)delegate callWithUUID:(id)d startedConnectingAtDate:(id)date
{
  delegateCopy = delegate;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = delegateCopy;
    v18 = 2112;
    v19 = dCopy;
    v20 = 2112;
    v21 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "providerDelegate: %@ callUUID: %@ dateStartedConnecting: %@", &v16, 0x20u);
  }

  provider = [(CSDFaceTimeProviderDelegate *)self provider];
  [provider reportOutgoingCallWithUUID:dCopy startedConnectingAtDate:dateCopy];

  [(CSDFaceTimeProviderDelegate *)self providerDelegate:delegateCopy endOtherProvidersCallWithUUID:dCopy];
  callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
  v14 = [callDataSource _callWithUUID:dCopy];

  if (!v14)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ending call since dataSource is not tracking any call for callUUID: %@", &v16, 0xCu);
    }

    [delegateCopy endCallWithUUIDAsLocalHangup:dCopy];
  }
}

- (void)providerDelegate:(id)delegate callWithUUID:(id)d connectedAtDate:(id)date
{
  delegateCopy = delegate;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = delegateCopy;
    v18 = 2112;
    v19 = dCopy;
    v20 = 2112;
    v21 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "providerDelegate: %@ callUUID: %@ dateConnected: %@", &v16, 0x20u);
  }

  provider = [(CSDFaceTimeProviderDelegate *)self provider];
  [provider reportOutgoingCallWithUUID:dCopy connectedAtDate:dateCopy];

  [(CSDFaceTimeProviderDelegate *)self providerDelegate:delegateCopy endOtherProvidersCallWithUUID:dCopy];
  callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
  v14 = [callDataSource _callWithUUID:dCopy];

  if (!v14)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ending call since dataSource is not tracking any call for callUUID: %@", &v16, 0xCu);
    }

    [delegateCopy endCallWithUUIDAsLocalHangup:dCopy];
  }
}

- (void)providerDelegate:(id)delegate callWithUUID:(id)d endedAtDate:(id)date withReason:(int64_t)reason failureContext:(id)context
{
  delegateCopy = delegate;
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v59 = delegateCopy;
    v60 = 2112;
    v61 = dCopy;
    v62 = 2112;
    reasonCopy2 = dateCopy;
    v64 = 2048;
    reasonCopy = reason;
    v66 = 2112;
    v67 = contextCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "providerDelegate: %@ callUUID: %@ dateEnded: %@ endedReason: %ld failureContext: %@", buf, 0x34u);
  }

  faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];

  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  faceTimeConversationProviderDelegate2 = faceTimeIDSProviderDelegate;
  if (faceTimeConversationProviderDelegate == delegateCopy)
  {
    v57[0] = faceTimeIDSProviderDelegate;
    faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    v57[1] = faceTimeIMAVProviderDelegate;
    v22 = v57;
  }

  else
  {

    if (faceTimeConversationProviderDelegate2 == delegateCopy)
    {
      faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
      v56[0] = faceTimeConversationProviderDelegate2;
      faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
      v56[1] = faceTimeIMAVProviderDelegate;
      v22 = v56;
    }

    else
    {
      faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];

      if (faceTimeIMAVProviderDelegate2 != delegateCopy)
      {
        v20 = 0;
        goto LABEL_11;
      }

      faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
      v55[0] = faceTimeConversationProviderDelegate2;
      faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
      v55[1] = faceTimeIMAVProviderDelegate;
      v22 = v55;
    }
  }

  v20 = [NSArray arrayWithObjects:v22 count:2];

LABEL_11:
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v23 = v20;
  v24 = [v23 countByEnumeratingWithState:&v49 objects:v54 count:16];
  v42 = delegateCopy;
  obj = v23;
  v40 = contextCopy;
  v41 = dateCopy;
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = 0;
    v28 = *v50;
LABEL_13:
    v29 = 0;
    while (1)
    {
      if (*v50 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v49 + 1) + 8 * v29);
      v27 |= [v30 hasCallStartedConnectingWithUUID:{dCopy, v40, v41, v42}];
      v26 |= [v30 isManagingCallWithUUID:dCopy];
      if (v27 & 1) != 0 && (v26)
      {
        goto LABEL_39;
      }

      if (v25 == ++v29)
      {
        v23 = obj;
        v25 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v25)
        {
          goto LABEL_13;
        }

        dateCopy = v41;
        delegateCopy = v42;
        contextCopy = v40;
        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_40;
      }
    }
  }

  LOBYTE(v26) = 0;
LABEL_23:
  if (reason == 2)
  {
LABEL_26:
    v31 = [(CSDFaceTimeProviderDelegate *)self provider:v40];
    v32 = v31;
    if (contextCopy)
    {
      [v31 reportCallWithUUID:dCopy failedAtDate:dateCopy withContext:contextCopy];
    }

    else
    {
      [v31 reportCallWithUUID:dCopy endedAtDate:dateCopy privateReason:reason];
    }

    [(CSDFaceTimeProviderDelegate *)self deferReportingAudioFinishedForCallWithUUID:dCopy];
LABEL_30:
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = v23;
    v34 = [v33 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v46;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v46 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v45 + 1) + 8 * i);
          v39 = sub_100004778();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v59 = dCopy;
            v60 = 2112;
            v61 = v38;
            v62 = 2048;
            reasonCopy2 = reason;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Ending call with UUID %@ on other provider delegate %@ because ended reason was %ld", buf, 0x20u);
          }

          [v38 endCallWithUUIDAsDeclinedElsewhere:dCopy];
        }

        v35 = [v33 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v35);
    }

LABEL_39:
    v23 = obj;

    dateCopy = v41;
    delegateCopy = v42;
    contextCopy = v40;
    goto LABEL_40;
  }

  if ((v26 & ([contextCopy failureReason] != 4)) == 0)
  {
    if (reason == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_40:
}

- (void)providerDelegate:(id)delegate requestedTransaction:(id)transaction completion:(id)completion
{
  delegateCopy = delegate;
  transactionCopy = transaction;
  completionCopy = completion;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = delegateCopy;
    v15 = 2112;
    v16 = transactionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "providerDelegate: %@ transaction: %@", &v13, 0x16u);
  }

  provider = [(CSDFaceTimeProviderDelegate *)self provider];
  [provider requestTransaction:transactionCopy completion:completionCopy];
}

- (void)providerDelegate:(id)delegate requestedUpgradeToExistingCallForConversation:(id)conversation withSessionToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  conversationCopy = conversation;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v21 = [faceTimeIDSProviderDelegate upgradeCallForConversation:conversationCopy withSessionToken:tokenCopy];

  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v14 = [faceTimeIDSProviderDelegate2 callForConversation:conversationCopy withSessionToken:tokenCopy];

  isMuted = [v14 isMuted];
  isSendingVideo = [v14 isSendingVideo];
  isVideo = [v14 isVideo];
  upgradeSessionUUID = [v14 upgradeSessionUUID];
  handle = [v14 handle];
  remoteFromID = [v14 remoteFromID];
  completionCopy[2](completionCopy, v21, isMuted, isSendingVideo, isVideo, upgradeSessionUUID, handle, remoteFromID);
}

- (BOOL)providerDelegate:(id)delegate isManagingCallWithUUID:(id)d
{
  dCopy = d;
  callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
  v7 = [callDataSource _callWithUUID:dCopy];

  return v7 != 0;
}

- (BOOL)providerDelegate:(id)delegate isExclusivelyManagingCallWithUUID:(id)d
{
  delegateCopy = delegate;
  dCopy = d;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  faceTimeIDSProviderDelegate2 = faceTimeIMAVProviderDelegate;
  if (faceTimeIDSProviderDelegate == delegateCopy)
  {
LABEL_7:
    if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:dCopy] & 1) == 0)
    {
      faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
LABEL_10:
      v14 = faceTimeConversationProviderDelegate;
      v12 = [faceTimeConversationProviderDelegate isManagingCallWithUUID:dCopy] ^ 1;

      goto LABEL_11;
    }

LABEL_8:
    LOBYTE(v12) = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (faceTimeIDSProviderDelegate2 == delegateCopy)
  {
    faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    faceTimeIDSProviderDelegate2 = faceTimeIMAVProviderDelegate;
    goto LABEL_7;
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];

  if (faceTimeConversationProviderDelegate2 == delegateCopy)
  {
    faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    if (([faceTimeIDSProviderDelegate2 isManagingCallWithUUID:dCopy] & 1) == 0)
    {
      faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  LOBYTE(v12) = 0;
LABEL_12:

  return v12;
}

- (void)providerDelegate:(id)delegate endOtherProvidersCallWithUUID:(id)d
{
  delegateCopy = delegate;
  dCopy = d;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = delegateCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "providerDelegate: %@ ending callUUID %@", &v16, 0x16u);
  }

  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = faceTimeIMAVProviderDelegate;
  if (faceTimeIDSProviderDelegate == delegateCopy)
  {
    goto LABEL_9;
  }

  if (v11 == delegateCopy)
  {
    faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    v11 = faceTimeIMAVProviderDelegate;
LABEL_9:
    [faceTimeIMAVProviderDelegate endCallWithUUIDAsAnsweredElsewhere:dCopy];

    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    goto LABEL_10;
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];

  if (faceTimeConversationProviderDelegate2 == delegateCopy)
  {
    faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate2 endCallWithUUIDAsAnsweredElsewhere:dCopy];

    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
LABEL_10:
    v15 = faceTimeConversationProviderDelegate;
    [faceTimeConversationProviderDelegate endCallWithUUIDAsAnsweredElsewhere:dCopy];
  }
}

- (void)providerDidBegin:(id)begin
{
  beginCopy = begin;
  queue = [(CSDFaceTimeProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  [faceTimeIDSProviderDelegate providerDidBegin:beginCopy];

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  [faceTimeIMAVProviderDelegate providerDidBegin:beginCopy];

  faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  [faceTimeConversationProviderDelegate providerDidBegin:beginCopy];

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  [groupFaceTimeServiceProviderDelegate providerDidBegin:beginCopy];
}

- (void)providerDidReset:(id)reset
{
  resetCopy = reset;
  queue = [(CSDFaceTimeProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  [faceTimeIDSProviderDelegate providerDidReset:resetCopy];

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  [faceTimeIMAVProviderDelegate providerDidReset:resetCopy];

  faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  [faceTimeConversationProviderDelegate providerDidReset:resetCopy];

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  [groupFaceTimeServiceProviderDelegate providerDidReset:resetCopy];
}

- (void)provider:(id)provider timedOutPerformingAction:(id)action
{
  actionCopy = action;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = actionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] action: %@", &v6, 0xCu);
  }
}

- (void)provider:(id)provider performStartCallAction:(id)action
{
  actionCopy = action;
  providerCopy = provider;
  [(CSDFaceTimeProviderDelegate *)self provider:providerCopy performStartCallAction:actionCopy shouldUseIDSDemuxer:[(CSDFaceTimeProviderDelegate *)self shouldUseIDSDemuxer]];
}

- (void)provider:(id)provider performStartCallAction:(id)action shouldUseIDSDemuxer:(BOOL)demuxer
{
  providerCopy = provider;
  actionCopy = action;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = actionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  [(CSDFaceTimeProviderDelegate *)self _checkAndSendReturningSilencedIMAVAnalytic:actionCopy];
  blockUtilities = [(CSDFaceTimeProviderDelegate *)self blockUtilities];
  handle = [(__CFString *)actionCopy handle];
  v13 = [NSSet setWithObject:handle];
  v14 = [blockUtilities blockCallReasonForHandles:v13 providerIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  if (v14 >= 1)
  {
    blockUtilities2 = [(CSDFaceTimeProviderDelegate *)self blockUtilities];
    callUUID = [(__CFString *)actionCopy callUUID];
    [(__CFString *)blockUtilities2 reportFailureForReason:v14 provider:providerCopy callUUID:callUUID actionToFail:actionCopy];
    goto LABEL_27;
  }

  if (!demuxer)
  {
    blockUtilities2 = [(__CFString *)actionCopy handle];
    callUUID = [(__CFString *)blockUtilities2 value];
    iDSFormattedDestinationID = [callUUID IDSFormattedDestinationID];
    v39 = [NSArray arrayWithObject:iDSFormattedDestinationID];
    [(CSDFaceTimeProviderDelegate *)self initiateModernFTInviteForAction:actionCopy destinations:v39 excludedIMAVDestinations:&__NSArray0__struct joinCallActionToFulfill:0];

    goto LABEL_27;
  }

  blockUtilities2 = +[TUCallCapabilities outgoingRelayCallerID];
  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = blockUtilities2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "outgoingCallerID: %@", buf, 0xCu);
  }

  callUUID = +[NSDate now];
  featureFlags = [(CSDFaceTimeProviderDelegate *)self featureFlags];
  if ([featureFlags uPlusOneSessionWithCapabilitiesEnabled])
  {
    serverBag = [(CSDFaceTimeProviderDelegate *)self serverBag];
    isUPlusOneSessionCapabilitiesEnabled = [serverBag isUPlusOneSessionCapabilitiesEnabled];

    if (isUPlusOneSessionCapabilitiesEnabled)
    {
      v21 = [(CSDFaceTimeProviderDelegate *)self _createJoinCallAction:actionCopy outgoingCallerID:blockUtilities2 gftOneToOneDestinations:0];
      v22 = +[NSDate now];
      [v22 timeIntervalSinceDate:callUUID];
      v24 = v23 * 1000.0;

      if (v24 > 5000.0)
      {
        v60 = TUCallTUStartCallActionDuration;
        v25 = [NSNumber numberWithDouble:v24];
        stringValue = [v25 stringValue];
        v27 = [stringValue stringByAppendingString:@"ms duration"];
        v61 = v27;
        v28 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];

        v29 = sub_100004778();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          callUUID2 = [(__CFString *)actionCopy callUUID];
          *buf = 138412546;
          v57 = callUUID2;
          v58 = 2112;
          v59 = v28;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "reportJoinDurationLongerThanThreasholdForCallUUID: %@, %@", buf, 0x16u);
        }

        v31 = +[CSDReportingController sharedInstance];
        callUUID3 = [(__CFString *)actionCopy callUUID];
        [v31 reportJoinDurationLongerThanThreasholdForCallUUID:callUUID3 report:v28];
      }

      v33 = sub_100004778();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v21;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Created join call action without gftOneToOneDestinations: %@", buf, 0xCu);
      }

      [(CSDFaceTimeProviderDelegate *)self provider:providerCopy performJoinCallAction:v21 shouldUseIDSDemuxer:0];
      handle2 = [(__CFString *)actionCopy handle];
      value = [handle2 value];
      iDSFormattedDestinationID2 = [value IDSFormattedDestinationID];
      v37 = [NSArray arrayWithObject:iDSFormattedDestinationID2];
      [(CSDFaceTimeProviderDelegate *)self initiateModernFTInviteForAction:actionCopy destinations:v37 excludedIMAVDestinations:&__NSArray0__struct joinCallActionToFulfill:0];

      goto LABEL_27;
    }
  }

  else
  {
  }

  v40 = sub_100004778();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    featureFlags2 = [(CSDFaceTimeProviderDelegate *)self featureFlags];
    if ([featureFlags2 uPlusOneSessionWithCapabilitiesEnabled])
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    serverBag2 = [(CSDFaceTimeProviderDelegate *)self serverBag];
    isUPlusOneSessionCapabilitiesEnabled2 = [serverBag2 isUPlusOneSessionCapabilitiesEnabled];
    v45 = @"NO";
    if (isUPlusOneSessionCapabilitiesEnabled2)
    {
      v45 = @"YES";
    }

    *buf = 138412546;
    v57 = v42;
    v58 = 2112;
    v59 = v45;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "uPlusOneSessionWithCapabilitiesEnabled: %@, isUPlusOneSessionCapabilitiesEnabled: %@", buf, 0x16u);
  }

  callUUID4 = [(__CFString *)actionCopy callUUID];
  [(CSDFaceTimeProviderDelegate *)self _createDelayedActionListIfNecessary:callUUID4];

  faceTimeInviteDemuxer = [(CSDFaceTimeProviderDelegate *)self faceTimeInviteDemuxer];
  handle3 = [(__CFString *)actionCopy handle];
  tuHandle = [handle3 tuHandle];
  isVideo = [(__CFString *)actionCopy isVideo];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10012E774;
  v51[3] = &unk_10061C300;
  v51[4] = self;
  v52 = actionCopy;
  blockUtilities2 = blockUtilities2;
  v53 = blockUtilities2;
  callUUID = callUUID;
  v54 = callUUID;
  v55 = providerCopy;
  [faceTimeInviteDemuxer idsPeersForHandle:tuHandle video:isVideo fromID:blockUtilities2 completionHandler:v51];

LABEL_27:
}

- (void)initiateModernFTInviteForAction:(id)action destinations:(id)destinations excludedIMAVDestinations:(id)vDestinations joinCallActionToFulfill:(id)fulfill
{
  actionCopy = action;
  vDestinationsCopy = vDestinations;
  fulfillCopy = fulfill;
  destinationsCopy = destinations;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [NSSet setWithArray:destinationsCopy];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10012F3B0;
  v19[3] = &unk_10061C328;
  v19[4] = self;
  v20 = actionCopy;
  v21 = vDestinationsCopy;
  v22 = fulfillCopy;
  v16 = fulfillCopy;
  v17 = vDestinationsCopy;
  v18 = actionCopy;
  [faceTimeIDSProviderDelegate inviteIDSPeersWithAction:v18 destinations:v15 joinCallActionToFulfill:v16 completion:v19];
}

- (void)provider:(id)provider performJoinCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  if ([(CSDFaceTimeProviderDelegate *)self shouldUseIDSDemuxer])
  {
    remoteMembers = [actionCopy remoteMembers];
    if ([remoteMembers count] == 1)
    {
      associationIdentifier = [actionCopy associationIdentifier];
      [(CSDFaceTimeProviderDelegate *)self provider:providerCopy performJoinCallAction:actionCopy shouldUseIDSDemuxer:associationIdentifier == 0];
    }

    else
    {
      [(CSDFaceTimeProviderDelegate *)self provider:providerCopy performJoinCallAction:actionCopy shouldUseIDSDemuxer:0];
    }
  }

  else
  {
    [(CSDFaceTimeProviderDelegate *)self provider:providerCopy performJoinCallAction:actionCopy shouldUseIDSDemuxer:0];
  }
}

- (void)provider:(id)provider performJoinCallAction:(id)action shouldUseIDSDemuxer:(BOOL)demuxer
{
  demuxerCopy = demuxer;
  providerCopy = provider;
  actionCopy = action;
  participantCluster = [actionCopy participantCluster];
  if (participantCluster)
  {
    participantCluster2 = [actionCopy participantCluster];
    v12 = [participantCluster2 type] == 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [actionCopy UUID];
    v15 = uUID;
    v16 = &stru_100631E68;
    if (v12)
    {
      v16 = @", is nearby session";
    }

    *buf = 138412546;
    v86 = uUID;
    v87 = 2112;
    v88 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Perform join call with action UUID: %@%@", buf, 0x16u);
  }

  blockUtilities = [(CSDFaceTimeProviderDelegate *)self blockUtilities];
  remoteMembers = [actionCopy remoteMembers];
  v19 = [blockUtilities blockCallReasonForMembers:remoteMembers providerIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  if (v19 < 1)
  {
    pseudonym = [actionCopy pseudonym];
    if ([pseudonym length])
    {
      publicKey = [actionCopy publicKey];
      v24 = [publicKey length];

      if (v24)
      {
        v25 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }

    remoteMembers2 = [actionCopy remoteMembers];
    v27 = [remoteMembers2 count];

    if (!v27)
    {
      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100475E1C();
      }

      goto LABEL_29;
    }

    v25 = 1;
LABEL_16:
    faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    callUUID = [actionCopy callUUID];
    v30 = [faceTimeIDSProviderDelegate isUpgradingCallWithUUID:callUUID];

    if (v30)
    {
      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100475DE8();
      }

LABEL_29:

      [actionCopy fail];
      goto LABEL_63;
    }

    if (([actionCopy isVideo] & 1) == 0 && objc_msgSend(actionCopy, "isVideoEnabled"))
    {
      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100475DB4();
      }

      goto LABEL_29;
    }

    faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    callUUID2 = [actionCopy callUUID];
    v34 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID2];

    if (v34)
    {
      [actionCopy setUpgrade:1];
      faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
      callUUID3 = [actionCopy callUUID];
      v37 = [faceTimeIDSProviderDelegate3 upgradeSessionUUIDForCallWithUUID:callUUID3];
      [actionCopy setUpgradeSessionUUID:v37];

      v38 = sub_100004778();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = actionCopy;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Updated to action: %@", buf, 0xCu);
      }

      faceTimeIDSProviderDelegate4 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
      [faceTimeIDSProviderDelegate4 provider:providerCopy performJoinCallAction:actionCopy];
    }

    else
    {
      faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
      callUUID4 = [actionCopy callUUID];
      v42 = [faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID4];

      if (!v42)
      {
LABEL_35:
        v45 = +[CSDConversationProviderManager sharedInstance];
        conversationProviderIdentifier = [actionCopy conversationProviderIdentifier];
        v47 = [v45 tuConversationProviderForIdentifier:conversationProviderIdentifier];

        if ((v25 & demuxerCopy) != 1 || v12 | (([v47 isDefaultProvider] & 1) == 0))
        {
          if (!v47)
          {
LABEL_62:

            goto LABEL_63;
          }

          isDefaultProvider = [v47 isDefaultProvider];
          v49 = sub_100004778();
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          if (isDefaultProvider)
          {
            if (v50)
            {
              *buf = 138412290;
              v86 = actionCopy;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Sending JoinCallAction to FaceTimeConversationProviderDelegate- action: %@", buf, 0xCu);
            }

            faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
          }

          else
          {
            if (v50)
            {
              *buf = 138412290;
              v86 = actionCopy;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Sending JoinCallAction to CSDGFTServiceConversationProviderDelegate- action: %@", buf, 0xCu);
            }

            faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
          }

          v52 = faceTimeConversationProviderDelegate;
          [faceTimeConversationProviderDelegate provider:providerCopy performJoinCallAction:actionCopy];
LABEL_61:

          goto LABEL_62;
        }

        v52 = +[TUCallCapabilities outgoingRelayCallerID];
        v53 = sub_100004778();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v86 = v52;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "joinCall: callerID: %@", buf, 0xCu);
        }

        featureFlags = [(CSDFaceTimeProviderDelegate *)self featureFlags];
        if ([featureFlags uPlusOneSessionWithCapabilitiesEnabled])
        {
          serverBag = [(CSDFaceTimeProviderDelegate *)self serverBag];
          isUPlusOneSessionCapabilitiesEnabled = [serverBag isUPlusOneSessionCapabilitiesEnabled];

          if (isUPlusOneSessionCapabilitiesEnabled)
          {
            faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
            [faceTimeConversationProviderDelegate2 provider:providerCopy performJoinCallAction:actionCopy];

            v58 = [CXStartCallAction alloc];
            callUUID5 = [actionCopy callUUID];
            remoteMembers3 = [actionCopy remoteMembers];
            anyObject = [remoteMembers3 anyObject];
            handle = [anyObject handle];
            v63 = [v58 initWithCallUUID:callUUID5 handle:handle];

            [v63 setVideo:{objc_msgSend(actionCopy, "isVideo")}];
            handle2 = [v63 handle];
            value = [handle2 value];
            iDSFormattedDestinationID = [value IDSFormattedDestinationID];
            v67 = [NSArray arrayWithObject:iDSFormattedDestinationID];
            [(CSDFaceTimeProviderDelegate *)self initiateModernFTInviteForAction:v63 destinations:v67 excludedIMAVDestinations:&__NSArray0__struct joinCallActionToFulfill:0];

            goto LABEL_61;
          }
        }

        else
        {
        }

        v81 = v52;
        v68 = sub_100004778();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          featureFlags2 = [(CSDFaceTimeProviderDelegate *)self featureFlags];
          if ([featureFlags2 uPlusOneSessionWithCapabilitiesEnabled])
          {
            v70 = @"YES";
          }

          else
          {
            v70 = @"NO";
          }

          serverBag2 = [(CSDFaceTimeProviderDelegate *)self serverBag];
          if ([serverBag2 isUPlusOneSessionCapabilitiesEnabled])
          {
            v72 = @"YES";
          }

          else
          {
            v72 = @"NO";
          }

          *buf = 138412546;
          v86 = v70;
          v87 = 2112;
          v88 = v72;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "uPlusOneSessionWithCapabilitiesEnabled: %@, isUPlusOneSessionCapabilitiesEnabled: %@", buf, 0x16u);
        }

        callUUID6 = [actionCopy callUUID];
        [(CSDFaceTimeProviderDelegate *)self _createDelayedActionListIfNecessary:callUUID6];

        faceTimeInviteDemuxer = [(CSDFaceTimeProviderDelegate *)self faceTimeInviteDemuxer];
        remoteMembers4 = [actionCopy remoteMembers];
        anyObject2 = [remoteMembers4 anyObject];
        handle3 = [anyObject2 handle];
        tuHandle = [handle3 tuHandle];
        isVideo = [actionCopy isVideo];
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_1001301B8;
        v82[3] = &unk_10061C378;
        v82[4] = self;
        v83 = actionCopy;
        v84 = providerCopy;
        v80 = isVideo;
        v52 = v81;
        [faceTimeInviteDemuxer idsPeersForHandle:tuHandle video:v80 fromID:v81 completionHandler:v82];

        goto LABEL_61;
      }

      v43 = sub_100004778();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = actionCopy;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found a IMAV chat that is being tracked for action: %@", buf, 0xCu);
      }

      faceTimeIDSProviderDelegate4 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
      callUUID7 = [actionCopy callUUID];
      [faceTimeIDSProviderDelegate4 endCallWithUUID:callUUID7];
    }

    goto LABEL_35;
  }

  blockUtilities2 = [(CSDFaceTimeProviderDelegate *)self blockUtilities];
  callUUID8 = [actionCopy callUUID];
  [blockUtilities2 reportFailureForReason:v19 provider:providerCopy callUUID:callUUID8 actionToFail:actionCopy];

LABEL_63:
}

- (void)provider:(id)provider performAnswerCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performAnswerCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performAnswerCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performAnswerCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performAnswerCallAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performEndCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v31 = v48 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v47 = [v31 isManagingCallWithUUID:callUUID4];

    providerCopy = v48;
    if (v47)
    {
      goto LABEL_7;
    }

    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = actionCopy;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v36 = [callDataSource _callWithUUID:callUUID5];

    if (v36)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v39 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v39)
      {
        v40 = v39;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v41 = sub_100004778();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v50 = actionCopy;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v44 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v44 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v36 status] == 5 || objc_msgSend(v36, "status") == 6))
      {
        v45 = sub_100004778();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = actionCopy;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performEndCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performEndCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performEndCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performEndCallAction:actionCopy];
  }

LABEL_15:
  callUUID12 = [actionCopy callUUID];
  [(CSDFaceTimeProviderDelegate *)self deferReportingAudioFinishedForCallWithUUID:callUUID12];
}

- (void)provider:(id)provider performSetHeldCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performSetHeldCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performSetHeldCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performSetHeldCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performSetHeldCallAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performSetSendingVideoCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performSetSendingVideoCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performSetSendingVideoCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performSetSendingVideoCallAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performSetSharingScreenCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performSetSharingScreenCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performSetSharingScreenCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performSetSharingScreenCallAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performSetScreenShareAttributesCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performSetScreenShareAttributesCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performSetScreenShareAttributesCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performSetScreenShareAttributesCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performSetScreenShareAttributesCallAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performEnableVideoCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performEnableVideoCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performEnableVideoCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performEnableVideoCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performEnableVideoCallAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performSetVideoPresentationSizeCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performSetVideoPresentationSizeCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performSetVideoPresentationSizeCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performSetVideoPresentationSizeCallAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performSetVideoPresentationStateCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performSetVideoPresentationStateCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performSetVideoPresentationStateCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performSetVideoPresentationStateCallAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performSetRelayingCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performSetRelayingCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performSetRelayingCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performSetRelayingCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performSetRelayingCallAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performSetScreeningCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performSetScreeningCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performSetScreeningCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performSetScreeningCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performSetScreeningCallAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performSetAllowUplinkAudioInjectionAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if ([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID])
  {
    goto LABEL_6;
  }

  faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID2 = [actionCopy callUUID];
  if (([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2] & 1) == 0)
  {
    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v46 = [v30 isManagingCallWithUUID:callUUID4];

    providerCopy = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = actionCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v35 = [callDataSource _callWithUUID:callUUID5];

    if (v35)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v38 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_24:
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = actionCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v43 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v43 addObject:actionCopy];

          goto LABEL_35;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 status] == 5 || objc_msgSend(v35, "status") == 6))
      {
        v44 = sub_100004778();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = actionCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_35;
      }
    }

    [actionCopy fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v16 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v16)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performSetAllowUplinkAudioInjectionAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v20 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v20)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performSetAllowUplinkAudioInjectionAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v24 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v24)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performSetAllowUplinkAudioInjectionAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v28 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v28)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performSetAllowUplinkAudioInjectionAction:actionCopy];
  }

LABEL_15:
}

- (void)provider:(id)provider performSetMutedCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  featureFlags = [(CSDFaceTimeProviderDelegate *)self featureFlags];
  if (([featureFlags sessionBasedMutingEnabled] & 1) == 0)
  {
    isBottomUpMute = [actionCopy isBottomUpMute];

    if (isBottomUpMute)
    {
      goto LABEL_5;
    }

    featureFlags = +[TUAudioSystemController sharedAudioSystemController];
    [featureFlags setUplinkMuted:{objc_msgSend(actionCopy, "isMuted")}];
  }

LABEL_5:
  faceTimeIDSProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID = [actionCopy callUUID];
  if (([faceTimeIDSProviderDelegate isManagingCallWithUUID:callUUID] & 1) == 0)
  {
    faceTimeIMAVProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    callUUID2 = [actionCopy callUUID];
    if ([faceTimeIMAVProviderDelegate isManagingCallWithUUID:callUUID2])
    {
LABEL_9:

      goto LABEL_10;
    }

    faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    callUUID3 = [actionCopy callUUID];
    if ([faceTimeConversationProviderDelegate isManagingCallWithUUID:callUUID3])
    {

      goto LABEL_9;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v32 = v49 = providerCopy;
    callUUID4 = [actionCopy callUUID];
    v48 = [v32 isManagingCallWithUUID:callUUID4];

    providerCopy = v49;
    if (v48)
    {
      goto LABEL_11;
    }

    v34 = sub_100004778();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = actionCopy;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    callDataSource = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    callUUID5 = [actionCopy callUUID];
    v37 = [callDataSource _callWithUUID:callUUID5];

    if (v37)
    {
      delayedActionsByCallUUID = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      callUUID6 = [actionCopy callUUID];
      v40 = [delayedActionsByCallUUID objectForKeyedSubscript:callUUID6];
      if (v40)
      {
        v41 = v40;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_28:
          v42 = sub_100004778();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = actionCopy;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          delayedActionsByCallUUID2 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          callUUID7 = [actionCopy callUUID];
          v45 = [delayedActionsByCallUUID2 objectForKeyedSubscript:callUUID7];
          [v45 addObject:actionCopy];

          goto LABEL_39;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v37 status] == 5 || objc_msgSend(v37, "status") == 6))
      {
        v46 = sub_100004778();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = actionCopy;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [actionCopy fulfill];
        goto LABEL_39;
      }
    }

    [actionCopy fail];
LABEL_39:

    goto LABEL_19;
  }

LABEL_10:

LABEL_11:
  faceTimeIDSProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  callUUID8 = [actionCopy callUUID];
  v18 = [faceTimeIDSProviderDelegate2 isManagingCallWithUUID:callUUID8];

  if (v18)
  {
    faceTimeIDSProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [faceTimeIDSProviderDelegate3 provider:providerCopy performSetMutedCallAction:actionCopy];
  }

  faceTimeIMAVProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  callUUID9 = [actionCopy callUUID];
  v22 = [faceTimeIMAVProviderDelegate2 isManagingCallWithUUID:callUUID9];

  if (v22)
  {
    faceTimeIMAVProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [faceTimeIMAVProviderDelegate3 provider:providerCopy performSetMutedCallAction:actionCopy];
  }

  faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  callUUID10 = [actionCopy callUUID];
  v26 = [faceTimeConversationProviderDelegate2 isManagingCallWithUUID:callUUID10];

  if (v26)
  {
    faceTimeConversationProviderDelegate3 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate3 provider:providerCopy performSetMutedCallAction:actionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  callUUID11 = [actionCopy callUUID];
  v30 = [groupFaceTimeServiceProviderDelegate isManagingCallWithUUID:callUUID11];

  if (v30)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy performSetMutedCallAction:actionCopy];
  }

LABEL_19:
}

- (void)provider:(id)provider didActivateAudioSession:(id)session
{
  providerCopy = provider;
  sessionCopy = session;
  faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate2 provider:providerCopy didActivateAudioSession:sessionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy didActivateAudioSession:sessionCopy];
  }
}

- (void)provider:(id)provider didDeactivateAudioSession:(id)session
{
  providerCopy = provider;
  sessionCopy = session;
  faceTimeConversationProviderDelegate = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    faceTimeConversationProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [faceTimeConversationProviderDelegate2 provider:providerCopy didDeactivateAudioSession:sessionCopy];
  }

  groupFaceTimeServiceProviderDelegate = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    groupFaceTimeServiceProviderDelegate2 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [groupFaceTimeServiceProviderDelegate2 provider:providerCopy didDeactivateAudioSession:sessionCopy];
  }
}

- (id)_createJoinCallAction:(id)action outgoingCallerID:(id)d gftOneToOneDestinations:(id)destinations
{
  actionCopy = action;
  dCopy = d;
  destinationsCopy = destinations;
  v11 = [CXJoinCallAction alloc];
  callUUID = [actionCopy callUUID];
  v13 = +[NSUUID UUID];
  v14 = [v11 initWithCallUUID:callUUID groupUUID:v13];

  v15 = [CXMember alloc];
  handle = [actionCopy handle];
  v17 = [v15 initWithHandle:handle];
  v18 = [NSSet setWithObject:v17];
  [v14 setRemoteMembers:v18];

  [v14 setVideoEnabled:{objc_msgSend(actionCopy, "isVideo")}];
  [v14 setVideo:{objc_msgSend(actionCopy, "isVideo")}];
  [v14 setIsUpgradeToVideo:{objc_msgSend(actionCopy, "isUpgradeToVideo")}];
  [v14 setRelay:{objc_msgSend(actionCopy, "isRelay")}];
  if ([actionCopy isVideo])
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  [v14 setAvMode:v19];
  [v14 setPresentationMode:0];
  [v14 setConversationProviderIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];
  if (destinationsCopy)
  {
    selfCopy = self;
    v38 = v14;
    v40 = actionCopy;
    v20 = +[NSMutableArray array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v39 = destinationsCopy;
    v21 = destinationsCopy;
    v22 = [v21 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v42;
      do
      {
        v25 = 0;
        do
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v41 + 1) + 8 * v25);
          v27 = [[IDSURI alloc] initWithPrefixedURI:v26];
          if (v27)
          {
            [v20 addObject:v27];
          }

          else
          {
            v28 = sub_100004778();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v46 = v26;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Can't convert destination %@ to URI", buf, 0xCu);
            }
          }

          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v23);
    }

    v29 = [v20 copy];
    v30 = [NSSet setWithArray:v29];
    v14 = v38;
    [v38 setRemotePushTokens:v30];

    actionCopy = v40;
    destinationsCopy = v39;
    self = selfCopy;
  }

  localSenderIdentityUUID = [actionCopy localSenderIdentityUUID];

  if (localSenderIdentityUUID)
  {
    conversationManager = [(CSDFaceTimeProviderDelegate *)self conversationManager];
    localSenderIdentityUUID2 = [actionCopy localSenderIdentityUUID];
    v34 = [conversationManager callerIDHandleForSenderIdentityUUID:localSenderIdentityUUID2 callerID:dCopy];

    if (v34)
    {
      v35 = [CXHandle handleWithTUHandle:v34];
      [v14 setCallerID:v35];
    }
  }

  return v14;
}

- (void)_checkAndSendReturningSilencedIMAVAnalytic:(id)analytic
{
  analyticCopy = analytic;
  v48 = +[NSUserDefaults standardUserDefaults];
  v4 = [v48 arrayForKey:@"returnedIMAVCalls"];
  v5 = objc_alloc_init(CHManager);
  v6 = [CHHandle alloc];
  handle = [analyticCopy handle];
  if ([handle type] == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  handle2 = [analyticCopy handle];
  value = [handle2 value];
  v11 = [v6 initWithType:v8 value:value];

  v12 = +[NSMutableArray array];
  v45 = v11;
  v13 = [CHRecentCall predicateForCallsWithRemoteParticipantHandle:v11];
  [v12 addObject:v13];

  v14 = +[NSCalendar currentCalendar];
  v15 = +[NSDate date];
  v16 = [v14 dateByAddingUnit:16 value:-1 toDate:v15 options:0];

  v17 = +[NSDate date];
  v44 = v16;
  v18 = [CHRecentCall predicateForCallsBetweenStartDate:v16 endDate:v17];
  [v12 addObject:v18];

  v19 = [CHRecentCall predicateForCallsWithFilteredOutReason:&off_10063ECC0];
  [v12 addObject:v19];

  v20 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
  v46 = v5;
  v21 = [v5 callsWithPredicate:v20 limit:-1 offset:0 batchSize:-1];

  v22 = sub_100004778();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v55 = [v21 count];
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found %lu calls matching search predicate for returning silenced IMAV", buf, 0xCu);
  }

  v47 = analyticCopy;
  if (v4)
  {
    v23 = [v4 mutableCopy];
  }

  else
  {
    v23 = +[NSMutableArray array];
  }

  v24 = v23;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v25 = v21;
  v26 = [v25 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v26)
  {
    v27 = v26;
    v43 = v12;
    v28 = *v50;
    v29 = 1;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v50 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v49 + 1) + 8 * i);
        uniqueId = [v31 uniqueId];
        v33 = [v4 containsObject:uniqueId];

        if (v33)
        {
          v34 = sub_100004778();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Call has already been returned, not reporting it", buf, 2u);
          }

          v29 = 0;
        }

        uniqueId2 = [v31 uniqueId];
        [v24 addObject:uniqueId2];
      }

      v27 = [v25 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v27);

    [v48 setObject:v24 forKey:@"returnedIMAVCalls"];
    v12 = v43;
    if ((v29 & 1) == 0)
    {
      v36 = sub_100004778();
      v37 = v47;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        handle3 = [v47 handle];
        value2 = [handle3 value];
        *buf = 138412290;
        v55 = value2;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "No recent unreturned silenced IMAV calls found for handle %@ in the last 24 hours", buf, 0xCu);
      }

      goto LABEL_28;
    }
  }

  else
  {

    [v48 setObject:v24 forKey:@"returnedIMAVCalls"];
  }

  v40 = sub_100004778();
  v37 = v47;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    handle4 = [v47 handle];
    value3 = [handle4 value];
    *buf = 138412290;
    v55 = value3;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Found recent IMAV calls for handle that has not been returned %@", buf, 0xCu);
  }

  +[CSDAnalyticsReporter sendReplyingToIMAVCallEvent];
LABEL_28:
}

- (CSDProviderCallDataSource)callDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_callDataSource);

  return WeakRetained;
}

@end