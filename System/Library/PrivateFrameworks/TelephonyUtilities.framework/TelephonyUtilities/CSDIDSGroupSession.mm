@interface CSDIDSGroupSession
- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)provider;
- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)provider featureFlags:(id)flags;
- (CSDIDSGroupSessionDelegate)delegate;
- (NSArray)participantDestinationIDs;
- (NSSet)requiredCapabilities;
- (NSSet)requiredLackOfCapabilities;
- (NSString)idsDestination;
- (id)_updateParticipantDestinationIDForParticipant:(id)participant members:(id)members;
- (id)idsDestinationForActiveParticipant:(id)participant;
- (unint64_t)aliasForParticipantID:(unint64_t)d salt:(id)salt;
- (unint64_t)callTypeForJoinContext:(id)context;
- (void)addAliasesToConversationContainer:(id)container withSalt:(id)salt;
- (void)addMembers:(id)members toExistingMembers:(id)existingMembers activeParticipants:(id)participants activitySessions:(id)sessions link:(id)link otherInvitedHandles:(id)handles report:(id)report invitationPreferences:(id)self0 requiredCapabilities:(id)self1 messagesGroupUUID:(id)self2 messagesGroupName:(id)self3 addingFromLetMeIn:(BOOL)self4 triggeredLocally:(BOOL)self5 highlightIdentifier:(id)self6 stagedActivitySession:(id)self7 avMode:(unint64_t)self8;
- (void)addMembers:(id)members toExistingMembers:(id)existingMembers participantDestinationIDs:(id)ds webDestinationIDs:(id)iDs activeParticipants:(id)participants activitySessions:(id)sessions link:(id)link otherInvitedHandles:(id)self0 report:(id)self1 invitationPreferences:(id)self2;
- (void)addRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)allowMember:(id)member;
- (void)joinUsingContext:(id)context localParticipantAVCData:(id)data members:(id)members otherInvitedHandles:(id)handles participantDestinationIDs:(id)ds link:(id)link report:(id)report stagedActivitySession:(id)self0 personaHandshakeBlob:(id)self1 activitySession:(id)self2;
- (void)kickMember:(id)member;
- (void)leaveGroupSessionWithContext:(id)context;
- (void)participantIDForAlias:(unint64_t)alias salt:(id)salt completion:(id)completion;
- (void)reconnect;
- (void)registerPluginWithOptions:(id)options;
- (void)removeRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)requestActiveParticipants;
- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler;
- (void)requestEncryptionKeyForParticipants:(id)participants topic:(id)topic;
- (void)restart;
- (void)sendLocalParticipant:(id)participant;
- (void)sessionProvider:(id)provider didJoinGroupWithParticipantIdentifiers:(id)identifiers localParticipantIdentifier:(unint64_t)identifier error:(id)error;
- (void)sessionProvider:(id)provider didLeaveGroupWithError:(id)error;
- (void)sessionProvider:(id)provider didReceiveActiveLightweightParticipants:(id)participants success:(BOOL)success;
- (void)sessionProvider:(id)provider didReceiveActiveParticipants:(id)participants success:(BOOL)success;
- (void)sessionProvider:(id)provider didReceiveDataBlob:(id)blob forParticipant:(id)participant;
- (void)sessionProvider:(id)provider didReceiveJoinedParticipantID:(unint64_t)d withContext:(id)context;
- (void)sessionProvider:(id)provider didReceiveLeftParticipantID:(unint64_t)d withContext:(id)context;
- (void)sessionProvider:(id)provider didReceiveParticipantUpdateParticipantID:(unint64_t)d withContext:(id)context;
- (void)sessionProvider:(id)provider didReceiveReport:(id)report;
- (void)sessionProvider:(id)provider didRegisterPluginAllocationInfo:(id)info;
- (void)sessionProvider:(id)provider didUnregisterPluginAllocationInfo:(id)info;
- (void)sessionProviderDidReceiveKeyUpdate:(id)update;
- (void)sessionProviderDidTerminate:(id)terminate;
- (void)updateLocalParticipantInfo:(id)info;
@end

@implementation CSDIDSGroupSession

- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)provider featureFlags:(id)flags
{
  providerCopy = provider;
  flagsCopy = flags;
  v18.receiver = self;
  v18.super_class = CSDIDSGroupSession;
  v9 = [(CSDIDSSession *)&v18 initWithSessionProvider:providerCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureFlags, flags);
    v10->_localParticipantType = [providerCopy isAVLess] ^ 1;
    objc_storeStrong(&v10->_sessionProvider, provider);
    [(CSDIDSGroupSessionProvider *)v10->_sessionProvider setDelegate:v10];
    v11 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v10->_serverBag;
    v10->_serverBag = v11;

    v13 = +[NSMutableDictionary dictionary];
    sessionProvider = [(CSDIDSGroupSession *)v10 sessionProvider];
    clientUUIDString = [sessionProvider clientUUIDString];
    [(NSMutableDictionary *)v13 setObject:clientUUIDString forKeyedSubscript:IDSSessionClientUUIDKey];

    preferences = v10->_preferences;
    v10->_preferences = v13;

    v10->_isUnderlyingLinksConnected = 1;
  }

  return v10;
}

- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(CSDIDSGroupSession *)self initWithGroupSessionProvider:providerCopy featureFlags:v5];

  return v6;
}

- (NSString)idsDestination
{
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  destination = [sessionProvider destination];

  return destination;
}

- (NSArray)participantDestinationIDs
{
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  participantDestinationIDs = [sessionProvider participantDestinationIDs];

  return participantDestinationIDs;
}

