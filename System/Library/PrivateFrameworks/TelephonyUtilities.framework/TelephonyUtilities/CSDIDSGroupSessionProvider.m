@interface CSDIDSGroupSessionProvider
- (CSDIDSGroupSessionProvider)initWithGroupID:(id)a3 participantDestinationIDs:(id)a4 callerID:(id)a5 account:(id)a6 queue:(id)a7 isOneToOneModeEnabled:(BOOL)a8 isLightweightMember:(BOOL)a9 avLess:(BOOL)a10 isScreenSharingRequest:(BOOL)a11 ABTestConfiguration:(id)a12 isInitiator:(BOOL)a13;
- (CSDIDSGroupSessionProviderDelegate)delegate;
- (NSSet)requiredCapabilities;
- (NSSet)requiredLackOfCapabilities;
- (NSString)UUID;
- (NSString)description;
- (NSString)destination;
- (unint64_t)aliasForParticipantID:(unint64_t)a3 salt:(id)a4;
- (unsigned)endedReason;
- (void)addAliasesToConversationContainer:(id)a3 withSalt:(id)a4;
- (void)addRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4;
- (void)allowParticipants:(id)a3;
- (void)dealloc;
- (void)groupSessionDidConnectUnderlyingLinks:(id)a3;
- (void)groupSessionDidDisconnectUnderlyingLinks:(id)a3;
- (void)groupSessionDidTerminate:(id)a3;
- (void)joinWithOptions:(id)a3;
- (void)kickParticipants:(id)a3;
- (void)leave;
- (void)leaveWithOptions:(id)a3;
- (void)participantIDForAlias:(unint64_t)a3 salt:(id)a4 completion:(id)a5;
- (void)reconnect;
- (void)registerPluginWithOptions:(id)a3;
- (void)removeRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4;
- (void)requestActiveParticipants;
- (void)requestDataCryptorForTopic:(id)a3 completionHandler:(id)a4;
- (void)requestEncryptionKeyForParticipants:(id)a3 topic:(id)a4;
- (void)restart;
- (void)sendParticipantData:(id)a3 withContext:(id)a4;
- (void)session:(id)a3 didReceiveDataBlob:(id)a4 forParticipant:(id)a5;
- (void)session:(id)a3 didReceiveJoinedParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)session:(id)a3 didReceiveLeftParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)session:(id)a3 didReceiveParticipantUpdateParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)session:(id)a3 didReceiveReport:(id)a4;
- (void)session:(id)a3 didRegisterPluginAllocationInfo:(id)a4;
- (void)session:(id)a3 didUnregisterPluginAllocationInfo:(id)a4;
- (void)sessionDidJoinGroup:(id)a3 participantUpdate:(id)a4 error:(id)a5;
- (void)sessionDidLeaveGroup:(id)a3 error:(id)a4;
- (void)sessiondidReceiveKeyUpdate:(id)a3;
- (void)setPreferences:(id)a3;
- (void)setUpSession;
- (void)updateParticipantInfo:(id)a3;
@end

@implementation CSDIDSGroupSessionProvider

