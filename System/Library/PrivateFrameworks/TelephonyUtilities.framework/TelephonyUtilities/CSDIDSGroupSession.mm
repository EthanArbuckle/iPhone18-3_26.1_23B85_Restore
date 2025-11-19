@interface CSDIDSGroupSession
- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)a3;
- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)a3 featureFlags:(id)a4;
- (CSDIDSGroupSessionDelegate)delegate;
- (NSArray)participantDestinationIDs;
- (NSSet)requiredCapabilities;
- (NSSet)requiredLackOfCapabilities;
- (NSString)idsDestination;
- (id)_updateParticipantDestinationIDForParticipant:(id)a3 members:(id)a4;
- (id)idsDestinationForActiveParticipant:(id)a3;
- (unint64_t)aliasForParticipantID:(unint64_t)a3 salt:(id)a4;
- (unint64_t)callTypeForJoinContext:(id)a3;
- (void)addAliasesToConversationContainer:(id)a3 withSalt:(id)a4;
- (void)addMembers:(id)a3 toExistingMembers:(id)a4 activeParticipants:(id)a5 activitySessions:(id)a6 link:(id)a7 otherInvitedHandles:(id)a8 report:(id)a9 invitationPreferences:(id)a10 requiredCapabilities:(id)a11 messagesGroupUUID:(id)a12 messagesGroupName:(id)a13 addingFromLetMeIn:(BOOL)a14 triggeredLocally:(BOOL)a15 highlightIdentifier:(id)a16 stagedActivitySession:(id)a17 avMode:(unint64_t)a18;
- (void)addMembers:(id)a3 toExistingMembers:(id)a4 participantDestinationIDs:(id)a5 webDestinationIDs:(id)a6 activeParticipants:(id)a7 activitySessions:(id)a8 link:(id)a9 otherInvitedHandles:(id)a10 report:(id)a11 invitationPreferences:(id)a12;
- (void)addRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4;
- (void)allowMember:(id)a3;
- (void)joinUsingContext:(id)a3 localParticipantAVCData:(id)a4 members:(id)a5 otherInvitedHandles:(id)a6 participantDestinationIDs:(id)a7 link:(id)a8 report:(id)a9 stagedActivitySession:(id)a10 personaHandshakeBlob:(id)a11 activitySession:(id)a12;
- (void)kickMember:(id)a3;
- (void)leaveGroupSessionWithContext:(id)a3;
- (void)participantIDForAlias:(unint64_t)a3 salt:(id)a4 completion:(id)a5;
- (void)reconnect;
- (void)registerPluginWithOptions:(id)a3;
- (void)removeRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4;
- (void)requestActiveParticipants;
- (void)requestDataCryptorForTopic:(id)a3 completionHandler:(id)a4;
- (void)requestEncryptionKeyForParticipants:(id)a3 topic:(id)a4;
- (void)restart;
- (void)sendLocalParticipant:(id)a3;
- (void)sessionProvider:(id)a3 didJoinGroupWithParticipantIdentifiers:(id)a4 localParticipantIdentifier:(unint64_t)a5 error:(id)a6;
- (void)sessionProvider:(id)a3 didLeaveGroupWithError:(id)a4;
- (void)sessionProvider:(id)a3 didReceiveActiveLightweightParticipants:(id)a4 success:(BOOL)a5;
- (void)sessionProvider:(id)a3 didReceiveActiveParticipants:(id)a4 success:(BOOL)a5;
- (void)sessionProvider:(id)a3 didReceiveDataBlob:(id)a4 forParticipant:(id)a5;
- (void)sessionProvider:(id)a3 didReceiveJoinedParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)sessionProvider:(id)a3 didReceiveLeftParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)sessionProvider:(id)a3 didReceiveParticipantUpdateParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)sessionProvider:(id)a3 didReceiveReport:(id)a4;
- (void)sessionProvider:(id)a3 didRegisterPluginAllocationInfo:(id)a4;
- (void)sessionProvider:(id)a3 didUnregisterPluginAllocationInfo:(id)a4;
- (void)sessionProviderDidReceiveKeyUpdate:(id)a3;
- (void)sessionProviderDidTerminate:(id)a3;
- (void)updateLocalParticipantInfo:(id)a3;
@end

@implementation CSDIDSGroupSession

- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)a3 featureFlags:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CSDIDSGroupSession;
  v9 = [(CSDIDSSession *)&v18 initWithSessionProvider:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureFlags, a4);
    v10->_localParticipantType = [v7 isAVLess] ^ 1;
    objc_storeStrong(&v10->_sessionProvider, a3);
    [(CSDIDSGroupSessionProvider *)v10->_sessionProvider setDelegate:v10];
    v11 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v10->_serverBag;
    v10->_serverBag = v11;

    v13 = +[NSMutableDictionary dictionary];
    v14 = [(CSDIDSGroupSession *)v10 sessionProvider];
    v15 = [v14 clientUUIDString];
    [(NSMutableDictionary *)v13 setObject:v15 forKeyedSubscript:IDSSessionClientUUIDKey];

    preferences = v10->_preferences;
    v10->_preferences = v13;

    v10->_isUnderlyingLinksConnected = 1;
  }

  return v10;
}

- (CSDIDSGroupSession)initWithGroupSessionProvider:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(CSDIDSGroupSession *)self initWithGroupSessionProvider:v4 featureFlags:v5];

  return v6;
}

- (NSString)idsDestination
{
  v2 = [(CSDIDSGroupSession *)self sessionProvider];
  v3 = [v2 destination];

  return v3;
}

- (NSArray)participantDestinationIDs
{
  v2 = [(CSDIDSGroupSession *)self sessionProvider];
  v3 = [v2 participantDestinationIDs];

  return v3;
}

