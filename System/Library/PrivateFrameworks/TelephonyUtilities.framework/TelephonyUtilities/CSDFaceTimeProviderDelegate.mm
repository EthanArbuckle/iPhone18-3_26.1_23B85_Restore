@interface CSDFaceTimeProviderDelegate
- (BOOL)providerDelegate:(id)a3 isExclusivelyManagingCallWithUUID:(id)a4;
- (BOOL)providerDelegate:(id)a3 isManagingCallWithUUID:(id)a4;
- (CSDFaceTimeProviderDelegate)init;
- (CSDFaceTimeProviderDelegate)initWithCallSource:(id)a3 queue:(id)a4 chManager:(id)a5 conversationManager:(id)a6;
- (CSDFaceTimeProviderDelegate)initWithCallSource:(id)a3 queue:(id)a4 featureFlags:(id)a5 blockUtilities:(id)a6 shouldUseIDSDemuxer:(BOOL)a7 chManager:(id)a8 conversationManager:(id)a9;
- (CSDProviderCallDataSource)callDataSource;
- (CXProviderConfiguration)providerConfiguration;
- (id)ISOCountryCodeForCallWithUUID:(id)a3;
- (id)_createJoinCallAction:(id)a3 outgoingCallerID:(id)a4 gftOneToOneDestinations:(id)a5;
- (void)_checkAndSendReturningSilencedIMAVAnalytic:(id)a3;
- (void)_createDelayedActionListIfNecessary:(id)a3;
- (void)_processDelayedActionList:(id)a3 provider:(id)a4;
- (void)dealloc;
- (void)deferReportingAudioFinishedForCallWithUUID:(id)a3;
- (void)initiateModernFTInviteForAction:(id)a3 destinations:(id)a4 excludedIMAVDestinations:(id)a5 joinCallActionToFulfill:(id)a6;
- (void)provider:(id)a3 didActivateAudioSession:(id)a4;
- (void)provider:(id)a3 didDeactivateAudioSession:(id)a4;
- (void)provider:(id)a3 performAnswerCallAction:(id)a4;
- (void)provider:(id)a3 performEnableVideoCallAction:(id)a4;
- (void)provider:(id)a3 performEndCallAction:(id)a4;
- (void)provider:(id)a3 performJoinCallAction:(id)a4;
- (void)provider:(id)a3 performJoinCallAction:(id)a4 shouldUseIDSDemuxer:(BOOL)a5;
- (void)provider:(id)a3 performSetAllowUplinkAudioInjectionAction:(id)a4;
- (void)provider:(id)a3 performSetHeldCallAction:(id)a4;
- (void)provider:(id)a3 performSetMutedCallAction:(id)a4;
- (void)provider:(id)a3 performSetRelayingCallAction:(id)a4;
- (void)provider:(id)a3 performSetScreenShareAttributesCallAction:(id)a4;
- (void)provider:(id)a3 performSetScreeningCallAction:(id)a4;
- (void)provider:(id)a3 performSetSendingVideoCallAction:(id)a4;
- (void)provider:(id)a3 performSetSharingScreenCallAction:(id)a4;
- (void)provider:(id)a3 performSetVideoPresentationSizeCallAction:(id)a4;
- (void)provider:(id)a3 performSetVideoPresentationStateCallAction:(id)a4;
- (void)provider:(id)a3 performStartCallAction:(id)a4;
- (void)provider:(id)a3 performStartCallAction:(id)a4 shouldUseIDSDemuxer:(BOOL)a5;
- (void)provider:(id)a3 timedOutPerformingAction:(id)a4;
- (void)providerDelegate:(id)a3 callWithUUID:(id)a4 connectedAtDate:(id)a5;
- (void)providerDelegate:(id)a3 callWithUUID:(id)a4 endedAtDate:(id)a5 withReason:(int64_t)a6 failureContext:(id)a7;
- (void)providerDelegate:(id)a3 callWithUUID:(id)a4 startedConnectingAtDate:(id)a5;
- (void)providerDelegate:(id)a3 endOtherProvidersCallWithUUID:(id)a4;
- (void)providerDelegate:(id)a3 requestedTransaction:(id)a4 completion:(id)a5;
- (void)providerDelegate:(id)a3 requestedUpgradeToExistingCallForConversation:(id)a4 withSessionToken:(id)a5 completion:(id)a6;
- (void)providerDidBegin:(id)a3;
- (void)providerDidReset:(id)a3;
- (void)updateProviderConfigurationWithSenderIdentities:(id)a3;
@end

@implementation CSDFaceTimeProviderDelegate

- (CSDFaceTimeProviderDelegate)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDFaceTimeProviderDelegate.m" lineNumber:82 description:{@"%s is not available. Use a designated initializer instead.", "-[CSDFaceTimeProviderDelegate init]"}];

  return 0;
}

- (CSDFaceTimeProviderDelegate)initWithCallSource:(id)a3 queue:(id)a4 chManager:(id)a5 conversationManager:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(TUFeatureFlags);
  v15 = objc_alloc_init(CSDBlockUtilities);
  v16 = -[CSDFaceTimeProviderDelegate initWithCallSource:queue:featureFlags:blockUtilities:shouldUseIDSDemuxer:chManager:conversationManager:](self, "initWithCallSource:queue:featureFlags:blockUtilities:shouldUseIDSDemuxer:chManager:conversationManager:", v13, v12, v14, v15, [v14 conversationOneToOneModeEnabled], v11, v10);

  return v16;
}