- (void)joinUsingContext:(id)context localParticipantAVCData:(id)data members:(id)members otherInvitedHandles:(id)handles participantDestinationIDs:(id)ds link:(id)link report:(id)report stagedActivitySession:(id)self0 personaHandshakeBlob:(id)self1 activitySession:(id)self2
{
  contextCopy = context;
  dataCopy = data;
  linkCopy = link;
  reportCopy = report;
  selfCopy = self;
  activitySessionCopy = activitySession;
  sessionCopy = session;
  dsCopy = ds;
  handlesCopy = handles;
  membersCopy = members;
  sessionProvider = [(CSDIDSGroupSession *)selfCopy sessionProvider];
  preferences = [(CSDIDSGroupSession *)selfCopy preferences];
  [sessionProvider setPreferences:preferences];

  v27 = objc_alloc_init(CSDMessagingConversationParticipantDidJoinContext);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setTuConversationMembers:membersCopy];

  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setOtherInvitedTUHandles:handlesCopy];
  messagesGroupUUID = [contextCopy messagesGroupUUID];
  uUIDString = [messagesGroupUUID UUIDString];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setMessagesGroupUUIDString:uUIDString];

  messagesGroupName = [contextCopy messagesGroupName];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setMessagesGroupName:messagesGroupName];

  -[CSDMessagingConversationParticipantDidJoinContext setIsMomentsAvailable:](v27, "setIsMomentsAvailable:", [contextCopy isMomentsAvailable]);
  featureFlags = [(CSDIDSGroupSession *)selfCopy featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    provider = [contextCopy provider];
    -[CSDMessagingConversationParticipantDidJoinContext setIsScreenSharingAvailable:](v27, "setIsScreenSharingAvailable:", [provider supportsSharePlay]);
  }

  else
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setIsScreenSharingAvailable:1];
  }

  featureFlags2 = [(CSDIDSGroupSession *)selfCopy featureFlags];
  if ([featureFlags2 groupFacetimeAsAServiceEnabled])
  {
    provider2 = [contextCopy provider];
    -[CSDMessagingConversationParticipantDidJoinContext setIsGondolaCallingAvailable:](v27, "setIsGondolaCallingAvailable:", [provider2 supportsLinks]);
  }

  else
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setIsGondolaCallingAvailable:1];
  }

  if ([contextCopy isVideo])
  {
    featureFlags3 = [(CSDIDSGroupSession *)selfCopy featureFlags];
    if ([featureFlags3 groupFacetimeAsAServiceEnabled])
    {
      provider3 = [contextCopy provider];
      -[CSDMessagingConversationParticipantDidJoinContext setVideo:](v27, "setVideo:", [provider3 supportsVideo]);
    }

    else
    {
      [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVideo:1];
    }
  }

  else
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVideo:0];
  }

  if ([contextCopy isVideoEnabled])
  {
    featureFlags4 = [(CSDIDSGroupSession *)selfCopy featureFlags];
    if ([featureFlags4 groupFacetimeAsAServiceEnabled])
    {
      provider4 = [contextCopy provider];
      -[CSDMessagingConversationParticipantDidJoinContext setVideoEnabled:](v27, "setVideoEnabled:", [provider4 supportsVideo]);
    }

    else
    {
      [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVideoEnabled:1];
    }
  }

  else
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVideoEnabled:0];
  }

  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setSupportsLeaveContext:1];
  -[CSDMessagingConversationParticipantDidJoinContext setSupportsRequestToScreenShare:](v27, "setSupportsRequestToScreenShare:", [contextCopy supportsRequestToScreenShare]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsPersonaAvailable:](v27, "setIsPersonaAvailable:", [contextCopy isPersonaAvailable]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsGFTDowngradeToOneToOneAvailable:](v27, "setIsGFTDowngradeToOneToOneAvailable:", [contextCopy isGFTDowngradeToOneToOneAvailable]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusNDowngradeAvailable:](v27, "setIsUPlusNDowngradeAvailable:", [contextCopy isUPlusNDowngradeAvailable]);
  provider5 = [contextCopy provider];
  identifier = [provider5 identifier];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setProviderIdentifier:identifier];

  -[CSDMessagingConversationParticipantDidJoinContext setIsLightweight:](v27, "setIsLightweight:", [contextCopy isLightweight]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVisionFeatureVersion:TUVisionFeatureVersion()];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusOneVisionToVisionAvailable:](v27, "setIsUPlusOneVisionToVisionAvailable:", [contextCopy isUPlusOneVisionToVisionAvailable]);
  collaborationIdentifier = [contextCopy collaborationIdentifier];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setCollaborationIdentifier:collaborationIdentifier];

  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusOneScreenSharingAvailable:](v27, "setIsUPlusOneScreenSharingAvailable:", [contextCopy isUPlusOneScreenShareAvailable]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsSpatialPersonaEnabled:](v27, "setIsSpatialPersonaEnabled:", [contextCopy isSpatialPersonaEnabled]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusOneAVLessAvailable:](v27, "setIsUPlusOneAVLessAvailable:", [contextCopy isUPlusOneAVLessAvailable]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setIsPhotosSharePlayAvailable:TUIsPhotosSharePlayAvailable()];
  -[CSDMessagingConversationParticipantDidJoinContext setIsNearbySharePlay:](v27, "setIsNearbySharePlay:", [contextCopy isNearbySharePlay]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setNearbyFeatureVersion:TUNearbyFeatureVersion()];
  -[CSDMessagingConversationParticipantDidJoinContext setIsTranslationAvailable:](v27, "setIsTranslationAvailable:", [contextCopy isTranslationAvailable]);
  screenSharingRequest = [contextCopy screenSharingRequest];
  if (screenSharingRequest)
  {
    v43 = screenSharingRequest;
    featureFlags5 = [(CSDIDSGroupSession *)selfCopy featureFlags];
    usesModernScreenSharingFromMessages = [featureFlags5 usesModernScreenSharingFromMessages];

    if (usesModernScreenSharingFromMessages)
    {
      v46 = [CSDMessagingScreenShareContext alloc];
      screenSharingRequest2 = [contextCopy screenSharingRequest];
      v48 = [(CSDMessagingScreenShareContext *)v46 initOutgoingRequestWithScreenSharingRequest:screenSharingRequest2];
      [(CSDMessagingConversationParticipantDidJoinContext *)v27 setScreenSharingRequest:v48];
    }
  }

  featureFlags6 = [(CSDIDSGroupSession *)selfCopy featureFlags];
  if ([featureFlags6 conversationHandoffEnabled])
  {
    participantAssociation = [contextCopy participantAssociation];

    if (!participantAssociation)
    {
      goto LABEL_26;
    }

    featureFlags6 = [contextCopy participantAssociation];
    v51 = [CSDMessagingConversationParticipantAssociation participantAssociationWithTUConversationParticipantAssociation:featureFlags6];
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setParticipantAssociation:v51];
  }

LABEL_26:
  participantCluster = [contextCopy participantCluster];
  v53 = [CSDMessagingConversationParticipantCluster participantClusterWithTUConversationParticipantCluster:participantCluster];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setParticipantCluster:v53];

  v54 = objc_alloc_init(CSDMessagingConversationMessage);
  v55 = [[CSDMessagingConversationReport alloc] initWithTUConversationReport:reportCopy];
  [(CSDMessagingConversationMessage *)v54 setReportData:v55];

  [(CSDMessagingConversationMessage *)v54 setStagedActivitySession:sessionCopy];
  featureFlags7 = [(CSDIDSGroupSession *)selfCopy featureFlags];
  LODWORD(participantCluster) = [featureFlags7 avLessSharePlayEnabled];

  if (participantCluster)
  {
    avMode = [contextCopy avMode];
  }

  else if ([contextCopy isVideo])
  {
    avMode = 2;
  }

  else
  {
    avMode = 1;
  }

  [(CSDMessagingConversationMessage *)v54 setAvMode:avMode];
  -[CSDMessagingConversationMessage setPresentationMode:](v54, "setPresentationMode:", [contextCopy presentationMode]);
  if (activitySessionCopy)
  {
    [(CSDMessagingConversationMessage *)v54 addActivitySessions:activitySessionCopy];
  }

  invitationPreferences = [contextCopy invitationPreferences];
  v59 = [invitationPreferences count];

  if (v59)
  {
    invitationPreferences2 = [contextCopy invitationPreferences];
    [(CSDMessagingConversationMessage *)v54 setTUInvitationPreferences:invitationPreferences2];
  }

  requiredCapabilities = [(CSDIDSGroupSession *)selfCopy requiredCapabilities];
  v62 = [requiredCapabilities containsObject:IDSRegistrationPropertySupportsNearbyFaceTime];

  if (v62)
  {
    [(CSDMessagingConversationMessage *)v54 setIsNearbySession:1];
  }

  featureFlags8 = [(CSDIDSGroupSession *)selfCopy featureFlags];
  if ([featureFlags8 groupFacetimeAsAServiceEnabled])
  {
    provider6 = [contextCopy provider];
    supportsLinks = [provider6 supportsLinks];

    v66 = supportsLinks ^ 1;
  }

  else
  {
    v66 = 0;
  }

  if (linkCopy && (v66 & 1) == 0)
  {
    v67 = [CSDMessagingConversationLink linkWithTUConversationLink:linkCopy includeGroupUUID:1];
    [(CSDMessagingConversationMessage *)v54 setLink:v67];
  }

  v120 = v54;
  if ([contextCopy isInvitation])
  {
    -[CSDMessagingConversationMessage setShouldSuppressInCallUI:](v54, "setShouldSuppressInCallUI:", [contextCopy shouldSuppressInCallUI]);
    goto LABEL_57;
  }

  if ([contextCopy isUpgrade])
  {
    upgradeSessionUUID = [contextCopy upgradeSessionUUID];

    if (upgradeSessionUUID)
    {
      [(CSDMessagingConversationMessage *)v54 setType:2];
      upgradeSessionUUID2 = [contextCopy upgradeSessionUUID];
      uUIDString2 = [upgradeSessionUUID2 UUIDString];
      [(CSDMessagingConversationMessage *)v54 setProtoUpgradeSessionUUID:uUIDString2];

      goto LABEL_57;
    }
  }

  if (![contextCopy isOneToOneModeEnabled] || !objc_msgSend(contextCopy, "isInitiator"))
  {
    goto LABEL_57;
  }

  featureFlags9 = [(CSDIDSGroupSession *)selfCopy featureFlags];
  if (([featureFlags9 nearbyFaceTimeEnabled] & 1) == 0)
  {

    goto LABEL_56;
  }

  invitationPreferences3 = [contextCopy invitationPreferences];
  v73 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
  v74 = [invitationPreferences3 isEqualToSet:v73];

  if (!v74)
  {
LABEL_56:
    v54 = v120;
    [(CSDMessagingConversationMessage *)v120 setType:1];
    goto LABEL_57;
  }

  v75 = sub_100004778();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Not setting message type to invitation since invitation preferences are set to nearby.", buf, 2u);
  }

  v54 = v120;