- (void)joinUsingContext:(id)a3 localParticipantAVCData:(id)a4 members:(id)a5 otherInvitedHandles:(id)a6 participantDestinationIDs:(id)a7 link:(id)a8 report:(id)a9 stagedActivitySession:(id)a10 personaHandshakeBlob:(id)a11 activitySession:(id)a12
{
  v18 = a3;
  v119 = a4;
  v19 = a8;
  v20 = a9;
  v21 = self;
  v121 = a12;
  v22 = a10;
  v115 = a7;
  v23 = a6;
  v24 = a5;
  v25 = [(CSDIDSGroupSession *)v21 sessionProvider];
  v26 = [(CSDIDSGroupSession *)v21 preferences];
  [v25 setPreferences:v26];

  v27 = objc_alloc_init(CSDMessagingConversationParticipantDidJoinContext);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setTuConversationMembers:v24];

  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setOtherInvitedTUHandles:v23];
  v28 = [v18 messagesGroupUUID];
  v29 = [v28 UUIDString];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setMessagesGroupUUIDString:v29];

  v30 = [v18 messagesGroupName];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setMessagesGroupName:v30];

  -[CSDMessagingConversationParticipantDidJoinContext setIsMomentsAvailable:](v27, "setIsMomentsAvailable:", [v18 isMomentsAvailable]);
  v31 = [(CSDIDSGroupSession *)v21 featureFlags];
  if ([v31 groupFacetimeAsAServiceEnabled])
  {
    v32 = [v18 provider];
    -[CSDMessagingConversationParticipantDidJoinContext setIsScreenSharingAvailable:](v27, "setIsScreenSharingAvailable:", [v32 supportsSharePlay]);
  }

  else
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setIsScreenSharingAvailable:1];
  }

  v33 = [(CSDIDSGroupSession *)v21 featureFlags];
  if ([v33 groupFacetimeAsAServiceEnabled])
  {
    v34 = [v18 provider];
    -[CSDMessagingConversationParticipantDidJoinContext setIsGondolaCallingAvailable:](v27, "setIsGondolaCallingAvailable:", [v34 supportsLinks]);
  }

  else
  {
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setIsGondolaCallingAvailable:1];
  }

  if ([v18 isVideo])
  {
    v35 = [(CSDIDSGroupSession *)v21 featureFlags];
    if ([v35 groupFacetimeAsAServiceEnabled])
    {
      v36 = [v18 provider];
      -[CSDMessagingConversationParticipantDidJoinContext setVideo:](v27, "setVideo:", [v36 supportsVideo]);
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

  if ([v18 isVideoEnabled])
  {
    v37 = [(CSDIDSGroupSession *)v21 featureFlags];
    if ([v37 groupFacetimeAsAServiceEnabled])
    {
      v38 = [v18 provider];
      -[CSDMessagingConversationParticipantDidJoinContext setVideoEnabled:](v27, "setVideoEnabled:", [v38 supportsVideo]);
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
  -[CSDMessagingConversationParticipantDidJoinContext setSupportsRequestToScreenShare:](v27, "setSupportsRequestToScreenShare:", [v18 supportsRequestToScreenShare]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsPersonaAvailable:](v27, "setIsPersonaAvailable:", [v18 isPersonaAvailable]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsGFTDowngradeToOneToOneAvailable:](v27, "setIsGFTDowngradeToOneToOneAvailable:", [v18 isGFTDowngradeToOneToOneAvailable]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusNDowngradeAvailable:](v27, "setIsUPlusNDowngradeAvailable:", [v18 isUPlusNDowngradeAvailable]);
  v39 = [v18 provider];
  v40 = [v39 identifier];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setProviderIdentifier:v40];

  -[CSDMessagingConversationParticipantDidJoinContext setIsLightweight:](v27, "setIsLightweight:", [v18 isLightweight]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVisionFeatureVersion:TUVisionFeatureVersion()];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusOneVisionToVisionAvailable:](v27, "setIsUPlusOneVisionToVisionAvailable:", [v18 isUPlusOneVisionToVisionAvailable]);
  v41 = [v18 collaborationIdentifier];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setCollaborationIdentifier:v41];

  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusOneScreenSharingAvailable:](v27, "setIsUPlusOneScreenSharingAvailable:", [v18 isUPlusOneScreenShareAvailable]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsSpatialPersonaEnabled:](v27, "setIsSpatialPersonaEnabled:", [v18 isSpatialPersonaEnabled]);
  -[CSDMessagingConversationParticipantDidJoinContext setIsUPlusOneAVLessAvailable:](v27, "setIsUPlusOneAVLessAvailable:", [v18 isUPlusOneAVLessAvailable]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setIsPhotosSharePlayAvailable:TUIsPhotosSharePlayAvailable()];
  -[CSDMessagingConversationParticipantDidJoinContext setIsNearbySharePlay:](v27, "setIsNearbySharePlay:", [v18 isNearbySharePlay]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setNearbyFeatureVersion:TUNearbyFeatureVersion()];
  -[CSDMessagingConversationParticipantDidJoinContext setIsTranslationAvailable:](v27, "setIsTranslationAvailable:", [v18 isTranslationAvailable]);
  v42 = [v18 screenSharingRequest];
  if (v42)
  {
    v43 = v42;
    v44 = [(CSDIDSGroupSession *)v21 featureFlags];
    v45 = [v44 usesModernScreenSharingFromMessages];

    if (v45)
    {
      v46 = [CSDMessagingScreenShareContext alloc];
      v47 = [v18 screenSharingRequest];
      v48 = [(CSDMessagingScreenShareContext *)v46 initOutgoingRequestWithScreenSharingRequest:v47];
      [(CSDMessagingConversationParticipantDidJoinContext *)v27 setScreenSharingRequest:v48];
    }
  }

  v49 = [(CSDIDSGroupSession *)v21 featureFlags];
  if ([v49 conversationHandoffEnabled])
  {
    v50 = [v18 participantAssociation];

    if (!v50)
    {
      goto LABEL_26;
    }

    v49 = [v18 participantAssociation];
    v51 = [CSDMessagingConversationParticipantAssociation participantAssociationWithTUConversationParticipantAssociation:v49];
    [(CSDMessagingConversationParticipantDidJoinContext *)v27 setParticipantAssociation:v51];
  }