- (CSDFaceTimeProviderDelegate)initWithCallSource:(id)a3 queue:(id)a4 featureFlags:(id)a5 blockUtilities:(id)a6 shouldUseIDSDemuxer:(BOOL)a7 chManager:(id)a8 conversationManager:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v74 = a6;
  v18 = a8;
  v73 = a9;
  v78.receiver = self;
  v78.super_class = CSDFaceTimeProviderDelegate;
  v19 = [(CSDFaceTimeProviderDelegate *)&v78 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, a4);
    v21 = [(CSDFaceTimeProviderDelegate *)v20 queue];
    dispatch_assert_queue_V2(v21);

    objc_storeStrong(&v20->_featureFlags, a5);
    v22 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v20->_serverBag;
    v20->_serverBag = v22;

    objc_storeStrong(&v20->_blockUtilities, a6);
    v20->_shouldUseIDSDemuxer = a7;
    v24 = objc_alloc_init(CSDFaceTimeInviteDemuxer);
    faceTimeInviteDemuxer = v20->_faceTimeInviteDemuxer;
    v20->_faceTimeInviteDemuxer = v24;

    v26 = [[CSDFaceTimeIDSProviderDelegate alloc] initWithQueue:v16];
    faceTimeIDSProviderDelegate = v20->_faceTimeIDSProviderDelegate;
    v20->_faceTimeIDSProviderDelegate = v26;

    [(CSDFaceTimeIDSProviderDelegate *)v20->_faceTimeIDSProviderDelegate setFaceTimeDemuxerDelegate:v20];
    v28 = [[CSDFaceTimeIMAVProviderDelegate alloc] initWithQueue:v16];
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
    v36 = [(CSDIDSFirewallManager *)v33 initWithService:v34 chManager:v18 featureFlags:v17 serverBag:v35 queue:v16];
    firewallManager = v20->_firewallManager;
    v20->_firewallManager = v36;

    [(CSDIDSFirewallManager *)v20->_firewallManager updateFirewallWithCallHistoryIfNecessary];
    v38 = objc_alloc_init(CSDConversationInvitationResolver);
    objc_storeStrong(&v20->_conversationManager, a9);
    v39 = [[CSDConversationManagerXPCServer alloc] initWithConversationManager:v20->_conversationManager featureFlags:v20->_featureFlags];
    conversationManagerXPCServer = v20->_conversationManagerXPCServer;
    v20->_conversationManagerXPCServer = v39;

    v41 = +[FTDeviceSupport sharedInstance];
    v42 = [v41 deviceType];

    if (v42 != 7 && (TUSharePlayForceDisabled() & 1) == 0)
    {
      v43 = +[TUCallCenter sharedInstance];
      v44 = [v43 neighborhoodActivityConduit];
      neighborhoodActivityConduit = v20->_neighborhoodActivityConduit;
      v20->_neighborhoodActivityConduit = v44;

      v46 = [CSDConduitLifecycleController alloc];
      v47 = +[TUCallCenter sharedInstance];
      v48 = [v47 conversationManager];
      v49 = [(CSDConduitLifecycleController *)v46 initWithConversationManager:v48 delegate:v20->_neighborhoodActivityConduit];
      [(TUNeighborhoodActivityConduit *)v20->_neighborhoodActivityConduit setConduitLifecycleController:v49];
    }

    v50 = [[CPBiomeSessionDonator alloc] initWithDataSource:v20->_conversationManager parentQueue:v16];
    cpBiomeStreamDonator = v20->_cpBiomeStreamDonator;
    v20->_cpBiomeStreamDonator = v50;

    v52 = [[CPConversationManagerHost alloc] initWithDataSource:v20->_conversationManager];
    conversationManagerHost = v20->_conversationManagerHost;
    v20->_conversationManagerHost = v52;

    v54 = [[CPApplicationMonitor alloc] initWithApplicationController:v32 queue:v16];
    applicationMonitor = v20->_applicationMonitor;
    v20->_applicationMonitor = v54;

    [(CSDConversationManager *)v20->_conversationManager addObserver:v20->_applicationMonitor queue:v16];
    v56 = [[CSDFaceTimeConversationProviderDelegate alloc] initWithConversationManager:v20->_conversationManager queue:v16 invitationResolver:v38];
    faceTimeConversationProviderDelegate = v20->_faceTimeConversationProviderDelegate;
    v20->_faceTimeConversationProviderDelegate = v56;

    [(CSDAbstractFaceTimeConversationProviderDelegate *)v20->_faceTimeConversationProviderDelegate setFaceTimeDemuxerDelegate:v20];
    if ([v17 groupFacetimeAsAServiceEnabled])
    {
      v58 = [[CSDGFTServiceConversationProviderDelegate alloc] initWithConversationManager:v20->_conversationManager queue:v16 invitationResolver:v38];
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

    v64 = [(__objc2_class *)*v62 sharedInstance];
    [(CSDConversationManager *)conversationManager beginListeningOnService:v64];

    [(CSDConversationManager *)v20->_conversationManager generateAllInactiveLinks];
    v65 = [CXInProcessProvider alloc];
    v66 = [(CSDFaceTimeProviderDelegate *)v20 providerConfiguration];
    v67 = [v65 initWithConfiguration:v66 callSource:v15];
    provider = v20->_provider;
    v20->_provider = v67;

    [(CXProvider *)v20->_provider setDelegate:v20 queue:v20->_queue];
    v69 = [(CSDFaceTimeProviderDelegate *)v20 featureFlags];
    LODWORD(v66) = [v69 ftAppDeletionEnabled];

    if (v66)
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
  v3 = [(CSDFaceTimeProviderDelegate *)self conversationManagerXPCServer];
  [v3 invalidate];

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

- (id)ISOCountryCodeForCallWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v6 = [v5 ISOCountryCodeForCallWithUUID:v4];

  return v6;
}