- (CSDIDSGroupSessionProvider)initWithGroupID:(id)a3 participantDestinationIDs:(id)a4 callerID:(id)a5 account:(id)a6 queue:(id)a7 isOneToOneModeEnabled:(BOOL)a8 isLightweightMember:(BOOL)a9 avLess:(BOOL)a10 isScreenSharingRequest:(BOOL)a11 ABTestConfiguration:(id)a12 isInitiator:(BOOL)a13
{
  v20 = a3;
  v46 = a4;
  v21 = a5;
  v45 = a6;
  v44 = a7;
  v22 = a12;
  v47.receiver = self;
  v47.super_class = CSDIDSGroupSessionProvider;
  v23 = [(CSDIDSGroupSessionProvider *)&v47 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_groupID, a3);
    objc_storeStrong(&v24->_participantDestinationIDs, a4);
    objc_storeStrong(&v24->_account, a6);
    objc_storeStrong(&v24->_queue, a7);
    v25 = [v21 copy];
    callerID = v24->_callerID;
    v24->_callerID = v25;

    v24->_isOneToOneModeEnabled = a8;
    v24->_isLightweightMember = a9;
    v24->_isScreenSharingRequest = a11;
    v24->_avLess = a10;
    v27 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v24->_featureFlags;
    v24->_featureFlags = v27;

    v29 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v24->_serverBag;
    v24->_serverBag = v29;

    objc_storeStrong(&v24->_testConfiguration, a12);
    v31 = +[CSDIDSChat faceTimeAppUUID];
    v32 = [v31 UUIDString];
    if (v32)
    {
      v33 = +[CSDIDSChat faceTimeAppUUID];
      v34 = [v33 UUIDString];
      p_clientUUIDString = &v24->_clientUUIDString;
      clientUUIDString = v24->_clientUUIDString;
      v24->_clientUUIDString = v34;
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

    v24->_isInitiator = a13;
    [(CSDIDSGroupSessionProvider *)v24 setUpSession];
    v39 = sub_100004778();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = @"NO";
      v41 = *p_clientUUIDString;
      *buf = 138413314;
      if (a9)
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      v49 = v42;
      v50 = 2112;
      if (a10)
      {
        v40 = @"YES";
      }

      v51 = v40;
      v52 = 2112;
      v53 = v46;
      v54 = 2112;
      v55 = v41;
      v56 = 2112;
      v57 = v22;
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
  v2 = [(CSDIDSGroupSessionProvider *)self session];
  v3 = [v2 description];

  return v3;
}

- (void)setUpSession
{
  v33[0] = IDSSessionTransportTypeKey;
  v33[1] = IDSSessionAlwaysSkipSelfKey;
  v34[0] = &off_10063EC18;
  v34[1] = &__kCFBooleanTrue;
  v33[2] = IDSGroupSessionMessagesGroupIDKey;
  v3 = [(CSDIDSGroupSessionProvider *)self groupID];
  v34[2] = v3;
  v33[3] = IDSGroupSessionMessagesGroupMembersKey;
  v4 = [(CSDIDSGroupSessionProvider *)self participantDestinationIDs];
  v34[3] = v4;
  v33[4] = IDSGroupSessionMessagesCallerIDKey;
  v5 = [(CSDIDSGroupSessionProvider *)self callerID];
  v34[4] = v5;
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
  v7 = [(CSDIDSGroupSessionProvider *)self isLightweightMember];
  v8 = &__kCFBooleanTrue;
  if ((v7 & 1) == 0)
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
  v9 = [(CSDIDSGroupSessionProvider *)self clientUUIDString];
  v34[7] = v9;
  v33[8] = IDSGroupSessionShortMKIEnabledKey;
  v10 = [(CSDIDSGroupSessionProvider *)self testConfiguration];
  if ([v10 isShortMKIEnabled])
  {
    v11 = &__kCFBooleanTrue;
  }

  else
  {
    v11 = &__kCFBooleanFalse;
  }

  v34[8] = v11;
  v33[9] = IDSGroupSessionTLEEnabledKey;
  v12 = [(CSDIDSGroupSessionProvider *)self testConfiguration];
  if ([v12 isTLEEnabled])
  {
    v13 = &__kCFBooleanTrue;
  }

  else
  {
    v13 = &__kCFBooleanFalse;
  }

  v34[9] = v13;
  v33[10] = IDSGroupSessionPartialTLEUPlusOneEnabledKey;
  v14 = [(CSDIDSGroupSessionProvider *)self testConfiguration];
  if ([v14 isTLEUPlusOneEnabled])
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
  v22 = [(CSDIDSGroupSessionProvider *)self account];
  v23 = [v17 copy];
  v24 = [v21 initWithAccount:v22 options:v23];
  [(CSDIDSGroupSessionProvider *)self setSession:v24];

  if ([(CSDIDSGroupSessionProvider *)self isOneToOneModeEnabled])
  {
    v25 = [(CSDIDSGroupSessionProvider *)self featureFlags];
    if (![v25 uPlusOneSessionWithCapabilitiesEnabled])
    {
LABEL_26:

      goto LABEL_27;
    }

    v26 = [(CSDIDSGroupSessionProvider *)self serverBag];
    v27 = [v26 isUPlusOneSessionCapabilitiesEnabled];

    if (v27)
    {
      v28 = [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
      [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:v28 requiredLackOfCapabilities:0];

      if ([(CSDIDSGroupSessionProvider *)self isScreenSharingRequest])
      {
        v25 = [NSSet setWithObject:IDSRegistrationPropertySupportsSSRC];
        [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:v25 requiredLackOfCapabilities:0];
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  v29 = [(CSDIDSGroupSessionProvider *)self session];
  v30 = [(CSDIDSGroupSessionProvider *)self queue];
  [v29 setDelegate:self queue:v30];
}

- (unsigned)endedReason
{
  v2 = [(CSDIDSGroupSessionProvider *)self session];
  v3 = [v2 sessionEndedReason];

  return v3;
}

- (NSString)UUID
{
  v2 = [(CSDIDSGroupSessionProvider *)self session];
  v3 = [v2 sessionID];

  return v3;
}

- (NSString)destination
{
  v2 = [(CSDIDSGroupSessionProvider *)self session];
  v3 = [v2 destination];

  return v3;
}

- (void)setPreferences:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "preferences: %@", &v7, 0xCu);
  }

  v6 = [(CSDIDSGroupSessionProvider *)self session];
  [v6 setPreferences:v4];
}

- (void)joinWithOptions:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = TULoggableStringForObject();
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "options: %@", &v15, 0xCu);
  }

  v7 = [(CSDIDSGroupSessionProvider *)self featureFlags];
  if (![v7 uPlusOneSessionWithCapabilitiesEnabled])
  {
    goto LABEL_9;
  }

  v8 = [(CSDIDSGroupSessionProvider *)self serverBag];
  if (![(CSDMessagingConversationParticipantDidJoinContext *)v8 isUPlusOneSessionCapabilitiesEnabled])
  {
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v9 = [v4 objectForKeyedSubscript:IDSGroupSessionStartedAsUPlusOneKey];
  v10 = [v9 intValue];

  if (v10 >= 1)
  {
    v11 = [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
    [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:v11 requiredLackOfCapabilities:0];

    v7 = [v4 objectForKeyedSubscript:IDSGroupSessionClientContextDataKey];
    v8 = [[CSDMessagingConversationParticipantDidJoinContext alloc] initWithData:v7];
    v12 = [(CSDMessagingConversationParticipantDidJoinContext *)v8 screenSharingRequest];

    if (v12)
    {
      v13 = [NSSet setWithObject:IDSRegistrationPropertySupportsSSRC];
      [(CSDIDSGroupSessionProvider *)self addRequiredCapabilities:v13 requiredLackOfCapabilities:0];
    }

    goto LABEL_8;
  }

LABEL_10:
  v14 = [(CSDIDSGroupSessionProvider *)self session];
  [v14 joinWithOptions:v4];
}

- (void)sendParticipantData:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending participantData: %@, context: %@", &v12, 0x16u);
  }

  v9 = [(CSDIDSGroupSessionProvider *)self session];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CSDIDSGroupSessionProvider *)self session];
    [v11 updateParticipantData:v6 withContext:v7];
  }
}