LABEL_26:
  v52 = [v18 participantCluster];
  v53 = [CSDMessagingConversationParticipantCluster participantClusterWithTUConversationParticipantCluster:v52];
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setParticipantCluster:v53];

  v54 = objc_alloc_init(CSDMessagingConversationMessage);
  v55 = [[CSDMessagingConversationReport alloc] initWithTUConversationReport:v20];
  [(CSDMessagingConversationMessage *)v54 setReportData:v55];

  [(CSDMessagingConversationMessage *)v54 setStagedActivitySession:v22];
  v56 = [(CSDIDSGroupSession *)v21 featureFlags];
  LODWORD(v52) = [v56 avLessSharePlayEnabled];

  if (v52)
  {
    v57 = [v18 avMode];
  }

  else if ([v18 isVideo])
  {
    v57 = 2;
  }

  else
  {
    v57 = 1;
  }

  [(CSDMessagingConversationMessage *)v54 setAvMode:v57];
  -[CSDMessagingConversationMessage setPresentationMode:](v54, "setPresentationMode:", [v18 presentationMode]);
  if (v121)
  {
    [(CSDMessagingConversationMessage *)v54 addActivitySessions:v121];
  }

  v58 = [v18 invitationPreferences];
  v59 = [v58 count];

  if (v59)
  {
    v60 = [v18 invitationPreferences];
    [(CSDMessagingConversationMessage *)v54 setTUInvitationPreferences:v60];
  }

  v61 = [(CSDIDSGroupSession *)v21 requiredCapabilities];
  v62 = [v61 containsObject:IDSRegistrationPropertySupportsNearbyFaceTime];

  if (v62)
  {
    [(CSDMessagingConversationMessage *)v54 setIsNearbySession:1];
  }

  v63 = [(CSDIDSGroupSession *)v21 featureFlags];
  if ([v63 groupFacetimeAsAServiceEnabled])
  {
    v64 = [v18 provider];
    v65 = [v64 supportsLinks];

    v66 = v65 ^ 1;
  }

  else
  {
    v66 = 0;
  }

  if (v19 && (v66 & 1) == 0)
  {
    v67 = [CSDMessagingConversationLink linkWithTUConversationLink:v19 includeGroupUUID:1];
    [(CSDMessagingConversationMessage *)v54 setLink:v67];
  }

  v120 = v54;
  if ([v18 isInvitation])
  {
    -[CSDMessagingConversationMessage setShouldSuppressInCallUI:](v54, "setShouldSuppressInCallUI:", [v18 shouldSuppressInCallUI]);
    goto LABEL_57;
  }

  if ([v18 isUpgrade])
  {
    v68 = [v18 upgradeSessionUUID];

    if (v68)
    {
      [(CSDMessagingConversationMessage *)v54 setType:2];
      v69 = [v18 upgradeSessionUUID];
      v70 = [v69 UUIDString];
      [(CSDMessagingConversationMessage *)v54 setProtoUpgradeSessionUUID:v70];

      goto LABEL_57;
    }
  }

  if (![v18 isOneToOneModeEnabled] || !objc_msgSend(v18, "isInitiator"))
  {
    goto LABEL_57;
  }

  v71 = [(CSDIDSGroupSession *)v21 featureFlags];
  if (([v71 nearbyFaceTimeEnabled] & 1) == 0)
  {

    goto LABEL_56;
  }

  v72 = [v18 invitationPreferences];
  v73 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
  v74 = [v72 isEqualToSet:v73];

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
  v118 = v19;
  -[CSDMessagingConversationParticipantDidJoinContext setIsUpgradeToVideo:](v27, "setIsUpgradeToVideo:", [v18 isUpgradeToVideo]);
  [(CSDMessagingConversationParticipantDidJoinContext *)v27 setMessage:v54];
  if ([v18 isOneToOneModeEnabled])
  {
    v76 = [v18 isInitiator];
  }

  else
  {
    v76 = 0;
  }

  v77 = sub_100004778();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    v78 = v27;
    if ([v18 isOneToOneModeEnabled])
    {
      v79 = @"YES";
    }

    else
    {
      v79 = @"NO";
    }

    v80 = [v18 isInitiator];
    *buf = 136315906;
    if (v80)
    {
      v81 = @"YES";
    }

    else
    {
      v81 = @"NO";
    }

    v125 = "[CSDIDSGroupSession joinUsingContext:localParticipantAVCData:members:otherInvitedHandles:participantDestinationIDs:link:report:stagedActivitySession:personaHandshakeBlob:activitySession:]";
    if (v76)
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

  v117 = v20;

  v83 = sub_100004778();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v125 = "[CSDIDSGroupSession joinUsingContext:localParticipantAVCData:members:otherInvitedHandles:participantDestinationIDs:link:report:stagedActivitySession:personaHandshakeBlob:activitySession:]";
    v126 = 2112;
    v127 = v27;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%s: Joining with participantJoinContext: %@", buf, 0x16u);
  }

  v113 = [(CSDMessagingConversationParticipantDidJoinContext *)v27 data];
  v112 = IDSGroupSessionClientContextDataKey;
  v122 = IDSGroupSessionAllParticipantsKey;
  v123 = IDSGroupSessionNoStreamsKey;
  v108 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
  v111 = IDSGroupSessionSubscribedStreamsKey;
  v110 = [NSNumber numberWithInteger:TUMultiwayMaxConcurrentStreams()];
  v109 = IDSGroupSessionMaxConcurrentStreamsKey;
  v107 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 isUpgrade]);
  v106 = IDSGroupSessionJoinTypeKey;
  v116 = v21;
  v84 = [NSNumber numberWithUnsignedInteger:[(CSDIDSGroupSession *)v21 callTypeForJoinContext:v18]];
  v105 = IDSGroupSessionCommandContextKey;
  v85 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 isOneToOneModeEnabled]);
  v104 = IDSGroupSessionStartedAsUPlusOneKey;
  v86 = [NSNumber numberWithBool:v76];
  v87 = [v115 allObjects];

  v88 = IDSGroupSessionMessagesGroupMembersKey;
  v89 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 isInitiator]);
  v90 = IDSGroupSessionIsInitiatorKey;
  v91 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 isScreening]);
  v114 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v113, v112, v108, v111, v110, v109, v107, v106, v84, v105, v85, v104, v86, @"gs-new-server-allocation-key", v87, v88, v89, v90, v91, IDSGroupSessionCallScreeningMode, 0];

  v92 = v27;
  if ([(CSDMessagingConversationParticipantDidJoinContext *)v27 isLightweight])
  {
    v93 = objc_alloc_init(NSData);
    v94 = v114;
    [v114 setObject:v93 forKeyedSubscript:IDSSessionParticipantDataKey];

    v95 = v119;
  }

  else
  {
    v94 = v114;
    v95 = v119;
    [v114 setObject:v119 forKeyedSubscript:IDSSessionParticipantDataKey];
  }

  v96 = [v117 conversationID];

  if (v96)
  {
    v97 = [v117 conversationID];
    [v94 setObject:v97 forKeyedSubscript:IDSGroupSessionConversationIDKey];
  }

  v98 = [v117 timebase];

  if (v98)
  {
    v99 = [v117 timebase];
    [v94 setObject:v99 forKeyedSubscript:IDSGroupSessionTimeBaseKey];
  }

  v100 = [CSDMessagingConversationParticipant participantWithCSDConversationJoinContext:v92];
  [v100 setAvcData:v95];
  v101 = [v100 data];
  [v94 setObject:v101 forKeyedSubscript:IDSGroupSessionParticipantInfoKey];

  v102 = sub_100004778();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v125 = v100;
    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "joinUsingContext: sending dataBlob %@", buf, 0xCu);
  }

  v103 = [(CSDIDSGroupSession *)v116 sessionProvider];
  [v103 joinWithOptions:v94];
}