- (void)updateProviderConfigurationWithSenderIdentities:(id)a3
{
  v4 = a3;
  v5 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  [v5 updateProviderConfigurationWithSenderIdentities:v4];
}

- (void)deferReportingAudioFinishedForCallWithUUID:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 1750000000);
  v6 = [(CSDFaceTimeProviderDelegate *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012CBDC;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_after(v5, v6, v8);
}

- (void)_createDelayedActionListIfNecessary:(id)a3
{
  v8 = a3;
  v4 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
  v5 = [v4 objectForKeyedSubscript:v8];

  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

- (void)_processDelayedActionList:(id)a3 provider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
    v11 = [v10 objectForKeyedSubscript:v6];
    v12 = [v11 copy];

    v13 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
    [v13 setObject:0 forKeyedSubscript:v6];

    v14 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v15 = [v14 _callWithUUID:v6];

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
        v36 = v6;
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
              [(CSDFaceTimeProviderDelegate *)self provider:v7 performSetRelayingCallAction:v25];
            }

            else
            {
              v27 = v22[393];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(CSDFaceTimeProviderDelegate *)self provider:v7 performSetMutedCallAction:v25];
              }

              else
              {
                v28 = v23[397];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(CSDFaceTimeProviderDelegate *)self provider:v7 performSetSendingVideoCallAction:v25];
                }

                else
                {
                  v29 = self;
                  v30 = v7;
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
                  v7 = v30;
                  self = v29;
                  v21 = &swift_cvw_initEnumMetadataSinglePayloadWithLayoutString_ptr;
                }
              }
            }
          }

          v19 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v19);
        v12 = v35;
        v6 = v36;
      }
    }

    else if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not processing delayed actions because we no longer have a call", buf, 2u);
    }
  }
}

- (void)providerDelegate:(id)a3 callWithUUID:(id)a4 startedConnectingAtDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "providerDelegate: %@ callUUID: %@ dateStartedConnecting: %@", &v16, 0x20u);
  }

  v12 = [(CSDFaceTimeProviderDelegate *)self provider];
  [v12 reportOutgoingCallWithUUID:v9 startedConnectingAtDate:v10];

  [(CSDFaceTimeProviderDelegate *)self providerDelegate:v8 endOtherProvidersCallWithUUID:v9];
  v13 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
  v14 = [v13 _callWithUUID:v9];

  if (!v14)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ending call since dataSource is not tracking any call for callUUID: %@", &v16, 0xCu);
    }

    [v8 endCallWithUUIDAsLocalHangup:v9];
  }
}

- (void)providerDelegate:(id)a3 callWithUUID:(id)a4 connectedAtDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "providerDelegate: %@ callUUID: %@ dateConnected: %@", &v16, 0x20u);
  }

  v12 = [(CSDFaceTimeProviderDelegate *)self provider];
  [v12 reportOutgoingCallWithUUID:v9 connectedAtDate:v10];

  [(CSDFaceTimeProviderDelegate *)self providerDelegate:v8 endOtherProvidersCallWithUUID:v9];
  v13 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
  v14 = [v13 _callWithUUID:v9];

  if (!v14)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ending call since dataSource is not tracking any call for callUUID: %@", &v16, 0xCu);
    }

    [v8 endCallWithUUIDAsLocalHangup:v9];
  }
}

- (void)providerDelegate:(id)a3 callWithUUID:(id)a4 endedAtDate:(id)a5 withReason:(int64_t)a6 failureContext:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v59 = v11;
    v60 = 2112;
    v61 = v12;
    v62 = 2112;
    v63 = v13;
    v64 = 2048;
    v65 = a6;
    v66 = 2112;
    v67 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "providerDelegate: %@ callUUID: %@ dateEnded: %@ endedReason: %ld failureContext: %@", buf, 0x34u);
  }

  v16 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];

  v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v18 = v17;
  if (v16 == v11)
  {
    v57[0] = v17;
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    v57[1] = v21;
    v22 = v57;
  }

  else
  {

    if (v18 == v11)
    {
      v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
      v56[0] = v18;
      v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
      v56[1] = v21;
      v22 = v56;
    }

    else
    {
      v19 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];

      if (v19 != v11)
      {
        v20 = 0;
        goto LABEL_11;
      }

      v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
      v55[0] = v18;
      v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
      v55[1] = v21;
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
  v42 = v11;
  obj = v23;
  v40 = v14;
  v41 = v13;
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
      v27 |= [v30 hasCallStartedConnectingWithUUID:{v12, v40, v41, v42}];
      v26 |= [v30 isManagingCallWithUUID:v12];
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

        v13 = v41;
        v11 = v42;
        v14 = v40;
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
  if (a6 == 2)
  {
LABEL_26:
    v31 = [(CSDFaceTimeProviderDelegate *)self provider:v40];
    v32 = v31;
    if (v14)
    {
      [v31 reportCallWithUUID:v12 failedAtDate:v13 withContext:v14];
    }

    else
    {
      [v31 reportCallWithUUID:v12 endedAtDate:v13 privateReason:a6];
    }

    [(CSDFaceTimeProviderDelegate *)self deferReportingAudioFinishedForCallWithUUID:v12];
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
            v59 = v12;
            v60 = 2112;
            v61 = v38;
            v62 = 2048;
            v63 = a6;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Ending call with UUID %@ on other provider delegate %@ because ended reason was %ld", buf, 0x20u);
          }

          [v38 endCallWithUUIDAsDeclinedElsewhere:v12];
        }

        v35 = [v33 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v35);
    }