LABEL_57:
  v118 = linkCopy;
  -[CSDMessagingConversationParticipantDidJoinContext setIsUpgradeToVideo:](v27, "setIsUpgradeToVideo:", [contextCopy isUpgradeToVideo]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setMessage:v54];
  if ([contextCopy isOneToOneModeEnabled])
  {
    isInitiator = [contextCopy isInitiator];
  }

  else
  {
    isInitiator = 0;
  }

  v77 = sub_100004778();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    v78 = v27;
    if ([contextCopy isOneToOneModeEnabled])
    {
      v79 = @"YES";
    }

    else
    {
      v79 = @"NO";
    }

    isInitiator2 = [contextCopy isInitiator];
    *buf = 136315906;
    if (isInitiator2)
    {
      v81 = @"YES";
    }

    else
    {
      v81 = @"NO";
    }

    v125 = "[CSDIDSGroupSession joinUsingContext:localParticipantAVCData:members:otherInvitedHandles:participantDestinationIDs:link:report:stagedActivitySession:personaHandshakeBlob:activitySession:]";
    if (isInitiator)
    {
      v82 = @"YES";
    }

    else
    {
      v82 = @"NO";
    }

    v126 = 2112;
    v127 = v79;
    v27 = v78;
    v128 = 2112;
    v129 = v81;
    v130 = 2112;
    v131 = v82;
    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%s: isOneToOneModeEnabled: %@, isInitiator: %@, shouldHaveNewServerAllocation: %@", buf, 0x2Au);
  }

  v117 = reportCopy;

  v83 = sub_100004778();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v125 = "[CSDIDSGroupSession joinUsingContext:localParticipantAVCData:members:otherInvitedHandles:participantDestinationIDs:link:report:stagedActivitySession:personaHandshakeBlob:activitySession:]";
    v126 = 2112;
    v127 = v27;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%s: Joining with participantJoinContext: %@", buf, 0x16u);
  }

  data = [(CSDMessagingConversationParticipantDidJoinContext *)v27 data];
  v112 = IDSGroupSessionClientContextDataKey;
  v122 = IDSGroupSessionAllParticipantsKey;
  v123 = IDSGroupSessionNoStreamsKey;
  v108 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
  v111 = IDSGroupSessionSubscribedStreamsKey;
  v110 = [NSNumber numberWithInteger:TUMultiwayMaxConcurrentStreams()];
  v109 = IDSGroupSessionMaxConcurrentStreamsKey;
  v107 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [contextCopy isUpgrade]);
  v106 = IDSGroupSessionJoinTypeKey;
  v116 = selfCopy;
  v84 = [NSNumber numberWithUnsignedInteger:[(CSDIDSGroupSession *)selfCopy callTypeForJoinContext:contextCopy]];
  v105 = IDSGroupSessionCommandContextKey;
  v85 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [contextCopy isOneToOneModeEnabled]);
  v104 = IDSGroupSessionStartedAsUPlusOneKey;
  v86 = [NSNumber numberWithBool:isInitiator];
  allObjects = [dsCopy allObjects];

  v88 = IDSGroupSessionMessagesGroupMembersKey;
  v89 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [contextCopy isInitiator]);
  v90 = IDSGroupSessionIsInitiatorKey;
  v91 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [contextCopy isScreening]);
  v114 = [NSMutableDictionary dictionaryWithObjectsAndKeys:data, v112, v108, v111, v110, v109, v107, v106, v84, v105, v85, v104, v86, @"gs-new-server-allocation-key", allObjects, v88, v89, v90, v91, IDSGroupSessionCallScreeningMode, 0];

  v92 = v27;
  if ([(CSDMessagingConversationParticipantDidJoinContext *)v27 isLightweight])
  {
    v93 = objc_alloc_init(NSData);
    v94 = v114;
    [v114 setObject:v93 forKeyedSubscript:IDSSessionParticipantDataKey];

    v95 = dataCopy;
  }

  else
  {
    v94 = v114;
    v95 = dataCopy;
    [v114 setObject:dataCopy forKeyedSubscript:IDSSessionParticipantDataKey];
  }

  conversationID = [v117 conversationID];

  if (conversationID)
  {
    conversationID2 = [v117 conversationID];
    [v94 setObject:conversationID2 forKeyedSubscript:IDSGroupSessionConversationIDKey];
  }

  timebase = [v117 timebase];

  if (timebase)
  {
    timebase2 = [v117 timebase];
    [v94 setObject:timebase2 forKeyedSubscript:IDSGroupSessionTimeBaseKey];
  }

  v100 = [CSDMessagingConversationParticipant participantWithCSDConversationJoinContext:v92];
  [v100 setAvcData:v95];
  data2 = [v100 data];
  [v94 setObject:data2 forKeyedSubscript:IDSGroupSessionParticipantInfoKey];

  v102 = sub_100004778();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v125 = v100;
    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "joinUsingContext: sending dataBlob %@", buf, 0xCu);
  }

  sessionProvider2 = [(CSDIDSGroupSession *)v116 sessionProvider];
  [sessionProvider2 joinWithOptions:v94];
}