- (void)addMembers:(id)a3 toExistingMembers:(id)a4 activeParticipants:(id)a5 activitySessions:(id)a6 link:(id)a7 otherInvitedHandles:(id)a8 report:(id)a9 invitationPreferences:(id)a10 requiredCapabilities:(id)a11 messagesGroupUUID:(id)a12 messagesGroupName:(id)a13 addingFromLetMeIn:(BOOL)a14 triggeredLocally:(BOOL)a15 highlightIdentifier:(id)a16 stagedActivitySession:(id)a17 avMode:(unint64_t)a18
{
  v145 = a3;
  v139 = a4;
  v126 = a5;
  v134 = a6;
  v132 = a7;
  v127 = a8;
  v133 = a9;
  v135 = a10;
  v136 = a11;
  v131 = a12;
  v130 = a13;
  v129 = a16;
  v128 = a17;
  v23 = +[NSMutableArray array];
  v142 = +[NSMutableArray array];
  v144 = +[NSMutableArray array];
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  obj = v145;
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
        v30 = [v28 handle];
        v31 = [v30 value];
        v32 = [v31 destinationIdIsPseudonym];

        if (v32)
        {
          [v144 addObject:v29];
        }

        else
        {
          v33 = [v28 handle];
          v34 = [v33 value];
          v35 = [v34 destinationIdIsTemporary];

          if (v35)
          {
            v36 = [IDSDestination destinationWithTUConversationMember:v28];
            [v142 addObject:v36];
          }

          else
          {
            v37 = +[TUIDSLookupManager sharedManager];
            v38 = [v28 idsDestination];
            v39 = [v37 faceTimeMultiwayAvailabilityForDestination:v38];

            if (v39)
            {
              v40 = +[TUIDSLookupManager sharedManager];
              v41 = [v28 idsDestination];
              v42 = [v40 isWebCapableFaceTimeAvailableForDestination:v41];

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
  v140 = v139;
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
        v49 = [v47 handle];
        v50 = [v49 value];
        v51 = [v50 destinationIdIsPseudonym];

        if (v51)
        {
          v52 = v144;
LABEL_26:
          [v52 addObject:v48];
          goto LABEL_28;
        }

        v53 = [v47 handle];
        v54 = [v53 value];
        v55 = [v54 destinationIdIsTemporary];

        if (v55)
        {
          v52 = v142;
          goto LABEL_26;
        }

        v56 = +[TUIDSLookupManager sharedManager];
        v57 = [v47 idsDestination];
        [v56 faceTimeMultiwayAvailabilityForDestination:v57];

        v58 = +[TUIDSLookupManager sharedManager];
        v59 = [v47 idsDestination];
        v60 = [v58 isWebCapableFaceTimeAvailableForDestination:v59];

        v143 |= v60;
LABEL_28:
      }

      v44 = [v140 countByEnumeratingWithState:&v174 objects:v190 count:16];
    }

    while (v44);
  }

  v61 = a15;
  if (a15)
  {
    v62 = v126;
    v63 = self;
    v64 = &_s10Foundation3URLVMa_ptr_0;
    if ([v142 count])
    {
      if (v143)
      {
        [(CSDIDSGroupSession *)self addMembers:obj toExistingMembers:v140 participantDestinationIDs:v146 webDestinationIDs:v142 activeParticipants:v126 activitySessions:v134 link:v132 otherInvitedHandles:v127 report:v133 invitationPreferences:v135];
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
                v74 = [v73 destinationURIs];
                v75 = [v74 allObjects];
                [v67 addObjectsFromArray:v75];

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

        v77 = [v64[206] sharedManager];
        v159[0] = _NSConcreteStackBlock;
        v159[1] = 3221225472;
        v159[2] = sub_1001BBD48;
        v159[3] = &unk_10061DA08;
        v159[4] = self;
        v160 = obj;
        v161 = v140;
        v162 = v68;
        v163 = v142;
        v164 = v126;
        v165 = v134;
        v166 = v132;
        v167 = v127;
        v168 = v133;
        v63 = self;
        v169 = v135;
        [v77 queryHasWebOnlyEndpointsForDestinations:v67 completionBlock:v159];
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
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setMessagesGroupName:v130];
    v79 = [v131 UUIDString];
    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setMessagesGroupUUIDString:v79];

    v80 = objc_alloc_init(CSDMessagingConversationMessage);
    v81 = [[CSDMessagingConversationReport alloc] initWithTUConversationReport:v133];
    [(CSDMessagingConversationMessage *)v80 setReportData:v81];

    v82 = sub_100004778();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = [(CSDMessagingConversationMessage *)v80 reportData];
      *buf = 136315394;
      v186 = "[CSDIDSGroupSession addMembers:toExistingMembers:activeParticipants:activitySessions:link:otherInvitedHandles:report:invitationPreferences:requiredCapabilities:messagesGroupUUID:messagesGroupName:addingFromLetMeIn:triggeredLocally:highlightIdentifier:stagedActivitySession:avMode:]";
      v187 = 2112;
      v188 = v83;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%s: Conversation report = %@", buf, 0x16u);
    }

    [(CSDMessagingConversationMessage *)v80 setType:3];
    v84 = [(CSDIDSGroupSession *)v63 featureFlags];
    if ([v84 nearbyFaceTimeEnabled])
    {
      v85 = [(CSDIDSGroupSession *)v63 requiredCapabilities];
      v86 = IDSRegistrationPropertySupportsNearbyFaceTime;
      v87 = [v85 containsObject:IDSRegistrationPropertySupportsNearbyFaceTime];

      if (v87)
      {
        if (v135 && (+[TUConversationInvitationPreference nearbyInvitationPreferences](TUConversationInvitationPreference, "nearbyInvitationPreferences"), v88 = objc_claimAutoreleasedReturnValue(), v89 = [v135 isEqualToSet:v88], v88, (v89 & 1) == 0))
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
    v93 = v126;
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
          v106 = [v105 isLightweightMember];
          v107 = [CSDMessagingConversationMember memberWithTUConversationMember:v105];
          if (v106)
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
    v108 = v134;
    v109 = [v108 countByEnumeratingWithState:&v147 objects:v182 count:16];
    v66 = v132;
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

    if (v132)
    {
      v113 = [CSDMessagingConversationLink linkWithTUConversationLink:v132 includeGroupUUID:1];
      [(CSDMessagingConversationMessage *)v80 setLink:v113];

      v114 = [v132 groupUUID];
      [(CSDMessagingConversationMessage *)v80 setConversationGroupUUID:v114];
    }

    if (v135)
    {
      [(CSDMessagingConversationMessage *)v80 setTUInvitationPreferences:?];
    }

    if (a14)
    {
      [(CSDMessagingConversationMessage *)v80 setIsLetMeInApproved:1];
    }

    if (v129)
    {
      [(CSDMessagingConversationMessage *)v80 setHighlightIdentifier:?];
    }

    [(CSDMessagingConversationMessage *)v80 setStagedActivitySession:v128];
    v115 = [(CSDIDSGroupSession *)self featureFlags];
    v116 = [v115 avLessSharePlayEnabled];

    if (v116)
    {
      [(CSDMessagingConversationMessage *)v80 setAvMode:a18];
    }

    [(CSDMessagingConversationParticipantDidJoinContext *)v78 setMessage:v80];
    v65 = [(CSDMessagingConversationParticipantDidJoinContext *)v78 data];

    v61 = a15;
  }

  else
  {
    v65 = 0;
    v62 = v126;
    v66 = v132;
  }

  if ([v144 count])
  {
    if ([v136 count])
    {
      [NSMutableSet setWithArray:v136];
    }

    else
    {
      +[NSMutableSet set];
    }
    v117 = ;
    [v117 addObject:IDSRegistrationPropertySupportsModernGFT];
    [(CSDIDSGroupSession *)self addRequiredCapabilities:v117 requiredLackOfCapabilities:0];
  }

  if (v61 && ([v142 count] || objc_msgSend(v144, "count")))
  {
    if ([v136 count])
    {
      [NSMutableSet setWithArray:v136];
    }

    else
    {
      +[NSMutableSet set];
    }
    v121 = ;
    v123 = v135;
    [v121 addObject:IDSRegistrationPropertySupportsGondola];
    [v121 addObject:IDSRegistrationPropertySupportsModernGFT];
    v124 = [(CSDIDSGroupSession *)self sessionProvider];
    v125 = [v121 allObjects];
    v122 = v146;
    [v124 updateParticipantDestinationIDs:v146 withContextData:v65 requiredCapabilities:v125 requiredLackOfCapabilities:&__NSArray0__struct triggeredLocally:1];

    v118 = v136;
  }

  else
  {
    v118 = v136;
    v119 = [v136 count];
    v120 = [(CSDIDSGroupSession *)self sessionProvider];
    v121 = v120;
    v122 = v146;
    if (v119)
    {
      [v120 updateParticipantDestinationIDs:v146 withContextData:v65 requiredCapabilities:v136 requiredLackOfCapabilities:&__NSArray0__struct triggeredLocally:v61];
    }

    else
    {
      [v120 updateParticipantDestinationIDs:v146 withContextData:v65 triggeredLocally:v61];
    }

    v123 = v135;
  }
}

- (void)addMembers:(id)a3 toExistingMembers:(id)a4 participantDestinationIDs:(id)a5 webDestinationIDs:(id)a6 activeParticipants:(id)a7 activitySessions:(id)a8 link:(id)a9 otherInvitedHandles:(id)a10 report:(id)a11 invitationPreferences:(id)a12
{
  v16 = a3;
  v17 = a4;
  v84 = a5;
  v83 = a7;
  v82 = a8;
  v18 = a9;
  v81 = a10;
  v80 = a11;
  v79 = a12;
  v85 = [v16 mutableCopy];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v16;
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
        v24 = [v23 handle];
        v25 = [v24 value];
        v26 = [v25 destinationIdIsTemporary];

        if (v26)
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
    v77 = v18;
    v27 = [v17 mutableCopy];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v28 = v17;
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
          v34 = [v33 handle];
          v35 = [v34 value];
          v36 = [v35 destinationIdIsTemporary];

          if (v36)
          {
            [v27 removeObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v30);
    }

    v37 = [v81 mutableCopy];
    v38 = [v27 count];
    if (&v38[[v85 count]] <= 2)
    {
      do
      {
        if (![v37 count])
        {
          break;
        }

        v39 = [v37 anyObject];
        v40 = [[TUConversationMember alloc] initWithHandle:v39];
        [v85 addObject:v40];
        [v37 removeObject:v39];

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
    v44 = [[CSDMessagingConversationReport alloc] initWithTUConversationReport:v80];
    [(CSDMessagingConversationMessage *)v43 setReportData:v44];

    [(CSDMessagingConversationMessage *)v43 setType:3];
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v45 = v83;
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
          v51 = [v50 handle];
          v52 = [v51 value];
          v53 = [v52 destinationIdIsTemporary];

          if ((v53 & 1) == 0)
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
          v61 = [v60 isLightweightMember];
          v62 = [CSDMessagingConversationMember memberWithTUConversationMember:v60];
          if (v61)
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
    v63 = v82;
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

    v18 = v77;
    if (v77)
    {
      v68 = [CSDMessagingConversationLink linkWithTUConversationLink:v77 includeGroupUUID:1];
      [(CSDMessagingConversationMessage *)v43 setLink:v68];

      v69 = [v77 groupUUID];
      [(CSDMessagingConversationMessage *)v43 setConversationGroupUUID:v69];
    }

    if (v79)
    {
      [(CSDMessagingConversationMessage *)v43 setTUInvitationPreferences:?];
    }

    [(CSDMessagingConversationParticipantDidJoinContext *)v74 setMessage:v43];
    v70 = [(CSDMessagingConversationParticipantDidJoinContext *)v74 data];
    v71 = [(CSDIDSGroupSession *)self sessionProvider];
    v108 = IDSRegistrationPropertySupportsGondola;
    v72 = [NSArray arrayWithObjects:&v108 count:1];
    v107 = IDSRegistrationPropertySupportsModernGFT;
    v73 = [NSArray arrayWithObjects:&v107 count:1];
    [v71 updateParticipantDestinationIDs:v84 withContextData:v70 requiredCapabilities:v72 requiredLackOfCapabilities:v73 triggeredLocally:1];
  }
}

- (void)sendLocalParticipant:(id)a3
{
  v4 = a3;
  v11 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v4];
  v5 = [v11 data];
  v6 = [v5 copy];

  v7 = [(CSDIDSGroupSession *)self sessionProvider];
  [v7 updateParticipantInfo:v6];

  [v11 setAvcData:0];
  v8 = [(CSDIDSGroupSession *)self sessionProvider];
  v9 = [v4 avcData];

  v10 = [v11 data];
  [v8 sendParticipantData:v9 withContext:v10];
}

- (void)updateLocalParticipantInfo:(id)a3
{
  v6 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:a3];
  v4 = [(CSDIDSGroupSession *)self sessionProvider];
  v5 = [v6 data];
  [v4 updateParticipantInfo:v5];
}

