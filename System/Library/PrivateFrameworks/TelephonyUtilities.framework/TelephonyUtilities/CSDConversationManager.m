@interface CSDConversationManager
- (BOOL)_conversationIsOverGreenTeaCapacity:(id)a3 addingMembers:(id)a4;
- (BOOL)_isActiveRemoteMemberForHandle:(id)a3 conversation:(id)a4;
- (BOOL)_isConversationDisallowedByGreenTeaForConversation:(id)a3 withUpdateContext:(id)a4 conversationProvider:(id)a5;
- (BOOL)_shouldNotifyDelegatesOfMessage:(id)a3 localHandleAdded:(BOOL)a4 isFromStorage:(BOOL)a5;
- (BOOL)_shouldRingForIncomingCallWithHandle:(id)a3 conversation:(id)a4 isFromPendingMessage:(BOOL)a5 isOldMessage:(BOOL)a6 message:(id)a7;
- (BOOL)_shouldSkipManualApprovalForHandle:(id)a3 conversation:(id)a4 responseKeyData:(id)a5;
- (BOOL)allActiveConversationParticipantsSupportSharePlay;
- (BOOL)broadcastData:(id)a3 onConversation:(id)a4 additionalOptions:(id)a5;
- (BOOL)broadcastFile:(id)a3 onConversation:(id)a4 additionalOptions:(id)a5;
- (BOOL)conversationContainsScreenShareRequest:(id)a3 localRequest:(BOOL)a4 requestHandle:(id)a5;
- (BOOL)hasActiveActivitySessionContainer;
- (BOOL)isConversationWithUUIDRedirectingAudio:(id)a3;
- (BOOL)isConversationWithUUIDRelaying:(id)a3;
- (BOOL)isConversationWithUUIDScreening:(id)a3;
- (BOOL)isHandleLocalPseudonym:(id)a3 provider:(id)a4;
- (BOOL)isHandleStringLocalPseudonym:(id)a3 provider:(id)a4;
- (BOOL)isScreenSharingAvailable;
- (BOOL)isScreenSharingInitiationAvailable;
- (BOOL)isSharePlayAvailable;
- (BOOL)isValidLocalHandle:(id)a3;
- (BOOL)isValidLocalHandle:(id)a3 activeLocalHandles:(id)a4 provider:(id)a5;
- (BOOL)isValidLocalHandle:(id)a3 forProvider:(id)a4;
- (BOOL)sendData:(id)a3 onConversation:(id)a4 toDestinationID:(id)a5;
- (BOOL)sendData:(id)a3 onConversation:(id)a4 toDestinationID:(id)a5 additionalOptions:(id)a6;
- (BOOL)sendData:(id)a3 onConversation:(id)a4 toDestinationID:(id)a5 fromMember:(id)a6 additionalOptions:(id)a7 isBlobResponse:(BOOL)a8 callback:(id)a9;
- (BOOL)sendData:(id)a3 onConversation:(id)a4 toMember:(id)a5 additionalOptions:(id)a6;
- (BOOL)sendMessagesForInvalidatedLink:(id)a3;
- (BOOL)shouldAcceptMembershipUpdateFromHandle:(id)a3 joinContext:(id)a4 participantUpdate:(id)a5 existingConversation:(id)a6;
- (BOOL)shouldAcceptMessageFromHandle:(id)a3 messageContext:(id)a4 message:(id)a5 existingConversation:(id)a6;
- (BOOL)shouldCreatePendingChatForMessageType:(int64_t)a3 fromHandle:(id)a4;
- (BOOL)shouldIgnoreMessageForConversation:(id)a3;
- (BOOL)verifyActivitySessionOriginatorFromHandle:(id)a3 message:(id)a4;
- (BOOL)verifyAllLightweightmembersAssociated:(id)a3 remoteMembers:(id)a4;
- (BOOL)verifyBlobResponseFromHandle:(id)a3 message:(id)a4 existingConversation:(id)a5;
- (BOOL)verifyEndorseRepresentsMemberFromHandle:(id)a3 message:(id)a4 existingConversation:(id)a5;
- (BOOL)verifyGroupSessionParticipantUpdateAllowedFromHandle:(id)a3 participantUpdate:(id)a4 message:(id)a5 existingConversation:(id)a6 lightweightMembers:(id)a7;
- (BOOL)verifyKickMemberPermittedFromHandle:(id)a3 message:(id)a4;
- (BOOL)verifyLightweightMessageTypeFromHandle:(id)a3 message:(id)a4 existingConversation:(id)a5;
- (BOOL)verifyMessageIntentKeyFromContext:(id)a3 message:(id)a4;
- (CSDConduitIDSProxy)messageProxy;
- (CSDConversation)activeConversation;
- (CSDConversationManager)init;
- (CSDConversationManager)initWithQueue:(id)a3 reportingController:(id)a4 persistenceController:(id)a5 linkManager:(id)a6 cpApplicationController:(id)a7 invitationResolver:(id)a8 pendingMembershipTracker:(id)a9 featureFlags:(id)a10 applicationPolicyManager:(id)a11;
- (CSDConversationManager)initWithQueue:(id)a3 reportingController:(id)a4 persistenceController:(id)a5 linkManager:(id)a6 invitationResolver:(id)a7 pendingMembershipTracker:(id)a8 featureFlags:(id)a9;
- (CSDConversationManager)initWithReportingController:(id)a3 cpApplicationController:(id)a4 invitationResolver:(id)a5;
- (FTDeviceSupport)deviceSupport;
- (NSDictionary)_conversationsByUUID;
- (NSDictionary)activityAuthorizedBundleIdentifierState;
- (NSDictionary)conversationsByGroupUUID;
- (NSDictionary)incomingPendingConversationsByGroupUUID;
- (NSDictionary)pseudonymsByCallUUID;
- (id)_getActivatedLinkWithHandle:(id)a3 updateGroupUUID:(id)a4 updateInvitedHandles:(id)a5;
- (id)_inactiveRemoteMemberForHandle:(id)a3 conversation:(id)a4;
- (id)_incomingPendingConversationsByGroupUUID;
- (id)_kickedOrRejectedMemberForHandle:(id)a3 conversation:(id)a4;
- (id)_removePendingConversationWithPseudonym:(id)a3;
- (id)_removePendingConversationsWithTemporaryGroupUUIDIfNecessary:(id)a3;
- (id)activatedConversationLinksWithError:(id *)a3;
- (id)activeApprovedConversationWithLink:(id)a3;
- (id)activityAuthorizationStatePresentAlertIfIncapable:(BOOL)a3;
- (id)advertisementsOnSystem;
- (id)callerIDForLocalMember:(id)a3 forProvider:(id)a4;
- (id)callerIDHandleForSenderIdentityUUID:(id)a3 callerID:(id)a4;
- (id)conversationLinkForGroupUUID:(id)a3;
- (id)conversationLinkForPseudonym:(id)a3;
- (id)conversationRepresentedByRemoteMembers:(id)a3 andLink:(id)a4;
- (id)conversationWithGroupUUID:(id)a3;
- (id)conversationWithGroupUUID:(id)a3 andProvider:(id)a4;
- (id)conversationWithGroupUUID:(id)a3 orMemberIdentifiers:(id)a4 orRemoteMembers:(id)a5 andLink:(id)a6 andVideo:(BOOL)a7;
- (id)conversationWithGroupUUID:(id)a3 orRepresentedByRemoteMembers:(id)a4 andLink:(id)a5;
- (id)conversationsByUUIDIncludingStorageConversations:(BOOL)a3;
- (id)createActivitySession:(id)a3 onConversation:(id)a4 fromHandle:(id)a5;
- (id)createCPActivitySessionForActivitySession:(id)a3 onConversationWithUUID:(id)a4;
- (id)createConversationIfNecessaryWithUUID:(id)a3 groupUUID:(id)a4 messagesGroupUUID:(id)a5 locallyCreated:(BOOL)a6 localMember:(id)a7 remoteMembers:(id)a8 pendingMembers:(id)a9 otherInvitedHandles:(id)a10 remotePushTokens:(id)a11 lightweightMembers:(id)a12 link:(id)a13 activity:(id)a14 avMode:(unint64_t)a15 presentationMode:(unint64_t)a16 provider:(id)a17 screenSharingRequest:(id)a18;
- (id)createConversationWithUUID:(id)a3 groupUUID:(id)a4 messagesGroupUUID:(id)a5 locallyCreated:(BOOL)a6 localMember:(id)a7 initiator:(id)a8 remoteMembers:(id)a9 pendingMembers:(id)a10 otherInvitedHandles:(id)a11 remotePushTokens:(id)a12 lightweightMembers:(id)a13 activity:(id)a14 link:(id)a15 report:(id)a16 fromStorage:(BOOL)a17 avMode:(unint64_t)a18 presentationMode:(unint64_t)a19 provider:(id)a20 screenSharingRequest:(id)a21 isInitiator:(BOOL)a22 isOldMessage:(BOOL)a23;
- (id)deletedConversationLinksWithError:(id *)a3;
- (id)findConversationLinkMatchingPseudonym:(id)a3;
- (id)findOrCreateConversationWithGroupUUID:(id)a3 messagesGroupUUID:(id)a4 remoteMembers:(id)a5 otherInvitedHandles:(id)a6 localMember:(id)a7 remotePushTokens:(id)a8 link:(id)a9 activity:(id)a10 avMode:(unint64_t)a11 presentationMode:(unint64_t)a12 conversationProvider:(id)a13 screenSharingRequest:(id)a14;
- (id)initiatePendingConversationForLink:(id)a3 localMember:(id)a4 isVideoEnabled:(BOOL)a5;
- (id)localMemberForProvider:(id)a3 fromHandle:(id)a4 members:(id)a5 lightweightMembers:(id)a6 activeLocalHandles:(id)a7;
- (id)memberExistsForParticipantDestination:(id)a3 groupSessionParticipantUpdate:(id)a4;
- (id)memberExistsForParticipantDestination:(id)a3 members:(id)a4;
- (id)pendingConversationUUIDWithPseudonym:(id)a3;
- (id)pendingConversationWithPseudonym:(id)a3;
- (id)pickInitiatorFromActiveParticipants:(id)a3 forUpdate:(id)a4;
- (id)pushTokenForSelf;
- (id)removePendingConversationWithPseudonym:(id)a3;
- (id)senderIdentityUUIDForCallerIDHandle:(id)a3;
- (id)temporaryFilePath;
- (int)presentationStateForConversationWithUUID:(id)a3;
- (void)_displaySharePlayUnableToStartAlert;
- (void)_leaveConversation:(id)a3;
- (void)_leaveConversation:(id)a3 withContext:(id)a4;
- (void)_runCallbackIfNecessaryForMessage:(id)a3;
- (void)_sendDelegationMessageTo:(id)a3 conversation:(id)a4 link:(id)a5 transactionUUID:(id)a6 forMember:(id)a7 withMessage:(id)a8;
- (void)_service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7 attemptCount:(unint64_t)a8;
- (void)activateConversationNoticeWithActionURL:(id)a3 bundleIdentifier:(id)a4;
- (void)activateLink:(id)a3 completionHandler:(id)a4;
- (void)activeActivitySessionContainersWithCompletionHandler:(id)a3;
- (void)addAliasesToConversationContainer:(id)a3 forBundleIdentifier:(id)a4;
- (void)addCollaborationDictionary:(id)a3 forConversationWithUUID:(id)a4 fromMe:(BOOL)a5;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)addDisclosedCollaborationInitiator:(id)a3 toConversationUUID:(id)a4;
- (void)addHighlightIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6;
- (void)addInvitedMemberHandles:(id)a3 toConversationLink:(id)a4 completionHandler:(id)a5;
- (void)addInvitedMemberHandlesFromAddedRemoteMembers:(id)a3 toConversationLink:(id)a4;
- (void)addObserver:(id)a3 queue:(id)a4;
- (void)addPseudonym:(id)a3 forCallUUID:(id)a4;
- (void)addRemoteMembers:(id)a3 otherInvitedHandles:(id)a4 invitationPreferences:(id)a5 toConversationWithUUID:(id)a6;
- (void)addScreenSharingType:(unint64_t)a3 forConversationUUID:(id)a4;
- (void)advertiseGroupActivity:(id)a3 completionHandler:(id)a4;
- (void)applicationPolicyManager:(id)a3 authorizationChangedForBundleIdentifier:(id)a4;
- (void)approvePendingMember:(id)a3 forConversationUUID:(id)a4;
- (void)beginListeningOnService:(id)a3;
- (void)broadcastImageForSession:(id)a3 onConversation:(id)a4;
- (void)broadcastLightweightEndorsementForAddedMembers:(id)a3 onConversation:(id)a4;
- (void)buzzMember:(id)a3 destinationID:(id)a4 invitationContext:(id)a5 conversationUUID:(id)a6;
- (void)cancelOrDenyScreenShareRequest:(id)a3 forConversationUUID:(id)a4;
- (void)cancelPreviouslySentScreenShareRequests:(id)a3;
- (void)checkLinkValidity:(id)a3 completionHandler:(id)a4;
- (void)cleanupExpiredPendingConversations;
- (void)collaborationStateChanged:(int64_t)a3 forCollaborationIdentifier:(id)a4 onConversationUUID:(id)a5;
- (void)conversation:(id)a3 activityChangedOnSession:(id)a4;
- (void)conversation:(id)a3 activitySessionChanged:(id)a4;
- (void)conversation:(id)a3 activitySessionRemoved:(id)a4 userOriginated:(BOOL)a5;
- (void)conversation:(id)a3 addedActiveParticipant:(id)a4;
- (void)conversation:(id)a3 addedMembers:(id)a4 triggeredLocally:(BOOL)a5;
- (void)conversation:(id)a3 appLaunchState:(unint64_t)a4 forActivitySession:(id)a5;
- (void)conversation:(id)a3 changedBytesOfDataUsed:(int64_t)a4;
- (void)conversation:(id)a3 didChangeLocalParticipant:(id)a4 broadcastActivitySession:(BOOL)a5 currentSequenceNumber:(unint64_t)a6 fromResponse:(BOOL)a7;
- (void)conversation:(id)a3 didChangeSceneAssociationForActivitySession:(id)a4;
- (void)conversation:(id)a3 didChangeStateForActivitySession:(id)a4;
- (void)conversation:(id)a3 didReceiveParticipantUpdateMessage:(id)a4 fromNormalizedHandle:(id)a5;
- (void)conversation:(id)a3 failedWithContext:(id)a4;
- (void)conversation:(id)a3 mediaPrioritiesChangedForParticipant:(id)a4;
- (void)conversation:(id)a3 participant:(id)a4 didReact:(id)a5;
- (void)conversation:(id)a3 participantDidStopReacting:(id)a4;
- (void)conversation:(id)a3 receivedActivitySessionEvent:(id)a4;
- (void)conversation:(id)a3 remoteMembersChanged:(id)a4;
- (void)conversation:(id)a3 removedActiveParticipant:(id)a4 withLeaveReason:(unint64_t)a5;
- (void)conversation:(id)a3 removedScreenShareRequest:(id)a4;
- (void)conversation:(id)a3 requestBlobRecoveryForParticipantDestination:(id)a4 completion:(id)a5;
- (void)conversation:(id)a3 requestedEndpointWithIdentifier:(id)a4 activitySession:(id)a5 completion:(id)a6;
- (void)conversation:(id)a3 screenShareAttributesDidChange:(id)a4;
- (void)conversation:(id)a3 screenShareAttributesSelected:(id)a4;
- (void)conversation:(id)a3 screenShareAttributesUpdated:(id)a4;
- (void)conversation:(id)a3 sendDeclineMessageToParticipantDestination:(id)a4;
- (void)conversation:(id)a3 sendResourceAtURL:(id)a4 toParticipants:(id)a5 metadata:(id)a6 activitySessionUUID:(id)a7 completion:(id)a8;
- (void)conversation:(id)a3 updatedActiveParticipant:(id)a4;
- (void)conversation:(id)a3 updatedActiveParticipantWithScreenSharing:(id)a4;
- (void)conversationChanged:(id)a3;
- (void)conversationConnectionDidStart:(id)a3;
- (void)conversationDidStopScreenCapture:(id)a3;
- (void)conversationDidTriggerJoin:(id)a3;
- (void)conversationInvalidated:(id)a3;
- (void)createActivitySession:(id)a3 onConversationWithUUID:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6;
- (void)displaySharePlayUnableToStartAlert;
- (void)endActivitySession:(id)a3 onConversationWithUUID:(id)a4;
- (void)fetchActiveActivitySessionContainersWithCompletion:(id)a3;
- (void)fetchUpcomingNoticeWithCompletionHandler:(id)a3;
- (void)fileTransferer:(id)a3 didReceiveResourcesAtURL:(id)a4 withMetadata:(id)a5 isZipped:(BOOL)a6 fromIDSDestination:(id)a7;
- (void)fileTransferer:(id)a3 didTransferFileAtURL:(id)a4 successfully:(BOOL)a5;
- (void)foundAvailableAdvertisement:(id)a3;
- (void)generateAllInactiveLinks;
- (void)generateLinkForConversationUUID:(id)a3 completionHandler:(id)a4;
- (void)generateLinkWithInvitedMemberHandles:(id)a3 linkLifetimeScope:(int64_t)a4 completionHandler:(id)a5;
- (void)getActiveLinksWithCreatedOnly:(BOOL)a3 completionHandler:(id)a4;
- (void)getInactiveLinkWithCompletionHandler:(id)a3;
- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)a3;
- (void)getNeedsDisclosureOfCollaborationInitiator:(id)a3 forConversationUUID:(id)a4 completionHandler:(id)a5;
- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)a3 onContainerWithID:(NSUUID *)a4 completionHandler:(id)a5;
- (void)handleConversation:(id)a3 addHighlight:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 participantUpdateMessage:(id)a4 fromNormalizedHandle:(id)a5;
- (void)handleConversation:(id)a3 receivedActivitySession:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 receivedBlobRecoveryRequest:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 receivedBlobRecoveryResponse:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 receivedEndorsementForMember:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 registerMessagesGroupUUIDMessage:(id)a4 fromNormalizedHandle:(id)a5;
- (void)handleConversation:(id)a3 removeActivitySession:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 removeHighlight:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 screenShareRequest:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 screenShareResponse:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 updateActivity:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 updateActivityImage:(id)a4 fromHandle:(id)a5;
- (void)handleConversation:(id)a3 updateGuestMode:(id)a4 fromHandle:(id)a5;
- (void)handleConversationHandoffRecommendationChangedNotification:(id)a3;
- (void)handleConversationHandoffRouteIdentifierChangedNotification:(id)a3;
- (void)handleDelegatedPendingMemberIfNecessary:(id)a3 conversation:(id)a4 groupUUID:(id)a5 fromHandle:(id)a6 transactionUUID:(id)a7;
- (void)handleEncryptedLetMeInRequest:(id)a3 fromHandle:(id)a4 context:(id)a5;
- (void)handleEncryptedLetMeInResponse:(id)a3 fromHandle:(id)a4 context:(id)a5;
- (void)handleEncryptedMessageWithin:(id)a3 fromHandle:(id)a4 context:(id)a5;
- (void)handleParticipantWithIdentifier:(unint64_t)a3 leftConversationWithGroupUUID:(id)a4 fromHandle:(id)a5 withGroupSessionUpdate:(id)a6;
- (void)handleParticipants:(id)a3 joinedConversationWithUpdate:(id)a4 joinContext:(id)a5 fromHandle:(id)a6 isFromPendingMessage:(BOOL)a7;
- (void)handleReceivedLMIDelegateMessage:(id)a3 fromHandle:(id)a4;
- (void)handleReceivedLetMeInRequest:(id)a3 toPseudonym:(id)a4 fromHandle:(id)a5 responseKeyData:(id)a6 dateInitiated:(id)a7;
- (void)handleReceivedLetMeInResponse:(id)a3 pendingConversation:(id)a4 fromHandle:(id)a5;
- (void)handleReceivedLinkCreatedOrChangedMessage:(id)a3 fromHandle:(id)a4;
- (void)handleReceivedLinkInvalidatedMessage:(id)a3 fromHandle:(id)a4;
- (void)handleReceivedUpdateJoinedMetadataMessage:(id)a3 fromHandle:(id)a4;
- (void)handleRemovedLinkDescriptors:(id)a3;
- (void)includeMetricsReport:(id)a3 onConversationWithUUID:(id)a4;
- (void)invalidateLink:(id)a3 deleteReason:(int64_t)a4 completionHandler:(id)a5;
- (void)joinConversationWithRequest:(id)a3;
- (void)joinExistingConversationWithUUID:(id)a3 context:(id)a4;
- (void)kickMember:(id)a3 conversationUUID:(id)a4;
- (void)launchApplicationForActivitySessionUUID:(id)a3 authorizedExternally:(BOOL)a4 forceBackground:(BOOL)a5 completionHandler:(id)a6;
- (void)leaveActivitySession:(id)a3 onConversationWithUUID:(id)a4;
- (void)leaveAllConversations;
- (void)leaveConversationWithUUID:(id)a3;
- (void)leaveConversationWithUUID:(id)a3 withContext:(id)a4;
- (void)linkManager:(id)a3 removedLinkDescriptorsFromIDSSignal:(id)a4;
- (void)linkManager:(id)a3 removedLinkDescriptorsFromValidityCheck:(id)a4;
- (void)linkManager:(id)a3 updatedLinkDescriptorsFromIDSSignal:(id)a4;
- (void)linkManager:(id)a3 updatedLinkDescriptorsFromSync:(id)a4;
- (void)linkSyncStateIncludeLinks:(BOOL)a3 WithCompletion:(id)a4;
- (void)lostAvailableAdvertisement:(id)a3;
- (void)markCollaborationWithIdentifierOpened:(id)a3 forConversationUUID:(id)a4;
- (void)maybeAddComplementaryAssociationVoucherFor:(id)a3 toLocalMemberOf:(id)a4 completion:(id)a5;
- (void)noticeManager:(id)a3 conversation:(id)a4 participant:(id)a5 addedNotice:(id)a6;
- (void)notifyDelegateOfHighlightAddedForConversation:(id)a3 highlightIdentifier:(id)a4 oldHighlightIdentifier:(id)a5 byParticipant:(id)a6 isFirstAdd:(BOOL)a7;
- (void)notifyDelegateOfHighlightRemovedFromConversation:(id)a3 highlightIdentifier:(id)a4 byParticipant:(id)a5;
- (void)notifyDelegatesOf:(id)a3 removedScreenShareRequest:(id)a4;
- (void)notifyDelegatesOfAVModeChanged:(unint64_t)a3 toAVMode:(unint64_t)a4 forConversation:(id)a5;
- (void)notifyDelegatesOfChangedLink:(id)a3 conversation:(id)a4;
- (void)notifyDelegatesOfChangedLinkDescriptors:(id)a3;
- (void)notifyDelegatesOfCreatedConversation:(id)a3;
- (void)notifyDelegatesOfInvalidLinkForPendingConversation:(id)a3;
- (void)notifyDelegatesOfLetMeInRejectedForPendingConversation:(id)a3;
- (void)notifyDelegatesOfMessage:(id)a3 fromHandle:(id)a4 forConversation:(id)a5 withUpdate:(id)a6 shouldRing:(BOOL)a7;
- (void)notifyDelegatesOfNewConversation:(id)a3 fromHandle:(id)a4;
- (void)notifyDelegatesOfRemoteScreenShareAttributes:(id)a3 isLocallySharing:(BOOL)a4;
- (void)notifyDelegatesOfRemoteScreenShareEndedWithReason:(id)a3;
- (void)notifyDelegatesOfRemovedConversationWithUUID:(id)a3;
- (void)notifyDelegatesOfTrackedPendingMember:(id)a3 forConversationLink:(id)a4;
- (void)notifyDelegatesOfUpdatePendingConversations;
- (void)pendingMembershipTracker:(id)a3 didTrack:(id)a4 forGroupUUID:(id)a5;
- (void)pendingMembershipTracker:(id)a3 willAdd:(id)a4 to:(id)a5 using:(id)a6;
- (void)pendingMembershipTracker:(id)a3 willNotAdd:(id)a4 to:(id)a5 using:(id)a6;
- (void)postEndEventForSession:(id)a3 originator:(id)a4 conversation:(id)a5;
- (void)postSessionStartedForSession:(id)a3 originator:(id)a4 conversation:(id)a5;
- (void)prepareAdditionOfActiveParticipant:(id)a3 toInvitedMembersForLinkOnConversation:(id)a4;
- (void)prepareConversationWithUUID:(id)a3 withHandoffContext:(id)a4;
- (void)presentDismissalAlertForActivitySessionWithUUID:(id)a3 onConversationWithUUID:(id)a4;
- (void)processGroupSessionParticipantUpdate:(id)a3 context:(id)a4;
- (void)processJoinUpdate:(id)a3 fromHandle:(id)a4 senderCorrelationIdentifier:(id)a5 isFromPendingMessage:(BOOL)a6;
- (void)processParticipantDataUpdate:(id)a3 fromHandle:(id)a4;
- (void)processProxiedGroupUpdate:(id)a3;
- (void)processProxiedMessage:(id)a3 fromID:(id)a4 context:(id)a5;
- (void)processProxiedResource:(id)a3 metadata:(id)a4 fromID:(id)a5 context:(id)a6;
- (void)processUpdateMembersUpdate:(id)a3 fromHandle:(id)a4;
- (void)processUpdatedNickname:(id)a3 forHandle:(id)a4 conversationUUID:(id)a5;
- (void)recoverLinksForPseudonyms:(id)a3;
- (void)refreshActiveParticipantsList;
- (void)registerMessagesGroupUUIDForConversationUUID:(id)a3;
- (void)rejectPendingMember:(id)a3 forConversationUUID:(id)a4;
- (void)removeAllConversations;
- (void)removeAllPendingConversations;
- (void)removeConversationNoticeWithUUID:(id)a3;
- (void)removeConversationWithUUID:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)removeHighlightIdentifier:(id)a3 forConversationUUID:(id)a4;
- (void)removeLink:(id)a3 reason:(int64_t)a4 withConversation:(id)a5;
- (void)removeNearbyMemberWithHandle:(id)a3 onConversationWithUUID:(id)a4;
- (void)removeNonIndefiniteLinks;
- (void)removePendingMemberMatchingActiveParticipant:(id)a3 conversation:(id)a4;
- (void)removePseudonym:(id)a3 forCallUUID:(id)a4;
- (void)removeRemoteMembers:(id)a3 fromConversationWithUUID:(id)a4;
- (void)removeScreenShareRequestFromParticipant:(id)a3 conversation:(id)a4 screenShareContext:(id)a5;
- (void)renewLink:(id)a3 expirationDate:(id)a4 reason:(unint64_t)a5 completionHandler:(id)a6;
- (void)renewLinkIfNeeded:(id)a3 completionHandler:(id)a4;
- (void)requestActivityAuthorizationForApplicationWithBundleIdentifier:(id)a3 overrides:(id)a4 completionHandler:(id)a5;
- (void)requestAuthorizationForActivity:(TUConversationActivity *)a3 withOptions:(unint64_t)a4 completionHandler:(id)a5;
- (void)requestLetMeInApprovalForPseudonym:(id)a3;
- (void)requestParticipant:(id)a3 toScreenShareWithRequest:(id)a4 conversation:(id)a5;
- (void)requestParticipantToShareScreen:(id)a3 forConversationUUID:(id)a4;
- (void)requestUpdatedActivitySessionContainers;
- (void)resetActivitySessionSceneAssociationsForBundleID:(id)a3;
- (void)retreiveActiveConversations;
- (void)revokeBackgroundPipAuthorizationsForBundleID:(id)a3;
- (void)sanitizeAndProcessParticipantUpdate:(id)a3 context:(id)a4;
- (void)scheduleConversationLinkCheckInInitial:(BOOL)a3;
- (void)screenSharingActivityManager:(id)a3 invalidatedSessionWithReason:(id)a4 wasLocallySharing:(BOOL)a5;
- (void)screenSharingActivityManager:(id)a3 receivedUpdatedRemoteAttributes:(id)a4 isLocallySharing:(BOOL)a5;
- (void)sendDataForScreenShareMessage:(id)a3 toParticipant:(id)a4 conversation:(id)a5 screenShareRequestHandle:(id)a6 allowMemberFallbackForMessage:(BOOL)a7;
- (void)sendDelegationMessageTo:(id)a3 conversation:(id)a4 link:(id)a5 transactionUUID:(id)a6 forMember:(id)a7;
- (void)sendInvitationMessageToMember:(id)a3 destinationID:(id)a4 invitationContext:(id)a5 forConversation:(id)a6 includeAllAttributes:(BOOL)a7 invitationPreferences:(id)a8 additionalOptions:(id)a9;
- (void)sendMessage:(id)a3 forConversation:(id)a4 withActivitySession:(id)a5 additionalOptions:(id)a6;
- (void)sendVideoUpgradeMessageforConversationWithUUID:(id)a3;
- (void)sendWithMessage:(id)a3 toHandle:(id)a4 fromHandle:(id)a5;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingPendingMessageOfType:(int64_t)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 receivedGroupSessionParticipantDataUpdate:(id)a5;
- (void)service:(id)a3 account:(id)a4 receivedGroupSessionParticipantUpdate:(id)a5 context:(id)a6;
- (void)setAudioInjectionAllowed:(BOOL)a3 forConversationWithUUID:(id)a4;
- (void)setAudioPaused:(BOOL)a3 forConversationWithUUID:(id)a4;
- (void)setConversationLink:(id)a3 forConversation:(id)a4 replyToCompletionHandler:(id)a5;
- (void)setDownlinkMuted:(BOOL)a3 forParticipants:(id)a4 inConversationWithUUID:(id)a5 completionHandler:(id)a6;
- (void)setDownlinkMuted:(BOOL)a3 forRemoteParticipantsOnConversationWithUUID:(id)a4;
- (void)setGridDisplayMode:(unint64_t)a3 forConversationWithUUID:(id)a4;
- (void)setIgnoreLetMeInRequests:(BOOL)a3 forConversationUUID:(id)a4;
- (void)setIsHeld:(BOOL)a3 forConversationUUID:(id)a4;
- (void)setIsNearbySharePlay:(BOOL)a3 forConversationWithUUID:(id)a4;
- (void)setLinkName:(id)a3 forConversationLink:(id)a4 completionHandler:(id)a5;
- (void)setLocalParticipantAudioVideoMode:(unint64_t)a3 forConversationUUID:(id)a4 presentationMode:(unint64_t)a5;
- (void)setLocalParticipantCluster:(id)a3 forConversationUUID:(id)a4;
- (void)setMessagesGroupName:(id)a3 onConversationWithUUID:(id)a4;
- (void)setPresentationRect:(CGRect)a3 forConversationWithUUID:(id)a4;
- (void)setPresentationState:(int)a3 forConversationWithUUID:(id)a4;
- (void)setProvider:(id)a3 forConversationUUID:(id)a4;
- (void)setRelaying:(BOOL)a3 forConversationWithUUID:(id)a4;
- (void)setScreenEnabled:(BOOL)a3 screenShareAttributes:(id)a4 forConversationWithUUID:(id)a5;
- (void)setScreenShareAttributes:(id)a3 forConversationWithUUID:(id)a4;
- (void)setScreening:(BOOL)a3 forConversationWithUUID:(id)a4;
- (void)setSharePlayHandedOff:(BOOL)a3 onConversationWithUUID:(id)a4;
- (void)setUplinkMuted:(BOOL)a3 forConversationWithUUID:(id)a4;
- (void)setUplinkMuted:(BOOL)a3 forPendingConversationWithUUID:(id)a4;
- (void)setUsingAirplay:(BOOL)a3 onActivitySession:(id)a4 onConversationWithUUID:(id)a5;
- (void)setVideo:(BOOL)a3 forConversationWithUUID:(id)a4;
- (void)setVideoEnabled:(BOOL)a3 forConversationWithUUID:(id)a4;
- (void)setVideoEnabled:(BOOL)a3 forPendingConversationWithUUID:(id)a4;
- (void)setVideoPaused:(BOOL)a3 forConversationWithUUID:(id)a4;
- (void)setupPendingConversationCleanupTimer;
- (void)startAudioForConversationWithUUID:(id)a3;
- (void)startTrackingCollaborationWithIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6 completionHandler:(id)a7;
- (void)stopAdvertisingGroupActivity:(id)a3 completionHandler:(id)a4;
- (void)systemStateObserver:(id)a3 screenSharingAllowedStateChanged:(BOOL)a4;
- (void)systemStateObserver:(id)a3 sharePlayAllowedStateChanged:(BOOL)a4;
- (void)updateConversationHandoffEligibility:(id)a3;
- (void)updateExternalParticipants:(id)a3;
- (void)updateLetMeInRequestState:(int64_t)a3 addLink:(id)a4 forConversationWithUUID:(id)a5;
- (void)updateLocalMemberNickname:(id)a3 conversationUUID:(id)a4;
- (void)updateMessagesGroupName:(id)a3 onConversationWithUUID:(id)a4;
- (void)updateMessagesGroupPhotoOnConversationWithUUID:(id)a3;
- (void)updateParticipantPresentationContexts:(id)a3 onConversationWithUUID:(id)a4;
- (void)updateRemoteControlStatus:(int64_t)a3 onConversationWithUUID:(id)a4;
@end

@implementation CSDConversationManager

- (void)refreshActiveParticipantsList
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Refreshing active pariticpants for active conversations", buf, 2u);
  }

  v4 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CA64;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (CSDConversationManager)initWithReportingController:(id)a3 cpApplicationController:(id)a4 invitationResolver:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.conversationmanager", 0);
  v12 = [[CSDConversationPersistenceController alloc] initWithQueue:v11];
  v13 = objc_alloc_init(CSDConversationLinkManager);
  v14 = objc_alloc_init(CSDPendingMembershipTracker);
  v15 = objc_alloc_init(TUFeatureFlags);
  v16 = [(CSDConversationManager *)self initWithQueue:v11 reportingController:v10 persistenceController:v12 linkManager:v13 cpApplicationController:v9 invitationResolver:v8 pendingMembershipTracker:v14 featureFlags:v15 applicationPolicyManager:0];

  return v16;
}

- (CSDConversationManager)init
{
  [(CSDConversationManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CSDConversationManager)initWithQueue:(id)a3 reportingController:(id)a4 persistenceController:(id)a5 linkManager:(id)a6 invitationResolver:(id)a7 pendingMembershipTracker:(id)a8 featureFlags:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  if ([v16 expanseEnabled])
  {
    v23 = objc_alloc_init(CPApplicationController);
  }

  else
  {
    v23 = 0;
  }

  v24 = +[CPApplicationPolicyManager sharedInstance];
  v25 = [(CSDConversationManager *)self initWithQueue:v22 reportingController:v21 persistenceController:v20 linkManager:v19 cpApplicationController:v23 invitationResolver:v18 pendingMembershipTracker:v17 featureFlags:v16 applicationPolicyManager:v24];

  return v25;
}

- (CSDConversationManager)initWithQueue:(id)a3 reportingController:(id)a4 persistenceController:(id)a5 linkManager:(id)a6 cpApplicationController:(id)a7 invitationResolver:(id)a8 pendingMembershipTracker:(id)a9 featureFlags:(id)a10 applicationPolicyManager:(id)a11
{
  v134 = a3;
  v126 = a4;
  v127 = a5;
  v128 = a6;
  v129 = a7;
  v130 = a8;
  v131 = a9;
  v132 = a10;
  v135 = a11;
  v159.receiver = self;
  v159.super_class = CSDConversationManager;
  v18 = [(CSDConversationManager *)&v159 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a3);
    objc_storeStrong(&v19->_reportingController, a4);
    objc_storeStrong(&v19->_linkManager, a6);
    [(CSDConversationLinkManager *)v19->_linkManager setDelegate:v19, v126, v127, v128, v129, v130, v131, v132];
    objc_storeStrong(&v19->_featureFlags, a10);
    objc_storeStrong(&v19->_invitationResolver, a8);
    objc_storeStrong(&v19->_pendingMembershipTracker, a9);
    [(CSDPendingMembershipTracker *)v19->_pendingMembershipTracker setMessenger:v19];
    [(CSDPendingMembershipTracker *)v19->_pendingMembershipTracker setDelegate:v19];
    v20 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v19->_serverBag;
    v19->_serverBag = v20;

    v22 = objc_alloc_init(TUCallProviderManager);
    callProviderManager = v19->_callProviderManager;
    v19->_callProviderManager = v22;

    v24 = objc_alloc_init(NSMutableSet);
    listeningOnIDSServiceIdentifiers = v19->_listeningOnIDSServiceIdentifiers;
    v19->_listeningOnIDSServiceIdentifiers = v24;

    v26 = +[NSMutableDictionary dictionary];
    mutableConversationsByUUID = v19->_mutableConversationsByUUID;
    v19->_mutableConversationsByUUID = v26;

    v28 = +[NSMutableDictionary dictionary];
    advertisementsBySessionUUID = v19->_advertisementsBySessionUUID;
    v19->_advertisementsBySessionUUID = v28;

    v30 = +[NSMutableDictionary dictionary];
    mutablePendingConversationsByPseudonym = v19->_mutablePendingConversationsByPseudonym;
    v19->_mutablePendingConversationsByPseudonym = v30;

    v32 = +[NSMutableDictionary dictionary];
    mutablePseudonymsByCallUUID = v19->_mutablePseudonymsByCallUUID;
    v19->_mutablePseudonymsByCallUUID = v32;

    v34 = +[NSMutableDictionary dictionary];
    mutablePseudonymsByRequestIdentifiers = v19->_mutablePseudonymsByRequestIdentifiers;
    v19->_mutablePseudonymsByRequestIdentifiers = v34;

    v36 = +[NSMutableDictionary dictionary];
    mutableSendDataCallbacksByRequestIdentifiers = v19->_mutableSendDataCallbacksByRequestIdentifiers;
    v19->_mutableSendDataCallbacksByRequestIdentifiers = v36;

    v38 = +[NSMapTable weakToStrongObjectsMapTable];
    delegateToQueue = v19->_delegateToQueue;
    v19->_delegateToQueue = v38;

    v40 = +[NSMutableDictionary dictionary];
    mutableConversationsRequestingUpgradeWithPreferences = v19->_mutableConversationsRequestingUpgradeWithPreferences;
    v19->_mutableConversationsRequestingUpgradeWithPreferences = v40;

    v42 = +[NSMutableDictionary dictionary];
    screenCaptureQueue = v19->_screenCaptureQueue;
    v19->_screenCaptureQueue = v42;

    v44 = +[NSMutableDictionary dictionary];
    outIdentifierToConversationInfo = v19->_outIdentifierToConversationInfo;
    v19->_outIdentifierToConversationInfo = v44;

    v46 = objc_alloc_init(NSMutableSet);
    incomingPendingMessageGUIDs = v19->_incomingPendingMessageGUIDs;
    v19->_incomingPendingMessageGUIDs = v46;

    v48 = +[NSMutableDictionary dictionary];
    groupUUIDToActivityIdentifierUUIDString = v19->_groupUUIDToActivityIdentifierUUIDString;
    v19->_groupUUIDToActivityIdentifierUUIDString = v48;

    v50 = [[CSDPendingConversationMessageHandler alloc] initWithQueue:v19->_queue serverBag:v19->_serverBag featureFlags:v19->_featureFlags];
    pendingConversationMessageHandler = v19->_pendingConversationMessageHandler;
    v19->_pendingConversationMessageHandler = v50;

    v52 = [[CSDConversationNoticeManager alloc] initWithDelegate:v19 queue:v19->_queue];
    conversationNoticeManger = v19->_conversationNoticeManger;
    v19->_conversationNoticeManger = v52;

    v54 = +[CSDConversationProviderManager sharedInstance];
    conversationProviderManager = v19->_conversationProviderManager;
    v19->_conversationProviderManager = v54;

    lockdownModeEnabled = v19->_lockdownModeEnabled;
    v19->_lockdownModeEnabled = &stru_10061CA30;

    isConversationRelayPreferred = v19->_isConversationRelayPreferred;
    v19->_isConversationRelayPreferred = &stru_10061CA50;

    v58 = TUSimulatedModeEnabled();
    v59 = &off_1006166A8;
    if (!v58)
    {
      v59 = off_100616618;
    }

    v60 = [(__objc2_class *)*v59 sharedInstance];
    service = v19->_service;
    v19->_service = v60;

    v62 = sub_100004778();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = v19->_service;
      *buf = 138412290;
      v161 = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Initializing CSDConversationManager for service: %@", buf, 0xCu);
    }

    v64 = [CSDVoucherManagerImpl alloc];
    v65 = [(CSDIDSService *)v19->_service service];
    v66 = [(CSDVoucherManagerImpl *)v64 initWithIdsService:v65];
    voucherManager = v19->_voucherManager;
    v19->_voucherManager = v66;

    v68 = [[CSDParticipantUpdateSanitizerImpl alloc] initWithVoucherManager:v19->_voucherManager];
    participantUpdateSanitizer = v19->_participantUpdateSanitizer;
    v19->_participantUpdateSanitizer = v68;

    if (v135)
    {
      v133 = v135;
    }

    else
    {
      v133 = +[CPApplicationPolicyManager sharedInstance];
    }

    v70 = objc_alloc_init(CSDConversationManagerDataSourceObserverStorage);
    observerStorage = v19->_observerStorage;
    v19->_observerStorage = v70;

    objc_storeStrong(&v19->_cpApplicationController, a7);
    v72 = [[CPSystemStateObserver alloc] initWithQueue:v19->_queue];
    sharePlaySystemStateObserver = v19->_sharePlaySystemStateObserver;
    v19->_sharePlaySystemStateObserver = v72;

    [(CPSystemStateObserver *)v19->_sharePlaySystemStateObserver addObserver:v19 withQueue:v19->_queue];
    v74 = [[CPActivityAuthorizationManager alloc] initWithDataSource:v19 queue:v19->_queue appPolicyManager:v133];
    activityAuthorizationManager = v19->_activityAuthorizationManager;
    v19->_activityAuthorizationManager = v74;

    v76 = [[CSDCompositeActivitySessionContainerProvider alloc] initWithConversationManagerDataSourceObservers:v19->_observerStorage conversationManagerDataSource:v19 activityAuthorizer:v19];
    activitySessionContainerProvider = v19->_activitySessionContainerProvider;
    v19->_activitySessionContainerProvider = v76;

    [(CSDCompositeActivitySessionContainerProvider *)v19->_activitySessionContainerProvider registerChildProvider:v19];
    v78 = [[CSDSharePlayAvailabilityManager alloc] initWithMessageProvider:v19 referenceDateProvider:&stru_10061CA90 remoteAvailabilityThresholdSeconds:[(CSDSharedConversationServerBag *)v19->_serverBag sharePlayTelephonyRemoteAvailabilityThresholdSeconds] requestToScreenShareEnabled:[(TUFeatureFlags *)v19->_featureFlags requestToScreenShareEnabled] relaySupportEnabled:[(TUFeatureFlags *)v19->_featureFlags sharePlayInCallsForRelayEnabled]];
    sharePlayAvailabilityManager = v19->_sharePlayAvailabilityManager;
    v19->_sharePlayAvailabilityManager = v78;

    v80 = [(CSDConversationManager *)v19 featureFlags];
    v81 = [v80 wagoneerEnabled];

    if (v81)
    {
      v82 = sub_100004778();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Initializing CSDNearbySessionManager", buf, 2u);
      }

      v83 = [CSDNearbySessionManager alloc];
      v84 = objc_alloc_init(NSUUID);
      v85 = [(CSDNearbySessionManager *)v83 initWithAdvertisementID:v84];
      nearbySessionManager = v19->_nearbySessionManager;
      v19->_nearbySessionManager = v85;

      [(CSDNearbySessionManager *)v19->_nearbySessionManager setDelegate:v19];
    }

    v87 = [[CSDScreenSharingActivityManager alloc] initWithFeatureFlags:v19->_featureFlags];
    screenSharingActivityManager = v19->_screenSharingActivityManager;
    v19->_screenSharingActivityManager = v87;

    [(CSDScreenSharingActivityManager *)v19->_screenSharingActivityManager setDelegate:v19];
    [v133 addDelegate:v19 withQueue:v19->_queue];
    v89 = [(CSDConversationManager *)v19 featureFlags];
    v90 = [v89 sharePlayInFaceTimeCanvasEnabled];

    if (v90)
    {
      v91 = [[CSDFileTransferController alloc] initWithService:v19->_service];
      fileTransferController = v19->_fileTransferController;
      v19->_fileTransferController = v91;

      [(CSDFileTransferController *)v19->_fileTransferController setDelegate:v19];
    }

    v93 = +[NSMutableDictionary dictionary];
    resourceTransferCallbacks = v19->_resourceTransferCallbacks;
    v19->_resourceTransferCallbacks = v93;

    v95 = [[_TtC13callservicesd28CSDCollaborationStateManager alloc] initWithQueue:v134];
    collaborationStateManager = v19->_collaborationStateManager;
    v19->_collaborationStateManager = v95;

    [(CSDCollaborationStateManager *)v19->_collaborationStateManager setDelegate:v19];
    v97 = objc_alloc_init(CSDSecureImageTranscoder);
    imageTranscoder = v19->_imageTranscoder;
    v19->_imageTranscoder = v97;

    objc_initWeak(buf, v19);
    queue = v19->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015DC30;
    block[3] = &unk_10061CAB8;
    v100 = v19;
    v157 = v100;
    objc_copyWeak(&v158, buf);
    dispatch_sync(queue, block);
    objc_storeStrong(&v100->_persistenceController, a5);
    v154[0] = _NSConcreteStackBlock;
    v154[1] = 3221225472;
    v154[2] = sub_10015DE50;
    v154[3] = &unk_10061CAE0;
    objc_copyWeak(&v155, buf);
    v101 = objc_retainBlock(v154);
    groupSessionProviderCreationBlock = v100->_groupSessionProviderCreationBlock;
    v100->_groupSessionProviderCreationBlock = v101;

    getPersonalNicknameBlock = v100->_getPersonalNicknameBlock;
    v100->_getPersonalNicknameBlock = &stru_10061CB20;

    v152[0] = _NSConcreteStackBlock;
    v152[1] = 3221225472;
    v152[2] = sub_10015DFE4;
    v152[3] = &unk_10061CB48;
    objc_copyWeak(&v153, buf);
    v104 = objc_retainBlock(v152);
    conversationCreationBlock = v100->_conversationCreationBlock;
    v100->_conversationCreationBlock = v104;

    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_10015E2A4;
    v150[3] = &unk_10061CB70;
    objc_copyWeak(&v151, buf);
    v106 = objc_retainBlock(v150);
    sendDataBlock = v100->_sendDataBlock;
    v100->_sendDataBlock = v106;

    v148[0] = _NSConcreteStackBlock;
    v148[1] = 3221225472;
    v148[2] = sub_10015E8B4;
    v148[3] = &unk_10061CB98;
    objc_copyWeak(&v149, buf);
    v108 = objc_retainBlock(v148);
    notifyPendingMembershipTrackerOfDelegatedMember = v100->_notifyPendingMembershipTrackerOfDelegatedMember;
    v100->_notifyPendingMembershipTrackerOfDelegatedMember = v108;

    v146[0] = _NSConcreteStackBlock;
    v146[1] = 3221225472;
    v146[2] = sub_10015E988;
    v146[3] = &unk_10061CBC0;
    objc_copyWeak(&v147, buf);
    v110 = objc_retainBlock(v146);
    activeLocalHandlesForProvider = v100->_activeLocalHandlesForProvider;
    v100->_activeLocalHandlesForProvider = v110;

    v144[0] = _NSConcreteStackBlock;
    v144[1] = 3221225472;
    v144[2] = sub_10015EBC4;
    v144[3] = &unk_10061CBE8;
    objc_copyWeak(&v145, buf);
    v112 = objc_retainBlock(v144);
    activeLocalHandles = v100->_activeLocalHandles;
    v100->_activeLocalHandles = v112;

    v142[0] = _NSConcreteStackBlock;
    v142[1] = 3221225472;
    v142[2] = sub_10015EC54;
    v142[3] = &unk_10061CC10;
    objc_copyWeak(&v143, buf);
    v114 = objc_retainBlock(v142);
    localCallerID = v100->_localCallerID;
    v100->_localCallerID = v114;

    v140[0] = _NSConcreteStackBlock;
    v140[1] = 3221225472;
    v140[2] = sub_10015ED20;
    v140[3] = &unk_10061CC38;
    objc_copyWeak(&v141, buf);
    v116 = objc_retainBlock(v140);
    senderIdentitiesBlock = v100->_senderIdentitiesBlock;
    v100->_senderIdentitiesBlock = v116;

    v138[0] = _NSConcreteStackBlock;
    v138[1] = 3221225472;
    v138[2] = sub_10015ED94;
    v138[3] = &unk_10061CC60;
    objc_copyWeak(&v139, buf);
    v118 = objc_retainBlock(v138);
    localCallerIDForProvider = v100->_localCallerIDForProvider;
    v100->_localCallerIDForProvider = v118;

    v136[0] = _NSConcreteStackBlock;
    v136[1] = 3221225472;
    v136[2] = sub_10015EFE0;
    v136[3] = &unk_10061CC88;
    objc_copyWeak(&v137, buf);
    v120 = objc_retainBlock(v136);
    isHandleEligibleForScreenSharingRequestsBlock = v100->_isHandleEligibleForScreenSharingRequestsBlock;
    v100->_isHandleEligibleForScreenSharingRequestsBlock = v120;

    v122 = +[NSNotificationCenter defaultCenter];
    [v122 addObserver:v100 selector:"handleConversationHandoffRecommendationChangedNotification:" name:@"CSDUserActivityConversationHandoffRecommendationChangedNotification" object:0];

    v123 = +[NSNotificationCenter defaultCenter];
    v124 = +[CSDHandoffAudioController routeIdentifierChangedNotification];
    [v123 addObserver:v100 selector:"handleConversationHandoffRouteIdentifierChangedNotification:" name:v124 object:0];

    objc_destroyWeak(&v137);
    objc_destroyWeak(&v139);
    objc_destroyWeak(&v141);
    objc_destroyWeak(&v143);
    objc_destroyWeak(&v145);
    objc_destroyWeak(&v147);
    objc_destroyWeak(&v149);
    objc_destroyWeak(&v151);
    objc_destroyWeak(&v153);
    objc_destroyWeak(&v155);
    objc_destroyWeak(&v158);

    objc_destroyWeak(buf);
  }

  return v19;
}

- (BOOL)_shouldNotifyDelegatesOfMessage:(id)a3 localHandleAdded:(BOOL)a4 isFromStorage:(BOOL)a5
{
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    if ([v7 type])
    {
      v9 = !a5;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  if ([v8 type] == 3)
  {
    v10 = a4 && v9;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (BOOL)_shouldRingForIncomingCallWithHandle:(id)a3 conversation:(id)a4 isFromPendingMessage:(BOOL)a5 isOldMessage:(BOOL)a6 message:(id)a7
{
  v73 = a5;
  v74 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [(__CFString *)v11 provider];
  v75 = v10;
  v14 = [(CSDConversationManager *)self isValidLocalHandle:v10 forProvider:v13];

  v15 = self;
  v16 = [(CSDConversationManager *)self invitationResolver];
  v17 = [(__CFString *)v11 tuConversation];
  v18 = [(__CFString *)v11 localMember];
  v19 = [v18 handle];
  v20 = [v12 tuInvitationPreferences];
  v21 = [v16 shouldShowInvitationRingingUIForConversation:v17 handle:v19 invitationMessagePreferences:v20];

  v76 = v11;
  v22 = [(__CFString *)v11 invitationPreferences];
  v23 = [v12 tuInvitationPreferences];
  v24 = [v22 isEqualToSet:v23];

  v25 = sub_100004778();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [(__CFString *)v11 invitationPreferences];
    v27 = [v12 tuInvitationPreferences];
    *buf = 138412546;
    v78 = v26;
    v79 = 2112;
    v80 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "conversation.invitationPreferences: %@, message.tuInvitationPreferences: %@", buf, 0x16u);
  }

  v28 = [v12 tuInvitationPreferences];
  if (([v28 count] == 0) | v24 & 1)
  {
    v29 = [v12 type];

    v30 = v15;
    if (v29 == 1)
    {
      v31 = v12;
      v32 = sub_100004778();
      v33 = v75;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v12 tuInvitationPreferences];
        v35 = [v34 count];
        v36 = @"NO";
        if (v24)
        {
          v36 = @"YES";
        }

        *buf = 134218242;
        v78 = v35;
        v79 = 2112;
        v80 = v36;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "setting hasInvitationPreference to NO, message.tuInvitationPreferences.count: %ld, invitationPreferencesEqual %@", buf, 0x16u);
      }

      v37 = 0;
      goto LABEL_18;
    }
  }

  else
  {

    v30 = v15;
  }

  v33 = v75;
  v31 = v12;
  if (v21)
  {
    v37 = 0;
    goto LABEL_19;
  }

  v32 = sub_100004778();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v38 = @"YES";
    if (!v14)
    {
      v38 = @"NO";
    }

    *buf = 138412546;
    v78 = v38;
    v79 = 2112;
    v80 = @"NO";
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "isValidLocalHandle: %@, shouldShowInvitationRingingUIForConversation: %@", buf, 0x16u);
  }

  v37 = 1;
LABEL_18:

LABEL_19:
  v39 = [(CSDConversationManager *)v30 featureFlags];
  v40 = ([v39 oneToOneFaceTimeMyselfEnabled] ^ 1) & v14;

  if (v40 == 1)
  {
    v41 = sub_100004778();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LOBYTE(v46) = 0;
      v42 = v76;
      goto LABEL_57;
    }

    v42 = v76;
    v43 = [(__CFString *)v76 remoteMembers];
    v44 = [v43 count];
    *buf = 138412546;
    v78 = @"YES";
    v79 = 2048;
    v80 = v44;
    v45 = "isValidLocalHandle: %@, remoteMember count: %lu, no need to ring";
    goto LABEL_22;
  }

  v47 = [(CSDConversationManager *)v30 featureFlags];
  if ([v47 oneToOneFaceTimeMyselfEnabled] & v14)
  {
    v42 = v76;
    v48 = [(__CFString *)v76 remoteMembers];
    v49 = [v48 count];

    if (v49 >= 2)
    {
      v41 = sub_100004778();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v43 = [(__CFString *)v76 remoteMembers];
      v50 = [v43 count];
      *buf = 138412546;
      v78 = @"YES";
      v79 = 2048;
      v80 = v50;
      v45 = "isValidLocalHandle: %@, remoteMember count: %lu, should not ring";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v45, buf, 0x16u);

LABEL_23:
      LOBYTE(v46) = 0;
      goto LABEL_57;
    }
  }

  else
  {

    v42 = v76;
  }

  v51 = v73;
  if (((v37 | v73) & 1) == 0 && v74)
  {
    if (([(__CFString *)v42 isOneToOneModeEnabled]& 1) == 0)
    {
      v52 = [(__CFString *)v42 activeParticipantDestinationsByIdentifier];
      v53 = [v52 count];

      if (v53)
      {
        goto LABEL_34;
      }
    }

LABEL_42:
    v46 = 0;
    goto LABEL_44;
  }

  if ((v37 | v73))
  {
    goto LABEL_42;
  }

LABEL_34:
  if ([v31 type] == 1)
  {
    v54 = [(__CFString *)v42 remoteMembers];
    if ([v54 count]== 1)
    {
      v55 = [(__CFString *)v42 activeRemoteParticipants];
      if (![v55 count])
      {
        v63 = [(__CFString *)v42 localMember];
        v64 = [v63 handle];
        v65 = [v33 isEquivalentToHandle:v64];

        if (!v65)
        {
          v46 = 1;
          goto LABEL_40;
        }

        v66 = [(CSDConversationManager *)v30 featureFlags];
        if ([v66 oneToOneFaceTimeMyselfEnabled])
        {
          v67 = [(__CFString *)v42 remoteMembers];
          v68 = [v67 anyObject];
          v69 = [v68 handle];
          v70 = [(__CFString *)v42 localMember];
          v71 = [v70 handle];
          v72 = [v69 isEqualToHandle:v71];

          if (v72)
          {
            v54 = sub_100004778();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "U+1 invite FaceTime myself", buf, 2u);
            }

            goto LABEL_38;
          }
        }

        else
        {
        }

        v54 = sub_100004778();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v78 = v42;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "This is a U+1 invite sent by the local account from a different device, not ringing on the local device for conversation: %@", buf, 0xCu);
        }

        v46 = 0;
        goto LABEL_39;
      }
    }

LABEL_38:
    v46 = 1;
LABEL_39:

LABEL_40:
    v51 = v73;
    goto LABEL_44;
  }

  v46 = 1;
LABEL_44:
  v41 = sub_100004778();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v56 = @"YES";
    if (v46)
    {
      v57 = @"YES";
    }

    else
    {
      v57 = @"NO";
    }

    if (v51)
    {
      v58 = @"YES";
    }

    else
    {
      v58 = @"NO";
    }

    if (v74)
    {
      v59 = @"YES";
    }

    else
    {
      v59 = @"NO";
    }

    if (![(__CFString *)v42 isOneToOneModeEnabled])
    {
      v56 = @"NO";
    }

    v60 = [(__CFString *)v42 activeParticipantDestinationsByIdentifier];
    v61 = [v60 count];
    *buf = 138413314;
    v78 = v57;
    v79 = 2112;
    v80 = v58;
    v81 = 2112;
    v82 = v59;
    v83 = 2112;
    v84 = v56;
    v85 = 2048;
    v86 = v61;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "shouldRingForIncomingCall: %@, isFromPendingMessage: %@, isOldMessage: %@, isOneToOneModeEnabled: %@, activeParticipantDestinationsByIdentifier.count: %ld", buf, 0x34u);
  }

LABEL_57:

  return v46;
}

- (id)_kickedOrRejectedMemberForHandle:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [v7 kickedMembers];
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v32 + 1) + 8 * v13);
      v15 = [v14 handle];
      v16 = [v15 isEquivalentToHandle:v6];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v24 = sub_100004778();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v25 = [v7 kickedMembers];
    *buf = 138412546;
    v38 = v6;
    v39 = 2112;
    v40 = v25;
    v26 = "handle %@ has already been kicked, conversation.kickedMembers: %@";
  }

  else
  {
LABEL_9:

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [v7 rejectedMembers];
    v17 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (!v17)
    {
LABEL_17:
      v23 = 0;
      goto LABEL_24;
    }

    v18 = v17;
    v19 = *v29;
LABEL_11:
    v20 = 0;
    while (1)
    {
      if (*v29 != v19)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v28 + 1) + 8 * v20);
      v21 = [v14 handle];
      v22 = [v21 isEquivalentToHandle:v6];

      if (v22)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v18)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    v24 = sub_100004778();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v25 = [v7 rejectedMembers];
    *buf = 138412546;
    v38 = v6;
    v39 = 2112;
    v40 = v25;
    v26 = "handle %@ has already been rejected, conversation.rejectedMembers: %@";
  }

  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);

LABEL_23:
  v23 = v14;
LABEL_24:

  return v23;
}

- (BOOL)_isActiveRemoteMemberForHandle:(id)a3 conversation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v6 remoteMembers];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v23 = *v30;
    v24 = v6;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v29 + 1) + 8 * i) handle];
        v13 = [v12 isEquivalentToHandle:v5];

        if (v13)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v14 = [v6 activeRemoteParticipants];
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
            while (2)
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [*(*(&v25 + 1) + 8 * j) handle];
                v20 = [v19 isEquivalentToHandle:v5];

                if (v20)
                {

                  v21 = 1;
                  v6 = v24;
                  goto LABEL_21;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v10 = v23;
          v6 = v24;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v21 = 0;
    }

    while (v9);
  }

  else
  {
    v21 = 0;
  }

LABEL_21:

  return v21;
}

- (id)_inactiveRemoteMemberForHandle:(id)a3 conversation:(id)a4
{
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a4 remoteMembers];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 handle];
        v12 = [v11 isEquivalentToHandle:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)_shouldSkipManualApprovalForHandle:(id)a3 conversation:(id)a4 responseKeyData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(CSDConversationManager *)self _kickedOrRejectedMemberForHandle:v8 conversation:v9];
  if (v12)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Let me in requestor %@ is a handle that has already been kicked/rejected", buf, 0xCu);
    }

    [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:v12 forConversation:v9 usingResponseKeyData:v10 approved:0 callback:0];
LABEL_9:
    v16 = 1;
    goto LABEL_10;
  }

  if ([(CSDConversationManager *)self _isActiveRemoteMemberForHandle:v8 conversation:v9])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 remoteMembers];
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Let me in requestor %@ is active in the session. Ignore Let Me In Request,  conversation.remoteMembers: %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v18 = [(CSDConversationManager *)self _inactiveRemoteMemberForHandle:v8 conversation:v9];
  v16 = v18 != 0;
  if (v18)
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v9 remoteMembers];
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Let me in requestor %@ is a handle that is already a member of the call; Let Me In not required, conversation.remoteMembers: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001603B0;
    v21[3] = &unk_10061CCB0;
    objc_copyWeak(&v24, buf);
    v22 = v18;
    v23 = v9;
    [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:v22 forConversation:v23 usingResponseKeyData:v10 approved:1 callback:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

LABEL_10:
  return v16;
}

- (BOOL)shouldIgnoreMessageForConversation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (![v4 state])
    {
      v6 = (*(self->_isConversationRelayPreferred + 2))();
      v7 = sub_100004778();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          LOWORD(v19) = 0;
          v9 = "shouldIgnoreMessageForConversation: Ignore the message, will process messages through relay path";
LABEL_9:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v19, 2u);
          goto LABEL_10;
        }

        goto LABEL_10;
      }

      if (v8)
      {
        v15 = +[CSDCallCapabilities sharedInstance];
        v16 = [v15 callCapabilitiesState];
        v19 = 67109120;
        LODWORD(v20) = [v16 relayCallingAvailability];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "shouldIgnoreMessageForConversation: Still process the message: %d", &v19, 8u);
      }
    }

    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 state];
      v19 = 134217984;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "shouldIgnoreMessageForConversation, state: %ld", &v19, 0xCu);
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v10 = (*(self->_isConversationRelayPreferred + 2))();
  v7 = sub_100004778();
  v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v11)
    {
      v13 = +[CSDCallCapabilities sharedInstance];
      v14 = [v13 callCapabilitiesState];
      v19 = 67109120;
      LODWORD(v20) = [v14 relayCallingAvailability];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "shouldIgnoreMessageForConversation: still process message: %d", &v19, 8u);
    }

    goto LABEL_18;
  }

  if (v11)
  {
    LOWORD(v19) = 0;
    v9 = "shouldIgnoreMessageForConversation: Will process message in relay session";
    goto LABEL_9;
  }

LABEL_10:
  v12 = 1;
LABEL_19:

  return v12;
}

- (BOOL)isValidLocalHandle:(id)a3 forProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self activeLocalHandles];
  v9 = v8[2]();
  v10 = [(CSDConversationManager *)self isValidLocalHandle:v6 activeLocalHandles:v9 provider:0];

  v11 = [(CSDConversationManager *)self featureFlags];
  if ([v11 groupFacetimeAsAServiceEnabled])
  {
    v12 = [(CSDConversationManager *)self activeLocalHandlesForProvider];
    v13 = (v12)[2](v12, v7);
    v10 = [(CSDConversationManager *)self isValidLocalHandle:v6 activeLocalHandles:v13 provider:v7];
  }

  return v10;
}

- (BOOL)isValidLocalHandle:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self activeLocalHandles];
  v6 = v5[2]();
  LOBYTE(self) = [(CSDConversationManager *)self isValidLocalHandle:v4 activeLocalHandles:v6 provider:0];

  return self;
}

- (BOOL)isValidLocalHandle:(id)a3 activeLocalHandles:(id)a4 provider:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([a4 containsObject:v8])
  {
    v10 = 1;
  }

  else
  {
    v10 = [(CSDConversationManager *)self isHandleLocalPseudonym:v8 provider:v9];
  }

  return v10;
}

- (BOOL)isHandleLocalPseudonym:(id)a3 provider:(id)a4
{
  v6 = a4;
  v7 = [a3 value];
  LOBYTE(self) = [(CSDConversationManager *)self isHandleStringLocalPseudonym:v7 provider:v6];

  return self;
}

- (BOOL)isHandleStringLocalPseudonym:(id)a3 provider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if ([v8 destinationIdIsPseudonym])
  {
    v9 = [[IDSURI alloc] initWithPrefixedURI:v8];
    v10 = [(CSDConversationManager *)self featureFlags];
    v11 = [v10 groupFacetimeAsAServiceEnabled];

    if (v7 && v11)
    {
      v12 = +[CSDConversationProviderManager sharedInstance];
      v13 = [v12 serviceForProvider:v7];
    }

    else
    {
      v13 = [(CSDConversationManager *)self service];
    }

    v15 = [v13 service];
    v16 = [v15 pseudonymForPseudonymURI:v9];
    v14 = v16 != 0;

    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v13 service];
      v19 = [(CSDConversationManager *)self service];
      v20 = [v13 service];
      v21 = [v20 pseudonymForPseudonymURI:v9];
      v25 = 138413314;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "destinationID: %@, uri: %@, service: %@, self.service: %@, pseudonym: %@", &v25, 0x34u);
    }
  }

  else
  {
    v14 = 0;
  }

  v22 = sub_100004778();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"NO";
    v25 = 138412802;
    v26 = v8;
    v27 = 2112;
    if (v14)
    {
      v23 = @"YES";
    }

    v28 = v23;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "destinationID: %@, isLocalPseudonym: %@, provider: %@", &v25, 0x20u);
  }

  return v14;
}

- (id)senderIdentityUUIDForCallerIDHandle:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CSDConversationManager *)self senderIdentitiesBlock];
  v6 = v5[2]();

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 handle];
        v12 = [v11 isEqualToHandle:v4];

        if (v12)
        {
          v7 = [v10 UUID];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)callerIDHandleForSenderIdentityUUID:(id)a3 callerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(CSDConversationManager *)self senderIdentitiesBlock];
  v9 = v8[2]();

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 UUID];
        v15 = [v14 isEqual:v6];

        if (v15)
        {
          if ([v7 length])
          {
            v16 = [v13 handle];
            v17 = [v16 value];
            v18 = [v17 isEqualToString:v7];

            if (v18)
            {
              v10 = [v13 handle];
              goto LABEL_13;
            }
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v26 = v7;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "callerIDHandleForSenderIdentityUUID: callerID: %@ handle: %@ for %@", buf, 0x20u);
  }

  return v10;
}

- (id)callerIDForLocalMember:(id)a3 forProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 handle];
  LODWORD(self) = [(CSDConversationManager *)self isValidLocalHandle:v8 forProvider:v7];

  if (self)
  {
    v9 = [v6 handle];
    v10 = [v9 normalizedValue];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004767E8();
    }

    v10 = &stru_100631E68;
  }

  return v10;
}

- (id)localMemberForProvider:(id)a3 fromHandle:(id)a4 members:(id)a5 lightweightMembers:(id)a6 activeLocalHandles:(id)a7
{
  v44 = a3;
  v42 = a4;
  v12 = a5;
  v13 = a6;
  v43 = a7;
  v41 = v12;
  v14 = [NSMutableSet setWithSet:v12];
  v40 = v13;
  [v14 unionSet:v13];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v50;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v50 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v49 + 1) + 8 * v19);
      v21 = [v20 handle];
      v22 = [(CSDConversationManager *)self localCallerIDForProvider];
      v23 = (v22)[2](v22, v44);
      v24 = [v21 isEqual:v23];

      if (v24)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v17)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v25 = v20;

    if (!v25)
    {
      goto LABEL_12;
    }

    v26 = 0;
  }

  else
  {
LABEL_9:

LABEL_12:
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v27 = v15;
    v28 = [v27 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v28)
    {
      v29 = v28;
      v26 = 0;
      v30 = *v46;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v46 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v45 + 1) + 8 * i);
          v33 = [v32 handle];
          v34 = [(CSDConversationManager *)self isValidLocalHandle:v33 activeLocalHandles:v43 provider:v44];

          if (v34)
          {
            v35 = [v32 handle];
            v36 = [v35 isEqualToHandle:v42];

            v25 = v32;
            if (!v36)
            {
              goto LABEL_23;
            }

            v26 = v25;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v29);
      v25 = 0;
LABEL_23:

      if (v25)
      {
        v37 = 1;
      }

      else
      {
        v37 = v26 == 0;
      }

      if (!v37)
      {
        v26 = v26;
        v25 = v26;
      }
    }

    else
    {

      v26 = 0;
      v25 = 0;
    }
  }

  v38 = v25;

  return v25;
}

- (id)createConversationWithUUID:(id)a3 groupUUID:(id)a4 messagesGroupUUID:(id)a5 locallyCreated:(BOOL)a6 localMember:(id)a7 initiator:(id)a8 remoteMembers:(id)a9 pendingMembers:(id)a10 otherInvitedHandles:(id)a11 remotePushTokens:(id)a12 lightweightMembers:(id)a13 activity:(id)a14 link:(id)a15 report:(id)a16 fromStorage:(BOOL)a17 avMode:(unint64_t)a18 presentationMode:(unint64_t)a19 provider:(id)a20 screenSharingRequest:(id)a21 isInitiator:(BOOL)a22 isOldMessage:(BOOL)a23
{
  v120 = a6;
  v134 = a3;
  v135 = a4;
  v131 = a5;
  v144 = a7;
  v125 = a8;
  v27 = a9;
  v124 = a10;
  v123 = a11;
  v136 = a12;
  v28 = a13;
  v29 = self;
  v121 = a14;
  v133 = a15;
  v128 = a16;
  v30 = a20;
  v130 = a21;
  v31 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v31);

  v32 = sub_100004778();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v162 = v134;
    v163 = 2112;
    v164 = v135;
    v165 = 2112;
    v166 = v144;
    v167 = 2048;
    v168 = a18;
    v169 = 1024;
    v170 = a17;
    v171 = 2112;
    v172 = v128;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "UUID: %@ groupUUID: %@ localMember: %@ avMode: %lu, fromStorage: %d report: %@", buf, 0x3Au);
  }

  v33 = sub_100004778();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v162 = v134;
    v163 = 2112;
    v164 = v27;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "UUID: %@ remoteMembers: %@", buf, 0x16u);
  }

  v145 = +[NSMutableSet set];
  v129 = v30;
  v122 = v28;
  if ([v136 count])
  {
    v34 = sub_100004778();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v136 allObjects];
      v36 = TULoggableStringForHandles();
      *buf = 138412546;
      v162 = v134;
      v163 = 2112;
      v164 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Asked to invite specific conversationUUID: %@ participantDestinationIDs: %@", buf, 0x16u);
    }

    v37 = [v136 allObjects];
    [v145 addObjectsFromArray:v37];
  }

  else
  {
    if (v28)
    {
      v38 = [v27 setByAddingObjectsFromSet:v28];
    }

    else
    {
      v38 = v27;
    }

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v37 = v38;
    v39 = [v37 countByEnumeratingWithState:&v154 objects:v160 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v155;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v155 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = [IDSDestination destinationWithTUConversationMember:*(*(&v154 + 1) + 8 * i)];
          [v145 addObject:v43];
        }

        v40 = [v37 countByEnumeratingWithState:&v154 objects:v160 count:16];
      }

      while (v40);
    }

    v30 = v129;
  }

  if ([v27 count] != 1)
  {
    goto LABEL_23;
  }

  v44 = [(CSDConversationManager *)self featureFlags];
  if ([v44 uPlusOneSessionWithCapabilitiesEnabled])
  {
    v45 = [(CSDConversationManager *)self serverBag];
    v46 = [v45 isUPlusOneSessionCapabilitiesEnabled];

    if (v46)
    {
LABEL_23:
      v47 = [IDSDestination destinationWithTUConversationMember:v144];
      [v145 addObject:v47];
      goto LABEL_52;
    }
  }

  else
  {
  }

  v48 = [(CSDConversationManager *)self pushTokenForSelf];
  v49 = [v144 idsDestination];
  v47 = IDSCopyIDForTokenWithID();

  v50 = [(CSDConversationManager *)self service];
  v51 = IDSRegistrationPropertySupportsSelfOneToOneInvites;
  v52 = [v144 handle];
  v53 = [v50 deviceDestinationsWithCapability:v51 localHandle:v52];

  v54 = sub_100004778();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = TULoggableStringForHandles();
    *buf = 138412546;
    v162 = v47;
    v163 = 2112;
    v164 = v55;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "localDeviceDestination: %@ oneToOneModeCapableLocalDestinations: %@", buf, 0x16u);
  }

  v30 = v129;
  if ([v53 count])
  {
    v118 = v47;
    v126 = v27;
    v56 = +[NSMutableSet set];
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    obj = v53;
    v140 = [obj countByEnumeratingWithState:&v150 objects:v159 count:16];
    if (v140)
    {
      v138 = *v151;
      do
      {
        v57 = 0;
        do
        {
          if (*v151 != v138)
          {
            objc_enumerationMutation(obj);
          }

          v142 = v57;
          v58 = *(*(&v150 + 1) + 8 * v57);
          v146 = 0u;
          v147 = 0u;
          v148 = 0u;
          v149 = 0u;
          v59 = [v58 destinationURIs];
          v60 = [v59 countByEnumeratingWithState:&v146 objects:v158 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = *v147;
            do
            {
              for (j = 0; j != v61; j = j + 1)
              {
                if (*v147 != v62)
                {
                  objc_enumerationMutation(v59);
                }

                v64 = *(*(&v146 + 1) + 8 * j);
                v65 = [v144 handle];
                v66 = [v65 value];
                v67 = [v64 rangeOfString:v66];

                v68 = [v64 stringByReplacingOccurrencesOfString:@"self-token:" withString:@"token:"];
                if (v67 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v69 = v56;
                }

                else
                {
                  v69 = v145;
                }

                [v69 addObject:v68];
              }

              v61 = [v59 countByEnumeratingWithState:&v146 objects:v158 count:16];
            }

            while (v61);
          }

          v57 = v142 + 1;
        }

        while ((v142 + 1) != v140);
        v140 = [obj countByEnumeratingWithState:&v150 objects:v159 count:16];
      }

      while (v140);
    }

    v70 = sub_100004778();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [v56 description];
      *buf = 138412290;
      v162 = v71;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "These participant destinations with handles are not added because the handle associated is not being called: %@", buf, 0xCu);
    }

    v27 = v126;
    v29 = self;
    v30 = v129;
    v47 = v118;
  }

  if (v47)
  {
    [v145 addObject:v47];
  }

  else
  {
    v72 = [IDSDestination destinationWithTUConversationMember:v144];
    [v145 addObject:v72];
  }

LABEL_52:
  v73 = sub_100004778();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = [(CSDConversationManager *)v29 service];
    v75 = [v145 allObjects];
    v76 = TULoggableStringForHandles();
    *buf = 138413058;
    v162 = v134;
    v163 = 2112;
    v164 = v74;
    v165 = 2112;
    v166 = v30;
    v167 = 2112;
    v168 = v76;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ service: %@, provider: %@, participantDestinationIDs: %@", buf, 0x2Au);
  }

  v143 = [(CSDConversationManager *)v29 callerIDForLocalMember:v144 forProvider:v30];
  v77 = [v131 UUIDString];
  v78 = v77;
  if (v77)
  {
    v79 = v77;
  }

  else
  {
    v79 = [v135 UUIDString];
  }

  v141 = v79;

  if ([v27 count] == 1)
  {
    v80 = [v27 allObjects];
    v81 = [v80 firstObject];
    v82 = [v81 handle];
    v83 = [v82 value];
    v84 = [v83 destinationIdIsTemporary] ^ 1;
    if (v133)
    {
      v85 = 0;
    }

    else
    {
      v85 = v84;
    }
  }

  else
  {
    v85 = 0;
  }

  v86 = [(CSDConversationManager *)v29 featureFlags];
  if ([v86 oneToOneFaceTimeMyselfEnabled])
  {
    v87 = [(CSDConversationManager *)v29 serverBag];
    v88 = [v87 isFaceTimeMyselfEnabled];

    if ((v85 | v88 ^ 1))
    {
      goto LABEL_70;
    }

    if ([v27 count] || !objc_msgSend(v136, "count"))
    {
      v85 = 0;
      goto LABEL_70;
    }

    [NSSet setWithObject:v144];
    v86 = v27;
    v27 = v85 = 1;
  }

LABEL_70:
  v89 = sub_100004778();
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
  {
    v90 = @"NO";
    if (v85)
    {
      v90 = @"YES";
    }

    *buf = 138412546;
    v162 = v90;
    v163 = 2112;
    v164 = v27;
    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "isOneToOneModeEnabled: %@, remoteMembers: %@", buf, 0x16u);
  }

  v91 = [(CSDConversationManager *)v29 featureFlags];
  v92 = [v91 groupFacetimeAsAServiceEnabled];

  if (v30 && v92)
  {
    v93 = +[CSDConversationProviderManager sharedInstance];
    v94 = [v93 serviceForProvider:v30];
  }

  else
  {
    v94 = [(CSDConversationManager *)v29 service];
  }

  v139 = [[CSDConversationABTestConfiguration alloc] initWithGroupUUID:v135];
  v127 = v27;
  v119 = v85;
  if (v130)
  {
    v95 = [(CSDConversationManager *)v29 featureFlags];
    v96 = [v95 requestToScreenShareEnabled];
  }

  else
  {
    v96 = 0;
  }

  v97 = [(CSDConversationManager *)v29 groupSessionProviderCreationBlock];
  v98 = [v145 allObjects];
  v99 = [v94 accountWithCallerID:v143];
  v100 = [(CSDConversationManager *)v29 queue];
  v101 = [(CSDConversationABTestConfiguration *)v139 copy];
  HIBYTE(v117) = v96;
  LOBYTE(v117) = a18 == 0;
  v102 = (v97)[2](v97, v141, v98, v143, v99, v100, v119, v144, v117, v101, a22);

  v103 = [[CSDIDSGroupSession alloc] initWithGroupSessionProvider:v102];
  v104 = [(CSDConversationManager *)self conversationCreationBlock];
  v105 = [(CSDConversationManager *)self queue];
  v106 = [(CSDConversationABTestConfiguration *)v139 copy];
  v107 = (v104)[2](v104, v105, v134, v135, v103, v131, v120, v144, v125, v127, v124, v123, v122, v136, v121, v133, v130, v128, a17, a18, a19, v106, a23);

  [v107 setDelegate:self];
  [v107 setProvider:v129];
  if (TUSimulatedModeEnabled())
  {
    [v107 setAvcSessionCreationBlock:&stru_10061CCF0];
  }

  v108 = [(CSDConversationManager *)self reportingController];
  v109 = [v107 tuConversation];
  [v108 createConversationReportingSession:v109];

  v110 = [(CSDConversationManager *)self mutableConversationsByUUID];
  v111 = [v107 UUID];
  [v110 setObject:v107 forKeyedSubscript:v111];

  v112 = [(CSDConversationManager *)self persistenceController];
  [v112 updateConversation:v107];

  v113 = [(CSDConversationManager *)self featureFlags];
  if ([v113 groupFacetimeAsAServiceEnabled])
  {
    v114 = [v129 supportsLinks] ^ 1;
  }

  else
  {
    v114 = 0;
  }

  if (v133 && (v114 & 1) == 0)
  {
    v115 = [NSSet setWithObject:IDSRegistrationPropertySupportsGondola];
    [v107 addRequiredCapabilities:v115 requiredLackOfCapabilities:0];
  }

  [(CSDConversationManager *)self notifyDelegatesOfCreatedConversation:v107];

  return v107;
}

- (id)pendingConversationUUIDWithPseudonym:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  v5 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162458;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)removePendingConversationWithPseudonym:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  v5 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162708;
  block[3] = &unk_10061C678;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_removePendingConversationWithPseudonym:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
    v9 = [v8 objectForKeyedSubscript:v4];

    v10 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
    [v10 setObject:0 forKeyedSubscript:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_removePendingConversationsWithTemporaryGroupUUIDIfNecessary:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [v11 temporaryGroupUUID];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v6 = [(CSDConversationManager *)self _removePendingConversationWithPseudonym:v9];
          [(CSDConversationManager *)self notifyDelegatesOfRemovedConversationWithUUID:v4];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removeAllPendingConversations
{
  v3 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162A4C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (CSDConversation)activeConversation
{
  v3 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(CSDConversationManager *)self mutableConversationsByUUID];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 state] == 3)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)conversationWithGroupUUID:(id)a3 andProvider:(id)a4
{
  v6 = a3;
  v25 = a4;
  v7 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [(CSDConversationManager *)self mutableConversationsByUUID];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [(CSDConversationManager *)self featureFlags];
        v16 = [v15 groupFacetimeAsAServiceEnabled];

        v17 = [v14 groupUUID];
        v18 = [v17 isEqual:v6];
        if (v18)
        {
          v19 = v16 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          v20 = v18;

          if (v20)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v21 = [v14 provider];
          v22 = [v21 isEqualToConversationProvider:v25];

          if (v22)
          {
LABEL_17:
            v23 = v14;
            goto LABEL_18;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_18:

  return v23;
}

- (id)conversationWithGroupUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CSDConversationManager *)self mutableConversationsByUUID];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 groupUUID];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)conversationWithGroupUUID:(id)a3 orRepresentedByRemoteMembers:(id)a4 andLink:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(CSDConversationManager *)self conversationWithGroupUUID:v8];
  if (!v12)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [(CSDConversationManager *)self mutableConversationsByUUID];
    v14 = [v13 allValues];

    v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v25;
LABEL_4:
      v19 = 0;
      while (1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        if ([v20 isRepresentedByRemoteMembers:v9 andLink:v10])
        {
          v12 = v20;

          v17 = v12;
          if (![v12 isFromStorage])
          {
            break;
          }
        }

        if (v16 == ++v19)
        {
          v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          v12 = v17;
          if (v16)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v22 = [v12 groupUUID];
    }

    else
    {
      v22 = 0;
    }

    *buf = 138412546;
    v29 = v8;
    v30 = 2112;
    v31 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "found conversation from groupUUID: %@, conversation: %@", buf, 0x16u);
    if (v12)
    {
    }
  }

  return v12;
}

- (id)conversationRepresentedByRemoteMembers:(id)a3 andLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100028694;
  v21 = sub_1000328D4;
  v22 = 0;
  v8 = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001632EC;
  v13[3] = &unk_10061CD18;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)activeApprovedConversationWithLink:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  v5 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163564;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)pendingConversationWithPseudonym:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 link];
        v13 = [v12 pseudonym];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)findConversationLinkMatchingPseudonym:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDConversationManager *)self activatedConversationLinksWithError:0, 0];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 pseudonym];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)conversationLinkForPseudonym:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  v5 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163B2C;
  block[3] = &unk_10061C678;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)conversationLinkForGroupUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDConversationManager *)self activatedConversationLinksWithError:0, 0];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 groupUUID];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)createConversationIfNecessaryWithUUID:(id)a3 groupUUID:(id)a4 messagesGroupUUID:(id)a5 locallyCreated:(BOOL)a6 localMember:(id)a7 remoteMembers:(id)a8 pendingMembers:(id)a9 otherInvitedHandles:(id)a10 remotePushTokens:(id)a11 lightweightMembers:(id)a12 link:(id)a13 activity:(id)a14 avMode:(unint64_t)a15 presentationMode:(unint64_t)a16 provider:(id)a17 screenSharingRequest:(id)a18
{
  v41 = a6;
  v22 = a3;
  v23 = a4;
  v48 = a5;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v47 = a10;
  v46 = a11;
  v45 = a12;
  v44 = a13;
  v43 = a14;
  v27 = a17;
  v28 = a18;
  v29 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v29);

  v30 = sub_100004778();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v50 = v22;
    v51 = 2112;
    v52 = v23;
    v53 = 2112;
    v54 = v24;
    v55 = 2048;
    v56 = a15;
    v57 = 2112;
    v58 = v27;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "UUID: %@ groupUUD: %@ localMember: %@, avMode: %lu, provider: %@", buf, 0x34u);
  }

  v31 = sub_100004778();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = v22;
    v51 = 2112;
    v52 = v25;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "UUID: %@ remoteMembers: %@", buf, 0x16u);
  }

  v32 = [(CSDConversationManager *)self mutableConversationsByUUID];
  v33 = [v32 objectForKeyedSubscript:v22];

  if (!v33)
  {
    v34 = objc_alloc_init(TUConversationReport);
    [v24 handle];
    v35 = v25;
    v37 = v36 = v26;
    LOWORD(v40) = 1;
    LOBYTE(v39) = 0;
    v33 = [(CSDConversationManager *)self createConversationWithUUID:v22 groupUUID:v23 messagesGroupUUID:v48 locallyCreated:v41 localMember:v24 initiator:v37 remoteMembers:v35 pendingMembers:v36 otherInvitedHandles:v47 remotePushTokens:v46 lightweightMembers:v45 activity:v43 link:v44 report:v34 fromStorage:v39 avMode:a15 presentationMode:a16 provider:v27 screenSharingRequest:v28 isInitiator:v40 isOldMessage:?];

    v26 = v36;
    v25 = v35;
  }

  return v33;
}

- (id)conversationWithGroupUUID:(id)a3 orMemberIdentifiers:(id)a4 orRemoteMembers:(id)a5 andLink:(id)a6 andVideo:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v16);

  v17 = [(CSDConversationManager *)self conversationWithGroupUUID:v12];
  if (!v17)
  {
    v42 = v12;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = [(CSDConversationManager *)self mutableConversationsByUUID];
    v33 = [v32 allValues];

    v34 = [v33 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v48;
      while (2)
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v48 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v47 + 1) + 8 * i);
          if ([v38 isRepresentedByRemoteMembers:v14 andLink:v15] && objc_msgSend(v38, "isVideo") == v7)
          {
            v40 = sub_100004778();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              sub_100476824();
            }

            v31 = v38;
LABEL_36:
            v12 = v42;
            goto LABEL_37;
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
    v12 = v42;
  }

  v18 = [(CSDConversationManager *)self serverBag];
  if ([v18 isParticipantIDToURIIncludedInPush])
  {
    v19 = 0;
  }

  else
  {
    v20 = [(CSDConversationManager *)self featureFlags];
    v19 = [v20 participantIDToURIRemovedEnabled];
  }

  if (!v17 && (v19 & 1) == 0)
  {
    v42 = v12;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = [(CSDConversationManager *)self mutableConversationsByUUID];
    v22 = [v21 allValues];

    v23 = [v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      while (2)
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          if (v13)
          {
            v27 = *(*(&v43 + 1) + 8 * j);
            v28 = [v27 memberIdentifiers];
            v29 = [v28 isEqualToSet:v13];

            if (v29)
            {
              v39 = sub_100004778();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                sub_10047688C();
              }

              v31 = v27;
              goto LABEL_36;
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
    v12 = v42;
  }

  v30 = sub_100004778();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    sub_1004768FC();
  }

  v31 = v17;
LABEL_37:

  return v31;
}

- (void)notifyDelegatesOfMessage:(id)a3 fromHandle:(id)a4 forConversation:(id)a5 withUpdate:(id)a6 shouldRing:(BOOL)a7
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          v17 = [v23 tuConversation];
          v18 = [(CSDConversationManager *)self delegateToQueue];
          v19 = [v18 objectForKey:v16];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100164660;
          block[3] = &unk_10061BCB0;
          block[4] = v16;
          v28 = v17;
          v29 = self;
          v30 = v25;
          v31 = v24;
          v32 = v22;
          v33 = a7;
          v20 = v17;
          dispatch_async(v19, block);
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }
}

- (void)notifyDelegatesOfNewConversation:(id)a3 fromHandle:(id)a4
{
  v17 = a3;
  v16 = a4;
  v6 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [v17 tuConversation];
          v13 = [(CSDConversationManager *)self delegateToQueue];
          v14 = [v13 objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001649CC;
          block[3] = &unk_10061A450;
          block[4] = v11;
          v20 = v12;
          v21 = self;
          v22 = v16;
          v15 = v12;
          dispatch_async(v14, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)notifyDelegatesOfCreatedConversation:(id)a3
{
  v14 = a3;
  v4 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v14 tuConversation];
          v11 = [(CSDConversationManager *)self delegateToQueue];
          v12 = [v11 objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100164D08;
          block[3] = &unk_100619E58;
          block[4] = v9;
          v17 = v10;
          v18 = self;
          v13 = v10;
          dispatch_async(v12, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)notifyDelegatesOfAVModeChanged:(unint64_t)a3 toAVMode:(unint64_t)a4 forConversation:(id)a5
{
  v18 = a5;
  v6 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [v18 tuConversation];
          v13 = [(CSDConversationManager *)self delegateToQueue];
          v14 = [v13 objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100165050;
          block[3] = &unk_10061BE60;
          block[4] = v11;
          v21 = v12;
          v22 = self;
          v23 = a3;
          v24 = a4;
          v15 = v12;
          dispatch_async(v14, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)notifyDelegatesOfRemovedConversationWithUUID:(id)a3
{
  v21 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [(CSDConversationManager *)self delegateToQueue];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [(CSDConversationManager *)self delegateToQueue];
          v11 = [v10 objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001654A4;
          block[3] = &unk_100619E58;
          block[4] = v9;
          block[5] = self;
          v29 = v21;
          dispatch_async(v11, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v12 = [(CSDConversationManager *)self observerStorage];
  v13 = [v12 observerToQueue];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          v20 = [v14 objectForKey:v19];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1001654B4;
          v22[3] = &unk_100619E58;
          v22[4] = v19;
          v22[5] = self;
          v23 = v21;
          dispatch_async(v20, v22);
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v16);
  }
}

- (void)notifyDelegatesOfTrackedPendingMember:(id)a3 forConversationLink:(id)a4
{
  v16 = a3;
  v15 = a4;
  v6 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(CSDConversationManager *)self delegateToQueue];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [(CSDConversationManager *)self delegateToQueue];
          v14 = [v13 objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001656C8;
          block[3] = &unk_10061A450;
          block[4] = v12;
          block[5] = self;
          v18 = v16;
          v19 = v15;
          dispatch_async(v14, block);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)notifyDelegatesOfUpdatePendingConversations
{
  v3 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v12 = [(CSDConversationManager *)self _incomingPendingConversationsByGroupUUID];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(CSDConversationManager *)self delegateToQueue];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [(CSDConversationManager *)self delegateToQueue];
          v11 = [v10 objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001658B8;
          block[3] = &unk_100619E58;
          block[4] = v9;
          block[5] = self;
          v14 = v12;
          dispatch_async(v11, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)notifyDelegatesOfChangedLinkDescriptors:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [TUConversationLink alloc];
    v6 = [v4 firstObject];
    v7 = [v5 initWithDescriptor:v6];

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "notifyDelegatesOfChangedLinkDescriptors: %@", &v9, 0xCu);
    }

    [(CSDConversationManager *)self notifyDelegatesOfChangedLink:v7 conversation:0];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "notifyDelegatesOfChangedLinkDescriptors: -- no link descriptors, not updating delegates", &v9, 2u);
    }
  }
}

- (void)notifyDelegatesOfChangedLink:(id)a3 conversation:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    v7 = [(CSDConversationManager *)self linkManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100165AEC;
    v8[3] = &unk_10061CD40;
    v8[4] = self;
    v9 = v5;
    [v7 activatedLinksWithCompletionHandler:v8];
  }
}

- (void)notifyDelegatesOfRemoteScreenShareAttributes:(id)a3 isLocallySharing:(BOOL)a4
{
  v6 = a3;
  v7 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CSDConversationManager *)self featureFlags];
  v9 = [v8 supportsScreenSharing];

  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [(CSDConversationManager *)self delegateToQueue];
    v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = [(CSDConversationManager *)self delegateToQueue];
          v16 = [v15 objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10016619C;
          block[3] = &unk_10061BE38;
          block[4] = v14;
          block[5] = self;
          v19 = v6;
          v20 = a4;
          dispatch_async(v16, block);

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }
  }
}

- (void)notifyDelegatesOfRemoteScreenShareEndedWithReason:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManager *)self featureFlags];
  v7 = [v6 supportsScreenSharing];

  if (v7)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [(CSDConversationManager *)self delegateToQueue];
    v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = [(CSDConversationManager *)self delegateToQueue];
          v14 = [v13 objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001663D8;
          block[3] = &unk_100619E58;
          block[4] = v12;
          block[5] = self;
          v17 = v4;
          dispatch_async(v14, block);

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }
}

- (void)notifyDelegatesOfLetMeInRejectedForPendingConversation:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 tuConversation];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(CSDConversationManager *)self delegateToQueue];
        v13 = [v12 objectForKey:v11];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10016660C;
        block[3] = &unk_100619E58;
        block[4] = v11;
        v16 = v6;
        v17 = self;
        dispatch_async(v13, block);
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)notifyDelegatesOfInvalidLinkForPendingConversation:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 tuConversation];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(CSDConversationManager *)self delegateToQueue];
        v13 = [v12 objectForKey:v11];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100166944;
        block[3] = &unk_100619E58;
        block[4] = v11;
        v16 = v6;
        v17 = self;
        dispatch_async(v13, block);
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)notifyDelegatesOf:(id)a3 removedScreenShareRequest:(id)a4
{
  v6 = a3;
  v18 = a4;
  v7 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v6;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "notifyDelegatesOfRemovedScreenShareRequest conversation: %@", buf, 0xCu);
          }

          v14 = [v6 tuConversation];
          v15 = [(CSDConversationManager *)self delegateToQueue];
          v16 = [v15 objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100166D18;
          block[3] = &unk_10061A450;
          block[4] = v12;
          v21 = v14;
          v22 = self;
          v23 = v18;
          v17 = v14;
          dispatch_async(v16, block);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }
}

- (void)handleConversation:(id)a3 receivedBlobRecoveryRequest:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [v9 requestBlobRecoveryOptions];
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 67109378;
    *v25 = v12;
    *&v25[4] = 2112;
    *&v25[6] = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handleConversation:receivedBlobRecoveryRequest:fromHandle: options: %u from: %@", &v24, 0x12u);
  }

  v14 = TUCopyIDSCanonicalAddressForHandle();
  v15 = [NSArray arrayWithObject:v14];
  v16 = [v8 localConversationParticipantWithDataToSendToDestinationIDs:v15];

  if (v16)
  {
    v17 = [CSDMessagingConversationMessage alloc];
    v18 = [v8 groupUUID];
    v19 = [(CSDMessagingConversationMessage *)v17 initWithType:5 groupUUID:v18 link:0];

    v20 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v16];
    if ([v9 hasRequestBlobRecoveryOptions] && (v12 & 1) == 0)
    {
      [v20 setAvcData:0];
    }

    [v19 addActiveParticipants:v20];
    v21 = [v19 data];
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      *v25 = v19;
      *&v25[8] = 2112;
      *&v25[10] = v10;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "handleConversation:receivedBlobRecoveryRequest:fromHandle: Sending message: %@ to: %@", &v24, 0x16u);
    }

    [(CSDConversationManager *)self sendData:v21 onConversation:v8 toHandle:v10 isBlobResponse:1];
  }

  else
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v8 UUID];
      v24 = 138412290;
      *v25 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] handleConversation:receivedBlobRecoveryRequest:fromHandle: No local participant for conversation UUID: %@", &v24, 0xCu);
    }
  }
}

- (void)handleConversation:(id)a3 receivedBlobRecoveryResponse:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "handleConversation:receivedBlobRecoveryResponse:fromHandle: from: %@", &v25, 0xCu);
  }

  v13 = [v9 activeParticipants];
  v14 = [v13 firstObject];
  v15 = [v14 csdConversationParticipant];

  if (!v15)
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v9;
      v23 = "[WARN] handleConversation:receivedBlobRecoveryResponse:fromHandle: Could not find participant in message: %@";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, &v25, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  v16 = [v15 handle];
  v17 = [v16 isEqualToHandle:v10];

  if (!v17)
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v15 handle];
      v25 = 138412546;
      v26 = v24;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] handleConversation:receivedBlobRecoveryResponse:fromHandle: %@ <!===> %@", &v25, 0x16u);
    }

    goto LABEL_15;
  }

  v18 = [v15 avcData];
  if (!v18 || (v19 = v18, [v15 avcData], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, v19, !v21))
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v9;
      v23 = "[WARN] handleConversation:receivedBlobRecoveryResponse: could not add or update participant: %@";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  [v8 addActiveParticipant:v15];
LABEL_16:
}

- (void)handleConversationHandoffRecommendationChangedNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016749C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)updateConversationHandoffEligibility:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v46 = self;
  v6 = [(CSDConversationManager *)self lockdownModeEnabled];
  v7 = v6[2]();

  if (v7)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not updating handoff eligibility %@ because lockdown mode is enabled", buf, 0xCu);
    }

    goto LABEL_50;
  }

  v9 = sub_100004778();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v10)
    {
      v11 = [v4 conversationGroupUUID];
      v12 = [v4 association];
      v13 = [v12 identifier];
      if ([v4 isUplinkMuted])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138413058;
      if ([v4 isSendingVideo])
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v61 = v11;
      v62 = 2048;
      v63 = v13;
      v64 = 2112;
      v65 = v14;
      v66 = 2112;
      v67 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handoff changed to advertise %@ for identifier %llu, uplink muted %@, sending video %@", buf, 0x2Au);
    }
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handoff changed without eligibility, so stopping advertising", buf, 2u);
  }

  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v54 = 0u;
  v16 = [(CSDConversationManager *)self mutableConversationsByUUID];
  v17 = [v16 allValues];

  v18 = v17;
  v19 = [v17 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (!v19)
  {
    v21 = 0;
    goto LABEL_42;
  }

  v20 = v19;
  v21 = 0;
  v22 = *v55;
  do
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v55 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v54 + 1) + 8 * i);
      if ((+[TUConversationManager supportsConversations]& 1) == 0)
      {
        v32 = [v24 remoteMembers];
        if ([v32 count] >= 2)
        {

LABEL_29:
          v34 = sub_100004778();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v61 = v24;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Handoff eligibility set to nil for GreenTea device: %@", buf, 0xCu);
          }

LABEL_32:
          [v24 setHandoffEligibility:0];
          continue;
        }

        v33 = [v24 isVideoEnabled];

        if ((v33 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (v4)
      {
        v25 = [v24 groupUUID];
        v26 = [v4 conversationGroupUUID];
        v27 = [v25 isEqual:v26];

        if (!v27)
        {
          goto LABEL_32;
        }

        [v24 setHandoffEligibility:v4];
        v28 = v24;

        v29 = sub_100004778();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = v28;
          v30 = v29;
          v31 = "Handoff eligibility added to conversation: %@";
LABEL_36:
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
        }
      }

      else
      {
        v35 = [v24 handoffEligibility];

        if (!v35)
        {
          goto LABEL_32;
        }

        [v24 setHandoffEligibility:0];
        v28 = v24;

        v29 = sub_100004778();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = v28;
          v30 = v29;
          v31 = "Handoff eligibility removed from conversation: %@";
          goto LABEL_36;
        }
      }

      v21 = v28;
    }

    v20 = [v18 countByEnumeratingWithState:&v54 objects:v59 count:16];
  }

  while (v20);
LABEL_42:
  v8 = v21;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(CSDConversationManager *)v46 delegateToQueue];
  v36 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v51;
    do
    {
      for (j = 0; j != v37; j = j + 1)
      {
        if (*v51 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v50 + 1) + 8 * j);
        v41 = [v8 tuConversation];
        v42 = [(CSDConversationManager *)v46 delegateToQueue];
        v43 = [v42 objectForKey:v40];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100167AAC;
        block[3] = &unk_100619E58;
        block[4] = v40;
        v48 = v41;
        v49 = v46;
        v44 = v41;
        dispatch_async(v43, block);
      }

      v37 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v37);
  }

LABEL_50:
}

- (void)handleConversationHandoffRouteIdentifierChangedNotification:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167CE4;
  block[3] = &unk_10061A600;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)postSessionStartedForSession:(id)a3 originator:(id)a4 conversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 UUID];
    v18 = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Posting session started event from participant %@ for session %@", &v18, 0x16u);
  }

  v14 = [TUConversationActivityEvent alloc];
  v15 = [v8 UUID];
  v16 = [v14 initWithSessionUUID:v15 originator:v9 type:12];

  [v16 setSession:v8];
  v17 = [(CSDConversationManager *)self conversationNoticeManger];
  [v17 conversation:v10 receivedActivitySessionEvent:v16];
}

- (void)postEndEventForSession:(id)a3 originator:(id)a4 conversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 UUID];
    v18 = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Posting session ended event from participant %@ for session %@", &v18, 0x16u);
  }

  v14 = [TUConversationActivityEvent alloc];
  v15 = [v8 UUID];
  v16 = [v14 initWithSessionUUID:v15 originator:v9 type:13];

  [v16 setSession:v8];
  v17 = [(CSDConversationManager *)self conversationNoticeManger];
  [v17 conversation:v10 receivedActivitySessionEvent:v16];
}

- (id)temporaryFilePath
{
  v2 = NSTemporaryDirectory();
  v3 = +[NSString stringGUID];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (id)createActivitySession:(id)a3 onConversation:(id)a4 fromHandle:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 memberWithHandle:v9];
  v11 = [v10 association];
  if (v11 && (v12 = v11, [v10 association], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isPrimary"), v13, v12, (v14 & 1) == 0))
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v8 UUID];
      v20 = [v10 association];
      v28 = 138413058;
      v29 = v7;
      v30 = 2112;
      v31 = v19;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Asked to create ActivitySession %@ on conversation UUID: %@ for fromHandle: %@ using association: %@", &v28, 0x2Au);
    }

    v21 = [v10 association];
    v17 = [v21 handle];

    v22 = [CSDMessagingHandle handleWithTUHandle:v17];
    v23 = [v7 activity];
    [v23 setOriginatorHandle:v22];
  }

  else
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v8 UUID];
      v28 = 138412802;
      v29 = v7;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Asked to create ActivitySession %@ on conversation UUID: %@ with trusted fromHandle: %@", &v28, 0x20u);
    }

    v17 = v9;
  }

  v24 = [CSDMessagingHandle handleWithTUHandle:v17];
  v25 = [v7 activity];
  [v25 setFromHandle:v24];

  v26 = [v7 createActivitySessionOnConversation:v8];

  return v26;
}

- (void)handleEncryptedMessageWithin:(id)a3 fromHandle:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 hasEncryptedMessage] || (objc_msgSend(v8, "hasEnclosedEncryptedType") & 1) == 0)
  {
    v12 = sub_100004778();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_10;
    }

    LOWORD(v16[0]) = 0;
    v13 = "[WARN] Conversation message of type Encrypted received with either no encryptedMessage or enclosedEncryptedType. Dropping message.";
    v14 = v12;
    v15 = 2;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, v16, v15);
    goto LABEL_9;
  }

  v11 = [v8 enclosedEncryptedType];
  if (v11 == 16)
  {
    [(CSDConversationManager *)self handleEncryptedLetMeInResponse:v8 fromHandle:v9 context:v10];
    goto LABEL_10;
  }

  if (v11 != 10)
  {
    v12 = sub_100004778();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v16[0] = 67109120;
    v16[1] = [v8 enclosedEncryptedType];
    v13 = "[WARN] ConversationMessage of type Encrypted with enclosed type of %d which we do not have support for, dropping.";
    v14 = v12;
    v15 = 8;
    goto LABEL_8;
  }

  [(CSDConversationManager *)self handleEncryptedLetMeInRequest:v8 fromHandle:v9 context:v10];
LABEL_10:
}

- (void)handleEncryptedLetMeInRequest:(id)a3 fromHandle:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received Encrypted message with enclosed type of LetMeInRequest from handle %@", buf, 0xCu);
    }

    v13 = [v10 csd_pseudonym];
    if ([v13 length])
    {
      v14 = [TUHandle normalizedGenericHandleForValue:v13];
      if (v14)
      {
        v15 = [(CSDConversationManager *)self linkManager];
        v16 = [v8 encryptedMessage];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100168D78;
        v18[3] = &unk_10061CD90;
        v18[4] = self;
        v14 = v14;
        v19 = v14;
        v20 = v9;
        v21 = v10;
        [v15 decryptLetMeInRequest:v16 pseudonym:v14 fromHandle:v20 completionHandler:v18];
      }

      else
      {
        v17 = sub_100004778();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Let Me In request was not sent to a pseudonym. Dropping message.", buf, 2u);
        }
      }
    }

    else
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Could not retrieve a pseudonym string from the message context.", buf, 2u);
      }
    }
  }
}

- (void)handleEncryptedLetMeInResponse:(id)a3 fromHandle:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v9);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    v10 = [v7 tuConversationLink];
    v11 = sub_100004778();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!v10)
    {
      if (!v12)
      {
LABEL_26:

        goto LABEL_27;
      }

      v18 = [v7 link];
      *buf = 138412290;
      v38 = v18;
      v23 = "[WARN] Provided link is %@, which was not a valid TUConversationLink.";
      v24 = v11;
      goto LABEL_24;
    }

    if (v12)
    {
      *buf = 138412290;
      v38 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received Encrypted message with enclosed type of LetMeInResponse from handle %@", buf, 0xCu);
    }

    v13 = [v10 pseudonym];
    v11 = [(CSDConversationManager *)self pendingConversationWithPseudonym:v13];

    if (v11)
    {
      if ([v11 letMeInRequestState]== 2)
      {
        v14 = [v11 letMeInKeyAgreement];
        if (!v14 || (v15 = v14, -[NSObject letMeInKeyAgreement](v11, "letMeInKeyAgreement"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isExhausted], v16, v15, v17))
        {
          v18 = sub_100004778();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v11 letMeInKeyAgreement];
            if (v19)
            {
              v20 = @"NO";
            }

            else
            {
              v20 = @"YES";
            }

            v21 = [v11 letMeInKeyAgreement];
            if (v21)
            {
              v36 = [v11 letMeInKeyAgreement];
              if ([v36 isExhausted])
              {
                v22 = @"YES";
              }

              else
              {
                v22 = @"NO";
              }
            }

            else
            {
              v22 = 0;
            }

            *buf = 138412546;
            v38 = v20;
            v39 = 2112;
            v40 = v22;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Pending conversation's let me in key agreement is either nil (%@) or exhausted (%@)", buf, 0x16u);
            if (v21)
            {
            }
          }

          goto LABEL_25;
        }

        v26 = [v10 pseudonym];
        v18 = [TUHandle normalizedGenericHandleForValue:v26];

        if (!v18)
        {
          v30 = sub_100004778();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Let Me In response was not sent to a pseudonym. Dropping message.", buf, 2u);
          }

          goto LABEL_44;
        }

        v27 = [(CSDConversationManager *)self linkManager];
        v28 = [v7 encryptedMessage];
        v29 = [v11 letMeInKeyAgreement];
        v30 = [v27 decryptLetMeInResponse:v28 pseudonym:v18 requestorKeyAgreement:v29];

        if (v30)
        {
          if ([v30 type]== 16)
          {
            [(CSDConversationManager *)self handleReceivedLetMeInResponse:v30 pendingConversation:v11 fromHandle:v8];
LABEL_44:

            goto LABEL_25;
          }

          v31 = sub_100004778();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v30 type];
            *buf = 67109120;
            LODWORD(v38) = v35;
            v32 = "[WARN] Decrypted conversation message but was not a let me in response messageType: %d";
            v33 = v31;
            v34 = 8;
            goto LABEL_42;
          }
        }

        else
        {
          v31 = sub_100004778();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v32 = "[WARN] Could not decrypt let me in response";
            v33 = v31;
            v34 = 2;
LABEL_42:
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
          }
        }

        goto LABEL_44;
      }

      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v11 letMeInRequestState];
        *buf = 134217984;
        v38 = v25;
        v23 = "[WARN] Pending conversation's let me in request state is %ld instead of Requested";
        goto LABEL_23;
      }
    }

    else
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v10;
        v23 = "[WARN] No pending conversation found for link %@";
LABEL_23:
        v24 = v18;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      }
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_27:
}

- (void)handleReceivedLetMeInRequest:(id)a3 toPseudonym:(id)a4 fromHandle:(id)a5 responseKeyData:(id)a6 dateInitiated:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v17);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    v18 = [(CSDConversationManager *)self linkManager];
    v19 = [v13 value];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001696A8;
    v20[3] = &unk_10061CDE0;
    v20[4] = self;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = v12;
    v25 = v16;
    [v18 getLinkDescriptorWithPseudonym:v19 includeInactive:0 completionHandler:v20];
  }
}

- (void)handleReceivedLetMeInResponse:(id)a3 pendingConversation:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    v12 = [v8 tuConversationLink];
    if (v12 && [v8 hasIsLetMeInApproved])
    {
      if ([v8 isLetMeInApproved])
      {
        v13 = [v8 conversationGroupUUID];

        if (!v13)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      v23 = [v9 link];
      v24 = [v8 tuConversationLink];
      v25 = [v23 isEquivalentToConversationLink:v24];

      if ((v25 & 1) == 0)
      {
        v14 = sub_100004778();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v41) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Let me in response is not for the provided pending conversation. Ignoring.", &v41, 2u);
        }

        goto LABEL_21;
      }

      v26 = [v10 value];
      if ([v26 destinationIdIsPseudonym])
      {
        v27 = [v9 link];
        v28 = [v27 pseudonym];
        v29 = [v10 value];
        v30 = [v28 isEqualToString:v29];

        if ((v30 & 1) == 0)
        {
          v14 = sub_100004778();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          v15 = [v9 link];
          v17 = [(__CFString *)v15 pseudonym];
          v31 = [v10 value];
          v41 = 138412546;
          v42 = v17;
          v43 = 2112;
          v44 = v31;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Let me in response is not from the pseudonym defined in the link %@, instead is from %@", &v41, 0x16u);

          goto LABEL_20;
        }
      }

      else
      {
      }

      if ([v8 isLetMeInApproved])
      {
        v32 = [v9 link];
        v33 = [v8 tuConversationLink];
        v34 = [v32 isEqualToConversationLink:v33];

        if ((v34 & 1) == 0)
        {
          v35 = [v8 tuConversationLink];
          v36 = [v35 copy];
          [v9 setLink:v36];
        }

        v37 = [v8 conversationGroupUUID];
        [v9 setConversationGroupUUID:v37];

        v38 = [v8 tuConversationLink];
        v39 = [v38 originatorHandle];
        [v9 setApproverHandle:v39];
      }

      else
      {
        [(CSDConversationManager *)self notifyDelegatesOfLetMeInRejectedForPendingConversation:v9];
      }

      v14 = sub_100004778();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      if ([v8 isLetMeInApproved])
      {
        v40 = @"YES";
      }

      else
      {
        v40 = @"NO";
      }

      v15 = [v9 conversationGroupUUID];
      v17 = [v9 approverHandle];
      v41 = 138543874;
      v42 = v40;
      v43 = 2112;
      v44 = v15;
      v45 = 2112;
      v46 = v17;
      v20 = "Finished processing let me in response (approved: %{public}@) for groupUUID: %@. Approver handle is %@.";
      v21 = v14;
      v22 = 32;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v41, v22);
LABEL_20:

      goto LABEL_21;
    }

LABEL_8:
    v14 = sub_100004778();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:

      goto LABEL_22;
    }

    v15 = [v8 conversationGroupUUID];
    if (v15)
    {
      v16 = @"NO";
    }

    else
    {
      v16 = @"YES";
    }

    v17 = [v8 tuConversationLink];
    if (v17)
    {
      v18 = @"NO";
    }

    else
    {
      v18 = @"YES";
    }

    v41 = 138544130;
    if ([v8 hasIsLetMeInApproved])
    {
      v19 = @"NO";
    }

    else
    {
      v19 = @"YES";
    }

    v42 = v16;
    v43 = 2114;
    v44 = v18;
    v45 = 2114;
    v46 = v19;
    v47 = 2112;
    v48 = v8;
    v20 = "[WARN] Ignoring let me in response message, as it is missing a groupUUID (%{public}@), missing a link (%{public}@), or does not specify approval/rejection (%{public}@): %@";
    v21 = v14;
    v22 = 42;
    goto LABEL_19;
  }

LABEL_22:
}

- (void)handleReceivedLinkCreatedOrChangedMessage:(id)a3 fromHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016A2C4;
  block[3] = &unk_100619E58;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleReceivedLinkInvalidatedMessage:(id)a3 fromHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016AEE8;
  block[3] = &unk_100619E58;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeLink:(id)a3 reason:(int64_t)a4 withConversation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CSDConversationManager *)self linkManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016B3F0;
  v13[3] = &unk_10061AC68;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 removeLink:v12 deleteReason:a4 completionHandler:v13];
}

- (void)handleReceivedLMIDelegateMessage:(id)a3 fromHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    v9 = [v6 conversationGroupUUID];
    if (!v9)
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Dismissing let me in delegation because no groupUUID was set", buf, 2u);
      }

      goto LABEL_42;
    }

    v10 = [(CSDConversationManager *)self conversationWithGroupUUID:v9];
    v11 = [v6 letMeInDelegationHandle];
    v12 = IDSCopyRawAddressForDestination();
    v13 = [TUHandle normalizedHandleWithDestinationID:v12];

    v14 = +[TUPrivacyManager sharedPrivacyManager];
    LODWORD(v12) = [v14 isIncomingCommunicationBlockedForHandle:v13];

    if (v12)
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v44 = v13;
        v45 = 2112;
        v46 = v7;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Dismissing let me in delegation because the forHandle is blocked {forHandle: %@, fromHandle: %@}", buf, 0x16u);
      }

      goto LABEL_41;
    }

    if (v13)
    {
      v16 = [TUConversationMember alloc];
      v17 = [v6 nickname];
      v15 = [v16 initWithHandle:v13 nickname:v17 joinedFromLetMeIn:1];

      if ([v6 type] == 14)
      {
        v18 = [NSUUID alloc];
        v19 = [v6 letMeInDelegationUUID];
        v20 = [v18 initWithUUIDString:v19];

        v21 = sub_100004778();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          if (v22)
          {
            *buf = 138412802;
            v44 = v7;
            v45 = 2112;
            v46 = v13;
            v47 = 2112;
            v48 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received LMI delegation message! {fromHandle: %@, forHandle: %@, transactionUUID: %@}", buf, 0x20u);
          }

          v42 = v20;

          v23 = [v10 localMember];
          v24 = [v23 handle];
          v25 = [v13 isEqualToHandle:v24];

          if (v25)
          {
            v21 = sub_100004778();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "forHandle is equal to myself, do not need to process", buf, 2u);
            }

            v20 = v42;
            goto LABEL_39;
          }

          v41 = self;
          v26 = v42;
          [(CSDConversationManager *)v41 handleDelegatedPendingMemberIfNecessary:v15 conversation:v10 groupUUID:v9 fromHandle:v7 transactionUUID:v42];
          goto LABEL_35;
        }

        if (v22)
        {
          v39 = [v6 letMeInDelegationUUID];
          *buf = 138412546;
          v44 = v7;
          v45 = 2112;
          v46 = v39;
          v40 = "Received LMI delegation, unable to parse transactionUUID -- ignoring! {fromHandle: %@, message.letMeInDelegationUUID: %@}";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v40, buf, 0x16u);

          goto LABEL_39;
        }

        goto LABEL_39;
      }

      if ([v6 type] == 15)
      {
        if (v10)
        {
          v30 = [NSUUID alloc];
          v31 = [v6 letMeInDelegationUUID];
          v20 = [v30 initWithUUIDString:v31];

          if (v20)
          {
            v32 = [v6 hasIsLetMeInApproved];
            v21 = sub_100004778();
            v33 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
            if (v32)
            {
              if (v33)
              {
                v34 = [v6 isLetMeInApproved];
                v35 = @"NO";
                *buf = 138413058;
                v44 = v7;
                v45 = 2112;
                if (v34)
                {
                  v35 = @"YES";
                }

                v46 = v13;
                v47 = 2112;
                v48 = v20;
                v49 = 2112;
                v50 = v35;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received LMI delegation response message! {fromHandle: %@, forHandle: %@, transactionUUID: %@, message.letMeInApproval: %@}", buf, 0x2Au);
              }

              v36 = [v6 isLetMeInApproved];
              v37 = [(CSDConversationManager *)self pendingMembershipTracker];
              v38 = v37;
              if (v36)
              {
                [v37 handleRemoteApprovalOfMember:v15 forConversation:v10 from:v7 transactionUUID:v20];
              }

              else
              {
                [v37 handleRemoteRejectionOfMember:v15 forConversation:v10 from:v7 transactionUUID:v20];
              }

              goto LABEL_40;
            }

            if (v33)
            {
              *buf = 138412802;
              v44 = v7;
              v45 = 2112;
              v46 = v13;
              v47 = 2112;
              v48 = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received LMI delegation response message, without letMeInApproval -- dropping! {fromHandle: %@, forHandle: %@, transactionUUID: %@}", buf, 0x20u);
            }
          }

          else
          {
            v21 = sub_100004778();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v39 = [v6 letMeInDelegationUUID];
              *buf = 138412546;
              v44 = v7;
              v45 = 2112;
              v46 = v39;
              v40 = "Received LMI delegation response, unable to parse transactionUUID -- ignoring! {fromHandle: %@, message.letMeInDelegationUUID: %@}";
              goto LABEL_38;
            }
          }

LABEL_39:

LABEL_40:
          goto LABEL_41;
        }

        v26 = sub_100004778();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
LABEL_35:

          goto LABEL_41;
        }

        *buf = 138412290;
        v44 = v9;
        v27 = "[WARN] Dismissing let me in delegation response because no conversation was found for link's groupUUID: %@";
        v28 = v26;
        v29 = 12;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
        goto LABEL_35;
      }
    }

    else
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v6 letMeInDelegationHandle];
        *buf = 138412546;
        v44 = v7;
        v45 = 2112;
        v46 = v26;
        v27 = "Received LMI delegation, unable to parse forHandle -- ignoring! {fromHandle: %@, message.letMeInDelegationHandle: %@}";
        v28 = v15;
        v29 = 22;
        goto LABEL_19;
      }
    }

LABEL_41:

LABEL_42:
  }
}

- (void)handleDelegatedPendingMemberIfNecessary:(id)a3 conversation:(id)a4 groupUUID:(id)a5 fromHandle:(id)a6 transactionUUID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v14 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v14);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = [v13 remoteMembers];
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v30 + 1) + 8 * v19) handle];
        v21 = [v12 handle];
        v22 = [v20 isEquivalentToHandle:v21];

        if (v22)
        {

          v23 = sub_100004778();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100476B98(v12);
          }

          v25 = v28;
          v24 = v29;
          v26 = v27;
          goto LABEL_13;
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  [v13 setHasReceivedLetMeInRequest:1];
  v23 = [(CSDConversationManager *)self notifyPendingMembershipTrackerOfDelegatedMember];
  v25 = v28;
  v24 = v29;
  v26 = v27;
  (*(v23 + 16))(v23, v12, v13, v29, v28, v27);
LABEL_13:
}

- (BOOL)sendMessagesForInvalidatedLink:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [CSDMessagingConversationMessage alloc];
  v7 = [v4 groupUUID];
  v8 = [(CSDMessagingConversationMessage *)v6 initWithType:24 groupUUID:v7 link:v4];

  v9 = [v4 originatorHandle];

  if (v9)
  {
    v10 = [v4 originatorHandle];
    v11 = [CSDMessagingHandle handleWithTUHandle:v10];
    v12 = [(CSDMessagingConversationMessage *)v8 link];
    [v12 setOriginatorHandle:v11];
  }

  v32 = v8;
  v13 = [(CSDMessagingConversationMessage *)v8 data];
  v14 = [(CSDConversationManager *)self service];
  v15 = [v4 originatorHandle];
  v16 = [v15 value];
  v17 = [v14 accountWithCallerID:v16];

  v18 = +[NSMutableSet set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = [v4 invitedMemberHandles];
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      v23 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v33 + 1) + 8 * v23);
        v25 = TUCopyIDSCanonicalAddressForHandle();
        [v18 addObject:v25];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v21);
  }

  v26 = [TUConversationMember alloc];
  v27 = [v4 originatorHandle];
  v28 = [v26 initWithHandle:v27];

  v29 = [(CSDConversationManager *)self sendDataBlock];
  v30 = (v29)[2](v29, v13, v17, v18, v28, 0, 0, 0, 0);

  return v30;
}

- (void)requestParticipant:(id)a3 toScreenShareWithRequest:(id)a4 conversation:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CSDConversationManager *)self featureFlags];
  v11 = [v10 requestToScreenShareEnabled];

  if (v11)
  {
    v12 = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(v12);

    v13 = [v9 groupUUID];
    v14 = [[CSDMessagingConversationMessage alloc] initWithType:35 groupUUID:v13 link:0];
    v15 = [[CSDMessagingScreenShareContext alloc] initOutgoingRequestWithScreenSharingRequest:v8];
    [(CSDMessagingConversationMessage *)v14 setScreenShareContext:v15];
    v16 = [v8 handle];
    [(CSDConversationManager *)self sendDataForScreenShareMessage:v14 toParticipant:v17 conversation:v9 screenShareRequestHandle:v16 allowMemberFallbackForMessage:0];
  }
}

- (void)sendDataForScreenShareMessage:(id)a3 toParticipant:(id)a4 conversation:(id)a5 screenShareRequestHandle:(id)a6 allowMemberFallbackForMessage:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v14 localMember];
  v17 = [v16 handle];
  v18 = [v17 value];

  v43 = self;
  v19 = [(CSDConversationManager *)self service];
  v20 = [v19 accountWithCallerID:v18];

  v21 = [v14 localMember];
  v22 = objc_alloc_init(NSMutableSet);
  v23 = [v13 activeIDSDestination];

  if (v23)
  {
    v24 = v13;
    v25 = v18;
    v42 = v24;
    v26 = [v24 activeIDSDestination];
    [v22 addObject:v26];

LABEL_3:
    v27 = v15;
    v28 = sub_100004778();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v47 = v12;
      v48 = 2112;
      v49 = v25;
      v50 = 2112;
      v51 = v22;
      v52 = 1024;
      v53 = v7;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] sendDataForScreenShareMessage: Sending screen share request message %@ from handle %@ to handle %@, allowMemberFallbackForMessage: %d", buf, 0x26u);
    }

    v29 = [(CSDConversationManager *)v43 sendDataBlock];
    v30 = [v12 data];
    v31 = [v14 capabilitySendMessageOptions];
    (*(v29 + 2))(v29, v30, v20, v22, v21, v31, 0, 0, 0);

    v15 = v27;
    v18 = v25;
    v13 = v42;
    goto LABEL_18;
  }

  if (v7)
  {
    v41 = v12;
    v32 = [v13 handle];
    v40 = v15;
    if (v32)
    {
      v33 = [v13 handle];
    }

    else
    {
      v33 = v15;
    }

    v34 = v33;

    v35 = [v14 remoteMembers];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10016CFD0;
    v44[3] = &unk_10061A6F0;
    v29 = v34;
    v45 = v29;
    v36 = [v35 tu_anyObjectPassingTest:v44];

    if (v36)
    {
      v37 = [v36 idsDestination];

      if (v37)
      {
        v42 = v13;
        v25 = v18;
        v38 = [v36 idsDestination];
        [v22 addObject:v38];

        v15 = v40;
        v12 = v41;
        goto LABEL_3;
      }
    }

    v39 = sub_100004778();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_100476C94();
    }

    v15 = v40;
    v12 = v41;
  }

  else
  {
    v29 = sub_100004778();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100476C24();
    }
  }

LABEL_18:
}

- (void)handleReceivedUpdateJoinedMetadataMessage:(id)a3 fromHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManager *)self featureFlags];
  v10 = [v9 conversationHandoffEnabled];

  if (v10)
  {
    if (![(CSDConversationManager *)self isValidLocalHandle:v7])
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was sent by a non-local handle %@, dropping message.", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v11 = [v6 conversationGroupUUID];
    if (!v11)
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was missing a group UUID, dropping message.", buf, 2u);
      }

      goto LABEL_36;
    }

    v12 = [v6 joinedMetadata];
    v13 = v12;
    if (!v12)
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was missing a joined metadata object, dropping message.", buf, 2u);
      }

      goto LABEL_35;
    }

    v45 = v12;
    v14 = [v12 sender];
    v15 = [v14 csdConversationParticipant];

    if (v15)
    {
      v16 = [v45 sender];
      if ([v16 hasIdentifier])
      {
        v17 = [v15 identifier];

        if (v17)
        {
          v18 = [(CSDConversationManager *)self conversationWithGroupUUID:v11];
          v44 = v18;
          if (!v18)
          {
            v35 = sub_100004778();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v51 = v11;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[WARN] No conversation was found for group UUID %@, dropping UpdateJoinedMetadata message.", buf, 0xCu);
            }

            v13 = v45;
            goto LABEL_50;
          }

          v43 = v11;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v19 = [v18 activeRemoteParticipants];
          v20 = [v19 countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v20)
          {
            v21 = v20;
            v41 = v7;
            v42 = v6;
            v22 = 0;
            v23 = *v47;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v47 != v23)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = *(*(&v46 + 1) + 8 * i);
                v26 = [v15 handle];
                v27 = [v25 handle];
                if ([v26 isEquivalentToHandle:v27])
                {
                  v28 = [v15 identifier];
                  LOBYTE(v28) = v28 == [v25 identifier];

                  v22 |= v28;
                }

                else
                {
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v46 objects:v56 count:16];
            }

            while (v21);

            v7 = v41;
            v6 = v42;
            if (v22)
            {
              v13 = v45;
              v29 = [v45 audioRouteUniqueIdentifier];

              v30 = sub_100004778();
              v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
              if (v29)
              {
                v11 = v43;
                if (v31)
                {
                  v32 = [v45 audioRouteUniqueIdentifier];
                  v33 = [v15 identifier];
                  v34 = [v44 UUID];
                  *buf = 138412802;
                  v51 = v32;
                  v52 = 2048;
                  v53 = v33;
                  v54 = 2112;
                  v55 = v34;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Per UpdateJoinedMetadata message, the local user was using %@ audio route from another device with participant identifier %llu in conversation UUID %@", buf, 0x20u);

                  v13 = v45;
                }

                v35 = [v13 audioRouteUniqueIdentifier];
                v36 = [v44 audioRoutesByParticipantIdentifier];
                v37 = [NSNumber numberWithUnsignedLongLong:[v15 identifier]];
                [v36 setObject:v35 forKeyedSubscript:v37];
              }

              else
              {
                v11 = v43;
                if (v31)
                {
                  v39 = [v15 identifier];
                  v40 = [v44 UUID];
                  *buf = 134218242;
                  v51 = v39;
                  v52 = 2112;
                  v53 = v40;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Per UpdateJoinedMetadata message, the local user was using a default audio route from another device with participant identifier %llu in conversation UUID %@; no need to track a route.", buf, 0x16u);
                }

                v35 = [v44 audioRoutesByParticipantIdentifier];
                v36 = [NSNumber numberWithUnsignedLongLong:[v15 identifier]];
                [v35 setObject:0 forKeyedSubscript:v36];
              }

LABEL_50:
              v38 = v44;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
              goto LABEL_38;
            }
          }

          else
          {
          }

          v35 = sub_100004778();
          v13 = v45;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v15;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find a matching participant for sender %@, dropping UpdateJoinedMetadata message.", buf, 0xCu);
          }

          v11 = v43;
          goto LABEL_50;
        }
      }

      else
      {
      }
    }

    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was missing a valid participant, dropping message.", buf, 2u);
    }

    v13 = v45;
    goto LABEL_34;
  }

LABEL_38:
}

- (BOOL)sendData:(id)a3 onConversation:(id)a4 toDestinationID:(id)a5 fromMember:(id)a6 additionalOptions:(id)a7 isBlobResponse:(BOOL)a8 callback:(id)a9
{
  v62 = a8;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v18 = a7;
  v65 = a3;
  v19 = [(CSDConversationManager *)self featureFlags];
  if ([v19 groupFacetimeAsAServiceEnabled])
  {
    v20 = [v14 provider];

    if (v20)
    {
      v21 = +[CSDConversationProviderManager sharedInstance];
      v22 = [v14 provider];
      v23 = [v21 serviceForProvider:v22];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v23 = [(CSDConversationManager *)self service];
LABEL_6:
  v66 = v16;
  v24 = [v16 handle];
  v25 = [v24 value];
  v64 = v23;
  v26 = [v23 accountWithCallerID:v25];

  v27 = sub_100004778();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = TULoggableStringForHandle();
    *buf = 138412546;
    v68 = v26;
    v69 = 2112;
    v70 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sending data from: %@ to: %@", buf, 0x16u);
  }

  v29 = [v18 mutableCopy];
  v30 = [v14 capabilitySendMessageOptions];

  if (v30)
  {
    v61 = v15;
    if (!v29)
    {
      v29 = objc_alloc_init(NSMutableDictionary);
    }

    v31 = [v14 capabilitySendMessageOptions];
    v32 = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
    v33 = [v31 objectForKeyedSubscript:IDSSendMessageOptionRequireAllRegistrationPropertiesKey];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = +[NSSet set];
    }

    v40 = v35;

    v41 = [v29 objectForKeyedSubscript:v32];

    v60 = v17;
    if (v41)
    {
      v42 = [v29 objectForKeyedSubscript:v32];
      v43 = [v40 setByAddingObjectsFromSet:v42];

      v40 = v43;
    }

    v44 = [v14 capabilitySendMessageOptions];
    v45 = IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey;
    v46 = [v44 objectForKeyedSubscript:IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey];
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = +[NSSet set];
    }

    v49 = v48;

    v50 = [v29 objectForKeyedSubscript:v45];

    if (v50)
    {
      v51 = [v29 objectForKeyedSubscript:v45];
      v52 = [v49 setByAddingObjectsFromSet:v51];

      v49 = v52;
    }

    v53 = [v14 capabilitySendMessageOptions];
    [v29 addEntriesFromDictionary:v53];

    if ([v40 count])
    {
      [v29 setObject:v40 forKeyedSubscript:v32];
    }

    if ([v49 count])
    {
      [v29 setObject:v49 forKeyedSubscript:v45];
    }

    if (v62)
    {
      v54 = sub_100004778();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v68 = v32;
        v69 = 2112;
        v70 = v29;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "blob response, removing %@ from options: %@", buf, 0x16u);
      }

      [v29 setObject:0 forKeyedSubscript:v32];
    }

    v37 = v14;
    v39 = v26;

    v38 = v60;
    v36 = v61;
  }

  else
  {
    v36 = v15;
    v37 = v14;
    v38 = v17;
    v39 = v26;
  }

  v55 = [v37 groupUUID];
  [v29 setObject:v55 forKeyedSubscript:@"kCSDConversationGroupUUID"];

  v56 = [(CSDConversationManager *)self sendDataBlock];
  v57 = [NSSet setWithObject:v36];
  v58 = [v37 provider];
  v63 = (v56)[2](v56, v65, v39, v57, v66, v29, 0, v38, v58);

  return v63;
}

- (BOOL)sendData:(id)a3 onConversation:(id)a4 toDestinationID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 localMember];
  LOBYTE(self) = [(CSDConversationManager *)self sendData:v10 onConversation:v9 toDestinationID:v8 fromMember:v11 additionalOptions:0 isBlobResponse:0 callback:0];

  return self;
}

- (BOOL)sendData:(id)a3 onConversation:(id)a4 toDestinationID:(id)a5 additionalOptions:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 localMember];
  LOBYTE(self) = [(CSDConversationManager *)self sendData:v13 onConversation:v12 toDestinationID:v11 fromMember:v14 additionalOptions:v10 isBlobResponse:0 callback:0];

  return self;
}

- (BOOL)sendData:(id)a3 onConversation:(id)a4 toMember:(id)a5 additionalOptions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 idsDestination];
  if (v14)
  {
    v15 = [v12 idsDestination];
    v16 = [v11 localMember];
    v17 = [(CSDConversationManager *)self sendData:v10 onConversation:v11 toDestinationID:v15 fromMember:v16 additionalOptions:v13 isBlobResponse:0 callback:0];
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not convert %@ to IDS destination", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)broadcastFile:(id)a3 onConversation:(id)a4 additionalOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 localMember];
  v12 = v11;
  if (v11)
  {
    v56 = v11;
    v13 = [v11 idsDestination];
    v14 = [NSMutableSet setWithObject:v13];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v15 = [v9 remoteMembers];
    v16 = [v15 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v64;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v64 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v63 + 1) + 8 * i) idsDestination];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v17);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v21 = [v9 lightweightMembers];
    v22 = [v21 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v60;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v60 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v59 + 1) + 8 * j) idsDestination];
          [v14 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v23);
    }

    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v56 idsFromID];
      v29 = TULoggableStringForHandle();
      v30 = [v14 allObjects];
      TULoggableStringForHandles();
      v32 = v31 = v8;
      *buf = 138412546;
      v68 = v29;
      v69 = 2112;
      v70 = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Broadcasting file from: %@ to: %@", buf, 0x16u);

      v8 = v31;
    }

    v33 = [v10 mutableCopy];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = objc_alloc_init(NSMutableDictionary);
    }

    v37 = v35;

    v38 = [v9 capabilitySendMessageOptions];

    if (v38)
    {
      v39 = [v9 capabilitySendMessageOptions];
      [v37 addEntriesFromDictionary:v39];
    }

    [v37 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionAlwaysSkipSelfKey];
    v40 = [v56 idsFromID];
    [v37 setObject:v40 forKeyedSubscript:IDSSendMessageOptionFromIDKey];

    v41 = [(CSDConversationManager *)self featureFlags];
    v55 = v10;
    if ([v41 groupFacetimeAsAServiceEnabled])
    {
      v42 = [v9 provider];

      if (v42)
      {
        v43 = +[CSDConversationProviderManager sharedInstance];
        v44 = [v9 provider];
        v45 = [v43 serviceForProvider:v44];

LABEL_31:
        v46 = [v45 service];
        v47 = v8;
        v48 = [NSURL fileURLWithPath:v8];
        v57 = 0;
        v58 = 0;
        v49 = [v46 sendResourceAtURL:v48 metadata:0 toDestinations:v14 priority:300 options:v37 identifier:&v58 error:&v57];
        v50 = v58;
        v51 = v57;

        v36 = (v51 == 0) & v49;
        v52 = sub_100004778();
        v53 = v52;
        if (v36)
        {
          v12 = v56;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v68 = v50;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Sent broadcast image message with id %@", buf, 0xCu);
          }
        }

        else
        {
          v12 = v56;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_100476D04();
          }
        }

        v8 = v47;
        v10 = v55;
        goto LABEL_37;
      }
    }

    else
    {
    }

    v45 = [(CSDConversationManager *)self service];
    goto LABEL_31;
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100476D74();
  }

  v36 = 0;
LABEL_37:

  return v36;
}

- (BOOL)broadcastData:(id)a3 onConversation:(id)a4 additionalOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v47 = a5;
  v10 = [(CSDConversationManager *)self featureFlags];
  if ([v10 groupFacetimeAsAServiceEnabled])
  {
    v11 = [v9 provider];

    if (v11)
    {
      v12 = +[CSDConversationProviderManager sharedInstance];
      v13 = [v9 provider];
      v14 = [v12 serviceForProvider:v13];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = [(CSDConversationManager *)self service];
LABEL_6:
  v15 = [v9 localMember];
  v16 = [v15 handle];
  v17 = [v16 value];
  v18 = [v14 accountWithCallerID:v17];

  if (v15)
  {
    v45 = v14;
    v46 = v8;
    v19 = [v15 idsDestination];
    v20 = [NSMutableSet setWithObject:v19];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v21 = [v9 remoteMembers];
    v22 = [v21 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v53;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v53 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v52 + 1) + 8 * i) idsDestination];
          [v20 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v23);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v27 = [v9 lightweightMembers];
    v28 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v49;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v49 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v48 + 1) + 8 * j) idsDestination];
          [v20 addObject:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v29);
    }

    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v57 = v18;
      v58 = 2112;
      v59 = v20;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Broadcasting data from: %@ to: %@", buf, 0x16u);
    }

    v34 = v47;
    v35 = [v47 mutableCopy];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = objc_alloc_init(NSMutableDictionary);
    }

    v39 = v37;

    v40 = [v9 capabilitySendMessageOptions];

    if (v40)
    {
      v41 = [v9 capabilitySendMessageOptions];
      [v39 addEntriesFromDictionary:v41];
    }

    [v39 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionAlwaysSkipSelfKey];
    v42 = [(CSDConversationManager *)self sendDataBlock];
    v43 = [v9 provider];
    v38 = (v42)[2](v42, v46, v18, v20, v15, v39, 0, 0, v43);

    v8 = v46;
    v14 = v45;
  }

  else
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100476DE4();
    }

    v38 = 0;
    v34 = v47;
  }

  return v38;
}

- (void)broadcastImageForSession:(id)a3 onConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v51 = v7;
    v52 = 2112;
    v53 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ broadcastImageForSession: %@", buf, 0x16u);
  }

  v10 = [v6 activity];
  v11 = [v10 metadata];
  v12 = [v11 imageData];

  if (v12)
  {
    v13 = [CSDMessagingConversationMessage alloc];
    v14 = [v7 groupUUID];
    v15 = [(CSDMessagingConversationMessage *)v13 initWithType:27 groupUUID:v14 link:0];

    v16 = objc_alloc_init(CSDMessagingConversationActivitySession);
    v17 = [v6 UUID];
    [v17 UUIDString];
    v18 = v47 = v7;
    [(CSDMessagingConversationActivitySession *)v16 setIdentifierUUIDString:v18];

    v19 = [v6 activity];
    v20 = objc_alloc_init(CSDMessagingConversationActivity);
    v21 = [v19 UUID];
    v22 = [v21 UUIDString];
    [(CSDMessagingConversationActivity *)v20 setIdentifierUUIDString:v22];

    v23 = objc_alloc_init(CSDMessagingConversationActivityMetadata);
    v46 = v19;
    v24 = [v19 metadata];
    v25 = [v24 imageData];
    v26 = [v25 _FTCopyGzippedData];
    [(CSDMessagingConversationActivityMetadata *)v23 setImage:v26];

    v45 = v23;
    [(CSDMessagingConversationActivity *)v20 setActivityMetadata:v23];
    [(CSDMessagingConversationActivitySession *)v16 setActivity:v20];
    v44 = v16;
    [(CSDMessagingConversationMessage *)v15 addActivitySessions:v16];
    v56[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v27 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)v15 type]];
    v57[0] = v27;
    v56[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    v28 = [v6 UUID];
    v29 = [v28 UUIDString];
    v30 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)v15 type]];
    v31 = [NSString stringWithFormat:@"%@:%@", v29, v30];
    v57[1] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];

    v33 = [(CSDConversationManager *)self temporaryFilePath];
    v34 = [(CSDMessagingConversationMessage *)v15 data];
    v49 = 0;
    [v34 writeToFile:v33 options:1073741825 error:&v49];
    v35 = v49;

    if (v35)
    {
      v7 = v47;
      v36 = sub_100004778();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        goto LABEL_14;
      }

      v37 = [v6 activity];
      v38 = [v37 UUID];
      *buf = 138412802;
      v51 = v38;
      v52 = 2112;
      v53 = v33;
      v54 = 2112;
      v55 = v35;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error transmitting activity session %@ image. Failed to write to path %@ with error %@", buf, 0x20u);
    }

    else
    {
      v7 = v47;
      v39 = [(CSDConversationManager *)self broadcastFile:v33 onConversation:v47 additionalOptions:v32];
      v40 = sub_100004778();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v6 activity];
        v42 = [v41 UUID];
        *buf = 138412546;
        v51 = v42;
        v52 = 1024;
        LODWORD(v53) = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "(broadcastImageForSession activity UUID: %@ success: %d).", buf, 0x12u);

        v7 = v47;
      }

      v43 = +[NSFileManager defaultManager];
      v48 = 0;
      [v43 removeItemAtPath:v33 error:&v48];
      v36 = v48;

      if (!v36)
      {
        goto LABEL_13;
      }

      v37 = sub_100004778();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100476E54();
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)broadcastLightweightEndorsementForAddedMembers:(id)a3 onConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v7;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ broadcastLightweightEndorsementForAddedMembers: %@", buf, 0x16u);
  }

  v10 = [v7 localLightweightSecondaryMember];
  if (v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 UUID];
      *buf = 138412546;
      v25 = v12;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "conversation: %@ has a splitSessionSecondary (%@), sending verification push", buf, 0x16u);
    }

    v13 = [CSDMessagingConversationMessage alloc];
    v14 = [v7 groupUUID];
    v15 = [(CSDMessagingConversationMessage *)v13 initWithType:29 groupUUID:v14 link:0];

    v16 = [CSDMessagingConversationMember memberWithTUConversationMember:v10];
    [(CSDMessagingConversationMessage *)v15 addAddedMembers:v16];

    v17 = [(CSDMessagingConversationMessage *)v15 data];
    v18 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)v15 type]];
    v23 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v20 = [(CSDConversationManager *)self broadcastData:v17 onConversation:v7 additionalOptions:v19];
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v25) = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(success: %d).", buf, 8u);
    }
  }
}

- (id)memberExistsForParticipantDestination:(id)a3 members:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = TUHandleForIDSCanonicalAddress();
  if (!v7)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = TULoggableStringForHandle();
      *buf = 138412290;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't create handle from participant destination identifier %@", buf, 0xCu);
    }

LABEL_14:

LABEL_15:
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = TULoggableStringForHandle();
      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't find participant destination identifier %@ in members %@", buf, 0x16u);
    }

    v21 = 0;
    goto LABEL_19;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v23 = v6;
  v11 = *v25;
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (*v25 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v24 + 1) + 8 * v12);
    v14 = [v13 handle];
    v15 = [v14 normalizedValue];

    if (v15)
    {
      v16 = [v7 normalizedValue];
      v17 = [v16 isEqualToString:v15];

      if (v17)
      {
        break;
      }
    }

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v10)
      {
        goto LABEL_4;
      }

      v6 = v23;
      goto LABEL_14;
    }
  }

  v21 = v13;

  v6 = v23;
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_19:

  return v21;
}

- (id)memberExistsForParticipantDestination:(id)a3 groupSessionParticipantUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 participantUpdateType];
  if (v8 <= 1)
  {
    if (!v8)
    {
      v21 = sub_100004778();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Received unknown participant update message", &v24, 2u);
      }

      goto LABEL_17;
    }

    if (v8 != 1)
    {
LABEL_17:
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Unable to find members from message", &v24, 2u);
      }

LABEL_25:
      v20 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if (v8 == 2 || v8 == 4)
    {
      v11 = [v7 groupUUID];
      if (v11)
      {
        v14 = [(CSDConversationManager *)self conversationWithGroupUUID:v11];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 remoteMembers];
          v17 = [v16 mutableCopy];

          v18 = [v15 localMember];
          [v17 addObject:v18];

          v19 = [v15 lightweightMembers];
          [v17 unionSet:v19];

          v20 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v6 members:v17];
        }

        else
        {
          v17 = sub_100004778();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 138412290;
            v25 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't find conversation with groupUUID %@", &v24, 0xCu);
          }

          v20 = 0;
        }
      }

      else
      {
        v15 = sub_100004778();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't decode message due to invalid groupUUID", &v24, 2u);
        }

        v20 = 0;
      }

      goto LABEL_32;
    }

    if (v8 != 3)
    {
      goto LABEL_17;
    }
  }

  v9 = [CSDMessagingConversationParticipantDidJoinContext alloc];
  v10 = [v7 clientContextData];
  v11 = [(CSDMessagingConversationParticipantDidJoinContext *)v9 initWithData:v10];

  v12 = [v11 data];
  v13 = [v12 length];

  if (!v13)
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't decode message due to invalid data length.", &v24, 2u);
    }

    goto LABEL_25;
  }

  if ([v11 isLightweight])
  {
    [v11 tuLightweightMembers];
  }

  else
  {
    [v11 tuConversationMembers];
  }
  v15 = ;
  v20 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v6 members:v15];
LABEL_32:

LABEL_33:

  return v20;
}

- (BOOL)shouldAcceptMessageFromHandle:(id)a3 messageContext:(id)a4 message:(id)a5 existingConversation:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (![(CSDConversationManager *)self verifyMessageIntentKeyFromContext:a4 message:v11])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100476EFC();
    }

    goto LABEL_20;
  }

  if (![(CSDConversationManager *)self verifyKickMemberPermittedFromHandle:v10 message:v11])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100476F38();
    }

    goto LABEL_20;
  }

  if (![(CSDConversationManager *)self verifyActivitySessionOriginatorFromHandle:v10 message:v11])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100476F74();
    }

    goto LABEL_20;
  }

  if (![(CSDConversationManager *)self verifyBlobResponseFromHandle:v10 message:v11 existingConversation:v12])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100476FB0();
    }

    goto LABEL_20;
  }

  if (![(CSDConversationManager *)self verifyLightweightMessageTypeFromHandle:v10 message:v11 existingConversation:v12])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100476FEC();
    }

    goto LABEL_20;
  }

  if (![(CSDConversationManager *)self verifyEndorseRepresentsMemberFromHandle:v10 message:v11 existingConversation:v12])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100477028();
    }

LABEL_20:

    v13 = 0;
    goto LABEL_21;
  }

  v13 = 1;
LABEL_21:

  return v13;
}

- (BOOL)shouldAcceptMembershipUpdateFromHandle:(id)a3 joinContext:(id)a4 participantUpdate:(id)a5 existingConversation:(id)a6
{
  v40 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[NSMutableSet set];
  v14 = +[NSMutableSet set];
  v15 = [v10 message];
  v38 = self;
  v39 = v11;
  if (v12)
  {
    v16 = [v12 remoteMembers];
    [v13 unionSet:v16];

    v17 = [v12 lightweightMembers];
    [v14 unionSet:v17];

    v18 = [v12 localMember];
    v19 = [v18 isLightweightMember];

    v20 = [v12 localMember];
    if (v19)
    {
      v21 = v14;
    }

    else
    {
      v21 = v13;
    }

    [v21 addObject:v20];
  }

  else
  {
    v22 = [v10 tuConversationMembers];
    [v13 unionSet:v22];

    v20 = [v10 tuLightweightMembers];
    [v14 unionSet:v20];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v23 = [v15 addedMembers];
  v24 = [v23 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v46;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v45 + 1) + 8 * i) tuConversationMember];
        [v13 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v25);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v29 = [v15 lightweightMembers];
  v30 = [v29 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v42;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v41 + 1) + 8 * j) tuConversationMember];
        [v14 addObject:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v31);
  }

  if (![(CSDConversationManager *)v38 verifyGroupSessionParticipantUpdateAllowedFromHandle:v40 participantUpdate:v39 message:v15 existingConversation:v12 lightweightMembers:v14])
  {
    v36 = sub_100004778();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100477064();
    }

    goto LABEL_28;
  }

  if (![(CSDConversationManager *)v38 verifyAllLightweightmembersAssociated:v14 remoteMembers:v13])
  {
    v36 = sub_100004778();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v40;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Not all lightweightMembers have an associated lightweightPrimary in the conversation, dropping message fromHandle: %@", buf, 0xCu);
    }

LABEL_28:

    v35 = 0;
    goto LABEL_29;
  }

  v35 = 1;
LABEL_29:

  return v35;
}

- (BOOL)verifyKickMemberPermittedFromHandle:(id)a3 message:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 type] == 19)
  {
    v7 = [v6 removedMembers];
    v8 = [v7 count];

    if (v8)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = [v6 removedMembers];
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v19 + 1) + 8 * i) handle];
            v15 = [v14 tuHandle];

            if ([v15 isEquivalentToHandle:v5])
            {
              v17 = sub_100004778();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                sub_1004770D4();
              }

              goto LABEL_18;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          v16 = 1;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10047713C();
      }

LABEL_18:
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)verifyActivitySessionOriginatorFromHandle:(id)a3 message:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 type] == 8 || objc_msgSend(v6, "type") == 23)
  {
    v7 = [v6 activitySessions];
    v8 = [v7 count];

    if (v8)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v6 activitySessions];
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v10)
      {
        v17 = 1;
        goto LABEL_24;
      }

      v11 = v10;
      v12 = *v21;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * v13) activity];
        v15 = [v14 originatorHandle];
        v16 = [v15 tuHandle];

        if (!v16)
        {
          break;
        }

        if (([v16 isEquivalentToHandle:v5] & 1) == 0)
        {
          v18 = sub_100004778();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1004771D0();
          }

LABEL_22:

          goto LABEL_23;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v17 = 1;
          if (v11)
          {
            goto LABEL_6;
          }

          goto LABEL_24;
        }
      }

      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100477238();
      }

      goto LABEL_22;
    }

    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047713C();
    }

LABEL_23:
    v17 = 0;
LABEL_24:
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (BOOL)verifyMessageIntentKeyFromContext:(id)a3 message:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 type];
  if (v7 <= 0x24)
  {
    if (((1 << v7) & 0x18D569FE7FLL) != 0)
    {
      v8 = 1;
      goto LABEL_6;
    }

    if (((1 << v7) & 0x62A800100) != 0)
    {
      v9 = [v5 publicIntentAction];
      v10 = [v9 integerValue];
      v8 = v10 == [v6 type];

      goto LABEL_6;
    }
  }

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1004772CC();
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)verifyBlobResponseFromHandle:(id)a3 message:(id)a4 existingConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 type] != 5)
  {
    goto LABEL_27;
  }

  if (!v10)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100477520();
    }

    goto LABEL_24;
  }

  v11 = [v9 activeParticipants];
  if ([v11 count] == 1)
  {
  }

  else
  {
    v13 = [v9 activeLightweightParticipants];
    v14 = [v13 count];

    if (v14 != 1)
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100477308();
      }

      goto LABEL_24;
    }
  }

  v15 = [v9 activeParticipants];
  v16 = [v15 firstObject];
  v17 = [v16 csdConversationParticipant];
  v18 = v17;
  if (v17)
  {
    v12 = v17;
  }

  else
  {
    v19 = [v9 activeLightweightParticipants];
    v20 = [v19 firstObject];
    v12 = [v20 csdConversationParticipant];
  }

  if (v12)
  {
    v21 = [v12 handle];
    v22 = [v21 isEquivalentToHandle:v8];

    if (v22)
    {
      v23 = [v10 remoteMembers];
      v24 = [v23 mutableCopy];

      v25 = [v10 localMember];
      [v24 addObject:v25];

      v26 = [v12 isLightweight];
      v27 = [v8 value];
      if (v26)
      {
        v28 = [v10 lightweightMembers];
        v29 = [v28 copy];
        v30 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v27 members:v29];

        if (!v30)
        {
          v31 = sub_100004778();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_100477474();
          }

LABEL_31:

          goto LABEL_24;
        }
      }

      else
      {
        v34 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v27 members:v24];

        if (!v34)
        {
          v31 = sub_100004778();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_100477404();
          }

          goto LABEL_31;
        }
      }

LABEL_27:
      v33 = 1;
      goto LABEL_28;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10047739C();
    }
  }

  else
  {
    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1004774E4();
    }
  }

LABEL_24:
  v33 = 0;
LABEL_28:

  return v33;
}

- (BOOL)verifyAllLightweightmembersAssociated:(id)a3 remoteMembers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v9)
  {
    v18 = 1;
    goto LABEL_18;
  }

  v10 = v9;
  v11 = *v23;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v22 + 1) + 8 * i);
      v14 = [v13 lightweightPrimary];

      if (!v14)
      {
        v19 = sub_100004778();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v13;
          v20 = "Member: %@ doesn't have a primary";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
        }

LABEL_17:

        v18 = 0;
        goto LABEL_18;
      }

      v15 = [v13 lightweightPrimary];
      v16 = [v15 value];
      v17 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v16 members:v7];

      if (!v17)
      {
        v19 = sub_100004778();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v13;
          v20 = "Lightweight member %@ doesn't have their primary in the conversation";
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    v18 = 1;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_18:

  return v18;
}

- (BOOL)verifyGroupSessionParticipantUpdateAllowedFromHandle:(id)a3 participantUpdate:(id)a4 message:(id)a5 existingConversation:(id)a6 lightweightMembers:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v12 value];
  v17 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v16 members:v15];

  v18 = [v13 participantUpdateType];
  if (!v17)
  {
    if (v18 == 3)
    {
      v34 = v14;
      v35 = v13;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = [v14 lightweightMembers];
      v22 = [v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v36 + 1) + 8 * i) lightweightPrimary];
            v27 = [v26 tuHandle];
            v28 = [v27 isEquivalentToHandle:v12];

            if ((v28 & 1) == 0)
            {
              v29 = sub_100004778();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_10047763C();
              }

              v19 = 0;
              v14 = v34;
              v13 = v35;
              goto LABEL_28;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v14 = v34;
      v13 = v35;
    }

LABEL_18:
    v19 = 1;
    goto LABEL_28;
  }

  v19 = 0;
  if (v18 && v18 != 3)
  {
    if (v18 == 1)
    {
      if (!a6)
      {
        v30 = sub_100004778();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1004775CC();
        }

        goto LABEL_27;
      }

      v20 = [v14 addedMembers];
      if ([v20 count])
      {

        goto LABEL_25;
      }

      v31 = [v14 lightweightMembers];
      v32 = [v31 count];

      if (v32)
      {
LABEL_25:
        v30 = sub_100004778();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10047755C();
        }

LABEL_27:

        v19 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_18;
  }

LABEL_28:

  return v19;
}

- (BOOL)verifyLightweightMessageTypeFromHandle:(id)a3 message:(id)a4 existingConversation:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1004776A4();
    }

    goto LABEL_9;
  }

  v10 = [a3 value];
  v11 = [v9 lightweightMembers];
  v12 = [v11 copy];
  v13 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v10 members:v12];

  if (v13)
  {
    v14 = [v8 type];
    if (v14 <= 0x23)
    {
      if (((1 << v14) & 0xE2749FC6FLL) != 0)
      {
LABEL_9:
        v15 = 0;
        goto LABEL_10;
      }

      if (((1 << v14) & 0x8A00310) != 0)
      {
        goto LABEL_6;
      }
    }

    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1004772CC();
    }

    goto LABEL_9;
  }

LABEL_6:
  v15 = 1;
LABEL_10:

  return v15;
}

- (BOOL)verifyEndorseRepresentsMemberFromHandle:(id)a3 message:(id)a4 existingConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 type] != 29)
  {
    goto LABEL_9;
  }

  if (!v10)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1004776A4();
    }

    goto LABEL_23;
  }

  v11 = [v9 addedMembers];
  v12 = [v11 count];

  if (v12 != 1)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1004776E0(v9);
    }

    goto LABEL_23;
  }

  v13 = [v9 addedMembers];
  v14 = [v13 firstObject];
  v15 = [v14 tuConversationMember];

  if (!-[NSObject isLightweightMember](v15, "isLightweightMember") || (-[NSObject lightweightPrimary](v15, "lightweightPrimary"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isEquivalentToHandle:v8], v16, (v17 & 1) == 0))
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412546;
      v32 = v8;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "FromID: %@ attempting to vouch for an invalid member %@", &v31, 0x16u);
    }

    goto LABEL_22;
  }

  v18 = [v15 handle];
  v19 = [v18 value];
  v20 = [v10 lightweightMembers];
  v21 = [v20 copy];
  v22 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v19 members:v21];

  if (!v22)
  {
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      v27 = "No local lightweightMember found for handle trying to be vouched";
      v28 = v26;
      v29 = 2;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, &v31, v29);
    }

LABEL_21:

LABEL_22:
LABEL_23:

    v25 = 0;
    goto LABEL_24;
  }

  v23 = [v22 lightweightPrimary];
  v24 = [v23 isEquivalentToHandle:v8];

  if ((v24 & 1) == 0)
  {
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = v8;
      v27 = "FromHandle: %@ trying to vouch for another member's lightweightMember";
      v28 = v26;
      v29 = 12;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_9:
  v25 = 1;
LABEL_24:

  return v25;
}

- (NSDictionary)conversationsByGroupUUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028694;
  v11 = sub_1000328D4;
  v12 = 0;
  v3 = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017108C;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)advertisementsOnSystem
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028694;
  v11 = sub_1000328D4;
  v12 = 0;
  v3 = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100171434;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)incomingPendingConversationsByGroupUUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028694;
  v11 = sub_1000328D4;
  v12 = 0;
  v3 = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001716D8;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_incomingPendingConversationsByGroupUUID
{
  v2 = [(CSDConversationManager *)self pendingMembershipTracker];
  v3 = [v2 pendingMembersByGroup];

  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v11 = [[TUConversation alloc] initWithUUID:v10 groupUUID:v10];
        v12 = [v5 objectForKeyedSubscript:v10];
        v13 = [NSSet setWithArray:v12];
        [v11 setPendingMembers:v13];

        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v14 = [(CSDConversationManager *)self linkManager];
  v15 = [v5 allKeys];
  v36 = 0;
  v16 = [v14 conversationLinkDescriptorsWithGroupUUIDs:v15 error:&v36];
  v17 = v36;

  if (v17)
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] _incomingPendingConversationsByGroupUUID: issue fetching links for pending incoming {error: %@}", buf, 0xCu);
    }
  }

  v31 = v17;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * j);
        v25 = [v24 groupUUID];
        v26 = [v4 objectForKeyedSubscript:v25];

        v27 = [[TUConversationLink alloc] initWithDescriptor:v24];
        [v26 setLink:v27];
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v21);
  }

  v28 = [v4 copy];

  return v28;
}

- (NSDictionary)_conversationsByUUID
{
  v3 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v3);

  return [(CSDConversationManager *)self mutableConversationsByUUID];
}

- (NSDictionary)pseudonymsByCallUUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028694;
  v11 = sub_1000328D4;
  v12 = 0;
  v3 = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100171BF0;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)conversationsByUUIDIncludingStorageConversations:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100028694;
  v14 = sub_1000328D4;
  v15 = 0;
  v5 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100171D8C;
  block[3] = &unk_10061CE30;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = [v11[5] copy];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)activatedConversationLinksWithError:(id *)a3
{
  if ([(CSDConversationManager *)self _linksEnabled])
  {
    v5 = [(CSDConversationManager *)self linkManager];
    v6 = [v5 fetchActivatedLinksWithError:a3];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)deletedConversationLinksWithError:(id *)a3
{
  if ([(CSDConversationManager *)self _linksEnabled])
  {
    v5 = [(CSDConversationManager *)self linkManager];
    v6 = [v5 fetchDeletedLinksWithError:a3];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (NSDictionary)activityAuthorizedBundleIdentifierState
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[CPApplicationPolicyManager sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 autoSharePlayEnabled]);
  [v2 setObject:v4 forKeyedSubscript:@"gk"];

  v5 = +[CPApplicationPolicyManager sharedInstance];
  v6 = [v5 authorizedBundleIdentifiers];
  [v2 setObject:v6 forKeyedSubscript:@"bk"];

  return v2;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001722A8;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001723B0;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)addObserver:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManager *)self observerStorage];
  [v8 addObserver:v7 queue:v6];
}

- (void)beginListeningOnService:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100172534;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)retreiveActiveConversations
{
  v3 = [(CSDConversationManager *)self service];
  v4 = [v3 callerID];

  if (v4)
  {
    v5 = [(CSDConversationManager *)self persistenceController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001728F0;
    v8[3] = &unk_10061CE58;
    v8[4] = self;
    [v5 enumerateActiveConversations:v8];
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = 1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "shouldClearDefaults: %d - Removing all conversations", buf, 8u);
    }

    v7 = [(CSDConversationManager *)self persistenceController];
    [v7 removeAllConversations];
  }
}

- (void)removeAllConversations
{
  v2 = [(CSDConversationManager *)self persistenceController];
  [v2 removeAllConversations];
}

- (id)findOrCreateConversationWithGroupUUID:(id)a3 messagesGroupUUID:(id)a4 remoteMembers:(id)a5 otherInvitedHandles:(id)a6 localMember:(id)a7 remotePushTokens:(id)a8 link:(id)a9 activity:(id)a10 avMode:(unint64_t)a11 presentationMode:(unint64_t)a12 conversationProvider:(id)a13 screenSharingRequest:(id)a14
{
  v44 = a3;
  v42 = a4;
  v43 = a5;
  v37 = a6;
  v40 = a7;
  v34 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a13;
  v23 = a14;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100028694;
  v64 = sub_1000328D4;
  v65 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173278;
  block[3] = &unk_10061CE80;
  v46 = v44;
  v47 = v43;
  v48 = v22;
  v49 = self;
  v50 = v20;
  v24 = v20;
  v25 = v22;
  v51 = v40;
  v52 = v42;
  v53 = v37;
  v54 = v34;
  v55 = v21;
  v56 = v23;
  v58 = a11;
  v59 = a12;
  v57 = &v60;
  v41 = v23;
  v39 = v21;
  v35 = v34;
  v38 = v37;
  v26 = v42;
  v27 = v40;
  v28 = v24;
  v29 = v25;
  v30 = v43;
  v31 = v44;
  dispatch_sync(queue, block);

  v32 = v61[5];
  _Block_object_dispose(&v60, 8);

  return v32;
}

- (void)joinExistingConversationWithUUID:(id)a3 context:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173C8C;
  block[3] = &unk_100619E58;
  v11 = a3;
  v12 = a4;
  v13 = self;
  v6 = v12;
  v7 = v11;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  v9 = [(CSDConversationManager *)self queue];
  dispatch_async(v9, v8);
}

- (id)initiatePendingConversationForLink:(id)a3 localMember:(id)a4 isVideoEnabled:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100028694;
  v25 = sub_1000328D4;
  v26 = 0;
  v10 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017467C;
  block[3] = &unk_10061CED0;
  v16 = v8;
  v17 = v9;
  v20 = a5;
  v18 = self;
  v19 = &v21;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, block);

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

- (void)requestLetMeInApprovalForPseudonym:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100174C04;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)updateLetMeInRequestState:(int64_t)a3 addLink:(id)a4 forConversationWithUUID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100175C28;
  v13[3] = &unk_10061BDD0;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v17 = a3;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

- (void)sendInvitationMessageToMember:(id)a3 destinationID:(id)a4 invitationContext:(id)a5 forConversation:(id)a6 includeAllAttributes:(BOOL)a7 invitationPreferences:(id)a8 additionalOptions:(id)a9
{
  v10 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v65 = a8;
  v63 = a9;
  v18 = [CSDMessagingConversationMessage alloc];
  v19 = [v17 groupUUID];
  v20 = [v17 link];
  v21 = [(CSDMessagingConversationMessage *)v18 initWithType:1 groupUUID:v19 link:v20];

  if (v10)
  {
    v61 = v15;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v22 = [v17 activeRemoteParticipants];
    v23 = [v22 countByEnumeratingWithState:&v78 objects:v87 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v79;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v79 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:*(*(&v78 + 1) + 8 * i)];
          [(CSDMessagingConversationMessage *)v21 addActiveParticipants:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v78 objects:v87 count:16];
      }

      while (v24);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v28 = [v17 activeLightweightParticipants];
    v29 = [v28 countByEnumeratingWithState:&v74 objects:v86 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v75;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v75 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:*(*(&v74 + 1) + 8 * j)];
          [(CSDMessagingConversationMessage *)v21 addActiveLightweightParticipants:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v74 objects:v86 count:16];
      }

      while (v30);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v34 = [v17 remoteMembers];
    v35 = [v34 countByEnumeratingWithState:&v70 objects:v85 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v71;
      do
      {
        for (k = 0; k != v36; k = k + 1)
        {
          if (*v71 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [CSDMessagingConversationMember memberWithTUConversationMember:*(*(&v70 + 1) + 8 * k)];
          [(CSDMessagingConversationMessage *)v21 addAddedMembers:v39];
        }

        v36 = [v34 countByEnumeratingWithState:&v70 objects:v85 count:16];
      }

      while (v36);
    }

    v59 = v16;
    v62 = v14;

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v40 = [v17 activitySessions];
    v41 = [v40 countByEnumeratingWithState:&v66 objects:v84 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v67;
      do
      {
        for (m = 0; m != v42; m = m + 1)
        {
          if (*v67 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v66 + 1) + 8 * m);
          v46 = [v45 activity];
          v47 = [v46 isStaticActivity];

          if ((v47 & 1) == 0)
          {
            v48 = [CSDMessagingConversationActivitySession activitySessionWithCSDConversationActivitySession:v45 fromConversation:v17 forStorage:0];
            [(CSDMessagingConversationMessage *)v21 addActivitySessions:v48];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v66 objects:v84 count:16];
      }

      while (v42);
    }

    v49 = [v17 highlightIdentifiers];
    v50 = [v49 anyObject];

    if (v50)
    {
      [(CSDMessagingConversationMessage *)v21 setHighlightIdentifier:v50];
    }

    v51 = [v17 stagedActivitySession];

    v15 = v61;
    v14 = v62;
    if (v51)
    {
      v52 = [v17 stagedActivitySession];
      v53 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:v52 fromConversation:v17 forStorage:0];
      [(CSDMessagingConversationMessage *)v21 setStagedActivitySession:v53];
    }

    v16 = v60;
  }

  if (v65)
  {
    [(CSDMessagingConversationMessage *)v21 setTUInvitationPreferences:v65];
  }

  else
  {
    v54 = [v17 invitationPreferences];
    [(CSDMessagingConversationMessage *)v21 setTUInvitationPreferences:v54];
  }

  v55 = [(CSDConversationManager *)self featureFlags];
  v56 = [v55 nearbyFaceTimeEnabled];

  if (v56)
  {
    [(CSDMessagingConversationMessage *)v21 setTUInvitationContext:v16];
  }

  v57 = sub_100004778();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v83 = v21;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Sending invitation message %@", buf, 0xCu);
  }

  v58 = [(CSDMessagingConversationMessage *)v21 data];
  if (v15)
  {
    [(CSDConversationManager *)self sendData:v58 onConversation:v17 toDestinationID:v15 additionalOptions:v63];
  }

  else
  {
    [(CSDConversationManager *)self sendData:v58 onConversation:v17 toMember:v14 additionalOptions:v63];
  }
}

- (void)startAudioForConversationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001766B8;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_leaveConversation:(id)a3 withContext:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v7);

  [v14 leaveUsingContext:v6];
  v8 = [v14 link];
  v9 = [v8 pseudonym];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [v14 link];
    v12 = [v11 pseudonym];
    v13 = [(CSDConversationManager *)self _removePendingConversationWithPseudonym:v12];
  }
}

- (void)_leaveConversation:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:0];
  [(CSDConversationManager *)self _leaveConversation:v4 withContext:v6];
}

- (void)leaveConversationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:0];
  [(CSDConversationManager *)self leaveConversationWithUUID:v4 withContext:v5];
}

- (void)leaveConversationWithUUID:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100176AF4;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)leaveAllConversations
{
  v3 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100176C08;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)addPseudonym:(id)a3 forCallUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100176DEC;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)removePseudonym:(id)a3 forCallUUID:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100176EFC;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)setUplinkMuted:(BOOL)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017700C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setVideo:(BOOL)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100177134;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)sendVideoUpgradeMessageforConversationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100177254;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setVideoEnabled:(BOOL)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001774A4;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setUplinkMuted:(BOOL)a3 forPendingConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001775CC;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setVideoEnabled:(BOOL)a3 forPendingConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001778F0;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)requestParticipantToShareScreen:(id)a3 forConversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self featureFlags];
  v9 = [v8 requestToScreenShareEnabled];

  if (v9)
  {
    v10 = [(CSDConversationManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100177C78;
    block[3] = &unk_100619E58;
    v13 = v6;
    v14 = self;
    v15 = v7;
    dispatch_async(v10, block);

    v11 = v13;
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100477978();
    }
  }
}

- (void)cancelOrDenyScreenShareRequest:(id)a3 forConversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100177FDC;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)setScreenEnabled:(BOOL)a3 screenShareAttributes:(id)a4 forConversationWithUUID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100178394;
  v13[3] = &unk_10061BE38;
  v13[4] = self;
  v14 = v9;
  v16 = a3;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

- (void)setVideoPaused:(BOOL)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178B1C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setAudioPaused:(BOOL)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178C44;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setRelaying:(BOOL)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178D6C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setScreening:(BOOL)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178E94;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setAudioInjectionAllowed:(BOOL)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178FBC;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (BOOL)isConversationWithUUIDRedirectingAudio:(id)a3
{
  v4 = a3;
  if ([(CSDConversationManager *)self isConversationWithUUIDRelaying:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CSDConversationManager *)self isConversationWithUUIDScreening:v4];
  }

  return v5;
}

- (BOOL)isConversationWithUUIDRelaying:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179180;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (BOOL)isConversationWithUUIDScreening:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001792F4;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (int)presentationStateForConversationWithUUID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 2;
  v5 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017946C;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LODWORD(v4) = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)setPresentationState:(int)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017959C;
  block[3] = &unk_10061CF48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setPresentationRect:(CGRect)a3 forConversationWithUUID:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(CSDConversationManager *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001796E4;
  v12[3] = &unk_10061CF70;
  v12[4] = self;
  v13 = v9;
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  v11 = v9;
  dispatch_async(v10, v12);
}

- (void)setGridDisplayMode:(unint64_t)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179810;
  block[3] = &unk_100619F20;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setScreenShareAttributes:(id)a3 forConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179954;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)setIsNearbySharePlay:(BOOL)a3 forConversationWithUUID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversationUUID: %d isNearbySharePlay: %@", buf, 0x12u);
  }

  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179B20;
  block[3] = &unk_100619F48;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v9 = v6;
  dispatch_async(v8, block);
}

- (void)removeRemoteMembers:(id)a3 fromConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179FBC;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (BOOL)_conversationIsOverGreenTeaCapacity:(id)a3 addingMembers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self featureFlags];
  v9 = TUGreenTeaLagunaEnabled();

  if (v9)
  {
    v10 = [v6 remoteMembers];
    v11 = [NSMutableSet setWithSet:v10];

    [v11 unionSet:v7];
    v12 = [v6 localMember];
    v13 = [v12 association];
    v14 = [TUConversation mergedRemoteMembers:v11 withLocalMemberAssociation:v13 removingLocallyAssociatedMember:1];

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      v17 = @"NO";
      if (v16 > 1)
      {
        v17 = @"YES";
      }

      v24 = 138412290;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Laguna conversationIsOverGreenTeaCapacity: %@", &v24, 0xCu);
    }

    v18 = [v14 count] > 1;
  }

  else
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v6 remoteMembers];
      v21 = [v20 count];
      v22 = @"NO";
      if (v21 == 1)
      {
        v22 = @"YES";
      }

      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "conversationIsOverGreenTeaCapacity: %@", &v24, 0xCu);
    }

    v11 = [v6 remoteMembers];
    v18 = [v11 count] == 1;
  }

  return v18;
}

- (void)addRemoteMembers:(id)a3 otherInvitedHandles:(id)a4 invitationPreferences:(id)a5 toConversationWithUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017A4B8;
  block[3] = &unk_10061A428;
  v20 = v13;
  v21 = v10;
  v22 = v11;
  v23 = self;
  v24 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  dispatch_async(v14, block);
}

- (void)prepareConversationWithUUID:(id)a3 withHandoffContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017AC24;
  block[3] = &unk_100619E58;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)setSharePlayHandedOff:(BOOL)a3 onConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017B194;
  block[3] = &unk_100619F48;
  v12 = a3;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)maybeAddComplementaryAssociationVoucherFor:(id)a3 toLocalMemberOf:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v44 = self;
  v11 = [(CSDConversationManager *)self voucherManager];

  if (v11)
  {
    block = v10;
    group = dispatch_group_create();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v41 = v8;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v51;
      v42 = *v51;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v50 + 1) + 8 * i);
          v17 = [v16 association];
          if (v17)
          {
            v18 = v17;
            v19 = [v16 associationVoucher];

            if (v19)
            {
              v20 = objc_alloc_init(CSDMessagingMemberAssociationClaim);
              v21 = [v9 localMember];
              [v21 handle];
              v23 = v22 = v13;
              v24 = [CSDMessagingHandle handleWithTUHandle:v23];
              [(CSDMessagingMemberAssociationClaim *)v20 setPrimaryHandle:v24];

              v25 = [v9 localParticipant];
              -[CSDMessagingMemberAssociationClaim setPrimaryIdentifier:](v20, "setPrimaryIdentifier:", [v25 identifier]);

              v26 = [v9 localParticipant];
              v27 = [v26 avcIdentifier];
              [(CSDMessagingMemberAssociationClaim *)v20 setPrimaryAvcIdentifier:v27];

              v28 = [v16 handle];
              v29 = [CSDMessagingHandle handleWithTUHandle:v28];
              [(CSDMessagingMemberAssociationClaim *)v20 setAssociatedPseudonym:v29];

              v30 = [v9 groupUUID];
              v31 = [v30 UUIDString];
              [(CSDMessagingMemberAssociationClaim *)v20 setConversationGroupUUIDString:v31];

              v32 = [v16 association];
              -[CSDMessagingMemberAssociationClaim setType:](v20, "setType:", [v32 type]);

              dispatch_group_enter(group);
              v33 = [(CSDConversationManager *)v44 voucherManager];
              v34 = [(CSDMessagingMemberAssociationClaim *)v20 data];
              v35 = [v9 localMember];
              v36 = [v35 handle];
              v46[0] = _NSConcreteStackBlock;
              v46[1] = 3221225472;
              v46[2] = sub_10017B75C;
              v46[3] = &unk_10061CF98;
              v46[4] = v16;
              v47 = v9;
              v48 = v20;
              v49 = group;
              v37 = v20;
              [v33 sign:v34 as:v36 completion:v46];

              v13 = v22;
              v14 = v42;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v13);
    }

    v38 = [(CSDConversationManager *)v44 queue];
    v10 = block;
    dispatch_group_notify(group, v38, block);

    v8 = v41;
  }

  else
  {
    v39 = sub_100004778();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      sub_100477B90();
    }

    v10[2](v10);
  }
}

- (void)addInvitedMemberHandlesFromAddedRemoteMembers:(id)a3 toConversationLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41 = self;
  v8 = [(CSDConversationManager *)self _linksEnabled];
  v44 = v7;
  if (!v7 || !v8 || ![v7 isLocallyCreated])
  {
    goto LABEL_46;
  }

  v42 = +[NSMutableSet set];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v40 = v6;
  v9 = v6;
  v49 = [v9 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (!v49)
  {
    goto LABEL_40;
  }

  v48 = *v55;
  obj = v9;
  do
  {
    v10 = 0;
    do
    {
      if (*v55 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v54 + 1) + 8 * v10);
      v12 = [v11 handle];
      v13 = [v12 value];
      if ([v13 destinationIdIsTemporary])
      {
        goto LABEL_12;
      }

      v14 = [v11 handle];
      v15 = [v14 value];
      if ([v15 destinationIdIsPseudonym])
      {

LABEL_12:
LABEL_13:
        v16 = sub_100004778();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v17 = [v11 handle];
        v47 = [v11 handle];
        v46 = [v47 value];
        if ([v46 destinationIdIsTemporary])
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        v45 = v18;
        v19 = [v11 handle];
        v20 = [v19 value];
        if ([v20 destinationIdIsPseudonym])
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v22 = [v11 handle];
        v23 = [v44 originatorHandle];
        v24 = [v22 isEquivalentToHandle:v23];
        *buf = 138413058;
        if (v24)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        v60 = v17;
        v26 = v17;
        v61 = 2112;
        v62 = v45;
        v63 = 2112;
        v64 = v21;
        v65 = 2112;
        v66 = v25;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not adding %@ to invited member handles of link because destinationIdIsTemporary(%@), destinationIdIsPseudonym(%@), or handle is the originator of link (%@)", buf, 0x2Au);

LABEL_24:
        goto LABEL_25;
      }

      v27 = [v11 handle];
      v28 = [v44 originatorHandle];
      v29 = [v27 isEquivalentToHandle:v28];

      if (v29)
      {
        goto LABEL_13;
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v30 = [v44 invitedMemberHandles];
      v31 = [v30 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v51;
LABEL_30:
        v34 = 0;
        while (1)
        {
          if (*v51 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v50 + 1) + 8 * v34);
          v36 = [v11 handle];
          LOBYTE(v35) = [v36 isEquivalentToHandle:v35];

          if (v35)
          {
            break;
          }

          if (v32 == ++v34)
          {
            v32 = [v30 countByEnumeratingWithState:&v50 objects:v58 count:16];
            if (v32)
            {
              goto LABEL_30;
            }

            goto LABEL_36;
          }
        }

        v16 = sub_100004778();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v26 = [v11 handle];
        *buf = 138412290;
        v60 = v26;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not adding %@ to invited member handles of link because it is already an invited member handle of the link", buf, 0xCu);
        goto LABEL_24;
      }

LABEL_36:

      v16 = [v11 handle];
      [v42 addObject:v16];
LABEL_25:

      v10 = v10 + 1;
    }

    while (v10 != v49);
    v9 = obj;
    v37 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    v49 = v37;
  }

  while (v37);
LABEL_40:

  v38 = v42;
  if ([v42 count])
  {
    [(CSDConversationManager *)v41 addInvitedMemberHandles:v42 toConversationLink:v44 completionHandler:0];
    v6 = v40;
  }

  else
  {
    v39 = sub_100004778();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v9;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Not adding any of the following members to the invited handles of the link: %@", buf, 0xCu);
    }

    v6 = v40;
    v38 = v42;
  }

LABEL_46:
}

- (BOOL)allActiveConversationParticipantsSupportSharePlay
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [(CSDConversationManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017BF28;
  v5[3] = &unk_10061C1E0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)isSharePlayAvailable
{
  v2 = [(CSDConversationManager *)self sharePlaySystemStateObserver];
  v3 = [v2 allowSharePlay];

  return v3;
}

- (BOOL)isScreenSharingAvailable
{
  v2 = [(CSDConversationManager *)self sharePlaySystemStateObserver];
  v3 = [v2 allowScreenSharing];

  return v3;
}

- (BOOL)isScreenSharingInitiationAvailable
{
  v2 = [(CSDConversationManager *)self sharePlaySystemStateObserver];
  v3 = [v2 allowScreenSharingInitiation];

  return v3;
}

- (void)displaySharePlayUnableToStartAlert
{
  v3 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017C0B8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_displaySharePlayUnableToStartAlert
{
  v3 = TUBundle();
  v4 = [v3 localizedStringForKey:@"SHAREPLAY_INCOMPATIBLE_MESSAGE" value:&stru_100631E68 table:@"TelephonyUtilities"];

  if (TUSharePlayForceDisabled())
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Not displaying SharePlay not supported alert because SharePlay features are disabled.", buf, 2u);
    }
  }

  else
  {
    v6 = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(v6);

    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Displaying SharePlay not supported alert with message: %@", buf, 0xCu);
    }

    v8 = TUBundle();
    v5 = [v8 localizedStringForKey:@"OK" value:&stru_100631E68 table:@"TelephonyUtilities"];

    v9 = +[NSString stringGUID];
    v10 = TUBundle();
    v11 = [v10 localizedStringForKey:@"SHAREPLAY_INCOMPATIBLE_TITLE" value:&stru_100631E68 table:@"TelephonyUtilities"];
    v12 = [IMUserNotification userNotificationWithIdentifier:v9 title:v11 message:v4 defaultButton:v5 alternateButton:0 otherButton:0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017C33C;
    block[3] = &unk_100619D38;
    v15 = v12;
    v13 = v12;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)updateMessagesGroupName:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017C494;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)updateMessagesGroupPhotoOnConversationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017C974;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setLocalParticipantCluster:(id)a3 forConversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017CE78;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (FTDeviceSupport)deviceSupport
{
  deviceSupport = self->_deviceSupport;
  if (deviceSupport)
  {
    v3 = deviceSupport;
  }

  else
  {
    v3 = +[FTDeviceSupport sharedInstance];
  }

  return v3;
}

- (id)createCPActivitySessionForActivitySession:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ConversationManager asked to create activitySession for activitySession: %@ on conversation UUID: %@", &v25, 0x16u);
  }

  v10 = [(CSDConversationManager *)self mutableConversationsByUUID];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (!v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(CSDConversationManager *)self mutableConversationsByUUID];
      v19 = [v18 allKeys];
      v25 = 138412546;
      v26 = v7;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v25, 0x16u);
    }

    goto LABEL_14;
  }

  if ([v11 state] != 3 && objc_msgSend(v6, "isLocallyInitiated"))
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v7;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_20;
  }

  v13 = [v6 activity];
  [v13 setTrustedFromHandle:0];

  v12 = [v11 createActivitySession:v6];
  if (v12)
  {
    [(CSDConversationManager *)self cancelPreviouslySentScreenShareRequests:v11];
    v14 = [v12 tuConversationActivitySession];
    v15 = [v11 localParticipant];
    [(CSDConversationManager *)self postSessionStartedForSession:v14 originator:v15 conversation:v11];

    v16 = [v6 activity];
    LOBYTE(v15) = [v16 isStaticActivity];

    if (v15)
    {
      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not broadcasting activity session creation for static activity", &v25, 2u);
      }
    }

    else
    {
      v22 = [CSDMessagingConversationMessage alloc];
      v23 = [v11 groupUUID];
      v17 = [(CSDMessagingConversationMessage *)v22 initWithType:8 groupUUID:v23 link:0];

      [(CSDConversationManager *)self sendMessage:v17 forConversation:v11 withActivitySession:v12];
      [(CSDConversationManager *)self broadcastImageForSession:v6 onConversation:v11];
    }

    v12 = v12;
    v20 = v12;
  }

  else
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100477C7C();
    }

    v20 = 0;
  }

LABEL_20:

  return v20;
}

- (void)advertiseGroupActivity:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Advertising GroupActivity with UUID = %@", buf, 0xCu);
  }

  v9 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017D4B8;
  block[3] = &unk_10061AF20;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)stopAdvertisingGroupActivity:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stopping advertisement of GroupActivity with UUID = %@", buf, 0xCu);
  }

  v9 = [(CSDConversationManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10017D654;
  v11[3] = &unk_10061ACD0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(v9, v11);
}

- (void)createActivitySession:(id)a3 onConversationWithUUID:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "createActivitySession: %@ onContainerWithUUID: %@", &v15, 0x16u);
  }

  v14 = [(CSDConversationManager *)self activitySessionContainerProvider];
  [v14 handleActivitySessionCreationRequestWithActivity:v10 options:a5 containerID:v11 completionHandler:v12];
}

- (void)leaveActivitySession:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017D8A8;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)endActivitySession:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017DB14;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)presentDismissalAlertForActivitySessionWithUUID:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017DD84;
  block[3] = &unk_100619E58;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)cancelPreviouslySentScreenShareRequests:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 screenSharingRequests];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 138412290;
    v14 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isLocallyOriginated])
        {
          v12 = sub_100004778();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cancelling existing locally originated screen share request: %@", buf, 0xCu);
          }

          v13 = [v4 UUID];
          [(CSDConversationManager *)self cancelOrDenyScreenShareRequest:v11 forConversationUUID:v13];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)setUsingAirplay:(BOOL)a3 onActivitySession:(id)a4 onConversationWithUUID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10017E184;
  v13[3] = &unk_10061BE38;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)sendMessage:(id)a3 forConversation:(id)a4 withActivitySession:(id)a5 additionalOptions:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [CSDMessagingConversationActivitySession activitySessionWithCSDConversationActivitySession:v11 fromConversation:v9 forStorage:0];
  [v12 addActivitySessions:v13];

  v14 = [v12 data];
  v28[0] = IDSSendMessageOptionPublicMessageIntentKey;
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 type]);
  v29[0] = v15;
  v28[1] = IDSSendMessageOptionQueueOneIdentifierKey;
  v16 = [v11 identifier];

  v17 = [v16 UUIDString];
  v18 = [v12 type];

  v19 = [NSNumber numberWithInt:v18];
  v20 = [NSString stringWithFormat:@"%@:%@", v17, v19];
  v29[1] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v22 = [v21 mutableCopy];

  if (v10)
  {
    [v22 addEntriesFromDictionary:v10];
  }

  v23 = [(CSDConversationManager *)self broadcastData:v14 onConversation:v9 additionalOptions:v22];
  v24 = sub_100004778();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v27 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "(success: %d).", buf, 8u);
  }
}

- (void)joinConversationWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017E880;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)launchApplicationForActivitySessionUUID:(id)a3 authorizedExternally:(BOOL)a4 forceBackground:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10017EB34;
  v15[3] = &unk_10061CFE8;
  v19 = a5;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v20 = a4;
  v13 = v11;
  v14 = v10;
  dispatch_sync(v12, v15);
}

- (void)requestActivityAuthorizationForApplicationWithBundleIdentifier:(id)a3 overrides:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting activity authorization for %@", buf, 0xCu);
  }

  v12 = [(CSDConversationManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10017F91C;
  v16[3] = &unk_10061AF98;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_sync(v12, v16);
}

- (void)revokeBackgroundPipAuthorizationsForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017FA70;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)resetActivitySessionSceneAssociationsForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017FCAC;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleConversation:(id)a3 participantUpdateMessage:(id)a4 fromNormalizedHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v137 = v9;
    v138 = 2112;
    v139 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Handling participant update message: %@ from: %@", buf, 0x16u);
  }

  if (sub_1000C0318(v9))
  {
    v13 = objc_alloc_init(NSMutableArray);
    v14 = [v8 localParticipant];
    v15 = [IDSDestination destinationWithTUConversationParticipant:v14];
    v109 = v13;
    [v13 addObject:v15];

    v16 = [v9 activeParticipants];
    v17 = [v16 firstObject];

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v18 = [v8 activeRemoteParticipants];
    v19 = [v18 countByEnumeratingWithState:&v130 objects:v146 count:16];
    if (v19)
    {
      v20 = v19;
      v103 = v8;
      v112 = self;
      v108 = 0;
      v21 = *v131;
      v107 = v17;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v131 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v130 + 1) + 8 * i);
          v24 = [v23 identifier];
          if (v24 == [v17 identifier])
          {
            v25 = [v23 handle];
            v26 = v10;
            v27 = [v25 isEquivalentToHandle:v10];

            if ((v27 & 1) == 0)
            {
              v33 = sub_100004778();
              v10 = v26;
              v17 = v107;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = [v23 handle];
                *buf = 138412802;
                v137 = v107;
                v138 = 2112;
                v139 = v34;
                v140 = 2112;
                v141 = v10;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring participant update message %@ because participant handle %@ does not match message sender %@.", buf, 0x20u);
              }

              goto LABEL_24;
            }

            if (v108)
            {
              v28 = sub_100004778();
              v10 = v26;
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v137 = v103;
                _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Trying to update participant, but one is already found... duplicate participants on conversation? conversation: %@", buf, 0xCu);
              }

              v29 = [v23 tuConversationParticipant];
              v30 = [IDSDestination destinationWithTUConversationParticipant:v29];
              [v109 addObject:v30];
            }

            else
            {
              v108 = v23;
              v10 = v26;
            }

            v17 = v107;
          }

          else
          {
            v31 = [v23 tuConversationParticipant];
            v32 = [IDSDestination destinationWithTUConversationParticipant:v31];
            [v109 addObject:v32];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v130 objects:v146 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

LABEL_24:

      v8 = v103;
      if (v108)
      {
        v35 = sub_100004778();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v137 = v108;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Found participant for update message: %@", buf, 0xCu);
        }

        v106 = [v108 audioVideoMode];
        v36 = [v17 avMode];
        v37 = [v108 presentationMode];
        v38 = [v17 hasPresentationMode];
        v39 = v37;
        v40 = v112;
        if (v38)
        {
          v39 = [v107 resolvedPresentationMode];
        }

        v110 = v36;
        if ([v103 avMode])
        {
          v41 = 0;
        }

        else
        {
          v42 = [v103 participantIDsChangedFromAVLessToAV];
          v43 = v10;
          v44 = [NSNumber numberWithUnsignedLongLong:[v108 identifier]];
          v41 = [v42 containsObject:v44];

          v10 = v43;
        }

        if (v106 != v110 || v41)
        {
          v101 = v41;
          if (v106 != v110)
          {
            v47 = [v108 tuConversationParticipant];
            [v103 setParticipantAudioVideoMode:v110 presentationMode:v39 forParticipant:v47];
          }

          v48 = [v108 tuConversationParticipant];
          v49 = [IDSDestination destinationWithTUConversationParticipant:v48];
          [v109 addObject:v49];

          v50 = sub_100004778();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = [v103 UUID];
            v52 = [v103 avMode];
            *buf = 138413314;
            v53 = @"NO";
            v137 = v51;
            if (v41)
            {
              v53 = @"YES";
            }

            v138 = 2048;
            v139 = v52;
            v140 = 2048;
            v141 = v110;
            v142 = 2048;
            v143 = v39;
            v144 = 2112;
            v145 = v53;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Conversation UUID: %@ has avMode: %lu and the desiredAudioVideoMode is %lu desiredPresentationMode is %lu, shouldUpgradeToAV: %@", buf, 0x34u);
          }

          v102 = v9;
          v105 = v10;
          if (![v103 avMode] && v110)
          {
            v54 = [(CSDConversationManager *)v112 activeLocalHandles];
            v55 = v54[2]();
            v56 = v10;
            v57 = [v55 containsObject:v10];

            v58 = ([v103 state] != 3) & v57;
            if ([v9 invitationPreferencesCount])
            {
              v59 = [(CSDConversationManager *)v112 invitationResolver];
              v60 = [v103 tuConversation];
              v61 = [v9 tuInvitationPreferences];
              v62 = [v59 shouldShowInvitationRingingUIForConversation:v60 handle:v56 invitationMessagePreferences:v61] ^ 1;
            }

            else
            {
              v62 = 1;
            }

            v64 = sub_100004778();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = @"YES";
              if (v62)
              {
                v66 = @"NO";
              }

              else
              {
                v66 = @"YES";
              }

              if (v58)
              {
                v65 = @"NO";
              }

              *buf = 138412546;
              v137 = v66;
              v138 = 2112;
              v139 = v65;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Evaluating if we should notify delegates shouldShowInvitationRingingUI: %@ shouldInvokeDelegateBasedOnRemoteHandle: %@", buf, 0x16u);
            }

            if (((v62 | v58) & 1) == 0)
            {
              v67 = sub_100004778();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v137 = v108;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Triggering a ringing call for participant update from: %@", buf, 0xCu);
              }

              v104 = [v103 tuConversation];
              v126 = 0u;
              v127 = 0u;
              v128 = 0u;
              v129 = 0u;
              v68 = [(CSDConversationManager *)v112 delegateToQueue];
              v69 = [v68 countByEnumeratingWithState:&v126 objects:v135 count:16];
              if (v69)
              {
                v70 = v69;
                v71 = *v127;
                do
                {
                  for (j = 0; j != v70; j = j + 1)
                  {
                    if (*v127 != v71)
                    {
                      objc_enumerationMutation(v68);
                    }

                    v73 = *(*(&v126 + 1) + 8 * j);
                    if (objc_opt_respondsToSelector())
                    {
                      v74 = [(CSDConversationManager *)v112 delegateToQueue];
                      v75 = [v74 objectForKey:v73];

                      block[0] = _NSConcreteStackBlock;
                      block[1] = 3221225472;
                      block[2] = sub_100180CC4;
                      block[3] = &unk_10061D010;
                      block[4] = v73;
                      v121 = v104;
                      v122 = v112;
                      v124 = v106;
                      v125 = v110;
                      v123 = v105;
                      dispatch_async(v75, block);
                    }
                  }

                  v70 = [v68 countByEnumeratingWithState:&v126 objects:v135 count:16];
                }

                while (v70);
              }

              v8 = v103;
              v40 = v112;
            }
          }

          if ([v8 avMode])
          {
            if (!v110 && [v8 state] == 3)
            {
              v76 = [v8 remoteMembers];
              v77 = [v76 count];

              if (v77 == 1)
              {
                v78 = sub_100004778();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Received participant update message to downgrade, but we're in a U+1 call so we should also downgrade!", buf, 2u);
                }

                v79 = [v8 UUID];
                [(CSDConversationManager *)v40 setLocalParticipantAudioVideoMode:0 forConversationUUID:v79];
              }
            }
          }

          if (![v8 state] && objc_msgSend(v8, "avMode") < v110)
          {
            v80 = [(CSDConversationManager *)v40 activeLocalHandlesForProvider];
            v81 = [v8 provider];
            v82 = (v80)[2](v80, v81);
            v83 = [v82 containsObject:v105];

            if (v83)
            {
              v84 = sub_100004778();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134349056;
                v137 = v110;
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Changing conversation AVMode to %{public}lu since conversation is waiting", buf, 0xCu);
              }

              [v8 setAvMode:v110];
            }
          }

          if (!v101 || ([v8 participantIDsChangedFromAVLessToAV], v85 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", -[NSObject identifier](v108, "identifier")), v86 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend(v85, "containsObject:", v86), v86, v85, !v87))
          {
            [v8 setRemoteParticipantType:v110 != 0 participant:v108];
            [v8 updateOneToOneModeForParticipantUpdateType:v110 != 0 participant:v108];
            goto LABEL_95;
          }

          v88 = sub_100004778();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v89 = [NSNumber numberWithUnsignedLongLong:[v108 identifier]];
            v90 = [v8 participantIDsChangedFromAVLessToAV];
            *buf = 138412546;
            v137 = v89;
            v138 = 2112;
            v139 = v90;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Removing %@ from participantIDsChangedFromAVLessToAV: %@", buf, 0x16u);
          }

          v63 = [v8 participantIDsChangedFromAVLessToAV];
          v91 = [NSNumber numberWithUnsignedLongLong:[v108 identifier]];
          [v63 removeObject:v91];
        }

        else
        {
          v45 = sub_100004778();
          v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
          if (v37 == v39)
          {
            if (v46)
            {
              *buf = 138412546;
              v137 = v108;
              v138 = 2048;
              v139 = v106;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Participant %@ is already in audioVideoMode: %ld... Not handling update!", buf, 0x16u);
            }

LABEL_105:
            v17 = v107;
LABEL_106:

            goto LABEL_107;
          }

          v102 = v9;
          if (v46)
          {
            *buf = 138412802;
            v137 = v108;
            v138 = 2048;
            v139 = v39;
            v140 = 2048;
            v141 = v37;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Update presentationMode for participant %@ desiredPresentationMode:%lu oldPresentationMode:%lu", buf, 0x20u);
          }

          v105 = v10;

          v63 = [v108 tuConversationParticipant];
          [v103 setParticipantAudioVideoMode:v106 presentationMode:v39 forParticipant:v63];
        }

LABEL_95:
        v92 = [(CSDConversationManager *)v40 persistenceController];
        [v92 updateConversation:v8];

        v111 = [v8 tuConversation];
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v93 = [(CSDConversationManager *)v40 delegateToQueue];
        v94 = [v93 countByEnumeratingWithState:&v116 objects:v134 count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v117;
          do
          {
            for (k = 0; k != v95; k = k + 1)
            {
              if (*v117 != v96)
              {
                objc_enumerationMutation(v93);
              }

              v98 = *(*(&v116 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                v99 = [(CSDConversationManager *)v112 delegateToQueue];
                v100 = [v99 objectForKey:v98];

                v113[0] = _NSConcreteStackBlock;
                v113[1] = 3221225472;
                v113[2] = sub_100180E10;
                v113[3] = &unk_100619E58;
                v113[4] = v98;
                v114 = v111;
                v115 = v112;
                dispatch_async(v100, v113);
              }
            }

            v95 = [v93 countByEnumeratingWithState:&v116 objects:v134 count:16];
          }

          while (v95);
        }

        v9 = v102;
        v8 = v103;
        v10 = v105;
        goto LABEL_105;
      }
    }

    else
    {
    }

    v108 = sub_100004778();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      sub_100477DD0();
    }

    goto LABEL_106;
  }

LABEL_107:
}

- (void)handleConversation:(id)a3 registerMessagesGroupUUIDMessage:(id)a4 fromNormalizedHandle:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received message from %@ to associate conversation %@ with messages group", &v11, 0x16u);
  }

  [v7 registerMessagesGroupAssociation];
}

- (void)handleConversation:(id)a3 removeActivitySession:(id)a4 fromHandle:(id)a5
{
  v28 = a3;
  v8 = a4;
  v27 = a5;
  v9 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [v8 activitySessions];
  v11 = [v10 count];

  obj = sub_100004778();
  v12 = os_log_type_enabled(obj, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v12)
    {
      *buf = 138412546;
      v39 = v8;
      v40 = 2112;
      v41 = v27;
      _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEFAULT, "Received remove activity session message %@ from %@", buf, 0x16u);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [v8 activitySessions];
    v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v25 = v8;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          v18 = +[TUCallCenter sharedInstance];
          v19 = [v18 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001813AC;
          block[3] = &unk_100619E58;
          v20 = v28;
          v30 = v20;
          v31 = v17;
          v32 = self;
          dispatch_async(v19, block);

          v21 = [NSUUID alloc];
          v22 = [v17 identifierUUIDString];
          v23 = [v21 initWithUUIDString:v22];

          if (v23)
          {
            [v20 removeActivitySessionWithUUID:v23 usingTerminatingHandle:v27];
          }

          else
          {
            v24 = sub_100004778();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v39 = v17;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unable to decode UUID from activitySession %@", buf, 0xCu);
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v14);
      v8 = v25;
    }
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
  }
}

- (void)handleConversation:(id)a3 updateActivity:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [v9 activitySessions];
  v13 = [v12 count];

  v14 = sub_100004778();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 138412290;
      v34 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating activities from message: %@", buf, 0xCu);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = [v9 activitySessions];
    v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v27 = v9;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = [NSUUID alloc];
          v22 = [v20 identifierUUIDString];
          v23 = [v21 initWithUUIDString:v22];

          if (v23)
          {
            v24 = [v20 activity];
            v25 = [v24 tuConversationActivity];

            [v25 setTrustedFromHandle:v10];
            v26 = [v8 activitySessionManager];
            [v26 updateActivitySessionWithUUID:v23 activity:v25];
          }

          else
          {
            v25 = sub_100004778();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = v20;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to decode UUID from activitySession %@", buf, 0xCu);
            }
          }
        }

        v17 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
      v9 = v27;
    }
  }

  else if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
  }
}

- (void)handleConversation:(id)a3 addHighlight:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [v9 highlightIdentifier];

  v13 = sub_100004778();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = [v9 highlightIdentifier];
      v24 = 138412290;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received new highlight identifier %@", &v24, 0xCu);
    }

    v16 = [v8 highlightIdentifiers];
    v13 = [v16 anyObject];

    v17 = [v8 remoteParticipantForHandle:v10];
    v18 = [v9 highlightIdentifier];
    v19 = [v13 isEqualToString:v18];

    if (v19)
    {
      v20 = [(CSDConversationManager *)self collaborationStateManager];
      v21 = [v9 highlightIdentifier];
      [v20 collaborationReAdded:v21];
    }

    else
    {
      v20 = [v9 highlightIdentifier];
      [v8 addHighlightIdentifier:v20];
    }

    v22 = [v8 tuConversation];
    v23 = [v9 highlightIdentifier];
    [(CSDConversationManager *)self notifyDelegateOfHighlightAddedForConversation:v22 highlightIdentifier:v23 oldHighlightIdentifier:v13 byParticipant:v17 isFirstAdd:v19 ^ 1];
  }

  else if (v14)
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid highlight identifier.", &v24, 2u);
  }
}

- (void)handleConversation:(id)a3 removeHighlight:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [v9 highlightIdentifier];

  log = sub_100004778();
  v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid highlight identifier.", buf, 2u);
    }

    goto LABEL_15;
  }

  if (v13)
  {
    v14 = [v9 highlightIdentifier];
    *buf = 138412546;
    v45 = v14;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Trying to remove highlight identifier %@ from conversation:%@ ", buf, 0x16u);
  }

  v15 = [v8 highlightIdentifiers];
  v16 = [v9 highlightIdentifier];
  v17 = [v15 containsObject:v16];

  if (v17)
  {
    v18 = [v9 highlightIdentifier];
    [v8 removeHighlightIdentifier:v18];

    v19 = [(CSDConversationManager *)self collaborationStateManager];
    v20 = [v8 tuConversation];
    [v19 stopTrackingCollaborationForConversationIfNecessary:v20];

    v30 = v10;
    log = [v8 remoteParticipantForHandle:v10];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(CSDConversationManager *)self delegateToQueue];
    v21 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v32 = *v40;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v39 + 1) + 8 * i);
          v25 = [v8 tuConversation];
          v26 = [(CSDConversationManager *)self delegateToQueue];
          [v26 objectForKey:v24];
          v28 = v27 = v8;

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100181F94;
          block[3] = &unk_10061A428;
          block[4] = v24;
          v35 = v25;
          v36 = self;
          v37 = log;
          v38 = v9;
          v29 = v25;
          dispatch_async(v28, block);

          v8 = v27;
        }

        v22 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v22);
    }

    v10 = v30;
LABEL_15:
  }
}

- (void)handleConversation:(id)a3 screenShareRequest:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self featureFlags];
  v12 = [v11 requestToScreenShareEnabled];

  if (v12)
  {
    v13 = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(v13);

    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received screen share request for conversation %@ with message %@ from handle %@", buf, 0x20u);
    }

    v15 = [v9 screenShareContext];

    if (!v15)
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid screen share context.", buf, 2u);
      }

      goto LABEL_18;
    }

    v16 = [v8 remoteParticipantForHandle:v10];
    v17 = [v9 screenShareContext];
    v18 = [v17 type];

    if (v18)
    {
      v19 = [v9 screenShareContext];
      v20 = [v19 type];

      if (v20 != 2)
      {
LABEL_18:

        goto LABEL_19;
      }

      v21 = [v9 screenShareContext];
      [(CSDConversationManager *)self removeScreenShareRequestFromParticipant:v16 conversation:v8 screenShareContext:v21];
    }

    else
    {
      if ([(CSDConversationManager *)self conversationContainsScreenShareRequest:v8 localRequest:0 requestHandle:v10])
      {
        v22 = sub_100004778();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100477E38();
        }

        goto LABEL_18;
      }

      v23 = [v9 screenShareContext];
      isHandleEligibleForScreenSharingRequestsBlock = self->_isHandleEligibleForScreenSharingRequestsBlock;
      v26 = 0;
      v25 = [v23 incomingScreenShareRequestFromParticipant:v16 handleEligibilityBlock:isHandleEligibleForScreenSharingRequestsBlock error:&v26];
      v21 = v26;

      if (v25)
      {
        [v8 addScreenSharingRequest:v25];
      }
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)handleConversation:(id)a3 screenShareResponse:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self featureFlags];
  v12 = [v11 requestToScreenShareEnabled];

  if (v12)
  {
    v13 = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(v13);

    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412802;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received screen share response for conversation %@ with message %@ from handle %@", &v20, 0x20u);
    }

    v15 = [v9 screenShareContext];

    if (v15)
    {
      v16 = [v8 remoteParticipantForHandle:v10];
      v17 = [v9 screenShareContext];
      v18 = [v17 type];

      if ((v18 & 0xFFFFFFFE) == 2)
      {
        v19 = [v9 screenShareContext];
        [(CSDConversationManager *)self removeScreenShareRequestFromParticipant:v16 conversation:v8 screenShareContext:v19];
      }

      else
      {
        v19 = sub_100004778();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Received screen share response with invalid type %@", &v20, 0xCu);
        }
      }
    }

    else
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid screen share context.", &v20, 2u);
      }
    }
  }
}

- (void)removeScreenShareRequestFromParticipant:(id)a3 conversation:(id)a4 screenShareContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSUUID alloc];
  v11 = [v9 screenShareUUID];
  v12 = [v10 initWithUUIDString:v11];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [v8 screenSharingRequests];
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v23 = v9;
    v15 = v7;
    v16 = *v26;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = [v18 UUID];
        v20 = [v19 isEqual:v12];

        if (v20)
        {
          v14 = v18;
          goto LABEL_11;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v7 = v15;
    v9 = v23;
  }

  v21 = [v7 identifier];
  if (v21 == [v14 participantIdentifier] || objc_msgSend(v14, "originType") == 1)
  {
    if (v14)
    {
      [v8 removeScreenSharingRequest:v14];
    }
  }

  else
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Originator of the screen share request does not match the participant who sent the request to cancel screen share", buf, 2u);
    }
  }
}

- (void)handleConversation:(id)a3 updateActivityImage:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v55 = a5;
  v52 = self;
  v10 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v10);

  v51 = v9;
  v11 = [v9 activitySessions];
  v12 = [v11 count];

  log = sub_100004778();
  v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    v14 = v9;
    if (v13)
    {
      *buf = 138412290;
      v80 = v9;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updating activity images from message: %@", buf, 0xCu);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    log = [v9 activitySessions];
    v58 = [log countByEnumeratingWithState:&v74 objects:v84 count:16];
    if (v58)
    {
      v57 = *v75;
      v59 = v8;
      while (1)
      {
        for (i = 0; i != v58; i = i + 1)
        {
          if (*v75 != v57)
          {
            objc_enumerationMutation(log);
          }

          v16 = *(*(&v74 + 1) + 8 * i);
          v17 = [NSUUID alloc];
          v18 = [v16 identifierUUIDString];
          v19 = [v17 initWithUUIDString:v18];

          if (v19)
          {
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v20 = [v8 activitySessions];
            v21 = [v20 countByEnumeratingWithState:&v70 objects:v83 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v71;
              while (2)
              {
                for (j = 0; j != v22; j = j + 1)
                {
                  if (*v71 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v70 + 1) + 8 * j);
                  v26 = [v25 identifier];
                  v27 = [v26 isEqual:v19];

                  if (v27)
                  {
                    v28 = v25;
                    goto LABEL_20;
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v70 objects:v83 count:16];
                if (v22)
                {
                  continue;
                }

                break;
              }

              v28 = 0;
LABEL_20:
              v8 = v59;
            }

            else
            {
              v28 = 0;
            }

            v29 = [v8 stagedActivitySession];
            v30 = [v29 UUID];
            v31 = [v30 isEqual:v19];

            if (v31)
            {
              v32 = [v8 stagedActivitySession];
            }

            else
            {
              v32 = 0;
            }

            if (v28 | v32)
            {
              v33 = [NSUUID alloc];
              v34 = [v16 activity];
              v35 = [v34 identifierUUIDString];
              v36 = [v33 initWithUUIDString:v35];

              if (v36)
              {
                if (v28)
                {
                  v37 = v28;
                }

                else
                {
                  v37 = v32;
                }

                v38 = [v37 activity];
                v39 = [v38 originator];
                if (!v39)
                {
                  v40 = [v59 localMember];
                  v39 = [v40 handle];
                }

                if ([v39 isEquivalentToHandle:v55])
                {
                  v54 = v38;
                  v41 = [v16 activity];
                  v42 = [v41 activityMetadata];

                  v43 = v42;
                  if (([v42 hasImage]& 1) != 0)
                  {
                    [v42 image];
                    v44 = v53 = v42;
                    v45 = [v44 _FTOptionallyDecompressData];

                    v62[0] = _NSConcreteStackBlock;
                    v62[1] = 3221225472;
                    v62[2] = sub_100182FC4;
                    v62[3] = &unk_10061D038;
                    v63 = v28;
                    v64 = v36;
                    v65 = v19;
                    v66 = v45;
                    v67 = v32;
                    v68 = v52;
                    v69 = v59;
                    v46 = v45;
                    v47 = objc_retainBlock(v62);
                    v48 = [(CSDConversationManager *)v52 imageTranscoder];
                    v60[0] = _NSConcreteStackBlock;
                    v60[1] = 3221225472;
                    v60[2] = sub_100183240;
                    v60[3] = &unk_10061D060;
                    v60[4] = v52;
                    v61 = v47;
                    v49 = v47;
                    [v48 generatePreviewImageFromData:v46 completionHandler:v60];

                    v43 = v53;
                  }

                  else
                  {
                    v46 = sub_100004778();
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                    {
                      sub_100477EA8(v78, v16);
                    }
                  }

                  v50 = v46;
                  v38 = v54;
                }

                else
                {
                  v43 = sub_100004778();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v80 = v55;
                    v81 = 2112;
                    v82 = v39;
                    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Not updating activity because handle: %@ isn't the originator of the activity: %@", buf, 0x16u);
                  }
                }

LABEL_47:
              }

              else
              {
                v38 = sub_100004778();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = [v16 activity];
                  *buf = 138412290;
                  v80 = v39;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[WARN] Not updating activity, no activity UUID was provided in message: %@", buf, 0xCu);
                  goto LABEL_47;
                }
              }
            }

            else
            {
              v36 = sub_100004778();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v80 = v19;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] Not updating activity, couldn't find activitySession || stagedActivitySession with UUID: %@", buf, 0xCu);
              }
            }

            v8 = v59;
            goto LABEL_50;
          }

          v28 = sub_100004778();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v80 = v16;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unable to decode UUID from activitySession %@", buf, 0xCu);
          }

LABEL_50:
        }

        v58 = [log countByEnumeratingWithState:&v74 objects:v84 count:16];
        if (!v58)
        {
          goto LABEL_55;
        }
      }
    }
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
    }

LABEL_55:
    v14 = v51;
  }
}

- (void)handleConversation:(id)a3 receivedEndorsementForMember:(id)a4 fromHandle:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received endorsement message: %@", &v14, 0xCu);
  }

  v11 = [v7 addedMembers];
  v12 = [v11 firstObject];
  v13 = [v12 tuConversationMember];

  [v8 updateMemberValidationSource:v13 source:1];
}

- (void)handleConversation:(id)a3 receivedActivitySession:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [v9 activitySessions];
  v13 = [v12 count];

  log = sub_100004778();
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v14)
    {
      *buf = 138412290;
      v44 = v9;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Received new activity for conversation %@", buf, 0xCu);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    log = [v9 activitySessions];
    v35 = [log countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v35)
    {
      v32 = v9;
      v34 = *v40;
      while (2)
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(log);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          v17 = [v16 activity];
          v18 = [v17 tuConversationActivity];

          if (v18)
          {
            v19 = [v18 metadata];
            if ([v19 supportsContinuationOnTV])
            {
            }

            else
            {
              v20 = [v8 localMember];
              v21 = [v20 isLightweightMember];

              if (v21)
              {
                v31 = sub_100004778();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v44 = v16;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Sending conversation back since new activitySession doesn't support aTV handoff. session: %@", buf, 0xCu);
                }

                [v8 leave];
                goto LABEL_30;
              }
            }
          }

          v22 = [(CSDConversationManager *)self createActivitySession:v16 onConversation:v8 fromHandle:v10];
          if (v22)
          {
            v23 = +[TUCallCenter sharedInstance];
            [v23 queue];
            v25 = v24 = v10;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100183934;
            block[3] = &unk_100619E58;
            block[4] = v16;
            v26 = v8;
            v37 = v26;
            v38 = self;
            dispatch_async(v25, block);

            v10 = v24;
            v27 = [v26 remoteParticipantForHandle:v24];
            if (v27)
            {
              v28 = [v22 tuConversationActivitySession];
              [(CSDConversationManager *)self postSessionStartedForSession:v28 originator:v27 conversation:v26];
            }

            else
            {
              v28 = sub_100004778();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v44 = v24;
                v45 = 2112;
                v46 = v22;
                _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Not posting start session event. Could not find participant for handle %@ for session %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v29 = sub_100004778();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [v8 UUID];
              *buf = 138412546;
              v44 = v16;
              v45 = 2112;
              v46 = v30;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to add activitySession: %@ to conversation UUID: %@", buf, 0x16u);
            }
          }
        }

        v35 = [log countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }

LABEL_30:
      v9 = v32;
    }
  }

  else if (v14)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
  }
}

- (void)handleConversation:(id)a3 updateGuestMode:(id)a4 fromHandle:(id)a5
{
  v38 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(CSDConversationManager *)self serverBag];
  v12 = [v11 isGuestModeSupported];

  if (v12)
  {
    v13 = [v8 hasGuestModeEnabled];
    v14 = sub_100004778();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received guest mode update for participant in conversation %@", buf, 0xCu);
      }

      v36 = v8;
      v16 = [v8 guestModeEnabled];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v17 = [v38 activeRemoteParticipants];
      v18 = [v17 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v47;
LABEL_7:
        v21 = 0;
        while (1)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v46 + 1) + 8 * v21);
          v23 = [v22 handle];
          v24 = [v23 isEquivalentToHandle:v9];

          if (v24)
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [v17 countByEnumeratingWithState:&v46 objects:v55 count:16];
            if (v19)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        [v22 setGuestModeEnabled:v16];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v15 = [(CSDConversationManager *)self delegateToQueue];
        v26 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (!v26)
        {
          goto LABEL_27;
        }

        v27 = v26;
        obj = v15;
        v35 = v9;
        v28 = *v43;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v43 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v42 + 1) + 8 * i);
            v31 = [v38 tuConversation];
            v32 = [(CSDConversationManager *)self delegateToQueue];
            v33 = [v32 objectForKey:v30];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100184088;
            block[3] = &unk_100619E58;
            block[4] = v30;
            v40 = v31;
            v41 = self;
            v34 = v31;
            dispatch_async(v33, block);
          }

          v27 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v27);
        v9 = v35;
        v8 = v36;
        v15 = obj;
      }

      else
      {
LABEL_13:

        v15 = sub_100004778();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v38 activeRemoteParticipants];
          *buf = 138412546;
          v52 = v9;
          v53 = 2112;
          v54 = v25;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignoring guest mode update message because the from-handle %@ did not match any active remote participants %@", buf, 0x16u);
        }

LABEL_27:
        v8 = v36;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100477F74();
    }
  }

  else
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignoring guest mode message since guest mode is not currently supported", buf, 2u);
    }
  }
}

- (void)updateParticipantPresentationContexts:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001842A8;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)buzzMember:(id)a3 destinationID:(id)a4 invitationContext:(id)a5 conversationUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184550;
  block[3] = &unk_10061A428;
  v20 = v13;
  v21 = v10;
  v22 = self;
  v23 = v12;
  v24 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  v18 = v13;
  dispatch_async(v14, block);
}

- (void)kickMember:(id)a3 conversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184B80;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (BOOL)conversationContainsScreenShareRequest:(id)a3 localRequest:(BOOL)a4 requestHandle:(id)a5
{
  v5 = a4;
  v7 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [a3 screenSharingRequests];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isLocallyOriginated] == v5)
        {
          v14 = [v13 handle];
          v15 = [v14 isEquivalentToHandle:v7];

          if (v15)
          {
            v16 = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (void)processUpdatedNickname:(id)a3 forHandle:(id)a4 conversationUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100184FA4;
  v15[3] = &unk_10061A450;
  v15[4] = self;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)noticeManager:(id)a3 conversation:(id)a4 participant:(id)a5 addedNotice:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(CSDConversationManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100185614;
  v16[3] = &unk_10061A450;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v16);
}

- (void)setDownlinkMuted:(BOOL)a3 forRemoteParticipantsOnConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185A14;
  block[3] = &unk_100619F48;
  v12 = a3;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setDownlinkMuted:(BOOL)a3 forParticipants:(id)a4 inConversationWithUUID:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185CA0;
  block[3] = &unk_10061D088;
  v22 = a3;
  v18 = v11;
  v19 = v10;
  v20 = self;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, block);
}

- (void)updateLocalMemberNickname:(id)a3 conversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185F6C;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self screenSharingActivityManager];
  v6 = [v5 latestRemoteAttributes];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to get latest remote attributes, returning: %@", &v8, 0xCu);
  }

  v4[2](v4, v6);
}

- (void)getActiveLinksWithCreatedOnly:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018637C;
  block[3] = &unk_10061B008;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)generateLinkForConversationUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100186774;
  block[3] = &unk_10061D128;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (id)_getActivatedLinkWithHandle:(id)a3 updateGroupUUID:(id)a4 updateInvitedHandles:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self linkManager];
  v12 = [v11 getInactiveLinkForHandle:v8];

  if (!v12)
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to fetch inactive link, generating new links for %@", &v22, 0xCu);
    }

    v20 = [(CSDConversationManager *)self linkManager];
    [v20 generateAllInactiveLinksFor:v8];
    goto LABEL_10;
  }

  v13 = [v12 pseudonym];
  v14 = [(CSDConversationManager *)self isHandleStringLocalPseudonym:v13];

  if (!v14)
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Fetched non-local inactive link %@", &v22, 0xCu);
    }

LABEL_10:

    v17 = 0;
    goto LABEL_11;
  }

  v15 = [(CSDConversationManager *)self linkManager];
  v16 = [v12 pseudonym];
  v17 = [v15 activateLinkForPseudonym:v16 updateGroupUUID:v9 updateInvitedHandles:v10];

  if (v17)
  {
    v18 = [(CSDConversationManager *)self linkManager];
    [v18 generateInactiveLinkFor:v8 afterActivation:1];
  }

LABEL_11:

  return v17;
}

- (void)setConversationLink:(id)a3 forConversation:(id)a4 replyToCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 setConversationLink:v8 allowUpdate:0];
  v12 = sub_100004778();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setConversationLink %@ completed", &v16, 0xCu);
    }

    if (v10)
    {
      v10[2](v10, v8, 0);
    }

    [(CSDConversationManager *)self notifyDelegatesOfChangedLink:v8 conversation:v9];
    [(CSDConversationManager *)self sendMessagesForCreatedOrChangedLink:v8 conversation:v9 messageType:11];
    v14 = [NSSet setWithObject:IDSRegistrationPropertySupportsGondola];
    [v9 addRequiredCapabilities:v14 requiredLackOfCapabilities:0];
    goto LABEL_11;
  }

  if (v13)
  {
    v15 = [v9 link];
    v16 = 138412290;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Did not set conversation link as one already existed: %@", &v16, 0xCu);
  }

  if (v10)
  {
    v14 = [v9 link];
    v10[2](v10, v14, 0);
LABEL_11:
  }
}

- (void)generateLinkWithInvitedMemberHandles:(id)a3 linkLifetimeScope:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100187420;
  v13[3] = &unk_10061D150;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

- (void)addInvitedMemberHandles:(id)a3 toConversationLink:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100187DE4;
  v15[3] = &unk_10061D1C8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)invalidateLink:(id)a3 deleteReason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001882D4;
  v13[3] = &unk_10061D150;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

- (void)renewLinkIfNeeded:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188838;
  block[3] = &unk_10061AF20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)renewLink:(id)a3 expirationDate:(id)a4 reason:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188E0C;
  block[3] = &unk_10061D2B8;
  v20 = v12;
  v21 = a5;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  dispatch_async(v13, block);
}

- (void)checkLinkValidity:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001893C0;
  block[3] = &unk_10061D128;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)generateAllInactiveLinks
{
  v3 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100189510;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)getInactiveLinkWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001896B8;
  v7[3] = &unk_10061ACD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)activateLink:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100189A60;
  block[3] = &unk_10061D128;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)setLinkName:(id)a3 forConversationLink:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100189D04;
  v15[3] = &unk_10061D1C8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)updateExternalParticipants:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018A224;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)scheduleConversationLinkCheckInInitial:(BOOL)a3
{
  v5 = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018A398;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)recoverLinksForPseudonyms:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018A534;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)linkSyncStateIncludeLinks:(BOOL)a3 WithCompletion:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018A6C0;
  block[3] = &unk_10061B008;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)approvePendingMember:(id)a3 forConversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018A884;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)rejectPendingMember:(id)a3 forConversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018AB10;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)setIgnoreLetMeInRequests:(BOOL)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018AD74;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)addScreenSharingType:(unint64_t)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B254;
  block[3] = &unk_100619F20;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)fetchUpcomingNoticeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018B734;
  v7[3] = &unk_10061ACD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)activateConversationNoticeWithActionURL:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B880;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeConversationNoticeWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018B988;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setMessagesGroupName:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018BAB4;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)removeNonIndefiniteLinks
{
  v3 = [(CSDConversationManager *)self linkManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018BCC4;
  v4[3] = &unk_10061D308;
  v4[4] = self;
  [v3 getActiveLinksWithCreatedOnly:1 completionHandler:v4];
}

- (void)removeConversationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018C1B4;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)addAliasesToConversationContainer:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C400;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)includeMetricsReport:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C624;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)removeNearbyMemberWithHandle:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C8B8;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)setLocalParticipantAudioVideoMode:(unint64_t)a3 forConversationUUID:(id)a4 presentationMode:(unint64_t)a5
{
  v8 = a4;
  v9 = [(CSDConversationManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018CAAC;
  v11[3] = &unk_10061D330;
  v11[4] = self;
  v12 = v8;
  v13 = a3;
  v14 = a5;
  v10 = v8;
  dispatch_async(v9, v11);
}

- (void)registerMessagesGroupUUIDForConversationUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018D00C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setupPendingConversationCleanupTimer
{
  v3 = [(CSDConversationManager *)self pendingConversationCleanupTimer];

  if (v3)
  {
    v4 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
    dispatch_source_cancel(v4);
  }

  v5 = [(CSDConversationManager *)self queue];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
  [(CSDConversationManager *)self setPendingConversationCleanupTimer:v6];

  v7 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
  v8 = dispatch_time(0, 300000000000);
  dispatch_source_set_timer(v7, v8, 0x45D964B800uLL, 0x4A817C800uLL);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
    *buf = 134218498;
    v16 = 0x4072C00000000000;
    v17 = 2048;
    v18 = 0x4034000000000000;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setupPendingConversationCleanupTimer: %f %f %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v11 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10018D4A4;
  handler[3] = &unk_10061A740;
  objc_copyWeak(&v14, buf);
  dispatch_source_set_event_handler(v11, handler);

  v12 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
  dispatch_resume(v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)cleanupExpiredPendingConversations
{
  v3 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(NSMutableArray);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        v11 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
        v12 = [v11 objectForKeyedSubscript:v10];

        v13 = [v12 dateCreated];
        [v13 timeIntervalSinceNow];
        v15 = v14;

        v16 = -v15;
        if (v15 >= 0.0)
        {
          v16 = v15;
        }

        if (v16 > 7200.0)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v7);
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v35 = 0x40BC200000000000;
    v36 = 2112;
    v37 = v4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "cleanupExpiredPendingConversations: %f %@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v4;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        v24 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
        [v24 setObject:0 forKeyedSubscript:v23];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }
}

- (void)conversationChanged:(id)a3
{
  v4 = a3;
  v48 = self;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "conversationChanged: %@", buf, 0xCu);
  }

  v7 = [v4 activeRemoteParticipants];
  if ([v7 count])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v4 activeLightweightParticipants];
    v8 = [v9 count] == 0;
  }

  if ([v4 state] || !v8)
  {
    v10 = [(CSDConversationManager *)v48 persistenceController];
    [v10 updateConversation:v4];
  }

  else
  {
    [(CSDConversationManager *)v48 conversationInvalidated:v4];
    v10 = [(CSDConversationManager *)v48 collaborationStateManager];
    v11 = [v4 tuConversation];
    [v10 stopTrackingCollaborationForConversationIfNecessary:v11];
  }

  if ([v4 state] != 3)
  {
    goto LABEL_20;
  }

  v12 = [v4 remoteMembers];
  if ([v12 count] != 1)
  {
LABEL_19:

    goto LABEL_20;
  }

  v13 = [v4 remoteMembers];
  v14 = [v13 anyObject];
  v15 = [v14 handle];
  v16 = [v4 localMember];
  v17 = [v16 handle];
  if ([v15 isEqualToHandle:v17])
  {
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v18 = [v4 activeRemoteParticipants];
  if ([v18 count] != 1)
  {

    goto LABEL_17;
  }

  obj = v18;
  v44 = [v4 activeRemoteParticipants];
  v43 = [v44 anyObject];
  v19 = [v43 handle];
  v41 = [v4 localMember];
  v20 = [v41 handle];
  v42 = v19;
  if ([v19 isEqualToHandle:v20])
  {
    v40 = [v4 activeParticipantDestinationsByIdentifier];
    v21 = [v40 count] == 1;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    v12 = [v4 remoteMembers];
    v13 = [v12 anyObject];
    v14 = [v4 UUID];
    [(CSDConversationManager *)v48 buzzMember:v13 destinationID:0 invitationContext:0 conversationUUID:v14];
    goto LABEL_18;
  }

LABEL_20:
  v45 = v4;
  v22 = [v4 tuConversation];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obja = [(CSDConversationManager *)v48 delegateToQueue];
  v23 = [obja countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v59;
    do
    {
      v26 = 0;
      do
      {
        if (*v59 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v58 + 1) + 8 * v26);
        v28 = [(CSDConversationManager *)v48 delegateToQueue];
        v29 = [v28 objectForKey:v27];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10018DDAC;
        block[3] = &unk_100619E58;
        block[4] = v27;
        v56 = v22;
        v57 = v48;
        dispatch_async(v29, block);

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [obja countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v24);
  }

  v30 = [(CSDConversationManager *)v48 activitySessionContainerProvider];
  [v30 activitySessionContainersChangedOnChildProvider:v48];

  v31 = [(CSDConversationManager *)v48 observerStorage];
  v32 = [v31 observerToQueue];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v52;
    do
    {
      v37 = 0;
      do
      {
        if (*v52 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v51 + 1) + 8 * v37);
        if (objc_opt_respondsToSelector())
        {
          v39 = [v33 objectForKey:v38];
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_10018DEF4;
          v49[3] = &unk_100619E58;
          v49[4] = v38;
          v49[5] = v48;
          v50 = v22;
          dispatch_async(v39, v49);
        }

        v37 = v37 + 1;
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v35);
  }
}

- (void)conversationConnectionDidStart:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 UUID];
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "conversationConnectionDidStart UUID: %@", buf, 0xCu);
  }

  v16 = [v4 tuConversation];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(CSDConversationManager *)self delegateToQueue];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v14 = [(CSDConversationManager *)self delegateToQueue];
          v15 = [v14 objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018E160;
          block[3] = &unk_100619E58;
          block[4] = v13;
          v18 = v16;
          v19 = self;
          dispatch_async(v15, block);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (void)conversationInvalidated:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 UUID];
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversationInvalidated UUID: %@", &v17, 0xCu);
  }

  v8 = [(CSDConversationManager *)self mutableConversationsByUUID];
  [v8 setObject:0 forKeyedSubscript:v6];

  v9 = [(CSDConversationManager *)self persistenceController];
  [v9 removeConversation:v4];

  v10 = [(CSDConversationManager *)self pendingMembershipTracker];
  [v10 clearPendingMembershipFor:v4];

  v11 = [v4 link];
  v12 = v11;
  if (v11 && [v11 linkLifetimeScope] == 1)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "conversationLink should be removed after call was invalidated %@", &v17, 0xCu);
    }

    v14 = [(CSDConversationManager *)self linkManager];
    v15 = [v12 pseudonym];
    [v14 invalidateLinkWithPseudonym:v15 deleteReason:7 completionHandler:&stru_10061D350];
  }

  v16 = [(CSDConversationManager *)self collaborationStateManager];
  [v16 stopTrackingDisclosedCollaborationInitiatorsForConversationUUID:v6];

  [(CSDConversationManager *)self notifyDelegatesOfRemovedConversationWithUUID:v6];
}

- (void)conversation:(id)a3 addedActiveParticipant:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v96 = v6;
    v97 = 2112;
    v98 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ addedActiveParticipant: %@", buf, 0x16u);
  }

  v10 = [v7 association];
  v72 = v6;
  v73 = self;
  if (v10)
  {
    v11 = v10;
    v12 = [(CSDConversationManager *)self featureFlags];
    if ([v12 conversationHandoffEnabled])
    {
      v13 = [(CSDConversationManager *)self lockdownModeEnabled];
      v14 = v13[2]();

      if ((v14 & 1) == 0)
      {
        v15 = [v7 handle];
        v16 = [v6 localMember];
        v17 = [v16 handle];
        if ([v15 isEquivalentToHandle:v17])
        {
          v18 = [v7 association];
          v19 = [v18 identifier];
          if (v19 == [v6 localParticipantIdentifier])
          {
            v20 = [v6 state];

            if (v20 == 3)
            {
              v21 = sub_100004778();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [v6 UUID];
                *buf = 138412546;
                v96 = v22;
                v97 = 2112;
                v98 = v7;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Conversation UUID %@ was continued on another device as participant %@, leaving...", buf, 0x16u);
              }

              v23 = [(CSDConversationManager *)self featureFlags];
              if ([v23 groupFacetimeAsAServiceEnabled])
              {
                v24 = [v6 provider];

                if (v24)
                {
                  v25 = +[CSDConversationProviderManager sharedInstance];
                  v26 = [v6 provider];
                  v27 = [v25 serviceForProvider:v26];

LABEL_43:
                  v54 = [v7 activeIDSDestination];
                  v55 = [v27 deviceForFromID:v54];

                  if (v55)
                  {
                    v56 = [v55 csd_localizedDeviceCategory];
                  }

                  else
                  {
                    v56 = 0;
                  }

                  v89[0] = _NSConcreteStackBlock;
                  v89[1] = 3221225472;
                  v89[2] = sub_10018EEF4;
                  v89[3] = &unk_10061A450;
                  v89[4] = self;
                  v57 = v6;
                  v90 = v57;
                  v91 = v7;
                  v92 = v56;
                  v58 = v56;
                  v59 = objc_retainBlock(v89);
                  if (([v57 supportsLeaveContext] & 1) != 0 || (objc_msgSend(v57, "activeRemoteParticipants"), v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "count"), v60, v61 >= 4))
                  {
                    v62 = sub_100004778();
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                    {
                      v63 = [v57 UUID];
                      *buf = 138412290;
                      v96 = v63;
                      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Leaving immediately due to handoff since the conversation with UUID: %@ supports leave context or was GFT before handoff", buf, 0xCu);
                    }

                    (v59[2])(v59);
                  }

                  else
                  {
                    v64 = sub_100004778();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      v65 = [v57 UUID];
                      *buf = 138412290;
                      v96 = v65;
                      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Delaying leaving due to handoff since the conversation with UUID: %@ does not support leave context and was 1:1 before handoff", buf, 0xCu);
                    }

                    v66 = [(CSDConversationManager *)self serverBag];
                    v67 = dispatch_time(0, 1000000000 * [v66 handoffUPlusOneLeaveDelay]);
                    v68 = [(CSDConversationManager *)self queue];
                    dispatch_after(v67, v68, v59);
                  }

                  v6 = v72;
                  goto LABEL_17;
                }
              }

              else
              {
              }

              v27 = [(CSDConversationManager *)self service];
              goto LABEL_43;
            }

            goto LABEL_29;
          }
        }

LABEL_29:
        v40 = sub_100004778();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v7 association];
          v42 = [v41 identifier];
          v43 = [v6 localParticipantIdentifier];
          v44 = [v6 state];
          *buf = 138413058;
          v96 = v7;
          v97 = 2048;
          v98 = v42;
          v99 = 2048;
          v100 = v43;
          v101 = 2048;
          v102 = v44;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Added participant %@ is a handoff continuation for identifier %llu, but my local identifier is %llu. Not leaving, state: %ld", buf, 0x2Au);
        }

        [v6 updateReportInfoForHandoffParticipant:v7];
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v27 = [(CSDConversationManager *)self delegateToQueue];
        v45 = [v27 countByEnumeratingWithState:&v85 objects:v94 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v86;
          v70 = v7;
          do
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v86 != v47)
              {
                objc_enumerationMutation(v27);
              }

              v49 = *(*(&v85 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                v50 = [v6 tuConversation];
                v51 = [(CSDConversationManager *)v73 delegateToQueue];
                v52 = [v51 objectForKey:v49];

                v82[0] = _NSConcreteStackBlock;
                v82[1] = 3221225472;
                v6 = v72;
                v82[2] = sub_10018F264;
                v82[3] = &unk_100619E58;
                v82[4] = v49;
                v83 = v50;
                v84 = v73;
                v53 = v50;
                dispatch_async(v52, v82);
              }
            }

            v46 = [v27 countByEnumeratingWithState:&v85 objects:v94 count:16];
          }

          while (v46);
          self = v73;
          v7 = v70;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v27 = sub_100004778();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v96 = v7;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "There was no participant association for added participant: %@", buf, 0xCu);
  }

LABEL_17:

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v28 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v79;
    do
    {
      v31 = 0;
      v69 = v29;
      do
      {
        if (*v79 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v78 + 1) + 8 * v31);
        if (objc_opt_respondsToSelector())
        {
          v33 = [v6 tuConversation];
          v34 = [v7 tuConversationParticipant];
          v35 = [(CSDConversationManager *)v73 delegateToQueue];
          v36 = [v35 objectForKey:v32];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018F3AC;
          block[3] = &unk_10061A450;
          block[4] = v32;
          v75 = v33;
          v76 = v73;
          v77 = v34;
          v37 = v34;
          v38 = v33;
          v6 = v72;
          v39 = v38;
          dispatch_async(v36, block);

          v29 = v69;
        }

        v31 = v31 + 1;
      }

      while (v29 != v31);
      v29 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
    }

    while (v29);
  }
}

- (void)conversation:(id)a3 didReceiveParticipantUpdateMessage:(id)a4 fromNormalizedHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didReceiveParticipantUpdateMessage: %@, from handle: %@", &v17, 0x16u);
  }

  v13 = [(CSDConversationManager *)self featureFlags];
  if ([v13 controlMessageOverQREnabled])
  {
    v14 = [(CSDConversationManager *)self serverBag];
    v15 = [v14 isControlMessageOverQREnabled];

    if (v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "controlMessageOverQREnabled is not enabled, return", &v17, 2u);
  }

LABEL_10:
  [(CSDConversationManager *)self handleConversation:v8 participantUpdateMessage:v9 fromNormalizedHandle:v10];
}

- (void)conversation:(id)a3 didChangeLocalParticipant:(id)a4 broadcastActivitySession:(BOOL)a5 currentSequenceNumber:(unint64_t)a6 fromResponse:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v14);

  if ([(CSDMessagingConversationMessage *)v12 state]== 3 || [(CSDMessagingConversationMessage *)v12 state]== 2)
  {
    v15 = [(CSDConversationManager *)self screenCaptureQueue];
    v16 = [(CSDMessagingConversationMessage *)v12 UUID];
    v17 = [v15 objectForKeyedSubscript:v16];

    if ([(CSDMessagingConversationMessage *)v13 audioVideoMode]&& v17)
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "executing queued up screenEnabled block since local participant mode changed", buf, 2u);
      }

      (*(v17 + 16))(v17);
      v19 = [(CSDConversationManager *)self screenCaptureQueue];
      v20 = [(CSDMessagingConversationMessage *)v12 UUID];
      [v19 setObject:0 forKeyedSubscript:v20];
    }

    v21 = sub_1000C01A0(v13);
    if (!v21)
    {
LABEL_42:

      goto LABEL_43;
    }

    v22 = a6;
    v81 = v9;
    v23 = [(CSDConversationManager *)self mutableConversationsRequestingUpgradeWithPreferences];
    v24 = [(CSDMessagingConversationMessage *)v12 UUID];
    v25 = [v23 objectForKey:v24];

    v84 = v25;
    if (v25)
    {
      v26 = [(CSDConversationManager *)self mutableConversationsRequestingUpgradeWithPreferences];
      v27 = [(CSDMessagingConversationMessage *)v12 UUID];
      [v26 removeObjectForKey:v27];
    }

    v28 = [(CSDMessagingConversationMessage *)v12 groupUUID];
    v29 = [(CSDMessagingConversationMessage *)v12 UUID];
    v83 = sub_1000C026C(v21, v28, v29, v25);

    v93[0] = &off_10063ED08;
    v92[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v92[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v21 identifier]);
    v31 = [NSString stringWithFormat:@"%@:%@", v30, &off_10063ED08];
    v93[1] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];

    if (v7)
    {
      v33 = [(CSDConversationManager *)self featureFlags];
      if ([v33 controlMessageOverQREnabled])
      {
        v34 = [(CSDConversationManager *)self serverBag];
        v35 = [v34 isControlMessageOverQREnabled];

        if (v35)
        {
          v77 = v32;
          v79 = v13;
          v36 = [v32 mutableCopy];
          v37 = [(CSDMessagingConversationMessage *)v12 groupUUID];
          v38 = [v37 UUIDString];
          [v36 setObject:v38 forKeyedSubscript:IDSSendMessageOptionGoupUUIDKey];

          v39 = [(CSDMessagingConversationMessage *)v12 sequenceNumberToTime];
          v40 = v22;
          v41 = [NSNumber numberWithUnsignedLongLong:v22];
          v42 = [v39 objectForKey:v41];

          if (v42)
          {
            v43 = [(CSDMessagingConversationMessage *)v12 sequenceNumberToTime];
            v44 = [NSNumber numberWithUnsignedLongLong:v22];
            v45 = [v43 objectForKeyedSubscript:v44];
            [v36 setObject:v45 forKeyedSubscript:IDSSendMessageOptionTimestampKey];

            v46 = sub_100004778();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              [(CSDMessagingConversationMessage *)v12 sequenceNumberToTime];
              v48 = v47 = v46;
              v49 = [NSNumber numberWithUnsignedLongLong:v40];
              v50 = [v48 objectForKeyedSubscript:v49];
              *buf = 134218242;
              v95 = v40;
              v96 = 2112;
              v97 = v50;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Find currentSequenceNumber %llu, for time: %@", buf, 0x16u);

              v46 = v47;
            }

            v51 = [(CSDMessagingConversationMessage *)v12 sequenceNumberToTime];
            v52 = [NSNumber numberWithUnsignedLongLong:v40];
            [v51 removeObjectForKey:v52];
          }

          else
          {
            v51 = sub_100004778();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              sub_100478128();
            }
          }

          v13 = v79;

          v74 = sub_100004778();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v95 = v36;
            v96 = 2112;
            v97 = v79;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "updatedOptions: %@ for participant: %@", buf, 0x16u);
          }

          v75 = [v83 data];
          v76 = [v36 copy];
          [(CSDConversationManager *)self broadcastData:v75 onConversation:v12 additionalOptions:v76];

          v54 = v83;
          v32 = v77;
LABEL_24:

          if (v81)
          {
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v55 = [(CSDMessagingConversationMessage *)v12 activitySessions];
            v56 = [v55 countByEnumeratingWithState:&v85 objects:v91 count:16];
            if (v56)
            {
              v57 = v56;
              v78 = v32;
              v80 = v13;
              v82 = v17;
              v58 = *v86;
LABEL_27:
              v59 = 0;
              while (1)
              {
                if (*v86 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                v60 = *(*(&v85 + 1) + 8 * v59);
                v61 = [v60 activity];
                v62 = [v61 isSystemActivity];

                if (!v62)
                {
                  break;
                }

                if (v57 == ++v59)
                {
                  v57 = [v55 countByEnumeratingWithState:&v85 objects:v91 count:16];
                  if (v57)
                  {
                    goto LABEL_27;
                  }

                  v63 = v55;
                  v13 = v80;
                  v17 = v82;
                  v54 = v83;
                  goto LABEL_38;
                }
              }

              v63 = v60;

              v13 = v80;
              v17 = v82;
              v54 = v83;
              v32 = v78;
              if (!v63)
              {
                goto LABEL_41;
              }

              v64 = [CSDMessagingConversationMessage alloc];
              v65 = [(CSDMessagingConversationMessage *)v12 groupUUID];
              v66 = [(CSDMessagingConversationMessage *)v64 initWithType:8 groupUUID:v65 link:0];

              v89[0] = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
              v67 = [NSSet setWithObject:IDSRegistrationPropertySupportsCo];
              v90[0] = v67;
              v89[1] = IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey;
              v68 = v66;
              v69 = [NSSet setWithObject:IDSRegistrationPropertySupportsAVLess];
              v90[1] = v69;
              v70 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];

              v71 = sub_100004778();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                v72 = [(CSDMessagingConversationMessage *)v12 UUID];
                *buf = 138412546;
                v95 = v72;
                v96 = 2112;
                v97 = v68;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "For AVLess to AV upgrade of conversation UUID %@, sending an AddActivitySession message to devices lacking AVLess support: %@", buf, 0x16u);
              }

              [(CSDConversationManager *)self sendMessage:v68 forConversation:v12 withActivitySession:v63 additionalOptions:v70];
              v73 = [v63 tuConversationActivitySession];
              [(CSDConversationManager *)self broadcastImageForSession:v73 onConversation:v12];

              v13 = v80;
LABEL_38:
              v32 = v78;
            }

            else
            {
              v63 = v55;
            }
          }

LABEL_41:

          goto LABEL_42;
        }
      }

      else
      {
      }
    }

    v53 = sub_100004778();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v95 = v13;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "didChangeLocalParticipant: %@", buf, 0xCu);
    }

    v54 = v83;
    v36 = [v83 data];
    [(CSDConversationManager *)self broadcastData:v36 onConversation:v12 additionalOptions:v32];
    goto LABEL_24;
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v95 = v13;
    v96 = 2112;
    v97 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not broadcasting localParticipant change for participant %@ since the conversation isn't joined yet %@", buf, 0x16u);
  }

LABEL_43:
}

- (void)conversation:(id)a3 removedActiveParticipant:(id)a4 withLeaveReason:(unint64_t)a5
{
  v23 = a3;
  v22 = a4;
  v7 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = v23;
    v42 = 2112;
    v43 = v22;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "conversation: %@ removedActiveParticipant: %@", buf, 0x16u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v21 = *v36;
    v17 = v25;
    v18 = v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        v13 = [v23 tuConversation];
        v14 = [v22 tuConversationParticipant];
        v15 = [(CSDConversationManager *)self delegateToQueue];
        v16 = [v15 objectForKey:v12];

        if (objc_opt_respondsToSelector())
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v31[0] = sub_100190368;
          v31[1] = &unk_10061A450;
          v31[2] = v12;
          v32 = v13;
          v33 = self;
          v34 = v14;
          dispatch_async(v16, block);
        }

        if (objc_opt_respondsToSelector())
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v25[0] = sub_1001904B0;
          v25[1] = &unk_10061A678;
          v25[2] = v12;
          v26 = v13;
          v27 = self;
          v28 = v14;
          v29 = a5;
          dispatch_async(v16, v24);
        }

        v11 = v11 + 1;
      }

      while (v10 != v11);
      v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }
}

- (void)conversation:(id)a3 updatedActiveParticipant:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ participant: %@", buf, 0x16u);
  }

  v19 = v7;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        v15 = [v6 tuConversation];
        v16 = [(CSDConversationManager *)self delegateToQueue];
        v17 = [v16 objectForKey:v14];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10019084C;
        block[3] = &unk_100619E58;
        block[4] = v14;
        v22 = v15;
        v23 = self;
        v18 = v15;
        dispatch_async(v17, block);

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }
}

- (void)conversation:(id)a3 updatedActiveParticipantWithScreenSharing:(id)a4
{
  v20 = a3;
  v19 = a4;
  v6 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v18 = v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [v20 tuConversation];
          v13 = [v19 tuConversationParticipant];
          v14 = [(CSDConversationManager *)self delegateToQueue];
          v15 = [v14 objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v23[0] = sub_100190BC8;
          v23[1] = &unk_10061A450;
          v23[2] = v11;
          v24 = v12;
          v25 = self;
          v26 = v13;
          v16 = v13;
          v17 = v12;
          dispatch_async(v15, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }
}

- (void)conversationDidStopScreenCapture:(id)a3
{
  v4 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDConversationManager *)self featureFlags];
  v6 = [v5 sckSystemPickerEnabled];

  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting to stop the screensharing activity session since screen capture ended", v9, 2u);
    }

    v8 = [(CSDConversationManager *)self screenSharingActivityManager];
    [v8 stopActivitySession];
  }
}

- (void)conversation:(id)a3 mediaPrioritiesChangedForParticipant:(id)a4
{
  v20 = a3;
  v19 = a4;
  v6 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v18 = v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [v20 tuConversation];
          v13 = [v19 tuConversationParticipant];
          v14 = [(CSDConversationManager *)self delegateToQueue];
          v15 = [v14 objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v23[0] = sub_100191004;
          v23[1] = &unk_10061A450;
          v23[2] = v11;
          v24 = v12;
          v25 = self;
          v26 = v13;
          v16 = v13;
          v17 = v12;
          dispatch_async(v15, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }
}

- (void)conversation:(id)a3 participant:(id)a4 didReact:(id)a5
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v20 = v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v23 tuConversation];
          v15 = [v22 tuConversationParticipant];
          v16 = [(CSDConversationManager *)self delegateToQueue];
          v17 = [v16 objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v26[0] = sub_1001913A8;
          v26[1] = &unk_10061A428;
          v26[2] = v13;
          v27 = v14;
          v28 = self;
          v29 = v15;
          v30 = v21;
          v18 = v15;
          v19 = v14;
          dispatch_async(v17, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }
}

- (void)conversation:(id)a3 participantDidStopReacting:(id)a4
{
  v20 = a3;
  v19 = a4;
  v6 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v18 = v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [v20 tuConversation];
          v13 = [v19 tuConversationParticipant];
          v14 = [(CSDConversationManager *)self delegateToQueue];
          v15 = [v14 objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v23[0] = sub_100191728;
          v23[1] = &unk_10061A450;
          v23[2] = v11;
          v24 = v12;
          v25 = self;
          v26 = v13;
          v16 = v13;
          v17 = v12;
          dispatch_async(v15, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }
}

- (void)conversation:(id)a3 requestBlobRecoveryForParticipantDestination:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = TULoggableStringForHandle();
    v19 = 138412290;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting blob recovery for %@", &v19, 0xCu);
  }

  v14 = [CSDMessagingConversationMessage alloc];
  v15 = [v10 groupUUID];
  v16 = [(CSDMessagingConversationMessage *)v14 initWithType:4 groupUUID:v15 link:0];

  [(CSDMessagingConversationMessage *)v16 setRequestBlobRecoveryOptions:1];
  v17 = [(CSDMessagingConversationMessage *)v16 data];
  v18 = [(CSDConversationManager *)self sendData:v17 onConversation:v10 toDestinationID:v8];

  v9[2](v9, v18);
}

- (void)conversation:(id)a3 sendDeclineMessageToParticipantDestination:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = TULoggableStringForHandle();
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending decline message for %@", &v15, 0xCu);
  }

  v11 = [CSDMessagingConversationMessage alloc];
  v12 = [v7 groupUUID];
  v13 = [(CSDMessagingConversationMessage *)v11 initWithType:9 groupUUID:v12 link:0];

  v14 = [(CSDMessagingConversationMessage *)v13 data];
  [(CSDConversationManager *)self sendData:v14 onConversation:v7 toDestinationID:v6];
}

- (void)conversation:(id)a3 failedWithContext:(id)a4
{
  v17 = a3;
  v16 = a4;
  v6 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [v17 tuConversation];
          v13 = [(CSDConversationManager *)self delegateToQueue];
          v14 = [v13 objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100191D88;
          block[3] = &unk_10061A450;
          block[4] = v11;
          v20 = v12;
          v21 = self;
          v22 = v16;
          v15 = v12;
          dispatch_async(v14, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)conversation:(id)a3 receivedActivitySessionEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManager *)self conversationNoticeManger];
  v19 = v6;
  [v9 conversation:v6 receivedActivitySessionEvent:v7];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v19 tuConversation];
          v16 = [(CSDConversationManager *)self delegateToQueue];
          v17 = [v16 objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100192110;
          block[3] = &unk_10061A450;
          block[4] = v14;
          v22 = v15;
          v23 = self;
          v24 = v7;
          v18 = v15;
          dispatch_async(v17, block);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }
}

- (void)conversation:(id)a3 activitySessionChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 UUID];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation UUID: %@ activitySessionChanged: %@", &v11, 0x16u);
  }

  [(CSDConversationManager *)self conversationChanged:v6];
}

- (void)conversation:(id)a3 didChangeStateForActivitySession:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v18 = v6;
  if ([v6 state] == 4)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"CSDSharePlayMediaDidHandoffNotification" object:v19];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v19 tuConversation];
          v15 = [(CSDConversationManager *)self delegateToQueue];
          v16 = [v15 objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001925C8;
          block[3] = &unk_10061A450;
          block[4] = v13;
          v22 = v14;
          v23 = self;
          v24 = v18;
          v17 = v14;
          dispatch_async(v16, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }
}

- (void)conversation:(id)a3 didChangeSceneAssociationForActivitySession:(id)a4
{
  v17 = a3;
  v18 = a4;
  v6 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scene association changed for activity session: %@", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v17 tuConversation];
          v14 = [(CSDConversationManager *)self delegateToQueue];
          v15 = [v14 objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100192980;
          block[3] = &unk_10061A450;
          block[4] = v12;
          v21 = v13;
          v22 = self;
          v23 = v18;
          v16 = v13;
          dispatch_async(v15, block);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }
}

- (void)conversation:(id)a3 appLaunchState:(unint64_t)a4 forActivitySession:(id)a5
{
  v21 = a3;
  v20 = a5;
  v7 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v21 UUID];
    *buf = 134218498;
    v34 = a4;
    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "App launch state changed to: %lu for activity session: %@ on conversation with UUID: %@", buf, 0x20u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v21 tuConversation];
          v16 = [(CSDConversationManager *)self delegateToQueue];
          v17 = [v16 objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100192D6C;
          block[3] = &unk_10061A678;
          block[4] = v14;
          v24 = v15;
          v25 = self;
          v27 = a4;
          v26 = v20;
          v18 = v15;
          dispatch_async(v17, block);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }
}

- (void)conversation:(id)a3 activityChangedOnSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ activityChangedOnSession: %@", buf, 0x16u);
  }

  v10 = [v7 activity];
  v11 = [v10 originator];

  if (!v11)
  {
    v12 = [CSDMessagingConversationMessage alloc];
    v13 = [v6 groupUUID];
    v14 = [(CSDMessagingConversationMessage *)v12 initWithType:23 groupUUID:v13 link:0];

    v15 = objc_alloc_init(CSDMessagingConversationActivitySession);
    v16 = [v7 activity];
    v17 = [v16 copy];

    v18 = [v7 UUID];
    v19 = [v18 UUIDString];
    [(CSDMessagingConversationActivitySession *)v15 setIdentifierUUIDString:v19];

    v20 = [CSDMessagingConversationActivity activityWithCSDConversationActivity:v17 fromConversation:v6 forStorage:0];
    [(CSDMessagingConversationActivitySession *)v15 setActivity:v20];

    [(CSDMessagingConversationMessage *)v14 addActivitySessions:v15];
    v28[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v28[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    v29[0] = &off_10063ED20;
    v21 = [v7 UUID];
    v22 = [v21 UUIDString];
    v23 = [NSString stringWithFormat:@"%@:%@", v22, &off_10063ED20];
    v29[1] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

    v25 = [(CSDMessagingConversationMessage *)v14 data];
    v26 = [(CSDConversationManager *)self broadcastData:v25 onConversation:v6 additionalOptions:v24];

    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v31) = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "(success: %d)", buf, 8u);
    }

    [(CSDConversationManager *)self broadcastImageForSession:v7 onConversation:v6];
    [(CSDConversationManager *)self conversationChanged:v6];
  }
}

- (void)notifyDelegateOfHighlightAddedForConversation:(id)a3 highlightIdentifier:(id)a4 oldHighlightIdentifier:(id)a5 byParticipant:(id)a6 isFirstAdd:(BOOL)a7
{
  v22 = a3;
  v23 = a4;
  v11 = a5;
  v21 = a6;
  if (v11 && ([v11 isEqualToString:v23] & 1) == 0)
  {
    v12 = [(CSDConversationManager *)self collaborationStateManager];
    [v12 collaborationRemoved:v11];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          v18 = [(CSDConversationManager *)self delegateToQueue];
          v19 = [v18 objectForKey:v17];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10019346C;
          block[3] = &unk_10061BCB0;
          block[4] = v17;
          v26 = v22;
          v27 = self;
          v28 = v21;
          v29 = v23;
          v30 = v11;
          v31 = a7;
          dispatch_async(v19, block);
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }
}

- (void)notifyDelegateOfHighlightRemovedFromConversation:(id)a3 highlightIdentifier:(id)a4 byParticipant:(id)a5
{
  v20 = a3;
  v8 = a4;
  v18 = a5;
  v9 = [(CSDConversationManager *)self collaborationStateManager];
  v19 = v8;
  [v9 collaborationRemoved:v8];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [(CSDConversationManager *)self delegateToQueue];
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = [(CSDConversationManager *)self delegateToQueue];
          v17 = [v16 objectForKey:v15];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001937F0;
          block[3] = &unk_10061A428;
          block[4] = v15;
          v22 = v20;
          v23 = self;
          v24 = v18;
          v25 = v19;
          dispatch_async(v17, block);
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }
}

- (void)startTrackingCollaborationWithIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CSDConversationManager *)self queue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100193A88;
  v23[3] = &unk_10061D178;
  v23[4] = self;
  v24 = v15;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v15;
  dispatch_async(v17, v23);
}

- (void)addHighlightIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100193D10;
  block[3] = &unk_10061A428;
  v20 = v10;
  v21 = v11;
  v22 = self;
  v23 = v13;
  v24 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)removeHighlightIdentifier:(id)a3 forConversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100194044;
  block[3] = &unk_100619E58;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)markCollaborationWithIdentifierOpened:(id)a3 forConversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001942DC;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)collaborationStateChanged:(int64_t)a3 forCollaborationIdentifier:(id)a4 onConversationUUID:(id)a5
{
  v24 = a4;
  v7 = a5;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManager *)self mutableConversationsByUUID];
  v10 = [v9 objectForKeyedSubscript:v7];

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v37 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Collaboration state changed to %lu", buf, 0xCu);
  }

  if (v10)
  {
    v20 = v7;
    v22 = v10;
    v21 = [v10 tuConversation];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [(CSDConversationManager *)self delegateToQueue];
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        v16 = 0;
        do
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            v18 = [(CSDConversationManager *)self delegateToQueue];
            v19 = [v18 objectForKey:v17];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1001946A0;
            block[3] = &unk_10061D378;
            block[4] = v17;
            v26 = v22;
            v27 = self;
            v28 = v21;
            v30 = a3;
            v29 = v24;
            dispatch_async(v19, block);
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }

    v7 = v20;
    v10 = v22;
  }
}

- (void)addCollaborationDictionary:(id)a3 forConversationWithUUID:(id)a4 fromMe:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100194B58;
  v13[3] = &unk_10061BE38;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)getNeedsDisclosureOfCollaborationInitiator:(id)a3 forConversationUUID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CSDConversationManager *)self collaborationStateManager];
  [v11 getNeedsDisclosureOfCollaborationInitiator:v10 forConversationUUID:v9 completionHandler:v8];
}

- (void)addDisclosedCollaborationInitiator:(id)a3 toConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManager *)self collaborationStateManager];
  [v8 addDisclosedCollaborationInitiator:v7 toConversationUUID:v6];
}

- (void)conversation:(id)a3 changedBytesOfDataUsed:(int64_t)a4
{
  v16 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v16 tuConversation];
          v12 = [(CSDConversationManager *)self delegateToQueue];
          v13 = [v12 objectForKey:v10];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001954D4;
          block[3] = &unk_10061BDD0;
          block[4] = v10;
          v19 = v11;
          v20 = self;
          v21 = a4;
          v14 = v11;
          dispatch_async(v13, block);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)conversation:(id)a3 activitySessionRemoved:(id)a4 userOriginated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v10);

  if (v5)
  {
    v11 = [v9 activity];
    v12 = [v11 isStaticActivity];

    if ((v12 & 1) == 0)
    {
      v13 = [v9 terminatingHandle];

      if (v13)
      {
        v14 = [v9 terminatingHandle];
        v15 = [v8 remoteParticipantForHandle:v14];
      }

      else
      {
        v15 = [v8 localParticipant];
        v16 = [CSDMessagingConversationMessage alloc];
        v17 = [v8 groupUUID];
        v14 = [(CSDMessagingConversationMessage *)v16 initWithType:21 groupUUID:v17 link:0];

        v18 = objc_alloc_init(CSDMessagingConversationActivitySession);
        v19 = [v9 UUID];
        v20 = [v19 UUIDString];
        [(CSDMessagingConversationActivitySession *)v18 setIdentifierUUIDString:v20];

        [(CSDMessagingConversationMessage *)v14 addActivitySessions:v18];
        v21 = [(CSDMessagingConversationMessage *)v14 data];
        v28 = IDSSendMessageOptionPublicMessageIntentKey;
        v22 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)v14 type]];
        v29 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v24 = [(CSDConversationManager *)self broadcastData:v21 onConversation:v8 additionalOptions:v23];

        v25 = sub_100004778();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27[0] = 67109120;
          v27[1] = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Did send activity removal message successfully? %d", v27, 8u);
        }
      }

      if (v15)
      {
        [(CSDConversationManager *)self postEndEventForSession:v9 originator:v15 conversation:v8];
      }

      else
      {
        v26 = sub_100004778();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100478408();
        }
      }
    }
  }
}

- (void)conversation:(id)a3 sendResourceAtURL:(id)a4 toParticipants:(id)a5 metadata:(id)a6 activitySessionUUID:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v20);

  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v15 URL];
    *buf = 138412290;
    v55 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending resource at url %@", buf, 0xCu);
  }

  v23 = [(CSDConversationManager *)self resourceTransferCallbacks];
  v24 = [v15 URL];
  v25 = [v23 objectForKeyedSubscript:v24];

  if (v25)
  {
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100478478(v15);
    }

    v27 = [NSError errorWithDomain:@"CSDResourceTransferErrorDomain" code:1 userInfo:0];
    v19[2](v19, v27);
  }

  else
  {
    v46 = v18;
    v47 = v17;
    v48 = v14;
    v27 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v16 count]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v44 = v16;
    v28 = v16;
    v29 = [v28 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v50;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v49 + 1) + 8 * i) activeIDSDestination];
          [v27 addObject:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v30);
    }

    if ([v27 count])
    {
      v34 = +[NSMutableDictionary dictionary];
      v35 = [v48 groupUUID];
      v36 = [v35 UUIDString];
      [v34 setObject:v36 forKey:@"resourceTransferConversationIDKey"];

      v37 = [v46 UUIDString];
      [v34 setObject:v37 forKey:@"resourceTransferActivitySessionIDKey"];

      if (v47)
      {
        [v34 setObject:v47 forKey:@"resourceTransferClientMetadataKey"];
      }

      if (v19)
      {
        v38 = objc_retainBlock(v19);
        v39 = [(CSDConversationManager *)self resourceTransferCallbacks];
        v40 = [v15 URL];
        [v39 setObject:v38 forKeyedSubscript:v40];
      }

      v41 = [(CSDConversationManager *)self fileTransferController];
      v42 = [v48 localMember];
      [v41 transferFileAtSandboxExtendedURL:v15 toDestinations:v27 withMetadata:v34 fromMember:v42];

      v14 = v48;
      v16 = v45;
      v17 = v47;
    }

    else
    {
      v43 = sub_100004778();
      v17 = v47;
      v14 = v48;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_100478504();
      }

      v34 = [NSError errorWithDomain:@"CSDResourceTransferErrorDomain" code:2 userInfo:0];
      v19[2](v19, v34);
      v16 = v44;
    }

    v18 = v46;
  }
}

- (void)conversation:(id)a3 addedMembers:(id)a4 triggeredLocally:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    *buf = 138412802;
    v31 = v8;
    v32 = 2112;
    if (v5)
    {
      v12 = @"YES";
    }

    v33 = v9;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "conversation: %@ addedMembers: %@ triggeredLocally: %@", buf, 0x20u);
  }

  [(CSDConversationManager *)self broadcastLightweightEndorsementForAddedMembers:v9 onConversation:v8];
  if (v5)
  {
    v13 = [v8 stagedActivitySession];

    if (v13)
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v8 stagedActivitySession];
        *buf = 138412290;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found staged ActivitySession on conversation. Distributing image. %@", buf, 0xCu);
      }

      v16 = [v8 stagedActivitySession];
      [(CSDConversationManager *)self broadcastImageForSession:v16 onConversation:v8];
    }

    v24 = v9;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = [v8 tuActivitySessions];
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v25 + 1) + 8 * i);
          v23 = sub_100004778();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found ActivitySession on conversation. Distributing image. %@", buf, 0xCu);
          }

          [(CSDConversationManager *)self broadcastImageForSession:v22 onConversation:v8];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    v9 = v24;
  }

  [(CSDConversationManager *)self conversationChanged:v8];
}

- (void)conversationDidTriggerJoin:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "conversation: %@ triggered join.", &v14, 0xCu);
  }

  v7 = [v4 stagedActivitySession];
  if (v7)
  {
    v8 = v7;
    v9 = [v4 stagedActivitySession];
    v10 = [v9 isLocallyInitiated];

    if (v10)
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 stagedActivitySession];
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found staged ActivitySession on conversation. Distributing image. %@", &v14, 0xCu);
      }

      v13 = [v4 stagedActivitySession];
      [(CSDConversationManager *)self broadcastImageForSession:v13 onConversation:v4];
    }
  }
}

- (void)conversation:(id)a3 requestedEndpointWithIdentifier:(id)a4 activitySession:(id)a5 completion:(id)a6
{
  v21 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v25 = self;
  v10 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v10);

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_100196560;
  v36[4] = sub_10019658C;
  v37 = objc_retainBlock(v22);
  v11 = dispatch_group_create();
  v12 = [(CSDConversationManager *)self observerStorage];
  v13 = [v12 observerToQueue];

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [v14 objectForKey:{v18, v21}];
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v11);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100196594;
          block[3] = &unk_10061D3C8;
          block[4] = v18;
          block[5] = v25;
          v28 = v24;
          v29 = v23;
          v31 = v36;
          v30 = v11;
          dispatch_async(v19, block);
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v15);
  }

  v20 = [(CSDConversationManager *)v25 queue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100196788;
  v26[3] = &unk_10061D3F0;
  v26[4] = v36;
  dispatch_group_notify(v11, v20, v26);

  _Block_object_dispose(v36, 8);
}

- (void)conversation:(id)a3 screenShareAttributesSelected:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 UUID];

  [(CSDConversationManager *)self setScreenEnabled:1 screenShareAttributes:v6 forConversationWithUUID:v9];
}

- (void)conversation:(id)a3 screenShareAttributesUpdated:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 UUID];

  [(CSDConversationManager *)self setScreenShareAttributes:v6 forConversationWithUUID:v9];
}

- (void)conversation:(id)a3 removedScreenShareRequest:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v7);

  [(CSDConversationManager *)self notifyDelegatesOf:v8 removedScreenShareRequest:v6];
}

- (void)conversation:(id)a3 screenShareAttributesDidChange:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDConversationManager *)self screenSharingActivityManager];
  [v7 broadcastAttributes:v5];
}

- (void)conversation:(id)a3 remoteMembersChanged:(id)a4
{
  v16 = a3;
  v15 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(CSDConversationManager *)self delegateToQueue];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v16 tuConversation];
          v12 = [(CSDConversationManager *)self delegateToQueue];
          v13 = [v12 objectForKey:v10];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100196BE8;
          block[3] = &unk_10061A450;
          block[4] = v10;
          v19 = v11;
          v20 = self;
          v21 = v15;
          v14 = v11;
          dispatch_async(v13, block);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  v12 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v12);

  if (a6)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412546;
      v37 = v10;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sent %@ with error: %@", &v36, 0x16u);
    }

    [(CSDConversationManager *)self _runCallbackIfNecessaryForMessage:v10];
  }

  else
  {
    v14 = [(CSDConversationManager *)self mutablePseudonymsByRequestIdentifiers];
    v15 = [v14 objectForKeyedSubscript:v10];

    if (v15 && [v11 code] == 3)
    {
      v16 = [(CSDConversationManager *)self pendingConversationWithPseudonym:v15];
      if (v16)
      {
        v17 = sub_100004778();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 138412290;
          v37 = v15;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Let me in request was sent to invalid pseudonym %@, ending pending conversation", &v36, 0xCu);
        }

        [(CSDConversationManager *)self notifyDelegatesOfInvalidLinkForPendingConversation:v16];
      }
    }
  }

  v18 = [(CSDConversationManager *)self outIdentifierToConversationInfo];
  v19 = [v18 objectForKey:v10];

  if (v19)
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(CSDConversationManager *)self outIdentifierToConversationInfo];
      v22 = [v21 objectForKeyedSubscript:v10];
      v36 = 138412546;
      v37 = v10;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "outIdentifierToConversationInfo[%@] = %@", &v36, 0x16u);
    }

    if (a6)
    {
      v23 = [(CSDConversationManager *)self outIdentifierToConversationInfo];
      v24 = [v23 objectForKeyedSubscript:v10];

      v25 = [v24 objectForKeyedSubscript:@"kCSDConversationIsLetMeInApproved"];
      v26 = [v25 BOOLValue];

      v27 = [v24 objectForKeyedSubscript:@"kCSDConversationGroupUUID"];
      v28 = [(CSDConversationManager *)self conversationWithGroupUUID:v27];

      v29 = [v28 tuConversation];

      v30 = sub_100004778();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        if (v31)
        {
          v32 = @"NO";
          if (v26)
          {
            v32 = @"YES";
          }

          v36 = 138412290;
          v37 = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Report sent let me in response (approved: %@)", &v36, 0xCu);
        }

        v30 = [(CSDConversationManager *)self reportingController];
        v33 = [v28 tuConversation];
        [v30 sentLetMeInRequestForConversation:v33 isApproved:v26];
      }

      else if (v31)
      {
        v34 = @"NO";
        if (v26)
        {
          v34 = @"YES";
        }

        v36 = 138412546;
        v37 = v34;
        v38 = 2112;
        v39 = v28;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not report sent let me in response (approved: %@) because TUConversation is null for %@", &v36, 0x16u);
      }
    }

    else
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100478540();
      }
    }

    v35 = [(CSDConversationManager *)self outIdentifierToConversationInfo];
    [v35 removeObjectForKey:v10];
  }
}

- (void)_runCallbackIfNecessaryForMessage:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self mutableSendDataCallbacksByRequestIdentifiers];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(CSDConversationManager *)self mutableSendDataCallbacksByRequestIdentifiers];
    [v7 removeObjectForKey:v4];

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Running callback for message %@, which has been received by the IDS daemon", &v9, 0xCu);
    }

    v6[2](v6);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingPendingMessageOfType:(int64_t)a5 fromID:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([v14 length])
  {
    v16 = IDSCopyAddressDestinationForDestination();
    v17 = IDSCopyRawAddressForDestination();

    v18 = [TUHandle normalizedHandleWithDestinationID:v17];
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [v12 serviceIdentifier];
      v38 = v17;
      v20 = self;
      v21 = v18;
      v22 = v12;
      v24 = v23 = v13;
      v25 = IDSLoggableDescriptionForHandleOnService();
      *buf = 134219010;
      v42 = a5;
      v43 = 2112;
      v44 = v22;
      v45 = 2112;
      v46 = v23;
      v47 = 2112;
      v48 = v25;
      v49 = 2112;
      v50 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Group Session update %ld received for service %@ account %@ from (fromID=%@) with context: %@", buf, 0x34u);

      v13 = v23;
      v12 = v22;
      v18 = v21;
      self = v20;
      v17 = v38;
    }

    v26 = [(CSDConversationManager *)self shouldCreatePendingChatForMessageType:a5 fromHandle:v18];
    v27 = sub_100004778();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        *buf = 134217984;
        v42 = a5;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Recieved pending message of type %ld", buf, 0xCu);
      }

      v29 = [v15 originalGUID];

      v30 = sub_100004778();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        if (v31)
        {
          v32 = [v15 originalGUID];
          *buf = 138412290;
          v42 = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Added %@ to the incomingPendingMessageGUIDs", buf, 0xCu);
        }

        v30 = [(CSDConversationManager *)self incomingPendingMessageGUIDs];
        v33 = [v15 originalGUID];
        [v30 addObject:v33];
      }

      else if (v31)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] No originalGUID in the context", buf, 2u);
      }

      v34 = [CSDGroupIDSPendingChat alloc];
      v35 = +[NSUUID UUID];
      v27 = [(CSDGroupIDSPendingChat *)v34 initWithUUID:v35 handle:v18];

      v36 = +[NSNotificationCenter defaultCenter];
      v39 = @"CSDIDSPendingChatKey";
      v40 = v27;
      v37 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      [v36 postNotificationName:@"CSDGroupIDSPendingMessageDidReceiveInviteNotification" object:0 userInfo:v37];
    }

    else if (v28)
    {
      *buf = 134217984;
      v42 = a5;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Not handling pending message of type: %ld", buf, 0xCu);
    }
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingData:fromID:context: Empty from ID. Dropping message.", buf, 2u);
    }
  }
}

- (BOOL)shouldCreatePendingChatForMessageType:(int64_t)a3 fromHandle:(id)a4
{
  if (a3 == 8)
  {
    return ![(CSDConversationManager *)self isValidLocalHandle:a4, v4, v5];
  }

  else
  {
    return 0;
  }
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a6;
  v20 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v20);

  v21 = [(CSDConversationManager *)self messageProxy];
  v22 = [v21 shouldIgnoreIDSResource:v16 metadata:v19 fromID:v17 context:v18];

  v23 = sub_100004778();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      LOWORD(v33) = 0;
      v25 = "Ignoring IDS resource; already received via conduit IDS proxy.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, &v33, 2u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v24)
  {
    v26 = [v18 outgoingResponseIdentifier];
    v27 = [v14 serviceIdentifier];
    v28 = IDSLoggableDescriptionForHandleOnService();
    v33 = 138412546;
    v34 = v26;
    v35 = 2112;
    v36 = v28;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received resource URL with identifier %@ from %@", &v33, 0x16u);
  }

  if ([v17 length])
  {
    v23 = [NSData dataWithContentsOfURL:v16];
    if (![v23 length])
    {
      v30 = sub_100004778();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingResourceAtURL:fromID:context: Empty data. Dropping message.", &v33, 2u);
      }

      goto LABEL_21;
    }

    v29 = [[CSDMessagingConversationMessage alloc] initWithData:v23];
    v30 = v29;
    if (v29)
    {
      if ([(CSDMessagingConversationMessage *)v29 type]== 27)
      {
        [(CSDConversationManager *)self _service:v14 account:v15 incomingData:v23 fromID:v17 context:v18 attemptCount:0];
LABEL_21:

        goto LABEL_22;
      }

      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [NSNumber numberWithInt:[v30 type]];
        v33 = 138412290;
        v34 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingResourceAtURL:fromID:context: Got unsupported messaged type %@. Dropping message.", &v33, 0xCu);
      }
    }

    else
    {
      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingResourceAtURL:fromID:context: Empty CSDMessagingConversationMessage. Dropping message.", &v33, 2u);
      }
    }

    goto LABEL_21;
  }

  v23 = sub_100004778();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    v25 = "[WARN] service:account:incomingResourceAtURL:fromID:context: Empty from ID. Dropping message.";
    goto LABEL_13;
  }

LABEL_22:
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CSDConversationManager *)self messageProxy];
  v18 = [v17 shouldIgnoreIDSMessage:v14 fromID:v15 context:v16];

  v19 = sub_10022ACCC();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (v18)
  {
    if (v20)
    {
      v21 = [v16 storageGuid];
      v25 = 141558274;
      v26 = 1752392040;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "service:account:incomingData:fromID:context: already proxied IDS message with ID %{mask.hash}@, ignoring.", &v25, 0x16u);
    }
  }

  else
  {
    if (v20)
    {
      v22 = [v12 serviceIdentifier];
      v23 = IDSLoggableDescriptionForHandleOnService();
      v24 = [v16 storageGuid];
      v25 = 141558786;
      v26 = 1752392040;
      v27 = 2112;
      v28 = v23;
      v29 = 2160;
      v30 = 1752392040;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "service:account:incomingData:fromID:context: receiving IDS message from %{mask.hash}@ with ID %{mask.hash}@", &v25, 0x2Au);
    }

    [(CSDConversationManager *)self _service:v12 account:v13 incomingData:v14 fromID:v15 context:v16 attemptCount:0];
  }
}

- (void)processProxiedMessage:(id)a3 fromID:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = sub_10022ACCC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10047857C();
  }

  [(CSDConversationManager *)self _service:0 account:0 incomingData:v10 fromID:v8 context:v9 attemptCount:0];
}

- (void)processProxiedResource:(id)a3 metadata:(id)a4 fromID:(id)a5 context:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a3;
  v12 = sub_10022ACCC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10047861C();
  }

  [(CSDConversationManager *)self service:0 account:0 incomingResourceAtURL:v11 fromID:v9 context:v10];
}

- (void)processProxiedGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = sub_10022ACCC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004786BC();
  }

  [(CSDConversationManager *)self processGroupSessionParticipantUpdate:v4 context:0];
}

- (void)_service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7 attemptCount:(unint64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v18);

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v17 outgoingResponseIdentifier];
    v21 = [v13 serviceIdentifier];
    IDSLoggableDescriptionForHandleOnService();
    v109 = v16;
    v22 = self;
    v23 = v17;
    v24 = v15;
    v26 = v25 = v14;
    [NSNumber numberWithUnsignedInteger:a8];
    v28 = v27 = v13;
    *buf = 138412802;
    v124 = v20;
    v125 = 2112;
    *v126 = v26;
    *&v126[8] = 2112;
    v127 = v28;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received message with identifier %@ from %@ Attempt count %@", buf, 0x20u);

    v13 = v27;
    v14 = v25;
    v15 = v24;
    v17 = v23;
    self = v22;
    v16 = v109;
  }

  if ([v16 length])
  {
    if ([v15 length])
    {
      v29 = [[CSDMessagingConversationMessage alloc] initWithData:v15];
      v30 = sub_100004778();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (!v29)
      {
        if (v31)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingData:fromID:context: Empty CSDMessagingConversationMessage. Dropping message.", buf, 2u);
        }

        goto LABEL_125;
      }

      v110 = v13;
      if (v31)
      {
        v32 = [(CSDMessagingConversationMessage *)v29 type];
        if (v32 < 0x26 && ((0x3FFFE9FF7FuLL >> v32) & 1) != 0)
        {
          v33 = *(&off_10061D458 + v32);
        }

        else
        {
          v33 = [NSString stringWithFormat:@"(unknown: %i)", v32];
        }

        *buf = 138412290;
        v124 = v33;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Received CSDMessagingConversationMessage with Type of %@", buf, 0xCu);
      }

      v35 = IDSCopyAddressDestinationForDestination();
      v30 = IDSCopyRawAddressForDestination();

      if (![v30 length])
      {
        v36 = sub_100004778();
        v13 = v110;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingData:fromID:context: Empty destinationID after IDSCopyRawAddressForDestination. Dropping message.", buf, 2u);
        }

        goto LABEL_124;
      }

      v36 = [TUHandle normalizedHandleWithDestinationID:v30];
      v13 = v110;
      if (!v36)
      {
        v50 = sub_100004778();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v51 = "[WARN] service:account:incomingData:fromID:context: Could not create TUHandle from destinationID. Dropping message.";
LABEL_61:
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 2u);
        }

LABEL_62:

        goto LABEL_124;
      }

      if (![(CSDConversationManager *)self _linksEnabled])
      {
        goto LABEL_49;
      }

      v37 = [(CSDMessagingConversationMessage *)v29 type];
      if (v37 <= 13)
      {
        if (v37 == 10)
        {
          goto LABEL_47;
        }

        if (v37 != 11)
        {
          if (v37 != 13)
          {
            goto LABEL_49;
          }

          [(CSDConversationManager *)self handleEncryptedMessageWithin:v29 fromHandle:v36 context:v17];
LABEL_124:

LABEL_125:
          goto LABEL_126;
        }
      }

      else
      {
        if (v37 <= 23)
        {
          if ((v37 - 14) < 2)
          {
            log = v14;
            if (![v17 fromServerStorage])
            {
              goto LABEL_31;
            }

            v38 = [NSDate dateWithTimeIntervalSinceNow:-1800.0];
            v39 = [v17 serverReceivedTime];
            v40 = v17;
            v41 = [v38 compare:v39];

            v42 = v41 == 1;
            v17 = v40;
            if (!v42 || [(CSDMessagingConversationMessage *)v29 type]!= 14)
            {
              goto LABEL_31;
            }

            v43 = [(CSDMessagingConversationMessage *)v29 conversationGroupUUID];
            v44 = [(CSDConversationManager *)self conversationWithGroupUUID:v43];

            if (v44)
            {

              v17 = v40;
LABEL_31:
              v40 = v17;
              v45 = [v17 publicIntentAction];
              v46 = [v45 integerValue];

              v47 = sub_100004778();
              v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
              if (v46 == 20001)
              {
                v14 = log;
                if (v48)
                {
                  v49 = [v40 publicIntentAction];
                  *buf = 138412546;
                  v124 = v49;
                  v125 = 2048;
                  *v126 = 20001;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[WARN] Received LetMeInDelegation with Intent of {publicIntentAction: %@, messageIntent: %llu}", buf, 0x16u);
                }

                [(CSDConversationManager *)self handleReceivedLMIDelegateMessage:v29 fromHandle:v36];
              }

              else
              {
                v14 = log;
                if (v48)
                {
                  v66 = [v40 publicIntentAction];
                  *buf = 138412290;
                  v124 = v66;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping let me in delegation request or response because it has the wrong intent {publicIntentAction: %@}", buf, 0xCu);
                }
              }

              v13 = v110;
              goto LABEL_76;
            }

            v89 = sub_100004778();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping let me in delegation request because it is from server storage, older than 30m, and not for an ongoing conversation.", buf, 2u);
            }

LABEL_54:
            v14 = log;
            v13 = v110;
LABEL_76:
            v17 = v40;
            goto LABEL_124;
          }

          if (v37 == 16)
          {
LABEL_47:
            v50 = sub_100004778();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v51 = "[WARN] Dropping let me in request or response because it was not encrypted";
              goto LABEL_61;
            }

            goto LABEL_62;
          }

LABEL_49:
          log = v14;
          v52 = [(CSDConversationManager *)self featureFlags];
          v53 = [v52 sharePlayInCallsEnabled];

          if (v53 && [(CSDMessagingConversationMessage *)v29 type]== 37)
          {
            v40 = v17;
            v54 = [(CSDMessagingConversationMessage *)v29 sharePlayAvailable];
            if (v54)
            {
              v55 = [v40 serverReceivedTime];
              [v55 timeIntervalSince1970];
              v57 = (v56 * 1000.0);

              v58 = [(CSDConversationManager *)self sharePlayAvailabilityManager];
              [v58 handleWithMessage:v54 fromHandle:v36 sentAtEpochMillis:v57 completionHandler:&stru_10061D410];
            }

            goto LABEL_54;
          }

          if (![(CSDMessagingConversationMessage *)v29 hasConversationGroupUUIDString])
          {
            v50 = sub_100004778();
            v14 = log;
            v13 = v110;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v51 = "[WARN] service:account:incomingData:fromID:context: Empty CSDMessagingConversationMessage. Dropping message.";
              goto LABEL_61;
            }

            goto LABEL_62;
          }

          v59 = [(CSDMessagingConversationMessage *)v29 conversationGroupUUID];
          v14 = log;
          v13 = v110;
          if (!v59)
          {
            v61 = sub_100004778();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingData:fromID:context: Could not create group UUID from string. Dropping message.", buf, 2u);
            }

            goto LABEL_123;
          }

          v105 = v59;
          v60 = [(CSDConversationManager *)self conversationWithGroupUUID:v59];
          if ([(CSDConversationManager *)self shouldIgnoreMessageForConversation:v60])
          {
            v61 = v60;
            v59 = v105;
LABEL_123:

            goto LABEL_124;
          }

          v104 = v60;
          if (!v60)
          {
            v67 = sub_100004778();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = [NSNumber numberWithUnsignedInteger:a8];
              *buf = 138412546;
              v124 = v105;
              v125 = 2112;
              *v126 = v68;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[WARN] No conversation found for groupUUID %@, attempt: %@", buf, 0x16u);

              v13 = v110;
            }

            v111 = [(CSDConversationManager *)self pendingConversationMessageHandler];
            v102 = [v17 originalGUID];
            v118 = v13;
            v119 = log;
            v120 = v15;
            v121 = v16;
            v122 = v17;
            [v111 enqueueMessageRetryAttemptForMessage:v29 messageID:v102 attemptCount:? processingBlock:?];

            v59 = v105;
            v69 = v118;
            goto LABEL_121;
          }

          if (-[NSObject isFromStorage](v60, "isFromStorage") && ([v17 fromServerStorage] & 1) == 0)
          {
            v70 = sub_100004778();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = [v104 UUID];
              *buf = 138412290;
              v124 = v71;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Updating fromStorage on conversation with UUID: %@ since there are still active remote participants.", buf, 0xCu);
            }

            [v104 setFromStorage:0];
          }

          else
          {
            v62 = sub_100004778();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = [v104 UUID];
              v64 = [v104 isFromStorage];
              v65 = [v17 fromServerStorage];
              *buf = 138412802;
              v124 = v63;
              v125 = 1024;
              *v126 = v64;
              v14 = log;
              *&v126[4] = 1024;
              *&v126[6] = v65;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Not updating fromStorage on conversation with UUID: %@ since conversation.isFromStorage: %d, and context.fromServerStorage: %d", buf, 0x18u);
            }
          }

          v59 = v105;
          v72 = [(CSDConversationManager *)self featureFlags];
          if ([v72 conversationHandoffEnabled])
          {
            v73 = [(CSDMessagingConversationMessage *)v29 type];
            v74 = v72;
            v75 = v73;

            if (v75 == 32)
            {
              [(CSDConversationManager *)self handleReceivedUpdateJoinedMetadataMessage:v29 fromHandle:v36];
              v13 = v110;
LABEL_122:
              v61 = v104;
              goto LABEL_123;
            }
          }

          else
          {
          }

          v76 = sub_100004778();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v124 = v36;
            v125 = 2112;
            *v126 = v104;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Looking for handle: %@ in existingConversation: %@", buf, 0x16u);
          }

          v77 = [v104 remoteMembers];
          v103 = [v77 mutableCopy];

          v78 = [v104 localMember];
          [v103 addObject:v78];

          v79 = [v104 lightweightMembers];
          v80 = [v79 copy];

          v81 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v16 members:v103];
          v100 = v80;
          v82 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v16 members:v80];
          v98 = v82;
          v99 = v81;
          if (v81 && v82)
          {
            sub_100004778();
            v13 = v110;
            v101 = v59 = v105;
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              sub_1004787C8();
            }
          }

          else
          {
            if (v82)
            {
              v83 = v82;
            }

            else
            {
              v83 = v81;
            }

            v101 = v83;
            v13 = v110;
            v59 = v105;
            if ([(CSDConversationManager *)self verifyLightweightMessageTypeFromHandle:v36 message:v29 existingConversation:v104])
            {
              if (!v101)
              {
                loga = sub_100004778();
                if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v124 = v36;
                  _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find matching handle: %@  in existingConversation.", buf, 0xCu);
                }

                logb = [(CSDConversationManager *)self pendingConversationMessageHandler];
                v97 = [v17 originalGUID];
                v113 = v110;
                v114 = v14;
                v115 = v15;
                v116 = v16;
                v117 = v17;
                [NSObject enqueueMessageRetryAttemptForMessage:"enqueueMessageRetryAttemptForMessage:messageID:attemptCount:processingBlock:" messageID:v29 attemptCount:v97 processingBlock:?];

                goto LABEL_120;
              }

              if (a8)
              {
                v84 = +[CSDReportingController sharedInstance];
                [v84 messageRetrySucceededForConversationGroupUUID:v105];

                if ([(CSDMessagingConversationMessage *)v29 type]== 4)
                {
                  v85 = +[CSDReportingController sharedInstance];
                  [v85 avcBlobRequestMessageRetrySucceededForConversationGroupUUID:v105];
                }
              }

              v13 = v110;
              if ([(CSDConversationManager *)self shouldAcceptMessageFromHandle:v36 messageContext:v17 message:v29 existingConversation:v104])
              {
                v14 = log;
                if (-[NSObject isFromStorage](v104, "isFromStorage") && [v17 fromServerStorage] && -[CSDMessagingConversationMessage type](v29, "type") == 1)
                {
                  v86 = sub_100004778();
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                  {
                    v87 = [v104 UUID];
                    *buf = 138412802;
                    v124 = v29;
                    v125 = 2112;
                    *v126 = v17;
                    *&v126[8] = 2112;
                    v127 = v87;
                    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "[WARN] Received Invitation conversation message from server storage for conversation where that was also retrieved from server storage. Not notifying delegates of this Invitation message. {message: %@, context: %@, conversationUUID: %@}", buf, 0x20u);
                  }

                  v14 = log;
                  v13 = v110;
LABEL_108:
                  v59 = v105;
                }

                else
                {
                  v90 = v17;
                  v91 = [(CSDConversationManager *)self _shouldRingForIncomingCallWithHandle:v36 conversation:v104 isFromPendingMessage:0 isOldMessage:0 message:v29];
                  v92 = sub_100004778();
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                  {
                    v93 = @"NO";
                    if (v91)
                    {
                      v93 = @"YES";
                    }

                    *buf = 138412546;
                    v124 = v93;
                    v125 = 2112;
                    *v126 = v36;
                    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "shouldRing = %@, handle: %@", buf, 0x16u);
                  }

                  v94 = [v101 handle];
                  v95 = v91;
                  v96 = v94;
                  [(CSDConversationManager *)self notifyDelegatesOfMessage:v29 fromHandle:v94 forConversation:v104 withUpdate:0 shouldRing:v95];

                  v13 = v110;
                  v17 = v90;
                  v59 = v105;
                  switch([(CSDMessagingConversationMessage *)v29 type])
                  {
                    case 4:
                      [(CSDConversationManager *)self handleConversation:v104 receivedBlobRecoveryRequest:v29 fromHandle:v36];
                      goto LABEL_120;
                    case 5:
                      [(CSDConversationManager *)self handleConversation:v104 receivedBlobRecoveryResponse:v29 fromHandle:v36];
                      goto LABEL_120;
                    case 6:
                      [(CSDConversationManager *)self notifyDelegatesOfMessage:v29 fromHandle:v36 forConversation:v104 withUpdate:0 shouldRing:0];
                      goto LABEL_120;
                    case 7:
                    case 9:
                    case 0xA:
                    case 0xB:
                    case 0xC:
                    case 0xD:
                    case 0xE:
                    case 0xF:
                    case 0x10:
                    case 0x11:
                    case 0x12:
                    case 0x13:
                    case 0x14:
                    case 0x16:
                    case 0x18:
                    case 0x19:
                    case 0x1A:
                    case 0x20:
                      goto LABEL_120;
                    case 8:
                      [(CSDConversationManager *)self handleConversation:v104 receivedActivitySession:v29 fromHandle:v36];
                      goto LABEL_120;
                    case 0x15:
                      [(CSDConversationManager *)self handleConversation:v104 removeActivitySession:v29 fromHandle:v36];
                      goto LABEL_120;
                    case 0x17:
                      [(CSDConversationManager *)self handleConversation:v104 updateActivity:v29 fromHandle:v36];
                      goto LABEL_120;
                    case 0x1B:
                      [(CSDConversationManager *)self handleConversation:v104 updateActivityImage:v29 fromHandle:v36];
                      goto LABEL_120;
                    case 0x1C:
                      [(CSDConversationManager *)self handleConversation:v104 updateGuestMode:v29 fromHandle:v36];
                      goto LABEL_120;
                    case 0x1D:
                      [(CSDConversationManager *)self handleConversation:v104 receivedEndorsementForMember:v29 fromHandle:v36];
                      goto LABEL_120;
                    case 0x1E:
                      [(CSDConversationManager *)self handleConversation:v104 addHighlight:v29 fromHandle:v36];
                      goto LABEL_120;
                    case 0x1F:
                      [(CSDConversationManager *)self handleConversation:v104 removeHighlight:v29 fromHandle:v36];
                      goto LABEL_120;
                    case 0x21:
                      [(CSDConversationManager *)self handleConversation:v104 participantUpdateMessage:v29 fromNormalizedHandle:v36];
                      goto LABEL_120;
                    case 0x22:
                      [(CSDConversationManager *)self handleConversation:v104 registerMessagesGroupUUIDMessage:v29 fromNormalizedHandle:v36];
                      goto LABEL_120;
                    case 0x23:
                      [(CSDConversationManager *)self handleConversation:v104 screenShareRequest:v29 fromHandle:v36];
                      goto LABEL_142;
                    case 0x24:
LABEL_142:
                      [(CSDConversationManager *)self handleConversation:v104 screenShareResponse:v29 fromHandle:v36];
                      break;
                    default:
                      v13 = v110;
                      v17 = v105;
                      goto LABEL_108;
                  }
                }

                goto LABEL_120;
              }

              v88 = sub_100004778();
              v14 = log;
              if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                sub_10047878C();
              }
            }

            else
            {
              v88 = sub_100004778();
              if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                sub_1004786F8();
              }
            }
          }

LABEL_120:

          v69 = v103;
LABEL_121:

          goto LABEL_122;
        }

        if (v37 == 24)
        {
          [(CSDConversationManager *)self handleReceivedLinkInvalidatedMessage:v29 fromHandle:v36];
          goto LABEL_124;
        }

        if (v37 != 26)
        {
          goto LABEL_49;
        }
      }

      [(CSDConversationManager *)self handleReceivedLinkCreatedOrChangedMessage:v29 fromHandle:v36];
      goto LABEL_124;
    }

    v29 = sub_100004778();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v34 = "[WARN] service:account:incomingData:fromID:context: Empty data. Dropping message.";
      goto LABEL_14;
    }
  }

  else
  {
    v29 = sub_100004778();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v34 = "[WARN] service:account:incomingData:fromID:context: Empty from ID. Dropping message.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
    }
  }

LABEL_126:
}

- (void)service:(id)a3 account:(id)a4 receivedGroupSessionParticipantUpdate:(id)a5 context:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = sub_10022ACCC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100478804();
  }

  v12 = [(CSDConversationManager *)self messageProxy];
  [v12 proxyGroupUpdate:v9 forConversationManager:self];

  [(CSDConversationManager *)self sanitizeAndProcessParticipantUpdate:v9 context:v8];
}

- (void)service:(id)a3 account:(id)a4 receivedGroupSessionParticipantDataUpdate:(id)a5
{
  v6 = a5;
  v7 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_10022ACCC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100478804();
  }

  v9 = [(CSDConversationManager *)self messageProxy];
  [v9 proxyGroupUpdate:v6 forConversationManager:self];

  [(CSDConversationManager *)self sanitizeAndProcessParticipantUpdate:v6 context:0];
}

- (void)sanitizeAndProcessParticipantUpdate:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManager *)self participantUpdateSanitizer];

  if (v8)
  {
    v9 = [(CSDConversationManager *)self participantUpdateSanitizer];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10019938C;
    v11[3] = &unk_10061D438;
    v11[4] = self;
    v12 = v6;
    [v9 sanitize:v7 completion:v11];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100478840();
    }

    [(CSDConversationManager *)self processGroupSessionParticipantUpdate:v7 context:v6];
  }
}

- (BOOL)_isConversationDisallowedByGreenTeaForConversation:(id)a3 withUpdateContext:(id)a4 conversationProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManager *)self featureFlags];
  if (TUGreenTeaLagunaEnabled() && ![v8 avMode])
  {
    v18 = [v8 presentationMode];

    if (v18 == 2)
    {
      v19 = [v9 identityProvidingTUConversationMembers];
      v20 = [v19 count];
      v21 = [v9 message];
      v15 = [v21 addedMembersCount] + v20;

      goto LABEL_11;
    }
  }

  else
  {
  }

  v12 = [v9 tuConversationMembers];
  v13 = [v12 count];
  v14 = [v9 message];
  v15 = [v14 addedMembersCount] + v13;

  if (([v9 hasVideo] & 1) == 0)
  {
LABEL_11:
    v17 = v15 > 2;
    goto LABEL_12;
  }

  v16 = [v9 video];
  v17 = v15 > 2;
  if (v15 <= 2 && (v16 & 1) == 0)
  {
    if (v10)
    {
      v17 = [v10 isDefaultProvider];
    }

    else
    {
      v17 = 1;
    }
  }

LABEL_12:

  return v17;
}

- (void)processGroupSessionParticipantUpdate:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  if (!v6)
  {
    v11 = sub_100004778();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v37 = "[WARN] processGroupSessionParticipantUpdate: Empty groupSessionParticipantUpdate";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v37, buf, 2u);
    goto LABEL_48;
  }

  v9 = [v6 participantDestinationID];

  if (!v9)
  {
    v11 = sub_100004778();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v37 = "[WARN] processGroupSessionParticipantUpdate: Empty groupSessionParticipantUpdate.participantDestinationID";
    goto LABEL_25;
  }

  v10 = [v6 groupUUID];
  v11 = [(CSDConversationManager *)self conversationWithGroupUUID:v10];

  if (![(CSDConversationManager *)self shouldIgnoreMessageForConversation:v11])
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 participantIDs];
      v14 = TULoggableStringForObject();
      v15 = [v6 members];
      *buf = 138412802;
      v51 = v6;
      v52 = 2112;
      v53 = v14;
      v54 = 2112;
      v55 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Group session participant update received: %@, participantIDs: %@, members: %@", buf, 0x20u);
    }

    v16 = sub_10022ACCC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v6 participantDestinationID];
      v18 = IDSCopyAddressDestinationForDestination();
      v19 = TULoggableStringForHandle();
      v20 = [v6 participantUpdateType];
      [v6 participantIDs];
      v21 = v48 = v7;
      v22 = [v21 allKeys];
      *buf = 138412802;
      v51 = v19;
      v52 = 2048;
      v53 = v20;
      v54 = 2112;
      v55 = v22;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Participant update from %@, type: %lu, participants: %@", buf, 0x20u);

      v7 = v48;
    }

    v23 = [v6 participantUpdateType];
    v24 = [v6 participantDestinationID];
    v25 = [(CSDConversationManager *)self memberExistsForParticipantDestination:v24 groupSessionParticipantUpdate:v6];
    v26 = [v25 handle];

    if (v26)
    {
      v27 = [(CSDConversationManager *)self deviceSupport];
      v28 = [v27 isGreenTea];

      if (v28)
      {
        v49 = v7;
        v29 = [CSDMessagingConversationParticipantDidJoinContext alloc];
        v30 = [v6 clientContextData];
        v31 = [(CSDMessagingConversationParticipantDidJoinContext *)v29 initWithData:v30];

        v32 = +[CSDConversationProviderManager sharedInstance];
        v33 = [(CSDMessagingConversationParticipantDidJoinContext *)v31 providerIdentifier];
        v34 = [v32 tuConversationProviderForIdentifier:v33];

        if ([(CSDConversationManager *)self _isConversationDisallowedByGreenTeaForConversation:v11 withUpdateContext:v31 conversationProvider:v34]&& v11)
        {
          v35 = sub_100004778();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v11;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Leaving conversation that is not supported on GreenTea devices: %@", buf, 0xCu);
          }

          v36 = +[CSDConversationLeaveContext greenTeaLeaveContext];
          [v11 leaveUsingContext:v36];
        }

        v7 = v49;
      }

      if (v23 > 1)
      {
        if (v23 != 2)
        {
          if (v23 == 3)
          {
            [(CSDConversationManager *)self processUpdateMembersUpdate:v6 fromHandle:v26];
          }

          else if (v23 == 4)
          {
            [(CSDConversationManager *)self processParticipantDataUpdate:v6 fromHandle:v26];
          }

          goto LABEL_47;
        }

        v41 = [v6 participantIdentifier];
        v40 = [v6 groupUUID];
        [(CSDConversationManager *)self handleParticipantWithIdentifier:v41 leftConversationWithGroupUUID:v40 fromHandle:v26 withGroupSessionUpdate:v6];
        goto LABEL_46;
      }

      if (v23)
      {
        if (v23 == 1)
        {
          if (v7)
          {
            v40 = [v7 senderCorrelationIdentifier];
          }

          else
          {
            v40 = 0;
          }

          v42 = [v7 originalGUID];
          if (v42 && (-[CSDConversationManager incomingPendingMessageGUIDs](self, "incomingPendingMessageGUIDs"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 containsObject:v42], v43, v44))
          {
            v45 = [(CSDConversationManager *)self incomingPendingMessageGUIDs];
            [v45 removeObject:v42];

            v46 = sub_100004778();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v51 = v42;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "fromPendingMessage, originalGUID: %@", buf, 0xCu);
            }

            v47 = 1;
          }

          else
          {
            v47 = 0;
          }

          [(CSDConversationManager *)self processJoinUpdate:v6 fromHandle:v26 senderCorrelationIdentifier:v40 isFromPendingMessage:v47];

LABEL_46:
        }

LABEL_47:

        goto LABEL_48;
      }

      v38 = sub_100004778();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v39 = "[WARN] Received unknown participant update message";
        goto LABEL_36;
      }
    }

    else
    {
      v38 = sub_100004778();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v39 = "[WARN] Unable to find fromHandle.";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 2u);
      }
    }

    goto LABEL_47;
  }

LABEL_48:
}

- (void)processJoinUpdate:(id)a3 fromHandle:(id)a4 senderCorrelationIdentifier:(id)a5 isFromPendingMessage:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v13);

  v14 = [CSDMessagingConversationParticipantDidJoinContext alloc];
  v15 = [v10 clientContextData];
  v16 = [(CSDMessagingConversationParticipantDidJoinContext *)v14 initWithData:v15];

  v17 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 data];
  v18 = [v17 length];

  v19 = sub_100004778();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received participant join context", buf, 2u);
    }

    [CSDSignposts trace:5];
    v21 = [CSDConversationParticipant alloc];
    v22 = [v10 participantIdentifier];
    v23 = [v10 participantData];
    v20 = [(CSDConversationParticipant *)v21 initWithIdentifier:v22 handle:v11 avcData:v23 senderCorrelationIdentifier:v12];

    v24 = objc_alloc_init(TUConversationParticipantCapabilities);
    [v24 setMomentsAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isMomentsAvailable](v16, "isMomentsAvailable")}];
    [v24 setScreenSharingAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isScreenSharingAvailable](v16, "isScreenSharingAvailable")}];
    [v24 setGondolaCallingAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isGondolaCallingAvailable](v16, "isGondolaCallingAvailable")}];
    [v24 setSupportsLeaveContext:{-[CSDMessagingConversationParticipantDidJoinContext supportsLeaveContext](v16, "supportsLeaveContext")}];
    [v24 setSupportsRequestToScreenShare:{-[CSDMessagingConversationParticipantDidJoinContext supportsRequestToScreenShare](v16, "supportsRequestToScreenShare")}];
    [v24 setPersonaAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isPersonaAvailable](v16, "isPersonaAvailable")}];
    [v24 setGftDowngradeToOneToOneAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isGFTDowngradeToOneToOneAvailable](v16, "isGFTDowngradeToOneToOneAvailable")}];
    [v24 setUPlusOneScreenShareAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isUPlusOneScreenSharingAvailable](v16, "isUPlusOneScreenSharingAvailable")}];
    [v24 setUPlusOneAVLessAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isUPlusOneAVLessAvailable](v16, "isUPlusOneAVLessAvailable")}];
    [v24 setUPlusNDowngradeAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isUPlusNDowngradeAvailable](v16, "isUPlusNDowngradeAvailable")}];
    [v24 setSharePlayProtocolVersion:{-[CSDMessagingConversationParticipantDidJoinContext sharePlayProtocolVersion](v16, "sharePlayProtocolVersion")}];
    [v24 setVisionFeatureVersion:{-[CSDMessagingConversationParticipantDidJoinContext visionFeatureVersion](v16, "visionFeatureVersion")}];
    [v24 setVisionCallEstablishmentVersion:{-[CSDMessagingConversationParticipantDidJoinContext visionCallEstablishmentVersion](v16, "visionCallEstablishmentVersion")}];
    [v24 setUPlusOneVisionToVisionAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isUPlusOneVisionToVisionAvailable](v16, "isUPlusOneVisionToVisionAvailable")}];
    [v24 setPhotosSharePlayAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isPhotosSharePlayAvailable](v16, "isPhotosSharePlayAvailable")}];
    [v24 setTranslationAvailable:{-[CSDMessagingConversationParticipantDidJoinContext isTranslationAvailable](v16, "isTranslationAvailable")}];
    [v24 setNearbyFeatureVersion:{-[CSDMessagingConversationParticipantDidJoinContext nearbyFeatureVersion](v16, "nearbyFeatureVersion")}];
    [v20 setCapabilities:v24];
    [v20 setLightweight:[(CSDMessagingConversationParticipantDidJoinContext *)v16 isLightweight]];
    v25 = [v10 participantDestinationID];
    [v20 setActiveIDSDestination:v25];

    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasVideoEnabled])
    {
      v26 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 videoEnabled];
    }

    else
    {
      v26 = 1;
    }

    [v20 setVideoEnabled:v26];
    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasParticipantAssociation])
    {
      v27 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 participantAssociation];
      v28 = [v27 tuConversationParticipantAssociation];
      [v20 setAssociation:v28];
    }

    else
    {
      [v20 setAssociation:0];
    }

    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasParticipantCluster])
    {
      v29 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 participantCluster];
      v30 = [v29 tuConversationParticipantCluster];
      [v20 setCluster:v30];
    }

    else
    {
      [v20 setCluster:0];
    }

    v48 = v12;
    v47 = v6;
    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasIsNearbySharePlay])
    {
      v31 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 isNearbySharePlay];
    }

    else
    {
      v31 = 0;
    }

    [v20 setIsNearbySharePlay:v31];
    v32 = +[CSDConversationProviderManager sharedInstance];
    v33 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 providerIdentifier];
    v34 = [v32 tuConversationProviderForIdentifier:v33];

    if ([v20 isVideoEnabled])
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    [v20 setAudioVideoMode:v35];
    v36 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 message];
    v37 = [v36 hasAvMode];

    if (v37)
    {
      v38 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 message];
      -[NSObject setAudioVideoMode:](v20, "setAudioVideoMode:", [v38 avMode]);
    }

    v39 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 message];
    -[NSObject setPresentationMode:](v20, "setPresentationMode:", [v39 resolvedPresentationMode]);

    [v20 setSpatialPersonaEnabled:[(CSDMessagingConversationParticipantDidJoinContext *)v16 isSpatialPersonaEnabled]];
    v40 = [(CSDConversationManager *)self featureFlags];
    v41 = [v40 groupFacetimeAsAServiceEnabled];

    if (v41 && v34)
    {
      v42 = +[CSDConversationProviderManager sharedInstance];
      v43 = [v42 serviceForProvider:v34];
    }

    else
    {
      v43 = [(CSDConversationManager *)self service];
    }

    v44 = [v43 allAliases];
    v45 = [v11 value];
    -[NSObject setLocalAccountHandle:](v20, "setLocalAccountHandle:", [v44 containsObject:v45]);

    v46 = [NSSet setWithObject:v20];
    [(CSDConversationManager *)self handleParticipants:v46 joinedConversationWithUpdate:v10 joinContext:v16 fromHandle:v11 isFromPendingMessage:v47];

    v12 = v48;
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_100478880();
  }
}

- (id)pushTokenForSelf
{
  if (TUSimulatedModeEnabled())
  {
    v2 = +[NSData data];
  }

  else
  {
    v3 = +[IDSPushHandler sharedInstance];
    v2 = [v3 pushToken];
  }

  return v2;
}

- (void)processUpdateMembersUpdate:(id)a3 fromHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 clientContextData];

  if (v9)
  {
    v10 = [CSDMessagingConversationParticipantDidJoinContext alloc];
    v11 = [v6 clientContextData];
    v12 = [(CSDMessagingConversationParticipantDidJoinContext *)v10 initWithData:v11];

    v13 = [v12 data];
    v14 = [v13 length];

    v15 = sub_100004778();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received participant join context", buf, 2u);
      }

      v17 = [v12 message];
      v18 = [v17 activeParticipants];
      v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v18 count]);

      v19 = [v12 message];
      v20 = [v19 activeParticipants];
      v21 = [v12 message];
      v22 = [v21 activeLightweightParticipants];
      v23 = [v20 arrayByAddingObjectsFromArray:v22];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v31;
        do
        {
          v28 = 0;
          do
          {
            if (*v31 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = [*(*(&v30 + 1) + 8 * v28) csdConversationParticipant];
            [v16 addObject:v29];

            v28 = v28 + 1;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v26);
      }

      [(CSDConversationManager *)self handleParticipants:v16 joinedConversationWithUpdate:v6 joinContext:v12 fromHandle:v7 isFromPendingMessage:0];
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1004788BC();
    }
  }

  else
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] processUpdateMembersUpdate: Empty updateMembersUpdate.clientContextData", buf, 2u);
    }
  }
}

- (void)processParticipantDataUpdate:(id)a3 fromHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 groupUUID];

  if (!v9)
  {
    v13 = sub_100004778();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v21 = "[WARN] processParticipantDataUpdate: Empty participantDataUpdate.groupUUID";
LABEL_13:
    v22 = v13;
    v23 = 2;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    goto LABEL_41;
  }

  v10 = [v6 participantDestinationID];
  v11 = [v10 length];

  if (!v11)
  {
    v13 = sub_100004778();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v21 = "[WARN] processParticipantDataUpdate: Empty participantDataUpdate.participantDestinationID";
    goto LABEL_13;
  }

  if ([v6 participantIdentifier])
  {
    v12 = [v6 groupUUID];
    v13 = [(CSDConversationManager *)self conversationWithGroupUUID:v12];

    if (!v13)
    {
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v6 groupUUID];
        v25 = [(CSDConversationManager *)self mutableConversationsByUUID];
        v26 = [v25 allKeys];
        *buf = 138412546;
        v53 = v24;
        v54 = 2112;
        v55 = v26;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with groupUUID %@. All conversation UUIDs: %@", buf, 0x16u);
      }

      goto LABEL_40;
    }

    v14 = [v6 clientContextData];
    v15 = [v14 length];

    v46 = v7;
    if (v15)
    {
      v16 = [v6 clientContextData];
      v17 = [v6 participantData];
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v53 = v16;
        v54 = 2112;
        v55 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "processParticipantDataUpdate: contextData: %@, participantData: %@", buf, 0x16u);
      }

      v19 = [[CSDMessagingConversationParticipant alloc] initWithData:v16];
      [(CSDMessagingConversationParticipant *)v19 setAvcData:v17];
      v20 = [(CSDMessagingConversationParticipant *)v19 csdConversationParticipant];
    }

    else
    {
      v27 = [CSDConversationParticipant alloc];
      v28 = [v6 participantIdentifier];
      v29 = [v6 participantData];
      v20 = [(CSDConversationParticipant *)v27 initWithIdentifier:v28 handle:v7 avcData:v29];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v30 = [v13 activeRemoteParticipants];
    v31 = [v30 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v48;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v48 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v47 + 1) + 8 * i);
          v36 = [v35 identifier];
          if (v36 == [v6 participantIdentifier])
          {
            v37 = [v35 capabilities];
            [v20 setCapabilities:v37];

            -[NSObject setPresentationMode:](v20, "setPresentationMode:", [v35 presentationMode]);
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v32);
    }

    v38 = [(CSDConversationManager *)self featureFlags];
    if ([v38 groupFacetimeAsAServiceEnabled])
    {
      v39 = [v13 provider];

      v7 = v46;
      if (v39)
      {
        v40 = +[CSDConversationProviderManager sharedInstance];
        v41 = [v13 provider];
        v42 = [v40 serviceForProvider:v41];

LABEL_34:
        [v13 updateConversationParticipantToHaveMatchingSiriDisplayName:v20];
        v43 = [v42 allAliases];
        v44 = [v7 value];
        -[NSObject setLocalAccountHandle:](v20, "setLocalAccountHandle:", [v43 containsObject:v44]);

        if (v20)
        {
          [v13 addActiveParticipant:v20];
        }

        else
        {
          v45 = sub_100004778();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[WARN] processParticipantDataUpdate: Empty participant", buf, 2u);
          }
        }

LABEL_40:
        goto LABEL_41;
      }
    }

    else
    {

      v7 = v46;
    }

    v42 = [(CSDConversationManager *)self service];
    goto LABEL_34;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v53 = [v6 participantIdentifier];
    v21 = "[WARN] processParticipantDataUpdate: Invalid participantDataUpdate.participantIdentifier %llu";
    v22 = v13;
    v23 = 12;
    goto LABEL_14;
  }

LABEL_41:
}

- (void)handleParticipants:(id)a3 joinedConversationWithUpdate:(id)a4 joinContext:(id)a5 fromHandle:(id)a6 isFromPendingMessage:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v379 = a6;
  v15 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v15);

  v16 = [v14 providerIdentifier];
  v17 = [TUConversationProvider providerForIdentifier:v16];

  v18 = [(CSDConversationManager *)self featureFlags];
  LODWORD(v16) = [v18 groupFacetimeAsAServiceEnabled];

  if (v16)
  {
    v19 = +[CSDConversationProviderManager sharedInstance];
    v20 = [v14 providerIdentifier];
    v21 = [v19 tuConversationProviderForIdentifier:v20];

    v17 = v21;
  }

  if (v14)
  {
    v22 = [v14 message];
    v23 = [v13 groupUUID];
    v24 = v23;
    if (!v23)
    {
      v53 = sub_100004778();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[WARN] handleParticipants:joinedConversationWithUpdate:joinContext: Empty participantUpdate.groupUUID", buf, 2u);
      }

      goto LABEL_413;
    }

    v356 = v12;
    v369 = v7;
    v374 = self;
    v360 = v23;
    v25 = sub_10022ACCC();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1004788F8();
    }

    v357 = [v22 tuConversationLink];
    v26 = [v14 tuConversationMembers];
    v367 = [v26 mutableCopy];

    v27 = [v14 tuLightweightMembers];
    v365 = [v27 mutableCopy];

    [v22 addedMembers];
    v29 = v28 = v22;
    v30 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v29 count]);

    v428 = 0u;
    v427 = 0u;
    v426 = 0u;
    v425 = 0u;
    v362 = v28;
    v31 = [v28 addedMembers];
    v32 = [v31 countByEnumeratingWithState:&v425 objects:v448 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v426;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v426 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [*(*(&v425 + 1) + 8 * i) tuConversationMember];
          [(__CFString *)v30 addObject:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v425 objects:v448 count:16];
      }

      while (v33);
    }

    if ([(__CFString *)v30 count])
    {
      [v367 unionSet:v30];
    }

    v368 = v17;
    v361 = v14;
    v37 = sub_100004778();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [(__CFString *)v30 count];
      v39 = [v367 count];
      v40 = @"NO";
      *buf = 134218754;
      *v437 = v38;
      *&v437[8] = 2048;
      if (v369)
      {
        v40 = @"YES";
      }

      *v438 = v39;
      *&v438[8] = 2112;
      v439 = v30;
      v440 = 2112;
      *v441 = v40;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "addedMembers count: %lu, members count: %lu, addedMembers: %@, isFromPendingMessage: %@", buf, 0x2Au);
    }

    v41 = [v362 lightweightMembers];
    v42 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v41 count]);

    v424 = 0u;
    v423 = 0u;
    v422 = 0u;
    v421 = 0u;
    v43 = [v362 lightweightMembers];
    v44 = [v43 countByEnumeratingWithState:&v421 objects:v447 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v422;
      do
      {
        for (j = 0; j != v45; j = j + 1)
        {
          if (*v422 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = [*(*(&v421 + 1) + 8 * j) tuConversationMember];
          v49 = [v48 lightweightPrimary];
          v50 = v49;
          if (v49 && [v49 isEquivalentToHandle:v379])
          {
            [v48 setValidationSource:1];
          }

          [v42 addObject:v48];
        }

        v45 = [v43 countByEnumeratingWithState:&v421 objects:v447 count:16];
      }

      while (v45);
    }

    [v365 unionSet:v42];
    v14 = v361;
    v366 = v13;
    if ([v361 hasMessagesGroupUUIDString])
    {
      v51 = [NSUUID alloc];
      v52 = [v361 messagesGroupUUIDString];
      v355 = [v51 initWithUUIDString:v52];
    }

    else
    {
      v355 = 0;
    }

    v354 = [v361 messagesGroupName];
    v54 = +[NSMutableSet set];
    v55 = [(CSDConversationManager *)v374 serverBag];
    if ([v55 isParticipantIDToURIIncludedInPush])
    {
    }

    else
    {
      v56 = [(CSDConversationManager *)v374 featureFlags];
      v57 = [v56 participantIDToURIRemovedEnabled];

      if (v57)
      {
        goto LABEL_48;
      }
    }

    v420 = 0u;
    v419 = 0u;
    v417 = 0u;
    v418 = 0u;
    v58 = [v366 participantIDs];
    v59 = [v58 allValues];

    v60 = [v59 countByEnumeratingWithState:&v417 objects:v446 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v418;
      do
      {
        for (k = 0; k != v61; k = k + 1)
        {
          if (*v418 != v62)
          {
            objc_enumerationMutation(v59);
          }

          [v54 addObjectsFromArray:*(*(&v417 + 1) + 8 * k)];
        }

        v61 = [v59 countByEnumeratingWithState:&v417 objects:v446 count:16];
      }

      while (v61);
    }

LABEL_48:
    v64 = v367;
    if (![v367 count])
    {
      v373 = sub_100004778();
      if (os_log_type_enabled(v373, OS_LOG_TYPE_ERROR))
      {
        sub_100478A14();
      }

      goto LABEL_96;
    }

    v65 = [(CSDConversationManager *)v374 activeLocalHandlesForProvider];
    v66 = (v65)[2](v65, v368);

    v373 = v66;
    v359 = [(CSDConversationManager *)v374 localMemberForProvider:v368 fromHandle:v379 members:v367 lightweightMembers:v365 activeLocalHandles:v66];
    v413 = 0u;
    v414 = 0u;
    v415 = 0u;
    v416 = 0u;
    v67 = v30;
    v68 = [(__CFString *)v67 countByEnumeratingWithState:&v413 objects:v445 count:16];
    v375 = v67;
    if (v68)
    {
      v69 = v68;
      v70 = *v414;
      while (2)
      {
        for (m = 0; m != v69; m = m + 1)
        {
          if (*v414 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = [*(*(&v413 + 1) + 8 * m) handle];
          v73 = [v373 containsObject:v72];

          if (v73)
          {
            v74 = v67;
            v81 = 1;
            goto LABEL_72;
          }
        }

        v69 = [(__CFString *)v67 countByEnumeratingWithState:&v413 objects:v445 count:16];
        if (v69)
        {
          continue;
        }

        break;
      }
    }

    v411 = 0u;
    v412 = 0u;
    v409 = 0u;
    v410 = 0u;
    v74 = v42;
    v75 = [(__CFString *)v74 countByEnumeratingWithState:&v409 objects:v444 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v410;
      while (2)
      {
        for (n = 0; n != v76; n = n + 1)
        {
          if (*v410 != v77)
          {
            objc_enumerationMutation(v74);
          }

          v79 = [*(*(&v409 + 1) + 8 * n) handle];
          v80 = [(CSDConversationManager *)v374 isValidLocalHandle:v79 activeLocalHandles:v373 provider:v368];

          if (v80)
          {
            v81 = 1;
            goto LABEL_70;
          }
        }

        v76 = [(__CFString *)v74 countByEnumeratingWithState:&v409 objects:v444 count:16];
        if (v76)
        {
          continue;
        }

        break;
      }

      v81 = 0;
LABEL_70:
      v14 = v361;
    }

    else
    {
      v81 = 0;
    }

LABEL_72:

    v82 = sub_10022ACCC();
    v83 = v374;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      *v437 = v367;
      *&v437[8] = 2112;
      *v438 = v365;
      *&v438[8] = 2112;
      v439 = v375;
      v440 = 2112;
      *v441 = v42;
      *&v441[8] = 2112;
      *&v441[10] = v373;
      v442 = 2112;
      v443 = v359;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "members: %@\nlightweightMembers: %@\naddedMembers: %@\naddedLightweightMembers: %@\nactiveLocalHandles: %@\nreceivedLocalMember: %@", buf, 0x3Eu);
    }

    LODWORD(v363) = [(CSDConversationManager *)v374 isValidLocalHandle:v379 activeLocalHandles:v373 provider:v368];
    v84 = sub_100004778();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v437 = v359;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Received local member: %@", buf, 0xCu);
    }

    [v14 otherInvitedHandles];
    v86 = v85 = v14;
    v87 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v86 count]);

    v407 = 0u;
    v408 = 0u;
    v405 = 0u;
    v406 = 0u;
    v88 = [v85 otherInvitedTUHandles];
    v89 = [v88 countByEnumeratingWithState:&v405 objects:v435 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v406;
      do
      {
        for (ii = 0; ii != v90; ii = ii + 1)
        {
          if (*v406 != v91)
          {
            objc_enumerationMutation(v88);
          }

          [v87 addObject:*(*(&v405 + 1) + 8 * ii)];
        }

        v90 = [v88 countByEnumeratingWithState:&v405 objects:v435 count:16];
      }

      while (v90);
    }

    v64 = v367;
    v93 = [v367 mutableCopy];
    v94 = [(CSDConversationManager *)v374 featureFlags];
    v358 = v93;
    if ([v94 oneToOneFaceTimeMyselfEnabled] && objc_msgSend(v93, "count") == 1)
    {
      v95 = [v93 anyObject];

      if (v359 == v95)
      {
        v96 = sub_100004778();
        v14 = v361;
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v437 = v358;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Do not remove local handle from membership list because it's FaceTime myself, %@", buf, 0xCu);
        }

        v97 = v358;
        goto LABEL_92;
      }
    }

    else
    {
    }

    v14 = v361;
    v97 = v358;
    if (v359)
    {
      [v358 removeObject:v359];
    }

LABEL_92:
    v98 = [v97 count];
    if (v98 > +[TUConversationManager maximumNumberOfInvitedMembers])
    {
      v99 = sub_100004778();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = [v358 count];
        v101 = +[TUConversationManager maximumNumberOfInvitedMembers];
        *buf = 138412802;
        *v437 = v360;
        *&v437[8] = 2048;
        *v438 = v100;
        v64 = v367;
        *&v438[8] = 2048;
        v439 = v101;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping conversation with groupUUID %@ since it has %tu remote members which is greater than the maximum allowed of %tu.", buf, 0x20u);
      }

LABEL_96:
      v22 = v362;
LABEL_412:

      v13 = v366;
      v17 = v368;
      v24 = v360;
      v12 = v356;
      v53 = v357;
LABEL_413:

      goto LABEL_414;
    }

    v350 = v81;
    if ([v14 hasVideo])
    {
      v102 = [v14 video];
    }

    else
    {
      v102 = 1;
    }

    v22 = v362;
    v103 = [(CSDConversationManager *)v374 conversationWithGroupUUID:v360 orMemberIdentifiers:v54 orRemoteMembers:v358 andLink:v357 andVideo:v102];
    v104 = [v14 collaborationIdentifier];

    if (v104)
    {
      v105 = [v14 collaborationIdentifier];
      [v103 addHighlightIdentifier:v105];
    }

    v353 = v103;
    if (v103 && ([v103 containsMemberWithHandle:v379] & 1) == 0)
    {
      v118 = sub_100004778();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v437 = v379;
        *&v437[8] = 2112;
        v119 = v103;
        *v438 = v103;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "[WARN] We received a message from %@, which was in the remote members list given in the message, but not in the existing conversation UUID: %@. Dropping message.", buf, 0x16u);
LABEL_411:

        goto LABEL_412;
      }

LABEL_172:
      v119 = v353;
      goto LABEL_411;
    }

    v106 = sub_100004778();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v437 = v360;
      *&v437[8] = 2112;
      *v438 = v103;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "groupUUID: %@, find existing conversation: %@", buf, 0x16u);
    }

    v352 = v87;
    if (!v103)
    {
      v120 = 0;
      v121 = 1;
LABEL_165:
      v353 = v120;
      if ([(CSDConversationManager *)v83 shouldAcceptMembershipUpdateFromHandle:v379 joinContext:v14 participantUpdate:v366 existingConversation:v120])
      {
        v346 = v121;
        if ([v14 hasVideo])
        {
          v156 = [v14 video];
          v157 = v156 ^ 1;
          if (v156)
          {
            v158 = 2;
          }

          else
          {
            v158 = 1;
          }
        }

        else
        {
          v157 = 0;
          v158 = 2;
        }

        if ([v22 hasAvMode])
        {
          v158 = [v22 avMode];
        }

        v343 = v158;
        v159 = +[IDSCurrentServerTime sharedInstance];
        v160 = [v159 currentServerTimeDate];

        obja = v160;
        v161 = [NSDate dateWithTimeInterval:v160 sinceDate:-30.0];
        v162 = [v366 serverDate];
        v344 = [v161 compare:v162];

        v163 = sub_100004778();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
        {
          v164 = [v366 serverDate];
          v165 = v164;
          v166 = @"NO";
          *buf = 138412802;
          *v437 = obja;
          *&v437[8] = 2112;
          if (v344 == 1)
          {
            v166 = @"YES";
          }

          *v438 = v164;
          *&v438[8] = 2112;
          v439 = v166;
          _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "currentServerTime: %@, participantUpdate.serverDate: %@, isOldMessage: %@", buf, 0x20u);
        }

        if (!v346)
        {
          v176 = [v353 groupUUID];
          v177 = [v176 isEqual:v360];

          v14 = v361;
          if (v177)
          {
            v178 = v353;
            if ([(__CFString *)v375 count])
            {
              [v178 addRemoteMembers:v375 otherInvitedHandles:v87 triggeredLocally:0];
            }

            v179 = &_s10Foundation3URLVMa_ptr_0;
            if ([v42 count])
            {
              [v178 addRemoteMembers:v42 otherInvitedHandles:v87 triggeredLocally:0];
            }

LABEL_274:
            v228 = [v178 provider];
            v378 = v178;
            if (v228)
            {
              v229 = [v178 provider];
              v230 = v179[190];
              v231 = v229;
              v178 = [v230 unknownProvider];
              if (([(__CFString *)v231 isEqual:v178]& 1) == 0)
              {

                goto LABEL_284;
              }

              v363 = v231;
            }

            v232 = [v14 providerIdentifier];
            v233 = [v232 length];

            if (v228)
            {
            }

            v14 = v361;
            if (!v233)
            {
LABEL_285:
              if (v378)
              {
                v238 = [(CSDConversationManager *)v83 featureFlags];
                if ([v238 nearbyFaceTimeEnabled])
                {
                  v239 = [v22 hasIsNearbySession];

                  v240 = v358;
                  v241 = v350;
                  if (v239)
                  {
                    v242 = [v22 isNearbySession];
                    v243 = [NSSet setWithObject:IDSRegistrationPropertySupportsNearbyFaceTime];
                    if (v242)
                    {
                      [v378 addRequiredCapabilities:v243 requiredLackOfCapabilities:0];
                    }

                    else
                    {
                      [v378 removeRequiredCapabilities:v243 requiredLackOfCapabilities:0];
                    }

                    if (v346)
                    {
                      if ([v22 isNearbySession])
                      {
                        [v378 startTimeOutForNearbySession];
                      }
                    }

                    else
                    {
                      [(CSDConversationManager *)v83 conversationChanged:v353];
                    }
                  }
                }

                else
                {

                  v240 = v358;
                  v241 = v350;
                }

                v244 = sub_100004778();
                if (os_log_type_enabled(v244, OS_LOG_TYPE_DEFAULT))
                {
                  if ([v378 isFromStorage])
                  {
                    v245 = @"YES";
                  }

                  else
                  {
                    v245 = @"NO";
                  }

                  v246 = [v366 fromServer];
                  v247 = @"YES";
                  if (!v246)
                  {
                    v247 = @"NO";
                  }

                  *buf = 138412546;
                  *v437 = v245;
                  *&v437[8] = 2112;
                  *v438 = v247;
                  _os_log_impl(&_mh_execute_header, v244, OS_LOG_TYPE_DEFAULT, "isFromStorage: %@, participantUpdate.fromServer: %@", buf, 0x16u);
                }

                if ([v378 isFromStorage] && (objc_msgSend(v366, "fromServer") & 1) == 0)
                {
                  v248 = sub_100004778();
                  if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
                  {
                    v249 = [v378 UUID];
                    *buf = 138412290;
                    *v437 = v249;
                    _os_log_impl(&_mh_execute_header, v248, OS_LOG_TYPE_DEFAULT, "Activating cached conversation with UUID: %@ since participants are joining.", buf, 0xCu);
                  }

                  [v378 setFromStorage:0];
                  v250 = [v378 messagesGroupUUID];
                  v251 = [v250 isEqual:v355];

                  if (v251)
                  {
                    v252 = sub_100004778();
                    if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
                    {
                      v253 = [v378 UUID];
                      *buf = 138412290;
                      *v437 = v253;
                      _os_log_impl(&_mh_execute_header, v252, OS_LOG_TYPE_DEFAULT, "Updating remoteMembers for conversation with UUID: %@", buf, 0xCu);
                    }

                    v254 = [v378 remoteMembers];
                    v255 = [v254 mutableCopy];

                    [v255 unionSet:v240];
                    v256 = [v378 localMember];
                    [v255 removeObject:v256];

                    v257 = +[NSSet set];
                    [v378 addRemoteMembers:v255 otherInvitedHandles:v257 triggeredLocally:0];
                  }
                }

                v258 = [(CSDConversationManager *)v83 serverBag];
                if ([v258 isParticipantIDToURIIncludedInPush])
                {

                  v259 = v378;
                }

                else
                {
                  v260 = [(CSDConversationManager *)v83 featureFlags];
                  v261 = [v260 participantIDToURIRemovedEnabled];

                  v259 = v378;
                  if (v261)
                  {
                    goto LABEL_311;
                  }
                }

                [v259 setMemberIdentifiers:v54];
LABEL_311:
                v262 = [(CSDConversationManager *)v83 featureFlags];
                if ([v262 shouldRingForIncomingCallEnabled])
                {
                  v263 = [(CSDConversationManager *)v83 serverBag];
                  v264 = [v263 shouldRingForIncomingCallEnabled];

                  if (v264)
                  {
                    if (![v366 fromServer] || v344 != 1)
                    {
                      goto LABEL_320;
                    }

                    goto LABEL_319;
                  }
                }

                else
                {
                }

                if (![v366 fromServer])
                {
                  goto LABEL_320;
                }

                v265 = [NSDate dateWithTimeIntervalSinceNow:-30.0];
                v266 = [v366 serverDate];
                v267 = [v265 compare:v266];

                if (v267 != 1)
                {
                  goto LABEL_320;
                }

LABEL_319:
                if ([v259 state] != 3)
                {
                  v268 = sub_100004778();
                  if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v437 = v259;
                    _os_log_impl(&_mh_execute_header, v268, OS_LOG_TYPE_DEFAULT, "Not ringing for cached conversation since message is from server storage and is older than 30 seconds. Conversation: %@", buf, 0xCu);
                  }

                  v273 = 1;
LABEL_323:

                  [v259 setFromStorage:v273];
                  v274 = [(CSDConversationManager *)v83 featureFlags];
                  if ([v274 shouldRingForIncomingCallEnabled])
                  {
                    v275 = [(CSDConversationManager *)v83 serverBag];
                    v276 = [v275 shouldRingForIncomingCallEnabled];

                    if (v276)
                    {
                      v277 = [(CSDConversationManager *)v83 _shouldRingForIncomingCallWithHandle:v379 conversation:v259 isFromPendingMessage:v369 isOldMessage:v344 == 1 message:v22];
                      goto LABEL_334;
                    }
                  }

                  else
                  {
                  }

                  v278 = [v259 provider];
                  if ([(CSDConversationManager *)v83 isValidLocalHandle:v379 forProvider:v278])
                  {
                    v277 = 0;
                  }

                  else
                  {
                    v279 = [(CSDConversationManager *)v83 invitationResolver];
                    v280 = [v259 tuConversation];
                    v345 = [v259 localMember];
                    v281 = [v345 handle];
                    if ([v279 shouldShowInvitationRingingUIForConversation:v280 handle:v281])
                    {
                      v370 = [v259 isFromStorage] ^ 1;
                    }

                    else
                    {
                      v370 = 0;
                    }

                    v241 = v350;
                    v277 = v370;
                  }

LABEL_334:
                  v282 = [v22 isLetMeInApproved]^ 1;
                  if ([v366 participantUpdateType] != 1 || (objc_msgSend(v259, "isLocallyCreated") & 1) != 0 || objc_msgSend(v259, "state"))
                  {
                    v371 = 0;
                  }

                  else
                  {
                    v371 = v346 & ([v259 hasJoined] ^ 1);
                  }

                  v283 = v282 & v277;
                  v284 = -[CSDConversationManager _shouldNotifyDelegatesOfMessage:localHandleAdded:isFromStorage:](v83, "_shouldNotifyDelegatesOfMessage:localHandleAdded:isFromStorage:", v22, v241, [v259 isFromStorage]);
                  v285 = sub_100004778();
                  if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
                  {
                    if (v284)
                    {
                      v286 = @"YES";
                    }

                    else
                    {
                      v286 = @"NO";
                    }

                    if (v371)
                    {
                      v287 = @"YES";
                    }

                    else
                    {
                      v287 = @"NO";
                    }

                    v347 = v287;
                    if (v283)
                    {
                      v288 = @"YES";
                    }

                    else
                    {
                      v288 = @"NO";
                    }

                    v351 = v288;
                    v364 = v283;
                    v289 = [v362 type];
                    v290 = [v378 isFromStorage];
                    *buf = 138413314;
                    if (v290)
                    {
                      v291 = @"YES";
                    }

                    else
                    {
                      v291 = @"NO";
                    }

                    *v437 = v286;
                    v83 = v374;
                    v259 = v378;
                    *&v437[8] = 2112;
                    *v438 = v347;
                    *&v438[8] = 2112;
                    v439 = v351;
                    v440 = 1024;
                    *v441 = v289;
                    v283 = v364;
                    *&v441[4] = 2112;
                    *&v441[6] = v291;
                    _os_log_impl(&_mh_execute_header, v285, OS_LOG_TYPE_DEFAULT, "shouldNotifyDelegatesOfMessage: %@, isJoinUpdateForNewConverstion: %@, shouldNotifyDelegatesOfNewConversation: %@, message.type: %d, isFromStorage: %@", buf, 0x30u);
                  }

                  if (v284)
                  {
                    [(CSDConversationManager *)v83 notifyDelegatesOfMessage:v362 fromHandle:v379 forConversation:v259 withUpdate:v366 shouldRing:v277];
                    v292 = v356;
                  }

                  else
                  {
                    v292 = v356;
                    if ((v371 & v283) == 1)
                    {
                      [(CSDConversationManager *)v83 notifyDelegatesOfNewConversation:v259 fromHandle:v379];
                    }
                  }

                  v293 = [(CSDConversationManager *)v83 featureFlags];
                  if ([v293 sharePlayInCallsEnabled])
                  {
                  }

                  else
                  {
                    v294 = [(CSDConversationManager *)v83 featureFlags];
                    v295 = [v294 audioCallTranslationEnabled];

                    if (!v295)
                    {
                      goto LABEL_368;
                    }
                  }

                  v296 = [v259 remoteMembers];
                  if ([v296 count] == 1 && objc_msgSend(v361, "hasVideo") && (objc_msgSend(v361, "video") & 1) == 0 && objc_msgSend(v259, "isVideo"))
                  {

                    if (v343)
                    {
                      v297 = sub_100004778();
                      if (os_log_type_enabled(v297, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v297, OS_LOG_TYPE_DEFAULT, "Downgrading U+1 call to audio because remote party joined as audio-only (remote members count is 1, join context had video=NO, conversation had video=YES, and not AVLess)", buf, 2u);
                      }

                      [v259 setVideo:0];
                    }
                  }

                  else
                  {
                  }

LABEL_368:
                  v386 = 0u;
                  v387 = 0u;
                  v384 = 0u;
                  v385 = 0u;
                  v372 = v292;
                  v298 = [v372 countByEnumeratingWithState:&v384 objects:v430 count:16];
                  if (v298)
                  {
                    v299 = v298;
                    v300 = *v385;
                    do
                    {
                      for (jj = 0; jj != v299; jj = jj + 1)
                      {
                        if (*v385 != v300)
                        {
                          objc_enumerationMutation(v372);
                        }

                        v302 = *(*(&v384 + 1) + 8 * jj);
                        v303 = [v259 localParticipantIdentifier];
                        if (v303 != [v302 identifier])
                        {
                          [v259 updateConversationParticipantToHaveMatchingSiriDisplayName:v302];
                          [(CSDConversationManager *)v83 removePendingMemberMatchingActiveParticipant:v302 conversation:v259];
                          v304 = [v302 handle];
                          v305 = [v259 containsMemberWithHandle:v304];

                          if (v305)
                          {
                            [v259 addActiveParticipant:v302];
                          }

                          else
                          {
                            v306 = sub_100004778();
                            if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                            {
                              v307 = [v259 remoteMembers];
                              v308 = [v259 lightweightMembers];
                              *buf = 138412802;
                              *v437 = v302;
                              *&v437[8] = 2112;
                              *v438 = v307;
                              *&v438[8] = 2112;
                              v439 = v308;
                              _os_log_impl(&_mh_execute_header, v306, OS_LOG_TYPE_DEFAULT, "[WARN] activeParticipant: %@ is not in the validConversation: %@, lightweight members: %@", buf, 0x20u);

                              v259 = v378;
                            }
                          }

                          v83 = v374;
                          [(CSDConversationManager *)v374 prepareAdditionOfActiveParticipant:v302 toInvitedMembersForLinkOnConversation:v259];
                        }
                      }

                      v299 = [v372 countByEnumeratingWithState:&v384 objects:v430 count:16];
                    }

                    while (v299);
                  }

                  v382 = 0u;
                  v383 = 0u;
                  v380 = 0u;
                  v381 = 0u;
                  v309 = [v362 activitySessions];
                  v310 = [v309 countByEnumeratingWithState:&v380 objects:v429 count:16];
                  if (v310)
                  {
                    v311 = v310;
                    v312 = *v381;
                    do
                    {
                      for (kk = 0; kk != v311; kk = kk + 1)
                      {
                        if (*v381 != v312)
                        {
                          objc_enumerationMutation(v309);
                        }

                        v314 = [(CSDConversationManager *)v83 createActivitySession:*(*(&v380 + 1) + 8 * kk) onConversation:v378 fromHandle:v379];
                      }

                      v311 = [v309 countByEnumeratingWithState:&v380 objects:v429 count:16];
                    }

                    while (v311);
                  }

                  v22 = v362;
                  v315 = [v362 stagedActivitySession];

                  if (v315)
                  {
                    v316 = [v362 stagedActivitySession];
                    v317 = [v316 tuConversationActivitySession];
                    v318 = [v378 setStagedActivitySessionForActivitySession:v317];

                    if ((v318 & 1) == 0)
                    {
                      v319 = sub_100004778();
                      if (os_log_type_enabled(v319, OS_LOG_TYPE_DEFAULT))
                      {
                        v320 = [v362 stagedActivitySession];
                        v321 = [v378 UUID];
                        *buf = 138412546;
                        *v437 = v320;
                        *&v437[8] = 2112;
                        *v438 = v321;
                        _os_log_impl(&_mh_execute_header, v319, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't set staged activity session %@ on conversation UUID %@", buf, 0x16u);
                      }
                    }
                  }

                  v322 = [v362 highlightIdentifier];
                  v323 = v378;
                  if (!v322)
                  {
                    goto LABEL_400;
                  }

                  v324 = [v378 highlightIdentifiers];
                  v325 = [v324 anyObject];
                  if ([v322 isEqualToString:v325])
                  {
                    v326 = [v378 highlightIdentifiers];
                    v327 = [v326 count];

                    v323 = v378;
                    if (v327)
                    {
                      goto LABEL_400;
                    }
                  }

                  else
                  {
                  }

                  [v323 addHighlightIdentifier:v322];
LABEL_400:
                  v328 = [v323 remoteMembers];
                  v14 = v361;
                  if ([v328 count] == 1 && objc_msgSend(v361, "hasVideo") && (objc_msgSend(v361, "video") & 1) == 0 && objc_msgSend(v323, "isVideo"))
                  {

                    v329 = v374;
                    v119 = v353;
                    if (v343)
                    {
                      v330 = sub_100004778();
                      if (os_log_type_enabled(v330, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v330, OS_LOG_TYPE_DEFAULT, "Downgrading U+1 call to audio because remote party joined as audio-only (remote members count is 1, join context had video=NO, conversation had video=YES, and not AVLess)", buf, 2u);
                      }

                      [v378 setVideo:0];
                    }
                  }

                  else
                  {

                    v329 = v374;
                    v119 = v353;
                  }

                  v331 = [(CSDConversationManager *)v329 pendingConversationMessageHandler];
                  [v331 retryMessagesForGroupUUID:v360];

                  v64 = v367;
                  v87 = v352;
                  goto LABEL_410;
                }

LABEL_320:
                v268 = sub_100004778();
                if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
                {
                  v269 = [v366 fromServer];
                  v270 = [NSDate dateWithTimeIntervalSinceNow:-30.0];
                  v22 = v362;
                  v271 = [v366 serverDate];
                  v272 = [v270 compare:v271];
                  *buf = 67109634;
                  *v437 = v269;
                  *&v437[4] = 1024;
                  *&v437[6] = v272 == 1;
                  *v438 = 2112;
                  *&v438[2] = v259;

                  v241 = v350;
                }

                v273 = 0;
                goto LABEL_323;
              }

LABEL_290:
              v64 = v367;
              v119 = v353;
LABEL_410:
              v118 = obja;
              goto LABEL_411;
            }

            v234 = [(CSDConversationManager *)v83 conversationProviderManager];
            v235 = [v361 providerIdentifier];
            v228 = [v234 tuConversationProviderForIdentifier:v235];

            v236 = sub_100004778();
            if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
            {
              v237 = [v378 UUID];
              *buf = 138412546;
              *v437 = v237;
              *&v437[8] = 2112;
              *v438 = v228;
              _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "Updating provider on conversation with UUID %@ with provider %@", buf, 0x16u);
            }

            [v378 setProvider:v228];
            v14 = v361;
LABEL_284:

            goto LABEL_285;
          }

          v180 = sub_100004778();
          if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v437 = v360;
            _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, "Ignoring message for group UUID %@", buf, 0xCu);
          }

          v178 = 0;
LABEL_273:
          v179 = &_s10Foundation3URLVMa_ptr_0;
          goto LABEL_274;
        }

        v14 = v361;
        if (!v359)
        {
          v181 = sub_100004778();
          if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
          {
            sub_1004789D8();
          }

          v182 = [v367 setByAddingObjectsFromSet:v42];
          v183 = sub_100004778();
          v119 = v353;
          if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v437 = v373;
            *&v437[8] = 2112;
            *v438 = v182;
            _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "activeLocalHandles: %@, remoteAndLightweightMembers: %@", buf, 0x16u);
          }

          v64 = v367;
          goto LABEL_410;
        }

        v167 = [v22 tuConversationLink];
        v168 = [v22 reportData];
        v341 = [v168 tuConversationReport];

        v376 = 0;
        v342 = v167;
        if ([(CSDConversationManager *)v83 _linksEnabled]&& v167)
        {
          v169 = [v167 pseudonym];
          v170 = [(CSDConversationManager *)v83 pendingConversationWithPseudonym:v169];

          if (v170)
          {
            if ([v170 letMeInRequestState] != 2 || (objc_msgSend(v170, "conversationGroupUUID"), v171 = objc_claimAutoreleasedReturnValue(), v172 = objc_msgSend(v171, "isEqual:", v360), v171, !v172))
            {
              v184 = sub_100004778();
              if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
              {
                v185 = [v170 conversationGroupUUID];
                if ([v185 isEqual:v360])
                {
                  v186 = @"NO";
                }

                else
                {
                  v186 = @"YES";
                }

                v187 = [v170 letMeInRequestState];
                *buf = 138412802;
                if (v187 == 2)
                {
                  v188 = @"NO";
                }

                else
                {
                  v188 = @"YES";
                }

                v87 = v352;
                *v437 = v170;
                *&v437[8] = 2114;
                *v438 = v186;
                v14 = v361;
                v22 = v362;
                *&v438[8] = 2114;
                v439 = v188;
                _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "Pending conversation %@ found, but the groupUUID does not match (%{public}@) or the let me in request state is not Requested (%{public}@)", buf, 0x20u);
              }

              goto LABEL_290;
            }

            v173 = sub_100004778();
            if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
            {
              v174 = [v170 conversationGroupUUID];
              *buf = 138412290;
              *v437 = v174;
              _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "Identified let me in approval for pending conversation group UUID: %@", buf, 0xCu);
            }

            [v170 setLetMeInRequestState:3];
            v376 = [v170 letMeInRequestState];
            v175 = [v170 temporaryGroupUUID];

            v83 = v374;
            v340 = v175;
            if (v175)
            {
LABEL_215:
              v189 = [v22 resolvedPresentationMode];
              v190 = sub_100004778();
              if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
              {
                v191 = @"YES";
                if (v157)
                {
                  v191 = @"NO";
                }

                *buf = 138543362;
                *v437 = v191;
                _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, "Determined video for new conversation should be %{public}@", buf, 0xCu);
              }

              v334 = v189;
              if ([v358 count] == 1)
              {
                v192 = [v366 members];
                v339 = [NSSet setWithArray:v192];
              }

              else
              {
                v339 = 0;
              }

              v193 = v342;
              if (v342)
              {
                v194 = [(CSDConversationManager *)v83 pendingMembershipTracker];
                v338 = [v194 retrievePendingMembersFor:v360];
              }

              else
              {
                v194 = +[NSSet set];
                v338 = v194;
              }

              v195 = [(CSDConversationManager *)v83 pickInitiatorFromActiveParticipants:v356 forUpdate:v366];
              v196 = v195;
              if (v195)
              {
                v337 = [v195 handle];

                if ([v361 hasScreenSharingRequest])
                {
                  v197 = [(CSDConversationManager *)v83 featureFlags];
                  v198 = [v197 usesModernScreenSharingFromMessages];

                  if (v198)
                  {
                    v199 = [v361 screenSharingRequest];
                    v200 = [v196 tuConversationParticipant];
                    isHandleEligibleForScreenSharingRequestsBlock = v83->_isHandleEligibleForScreenSharingRequestsBlock;
                    v388 = 0;
                    v336 = [v199 incomingScreenShareRequestFromParticipant:v200 handleEligibilityBlock:isHandleEligibleForScreenSharingRequestsBlock error:&v388];
                    v202 = v388;

                    v83 = v374;
                    goto LABEL_234;
                  }

                  v204 = sub_100004778();
                  if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "[WARN] Not acknowledging screen share request attached to join context because feature flag is not enabled", buf, 2u);
                  }
                }
              }

              else
              {
                v203 = [v366 participantDestinationID];
                v337 = TUHandleForIDSCanonicalAddress();

                [v361 hasScreenSharingRequest];
              }

              v336 = 0;
LABEL_234:
              v335 = v196;
              if ([v358 count] == 1 && !v342 && objc_msgSend(v366, "participantUpdateType") == 1 && (objc_msgSend(v366, "isInitiator") & 1) != 0)
              {
                v205 = 0;
              }

              else
              {
                v206 = sub_100004778();
                if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
                {
                  v207 = [v366 participantUpdateType];
                  if ([v366 isInitiator])
                  {
                    v208 = @"YES";
                  }

                  else
                  {
                    v208 = @"NO";
                  }

                  v209 = [v358 count];
                  *buf = 134218754;
                  *v437 = v207;
                  *&v437[8] = 2112;
                  *v438 = v208;
                  *&v438[8] = 2048;
                  v439 = v209;
                  v440 = 2112;
                  *v441 = v342;
                  _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_DEFAULT, "type: %lu, participantUpdate.isInitiator: %@, remoteMembers.count: %lu, link: %@", buf, 0x2Au);
                }

                v205 = 1;
              }

              BYTE1(v333) = v344 == 1;
              LOBYTE(v333) = v205;
              LOBYTE(v332) = [v366 fromServer];
              v210 = [(CSDConversationManager *)v83 createConversationWithUUID:v340 groupUUID:v360 messagesGroupUUID:v355 locallyCreated:v363 localMember:v359 initiator:v337 remoteMembers:v358 pendingMembers:v338 otherInvitedHandles:v87 remotePushTokens:v339 lightweightMembers:v365 activity:0 link:v342 report:v341 fromStorage:v332 avMode:v343 presentationMode:v334 provider:v368 screenSharingRequest:v336 isInitiator:v333 isOldMessage:?];
              [v210 setLetMeInRequestState:v376];
              [v210 setMessagesGroupName:v354];
              v211 = [v366 serverDate];
              [v210 setInvitationDate:v211];

              v212 = [v361 collaborationIdentifier];

              if (v212)
              {
                v213 = [v361 collaborationIdentifier];
                v214 = [NSMutableSet setWithObjects:v213, 0];

                [v210 setHighlightIdentifiers:v214];
              }

              v377 = v210;
              v22 = v362;
              if ([v361 hasVideoEnabled])
              {
                [v377 setVideoEnabled:{objc_msgSend(v361, "videoEnabled")}];
              }

              else if ([v366 participantUpdateType] == 3 && !objc_msgSend(v377, "letMeInRequestState"))
              {
                [v377 setVideoEnabled:{objc_msgSend(v377, "avMode") == 2}];
                v215 = sub_100004778();
                if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                {
                  v216 = [v377 isVideoEnabled];
                  v217 = @"NO";
                  if (v216)
                  {
                    v217 = @"YES";
                  }

                  v363 = v217;
                  v218 = [v377 avMode];
                  *buf = 138412546;
                  *v437 = v363;
                  *&v437[8] = 2048;
                  *v438 = v218;
                  _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "Setting videoEnabled to %@ because the user was added to an existing call with av mode %lu", buf, 0x16u);
                }
              }

              if ([v362 invitationPreferencesCount])
              {
                v219 = [v362 tuInvitationPreferences];
                [v377 setInvitationPreferences:v219];

                v220 = sub_100004778();
                if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                {
                  v221 = [v377 invitationPreferences];
                  *buf = 138412290;
                  *v437 = v221;
                  _os_log_impl(&_mh_execute_header, v220, OS_LOG_TYPE_DEFAULT, "Attached invitation preferences found in message: %@", buf, 0xCu);
                }

                v193 = v342;
              }

              else
              {
                v220 = sub_100004778();
                if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v220, OS_LOG_TYPE_DEFAULT, "No invitation preferences were set on the message", buf, 2u);
                }
              }

              v222 = [(CSDConversationManager *)v83 featureFlags];
              if ([v222 uplevelFTAEnabled])
              {
                v223 = [v361 isUpgradeToVideo];

                if (v223)
                {
                  [v377 setIsUpgradeToVideo:1];
                }
              }

              else
              {
              }

              v224 = [v361 activitySession];
              if (v224)
              {
                v225 = [(CSDConversationManager *)v83 createActivitySession:v224 onConversation:v377 fromHandle:v379];
                if (!v225)
                {
                  v226 = sub_100004778();
                  if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
                  {
                    v227 = [v377 UUID];
                    *buf = 138412546;
                    *v437 = v224;
                    *&v437[8] = 2112;
                    *v438 = v227;
                    _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "[WARN] Could not create new activity session for activity session %@ and conversation UUID %@", buf, 0x16u);

                    v193 = v342;
                  }
                }

                v14 = v361;
              }

              v178 = v377;
              goto LABEL_273;
            }
          }

          else
          {
            v376 = 0;
          }
        }

        v340 = +[NSUUID UUID];
        goto LABEL_215;
      }

      v118 = sub_100004778();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        sub_100478968();
      }

      goto LABEL_172;
    }

    v107 = [v103 remoteMembers];
    if ([v107 count] == 1)
    {
      v108 = [v103 activeRemoteParticipants];
      v109 = [v108 count];

      if (v109 && !v357)
      {
        v403 = 0u;
        v404 = 0u;
        v401 = 0u;
        v402 = 0u;
        v110 = v365;
        v111 = [v110 countByEnumeratingWithState:&v401 objects:v434 count:16];
        if (v111)
        {
          v112 = v111;
          v113 = 0;
          v114 = *v402;
          do
          {
            for (mm = 0; mm != v112; mm = mm + 1)
            {
              if (*v402 != v114)
              {
                objc_enumerationMutation(v110);
              }

              v116 = [*(*(&v401 + 1) + 8 * mm) handle];
              v117 = [v116 isEqualToHandle:v379];

              v113 |= v117;
            }

            v112 = [v110 countByEnumeratingWithState:&v401 objects:v434 count:16];
          }

          while (v112);
        }

        else
        {
          v113 = 0;
        }

        v399 = 0u;
        v400 = 0u;
        v397 = 0u;
        v398 = 0u;
        v122 = [v353 activeRemoteParticipants];
        v123 = [v122 countByEnumeratingWithState:&v397 objects:v433 count:16];
        v83 = v374;
        if (v123)
        {
          v124 = v123;
          v125 = *v398;
          obj = v122;
          while (2)
          {
            for (nn = 0; nn != v124; nn = nn + 1)
            {
              if (*v398 != v125)
              {
                objc_enumerationMutation(obj);
              }

              v127 = [*(*(&v397 + 1) + 8 * nn) activeIDSDestination];
              v128 = [v366 participantDestinationID];
              v129 = [v127 isEqualToString:v128];

              if (v129)
              {
                v22 = v362;
                v107 = obj;
                goto LABEL_136;
              }

              v83 = v374;
            }

            v122 = obj;
            v124 = [obj countByEnumeratingWithState:&v397 objects:v433 count:16];
            if (v124)
            {
              continue;
            }

            break;
          }
        }

        v22 = v362;
        v64 = v367;
        if ((v113 & 1) == 0)
        {
          if ([v366 isInitiator])
          {
            v130 = sub_100004778();
            if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v437 = v379;
              _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "[WARN] We received a message from %@, which was in the remote members list but from a different device; treating as new conversation", buf, 0xCu);
            }

            v120 = 0;
            v121 = 1;
            v14 = v361;
LABEL_164:
            v87 = v352;
            goto LABEL_165;
          }
        }
      }
    }

    else
    {
LABEL_136:
    }

    v131 = [v353 groupUUID];
    v132 = [v131 UUIDString];
    v133 = [v360 UUIDString];
    v134 = [v132 isEqualToString:v133];

    if (v134)
    {
      v395 = 0u;
      v396 = 0u;
      v393 = 0u;
      v394 = 0u;
      v135 = v358;
      v136 = [v135 countByEnumeratingWithState:&v393 objects:v432 count:16];
      if (v136)
      {
        v137 = v136;
        v138 = *v394;
        do
        {
          for (i1 = 0; i1 != v137; i1 = i1 + 1)
          {
            if (*v394 != v138)
            {
              objc_enumerationMutation(v135);
            }

            v140 = *(*(&v393 + 1) + 8 * i1);
            v141 = [v140 associationVoucher];

            if (v141)
            {
              [v353 updateRemoteMember:v140];
            }
          }

          v137 = [v135 countByEnumeratingWithState:&v393 objects:v432 count:16];
        }

        while (v137);
      }

      v391 = 0u;
      v392 = 0u;
      v389 = 0u;
      v390 = 0u;
      v142 = v365;
      v143 = [v142 countByEnumeratingWithState:&v389 objects:v431 count:16];
      if (v143)
      {
        v144 = v143;
        v145 = *v390;
        do
        {
          for (i2 = 0; i2 != v144; i2 = i2 + 1)
          {
            if (*v390 != v145)
            {
              objc_enumerationMutation(v142);
            }

            v147 = *(*(&v389 + 1) + 8 * i2);
            v148 = [v147 associationVoucher];

            if (v148)
            {
              [v353 updateLightweightMember:v147];
            }
          }

          v144 = [v142 countByEnumeratingWithState:&v389 objects:v431 count:16];
        }

        while (v144);
      }

      if (v359)
      {
        v149 = [v359 association];
        v150 = [v353 localMember];
        [v150 association];
        v151 = v120 = v353;
        v152 = [v149 isEqualToAssociation:v151];

        v22 = v362;
        v87 = v352;
        if ((v152 & 1) == 0)
        {
          [v353 updateLocalMember:v359];
        }

        v121 = 0;
        v14 = v361;
        v64 = v367;
        v83 = v374;
        goto LABEL_165;
      }

      v121 = 0;
      v14 = v361;
      v22 = v362;
      v64 = v367;
      v120 = v353;
      v83 = v374;
    }

    else
    {
      v153 = +[CSDReportingController sharedInstance];
      v154 = [v353 tuConversation];
      [v153 transitionAttemptForConversation:v154];

      v155 = sub_100004778();
      v83 = v374;
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v437 = v379;
        *&v437[8] = 2112;
        *v438 = v353;
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "We received a message from %@, and we found same converastion: %@ with remote members with a different groupUUID; treating as new conversation", buf, 0x16u);
      }

      v120 = 0;
      v121 = 1;
      v14 = v361;
      v64 = v367;
    }

    goto LABEL_164;
  }

  v22 = sub_100004778();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] handleParticipants:joinedConversationWithUpdate:joinContext: Empty joinContext", buf, 2u);
  }

LABEL_414:
}

- (void)handleParticipantWithIdentifier:(unint64_t)a3 leftConversationWithGroupUUID:(id)a4 fromHandle:(id)a5 withGroupSessionUpdate:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v13);

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218242;
    v25 = a3;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Participant with identifier: %llu left conversation with groupUUID: %@", &v24, 0x16u);
  }

  if (v10)
  {
    v15 = [v12 clientContextData];

    if (v15)
    {
      v16 = [CSDMessagingConversationParticipantDidLeaveContext alloc];
      v17 = [v12 clientContextData];
      v18 = [(CSDMessagingConversationParticipantDidLeaveContext *)v16 initWithData:v17];

      v19 = [v18 leaveReason];
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134218242;
        v25 = a3;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Participant with identifier %llu left with leave context %@", &v24, 0x16u);
      }
    }

    else
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134217984;
        v25 = a3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Participant with identifier %llu left without providing a leave context", &v24, 0xCu);
      }

      v19 = 0;
    }

    v22 = [(CSDConversationManager *)self conversationWithGroupUUID:v10];
    v21 = v22;
    if (v22)
    {
      [v22 removeParticipantWithIdentifier:a3 fromHandle:v11 withReason:v19];
    }

    else
    {
      v23 = sub_100004778();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for group UUID %@", &v24, 0xCu);
      }
    }
  }

  else
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] handleParticipantWithIdentifier:leftConversationWithGroupUUID: empty groupUUID", &v24, 2u);
    }
  }
}

- (void)removePendingMemberMatchingActiveParticipant:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 pendingMembers];
  v10 = [v9 count];

  if (v10)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [v7 pendingMembers];
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (!v12)
    {
      v14 = v11;
LABEL_16:

      goto LABEL_17;
    }

    v13 = v12;
    v25 = self;
    v26 = v7;
    v14 = 0;
    v15 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [v17 handle];
        v19 = [v6 handle];
        v20 = [v18 isEquivalentToHandle:v19];

        if (v20)
        {
          v21 = v17;

          v14 = v21;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v13);

    v7 = v26;
    if (v14)
    {
      v22 = sub_100004778();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v26 UUID];
        *buf = 138412802;
        v32 = v6;
        v33 = 2112;
        v34 = v14;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Active participant %@ was still listed as a pending member %@ for conversation UUID %@; did we miss an approval delegation notice?", buf, 0x20u);
      }

      v24 = [(CSDConversationManager *)v25 pendingMembershipTracker];
      [v24 stopTrackingPendingMember:v14 forConversation:v26 triggeredLocally:0];

      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)prepareAdditionOfActiveParticipant:(id)a3 toInvitedMembersForLinkOnConversation:(id)a4
{
  v6 = a3;
  v26 = a4;
  v7 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [v26 link];
  if (v8)
  {
    v9 = [v26 link];
    if ([v9 isLocallyCreated])
    {
      v10 = [v26 memberHandlesAwaitingInvitesToLink];
      v11 = [v10 count];

      if (v11)
      {
        v12 = +[NSMutableArray array];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = [v26 memberHandlesAwaitingInvitesToLink];
        v13 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v13)
        {
          v15 = *v34;
          *&v14 = 138412290;
          v25 = v14;
          do
          {
            v16 = 0;
            do
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v33 + 1) + 8 * v16);
              v18 = [v6 handle];
              v19 = [v17 isEquivalentToHandle:v18];

              if (v19)
              {
                objc_initWeak(&location, self);
                v20 = TUKickMemberTimeout();
                v21 = dispatch_time(0, 1000000000 * v20);
                v22 = [(CSDConversationManager *)self queue];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_10019E388;
                block[3] = &unk_10061CCB0;
                objc_copyWeak(&v31, &location);
                v29 = v26;
                v30 = v17;
                dispatch_after(v21, v22, block);

                v23 = sub_100004778();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v25;
                  v38 = v12;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Removing handles %@ from handles awaiting link invites as we have scheduled the block to add them if not kicked", buf, 0xCu);
                }

                [v12 addObject:v17];
                objc_destroyWeak(&v31);
                objc_destroyWeak(&location);
              }

              v16 = v16 + 1;
            }

            while (v13 != v16);
            v13 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
          }

          while (v13);
        }

        v24 = [v26 memberHandlesAwaitingInvitesToLink];
        [v24 removeObjectsInArray:v12];
      }
    }

    else
    {
    }
  }
}

- (id)pickInitiatorFromActiveParticipants:(id)a3 forUpdate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  v9 = 0;
  if (v8)
  {
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([v12 isLightweight] & 1) == 0 && (objc_msgSend(v12, "isPseudonym") & 1) == 0)
        {
          if ([v6 isInitiator])
          {
            v13 = [v12 activeIDSDestination];
            v14 = [v6 participantDestinationID];
            v15 = [v13 isEqualToString:v14];

            if (v15)
            {
              v16 = sub_100004778();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v27 = v12;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Using group session initiator as conversation initiator: %@", buf, 0xCu);
              }

              v8 = v12;
              goto LABEL_18;
            }
          }

          if (!v9)
          {
            v9 = v12;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = v9;
    }

    *buf = 138412290;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Picked initiator for conversation: %@", buf, 0xCu);
  }

  if (v8)
  {
    v19 = v8;
  }

  else
  {
    v19 = v9;
  }

  v20 = v19;

  return v19;
}

- (void)linkManager:(id)a3 updatedLinkDescriptorsFromSync:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019E900;
  v8[3] = &unk_100619D88;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)linkManager:(id)a3 removedLinkDescriptorsFromIDSSignal:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019EA68;
  v8[3] = &unk_100619D88;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)linkManager:(id)a3 updatedLinkDescriptorsFromIDSSignal:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019EBD0;
  v8[3] = &unk_100619D88;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)linkManager:(id)a3 removedLinkDescriptorsFromValidityCheck:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019ED48;
  v8[3] = &unk_100619D88;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)handleRemovedLinkDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDConversationManager *)self notifyDelegatesOfChangedLinkDescriptors:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [TUConversationLink alloc];
        v13 = [v12 initWithDescriptor:{v11, v14}];
        [(CSDConversationManager *)self sendMessagesForInvalidatedLink:v13];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)pendingMembershipTracker:(id)a3 willAdd:(id)a4 to:(id)a5 using:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v12 UUID];
    *buf = 138412546;
    v23 = v11;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Membership tracker prompted response for pending member! {member: %@, conversation UUID: %@}", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10019F130;
  v18[3] = &unk_10061CCB0;
  objc_copyWeak(&v21, buf);
  v16 = v12;
  v19 = v16;
  v17 = v11;
  v20 = v17;
  [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:v17 forConversation:v16 usingResponseKeyData:v13 approved:1 callback:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)pendingMembershipTracker:(id)a3 didTrack:(id)a4 forGroupUUID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Membership tracker retained pending member because conversation does not yet exist {member: %@, groupUUID: %@}", &v12, 0x16u);
  }

  v10 = [(CSDConversationManager *)self conversationLinkForGroupUUID:v8];
  if (v10)
  {
    [(CSDConversationManager *)self notifyDelegatesOfTrackedPendingMember:v7 forConversationLink:v10];
    [(CSDConversationManager *)self notifyDelegatesOfUpdatePendingConversations];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No link was found; ignoring tracked pending member {member: %@, groupUUID: %@}", &v12, 0x16u);
    }
  }
}

- (void)pendingMembershipTracker:(id)a3 willNotAdd:(id)a4 to:(id)a5 using:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Membership not adding pending member! {member: %@}", buf, 0xCu);
  }

  v13 = [(CSDConversationManager *)self featureFlags];
  if (([v13 groupFacetimeAsAServiceEnabled] & 1) == 0)
  {

    goto LABEL_7;
  }

  v14 = [v10 provider];

  if (!v14)
  {
LABEL_7:
    v17 = [(CSDConversationManager *)self service];
    goto LABEL_8;
  }

  v15 = +[CSDConversationProviderManager sharedInstance];
  v16 = [v10 provider];
  v17 = [v15 serviceForProvider:v16];

LABEL_8:
  [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:v9 forConversation:v10 usingResponseKeyData:v11 approved:0 callback:0];

  v18 = [v9 handle];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10019F5A0;
  v20[3] = &unk_10061A4C0;
  v21 = v9;
  v19 = v9;
  [v17 noteDismissedHandle:v18 completionHandle:v20];
}

- (void)sendDelegationMessageTo:(id)a3 conversation:(id)a4 link:(id)a5 transactionUUID:(id)a6 forMember:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Asked to send delegation message!", v22, 2u);
  }

  v18 = [CSDMessagingConversationMessage alloc];
  v19 = [v15 groupUUID];
  v20 = [(CSDMessagingConversationMessage *)v18 initWithType:14 groupUUID:v19 link:0];

  v21 = [v12 nickname];
  [(CSDMessagingConversationMessage *)v20 setNickname:v21];

  [(CSDConversationManager *)self _sendDelegationMessageTo:v16 conversation:v15 link:v14 transactionUUID:v13 forMember:v12 withMessage:v20];
}

- (void)_sendDelegationMessageTo:(id)a3 conversation:(id)a4 link:(id)a5 transactionUUID:(id)a6 forMember:(id)a7 withMessage:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([(CSDConversationManager *)self _linksEnabled])
  {
    if (v15 | v16)
    {
      if (v15)
      {
        v21 = v15;
        goto LABEL_9;
      }
    }

    else
    {
      v20 = [0 groupUUID];
      if (v20)
      {
      }

      else
      {
        v22 = [0 originatorHandle];

        if (!v22)
        {
          v28 = sub_100004778();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_100478A8C();
          }

          goto LABEL_39;
        }
      }
    }

    v21 = v16;
LABEL_9:
    v61 = [v21 groupUUID];
    v23 = [v14 count];
    v24 = sub_100004778();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (!v23)
    {
      if (v25)
      {
        *buf = 138412802;
        v28 = v61;
        v70 = v61;
        v71 = 2112;
        v72 = v17;
        v73 = 2112;
        v74 = v18;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Not sending delegation message because no handles were specified! {groupUUID: %@, transactionUUID: %@, pendingMember: %@}", buf, 0x20u);
LABEL_38:

LABEL_39:
        goto LABEL_40;
      }

LABEL_37:
      v28 = v61;
      goto LABEL_38;
    }

    if (v25)
    {
      *buf = 138413058;
      v70 = v14;
      v71 = 2112;
      v72 = v61;
      v73 = 2112;
      v74 = v17;
      v75 = 2112;
      v76 = v18;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Asked to send delegation message {handles: %@, groupUUID: %@, transactionUUID: %@, pendingMember: %@}", buf, 0x2Au);
    }

    [v19 setConversationGroupUUID:v61];
    v26 = [v18 idsDestination];
    [v19 setLetMeInDelegationHandle:v26];

    v27 = [v17 UUIDString];
    [v19 setLetMeInDelegationUUID:v27];

    v24 = [v19 data];
    v56 = v17;
    if (v15)
    {
      v60 = [v15 localMember];
    }

    else
    {
      v29 = [TUConversationMember alloc];
      v30 = [v16 originatorHandle];
      v60 = [v29 initWithHandle:v30];
    }

    v31 = [(CSDConversationManager *)self featureFlags];
    v59 = v14;
    v57 = v16;
    v55 = v18;
    if ([v31 groupFacetimeAsAServiceEnabled])
    {
      v32 = [v15 provider];

      if (v32)
      {
        v33 = +[CSDConversationProviderManager sharedInstance];
        v34 = [v15 provider];
        v35 = [v33 serviceForProvider:v34];

LABEL_22:
        v36 = [v60 handle];
        v37 = [v36 value];
        v54 = v35;
        v58 = [v35 accountWithCallerID:v37];

        v38 = +[NSMutableSet set];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v39 = v59;
        v40 = [v39 countByEnumeratingWithState:&v62 objects:v68 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v63;
          do
          {
            for (i = 0; i != v41; i = i + 1)
            {
              if (*v63 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v62 + 1) + 8 * i);
              v45 = TUCopyIDSCanonicalAddressForHandle();
              [v38 addObject:v45];
            }

            v41 = [v39 countByEnumeratingWithState:&v62 objects:v68 count:16];
          }

          while (v41);
        }

        v66 = IDSSendMessageOptionPublicMessageIntentKey;
        v67 = &off_10063ED38;
        v46 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v47 = [v46 mutableCopy];

        v48 = [v15 capabilitySendMessageOptions];
        if (v48)
        {
          [v47 addEntriesFromDictionary:v48];
        }

        v49 = [(CSDConversationManager *)self sendDataBlock];
        v50 = [v15 provider];
        v51 = (v49)[2](v49, v24, v58, v38, v60, v47, 0, 0, v50);

        v52 = sub_100004778();
        v53 = v52;
        v16 = v57;
        if (v51)
        {
          v18 = v55;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Sent delegation request!!!", buf, 2u);
          }
        }

        else
        {
          v18 = v55;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_100478A50();
          }
        }

        v14 = v59;
        v17 = v56;
        goto LABEL_37;
      }
    }

    else
    {
    }

    v35 = [(CSDConversationManager *)self service];
    goto LABEL_22;
  }

LABEL_40:
}

- (void)foundAvailableAdvertisement:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying of found advertisement: %@", buf, 0xCu);
  }

  v6 = [(CSDConversationManager *)self advertisementsBySessionUUID];
  v7 = [v4 sessionUUID];
  [v6 setObject:v4 forKeyedSubscript:v7];

  v8 = [(CSDConversationManager *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A0088;
  v10[3] = &unk_100619D88;
  v11 = v4;
  v12 = self;
  v9 = v4;
  dispatch_async(v8, v10);
}

- (void)lostAvailableAdvertisement:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying of lost advertisement: %@", buf, 0xCu);
  }

  v6 = [(CSDConversationManager *)self advertisementsBySessionUUID];
  v7 = [v4 sessionUUID];
  [v6 setObject:0 forKeyedSubscript:v7];

  v8 = [(CSDConversationManager *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A05B4;
  v10[3] = &unk_100619D88;
  v11 = v4;
  v12 = self;
  v9 = v4;
  dispatch_async(v8, v10);
}

- (void)fetchActiveActivitySessionContainersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManager *)self activitySessionContainerProvider];
  [v5 activeActivitySessionContainersWithCompletionHandler:v4];
}

- (void)requestUpdatedActivitySessionContainers
{
  v2 = [(CSDConversationManager *)self activitySessionContainerProvider];
  [v2 sendLatestContainersToObservers];
}

- (BOOL)hasActiveActivitySessionContainer
{
  v2 = [(CSDConversationManager *)self activitySessionContainerProvider];
  v3 = [v2 hasActiveActivitySessionContainer];

  return v3;
}

- (void)screenSharingActivityManager:(id)a3 receivedUpdatedRemoteAttributes:(id)a4 isLocallySharing:(BOOL)a5
{
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0B0C;
  block[3] = &unk_100619F48;
  v13 = a5;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_async(v8, block);
}

- (void)screenSharingActivityManager:(id)a3 invalidatedSessionWithReason:(id)a4 wasLocallySharing:(BOOL)a5
{
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0CAC;
  block[3] = &unk_100619F48;
  v12 = a5;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

- (void)updateRemoteControlStatus:(int64_t)a3 onConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0F8C;
  block[3] = &unk_100619F20;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)applicationPolicyManager:(id)a3 authorizationChangedForBundleIdentifier:(id)a4
{
  v14 = a4;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(CSDConversationManager *)self delegateToQueue];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [(CSDConversationManager *)self delegateToQueue];
          v13 = [v12 objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001A12EC;
          block[3] = &unk_100619E58;
          block[4] = v11;
          block[5] = self;
          v16 = v14;
          dispatch_async(v13, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)systemStateObserver:(id)a3 sharePlayAllowedStateChanged:(BOOL)a4
{
  v25 = a4;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v25)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SharePlay allowed: %@", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [(CSDConversationManager *)self delegateToQueue];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [(CSDConversationManager *)self delegateToQueue];
          v15 = [v14 objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001A165C;
          block[3] = &unk_100619F48;
          block[4] = v13;
          block[5] = self;
          v33 = v25;
          dispatch_async(v15, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v16 = [(CSDConversationManager *)self observerStorage];
  v17 = [v16 observerToQueue];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * v22);
        if (objc_opt_respondsToSelector())
        {
          v24 = [v18 objectForKey:v23];
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_1001A166C;
          v26[3] = &unk_100619F48;
          v26[4] = v23;
          v26[5] = self;
          v27 = v25;
          dispatch_async(v24, v26);
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v20);
  }
}

- (void)systemStateObserver:(id)a3 screenSharingAllowedStateChanged:(BOOL)a4
{
  v25 = a4;
  v5 = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v25)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Screen sharing allowed: %@", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [(CSDConversationManager *)self delegateToQueue];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [(CSDConversationManager *)self delegateToQueue];
          v15 = [v14 objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001A19DC;
          block[3] = &unk_100619F48;
          block[4] = v13;
          block[5] = self;
          v33 = v25;
          dispatch_async(v15, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v16 = [(CSDConversationManager *)self observerStorage];
  v17 = [v16 observerToQueue];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * v22);
        if (objc_opt_respondsToSelector())
        {
          v24 = [v18 objectForKey:v23];
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_1001A19EC;
          v26[3] = &unk_100619F48;
          v26[4] = v23;
          v26[5] = self;
          v27 = v25;
          dispatch_async(v24, v26);
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v20);
  }
}

- (void)fileTransferer:(id)a3 didReceiveResourcesAtURL:(id)a4 withMetadata:(id)a5 isZipped:(BOOL)a6 fromIDSDestination:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v13 = [(CSDConversationManager *)self queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A1AFC;
  v17[3] = &unk_10061A450;
  v18 = v10;
  v19 = v11;
  v20 = self;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);
}

- (void)fileTransferer:(id)a3 didTransferFileAtURL:(id)a4 successfully:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resource transfer did initiate successfully: %d", buf, 8u);
  }

  v9 = [(CSDConversationManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A2018;
  v11[3] = &unk_100619D88;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(v9, v11);
}

- (void)sendWithMessage:(id)a3 toHandle:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] Sending SharePlayAvailable message %@ from handle %@ to handle %@", buf, 0x20u);
  }

  v12 = [(CSDConversationManager *)self service];
  v13 = [v10 value];
  v14 = [v12 accountWithCallerID:v13];

  v15 = [[TUConversationMember alloc] initWithHandle:v10];
  v16 = TUCopyIDSCanonicalAddressForHandle();
  v17 = [NSSet setWithObject:v16];

  v18 = [[CSDMessagingConversationMessage alloc] initWithType:37 groupUUID:0 link:0];
  [(CSDMessagingConversationMessage *)v18 setSharePlayAvailable:v8];
  v19 = [(CSDConversationManager *)self sendDataBlock];
  v20 = [(CSDMessagingConversationMessage *)v18 data];
  (v19)[2](v19, v20, v14, v17, v15, 0, 0, 0, 0);
}

- (void)setIsHeld:(BOOL)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A239C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setProvider:(id)a3 forConversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A25A4;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (CSDConduitIDSProxy)messageProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_messageProxy);

  return WeakRetained;
}

- (id)activityAuthorizationStatePresentAlertIfIncapable:(BOOL)a3
{
  v4 = self;
  v5 = CSDConversationManager.activityAuthorizationState(presentAlertIfIncapable:)(a3);

  return v5;
}

- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)a3 onContainerWithID:(NSUUID *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_10044D610(&unk_10057F8D0, v9);
}

- (void)activeActivitySessionContainersWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_10044D610(&unk_10057F898, v5);
}

- (void)requestAuthorizationForActivity:(TUConversationActivity *)a3 withOptions:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = self;

  sub_10044D610(&unk_100587E88, v9);
}

@end