- (void)updateParticipantInfo:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateParticipantInfo: %@", &v9, 0xCu);
  }

  v6 = [(CSDIDSGroupSessionProvider *)self session];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CSDIDSGroupSessionProvider *)self session];
    [v8 updateParticipantInfo:v4];
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

  v4 = [(CSDIDSGroupSessionProvider *)self session];
  [v4 leaveGroupSession];
}

- (void)leaveWithOptions:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Leaving with options: %@", &v10, 0xCu);
  }

  v6 = [(CSDIDSGroupSessionProvider *)self session];
  v7 = objc_opt_respondsToSelector();

  v8 = [(CSDIDSGroupSessionProvider *)self session];
  v9 = v8;
  if (v7)
  {
    [v8 leaveGroupSessionWithOptions:v4];
  }

  else
  {
    [v8 leaveGroupSession];
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

  v4 = [(CSDIDSGroupSessionProvider *)self session];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CSDIDSGroupSessionProvider *)self session];
    [v6 invalidate];

    [(CSDIDSGroupSessionProvider *)self setUpSession];
  }
}

- (void)requestActiveParticipants
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CSDIDSGroupSessionProvider *)self session];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "session: %@", &v6, 0xCu);
  }

  v5 = [(CSDIDSGroupSessionProvider *)self session];
  [v5 requestActiveParticipants];
}

- (void)reconnect
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CSDIDSGroupSessionProvider *)self session];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "session: %@", &v8, 0xCu);
  }

  v5 = [(CSDIDSGroupSessionProvider *)self session];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CSDIDSGroupSessionProvider *)self session];
    [v7 performSelector:"reconnectUPlusOneSession"];
  }
}

- (void)kickParticipants:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSGroupSessionProvider *)self session];
  [v5 manageDesignatedMembers:v4 withType:1];
}