- (void)addMembers:(id)members toExistingMembers:(id)existingMembers activeParticipants:(id)participants activitySessions:(id)sessions link:(id)link otherInvitedHandles:(id)handles report:(id)report invitationPreferences:(id)self0 requiredCapabilities:(id)self1 messagesGroupUUID:(id)self2 messagesGroupName:(id)self3 addingFromLetMeIn:(BOOL)self4 triggeredLocally:(BOOL)self5 highlightIdentifier:(id)self6 stagedActivitySession:(id)self7 avMode:(unint64_t)self8
{
  membersCopy = members;
  existingMembersCopy = existingMembers;
  participantsCopy = participants;
  sessionsCopy = sessions;
  linkCopy = link;
  handlesCopy = handles;
  reportCopy = report;
  preferencesCopy = preferences;
  capabilitiesCopy = capabilities;
  dCopy = d;
  nameCopy = name;
  identifierCopy = identifier;
  sessionCopy = session;
  v23 = +[NSMutableArray array];
  v142 = +[NSMutableArray array];
  v144 = +[NSMutableArray array];
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  obj = membersCopy;
  v24 = [obj countByEnumeratingWithState:&v178 objects:v191 count:16];
  v146 = v23;
  if (v24)
  {
    v25 = v24;
    v143 = 0;
    v138 = 0;
    v26 = *v179;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v179 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v178 + 1) + 8 * i);
        v29 = [IDSDestination destinationWithTUConversationMember:v28];
        [v23 addObject:v29];
        handle = [v28 handle];
        value = [handle value];
        destinationIdIsPseudonym = [value destinationIdIsPseudonym];

        if (destinationIdIsPseudonym)
        {
          [v144 addObject:v29];
        }

        else
        {
          handle2 = [v28 handle];
          value2 = [handle2 value];
          destinationIdIsTemporary = [value2 destinationIdIsTemporary];

          if (destinationIdIsTemporary)
          {
            v36 = [IDSDestination destinationWithTUConversationMember:v28];
            [v142 addObject:v36];
          }

          else
          {
            v37 = +[TUIDSLookupManager sharedManager];
            idsDestination = [v28 idsDestination];
            v39 = [v37 faceTimeMultiwayAvailabilityForDestination:idsDestination];

            if (v39)
            {
              v40 = +[TUIDSLookupManager sharedManager];
              idsDestination2 = [v28 idsDestination];
              v42 = [v40 isWebCapableFaceTimeAvailableForDestination:idsDestination2];

              v143 |= v42;
            }

            else
            {
              v138 = 1;
            }
          }
        }

        v23 = v146;
      }

      v25 = [obj countByEnumeratingWithState:&v178 objects:v191 count:16];
    }

    while (v25);
  }

  else
  {
    v143 = 0;
    v138 = 0;
  }

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v140 = existingMembersCopy;
  v43 = [v140 countByEnumeratingWithState:&v174 objects:v190 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v175;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v175 != v45)
        {
          objc_enumerationMutation(v140);
        }

        v47 = *(*(&v174 + 1) + 8 * j);
        v48 = [IDSDestination destinationWithTUConversationMember:v47];
        [v146 addObject:v48];
        handle3 = [v47 handle];
        value3 = [handle3 value];
        destinationIdIsPseudonym2 = [value3 destinationIdIsPseudonym];

        if (destinationIdIsPseudonym2)
        {
          v52 = v144;
LABEL_26:
          [v52 addObject:v48];
          goto LABEL_28;
        }

        handle4 = [v47 handle];
        value4 = [handle4 value];
        destinationIdIsTemporary2 = [value4 destinationIdIsTemporary];

        if (destinationIdIsTemporary2)
        {
          v52 = v142;
          goto LABEL_26;
        }

        v56 = +[TUIDSLookupManager sharedManager];
        idsDestination3 = [v47 idsDestination];
        [v56 faceTimeMultiwayAvailabilityForDestination:idsDestination3];

        v58 = +[TUIDSLookupManager sharedManager];
        idsDestination4 = [v47 idsDestination];
        v60 = [v58 isWebCapableFaceTimeAvailableForDestination:idsDestination4];

        v143 |= v60;