LABEL_39:
    v23 = obj;

    v13 = v41;
    v11 = v42;
    v14 = v40;
    goto LABEL_40;
  }

  if ((v26 & ([v14 failureReason] != 4)) == 0)
  {
    if (a6 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_40:
}

- (void)providerDelegate:(id)a3 requestedTransaction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "providerDelegate: %@ transaction: %@", &v13, 0x16u);
  }

  v12 = [(CSDFaceTimeProviderDelegate *)self provider];
  [v12 requestTransaction:v9 completion:v10];
}

- (void)providerDelegate:(id)a3 requestedUpgradeToExistingCallForConversation:(id)a4 withSessionToken:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v21 = [v12 upgradeCallForConversation:v11 withSessionToken:v10];

  v13 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v14 = [v13 callForConversation:v11 withSessionToken:v10];

  v15 = [v14 isMuted];
  v16 = [v14 isSendingVideo];
  v17 = [v14 isVideo];
  v18 = [v14 upgradeSessionUUID];
  v19 = [v14 handle];
  v20 = [v14 remoteFromID];
  v9[2](v9, v21, v15, v16, v17, v18, v19, v20);
}

- (BOOL)providerDelegate:(id)a3 isManagingCallWithUUID:(id)a4
{
  v5 = a4;
  v6 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
  v7 = [v6 _callWithUUID:v5];

  return v7 != 0;
}

- (BOOL)providerDelegate:(id)a3 isExclusivelyManagingCallWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];

  v9 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v10 = v9;
  if (v8 == v6)
  {
LABEL_7:
    if (([v9 isManagingCallWithUUID:v7] & 1) == 0)
    {
      v13 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
LABEL_10:
      v14 = v13;
      v12 = [v13 isManagingCallWithUUID:v7] ^ 1;

      goto LABEL_11;
    }

LABEL_8:
    LOBYTE(v12) = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (v10 == v6)
  {
    v9 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    v10 = v9;
    goto LABEL_7;
  }

  v11 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];

  if (v11 == v6)
  {
    v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    if (([v10 isManagingCallWithUUID:v7] & 1) == 0)
    {
      v13 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  LOBYTE(v12) = 0;
LABEL_12:

  return v12;
}

- (void)providerDelegate:(id)a3 endOtherProvidersCallWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "providerDelegate: %@ ending callUUID %@", &v16, 0x16u);
  }

  v9 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = v10;
  if (v9 == v6)
  {
    goto LABEL_9;
  }

  if (v11 == v6)
  {
    v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    v11 = v10;
LABEL_9:
    [v10 endCallWithUUIDAsAnsweredElsewhere:v7];

    v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    goto LABEL_10;
  }

  v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];

  if (v12 == v6)
  {
    v13 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v13 endCallWithUUIDAsAnsweredElsewhere:v7];

    v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
LABEL_10:
    v15 = v14;
    [v14 endCallWithUUIDAsAnsweredElsewhere:v7];
  }
}

- (void)providerDidBegin:(id)a3
{
  v4 = a3;
  v5 = [(CSDFaceTimeProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  [v6 providerDidBegin:v4];

  v7 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  [v7 providerDidBegin:v4];

  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  [v8 providerDidBegin:v4];

  v9 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  [v9 providerDidBegin:v4];
}

- (void)providerDidReset:(id)a3
{
  v4 = a3;
  v5 = [(CSDFaceTimeProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  [v6 providerDidReset:v4];

  v7 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  [v7 providerDidReset:v4];

  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  [v8 providerDidReset:v4];

  v9 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  [v9 providerDidReset:v4];
}

- (void)provider:(id)a3 timedOutPerformingAction:(id)a4
{
  v4 = a4;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] action: %@", &v6, 0xCu);
  }
}

- (void)provider:(id)a3 performStartCallAction:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CSDFaceTimeProviderDelegate *)self provider:v7 performStartCallAction:v6 shouldUseIDSDemuxer:[(CSDFaceTimeProviderDelegate *)self shouldUseIDSDemuxer]];
}