- (void)allowParticipants:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSGroupSessionProvider *)self session];
  [v5 manageDesignatedMembers:v4 withType:2];
}

- (void)registerPluginWithOptions:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSDIDSGroupSessionProvider *)self session];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "session: %@, options: %@", &v10, 0x16u);
  }

  v7 = [(CSDIDSGroupSessionProvider *)self session];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CSDIDSGroupSessionProvider *)self session];
    [v9 performSelector:"registerPluginWithOptions:" withObject:v4];
  }
}

- (void)requestDataCryptorForTopic:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CSDIDSGroupSessionProvider *)self session];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, requestDataCryptor: %@", &v11, 0x16u);
  }

  v10 = [(CSDIDSGroupSessionProvider *)self session];
  [v10 requestDataCryptorForTopic:v6 completionHandler:v7];
}

- (void)requestEncryptionKeyForParticipants:(id)a3 topic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CSDIDSGroupSessionProvider *)self session];
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, requestEncryptionKeyForParticipants: %@ topic: %@", &v11, 0x20u);
  }

  v10 = [(CSDIDSGroupSessionProvider *)self session];
  [v10 requestEncryptionKeyForParticipants:v6];
}

- (void)addRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDIDSGroupSessionProvider *)self session];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CSDIDSGroupSessionProvider *)self session];
      v21 = 138412802;
      v22 = v11;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "session: %@, setRequiredCapabilities: %@ requiredLackOfCapabilities: %@", &v21, 0x20u);
    }

    v12 = [(CSDIDSGroupSessionProvider *)self session];
    v13 = [v12 requiredCapabilities];
    v14 = [v13 mutableCopy];

    if ([v6 count])
    {
      if (!v14)
      {
        v14 = +[NSMutableSet set];
      }

      v15 = [v6 allObjects];
      [v14 addObjectsFromArray:v15];
    }

    v16 = [(CSDIDSGroupSessionProvider *)self session];
    v17 = [v16 requiredLackOfCapabilities];
    v18 = [v17 mutableCopy];

    if ([v7 count])
    {
      if (!v18)
      {
        v18 = +[NSMutableSet set];
      }

      v19 = [v7 allObjects];
      [v18 addObjectsFromArray:v19];
    }

    v20 = [(CSDIDSGroupSessionProvider *)self session];
    [v20 setRequiredCapabilities:v14 requiredLackOfCapabilities:v18];
  }
}

- (void)removeRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CSDIDSGroupSessionProvider *)self session];
    v17 = 138412802;
    v18 = v9;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, removeRequiredCapabilities: %@ requiredLackOfCapabilities: %@", &v17, 0x20u);
  }

  v10 = [(CSDIDSGroupSessionProvider *)self session];
  v11 = [v10 requiredCapabilities];
  v12 = [v11 mutableCopy];

  if ([v6 count])
  {
    [v12 minusSet:v6];
  }

  v13 = [(CSDIDSGroupSessionProvider *)self session];
  v14 = [v13 requiredLackOfCapabilities];
  v15 = [v14 mutableCopy];

  if ([v7 count])
  {
    [v15 minusSet:v7];
  }

  v16 = [(CSDIDSGroupSessionProvider *)self session];
  [v16 setRequiredCapabilities:v12 requiredLackOfCapabilities:v15];
}

- (NSSet)requiredCapabilities
{
  v2 = [(CSDIDSGroupSessionProvider *)self session];
  v3 = [v2 requiredCapabilities];

  return v3;
}

- (NSSet)requiredLackOfCapabilities
{
  v2 = [(CSDIDSGroupSessionProvider *)self session];
  v3 = [v2 requiredLackOfCapabilities];

  return v3;
}

- (void)addAliasesToConversationContainer:(id)a3 withSalt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CSDIDSGroupSessionProvider *)self session];
    *buf = 138412802;
    v35 = v9;
    v36 = 2112;
    v37 = v6;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session: %@, addAliasesToConversationContainer: %@ salt: %@", buf, 0x20u);
  }

  v10 = [NSUUID alloc];
  v11 = [(CSDIDSGroupSessionProvider *)self session];
  v12 = [v11 sessionIDAliasWithSalt:v7];
  v13 = [v10 initWithUUIDString:v12];
  [v6 setGroupUUID:v13];

  if ([v6 localParticipantIdentifier])
  {
    v14 = [(CSDIDSGroupSessionProvider *)self session];
    [v6 setLocalParticipantIdentifier:{objc_msgSend(v14, "createAliasForParticipantID:salt:", objc_msgSend(v6, "localParticipantIdentifier"), v7)}];
  }

  v15 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v6;
  obj = [v6 virtualParticipants];
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
        v23 = [v22 createAliasForParticipantID:objc_msgSend(v20 salt:{"identifier"), v7}];

        v24 = [TUConversationVirtualParticipant alloc];
        v25 = [v20 pluginName];
        v26 = [v24 initWithIdentifier:v23 pluginName:v25];
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