LABEL_28:
      }

      v44 = [v140 countByEnumeratingWithState:&v174 objects:v190 count:16];
    }

    while (v44);
  }

  locallyCopy2 = locally;
  if (locally)
  {
    v62 = participantsCopy;
    selfCopy2 = self;
    v64 = &_s10Foundation3URLVMa_ptr_0;
    if ([v142 count])
    {
      if (v143)
      {
        [(CSDIDSGroupSession *)self addMembers:obj toExistingMembers:v140 participantDestinationIDs:v146 webDestinationIDs:v142 activeParticipants:participantsCopy activitySessions:sessionsCopy link:linkCopy otherInvitedHandles:handlesCopy report:reportCopy invitationPreferences:preferencesCopy];
      }

      else if (v138)
      {
        v67 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v146 count]);
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v68 = v146;
        v69 = [v68 countByEnumeratingWithState:&v170 objects:v189 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v171;
          do
          {
            for (k = 0; k != v70; k = k + 1)
            {
              if (*v171 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = *(*(&v170 + 1) + 8 * k);
              if (([v142 containsObject:v73] & 1) == 0)
              {
                destinationURIs = [v73 destinationURIs];
                allObjects = [destinationURIs allObjects];
                [v67 addObjectsFromArray:allObjects];

                v64 = &_s10Foundation3URLVMa_ptr_0;
              }
            }

            v70 = [v68 countByEnumeratingWithState:&v170 objects:v189 count:16];
          }

          while (v70);
        }

        v76 = sub_100004778();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v186 = v67;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Querying for capabilities of call members using native destinations: %@", buf, 0xCu);
        }

        sharedManager = [v64[206] sharedManager];
        v159[0] = _NSConcreteStackBlock;
        v159[1] = 3221225472;
        v159[2] = sub_1001BBD48;
        v159[3] = &unk_10061DA08;
        v159[4] = self;
        v160 = obj;
        v161 = v140;
        v162 = v68;
        v163 = v142;
        v164 = participantsCopy;
        v165 = sessionsCopy;
        v166 = linkCopy;
        v167 = handlesCopy;
        v168 = reportCopy;
        selfCopy2 = self;
        v169 = preferencesCopy;
        [sharedManager queryHasWebOnlyEndpointsForDestinations:v67 completionBlock:v159];
      }
    }

    v78 = objc_alloc_init(CSDMessagingConversationParticipantDidJoinContext);
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setTuConversationMembers:v140];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setIsScreenSharingAvailable:1];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setIsGondolaCallingAvailable:1];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setVisionFeatureVersion:TUVisionFeatureVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setIsPhotosSharePlayAvailable:TUIsPhotosSharePlayAvailable()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setIsTranslationAvailable:1];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setNearbyFeatureVersion:TUNearbyFeatureVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setMessagesGroupName:nameCopy];
    uUIDString = [dCopy UUIDString];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setMessagesGroupUUIDString:uUIDString];

    v80 = objc_alloc_init(CSDMessagingConversationMessage);
    v81 = [[CSDMessagingConversationReport alloc] initWithTUConversationReport:reportCopy];
    [(CSDMessagingConversationMessage *)v80 setReportData:v81];

    v82 = sub_100004778();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      reportData = [(CSDMessagingConversationMessage *)v80 reportData];
      *buf = 136315394;
      v186 = "[CSDIDSGroupSession addMembers:toExistingMembers:activeParticipants:activitySessions:link:otherInvitedHandles:report:invitationPreferences:requiredCapabilities:messagesGroupUUID:messagesGroupName:addingFromLetMeIn:triggeredLocally:highlightIdentifier:stagedActivitySession:avMode:]";
      v187 = 2112;
      v188 = reportData;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%s: Conversation report = %@", buf, 0x16u);
    }

    [(CSDMessagingConversationMessage *)v80 setType:3];
    featureFlags = [(CSDIDSGroupSession *)selfCopy2 featureFlags];
    if ([featureFlags nearbyFaceTimeEnabled])
    {
      requiredCapabilities = [(CSDIDSGroupSession *)selfCopy2 requiredCapabilities];
      v86 = IDSRegistrationPropertySupportsNearbyFaceTime;
      v87 = [requiredCapabilities containsObject:IDSRegistrationPropertySupportsNearbyFaceTime];

      if (v87)
      {
        if (preferencesCopy && (+[TUConversationInvitationPreference nearbyInvitationPreferences](TUConversationInvitationPreference, "nearbyInvitationPreferences"), v88 = objc_claimAutoreleasedReturnValue(), v89 = [preferencesCopy isEqualToSet:v88], v88, (v89 & 1) == 0))
        {
          v92 = [NSSet setWithObject:v86];
          [(CSDIDSGroupSession *)self removeRequiredCapabilities:v92 requiredLackOfCapabilities:0];

          v90 = v80;
          v91 = 0;
        }

        else
        {
          v90 = v80;
          v91 = 1;
        }

        [(CSDMessagingConversationMessage *)v90 setIsNearbySession:v91];
      }
    }

    else
    {
    }

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v93 = participantsCopy;
    v94 = [v93 countByEnumeratingWithState:&v155 objects:v184 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v156;
      do
      {
        for (m = 0; m != v95; m = m + 1)
        {
          if (*v156 != v96)
          {
            objc_enumerationMutation(v93);
          }

          v98 = *(*(&v155 + 1) + 8 * m);
          v99 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v98];
          if ([v98 isLightweight])
          {
            [(CSDMessagingConversationMessage *)v80 addActiveLightweightParticipants:v99];
          }

          else
          {
            [(CSDMessagingConversationMessage *)v80 addActiveParticipants:v99];
          }
        }

        v95 = [v93 countByEnumeratingWithState:&v155 objects:v184 count:16];
      }

      while (v95);
    }

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v100 = obj;
    v101 = [v100 countByEnumeratingWithState:&v151 objects:v183 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = *v152;
      do
      {
        for (n = 0; n != v102; n = n + 1)
        {
          if (*v152 != v103)
          {
            objc_enumerationMutation(v100);
          }

          v105 = *(*(&v151 + 1) + 8 * n);
          isLightweightMember = [v105 isLightweightMember];
          v107 = [CSDMessagingConversationMember memberWithTUConversationMember:v105];
          if (isLightweightMember)
          {
            [(CSDMessagingConversationMessage *)v80 addLightweightMembers:v107];
          }

          else
          {
            [(CSDMessagingConversationMessage *)v80 addAddedMembers:v107];
          }
        }

        v102 = [v100 countByEnumeratingWithState:&v151 objects:v183 count:16];
      }

      while (v102);
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v108 = sessionsCopy;
    v109 = [v108 countByEnumeratingWithState:&v147 objects:v182 count:16];
    v66 = linkCopy;
    if (v109)
    {
      v110 = v109;
      v111 = *v148;
      do
      {
        for (ii = 0; ii != v110; ii = ii + 1)
        {
          if (*v148 != v111)
          {
            objc_enumerationMutation(v108);
          }

          [(CSDMessagingConversationMessage *)v80 addActivitySessions:*(*(&v147 + 1) + 8 * ii)];
        }

        v110 = [v108 countByEnumeratingWithState:&v147 objects:v182 count:16];
      }

      while (v110);
    }

    if (linkCopy)
    {
      v113 = [CSDMessagingConversationLink linkWithTUConversationLink:linkCopy includeGroupUUID:1];
      [(CSDMessagingConversationMessage *)v80 setLink:v113];

      groupUUID = [linkCopy groupUUID];
      [(CSDMessagingConversationMessage *)v80 setConversationGroupUUID:groupUUID];
    }

    if (preferencesCopy)
    {
      [(CSDMessagingConversationMessage *)v80 setTUInvitationPreferences:?];
    }

    if (in)
    {
      [(CSDMessagingConversationMessage *)v80 setIsLetMeInApproved:1];
    }

    if (identifierCopy)
    {
      [(CSDMessagingConversationMessage *)v80 setHighlightIdentifier:?];
    }

    [(CSDMessagingConversationMessage *)v80 setStagedActivitySession:sessionCopy];
    featureFlags2 = [(CSDIDSGroupSession *)self featureFlags];
    avLessSharePlayEnabled = [featureFlags2 avLessSharePlayEnabled];

    if (avLessSharePlayEnabled)
    {
      [(CSDMessagingConversationMessage *)v80 setAvMode:mode];
    }

    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setMessage:v80];
    data = [(CSDMessagingConversationParticipantDidJoinContext *)v78 data];

    locallyCopy2 = locally;
  }

  else
  {
    data = 0;
    v62 = participantsCopy;
    v66 = linkCopy;
  }

  if ([v144 count])
  {
    if ([capabilitiesCopy count])
    {
      [NSMutableSet setWithArray:capabilitiesCopy];
    }

    else
    {
      +[NSMutableSet set];
    }
    v117 = ;
    [v117 addObject:IDSRegistrationPropertySupportsModernGFT];
    [(CSDIDSGroupSession *)self addRequiredCapabilities:v117 requiredLackOfCapabilities:0];
  }

  if (locallyCopy2 && ([v142 count] || objc_msgSend(v144, "count")))
  {
    if ([capabilitiesCopy count])
    {
      [NSMutableSet setWithArray:capabilitiesCopy];
    }

    else
    {
      +[NSMutableSet set];
    }
    v121 = ;
    v123 = preferencesCopy;
    [v121 addObject:IDSRegistrationPropertySupportsGondola];
    [v121 addObject:IDSRegistrationPropertySupportsModernGFT];
    sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
    allObjects2 = [v121 allObjects];
    v122 = v146;
    [sessionProvider updateParticipantDestinationIDs:v146 withContextData:data requiredCapabilities:allObjects2 requiredLackOfCapabilities:&__NSArray0__struct triggeredLocally:1];

    v118 = capabilitiesCopy;
  }

  else
  {
    v118 = capabilitiesCopy;
    v119 = [capabilitiesCopy count];
    sessionProvider2 = [(CSDIDSGroupSession *)self sessionProvider];
    v121 = sessionProvider2;
    v122 = v146;
    if (v119)
    {
      [sessionProvider2 updateParticipantDestinationIDs:v146 withContextData:data requiredCapabilities:capabilitiesCopy requiredLackOfCapabilities:&__NSArray0__struct triggeredLocally:locallyCopy2];
    }

    else
    {
      [sessionProvider2 updateParticipantDestinationIDs:v146 withContextData:data triggeredLocally:locallyCopy2];
    }

    v123 = preferencesCopy;
  }
}