- (void)requestActiveParticipants
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "requestActiveParticipants self: %@", &v5, 0xCu);
  }

  v4 = [(CSDIDSGroupSession *)self sessionProvider];
  [v4 requestActiveParticipants];
}

- (void)leaveGroupSessionWithContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(CSDMessagingConversationParticipantDidLeaveContext);
    -[CSDMessagingConversationParticipantDidLeaveContext setLeaveReason:](v5, "setLeaveReason:", [v4 leaveReason]);
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

  v7 = [(CSDMessagingConversationParticipantDidLeaveContext *)v5 data];

  if (v7)
  {
    v8 = [(CSDMessagingConversationParticipantDidLeaveContext *)v5 data];
    v9 = [NSDictionary dictionaryWithObjectsAndKeys:v8, IDSGroupSessionClientContextDataKey, 0];
  }

  else
  {
    v9 = +[NSDictionary dictionary];
  }

  v10 = [(CSDIDSGroupSession *)self sessionProvider];
  [v10 leaveWithOptions:v9];
}

- (void)registerPluginWithOptions:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "registerPluginWithOptions:%@ self: %@", &v7, 0x16u);
  }

  v6 = [(CSDIDSGroupSession *)self sessionProvider];
  [v6 registerPluginWithOptions:v4];
}