- (void)provider:(id)a3 performStartCallAction:(id)a4 shouldUseIDSDemuxer:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  [(CSDFaceTimeProviderDelegate *)self _checkAndSendReturningSilencedIMAVAnalytic:v9];
  v11 = [(CSDFaceTimeProviderDelegate *)self blockUtilities];
  v12 = [(__CFString *)v9 handle];
  v13 = [NSSet setWithObject:v12];
  v14 = [v11 blockCallReasonForHandles:v13 providerIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  if (v14 >= 1)
  {
    v15 = [(CSDFaceTimeProviderDelegate *)self blockUtilities];
    v16 = [(__CFString *)v9 callUUID];
    [(__CFString *)v15 reportFailureForReason:v14 provider:v8 callUUID:v16 actionToFail:v9];
    goto LABEL_27;
  }

  if (!a5)
  {
    v15 = [(__CFString *)v9 handle];
    v16 = [(__CFString *)v15 value];
    v38 = [v16 IDSFormattedDestinationID];
    v39 = [NSArray arrayWithObject:v38];
    [(CSDFaceTimeProviderDelegate *)self initiateModernFTInviteForAction:v9 destinations:v39 excludedIMAVDestinations:&__NSArray0__struct joinCallActionToFulfill:0];

    goto LABEL_27;
  }

  v15 = +[TUCallCapabilities outgoingRelayCallerID];
  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "outgoingCallerID: %@", buf, 0xCu);
  }

  v16 = +[NSDate now];
  v18 = [(CSDFaceTimeProviderDelegate *)self featureFlags];
  if ([v18 uPlusOneSessionWithCapabilitiesEnabled])
  {
    v19 = [(CSDFaceTimeProviderDelegate *)self serverBag];
    v20 = [v19 isUPlusOneSessionCapabilitiesEnabled];

    if (v20)
    {
      v21 = [(CSDFaceTimeProviderDelegate *)self _createJoinCallAction:v9 outgoingCallerID:v15 gftOneToOneDestinations:0];
      v22 = +[NSDate now];
      [v22 timeIntervalSinceDate:v16];
      v24 = v23 * 1000.0;

      if (v24 > 5000.0)
      {
        v60 = TUCallTUStartCallActionDuration;
        v25 = [NSNumber numberWithDouble:v24];
        v26 = [v25 stringValue];
        v27 = [v26 stringByAppendingString:@"ms duration"];
        v61 = v27;
        v28 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];

        v29 = sub_100004778();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [(__CFString *)v9 callUUID];
          *buf = 138412546;
          v57 = v30;
          v58 = 2112;
          v59 = v28;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "reportJoinDurationLongerThanThreasholdForCallUUID: %@, %@", buf, 0x16u);
        }

        v31 = +[CSDReportingController sharedInstance];
        v32 = [(__CFString *)v9 callUUID];
        [v31 reportJoinDurationLongerThanThreasholdForCallUUID:v32 report:v28];
      }

      v33 = sub_100004778();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v21;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Created join call action without gftOneToOneDestinations: %@", buf, 0xCu);
      }

      [(CSDFaceTimeProviderDelegate *)self provider:v8 performJoinCallAction:v21 shouldUseIDSDemuxer:0];
      v34 = [(__CFString *)v9 handle];
      v35 = [v34 value];
      v36 = [v35 IDSFormattedDestinationID];
      v37 = [NSArray arrayWithObject:v36];
      [(CSDFaceTimeProviderDelegate *)self initiateModernFTInviteForAction:v9 destinations:v37 excludedIMAVDestinations:&__NSArray0__struct joinCallActionToFulfill:0];

      goto LABEL_27;
    }
  }

  else
  {
  }

  v40 = sub_100004778();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [(CSDFaceTimeProviderDelegate *)self featureFlags];
    if ([v41 uPlusOneSessionWithCapabilitiesEnabled])
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    v43 = [(CSDFaceTimeProviderDelegate *)self serverBag];
    v44 = [v43 isUPlusOneSessionCapabilitiesEnabled];
    v45 = @"NO";
    if (v44)
    {
      v45 = @"YES";
    }

    *buf = 138412546;
    v57 = v42;
    v58 = 2112;
    v59 = v45;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "uPlusOneSessionWithCapabilitiesEnabled: %@, isUPlusOneSessionCapabilitiesEnabled: %@", buf, 0x16u);
  }

  v46 = [(__CFString *)v9 callUUID];
  [(CSDFaceTimeProviderDelegate *)self _createDelayedActionListIfNecessary:v46];

  v47 = [(CSDFaceTimeProviderDelegate *)self faceTimeInviteDemuxer];
  v48 = [(__CFString *)v9 handle];
  v49 = [v48 tuHandle];
  v50 = [(__CFString *)v9 isVideo];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10012E774;
  v51[3] = &unk_10061C300;
  v51[4] = self;
  v52 = v9;
  v15 = v15;
  v53 = v15;
  v16 = v16;
  v54 = v16;
  v55 = v8;
  [v47 idsPeersForHandle:v49 video:v50 fromID:v15 completionHandler:v51];

LABEL_27:
}

- (void)initiateModernFTInviteForAction:(id)a3 destinations:(id)a4 excludedIMAVDestinations:(id)a5 joinCallActionToFulfill:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [NSSet setWithArray:v13];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10012F3B0;
  v19[3] = &unk_10061C328;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [v14 inviteIDSPeersWithAction:v18 destinations:v15 joinCallActionToFulfill:v16 completion:v19];
}

- (void)provider:(id)a3 performJoinCallAction:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(CSDFaceTimeProviderDelegate *)self shouldUseIDSDemuxer])
  {
    v7 = [v6 remoteMembers];
    if ([v7 count] == 1)
    {
      v8 = [v6 associationIdentifier];
      [(CSDFaceTimeProviderDelegate *)self provider:v9 performJoinCallAction:v6 shouldUseIDSDemuxer:v8 == 0];
    }

    else
    {
      [(CSDFaceTimeProviderDelegate *)self provider:v9 performJoinCallAction:v6 shouldUseIDSDemuxer:0];
    }
  }

  else
  {
    [(CSDFaceTimeProviderDelegate *)self provider:v9 performJoinCallAction:v6 shouldUseIDSDemuxer:0];
  }
}