- (void)addMembers:(id)members toExistingMembers:(id)existingMembers participantDestinationIDs:(id)ds webDestinationIDs:(id)iDs activeParticipants:(id)participants activitySessions:(id)sessions link:(id)link otherInvitedHandles:(id)self0 report:(id)self1 invitationPreferences:(id)self2
{
  membersCopy = members;
  existingMembersCopy = existingMembers;
  dsCopy = ds;
  participantsCopy = participants;
  sessionsCopy = sessions;
  linkCopy = link;
  handlesCopy = handles;
  reportCopy = report;
  preferencesCopy = preferences;
  v85 = [membersCopy mutableCopy];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = membersCopy;
  v19 = [obj countByEnumeratingWithState:&v103 objects:v113 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v104;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v104 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v103 + 1) + 8 * i);
        handle = [v23 handle];
        value = [handle value];
        destinationIdIsTemporary = [value destinationIdIsTemporary];

        if (destinationIdIsTemporary)
        {
          [v85 removeObject:v23];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v103 objects:v113 count:16];
    }

    while (v20);
  }

  if ([v85 count])
  {
    v77 = linkCopy;
    v27 = [existingMembersCopy mutableCopy];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v28 = existingMembersCopy;
    v29 = [v28 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v100;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v100 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v99 + 1) + 8 * j);
          handle2 = [v33 handle];
          value2 = [handle2 value];
          destinationIdIsTemporary2 = [value2 destinationIdIsTemporary];

          if (destinationIdIsTemporary2)
          {
            [v27 removeObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v30);
    }

    v37 = [handlesCopy mutableCopy];
    v38 = [v27 count];
    if (&v38[[v85 count]] <= 2)
    {
      do
      {
        if (![v37 count])
        {
          break;
        }

        anyObject = [v37 anyObject];
        v40 = [[TUConversationMember alloc] initWithHandle:anyObject];
        [v85 addObject:v40];
        [v37 removeObject:anyObject];

        v41 = [v27 count];
      }

      while (&v41[[v85 count]] < 3);
    }

    v75 = v37;
    v42 = objc_alloc_init(CSDMessagingConversationParticipantDidJoinContext);
    v76 = v27;
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setTuConversationMembers:v27];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setIsScreenSharingAvailable:1];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setIsGondolaCallingAvailable:1];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setVisionFeatureVersion:TUVisionFeatureVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setIsPhotosSharePlayAvailable:TUIsPhotosSharePlayAvailable()];
    v74 = v42;
    [(CSDMessagingConversationParticipantDidJoinContext *)v42 setNearbyFeatureVersion:TUNearbyFeatureVersion()];
    v43 = objc_alloc_init(CSDMessagingConversationMessage);
    v44 = [[CSDMessagingConversationReport alloc] initWithTUConversationReport:reportCopy];
    [(CSDMessagingConversationMessage *)v43 setReportData:v44];

    [(CSDMessagingConversationMessage *)v43 setType:3];
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v45 = participantsCopy;
    v46 = [v45 countByEnumeratingWithState:&v95 objects:v111 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v96;
      do
      {
        for (k = 0; k != v47; k = k + 1)
        {
          if (*v96 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v95 + 1) + 8 * k);
          handle3 = [v50 handle];
          value3 = [handle3 value];
          destinationIdIsTemporary3 = [value3 destinationIdIsTemporary];

          if ((destinationIdIsTemporary3 & 1) == 0)
          {
            v54 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v50];
            [(CSDMessagingConversationMessage *)v43 addActiveParticipants:v54];
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v95 objects:v111 count:16];
      }

      while (v47);
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v55 = v85;
    v56 = [v55 countByEnumeratingWithState:&v91 objects:v110 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v92;
      do
      {
        for (m = 0; m != v57; m = m + 1)
        {
          if (*v92 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v91 + 1) + 8 * m);
          isLightweightMember = [v60 isLightweightMember];
          v62 = [CSDMessagingConversationMember memberWithTUConversationMember:v60];
          if (isLightweightMember)
          {
            [(CSDMessagingConversationMessage *)v43 addLightweightMembers:v62];
          }

          else
          {
            [(CSDMessagingConversationMessage *)v43 addAddedMembers:v62];
          }
        }

        v57 = [v55 countByEnumeratingWithState:&v91 objects:v110 count:16];
      }

      while (v57);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v63 = sessionsCopy;
    v64 = [v63 countByEnumeratingWithState:&v87 objects:v109 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v88;
      do
      {
        for (n = 0; n != v65; n = n + 1)
        {
          if (*v88 != v66)
          {
            objc_enumerationMutation(v63);
          }

          [(CSDMessagingConversationMessage *)v43 addActivitySessions:*(*(&v87 + 1) + 8 * n)];
        }

        v65 = [v63 countByEnumeratingWithState:&v87 objects:v109 count:16];
      }

      while (v65);
    }

    linkCopy = v77;
    if (v77)
    {
      v68 = [CSDMessagingConversationLink linkWithTUConversationLink:v77 includeGroupUUID:1];
      [(CSDMessagingConversationMessage *)v43 setLink:v68];

      groupUUID = [v77 groupUUID];
      [(CSDMessagingConversationMessage *)v43 setConversationGroupUUID:groupUUID];
    }

    if (preferencesCopy)
    {
      [(CSDMessagingConversationMessage *)v43 setTUInvitationPreferences:?];
    }

    [(CSDMessagingConversationParticipantDidJoinContext *)v74 setMessage:v43];
    data = [(CSDMessagingConversationParticipantDidJoinContext *)v74 data];
    sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
    v108 = IDSRegistrationPropertySupportsGondola;
    v72 = [NSArray arrayWithObjects:&v108 count:1];
    v107 = IDSRegistrationPropertySupportsModernGFT;
    v73 = [NSArray arrayWithObjects:&v107 count:1];
    [sessionProvider updateParticipantDestinationIDs:dsCopy withContextData:data requiredCapabilities:v72 requiredLackOfCapabilities:v73 triggeredLocally:1];
  }
}

- (void)sendLocalParticipant:(id)participant
{
  participantCopy = participant;
  v11 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:participantCopy];
  data = [v11 data];
  v6 = [data copy];

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider updateParticipantInfo:v6];

  [v11 setAvcData:0];
  sessionProvider2 = [(CSDIDSGroupSession *)self sessionProvider];
  avcData = [participantCopy avcData];

  data2 = [v11 data];
  [sessionProvider2 sendParticipantData:avcData withContext:data2];
}

- (void)updateLocalParticipantInfo:(id)info
{
  v6 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:info];
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  data = [v6 data];
  [sessionProvider updateParticipantInfo:data];
}

- (void)requestActiveParticipants
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "requestActiveParticipants self: %@", &v5, 0xCu);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider requestActiveParticipants];
}

- (void)leaveGroupSessionWithContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v5 = objc_alloc_init(CSDMessagingConversationParticipantDidLeaveContext);
    -[CSDMessagingConversationParticipantDidLeaveContext setLeaveReason:](v5, "setLeaveReason:", [contextCopy leaveReason]);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Leaving with participantLeaveContext: %@", buf, 0xCu);
  }

  data = [(CSDMessagingConversationParticipantDidLeaveContext *)v5 data];

  if (data)
  {
    data2 = [(CSDMessagingConversationParticipantDidLeaveContext *)v5 data];
    v9 = [NSDictionary dictionaryWithObjectsAndKeys:data2, IDSGroupSessionClientContextDataKey, 0];
  }

  else
  {
    v9 = +[NSDictionary dictionary];
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider leaveWithOptions:v9];
}

- (void)registerPluginWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = optionsCopy;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "registerPluginWithOptions:%@ self: %@", &v7, 0x16u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider registerPluginWithOptions:optionsCopy];
}

- (void)restart
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "restart self: %@", &v5, 0xCu);
  }

  [(CSDIDSGroupSession *)self setJoined:0];
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider restart];
}

- (void)reconnect
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "reconnect self: %@", &v5, 0xCu);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider reconnect];
}