- (unint64_t)aliasForParticipantID:(unint64_t)a3 salt:(id)a4
{
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CSDIDSGroupSessionProvider *)self session];
    v11 = 138412802;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session: %@, aliasForParticipantID: %llu salt: %@", &v11, 0x20u);
  }

  if (a3)
  {
    v9 = [(CSDIDSGroupSessionProvider *)self session];
    a3 = [v9 createAliasForParticipantID:a3 salt:v6];
  }

  return a3;
}

- (void)participantIDForAlias:(unint64_t)a3 salt:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(CSDIDSGroupSessionProvider *)self session];
    v13 = 138412802;
    v14 = v11;
    v15 = 2048;
    v16 = a3;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "session: %@, participantIDForAlias: %llu salt: %@", &v13, 0x20u);
  }

  if (a3)
  {
    v12 = [(CSDIDSGroupSessionProvider *)self session];
    [v12 getParticipantIDForAlias:a3 salt:v8 completionHandler:v9];
  }

  else
  {
    v9[2](v9, 0);
  }
}

- (void)groupSessionDidTerminate:(id)a3
{
  v4 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v4 sessionProviderDidTerminate:self];
}

- (void)groupSessionDidDisconnectUnderlyingLinks:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "groupSessionDidDisconnectUnderlyingLinks for session: %@", &v7, 0xCu);
  }

  v6 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v6 sessionProvider:self didReceiveUnderlyingLinksStatus:0];
}

- (void)groupSessionDidConnectUnderlyingLinks:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "groupSessionDidConnectUnderlyingLinks for session: %@", &v7, 0xCu);
  }

  v6 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v6 sessionProvider:self didReceiveUnderlyingLinksStatus:1];
}

- (void)sessionDidJoinGroup:(id)a3 participantUpdate:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [(CSDIDSGroupSessionProvider *)self delegate];
  v9 = [v8 participantIDs];
  v10 = [v8 participantIdentifier];

  [v11 sessionProvider:self didJoinGroupWithParticipantIdentifiers:v9 localParticipantIdentifier:v10 error:v7];
}

- (void)sessionDidLeaveGroup:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v6 sessionProvider:self didLeaveGroupWithError:v5];
}

- (void)session:(id)a3 didReceiveLeftParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v7 = a5;
  v8 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v8 sessionProvider:self didReceiveLeftParticipantID:a4 withContext:v7];
}

- (void)session:(id)a3 didReceiveJoinedParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v7 = a5;
  v8 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v8 sessionProvider:self didReceiveJoinedParticipantID:a4 withContext:v7];
}

- (void)session:(id)a3 didReceiveParticipantUpdateParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v7 = a5;
  v8 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v8 sessionProvider:self didReceiveParticipantUpdateParticipantID:a4 withContext:v7];
}

- (void)session:(id)a3 didReceiveReport:(id)a4
{
  v5 = a4;
  v6 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v6 sessionProvider:self didReceiveReport:v5];
}

- (void)session:(id)a3 didRegisterPluginAllocationInfo:(id)a4
{
  v5 = a4;
  v6 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v6 sessionProvider:self didRegisterPluginAllocationInfo:v5];
}

- (void)session:(id)a3 didUnregisterPluginAllocationInfo:(id)a4
{
  v5 = a4;
  v6 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v6 sessionProvider:self didUnregisterPluginAllocationInfo:v5];
}

- (void)sessiondidReceiveKeyUpdate:(id)a3
{
  v4 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v4 sessionProviderDidReceiveKeyUpdate:self];
}

- (void)session:(id)a3 didReceiveDataBlob:(id)a4 forParticipant:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CSDIDSGroupSessionProvider *)self delegate];
  [v9 sessionProvider:self didReceiveDataBlob:v8 forParticipant:v7];
}

- (CSDIDSGroupSessionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end