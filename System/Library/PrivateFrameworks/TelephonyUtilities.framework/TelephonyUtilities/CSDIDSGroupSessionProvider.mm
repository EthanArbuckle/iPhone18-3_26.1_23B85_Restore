@interface CSDIDSGroupSessionProvider
- (CSDIDSGroupSessionProvider)initWithGroupID:(id)d participantDestinationIDs:(id)ds callerID:(id)iD account:(id)account queue:(id)queue isOneToOneModeEnabled:(BOOL)enabled isLightweightMember:(BOOL)member avLess:(BOOL)self0 isScreenSharingRequest:(BOOL)self1 ABTestConfiguration:(id)self2 isInitiator:(BOOL)self3;
- (CSDIDSGroupSessionProviderDelegate)delegate;
- (NSSet)requiredCapabilities;
- (NSSet)requiredLackOfCapabilities;
- (NSString)UUID;
- (NSString)description;
- (NSString)destination;
- (unint64_t)aliasForParticipantID:(unint64_t)d salt:(id)salt;
- (unsigned)endedReason;
- (void)addAliasesToConversationContainer:(id)container withSalt:(id)salt;
- (void)addRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)allowParticipants:(id)participants;
- (void)dealloc;
- (void)groupSessionDidConnectUnderlyingLinks:(id)links;
- (void)groupSessionDidDisconnectUnderlyingLinks:(id)links;
- (void)groupSessionDidTerminate:(id)terminate;
- (void)joinWithOptions:(id)options;
- (void)kickParticipants:(id)participants;
- (void)leave;
- (void)leaveWithOptions:(id)options;
- (void)participantIDForAlias:(unint64_t)alias salt:(id)salt completion:(id)completion;
- (void)reconnect;
- (void)registerPluginWithOptions:(id)options;
- (void)removeRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)requestActiveParticipants;
- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler;
- (void)requestEncryptionKeyForParticipants:(id)participants topic:(id)topic;
- (void)restart;
- (void)sendParticipantData:(id)data withContext:(id)context;
- (void)session:(id)session didReceiveDataBlob:(id)blob forParticipant:(id)participant;
- (void)session:(id)session didReceiveJoinedParticipantID:(unint64_t)d withContext:(id)context;
- (void)session:(id)session didReceiveLeftParticipantID:(unint64_t)d withContext:(id)context;
- (void)session:(id)session didReceiveParticipantUpdateParticipantID:(unint64_t)d withContext:(id)context;
- (void)session:(id)session didReceiveReport:(id)report;
- (void)session:(id)session didRegisterPluginAllocationInfo:(id)info;
- (void)session:(id)session didUnregisterPluginAllocationInfo:(id)info;
- (void)sessionDidJoinGroup:(id)group participantUpdate:(id)update error:(id)error;
- (void)sessionDidLeaveGroup:(id)group error:(id)error;
- (void)sessiondidReceiveKeyUpdate:(id)update;
- (void)setPreferences:(id)preferences;
- (void)setUpSession;
- (void)updateParticipantInfo:(id)info;
@end

@implementation CSDIDSGroupSessionProvider