- (void)restart
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "restart self: %@", &v5, 0xCu);
  }

  [(CSDIDSGroupSession *)self setJoined:0];
  v4 = [(CSDIDSGroupSession *)self sessionProvider];
  [v4 restart];
}

- (void)reconnect
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "reconnect self: %@", &v5, 0xCu);
  }

  v4 = [(CSDIDSGroupSession *)self sessionProvider];
  [v4 reconnect];
}

- (void)kickMember:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "member: %@", &v9, 0xCu);
  }

  v6 = [v4 idsDestinations];
  v7 = [NSArray arrayWithArray:v6];

  v8 = [(CSDIDSGroupSession *)self sessionProvider];
  [v8 kickParticipants:v7];
}

- (void)allowMember:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "member: %@", &v9, 0xCu);
  }

  v6 = [v4 idsDestinations];
  v7 = [NSArray arrayWithArray:v6];

  v8 = [(CSDIDSGroupSession *)self sessionProvider];
  [v8 allowParticipants:v7];
}

- (void)requestDataCryptorForTopic:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestDataCryptorForTopic: %@ self: %@", &v10, 0x16u);
  }

  v9 = [(CSDIDSGroupSession *)self sessionProvider];
  [v9 requestDataCryptorForTopic:v6 completionHandler:v7];
}