- (void)kickMember:(id)member
{
  memberCopy = member;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = memberCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "member: %@", &v9, 0xCu);
  }

  idsDestinations = [memberCopy idsDestinations];
  v7 = [NSArray arrayWithArray:idsDestinations];

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider kickParticipants:v7];
}

- (void)allowMember:(id)member
{
  memberCopy = member;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = memberCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "member: %@", &v9, 0xCu);
  }

  idsDestinations = [memberCopy idsDestinations];
  v7 = [NSArray arrayWithArray:idsDestinations];

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider allowParticipants:v7];
}

- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler
{
  topicCopy = topic;
  handlerCopy = handler;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = topicCopy;
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestDataCryptorForTopic: %@ self: %@", &v10, 0x16u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider requestDataCryptorForTopic:topicCopy completionHandler:handlerCopy];
}

- (void)requestEncryptionKeyForParticipants:(id)participants topic:(id)topic
{
  participantsCopy = participants;
  topicCopy = topic;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = participantsCopy;
    v12 = 2112;
    v13 = topicCopy;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestEncryptionKeyForParticipants: %@ topic: %@ self: %@", &v10, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider requestEncryptionKeyForParticipants:participantsCopy topic:topicCopy];
}

- (void)addAliasesToConversationContainer:(id)container withSalt:(id)salt
{
  containerCopy = container;
  saltCopy = salt;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = containerCopy;
    v12 = 2112;
    v13 = saltCopy;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addAliasesToConversationContainer: %@ salt: %@ self: %@", &v10, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider addAliasesToConversationContainer:containerCopy withSalt:saltCopy];
}

- (unint64_t)aliasForParticipantID:(unint64_t)d salt:(id)salt
{
  saltCopy = salt;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218498;
    dCopy = d;
    v13 = 2112;
    v14 = saltCopy;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "aliasForParticipantID: %llu salt: %@ self: %@", &v11, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  v9 = [sessionProvider aliasForParticipantID:d salt:saltCopy];

  return v9;
}

- (void)participantIDForAlias:(unint64_t)alias salt:(id)salt completion:(id)completion
{
  saltCopy = salt;
  completionCopy = completion;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218498;
    aliasCopy = alias;
    v14 = 2112;
    v15 = saltCopy;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "participantIDForAlias: %llu salt: %@ self: %@", &v12, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider participantIDForAlias:alias salt:saltCopy completion:completionCopy];
}

- (NSSet)requiredCapabilities
{
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  requiredCapabilities = [sessionProvider requiredCapabilities];

  return requiredCapabilities;
}

- (NSSet)requiredLackOfCapabilities
{
  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  requiredLackOfCapabilities = [sessionProvider requiredLackOfCapabilities];

  return requiredLackOfCapabilities;
}

- (void)addRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = capabilitiesCopy;
    v13 = 2112;
    v14 = ofCapabilitiesCopy;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addRequiredCapabilities: %@ requiredLackOfCapabilities: %@ self: %@", &v11, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider addRequiredCapabilities:capabilitiesCopy requiredLackOfCapabilities:ofCapabilitiesCopy];

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didAddRequiredCapabilities:capabilitiesCopy];
}

- (void)removeRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = capabilitiesCopy;
    v13 = 2112;
    v14 = ofCapabilitiesCopy;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "removeRequiredCapabilities: %@ requiredLackOfCapabilities: %@ self: %@", &v11, 0x20u);
  }

  sessionProvider = [(CSDIDSGroupSession *)self sessionProvider];
  [sessionProvider removeRequiredCapabilities:capabilitiesCopy requiredLackOfCapabilities:ofCapabilitiesCopy];

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didRemoveRequiredCapabilities:capabilitiesCopy];
}

- (id)_updateParticipantDestinationIDForParticipant:(id)participant members:(id)members
{
  participantCopy = participant;
  membersCopy = members;
  participantDestinationIDs = [(CSDIDSGroupSession *)self participantDestinationIDs];
  v9 = [participantDestinationIDs mutableCopy];

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "participantDestinationIDs: %@", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = membersCopy;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v30;
    *&v13 = 138412290;
    v28 = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        handle = [v17 handle];
        handle2 = [participantCopy handle];
        v20 = [handle isEqualToHandle:handle2];

        if (v20)
        {
          v21 = [IDSDestination destinationWithTUConversationMember:v17];
          if ([v9 containsObject:v21])
          {
            [v9 removeObject:v21];
            tuConversationParticipant = [participantCopy tuConversationParticipant];
            v23 = [IDSDestination destinationWithTUConversationParticipant:tuConversationParticipant];
            [v9 addObject:v23];

            v24 = sub_100004778();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              tuConversationParticipant2 = [participantCopy tuConversationParticipant];
              *buf = 138412546;
              v34 = v21;
              v35 = 2112;
              v36 = tuConversationParticipant2;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "_updateParticipantDestinationIDForParticipant: remove: %@, add: %@", buf, 0x16u);
            }
          }

          else
          {
            v24 = sub_100004778();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v28;
              v34 = v21;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "_updateParticipantDestinationIDForParticipant: couldn't find idsDestination: %@", buf, 0xCu);
            }
          }
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v14);
  }

  v26 = [v9 copy];

  return v26;
}

- (id)idsDestinationForActiveParticipant:(id)participant
{
  participantCopy = participant;
  participantPushToken = [participantCopy participantPushToken];
  if (participantPushToken && (v5 = participantPushToken, [participantCopy participantURI], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    participantPushToken2 = [participantCopy participantPushToken];
    participantURI = [participantCopy participantURI];
    participantURI2 = IDSCopyIDForTokenWithID();
  }

  else
  {
    participantURI2 = [participantCopy participantURI];
  }

  return participantURI2;
}

- (unint64_t)callTypeForJoinContext:(id)context
{
  contextCopy = context;
  featureFlags = [(CSDIDSGroupSession *)self featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    provider = [contextCopy provider];
    supportsVideo = [provider supportsVideo];
  }

  else
  {
    supportsVideo = 1;
  }

  if (([contextCopy isVideo] & supportsVideo) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (void)sessionProvider:(id)provider didJoinGroupWithParticipantIdentifiers:(id)identifiers localParticipantIdentifier:(unint64_t)identifier error:(id)error
{
  providerCopy = provider;
  identifiersCopy = identifiers;
  errorCopy = error;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v27 = providerCopy;
    v28 = 2112;
    v29 = identifiersCopy;
    v30 = 2048;
    identifierCopy = identifier;
    v32 = 2112;
    v33 = errorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ participantIDs: %@ localParticipantID: %llu error: %@", buf, 0x2Au);
  }

  [(CSDIDSGroupSession *)self setLocalParticipantIdentifier:identifier];
  [(CSDIDSGroupSession *)self setJoined:errorCopy == 0];
  v14 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allValues = [identifiersCopy allValues];
  v16 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(allValues);
        }

        [v14 addObjectsFromArray:*(*(&v21 + 1) + 8 * v19)];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didJoinGroup:-[CSDIDSGroupSession isJoined](self participantIdentifiers:"isJoined") error:{v14, errorCopy}];
}

- (void)sessionProvider:(id)provider didLeaveGroupWithError:(id)error
{
  providerCopy = provider;
  errorCopy = error;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = providerCopy;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ error: %@", &v10, 0x16u);
  }

  [(CSDIDSGroupSession *)self setJoined:0];
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didLeaveGroupWithError:errorCopy];
}