- (CSDIDSGroupSessionProvider)initWithGroupID:(id)d participantDestinationIDs:(id)ds callerID:(id)iD account:(id)account queue:(id)queue isOneToOneModeEnabled:(BOOL)enabled isLightweightMember:(BOOL)member avLess:(BOOL)self0 isScreenSharingRequest:(BOOL)self1 ABTestConfiguration:(id)self2 isInitiator:(BOOL)self3
{
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  accountCopy = account;
  queueCopy = queue;
  configurationCopy = configuration;
  v47.receiver = self;
  v47.super_class = CSDIDSGroupSessionProvider;
  v23 = [(CSDIDSGroupSessionProvider *)&v47 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_groupID, d);
    objc_storeStrong(&v24->_participantDestinationIDs, ds);
    objc_storeStrong(&v24->_account, account);
    objc_storeStrong(&v24->_queue, queue);
    v25 = [iDCopy copy];
    callerID = v24->_callerID;
    v24->_callerID = v25;

    v24->_isOneToOneModeEnabled = enabled;
    v24->_isLightweightMember = member;
    v24->_isScreenSharingRequest = request;
    v24->_avLess = less;
    v27 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v24->_featureFlags;
    v24->_featureFlags = v27;

    v29 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v24->_serverBag;
    v24->_serverBag = v29;

    objc_storeStrong(&v24->_testConfiguration, configuration);
    v31 = +[CSDIDSChat faceTimeAppUUID];
    uUIDString = [v31 UUIDString];
    if (uUIDString)
    {
      v33 = +[CSDIDSChat faceTimeAppUUID];
      uUIDString2 = [v33 UUIDString];
      p_clientUUIDString = &v24->_clientUUIDString;
      clientUUIDString = v24->_clientUUIDString;
      v24->_clientUUIDString = uUIDString2;
    }

    else
    {
      v33 = +[NSUUID UUID];
      clientUUIDString = [v33 UUIDString];
      v37 = [clientUUIDString copy];
      p_clientUUIDString = &v24->_clientUUIDString;
      v38 = v24->_clientUUIDString;
      v24->_clientUUIDString = v37;
    }

    v24->_isInitiator = initiator;
    [(CSDIDSGroupSessionProvider *)v24 setUpSession];
    v39 = sub_100004778();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = @"NO";
      v41 = *p_clientUUIDString;
      *buf = 138413314;
      if (member)
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      v49 = v42;
      v50 = 2112;
      if (less)
      {
        v40 = @"YES";
      }

      v51 = v40;
      v52 = 2112;
      v53 = dsCopy;
      v54 = 2112;
      v55 = v41;
      v56 = 2112;
      v57 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "initWithGroupID: isLightweightMember: %@, isAVLess: %@, participantDestinationIDs: %@, clientUUIDString: %@, testConfiguration: %@", buf, 0x34u);
    }
  }

  return v24;
}

- (void)dealloc
{
  session = self->_session;
  if (objc_opt_respondsToSelector())
  {
    [(IDSGroupSession *)self->_session invalidate];
  }

  v4.receiver = self;
  v4.super_class = CSDIDSGroupSessionProvider;
  [(CSDIDSGroupSessionProvider *)&v4 dealloc];
}

- (NSString)description
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  v3 = [session description];

  return v3;
}