- (void)requestEncryptionKeyForParticipants:(id)a3 topic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestEncryptionKeyForParticipants: %@ topic: %@ self: %@", &v10, 0x20u);
  }

  v9 = [(CSDIDSGroupSession *)self sessionProvider];
  [v9 requestEncryptionKeyForParticipants:v6 topic:v7];
}

- (void)addAliasesToConversationContainer:(id)a3 withSalt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addAliasesToConversationContainer: %@ salt: %@ self: %@", &v10, 0x20u);
  }

  v9 = [(CSDIDSGroupSession *)self sessionProvider];
  [v9 addAliasesToConversationContainer:v6 withSalt:v7];
}

- (unint64_t)aliasForParticipantID:(unint64_t)a3 salt:(id)a4
{
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218498;
    v12 = a3;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "aliasForParticipantID: %llu salt: %@ self: %@", &v11, 0x20u);
  }

  v8 = [(CSDIDSGroupSession *)self sessionProvider];
  v9 = [v8 aliasForParticipantID:a3 salt:v6];

  return v9;
}

- (void)participantIDForAlias:(unint64_t)a3 salt:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218498;
    v13 = a3;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "participantIDForAlias: %llu salt: %@ self: %@", &v12, 0x20u);
  }

  v11 = [(CSDIDSGroupSession *)self sessionProvider];
  [v11 participantIDForAlias:a3 salt:v8 completion:v9];
}

- (NSSet)requiredCapabilities
{
  v2 = [(CSDIDSGroupSession *)self sessionProvider];
  v3 = [v2 requiredCapabilities];

  return v3;
}

- (NSSet)requiredLackOfCapabilities
{
  v2 = [(CSDIDSGroupSession *)self sessionProvider];
  v3 = [v2 requiredLackOfCapabilities];

  return v3;
}

- (void)addRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addRequiredCapabilities: %@ requiredLackOfCapabilities: %@ self: %@", &v11, 0x20u);
  }

  v9 = [(CSDIDSGroupSession *)self sessionProvider];
  [v9 addRequiredCapabilities:v6 requiredLackOfCapabilities:v7];

  v10 = [(CSDIDSGroupSession *)self delegate];
  [v10 session:self didAddRequiredCapabilities:v6];
}

- (void)removeRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "removeRequiredCapabilities: %@ requiredLackOfCapabilities: %@ self: %@", &v11, 0x20u);
  }

  v9 = [(CSDIDSGroupSession *)self sessionProvider];
  [v9 removeRequiredCapabilities:v6 requiredLackOfCapabilities:v7];

  v10 = [(CSDIDSGroupSession *)self delegate];
  [v10 session:self didRemoveRequiredCapabilities:v6];
}

- (id)_updateParticipantDestinationIDForParticipant:(id)a3 members:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDIDSGroupSession *)self participantDestinationIDs];
  v9 = [v8 mutableCopy];

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
  v11 = v7;
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
        v18 = [v17 handle];
        v19 = [v6 handle];
        v20 = [v18 isEqualToHandle:v19];

        if (v20)
        {
          v21 = [IDSDestination destinationWithTUConversationMember:v17];
          if ([v9 containsObject:v21])
          {
            [v9 removeObject:v21];
            v22 = [v6 tuConversationParticipant];
            v23 = [IDSDestination destinationWithTUConversationParticipant:v22];
            [v9 addObject:v23];

            v24 = sub_100004778();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v6 tuConversationParticipant];
              *buf = 138412546;
              v34 = v21;
              v35 = 2112;
              v36 = v25;
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

- (id)idsDestinationForActiveParticipant:(id)a3
{
  v3 = a3;
  v4 = [v3 participantPushToken];
  if (v4 && (v5 = v4, [v3 participantURI], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v3 participantPushToken];
    v8 = [v3 participantURI];
    v9 = IDSCopyIDForTokenWithID();
  }

  else
  {
    v9 = [v3 participantURI];
  }

  return v9;
}

- (unint64_t)callTypeForJoinContext:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSGroupSession *)self featureFlags];
  if ([v5 groupFacetimeAsAServiceEnabled])
  {
    v6 = [v4 provider];
    v7 = [v6 supportsVideo];
  }

  else
  {
    v7 = 1;
  }

  if (([v4 isVideo] & v7) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (void)sessionProvider:(id)a3 didJoinGroupWithParticipantIdentifiers:(id)a4 localParticipantIdentifier:(unint64_t)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    v30 = 2048;
    v31 = a5;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ participantIDs: %@ localParticipantID: %llu error: %@", buf, 0x2Au);
  }

  [(CSDIDSGroupSession *)self setLocalParticipantIdentifier:a5];
  [(CSDIDSGroupSession *)self setJoined:v12 == 0];
  v14 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v11 allValues];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v15);
        }

        [v14 addObjectsFromArray:*(*(&v21 + 1) + 8 * v19)];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  v20 = [(CSDIDSGroupSession *)self delegate];
  [v20 session:self didJoinGroup:-[CSDIDSGroupSession isJoined](self participantIdentifiers:"isJoined") error:{v14, v12}];
}

- (void)sessionProvider:(id)a3 didLeaveGroupWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ error: %@", &v10, 0x16u);
  }

  [(CSDIDSGroupSession *)self setJoined:0];
  v9 = [(CSDIDSGroupSession *)self delegate];
  [v9 session:self didLeaveGroupWithError:v7];
}

- (void)sessionProviderDidTerminate:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sessionProviderDidTerminate: %@", &v7, 0xCu);
  }

  v6 = [(CSDIDSGroupSession *)self delegate];
  [v6 sessionDidTerminate:self];
}