- (void)provider:(id)a3 performJoinCallAction:(id)a4 shouldUseIDSDemuxer:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 participantCluster];
  if (v10)
  {
    v11 = [v9 participantCluster];
    v12 = [v11 type] == 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v9 UUID];
    v15 = v14;
    v16 = &stru_100631E68;
    if (v12)
    {
      v16 = @", is nearby session";
    }

    *buf = 138412546;
    v86 = v14;
    v87 = 2112;
    v88 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Perform join call with action UUID: %@%@", buf, 0x16u);
  }

  v17 = [(CSDFaceTimeProviderDelegate *)self blockUtilities];
  v18 = [v9 remoteMembers];
  v19 = [v17 blockCallReasonForMembers:v18 providerIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  if (v19 < 1)
  {
    v22 = [v9 pseudonym];
    if ([v22 length])
    {
      v23 = [v9 publicKey];
      v24 = [v23 length];

      if (v24)
      {
        v25 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v26 = [v9 remoteMembers];
    v27 = [v26 count];

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
    v28 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    v29 = [v9 callUUID];
    v30 = [v28 isUpgradingCallWithUUID:v29];

    if (v30)
    {
      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100475DE8();
      }

LABEL_29:

      [v9 fail];
      goto LABEL_63;
    }

    if (([v9 isVideo] & 1) == 0 && objc_msgSend(v9, "isVideoEnabled"))
    {
      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100475DB4();
      }

      goto LABEL_29;
    }

    v32 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    v33 = [v9 callUUID];
    v34 = [v32 isManagingCallWithUUID:v33];

    if (v34)
    {
      [v9 setUpgrade:1];
      v35 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
      v36 = [v9 callUUID];
      v37 = [v35 upgradeSessionUUIDForCallWithUUID:v36];
      [v9 setUpgradeSessionUUID:v37];

      v38 = sub_100004778();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = v9;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Updated to action: %@", buf, 0xCu);
      }

      v39 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
      [v39 provider:v8 performJoinCallAction:v9];
    }

    else
    {
      v40 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
      v41 = [v9 callUUID];
      v42 = [v40 isManagingCallWithUUID:v41];

      if (!v42)
      {
LABEL_35:
        v45 = +[CSDConversationProviderManager sharedInstance];
        v46 = [v9 conversationProviderIdentifier];
        v47 = [v45 tuConversationProviderForIdentifier:v46];

        if ((v25 & v5) != 1 || v12 | (([v47 isDefaultProvider] & 1) == 0))
        {
          if (!v47)
          {
LABEL_62:

            goto LABEL_63;
          }

          v48 = [v47 isDefaultProvider];
          v49 = sub_100004778();
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          if (v48)
          {
            if (v50)
            {
              *buf = 138412290;
              v86 = v9;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Sending JoinCallAction to FaceTimeConversationProviderDelegate- action: %@", buf, 0xCu);
            }

            v51 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
          }

          else
          {
            if (v50)
            {
              *buf = 138412290;
              v86 = v9;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Sending JoinCallAction to CSDGFTServiceConversationProviderDelegate- action: %@", buf, 0xCu);
            }

            v51 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
          }

          v52 = v51;
          [v51 provider:v8 performJoinCallAction:v9];
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

        v54 = [(CSDFaceTimeProviderDelegate *)self featureFlags];
        if ([v54 uPlusOneSessionWithCapabilitiesEnabled])
        {
          v55 = [(CSDFaceTimeProviderDelegate *)self serverBag];
          v56 = [v55 isUPlusOneSessionCapabilitiesEnabled];

          if (v56)
          {
            v57 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
            [v57 provider:v8 performJoinCallAction:v9];

            v58 = [CXStartCallAction alloc];
            v59 = [v9 callUUID];
            v60 = [v9 remoteMembers];
            v61 = [v60 anyObject];
            v62 = [v61 handle];
            v63 = [v58 initWithCallUUID:v59 handle:v62];

            [v63 setVideo:{objc_msgSend(v9, "isVideo")}];
            v64 = [v63 handle];
            v65 = [v64 value];
            v66 = [v65 IDSFormattedDestinationID];
            v67 = [NSArray arrayWithObject:v66];
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
          v69 = [(CSDFaceTimeProviderDelegate *)self featureFlags];
          if ([v69 uPlusOneSessionWithCapabilitiesEnabled])
          {
            v70 = @"YES";
          }

          else
          {
            v70 = @"NO";
          }

          v71 = [(CSDFaceTimeProviderDelegate *)self serverBag];
          if ([v71 isUPlusOneSessionCapabilitiesEnabled])
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

        v73 = [v9 callUUID];
        [(CSDFaceTimeProviderDelegate *)self _createDelayedActionListIfNecessary:v73];

        v74 = [(CSDFaceTimeProviderDelegate *)self faceTimeInviteDemuxer];
        v75 = [v9 remoteMembers];
        v76 = [v75 anyObject];
        v77 = [v76 handle];
        v78 = [v77 tuHandle];
        v79 = [v9 isVideo];
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_1001301B8;
        v82[3] = &unk_10061C378;
        v82[4] = self;
        v83 = v9;
        v84 = v8;
        v80 = v79;
        v52 = v81;
        [v74 idsPeersForHandle:v78 video:v80 fromID:v81 completionHandler:v82];

        goto LABEL_61;
      }

      v43 = sub_100004778();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = v9;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found a IMAV chat that is being tracked for action: %@", buf, 0xCu);
      }

      v39 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
      v44 = [v9 callUUID];
      [v39 endCallWithUUID:v44];
    }

    goto LABEL_35;
  }

  v20 = [(CSDFaceTimeProviderDelegate *)self blockUtilities];
  v21 = [v9 callUUID];
  [v20 reportFailureForReason:v19 provider:v8 callUUID:v21 actionToFail:v9];

LABEL_63:
}

- (void)provider:(id)a3 performAnswerCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performAnswerCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performAnswerCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performAnswerCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performAnswerCallAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performEndCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v31 = v48 = v6;
    v32 = [v7 callUUID];
    v47 = [v31 isManagingCallWithUUID:v32];

    v6 = v48;
    if (v47)
    {
      goto LABEL_7;
    }

    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v7;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v34 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v35 = [v7 callUUID];
    v36 = [v34 _callWithUUID:v35];

    if (v36)
    {
      v37 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v38 = [v7 callUUID];
      v39 = [v37 objectForKeyedSubscript:v38];
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
            v50 = v7;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v42 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v43 = [v7 callUUID];
          v44 = [v42 objectForKeyedSubscript:v43];
          [v44 addObject:v7];

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
          v50 = v7;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performEndCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performEndCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performEndCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performEndCallAction:v7];
  }