- (void)setUpSession
{
  v33[0] = IDSSessionTransportTypeKey;
  v33[1] = IDSSessionAlwaysSkipSelfKey;
  v34[0] = &off_10063EC18;
  v34[1] = &__kCFBooleanTrue;
  v33[2] = IDSGroupSessionMessagesGroupIDKey;
  groupID = [(CSDIDSGroupSessionProvider *)self groupID];
  v34[2] = groupID;
  v33[3] = IDSGroupSessionMessagesGroupMembersKey;
  participantDestinationIDs = [(CSDIDSGroupSessionProvider *)self participantDestinationIDs];
  v34[3] = participantDestinationIDs;
  v33[4] = IDSGroupSessionMessagesCallerIDKey;
  callerID = [(CSDIDSGroupSessionProvider *)self callerID];
  v34[4] = callerID;
  v33[5] = IDSGroupSessionStartedAsUPlusOneKey;
  if ([(CSDIDSGroupSessionProvider *)self isOneToOneModeEnabled])
  {
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  v34[5] = v6;
  v33[6] = IDSGroupSessionIsLightweightParticipantKey;
  isLightweightMember = [(CSDIDSGroupSessionProvider *)self isLightweightMember];
  v8 = &__kCFBooleanTrue;
  if ((isLightweightMember & 1) == 0)
  {
    if ([(CSDIDSGroupSessionProvider *)self isAVLess])
    {
      v8 = &__kCFBooleanTrue;
    }

    else
    {
      v8 = &__kCFBooleanFalse;
    }
  }

  v34[6] = v8;
  v33[7] = IDSSessionClientUUIDKey;
  clientUUIDString = [(CSDIDSGroupSessionProvider *)self clientUUIDString];
  v34[7] = clientUUIDString;
  v33[8] = IDSGroupSessionShortMKIEnabledKey;
  testConfiguration = [(CSDIDSGroupSessionProvider *)self testConfiguration];
  if ([testConfiguration isShortMKIEnabled])
  {
    v11 = &__kCFBooleanTrue;
  }

  else
  {
    v11 = &__kCFBooleanFalse;
  }

  v34[8] = v11;
  v33[9] = IDSGroupSessionTLEEnabledKey;
  testConfiguration2 = [(CSDIDSGroupSessionProvider *)self testConfiguration];
  if ([testConfiguration2 isTLEEnabled])
  {
    v13 = &__kCFBooleanTrue;
  }

  else
  {
    v13 = &__kCFBooleanFalse;
  }

  v34[9] = v13;
  v33[10] = IDSGroupSessionPartialTLEUPlusOneEnabledKey;
  testConfiguration3 = [(CSDIDSGroupSessionProvider *)self testConfiguration];
  if ([testConfiguration3 isTLEUPlusOneEnabled])
  {
    v15 = &__kCFBooleanTrue;
  }

  else
  {
    v15 = &__kCFBooleanFalse;
  }

  v34[10] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:11];
  v17 = [v16 mutableCopy];

  if ([(CSDIDSGroupSessionProvider *)self isOneToOneModeEnabled])
  {
    v18 = [NSNumber numberWithBool:[(CSDIDSGroupSessionProvider *)self isInitiator]];
    [v17 setObject:v18 forKeyedSubscript:IDSGroupSessionIsInitiatorKey];
  }

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = TULoggableStringForObject();
    v31 = 138412290;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Creating IDSGroupSession with options %@", &v31, 0xCu);
  }

  v21 = [IDSGroupSession alloc];
  account = [(CSDIDSGroupSessionProvider *)self account];
  v23 = [v17 copy];
  v24 = [v21 initWithAccount:account options:v23];
  [(CSDIDSGroupSessionProvider *)self setSession:v24];

  if ([(CSDIDSGroupSessionProvider *)self isOneToOneModeEnabled])
  {
    featureFlags = [(CSDIDSGroupSessionProvider *)self featureFlags];
    if (![featureFlags uPlusOneSessionWithCapabilitiesEnabled])
    {
LABEL_26:

      goto LABEL_27;
    }

    serverBag = [(CSDIDSGroupSessionProvider *)self serverBag];
    isUPlusOneSessionCapabilitiesEnabled = [serverBag isUPlusOneSessionCapabilitiesEnabled];

    if (isUPlusOneSessionCapabilitiesEnabled)
    {
      v28 = [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
      [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:v28 requiredLackOfCapabilities:0];

      if ([(CSDIDSGroupSessionProvider *)self isScreenSharingRequest])
      {
        featureFlags = [NSSet setWithObject:IDSRegistrationPropertySupportsSSRC];
        [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:featureFlags requiredLackOfCapabilities:0];
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  session = [(CSDIDSGroupSessionProvider *)self session];
  queue = [(CSDIDSGroupSessionProvider *)self queue];
  [session setDelegate:self queue:queue];
}

- (unsigned)endedReason
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  sessionEndedReason = [session sessionEndedReason];

  return sessionEndedReason;
}

- (NSString)UUID
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  sessionID = [session sessionID];

  return sessionID;
}

- (NSString)destination
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  destination = [session destination];

  return destination;
}

- (void)setPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "preferences: %@", &v7, 0xCu);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  [session setPreferences:preferencesCopy];
}