- (void)sessionProviderDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = terminateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sessionProviderDidTerminate: %@", &v7, 0xCu);
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate sessionDidTerminate:self];
}

- (void)sessionProvider:(id)provider didReceiveActiveParticipants:(id)participants success:(BOOL)success
{
  successCopy = success;
  providerCopy = provider;
  participantsCopy = participants;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = providerCopy;
    v42 = 2112;
    v43 = participantsCopy;
    v44 = 1024;
    v45 = successCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ activeParticipants: %@ success: %d", buf, 0x1Cu);
  }

  if (successCopy)
  {
    v33 = providerCopy;
    [(CSDIDSGroupSession *)self setRetryCount:0];
    v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [participantsCopy count]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = participantsCopy;
    obj = participantsCopy;
    v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [(CSDIDSGroupSession *)self idsDestinationForActiveParticipant:v16];
          selfCopy = self;
          v19 = v17;
          if (v17)
          {
            v20 = v17;
          }

          else
          {
            v20 = &stru_100631E68;
          }

          v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v16 participantIdentifier]);
          [v11 setObject:v20 forKeyedSubscript:v21];

          self = selfCopy;
        }

        v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);
    }

    delegate = [(CSDIDSGroupSession *)self delegate];
    [delegate session:self receivedActiveParticipantDestinationsByIdentifier:v11];

    participantsCopy = v32;
    providerCopy = v33;
  }

  else
  {
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Received an error for active remote participants", buf, 2u);
    }

    retryCount = [(CSDIDSGroupSession *)self retryCount];
    serverBag = [(CSDIDSGroupSession *)self serverBag];
    maxActiveParticipantFetchRetries = [serverBag maxActiveParticipantFetchRetries];

    if (retryCount >= maxActiveParticipantFetchRetries)
    {
      v29 = sub_100004778();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        serverBag2 = [(CSDIDSGroupSession *)self serverBag];
        maxActiveParticipantFetchRetries2 = [serverBag2 maxActiveParticipantFetchRetries];
        *buf = 134217984;
        v41 = maxActiveParticipantFetchRetries2;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Not retrying requestActiveParticipants, max retry count (%lu) reached", buf, 0xCu);
      }
    }

    else
    {
      [(CSDIDSGroupSession *)self setRetryCount:[(CSDIDSGroupSession *)self retryCount]+ 1];
      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        retryCount2 = [(CSDIDSGroupSession *)self retryCount];
        *buf = 134217984;
        v41 = retryCount2;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Retrying requestActiveParticipants, retry_count=%lu", buf, 0xCu);
      }

      [(CSDIDSGroupSession *)self requestActiveParticipants];
    }
  }
}

- (void)sessionProvider:(id)provider didReceiveActiveLightweightParticipants:(id)participants success:(BOOL)success
{
  successCopy = success;
  providerCopy = provider;
  participantsCopy = participants;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = providerCopy;
    v42 = 2112;
    v43 = participantsCopy;
    v44 = 1024;
    v45 = successCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveActiveLightweightParticipants: %@ success: %d", buf, 0x1Cu);
  }

  if (successCopy)
  {
    v33 = providerCopy;
    [(CSDIDSGroupSession *)self setLightweightRetryCount:0];
    v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [participantsCopy count]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = participantsCopy;
    obj = participantsCopy;
    v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [(CSDIDSGroupSession *)self idsDestinationForActiveParticipant:v16];
          selfCopy = self;
          v19 = v17;
          if (v17)
          {
            v20 = v17;
          }

          else
          {
            v20 = &stru_100631E68;
          }

          v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v16 participantIdentifier]);
          [v11 setObject:v20 forKeyedSubscript:v21];

          self = selfCopy;
        }

        v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);
    }

    delegate = [(CSDIDSGroupSession *)self delegate];
    [delegate session:self receivedActiveLightweightParticipantDestinationsByIdentifier:v11];

    participantsCopy = v32;
    providerCopy = v33;
  }

  else
  {
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Received an error for active remote participants", buf, 2u);
    }

    lightweightRetryCount = [(CSDIDSGroupSession *)self lightweightRetryCount];
    serverBag = [(CSDIDSGroupSession *)self serverBag];
    maxActiveParticipantFetchRetries = [serverBag maxActiveParticipantFetchRetries];

    if (lightweightRetryCount >= maxActiveParticipantFetchRetries)
    {
      v29 = sub_100004778();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        serverBag2 = [(CSDIDSGroupSession *)self serverBag];
        maxActiveParticipantFetchRetries2 = [serverBag2 maxActiveParticipantFetchRetries];
        *buf = 134217984;
        v41 = maxActiveParticipantFetchRetries2;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Not retrying requestActiveLightweightParticipants, max retry count (%lu) reached", buf, 0xCu);
      }
    }

    else
    {
      [(CSDIDSGroupSession *)self setLightweightRetryCount:[(CSDIDSGroupSession *)self lightweightRetryCount]+ 1];
      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        lightweightRetryCount2 = [(CSDIDSGroupSession *)self lightweightRetryCount];
        *buf = 134217984;
        v41 = lightweightRetryCount2;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Retrying requestActiveLightweightParticipants, retry_count=%lu", buf, 0xCu);
      }

      [(CSDIDSGroupSession *)self requestActiveParticipants];
    }
  }
}

- (void)sessionProvider:(id)provider didReceiveJoinedParticipantID:(unint64_t)d withContext:(id)context
{
  providerCopy = provider;
  contextCopy = context;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = providerCopy;
    v14 = 2048;
    dCopy = d;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveJoinedParticipantID: %llu clientContext: %@", &v12, 0x20u);
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveJoinedParticipantID:d withContext:contextCopy];
}

- (void)sessionProvider:(id)provider didReceiveParticipantUpdateParticipantID:(unint64_t)d withContext:(id)context
{
  providerCopy = provider;
  contextCopy = context;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = providerCopy;
    v14 = 2048;
    dCopy = d;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveParticipantUpdateParticipantID: %llu clientContext: %@", &v12, 0x20u);
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveParticipantUpdateParticipantID:d withContext:contextCopy];
}

- (void)sessionProvider:(id)provider didReceiveLeftParticipantID:(unint64_t)d withContext:(id)context
{
  providerCopy = provider;
  contextCopy = context;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = providerCopy;
    v14 = 2048;
    dCopy = d;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveLeftParticipantID: %llu clientContext: %@", &v12, 0x20u);
  }

  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveLeftParticipantID:d withContext:contextCopy];
}

- (void)sessionProvider:(id)provider didReceiveReport:(id)report
{
  reportCopy = report;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveReport:reportCopy];
}

- (void)sessionProvider:(id)provider didRegisterPluginAllocationInfo:(id)info
{
  infoCopy = info;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didRegisterPluginAllocationInfo:infoCopy];
}

- (void)sessionProvider:(id)provider didUnregisterPluginAllocationInfo:(id)info
{
  infoCopy = info;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didUnregisterPluginAllocationInfo:infoCopy];
}

- (void)sessionProviderDidReceiveKeyUpdate:(id)update
{
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate sessionDidReceiveKeyUpdate:self];
}

- (void)sessionProvider:(id)provider didReceiveDataBlob:(id)blob forParticipant:(id)participant
{
  participantCopy = participant;
  blobCopy = blob;
  delegate = [(CSDIDSGroupSession *)self delegate];
  [delegate session:self didReceiveDataBlob:blobCopy forParticipant:participantCopy];
}

- (CSDIDSGroupSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end