LABEL_15:
  v30 = [v7 callUUID];
  [(CSDFaceTimeProviderDelegate *)self deferReportingAudioFinishedForCallWithUUID:v30];
}

- (void)provider:(id)a3 performSetHeldCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performSetHeldCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performSetHeldCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performSetHeldCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performSetHeldCallAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performSetSendingVideoCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performSetSendingVideoCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performSetSendingVideoCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performSetSendingVideoCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performSetSendingVideoCallAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performSetSharingScreenCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performSetSharingScreenCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performSetSharingScreenCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performSetSharingScreenCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performSetSharingScreenCallAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performSetScreenShareAttributesCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performSetScreenShareAttributesCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performSetScreenShareAttributesCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performSetScreenShareAttributesCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performSetScreenShareAttributesCallAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performEnableVideoCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performEnableVideoCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performEnableVideoCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performEnableVideoCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performEnableVideoCallAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performSetVideoPresentationSizeCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performSetVideoPresentationSizeCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performSetVideoPresentationSizeCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performSetVideoPresentationSizeCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performSetVideoPresentationSizeCallAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performSetVideoPresentationStateCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performSetVideoPresentationStateCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performSetVideoPresentationStateCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performSetVideoPresentationStateCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performSetVideoPresentationStateCallAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performSetRelayingCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performSetRelayingCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performSetRelayingCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performSetRelayingCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performSetRelayingCallAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performSetScreeningCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performSetScreeningCallAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performSetScreeningCallAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performSetScreeningCallAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performSetScreeningCallAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performSetAllowUplinkAudioInjectionAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v9 = [v7 callUUID];
  if ([v8 isManagingCallWithUUID:v9])
  {
    goto LABEL_6;
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {

      goto LABEL_5;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v30 = v47 = v6;
    v31 = [v7 callUUID];
    v46 = [v30 isManagingCallWithUUID:v31];

    v6 = v47;
    if (v46)
    {
      goto LABEL_7;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v33 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v34 = [v7 callUUID];
    v35 = [v33 _callWithUUID:v34];

    if (v35)
    {
      v36 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v37 = [v7 callUUID];
      v38 = [v36 objectForKeyedSubscript:v37];
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
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v41 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v42 = [v7 callUUID];
          v43 = [v41 objectForKeyedSubscript:v42];
          [v43 addObject:v7];

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
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_35;
      }
    }

    [v7 fail];
LABEL_35:

    goto LABEL_15;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v15 = [v7 callUUID];
  v16 = [v14 isManagingCallWithUUID:v15];

  if (v16)
  {
    v17 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v17 provider:v6 performSetAllowUplinkAudioInjectionAction:v7];
  }

  v18 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v19 = [v7 callUUID];
  v20 = [v18 isManagingCallWithUUID:v19];

  if (v20)
  {
    v21 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v21 provider:v6 performSetAllowUplinkAudioInjectionAction:v7];
  }

  v22 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v23 = [v7 callUUID];
  v24 = [v22 isManagingCallWithUUID:v23];

  if (v24)
  {
    v25 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v25 provider:v6 performSetAllowUplinkAudioInjectionAction:v7];
  }

  v26 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v27 = [v7 callUUID];
  v28 = [v26 isManagingCallWithUUID:v27];

  if (v28)
  {
    v29 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v29 provider:v6 performSetAllowUplinkAudioInjectionAction:v7];
  }

LABEL_15:
}

- (void)provider:(id)a3 performSetMutedCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeProviderDelegate *)self featureFlags];
  if (([v8 sessionBasedMutingEnabled] & 1) == 0)
  {
    v9 = [v7 isBottomUpMute];

    if (v9)
    {
      goto LABEL_5;
    }

    v8 = +[TUAudioSystemController sharedAudioSystemController];
    [v8 setUplinkMuted:{objc_msgSend(v7, "isMuted")}];
  }