- (void)joinWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = TULoggableStringForObject();
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "options: %@", &v15, 0xCu);
  }

  featureFlags = [(CSDIDSGroupSessionProvider *)self featureFlags];
  if (![featureFlags uPlusOneSessionWithCapabilitiesEnabled])
  {
    goto LABEL_9;
  }

  serverBag = [(CSDIDSGroupSessionProvider *)self serverBag];
  if (![(CSDMessagingConversationParticipantDidJoinContext *)serverBag isUPlusOneSessionCapabilitiesEnabled])
  {
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v9 = [optionsCopy objectForKeyedSubscript:IDSGroupSessionStartedAsUPlusOneKey];
  intValue = [v9 intValue];

  if (intValue >= 1)
  {
    v11 = [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
    [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:v11 requiredLackOfCapabilities:0];

    featureFlags = [optionsCopy objectForKeyedSubscript:IDSGroupSessionClientContextDataKey];
    serverBag = [[CSDMessagingConversationParticipantDidJoinContext alloc] initWithData:featureFlags];
    screenSharingRequest = [(CSDMessagingConversationParticipantDidJoinContext *)serverBag screenSharingRequest];

    if (screenSharingRequest)
    {
      v13 = [NSSet setWithObject:IDSRegistrationPropertySupportsSSRC];
      [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:v13 requiredLackOfCapabilities:0];
    }

    goto LABEL_8;
  }

LABEL_10:
  session = [(CSDIDSGroupSessionProvider *)self session];
  [session joinWithOptions:optionsCopy];
}

- (void)sendParticipantData:(id)data withContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = dataCopy;
    v14 = 2112;
    v15 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending participantData: %@, context: %@", &v12, 0x16u);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    session2 = [(CSDIDSGroupSessionProvider *)self session];
    [session2 updateParticipantData:dataCopy withContext:contextCopy];
  }
}

- (void)updateParticipantInfo:(id)info
{
  infoCopy = info;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateParticipantInfo: %@", &v9, 0xCu);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    session2 = [(CSDIDSGroupSessionProvider *)self session];
    [session2 updateParticipantInfo:infoCopy];
  }
}

- (void)leave
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v5, 2u);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  [session leaveGroupSession];
}

- (void)leaveWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Leaving with options: %@", &v10, 0xCu);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  v7 = objc_opt_respondsToSelector();

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  v9 = session2;
  if (v7)
  {
    [session2 leaveGroupSessionWithOptions:optionsCopy];
  }

  else
  {
    [session2 leaveGroupSession];
  }
}

- (void)restart
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  session = [(CSDIDSGroupSessionProvider *)self session];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    session2 = [(CSDIDSGroupSessionProvider *)self session];
    [session2 invalidate];

    [(CSDIDSGroupSessionProvider *)self setUpSession];
  }
}

- (void)requestActiveParticipants
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v6 = 138412290;
    v7 = session;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "session: %@", &v6, 0xCu);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  [session2 requestActiveParticipants];
}

- (void)reconnect
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v8 = 138412290;
    v9 = session;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "session: %@", &v8, 0xCu);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    session3 = [(CSDIDSGroupSessionProvider *)self session];
    [session3 performSelector:"reconnectUPlusOneSession"];
  }
}

- (void)kickParticipants:(id)participants
{
  participantsCopy = participants;
  session = [(CSDIDSGroupSessionProvider *)self session];
  [session manageDesignatedMembers:participantsCopy withType:1];
}

- (void)allowParticipants:(id)participants
{
  participantsCopy = participants;
  session = [(CSDIDSGroupSessionProvider *)self session];
  [session manageDesignatedMembers:participantsCopy withType:2];
}

- (void)registerPluginWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v10 = 138412546;
    v11 = session;
    v12 = 2112;
    v13 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "session: %@, options: %@", &v10, 0x16u);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    session3 = [(CSDIDSGroupSessionProvider *)self session];
    [session3 performSelector:"registerPluginWithOptions:" withObject:optionsCopy];
  }
}

- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler
{
  topicCopy = topic;
  handlerCopy = handler;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v11 = 138412546;
    v12 = session;
    v13 = 2112;
    v14 = topicCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, requestDataCryptor: %@", &v11, 0x16u);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  [session2 requestDataCryptorForTopic:topicCopy completionHandler:handlerCopy];
}

- (void)requestEncryptionKeyForParticipants:(id)participants topic:(id)topic
{
  participantsCopy = participants;
  topicCopy = topic;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v11 = 138412802;
    v12 = session;
    v13 = 2112;
    v14 = participantsCopy;
    v15 = 2112;
    v16 = topicCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, requestEncryptionKeyForParticipants: %@ topic: %@", &v11, 0x20u);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  [session2 requestEncryptionKeyForParticipants:participantsCopy];
}