- (void)sessionProvider:(id)a3 didReceiveActiveParticipants:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = v8;
    v42 = 2112;
    v43 = v9;
    v44 = 1024;
    v45 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ activeParticipants: %@ success: %d", buf, 0x1Cu);
  }

  if (v5)
  {
    v33 = v8;
    [(CSDIDSGroupSession *)self setRetryCount:0];
    v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = v9;
    obj = v9;
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
          v18 = self;
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

          self = v18;
        }

        v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);
    }

    v22 = [(CSDIDSGroupSession *)self delegate];
    [v22 session:self receivedActiveParticipantDestinationsByIdentifier:v11];

    v9 = v32;
    v8 = v33;
  }

  else
  {
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Received an error for active remote participants", buf, 2u);
    }

    v24 = [(CSDIDSGroupSession *)self retryCount];
    v25 = [(CSDIDSGroupSession *)self serverBag];
    v26 = [v25 maxActiveParticipantFetchRetries];

    if (v24 >= v26)
    {
      v29 = sub_100004778();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(CSDIDSGroupSession *)self serverBag];
        v31 = [v30 maxActiveParticipantFetchRetries];
        *buf = 134217984;
        v41 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Not retrying requestActiveParticipants, max retry count (%lu) reached", buf, 0xCu);
      }
    }

    else
    {
      [(CSDIDSGroupSession *)self setRetryCount:[(CSDIDSGroupSession *)self retryCount]+ 1];
      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(CSDIDSGroupSession *)self retryCount];
        *buf = 134217984;
        v41 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Retrying requestActiveParticipants, retry_count=%lu", buf, 0xCu);
      }

      [(CSDIDSGroupSession *)self requestActiveParticipants];
    }
  }
}

- (void)sessionProvider:(id)a3 didReceiveActiveLightweightParticipants:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = v8;
    v42 = 2112;
    v43 = v9;
    v44 = 1024;
    v45 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveActiveLightweightParticipants: %@ success: %d", buf, 0x1Cu);
  }

  if (v5)
  {
    v33 = v8;
    [(CSDIDSGroupSession *)self setLightweightRetryCount:0];
    v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = v9;
    obj = v9;
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
          v18 = self;
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

          self = v18;
        }

        v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);
    }

    v22 = [(CSDIDSGroupSession *)self delegate];
    [v22 session:self receivedActiveLightweightParticipantDestinationsByIdentifier:v11];

    v9 = v32;
    v8 = v33;
  }

  else
  {
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Received an error for active remote participants", buf, 2u);
    }

    v24 = [(CSDIDSGroupSession *)self lightweightRetryCount];
    v25 = [(CSDIDSGroupSession *)self serverBag];
    v26 = [v25 maxActiveParticipantFetchRetries];

    if (v24 >= v26)
    {
      v29 = sub_100004778();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(CSDIDSGroupSession *)self serverBag];
        v31 = [v30 maxActiveParticipantFetchRetries];
        *buf = 134217984;
        v41 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Not retrying requestActiveLightweightParticipants, max retry count (%lu) reached", buf, 0xCu);
      }
    }

    else
    {
      [(CSDIDSGroupSession *)self setLightweightRetryCount:[(CSDIDSGroupSession *)self lightweightRetryCount]+ 1];
      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(CSDIDSGroupSession *)self lightweightRetryCount];
        *buf = 134217984;
        v41 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Retrying requestActiveLightweightParticipants, retry_count=%lu", buf, 0xCu);
      }

      [(CSDIDSGroupSession *)self requestActiveParticipants];
    }
  }
}

- (void)sessionProvider:(id)a3 didReceiveJoinedParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2048;
    v15 = a4;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveJoinedParticipantID: %llu clientContext: %@", &v12, 0x20u);
  }

  v11 = [(CSDIDSGroupSession *)self delegate];
  [v11 session:self didReceiveJoinedParticipantID:a4 withContext:v9];
}

- (void)sessionProvider:(id)a3 didReceiveParticipantUpdateParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2048;
    v15 = a4;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveParticipantUpdateParticipantID: %llu clientContext: %@", &v12, 0x20u);
  }

  v11 = [(CSDIDSGroupSession *)self delegate];
  [v11 session:self didReceiveParticipantUpdateParticipantID:a4 withContext:v9];
}

- (void)sessionProvider:(id)a3 didReceiveLeftParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2048;
    v15 = a4;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sessionProvider: %@ didReceiveLeftParticipantID: %llu clientContext: %@", &v12, 0x20u);
  }

  v11 = [(CSDIDSGroupSession *)self delegate];
  [v11 session:self didReceiveLeftParticipantID:a4 withContext:v9];
}

- (void)sessionProvider:(id)a3 didReceiveReport:(id)a4
{
  v5 = a4;
  v6 = [(CSDIDSGroupSession *)self delegate];
  [v6 session:self didReceiveReport:v5];
}

- (void)sessionProvider:(id)a3 didRegisterPluginAllocationInfo:(id)a4
{
  v5 = a4;
  v6 = [(CSDIDSGroupSession *)self delegate];
  [v6 session:self didRegisterPluginAllocationInfo:v5];
}

- (void)sessionProvider:(id)a3 didUnregisterPluginAllocationInfo:(id)a4
{
  v5 = a4;
  v6 = [(CSDIDSGroupSession *)self delegate];
  [v6 session:self didUnregisterPluginAllocationInfo:v5];
}

- (void)sessionProviderDidReceiveKeyUpdate:(id)a3
{
  v4 = [(CSDIDSGroupSession *)self delegate];
  [v4 sessionDidReceiveKeyUpdate:self];
}

- (void)sessionProvider:(id)a3 didReceiveDataBlob:(id)a4 forParticipant:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CSDIDSGroupSession *)self delegate];
  [v9 session:self didReceiveDataBlob:v8 forParticipant:v7];
}

- (CSDIDSGroupSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end