LABEL_5:
  v10 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v11 = [v7 callUUID];
  if (([v10 isManagingCallWithUUID:v11] & 1) == 0)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    v13 = [v7 callUUID];
    if ([v12 isManagingCallWithUUID:v13])
    {
LABEL_9:

      goto LABEL_10;
    }

    v14 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    v15 = [v7 callUUID];
    if ([v14 isManagingCallWithUUID:v15])
    {

      goto LABEL_9;
    }

    [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    v32 = v49 = v6;
    v33 = [v7 callUUID];
    v48 = [v32 isManagingCallWithUUID:v33];

    v6 = v49;
    if (v48)
    {
      goto LABEL_11;
    }

    v34 = sub_100004778();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v7;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[WARN] No provider delegate is managing call for action %@", buf, 0xCu);
    }

    v35 = [(CSDFaceTimeProviderDelegate *)self callDataSource];
    v36 = [v7 callUUID];
    v37 = [v35 _callWithUUID:v36];

    if (v37)
    {
      v38 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
      v39 = [v7 callUUID];
      v40 = [v38 objectForKeyedSubscript:v39];
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
            v51 = v7;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Delaying action %@", buf, 0xCu);
          }

          v43 = [(CSDFaceTimeProviderDelegate *)self delayedActionsByCallUUID];
          v44 = [v7 callUUID];
          v45 = [v43 objectForKeyedSubscript:v44];
          [v45 addObject:v7];

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
          v51 = v7;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Fulfilling action %@ because call has ended", buf, 0xCu);
        }

        [v7 fulfill];
        goto LABEL_39;
      }
    }

    [v7 fail];
LABEL_39:

    goto LABEL_19;
  }

LABEL_10:

LABEL_11:
  v16 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
  v17 = [v7 callUUID];
  v18 = [v16 isManagingCallWithUUID:v17];

  if (v18)
  {
    v19 = [(CSDFaceTimeProviderDelegate *)self faceTimeIDSProviderDelegate];
    [v19 provider:v6 performSetMutedCallAction:v7];
  }

  v20 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
  v21 = [v7 callUUID];
  v22 = [v20 isManagingCallWithUUID:v21];

  if (v22)
  {
    v23 = [(CSDFaceTimeProviderDelegate *)self faceTimeIMAVProviderDelegate];
    [v23 provider:v6 performSetMutedCallAction:v7];
  }

  v24 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v25 = [v7 callUUID];
  v26 = [v24 isManagingCallWithUUID:v25];

  if (v26)
  {
    v27 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v27 provider:v6 performSetMutedCallAction:v7];
  }

  v28 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v29 = [v7 callUUID];
  v30 = [v28 isManagingCallWithUUID:v29];

  if (v30)
  {
    v31 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v31 provider:v6 performSetMutedCallAction:v7];
  }

LABEL_19:
}

- (void)provider:(id)a3 didActivateAudioSession:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v9 provider:v13 didActivateAudioSession:v6];
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v12 provider:v13 didActivateAudioSession:v6];
  }
}

- (void)provider:(id)a3 didDeactivateAudioSession:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CSDFaceTimeProviderDelegate *)self faceTimeConversationProviderDelegate];
    [v9 provider:v13 didDeactivateAudioSession:v6];
  }

  v10 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CSDFaceTimeProviderDelegate *)self groupFaceTimeServiceProviderDelegate];
    [v12 provider:v13 didDeactivateAudioSession:v6];
  }
}

- (id)_createJoinCallAction:(id)a3 outgoingCallerID:(id)a4 gftOneToOneDestinations:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [CXJoinCallAction alloc];
  v12 = [v8 callUUID];
  v13 = +[NSUUID UUID];
  v14 = [v11 initWithCallUUID:v12 groupUUID:v13];

  v15 = [CXMember alloc];
  v16 = [v8 handle];
  v17 = [v15 initWithHandle:v16];
  v18 = [NSSet setWithObject:v17];
  [v14 setRemoteMembers:v18];

  [v14 setVideoEnabled:{objc_msgSend(v8, "isVideo")}];
  [v14 setVideo:{objc_msgSend(v8, "isVideo")}];
  [v14 setIsUpgradeToVideo:{objc_msgSend(v8, "isUpgradeToVideo")}];
  [v14 setRelay:{objc_msgSend(v8, "isRelay")}];
  if ([v8 isVideo])
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
  if (v10)
  {
    v37 = self;
    v38 = v14;
    v40 = v8;
    v20 = +[NSMutableArray array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v39 = v10;
    v21 = v10;
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

    v8 = v40;
    v10 = v39;
    self = v37;
  }

  v31 = [v8 localSenderIdentityUUID];

  if (v31)
  {
    v32 = [(CSDFaceTimeProviderDelegate *)self conversationManager];
    v33 = [v8 localSenderIdentityUUID];
    v34 = [v32 callerIDHandleForSenderIdentityUUID:v33 callerID:v9];

    if (v34)
    {
      v35 = [CXHandle handleWithTUHandle:v34];
      [v14 setCallerID:v35];
    }
  }

  return v14;
}

- (void)_checkAndSendReturningSilencedIMAVAnalytic:(id)a3
{
  v3 = a3;
  v48 = +[NSUserDefaults standardUserDefaults];
  v4 = [v48 arrayForKey:@"returnedIMAVCalls"];
  v5 = objc_alloc_init(CHManager);
  v6 = [CHHandle alloc];
  v7 = [v3 handle];
  if ([v7 type] == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v9 = [v3 handle];
  v10 = [v9 value];
  v11 = [v6 initWithType:v8 value:v10];

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

  v47 = v3;
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
        v32 = [v31 uniqueId];
        v33 = [v4 containsObject:v32];

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

        v35 = [v31 uniqueId];
        [v24 addObject:v35];
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
        v38 = [v47 handle];
        v39 = [v38 value];
        *buf = 138412290;
        v55 = v39;
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
    v41 = [v47 handle];
    v42 = [v41 value];
    *buf = 138412290;
    v55 = v42;
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