- (void)addRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  session = [(CSDIDSGroupSessionProvider *)self session];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      session2 = [(CSDIDSGroupSessionProvider *)self session];
      v21 = 138412802;
      v22 = session2;
      v23 = 2112;
      v24 = capabilitiesCopy;
      v25 = 2112;
      v26 = ofCapabilitiesCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "session: %@, setRequiredCapabilities: %@ requiredLackOfCapabilities: %@", &v21, 0x20u);
    }

    session3 = [(CSDIDSGroupSessionProvider *)self session];
    requiredCapabilities = [session3 requiredCapabilities];
    v14 = [requiredCapabilities mutableCopy];

    if ([capabilitiesCopy count])
    {
      if (!v14)
      {
        v14 = +[NSMutableSet set];
      }

      allObjects = [capabilitiesCopy allObjects];
      [v14 addObjectsFromArray:allObjects];
    }

    session4 = [(CSDIDSGroupSessionProvider *)self session];
    requiredLackOfCapabilities = [session4 requiredLackOfCapabilities];
    v18 = [requiredLackOfCapabilities mutableCopy];

    if ([ofCapabilitiesCopy count])
    {
      if (!v18)
      {
        v18 = +[NSMutableSet set];
      }

      allObjects2 = [ofCapabilitiesCopy allObjects];
      [v18 addObjectsFromArray:allObjects2];
    }

    session5 = [(CSDIDSGroupSessionProvider *)self session];
    [session5 setRequiredCapabilities:v14 requiredLackOfCapabilities:v18];
  }
}

- (void)removeRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v17 = 138412802;
    v18 = session;
    v19 = 2112;
    v20 = capabilitiesCopy;
    v21 = 2112;
    v22 = ofCapabilitiesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, removeRequiredCapabilities: %@ requiredLackOfCapabilities: %@", &v17, 0x20u);
  }

  session2 = [(CSDIDSGroupSessionProvider *)self session];
  requiredCapabilities = [session2 requiredCapabilities];
  v12 = [requiredCapabilities mutableCopy];

  if ([capabilitiesCopy count])
  {
    [v12 minusSet:capabilitiesCopy];
  }

  session3 = [(CSDIDSGroupSessionProvider *)self session];
  requiredLackOfCapabilities = [session3 requiredLackOfCapabilities];
  v15 = [requiredLackOfCapabilities mutableCopy];

  if ([ofCapabilitiesCopy count])
  {
    [v15 minusSet:ofCapabilitiesCopy];
  }

  session4 = [(CSDIDSGroupSessionProvider *)self session];
  [session4 setRequiredCapabilities:v12 requiredLackOfCapabilities:v15];
}

- (NSSet)requiredCapabilities
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  requiredCapabilities = [session requiredCapabilities];

  return requiredCapabilities;
}

- (NSSet)requiredLackOfCapabilities
{
  session = [(CSDIDSGroupSessionProvider *)self session];
  requiredLackOfCapabilities = [session requiredLackOfCapabilities];

  return requiredLackOfCapabilities;
}

- (void)addAliasesToConversationContainer:(id)container withSalt:(id)salt
{
  containerCopy = container;
  saltCopy = salt;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    *buf = 138412802;
    v35 = session;
    v36 = 2112;
    v37 = containerCopy;
    v38 = 2112;
    v39 = saltCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, addAliasesToConversationContainer: %@ salt: %@", buf, 0x20u);
  }

  v10 = [NSUUID alloc];
  session2 = [(CSDIDSGroupSessionProvider *)self session];
  v12 = [session2 sessionIDAliasWithSalt:saltCopy];
  v13 = [v10 initWithUUIDString:v12];
  [containerCopy setGroupUUID:v13];

  if ([containerCopy localParticipantIdentifier])
  {
    session3 = [(CSDIDSGroupSessionProvider *)self session];
    [containerCopy setLocalParticipantIdentifier:{objc_msgSend(session3, "createAliasForParticipantID:salt:", objc_msgSend(containerCopy, "localParticipantIdentifier"), saltCopy)}];
  }

  v15 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = containerCopy;
  obj = [containerCopy virtualParticipants];
  v16 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v29 + 1) + 8 * v19);
        [(CSDIDSGroupSessionProvider *)self session];
        v22 = v21 = self;
        v23 = [v22 createAliasForParticipantID:objc_msgSend(v20 salt:{"identifier"), saltCopy}];

        v24 = [TUConversationVirtualParticipant alloc];
        pluginName = [v20 pluginName];
        v26 = [v24 initWithIdentifier:v23 pluginName:pluginName];
        [v15 addObject:v26];

        self = v21;
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }

  [v27 setVirtualParticipants:v15];
}

- (unint64_t)aliasForParticipantID:(unint64_t)d salt:(id)salt
{
  saltCopy = salt;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v11 = 138412802;
    v12 = session;
    v13 = 2048;
    dCopy = d;
    v15 = 2112;
    v16 = saltCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session: %@, aliasForParticipantID: %llu salt: %@", &v11, 0x20u);
  }

  if (d)
  {
    session2 = [(CSDIDSGroupSessionProvider *)self session];
    d = [session2 createAliasForParticipantID:d salt:saltCopy];
  }

  return d;
}

- (void)participantIDForAlias:(unint64_t)alias salt:(id)salt completion:(id)completion
{
  saltCopy = salt;
  completionCopy = completion;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    session = [(CSDIDSGroupSessionProvider *)self session];
    v13 = 138412802;
    v14 = session;
    v15 = 2048;
    aliasCopy = alias;
    v17 = 2112;
    v18 = saltCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "session: %@, participantIDForAlias: %llu salt: %@", &v13, 0x20u);
  }

  if (alias)
  {
    session2 = [(CSDIDSGroupSessionProvider *)self session];
    [session2 getParticipantIDForAlias:alias salt:saltCopy completionHandler:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)groupSessionDidTerminate:(id)terminate
{
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProviderDidTerminate:self];
}

- (void)groupSessionDidDisconnectUnderlyingLinks:(id)links
{
  linksCopy = links;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = linksCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "groupSessionDidDisconnectUnderlyingLinks for session: %@", &v7, 0xCu);
  }

  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveUnderlyingLinksStatus:0];
}

- (void)groupSessionDidConnectUnderlyingLinks:(id)links
{
  linksCopy = links;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = linksCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "groupSessionDidConnectUnderlyingLinks for session: %@", &v7, 0xCu);
  }

  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveUnderlyingLinksStatus:1];
}

- (void)sessionDidJoinGroup:(id)group participantUpdate:(id)update error:(id)error
{
  errorCopy = error;
  updateCopy = update;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  participantIDs = [updateCopy participantIDs];
  participantIdentifier = [updateCopy participantIdentifier];

  [delegate sessionProvider:self didJoinGroupWithParticipantIdentifiers:participantIDs localParticipantIdentifier:participantIdentifier error:errorCopy];
}

- (void)sessionDidLeaveGroup:(id)group error:(id)error
{
  errorCopy = error;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didLeaveGroupWithError:errorCopy];
}

- (void)session:(id)session didReceiveLeftParticipantID:(unint64_t)d withContext:(id)context
{
  contextCopy = context;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveLeftParticipantID:d withContext:contextCopy];
}

- (void)session:(id)session didReceiveJoinedParticipantID:(unint64_t)d withContext:(id)context
{
  contextCopy = context;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveJoinedParticipantID:d withContext:contextCopy];
}

- (void)session:(id)session didReceiveParticipantUpdateParticipantID:(unint64_t)d withContext:(id)context
{
  contextCopy = context;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveParticipantUpdateParticipantID:d withContext:contextCopy];
}

- (void)session:(id)session didReceiveReport:(id)report
{
  reportCopy = report;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveReport:reportCopy];
}

- (void)session:(id)session didRegisterPluginAllocationInfo:(id)info
{
  infoCopy = info;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didRegisterPluginAllocationInfo:infoCopy];
}

- (void)session:(id)session didUnregisterPluginAllocationInfo:(id)info
{
  infoCopy = info;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didUnregisterPluginAllocationInfo:infoCopy];
}

- (void)sessiondidReceiveKeyUpdate:(id)update
{
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProviderDidReceiveKeyUpdate:self];
}

- (void)session:(id)session didReceiveDataBlob:(id)blob forParticipant:(id)participant
{
  participantCopy = participant;
  blobCopy = blob;
  delegate = [(CSDIDSGroupSessionProvider *)self delegate];
  [delegate sessionProvider:self didReceiveDataBlob:blobCopy forParticipant:participantCopy];
}

- (CSDIDSGroupSessionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end