@interface CSDConversationManager
- (BOOL)_conversationIsOverGreenTeaCapacity:(id)capacity addingMembers:(id)members;
- (BOOL)_isActiveRemoteMemberForHandle:(id)handle conversation:(id)conversation;
- (BOOL)_isConversationDisallowedByGreenTeaForConversation:(id)conversation withUpdateContext:(id)context conversationProvider:(id)provider;
- (BOOL)_shouldNotifyDelegatesOfMessage:(id)message localHandleAdded:(BOOL)added isFromStorage:(BOOL)storage;
- (BOOL)_shouldRingForIncomingCallWithHandle:(id)handle conversation:(id)conversation isFromPendingMessage:(BOOL)message isOldMessage:(BOOL)oldMessage message:(id)a7;
- (BOOL)_shouldSkipManualApprovalForHandle:(id)handle conversation:(id)conversation responseKeyData:(id)data;
- (BOOL)allActiveConversationParticipantsSupportSharePlay;
- (BOOL)broadcastData:(id)data onConversation:(id)conversation additionalOptions:(id)options;
- (BOOL)broadcastFile:(id)file onConversation:(id)conversation additionalOptions:(id)options;
- (BOOL)conversationContainsScreenShareRequest:(id)request localRequest:(BOOL)localRequest requestHandle:(id)handle;
- (BOOL)hasActiveActivitySessionContainer;
- (BOOL)isConversationWithUUIDRedirectingAudio:(id)audio;
- (BOOL)isConversationWithUUIDRelaying:(id)relaying;
- (BOOL)isConversationWithUUIDScreening:(id)screening;
- (BOOL)isHandleLocalPseudonym:(id)pseudonym provider:(id)provider;
- (BOOL)isHandleStringLocalPseudonym:(id)pseudonym provider:(id)provider;
- (BOOL)isScreenSharingAvailable;
- (BOOL)isScreenSharingInitiationAvailable;
- (BOOL)isSharePlayAvailable;
- (BOOL)isValidLocalHandle:(id)handle;
- (BOOL)isValidLocalHandle:(id)handle activeLocalHandles:(id)handles provider:(id)provider;
- (BOOL)isValidLocalHandle:(id)handle forProvider:(id)provider;
- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d;
- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d additionalOptions:(id)options;
- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d fromMember:(id)member additionalOptions:(id)options isBlobResponse:(BOOL)response callback:(id)callback;
- (BOOL)sendData:(id)data onConversation:(id)conversation toMember:(id)member additionalOptions:(id)options;
- (BOOL)sendMessagesForInvalidatedLink:(id)link;
- (BOOL)shouldAcceptMembershipUpdateFromHandle:(id)handle joinContext:(id)context participantUpdate:(id)update existingConversation:(id)conversation;
- (BOOL)shouldAcceptMessageFromHandle:(id)handle messageContext:(id)context message:(id)message existingConversation:(id)conversation;
- (BOOL)shouldCreatePendingChatForMessageType:(int64_t)type fromHandle:(id)handle;
- (BOOL)shouldIgnoreMessageForConversation:(id)conversation;
- (BOOL)verifyActivitySessionOriginatorFromHandle:(id)handle message:(id)message;
- (BOOL)verifyAllLightweightmembersAssociated:(id)associated remoteMembers:(id)members;
- (BOOL)verifyBlobResponseFromHandle:(id)handle message:(id)message existingConversation:(id)conversation;
- (BOOL)verifyEndorseRepresentsMemberFromHandle:(id)handle message:(id)message existingConversation:(id)conversation;
- (BOOL)verifyGroupSessionParticipantUpdateAllowedFromHandle:(id)handle participantUpdate:(id)update message:(id)message existingConversation:(id)conversation lightweightMembers:(id)members;
- (BOOL)verifyKickMemberPermittedFromHandle:(id)handle message:(id)message;
- (BOOL)verifyLightweightMessageTypeFromHandle:(id)handle message:(id)message existingConversation:(id)conversation;
- (BOOL)verifyMessageIntentKeyFromContext:(id)context message:(id)message;
- (CSDConduitIDSProxy)messageProxy;
- (CSDConversation)activeConversation;
- (CSDConversationManager)init;
- (CSDConversationManager)initWithQueue:(id)queue reportingController:(id)controller persistenceController:(id)persistenceController linkManager:(id)manager cpApplicationController:(id)applicationController invitationResolver:(id)resolver pendingMembershipTracker:(id)tracker featureFlags:(id)self0 applicationPolicyManager:(id)self1;
- (CSDConversationManager)initWithQueue:(id)queue reportingController:(id)controller persistenceController:(id)persistenceController linkManager:(id)manager invitationResolver:(id)resolver pendingMembershipTracker:(id)tracker featureFlags:(id)flags;
- (CSDConversationManager)initWithReportingController:(id)controller cpApplicationController:(id)applicationController invitationResolver:(id)resolver;
- (FTDeviceSupport)deviceSupport;
- (NSDictionary)_conversationsByUUID;
- (NSDictionary)activityAuthorizedBundleIdentifierState;
- (NSDictionary)conversationsByGroupUUID;
- (NSDictionary)incomingPendingConversationsByGroupUUID;
- (NSDictionary)pseudonymsByCallUUID;
- (id)_getActivatedLinkWithHandle:(id)handle updateGroupUUID:(id)d updateInvitedHandles:(id)handles;
- (id)_inactiveRemoteMemberForHandle:(id)handle conversation:(id)conversation;
- (id)_incomingPendingConversationsByGroupUUID;
- (id)_kickedOrRejectedMemberForHandle:(id)handle conversation:(id)conversation;
- (id)_removePendingConversationWithPseudonym:(id)pseudonym;
- (id)_removePendingConversationsWithTemporaryGroupUUIDIfNecessary:(id)necessary;
- (id)activatedConversationLinksWithError:(id *)error;
- (id)activeApprovedConversationWithLink:(id)link;
- (id)activityAuthorizationStatePresentAlertIfIncapable:(BOOL)incapable;
- (id)advertisementsOnSystem;
- (id)callerIDForLocalMember:(id)member forProvider:(id)provider;
- (id)callerIDHandleForSenderIdentityUUID:(id)d callerID:(id)iD;
- (id)conversationLinkForGroupUUID:(id)d;
- (id)conversationLinkForPseudonym:(id)pseudonym;
- (id)conversationRepresentedByRemoteMembers:(id)members andLink:(id)link;
- (id)conversationWithGroupUUID:(id)d;
- (id)conversationWithGroupUUID:(id)d andProvider:(id)provider;
- (id)conversationWithGroupUUID:(id)d orMemberIdentifiers:(id)identifiers orRemoteMembers:(id)members andLink:(id)link andVideo:(BOOL)video;
- (id)conversationWithGroupUUID:(id)d orRepresentedByRemoteMembers:(id)members andLink:(id)link;
- (id)conversationsByUUIDIncludingStorageConversations:(BOOL)conversations;
- (id)createActivitySession:(id)session onConversation:(id)conversation fromHandle:(id)handle;
- (id)createCPActivitySessionForActivitySession:(id)session onConversationWithUUID:(id)d;
- (id)createConversationIfNecessaryWithUUID:(id)d groupUUID:(id)iD messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member remoteMembers:(id)members pendingMembers:(id)pendingMembers otherInvitedHandles:(id)self0 remotePushTokens:(id)self1 lightweightMembers:(id)self2 link:(id)self3 activity:(id)self4 avMode:(unint64_t)self5 presentationMode:(unint64_t)self6 provider:(id)self7 screenSharingRequest:(id)self8;
- (id)createConversationWithUUID:(id)d groupUUID:(id)iD messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member initiator:(id)initiator remoteMembers:(id)members pendingMembers:(id)self0 otherInvitedHandles:(id)self1 remotePushTokens:(id)self2 lightweightMembers:(id)self3 activity:(id)self4 link:(id)self5 report:(id)self6 fromStorage:(BOOL)self7 avMode:(unint64_t)self8 presentationMode:(unint64_t)self9 provider:(id)provider screenSharingRequest:(id)request isInitiator:(BOOL)isInitiator isOldMessage:(BOOL)message;
- (id)deletedConversationLinksWithError:(id *)error;
- (id)findConversationLinkMatchingPseudonym:(id)pseudonym;
- (id)findOrCreateConversationWithGroupUUID:(id)d messagesGroupUUID:(id)iD remoteMembers:(id)members otherInvitedHandles:(id)handles localMember:(id)member remotePushTokens:(id)tokens link:(id)link activity:(id)self0 avMode:(unint64_t)self1 presentationMode:(unint64_t)self2 conversationProvider:(id)self3 screenSharingRequest:(id)self4;
- (id)initiatePendingConversationForLink:(id)link localMember:(id)member isVideoEnabled:(BOOL)enabled;
- (id)localMemberForProvider:(id)provider fromHandle:(id)handle members:(id)members lightweightMembers:(id)lightweightMembers activeLocalHandles:(id)handles;
- (id)memberExistsForParticipantDestination:(id)destination groupSessionParticipantUpdate:(id)update;
- (id)memberExistsForParticipantDestination:(id)destination members:(id)members;
- (id)pendingConversationUUIDWithPseudonym:(id)pseudonym;
- (id)pendingConversationWithPseudonym:(id)pseudonym;
- (id)pickInitiatorFromActiveParticipants:(id)participants forUpdate:(id)update;
- (id)pushTokenForSelf;
- (id)removePendingConversationWithPseudonym:(id)pseudonym;
- (id)senderIdentityUUIDForCallerIDHandle:(id)handle;
- (id)temporaryFilePath;
- (int)presentationStateForConversationWithUUID:(id)d;
- (void)_displaySharePlayUnableToStartAlert;
- (void)_leaveConversation:(id)conversation;
- (void)_leaveConversation:(id)conversation withContext:(id)context;
- (void)_runCallbackIfNecessaryForMessage:(id)message;
- (void)_sendDelegationMessageTo:(id)to conversation:(id)conversation link:(id)link transactionUUID:(id)d forMember:(id)member withMessage:(id)message;
- (void)_service:(id)_service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context attemptCount:(unint64_t)count;
- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier;
- (void)activateLink:(id)link completionHandler:(id)handler;
- (void)activeActivitySessionContainersWithCompletionHandler:(id)handler;
- (void)addAliasesToConversationContainer:(id)container forBundleIdentifier:(id)identifier;
- (void)addCollaborationDictionary:(id)dictionary forConversationWithUUID:(id)d fromMe:(BOOL)me;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d;
- (void)addHighlightIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d;
- (void)addInvitedMemberHandles:(id)handles toConversationLink:(id)link completionHandler:(id)handler;
- (void)addInvitedMemberHandlesFromAddedRemoteMembers:(id)members toConversationLink:(id)link;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)addPseudonym:(id)pseudonym forCallUUID:(id)d;
- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences toConversationWithUUID:(id)d;
- (void)addScreenSharingType:(unint64_t)type forConversationUUID:(id)d;
- (void)advertiseGroupActivity:(id)activity completionHandler:(id)handler;
- (void)applicationPolicyManager:(id)manager authorizationChangedForBundleIdentifier:(id)identifier;
- (void)approvePendingMember:(id)member forConversationUUID:(id)d;
- (void)beginListeningOnService:(id)service;
- (void)broadcastImageForSession:(id)session onConversation:(id)conversation;
- (void)broadcastLightweightEndorsementForAddedMembers:(id)members onConversation:(id)conversation;
- (void)buzzMember:(id)member destinationID:(id)d invitationContext:(id)context conversationUUID:(id)iD;
- (void)cancelOrDenyScreenShareRequest:(id)request forConversationUUID:(id)d;
- (void)cancelPreviouslySentScreenShareRequests:(id)requests;
- (void)checkLinkValidity:(id)validity completionHandler:(id)handler;
- (void)cleanupExpiredPendingConversations;
- (void)collaborationStateChanged:(int64_t)changed forCollaborationIdentifier:(id)identifier onConversationUUID:(id)d;
- (void)conversation:(id)conversation activityChangedOnSession:(id)session;
- (void)conversation:(id)conversation activitySessionChanged:(id)changed;
- (void)conversation:(id)conversation activitySessionRemoved:(id)removed userOriginated:(BOOL)originated;
- (void)conversation:(id)conversation addedActiveParticipant:(id)participant;
- (void)conversation:(id)conversation addedMembers:(id)members triggeredLocally:(BOOL)locally;
- (void)conversation:(id)conversation appLaunchState:(unint64_t)state forActivitySession:(id)session;
- (void)conversation:(id)conversation changedBytesOfDataUsed:(int64_t)used;
- (void)conversation:(id)conversation didChangeLocalParticipant:(id)participant broadcastActivitySession:(BOOL)session currentSequenceNumber:(unint64_t)number fromResponse:(BOOL)response;
- (void)conversation:(id)conversation didChangeSceneAssociationForActivitySession:(id)session;
- (void)conversation:(id)conversation didChangeStateForActivitySession:(id)session;
- (void)conversation:(id)conversation didReceiveParticipantUpdateMessage:(id)message fromNormalizedHandle:(id)handle;
- (void)conversation:(id)conversation failedWithContext:(id)context;
- (void)conversation:(id)conversation mediaPrioritiesChangedForParticipant:(id)participant;
- (void)conversation:(id)conversation participant:(id)participant didReact:(id)react;
- (void)conversation:(id)conversation participantDidStopReacting:(id)reacting;
- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event;
- (void)conversation:(id)conversation remoteMembersChanged:(id)changed;
- (void)conversation:(id)conversation removedActiveParticipant:(id)participant withLeaveReason:(unint64_t)reason;
- (void)conversation:(id)conversation removedScreenShareRequest:(id)request;
- (void)conversation:(id)conversation requestBlobRecoveryForParticipantDestination:(id)destination completion:(id)completion;
- (void)conversation:(id)conversation requestedEndpointWithIdentifier:(id)identifier activitySession:(id)session completion:(id)completion;
- (void)conversation:(id)conversation screenShareAttributesDidChange:(id)change;
- (void)conversation:(id)conversation screenShareAttributesSelected:(id)selected;
- (void)conversation:(id)conversation screenShareAttributesUpdated:(id)updated;
- (void)conversation:(id)conversation sendDeclineMessageToParticipantDestination:(id)destination;
- (void)conversation:(id)conversation sendResourceAtURL:(id)l toParticipants:(id)participants metadata:(id)metadata activitySessionUUID:(id)d completion:(id)completion;
- (void)conversation:(id)conversation updatedActiveParticipant:(id)participant;
- (void)conversation:(id)conversation updatedActiveParticipantWithScreenSharing:(id)sharing;
- (void)conversationChanged:(id)changed;
- (void)conversationConnectionDidStart:(id)start;
- (void)conversationDidStopScreenCapture:(id)capture;
- (void)conversationDidTriggerJoin:(id)join;
- (void)conversationInvalidated:(id)invalidated;
- (void)createActivitySession:(id)session onConversationWithUUID:(id)d options:(unint64_t)options withCompletion:(id)completion;
- (void)displaySharePlayUnableToStartAlert;
- (void)endActivitySession:(id)session onConversationWithUUID:(id)d;
- (void)fetchActiveActivitySessionContainersWithCompletion:(id)completion;
- (void)fetchUpcomingNoticeWithCompletionHandler:(id)handler;
- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination;
- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l successfully:(BOOL)successfully;
- (void)foundAvailableAdvertisement:(id)advertisement;
- (void)generateAllInactiveLinks;
- (void)generateLinkForConversationUUID:(id)d completionHandler:(id)handler;
- (void)generateLinkWithInvitedMemberHandles:(id)handles linkLifetimeScope:(int64_t)scope completionHandler:(id)handler;
- (void)getActiveLinksWithCreatedOnly:(BOOL)only completionHandler:(id)handler;
- (void)getInactiveLinkWithCompletionHandler:(id)handler;
- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)handler;
- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler;
- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)activity onContainerWithID:(NSUUID *)d completionHandler:(id)handler;
- (void)handleConversation:(id)conversation addHighlight:(id)highlight fromHandle:(id)handle;
- (void)handleConversation:(id)conversation participantUpdateMessage:(id)message fromNormalizedHandle:(id)handle;
- (void)handleConversation:(id)conversation receivedActivitySession:(id)session fromHandle:(id)handle;
- (void)handleConversation:(id)conversation receivedBlobRecoveryRequest:(id)request fromHandle:(id)handle;
- (void)handleConversation:(id)conversation receivedBlobRecoveryResponse:(id)response fromHandle:(id)handle;
- (void)handleConversation:(id)conversation receivedEndorsementForMember:(id)member fromHandle:(id)handle;
- (void)handleConversation:(id)conversation registerMessagesGroupUUIDMessage:(id)message fromNormalizedHandle:(id)handle;
- (void)handleConversation:(id)conversation removeActivitySession:(id)session fromHandle:(id)handle;
- (void)handleConversation:(id)conversation removeHighlight:(id)highlight fromHandle:(id)handle;
- (void)handleConversation:(id)conversation screenShareRequest:(id)request fromHandle:(id)handle;
- (void)handleConversation:(id)conversation screenShareResponse:(id)response fromHandle:(id)handle;
- (void)handleConversation:(id)conversation updateActivity:(id)activity fromHandle:(id)handle;
- (void)handleConversation:(id)conversation updateActivityImage:(id)image fromHandle:(id)handle;
- (void)handleConversation:(id)conversation updateGuestMode:(id)mode fromHandle:(id)handle;
- (void)handleConversationHandoffRecommendationChangedNotification:(id)notification;
- (void)handleConversationHandoffRouteIdentifierChangedNotification:(id)notification;
- (void)handleDelegatedPendingMemberIfNecessary:(id)necessary conversation:(id)conversation groupUUID:(id)d fromHandle:(id)handle transactionUUID:(id)iD;
- (void)handleEncryptedLetMeInRequest:(id)request fromHandle:(id)handle context:(id)context;
- (void)handleEncryptedLetMeInResponse:(id)response fromHandle:(id)handle context:(id)context;
- (void)handleEncryptedMessageWithin:(id)within fromHandle:(id)handle context:(id)context;
- (void)handleParticipantWithIdentifier:(unint64_t)identifier leftConversationWithGroupUUID:(id)d fromHandle:(id)handle withGroupSessionUpdate:(id)update;
- (void)handleParticipants:(id)participants joinedConversationWithUpdate:(id)update joinContext:(id)context fromHandle:(id)handle isFromPendingMessage:(BOOL)message;
- (void)handleReceivedLMIDelegateMessage:(id)message fromHandle:(id)handle;
- (void)handleReceivedLetMeInRequest:(id)request toPseudonym:(id)pseudonym fromHandle:(id)handle responseKeyData:(id)data dateInitiated:(id)initiated;
- (void)handleReceivedLetMeInResponse:(id)response pendingConversation:(id)conversation fromHandle:(id)handle;
- (void)handleReceivedLinkCreatedOrChangedMessage:(id)message fromHandle:(id)handle;
- (void)handleReceivedLinkInvalidatedMessage:(id)message fromHandle:(id)handle;
- (void)handleReceivedUpdateJoinedMetadataMessage:(id)message fromHandle:(id)handle;
- (void)handleRemovedLinkDescriptors:(id)descriptors;
- (void)includeMetricsReport:(id)report onConversationWithUUID:(id)d;
- (void)invalidateLink:(id)link deleteReason:(int64_t)reason completionHandler:(id)handler;
- (void)joinConversationWithRequest:(id)request;
- (void)joinExistingConversationWithUUID:(id)d context:(id)context;
- (void)kickMember:(id)member conversationUUID:(id)d;
- (void)launchApplicationForActivitySessionUUID:(id)d authorizedExternally:(BOOL)externally forceBackground:(BOOL)background completionHandler:(id)handler;
- (void)leaveActivitySession:(id)session onConversationWithUUID:(id)d;
- (void)leaveAllConversations;
- (void)leaveConversationWithUUID:(id)d;
- (void)leaveConversationWithUUID:(id)d withContext:(id)context;
- (void)linkManager:(id)manager removedLinkDescriptorsFromIDSSignal:(id)signal;
- (void)linkManager:(id)manager removedLinkDescriptorsFromValidityCheck:(id)check;
- (void)linkManager:(id)manager updatedLinkDescriptorsFromIDSSignal:(id)signal;
- (void)linkManager:(id)manager updatedLinkDescriptorsFromSync:(id)sync;
- (void)linkSyncStateIncludeLinks:(BOOL)links WithCompletion:(id)completion;
- (void)lostAvailableAdvertisement:(id)advertisement;
- (void)markCollaborationWithIdentifierOpened:(id)opened forConversationUUID:(id)d;
- (void)maybeAddComplementaryAssociationVoucherFor:(id)for toLocalMemberOf:(id)of completion:(id)completion;
- (void)noticeManager:(id)manager conversation:(id)conversation participant:(id)participant addedNotice:(id)notice;
- (void)notifyDelegateOfHighlightAddedForConversation:(id)conversation highlightIdentifier:(id)identifier oldHighlightIdentifier:(id)highlightIdentifier byParticipant:(id)participant isFirstAdd:(BOOL)add;
- (void)notifyDelegateOfHighlightRemovedFromConversation:(id)conversation highlightIdentifier:(id)identifier byParticipant:(id)participant;
- (void)notifyDelegatesOf:(id)of removedScreenShareRequest:(id)request;
- (void)notifyDelegatesOfAVModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forConversation:(id)conversation;
- (void)notifyDelegatesOfChangedLink:(id)link conversation:(id)conversation;
- (void)notifyDelegatesOfChangedLinkDescriptors:(id)descriptors;
- (void)notifyDelegatesOfCreatedConversation:(id)conversation;
- (void)notifyDelegatesOfInvalidLinkForPendingConversation:(id)conversation;
- (void)notifyDelegatesOfLetMeInRejectedForPendingConversation:(id)conversation;
- (void)notifyDelegatesOfMessage:(id)message fromHandle:(id)handle forConversation:(id)conversation withUpdate:(id)update shouldRing:(BOOL)ring;
- (void)notifyDelegatesOfNewConversation:(id)conversation fromHandle:(id)handle;
- (void)notifyDelegatesOfRemoteScreenShareAttributes:(id)attributes isLocallySharing:(BOOL)sharing;
- (void)notifyDelegatesOfRemoteScreenShareEndedWithReason:(id)reason;
- (void)notifyDelegatesOfRemovedConversationWithUUID:(id)d;
- (void)notifyDelegatesOfTrackedPendingMember:(id)member forConversationLink:(id)link;
- (void)notifyDelegatesOfUpdatePendingConversations;
- (void)pendingMembershipTracker:(id)tracker didTrack:(id)track forGroupUUID:(id)d;
- (void)pendingMembershipTracker:(id)tracker willAdd:(id)add to:(id)to using:(id)using;
- (void)pendingMembershipTracker:(id)tracker willNotAdd:(id)add to:(id)to using:(id)using;
- (void)postEndEventForSession:(id)session originator:(id)originator conversation:(id)conversation;
- (void)postSessionStartedForSession:(id)session originator:(id)originator conversation:(id)conversation;
- (void)prepareAdditionOfActiveParticipant:(id)participant toInvitedMembersForLinkOnConversation:(id)conversation;
- (void)prepareConversationWithUUID:(id)d withHandoffContext:(id)context;
- (void)presentDismissalAlertForActivitySessionWithUUID:(id)d onConversationWithUUID:(id)iD;
- (void)processGroupSessionParticipantUpdate:(id)update context:(id)context;
- (void)processJoinUpdate:(id)update fromHandle:(id)handle senderCorrelationIdentifier:(id)identifier isFromPendingMessage:(BOOL)message;
- (void)processParticipantDataUpdate:(id)update fromHandle:(id)handle;
- (void)processProxiedGroupUpdate:(id)update;
- (void)processProxiedMessage:(id)message fromID:(id)d context:(id)context;
- (void)processProxiedResource:(id)resource metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)processUpdateMembersUpdate:(id)update fromHandle:(id)handle;
- (void)processUpdatedNickname:(id)nickname forHandle:(id)handle conversationUUID:(id)d;
- (void)recoverLinksForPseudonyms:(id)pseudonyms;
- (void)refreshActiveParticipantsList;
- (void)registerMessagesGroupUUIDForConversationUUID:(id)d;
- (void)rejectPendingMember:(id)member forConversationUUID:(id)d;
- (void)removeAllConversations;
- (void)removeAllPendingConversations;
- (void)removeConversationNoticeWithUUID:(id)d;
- (void)removeConversationWithUUID:(id)d;
- (void)removeDelegate:(id)delegate;
- (void)removeHighlightIdentifier:(id)identifier forConversationUUID:(id)d;
- (void)removeLink:(id)link reason:(int64_t)reason withConversation:(id)conversation;
- (void)removeNearbyMemberWithHandle:(id)handle onConversationWithUUID:(id)d;
- (void)removeNonIndefiniteLinks;
- (void)removePendingMemberMatchingActiveParticipant:(id)participant conversation:(id)conversation;
- (void)removePseudonym:(id)pseudonym forCallUUID:(id)d;
- (void)removeRemoteMembers:(id)members fromConversationWithUUID:(id)d;
- (void)removeScreenShareRequestFromParticipant:(id)participant conversation:(id)conversation screenShareContext:(id)context;
- (void)renewLink:(id)link expirationDate:(id)date reason:(unint64_t)reason completionHandler:(id)handler;
- (void)renewLinkIfNeeded:(id)needed completionHandler:(id)handler;
- (void)requestActivityAuthorizationForApplicationWithBundleIdentifier:(id)identifier overrides:(id)overrides completionHandler:(id)handler;
- (void)requestAuthorizationForActivity:(TUConversationActivity *)activity withOptions:(unint64_t)options completionHandler:(id)handler;
- (void)requestLetMeInApprovalForPseudonym:(id)pseudonym;
- (void)requestParticipant:(id)participant toScreenShareWithRequest:(id)request conversation:(id)conversation;
- (void)requestParticipantToShareScreen:(id)screen forConversationUUID:(id)d;
- (void)requestUpdatedActivitySessionContainers;
- (void)resetActivitySessionSceneAssociationsForBundleID:(id)d;
- (void)retreiveActiveConversations;
- (void)revokeBackgroundPipAuthorizationsForBundleID:(id)d;
- (void)sanitizeAndProcessParticipantUpdate:(id)update context:(id)context;
- (void)scheduleConversationLinkCheckInInitial:(BOOL)initial;
- (void)screenSharingActivityManager:(id)manager invalidatedSessionWithReason:(id)reason wasLocallySharing:(BOOL)sharing;
- (void)screenSharingActivityManager:(id)manager receivedUpdatedRemoteAttributes:(id)attributes isLocallySharing:(BOOL)sharing;
- (void)sendDataForScreenShareMessage:(id)message toParticipant:(id)participant conversation:(id)conversation screenShareRequestHandle:(id)handle allowMemberFallbackForMessage:(BOOL)forMessage;
- (void)sendDelegationMessageTo:(id)to conversation:(id)conversation link:(id)link transactionUUID:(id)d forMember:(id)member;
- (void)sendInvitationMessageToMember:(id)member destinationID:(id)d invitationContext:(id)context forConversation:(id)conversation includeAllAttributes:(BOOL)attributes invitationPreferences:(id)preferences additionalOptions:(id)options;
- (void)sendMessage:(id)message forConversation:(id)conversation withActivitySession:(id)session additionalOptions:(id)options;
- (void)sendVideoUpgradeMessageforConversationWithUUID:(id)d;
- (void)sendWithMessage:(id)message toHandle:(id)handle fromHandle:(id)fromHandle;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account receivedGroupSessionParticipantDataUpdate:(id)update;
- (void)service:(id)service account:(id)account receivedGroupSessionParticipantUpdate:(id)update context:(id)context;
- (void)setAudioInjectionAllowed:(BOOL)allowed forConversationWithUUID:(id)d;
- (void)setAudioPaused:(BOOL)paused forConversationWithUUID:(id)d;
- (void)setConversationLink:(id)link forConversation:(id)conversation replyToCompletionHandler:(id)handler;
- (void)setDownlinkMuted:(BOOL)muted forParticipants:(id)participants inConversationWithUUID:(id)d completionHandler:(id)handler;
- (void)setDownlinkMuted:(BOOL)muted forRemoteParticipantsOnConversationWithUUID:(id)d;
- (void)setGridDisplayMode:(unint64_t)mode forConversationWithUUID:(id)d;
- (void)setIgnoreLetMeInRequests:(BOOL)requests forConversationUUID:(id)d;
- (void)setIsHeld:(BOOL)held forConversationUUID:(id)d;
- (void)setIsNearbySharePlay:(BOOL)play forConversationWithUUID:(id)d;
- (void)setLinkName:(id)name forConversationLink:(id)link completionHandler:(id)handler;
- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode forConversationUUID:(id)d presentationMode:(unint64_t)presentationMode;
- (void)setLocalParticipantCluster:(id)cluster forConversationUUID:(id)d;
- (void)setMessagesGroupName:(id)name onConversationWithUUID:(id)d;
- (void)setPresentationRect:(CGRect)rect forConversationWithUUID:(id)d;
- (void)setPresentationState:(int)state forConversationWithUUID:(id)d;
- (void)setProvider:(id)provider forConversationUUID:(id)d;
- (void)setRelaying:(BOOL)relaying forConversationWithUUID:(id)d;
- (void)setScreenEnabled:(BOOL)enabled screenShareAttributes:(id)attributes forConversationWithUUID:(id)d;
- (void)setScreenShareAttributes:(id)attributes forConversationWithUUID:(id)d;
- (void)setScreening:(BOOL)screening forConversationWithUUID:(id)d;
- (void)setSharePlayHandedOff:(BOOL)off onConversationWithUUID:(id)d;
- (void)setUplinkMuted:(BOOL)muted forConversationWithUUID:(id)d;
- (void)setUplinkMuted:(BOOL)muted forPendingConversationWithUUID:(id)d;
- (void)setUsingAirplay:(BOOL)airplay onActivitySession:(id)session onConversationWithUUID:(id)d;
- (void)setVideo:(BOOL)video forConversationWithUUID:(id)d;
- (void)setVideoEnabled:(BOOL)enabled forConversationWithUUID:(id)d;
- (void)setVideoEnabled:(BOOL)enabled forPendingConversationWithUUID:(id)d;
- (void)setVideoPaused:(BOOL)paused forConversationWithUUID:(id)d;
- (void)setupPendingConversationCleanupTimer;
- (void)startAudioForConversationWithUUID:(id)d;
- (void)startTrackingCollaborationWithIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d completionHandler:(id)handler;
- (void)stopAdvertisingGroupActivity:(id)activity completionHandler:(id)handler;
- (void)systemStateObserver:(id)observer screenSharingAllowedStateChanged:(BOOL)changed;
- (void)systemStateObserver:(id)observer sharePlayAllowedStateChanged:(BOOL)changed;
- (void)updateConversationHandoffEligibility:(id)eligibility;
- (void)updateExternalParticipants:(id)participants;
- (void)updateLetMeInRequestState:(int64_t)state addLink:(id)link forConversationWithUUID:(id)d;
- (void)updateLocalMemberNickname:(id)nickname conversationUUID:(id)d;
- (void)updateMessagesGroupName:(id)name onConversationWithUUID:(id)d;
- (void)updateMessagesGroupPhotoOnConversationWithUUID:(id)d;
- (void)updateParticipantPresentationContexts:(id)contexts onConversationWithUUID:(id)d;
- (void)updateRemoteControlStatus:(int64_t)status onConversationWithUUID:(id)d;
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

  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CA64;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (CSDConversationManager)initWithReportingController:(id)controller cpApplicationController:(id)applicationController invitationResolver:(id)resolver
{
  resolverCopy = resolver;
  applicationControllerCopy = applicationController;
  controllerCopy = controller;
  v11 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.conversationmanager", 0);
  v12 = [[CSDConversationPersistenceController alloc] initWithQueue:v11];
  v13 = objc_alloc_init(CSDConversationLinkManager);
  v14 = objc_alloc_init(CSDPendingMembershipTracker);
  v15 = objc_alloc_init(TUFeatureFlags);
  v16 = [(CSDConversationManager *)self initWithQueue:v11 reportingController:controllerCopy persistenceController:v12 linkManager:v13 cpApplicationController:applicationControllerCopy invitationResolver:resolverCopy pendingMembershipTracker:v14 featureFlags:v15 applicationPolicyManager:0];

  return v16;
}

- (CSDConversationManager)init
{
  [(CSDConversationManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CSDConversationManager)initWithQueue:(id)queue reportingController:(id)controller persistenceController:(id)persistenceController linkManager:(id)manager invitationResolver:(id)resolver pendingMembershipTracker:(id)tracker featureFlags:(id)flags
{
  flagsCopy = flags;
  trackerCopy = tracker;
  resolverCopy = resolver;
  managerCopy = manager;
  persistenceControllerCopy = persistenceController;
  controllerCopy = controller;
  queueCopy = queue;
  if ([flagsCopy expanseEnabled])
  {
    v23 = objc_alloc_init(CPApplicationController);
  }

  else
  {
    v23 = 0;
  }

  v24 = +[CPApplicationPolicyManager sharedInstance];
  v25 = [(CSDConversationManager *)self initWithQueue:queueCopy reportingController:controllerCopy persistenceController:persistenceControllerCopy linkManager:managerCopy cpApplicationController:v23 invitationResolver:resolverCopy pendingMembershipTracker:trackerCopy featureFlags:flagsCopy applicationPolicyManager:v24];

  return v25;
}

- (CSDConversationManager)initWithQueue:(id)queue reportingController:(id)controller persistenceController:(id)persistenceController linkManager:(id)manager cpApplicationController:(id)applicationController invitationResolver:(id)resolver pendingMembershipTracker:(id)tracker featureFlags:(id)self0 applicationPolicyManager:(id)self1
{
  queueCopy = queue;
  controllerCopy = controller;
  persistenceControllerCopy = persistenceController;
  managerCopy = manager;
  applicationControllerCopy = applicationController;
  resolverCopy = resolver;
  trackerCopy = tracker;
  flagsCopy = flags;
  policyManagerCopy = policyManager;
  v159.receiver = self;
  v159.super_class = CSDConversationManager;
  v18 = [(CSDConversationManager *)&v159 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v19->_reportingController, controller);
    objc_storeStrong(&v19->_linkManager, manager);
    [(CSDConversationLinkManager *)v19->_linkManager setDelegate:v19, controllerCopy, persistenceControllerCopy, managerCopy, applicationControllerCopy, resolverCopy, trackerCopy, flagsCopy];
    objc_storeStrong(&v19->_featureFlags, flags);
    objc_storeStrong(&v19->_invitationResolver, resolver);
    objc_storeStrong(&v19->_pendingMembershipTracker, tracker);
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

    sharedInstance = [(__objc2_class *)*v59 sharedInstance];
    service = v19->_service;
    v19->_service = sharedInstance;

    v62 = sub_100004778();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = v19->_service;
      *buf = 138412290;
      v161 = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Initializing CSDConversationManager for service: %@", buf, 0xCu);
    }

    v64 = [CSDVoucherManagerImpl alloc];
    service = [(CSDIDSService *)v19->_service service];
    v66 = [(CSDVoucherManagerImpl *)v64 initWithIdsService:service];
    voucherManager = v19->_voucherManager;
    v19->_voucherManager = v66;

    v68 = [[CSDParticipantUpdateSanitizerImpl alloc] initWithVoucherManager:v19->_voucherManager];
    participantUpdateSanitizer = v19->_participantUpdateSanitizer;
    v19->_participantUpdateSanitizer = v68;

    if (policyManagerCopy)
    {
      v133 = policyManagerCopy;
    }

    else
    {
      v133 = +[CPApplicationPolicyManager sharedInstance];
    }

    v70 = objc_alloc_init(CSDConversationManagerDataSourceObserverStorage);
    observerStorage = v19->_observerStorage;
    v19->_observerStorage = v70;

    objc_storeStrong(&v19->_cpApplicationController, applicationController);
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

    featureFlags = [(CSDConversationManager *)v19 featureFlags];
    wagoneerEnabled = [featureFlags wagoneerEnabled];

    if (wagoneerEnabled)
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
    featureFlags2 = [(CSDConversationManager *)v19 featureFlags];
    sharePlayInFaceTimeCanvasEnabled = [featureFlags2 sharePlayInFaceTimeCanvasEnabled];

    if (sharePlayInFaceTimeCanvasEnabled)
    {
      v91 = [[CSDFileTransferController alloc] initWithService:v19->_service];
      fileTransferController = v19->_fileTransferController;
      v19->_fileTransferController = v91;

      [(CSDFileTransferController *)v19->_fileTransferController setDelegate:v19];
    }

    v93 = +[NSMutableDictionary dictionary];
    resourceTransferCallbacks = v19->_resourceTransferCallbacks;
    v19->_resourceTransferCallbacks = v93;

    v95 = [[_TtC13callservicesd28CSDCollaborationStateManager alloc] initWithQueue:queueCopy];
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
    objc_storeStrong(&v100->_persistenceController, persistenceController);
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

- (BOOL)_shouldNotifyDelegatesOfMessage:(id)message localHandleAdded:(BOOL)added isFromStorage:(BOOL)storage
{
  messageCopy = message;
  v8 = messageCopy;
  if (messageCopy)
  {
    if ([messageCopy type])
    {
      v9 = !storage;
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
    v10 = added && v9;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (BOOL)_shouldRingForIncomingCallWithHandle:(id)handle conversation:(id)conversation isFromPendingMessage:(BOOL)message isOldMessage:(BOOL)oldMessage message:(id)a7
{
  messageCopy = message;
  oldMessageCopy = oldMessage;
  handleCopy = handle;
  conversationCopy = conversation;
  v12 = a7;
  provider = [(__CFString *)conversationCopy provider];
  v75 = handleCopy;
  v14 = [(CSDConversationManager *)self isValidLocalHandle:handleCopy forProvider:provider];

  selfCopy = self;
  invitationResolver = [(CSDConversationManager *)self invitationResolver];
  tuConversation = [(__CFString *)conversationCopy tuConversation];
  localMember = [(__CFString *)conversationCopy localMember];
  handle = [localMember handle];
  tuInvitationPreferences = [v12 tuInvitationPreferences];
  v21 = [invitationResolver shouldShowInvitationRingingUIForConversation:tuConversation handle:handle invitationMessagePreferences:tuInvitationPreferences];

  v76 = conversationCopy;
  invitationPreferences = [(__CFString *)conversationCopy invitationPreferences];
  tuInvitationPreferences2 = [v12 tuInvitationPreferences];
  v24 = [invitationPreferences isEqualToSet:tuInvitationPreferences2];

  v25 = sub_100004778();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    invitationPreferences2 = [(__CFString *)conversationCopy invitationPreferences];
    tuInvitationPreferences3 = [v12 tuInvitationPreferences];
    *buf = 138412546;
    v78 = invitationPreferences2;
    v79 = 2112;
    v80 = tuInvitationPreferences3;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "conversation.invitationPreferences: %@, message.tuInvitationPreferences: %@", buf, 0x16u);
  }

  tuInvitationPreferences4 = [v12 tuInvitationPreferences];
  if (([tuInvitationPreferences4 count] == 0) | v24 & 1)
  {
    type = [v12 type];

    v30 = selfCopy;
    if (type == 1)
    {
      v31 = v12;
      v32 = sub_100004778();
      v33 = v75;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        tuInvitationPreferences5 = [v12 tuInvitationPreferences];
        v35 = [tuInvitationPreferences5 count];
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

    v30 = selfCopy;
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
  featureFlags = [(CSDConversationManager *)v30 featureFlags];
  v40 = ([featureFlags oneToOneFaceTimeMyselfEnabled] ^ 1) & v14;

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
    remoteMembers = [(__CFString *)v76 remoteMembers];
    v44 = [remoteMembers count];
    *buf = 138412546;
    v78 = @"YES";
    v79 = 2048;
    v80 = v44;
    v45 = "isValidLocalHandle: %@, remoteMember count: %lu, no need to ring";
    goto LABEL_22;
  }

  featureFlags2 = [(CSDConversationManager *)v30 featureFlags];
  if ([featureFlags2 oneToOneFaceTimeMyselfEnabled] & v14)
  {
    v42 = v76;
    remoteMembers2 = [(__CFString *)v76 remoteMembers];
    v49 = [remoteMembers2 count];

    if (v49 >= 2)
    {
      v41 = sub_100004778();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      remoteMembers = [(__CFString *)v76 remoteMembers];
      v50 = [remoteMembers count];
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

  v51 = messageCopy;
  if (((v37 | messageCopy) & 1) == 0 && oldMessageCopy)
  {
    if (([(__CFString *)v42 isOneToOneModeEnabled]& 1) == 0)
    {
      activeParticipantDestinationsByIdentifier = [(__CFString *)v42 activeParticipantDestinationsByIdentifier];
      v53 = [activeParticipantDestinationsByIdentifier count];

      if (v53)
      {
        goto LABEL_34;
      }
    }

LABEL_42:
    v46 = 0;
    goto LABEL_44;
  }

  if ((v37 | messageCopy))
  {
    goto LABEL_42;
  }

LABEL_34:
  if ([v31 type] == 1)
  {
    remoteMembers3 = [(__CFString *)v42 remoteMembers];
    if ([remoteMembers3 count]== 1)
    {
      activeRemoteParticipants = [(__CFString *)v42 activeRemoteParticipants];
      if (![activeRemoteParticipants count])
      {
        localMember2 = [(__CFString *)v42 localMember];
        handle2 = [localMember2 handle];
        v65 = [v33 isEquivalentToHandle:handle2];

        if (!v65)
        {
          v46 = 1;
          goto LABEL_40;
        }

        featureFlags3 = [(CSDConversationManager *)v30 featureFlags];
        if ([featureFlags3 oneToOneFaceTimeMyselfEnabled])
        {
          remoteMembers4 = [(__CFString *)v42 remoteMembers];
          anyObject = [remoteMembers4 anyObject];
          handle3 = [anyObject handle];
          localMember3 = [(__CFString *)v42 localMember];
          handle4 = [localMember3 handle];
          v72 = [handle3 isEqualToHandle:handle4];

          if (v72)
          {
            remoteMembers3 = sub_100004778();
            if (os_log_type_enabled(remoteMembers3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, remoteMembers3, OS_LOG_TYPE_DEFAULT, "U+1 invite FaceTime myself", buf, 2u);
            }

            goto LABEL_38;
          }
        }

        else
        {
        }

        remoteMembers3 = sub_100004778();
        if (os_log_type_enabled(remoteMembers3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v78 = v42;
          _os_log_impl(&_mh_execute_header, remoteMembers3, OS_LOG_TYPE_DEFAULT, "This is a U+1 invite sent by the local account from a different device, not ringing on the local device for conversation: %@", buf, 0xCu);
        }

        v46 = 0;
        goto LABEL_39;
      }
    }

LABEL_38:
    v46 = 1;
LABEL_39:

LABEL_40:
    v51 = messageCopy;
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

    if (oldMessageCopy)
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

    activeParticipantDestinationsByIdentifier2 = [(__CFString *)v42 activeParticipantDestinationsByIdentifier];
    v61 = [activeParticipantDestinationsByIdentifier2 count];
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

- (id)_kickedOrRejectedMemberForHandle:(id)handle conversation:(id)conversation
{
  handleCopy = handle;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  kickedMembers = [conversationCopy kickedMembers];
  v10 = [kickedMembers countByEnumeratingWithState:&v32 objects:v41 count:16];
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
        objc_enumerationMutation(kickedMembers);
      }

      v14 = *(*(&v32 + 1) + 8 * v13);
      handle = [v14 handle];
      v16 = [handle isEquivalentToHandle:handleCopy];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [kickedMembers countByEnumeratingWithState:&v32 objects:v41 count:16];
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

    kickedMembers2 = [conversationCopy kickedMembers];
    *buf = 138412546;
    v38 = handleCopy;
    v39 = 2112;
    v40 = kickedMembers2;
    v26 = "handle %@ has already been kicked, conversation.kickedMembers: %@";
  }

  else
  {
LABEL_9:

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    kickedMembers = [conversationCopy rejectedMembers];
    v17 = [kickedMembers countByEnumeratingWithState:&v28 objects:v36 count:16];
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
        objc_enumerationMutation(kickedMembers);
      }

      v14 = *(*(&v28 + 1) + 8 * v20);
      handle2 = [v14 handle];
      v22 = [handle2 isEquivalentToHandle:handleCopy];

      if (v22)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [kickedMembers countByEnumeratingWithState:&v28 objects:v36 count:16];
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

    kickedMembers2 = [conversationCopy rejectedMembers];
    *buf = 138412546;
    v38 = handleCopy;
    v39 = 2112;
    v40 = kickedMembers2;
    v26 = "handle %@ has already been rejected, conversation.rejectedMembers: %@";
  }

  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);

LABEL_23:
  v23 = v14;
LABEL_24:

  return v23;
}

- (BOOL)_isActiveRemoteMemberForHandle:(id)handle conversation:(id)conversation
{
  handleCopy = handle;
  conversationCopy = conversation;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  remoteMembers = [conversationCopy remoteMembers];
  v8 = [remoteMembers countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v23 = *v30;
    v24 = conversationCopy;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(remoteMembers);
        }

        handle = [*(*(&v29 + 1) + 8 * i) handle];
        v13 = [handle isEquivalentToHandle:handleCopy];

        if (v13)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
          v15 = [activeRemoteParticipants countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                  objc_enumerationMutation(activeRemoteParticipants);
                }

                handle2 = [*(*(&v25 + 1) + 8 * j) handle];
                v20 = [handle2 isEquivalentToHandle:handleCopy];

                if (v20)
                {

                  v21 = 1;
                  conversationCopy = v24;
                  goto LABEL_21;
                }
              }

              v16 = [activeRemoteParticipants countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v10 = v23;
          conversationCopy = v24;
        }
      }

      v9 = [remoteMembers countByEnumeratingWithState:&v29 objects:v34 count:16];
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

- (id)_inactiveRemoteMemberForHandle:(id)handle conversation:(id)conversation
{
  handleCopy = handle;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  remoteMembers = [conversation remoteMembers];
  v7 = [remoteMembers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(remoteMembers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        handle = [v10 handle];
        v12 = [handle isEquivalentToHandle:handleCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [remoteMembers countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)_shouldSkipManualApprovalForHandle:(id)handle conversation:(id)conversation responseKeyData:(id)data
{
  handleCopy = handle;
  conversationCopy = conversation;
  dataCopy = data;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = [(CSDConversationManager *)self _kickedOrRejectedMemberForHandle:handleCopy conversation:conversationCopy];
  if (v12)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = handleCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Let me in requestor %@ is a handle that has already been kicked/rejected", buf, 0xCu);
    }

    [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:v12 forConversation:conversationCopy usingResponseKeyData:dataCopy approved:0 callback:0];
LABEL_9:
    v16 = 1;
    goto LABEL_10;
  }

  if ([(CSDConversationManager *)self _isActiveRemoteMemberForHandle:handleCopy conversation:conversationCopy])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      remoteMembers = [conversationCopy remoteMembers];
      *buf = 138412546;
      v26 = handleCopy;
      v27 = 2112;
      v28 = remoteMembers;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Let me in requestor %@ is active in the session. Ignore Let Me In Request,  conversation.remoteMembers: %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v18 = [(CSDConversationManager *)self _inactiveRemoteMemberForHandle:handleCopy conversation:conversationCopy];
  v16 = v18 != 0;
  if (v18)
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      remoteMembers2 = [conversationCopy remoteMembers];
      *buf = 138412546;
      v26 = handleCopy;
      v27 = 2112;
      v28 = remoteMembers2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Let me in requestor %@ is a handle that is already a member of the call; Let Me In not required, conversation.remoteMembers: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001603B0;
    v21[3] = &unk_10061CCB0;
    objc_copyWeak(&v24, buf);
    v22 = v18;
    v23 = conversationCopy;
    [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:v22 forConversation:v23 usingResponseKeyData:dataCopy approved:1 callback:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

LABEL_10:
  return v16;
}

- (BOOL)shouldIgnoreMessageForConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = conversationCopy;
  if (conversationCopy)
  {
    if (![conversationCopy state])
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
        callCapabilitiesState = [v15 callCapabilitiesState];
        v19 = 67109120;
        LODWORD(v20) = [callCapabilitiesState relayCallingAvailability];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "shouldIgnoreMessageForConversation: Still process the message: %d", &v19, 8u);
      }
    }

    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      state = [v5 state];
      v19 = 134217984;
      v20 = state;
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
      callCapabilitiesState2 = [v13 callCapabilitiesState];
      v19 = 67109120;
      LODWORD(v20) = [callCapabilitiesState2 relayCallingAvailability];
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

- (BOOL)isValidLocalHandle:(id)handle forProvider:(id)provider
{
  handleCopy = handle;
  providerCopy = provider;
  activeLocalHandles = [(CSDConversationManager *)self activeLocalHandles];
  v9 = activeLocalHandles[2]();
  v10 = [(CSDConversationManager *)self isValidLocalHandle:handleCopy activeLocalHandles:v9 provider:0];

  featureFlags = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    activeLocalHandlesForProvider = [(CSDConversationManager *)self activeLocalHandlesForProvider];
    v13 = (activeLocalHandlesForProvider)[2](activeLocalHandlesForProvider, providerCopy);
    v10 = [(CSDConversationManager *)self isValidLocalHandle:handleCopy activeLocalHandles:v13 provider:providerCopy];
  }

  return v10;
}

- (BOOL)isValidLocalHandle:(id)handle
{
  handleCopy = handle;
  activeLocalHandles = [(CSDConversationManager *)self activeLocalHandles];
  v6 = activeLocalHandles[2]();
  LOBYTE(self) = [(CSDConversationManager *)self isValidLocalHandle:handleCopy activeLocalHandles:v6 provider:0];

  return self;
}

- (BOOL)isValidLocalHandle:(id)handle activeLocalHandles:(id)handles provider:(id)provider
{
  handleCopy = handle;
  providerCopy = provider;
  if ([handles containsObject:handleCopy])
  {
    v10 = 1;
  }

  else
  {
    v10 = [(CSDConversationManager *)self isHandleLocalPseudonym:handleCopy provider:providerCopy];
  }

  return v10;
}

- (BOOL)isHandleLocalPseudonym:(id)pseudonym provider:(id)provider
{
  providerCopy = provider;
  value = [pseudonym value];
  LOBYTE(self) = [(CSDConversationManager *)self isHandleStringLocalPseudonym:value provider:providerCopy];

  return self;
}

- (BOOL)isHandleStringLocalPseudonym:(id)pseudonym provider:(id)provider
{
  pseudonymCopy = pseudonym;
  providerCopy = provider;
  v8 = pseudonymCopy;
  if ([v8 destinationIdIsPseudonym])
  {
    v9 = [[IDSURI alloc] initWithPrefixedURI:v8];
    featureFlags = [(CSDConversationManager *)self featureFlags];
    groupFacetimeAsAServiceEnabled = [featureFlags groupFacetimeAsAServiceEnabled];

    if (providerCopy && groupFacetimeAsAServiceEnabled)
    {
      v12 = +[CSDConversationProviderManager sharedInstance];
      service = [v12 serviceForProvider:providerCopy];
    }

    else
    {
      service = [(CSDConversationManager *)self service];
    }

    v13Service = [service service];
    v16 = [v13Service pseudonymForPseudonymURI:v9];
    v14 = v16 != 0;

    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v13Service2 = [service service];
      service2 = [(CSDConversationManager *)self service];
      v13Service3 = [service service];
      v21 = [v13Service3 pseudonymForPseudonymURI:v9];
      v25 = 138413314;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v13Service2;
      v31 = 2112;
      v32 = service2;
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
    v30 = providerCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "destinationID: %@, isLocalPseudonym: %@, provider: %@", &v25, 0x20u);
  }

  return v14;
}

- (id)senderIdentityUUIDForCallerIDHandle:(id)handle
{
  handleCopy = handle;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  senderIdentitiesBlock = [(CSDConversationManager *)self senderIdentitiesBlock];
  v6 = senderIdentitiesBlock[2]();

  uUID = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (uUID)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != uUID; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        handle = [v10 handle];
        v12 = [handle isEqualToHandle:handleCopy];

        if (v12)
        {
          uUID = [v10 UUID];
          goto LABEL_11;
        }
      }

      uUID = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (uUID)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return uUID;
}

- (id)callerIDHandleForSenderIdentityUUID:(id)d callerID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  senderIdentitiesBlock = [(CSDConversationManager *)self senderIdentitiesBlock];
  v9 = senderIdentitiesBlock[2]();

  handle2 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (handle2)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != handle2; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        uUID = [v13 UUID];
        v15 = [uUID isEqual:dCopy];

        if (v15)
        {
          if ([iDCopy length])
          {
            handle = [v13 handle];
            value = [handle value];
            v18 = [value isEqualToString:iDCopy];

            if (v18)
            {
              handle2 = [v13 handle];
              goto LABEL_13;
            }
          }
        }
      }

      handle2 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (handle2)
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
    v26 = iDCopy;
    v27 = 2112;
    v28 = handle2;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "callerIDHandleForSenderIdentityUUID: callerID: %@ handle: %@ for %@", buf, 0x20u);
  }

  return handle2;
}

- (id)callerIDForLocalMember:(id)member forProvider:(id)provider
{
  memberCopy = member;
  providerCopy = provider;
  handle = [memberCopy handle];
  LODWORD(self) = [(CSDConversationManager *)self isValidLocalHandle:handle forProvider:providerCopy];

  if (self)
  {
    handle2 = [memberCopy handle];
    normalizedValue = [handle2 normalizedValue];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004767E8();
    }

    normalizedValue = &stru_100631E68;
  }

  return normalizedValue;
}

- (id)localMemberForProvider:(id)provider fromHandle:(id)handle members:(id)members lightweightMembers:(id)lightweightMembers activeLocalHandles:(id)handles
{
  providerCopy = provider;
  handleCopy = handle;
  membersCopy = members;
  lightweightMembersCopy = lightweightMembers;
  handlesCopy = handles;
  v41 = membersCopy;
  v14 = [NSMutableSet setWithSet:membersCopy];
  v40 = lightweightMembersCopy;
  [v14 unionSet:lightweightMembersCopy];
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
      handle = [v20 handle];
      localCallerIDForProvider = [(CSDConversationManager *)self localCallerIDForProvider];
      v23 = (localCallerIDForProvider)[2](localCallerIDForProvider, providerCopy);
      v24 = [handle isEqual:v23];

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
          handle2 = [v32 handle];
          v34 = [(CSDConversationManager *)self isValidLocalHandle:handle2 activeLocalHandles:handlesCopy provider:providerCopy];

          if (v34)
          {
            handle3 = [v32 handle];
            v36 = [handle3 isEqualToHandle:handleCopy];

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

- (id)createConversationWithUUID:(id)d groupUUID:(id)iD messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member initiator:(id)initiator remoteMembers:(id)members pendingMembers:(id)self0 otherInvitedHandles:(id)self1 remotePushTokens:(id)self2 lightweightMembers:(id)self3 activity:(id)self4 link:(id)self5 report:(id)self6 fromStorage:(BOOL)self7 avMode:(unint64_t)self8 presentationMode:(unint64_t)self9 provider:(id)provider screenSharingRequest:(id)request isInitiator:(BOOL)isInitiator isOldMessage:(BOOL)message
{
  createdCopy = created;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  memberCopy = member;
  initiatorCopy = initiator;
  membersCopy = members;
  pendingMembersCopy = pendingMembers;
  handlesCopy = handles;
  tokensCopy = tokens;
  lightweightMembersCopy = lightweightMembers;
  selfCopy2 = self;
  activityCopy = activity;
  linkCopy = link;
  reportCopy = report;
  providerCopy = provider;
  requestCopy = request;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v32 = sub_100004778();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v162 = dCopy;
    v163 = 2112;
    v164 = iDCopy;
    v165 = 2112;
    v166 = memberCopy;
    v167 = 2048;
    modeCopy = mode;
    v169 = 1024;
    storageCopy = storage;
    v171 = 2112;
    v172 = reportCopy;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "UUID: %@ groupUUID: %@ localMember: %@ avMode: %lu, fromStorage: %d report: %@", buf, 0x3Au);
  }

  v33 = sub_100004778();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v162 = dCopy;
    v163 = 2112;
    v164 = membersCopy;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "UUID: %@ remoteMembers: %@", buf, 0x16u);
  }

  v145 = +[NSMutableSet set];
  v129 = providerCopy;
  v122 = lightweightMembersCopy;
  if ([tokensCopy count])
  {
    v34 = sub_100004778();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [tokensCopy allObjects];
      v36 = TULoggableStringForHandles();
      *buf = 138412546;
      v162 = dCopy;
      v163 = 2112;
      v164 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Asked to invite specific conversationUUID: %@ participantDestinationIDs: %@", buf, 0x16u);
    }

    allObjects2 = [tokensCopy allObjects];
    [v145 addObjectsFromArray:allObjects2];
  }

  else
  {
    if (lightweightMembersCopy)
    {
      v38 = [membersCopy setByAddingObjectsFromSet:lightweightMembersCopy];
    }

    else
    {
      v38 = membersCopy;
    }

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    allObjects2 = v38;
    v39 = [allObjects2 countByEnumeratingWithState:&v154 objects:v160 count:16];
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
            objc_enumerationMutation(allObjects2);
          }

          v43 = [IDSDestination destinationWithTUConversationMember:*(*(&v154 + 1) + 8 * i)];
          [v145 addObject:v43];
        }

        v40 = [allObjects2 countByEnumeratingWithState:&v154 objects:v160 count:16];
      }

      while (v40);
    }

    providerCopy = v129;
  }

  if ([membersCopy count] != 1)
  {
    goto LABEL_23;
  }

  featureFlags = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags uPlusOneSessionWithCapabilitiesEnabled])
  {
    serverBag = [(CSDConversationManager *)self serverBag];
    isUPlusOneSessionCapabilitiesEnabled = [serverBag isUPlusOneSessionCapabilitiesEnabled];

    if (isUPlusOneSessionCapabilitiesEnabled)
    {
LABEL_23:
      v47 = [IDSDestination destinationWithTUConversationMember:memberCopy];
      [v145 addObject:v47];
      goto LABEL_52;
    }
  }

  else
  {
  }

  pushTokenForSelf = [(CSDConversationManager *)self pushTokenForSelf];
  idsDestination = [memberCopy idsDestination];
  v47 = IDSCopyIDForTokenWithID();

  service = [(CSDConversationManager *)self service];
  v51 = IDSRegistrationPropertySupportsSelfOneToOneInvites;
  handle = [memberCopy handle];
  v53 = [service deviceDestinationsWithCapability:v51 localHandle:handle];

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

  providerCopy = v129;
  if ([v53 count])
  {
    v118 = v47;
    v126 = membersCopy;
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
          destinationURIs = [v58 destinationURIs];
          v60 = [destinationURIs countByEnumeratingWithState:&v146 objects:v158 count:16];
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
                  objc_enumerationMutation(destinationURIs);
                }

                v64 = *(*(&v146 + 1) + 8 * j);
                handle2 = [memberCopy handle];
                value = [handle2 value];
                v67 = [v64 rangeOfString:value];

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

              v61 = [destinationURIs countByEnumeratingWithState:&v146 objects:v158 count:16];
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

    membersCopy = v126;
    selfCopy2 = self;
    providerCopy = v129;
    v47 = v118;
  }

  if (v47)
  {
    [v145 addObject:v47];
  }

  else
  {
    v72 = [IDSDestination destinationWithTUConversationMember:memberCopy];
    [v145 addObject:v72];
  }

LABEL_52:
  v73 = sub_100004778();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    service2 = [(CSDConversationManager *)selfCopy2 service];
    allObjects3 = [v145 allObjects];
    v76 = TULoggableStringForHandles();
    *buf = 138413058;
    v162 = dCopy;
    v163 = 2112;
    v164 = service2;
    v165 = 2112;
    v166 = providerCopy;
    v167 = 2112;
    modeCopy = v76;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ service: %@, provider: %@, participantDestinationIDs: %@", buf, 0x2Au);
  }

  v143 = [(CSDConversationManager *)selfCopy2 callerIDForLocalMember:memberCopy forProvider:providerCopy];
  uUIDString = [uIDCopy UUIDString];
  v78 = uUIDString;
  if (uUIDString)
  {
    uUIDString2 = uUIDString;
  }

  else
  {
    uUIDString2 = [iDCopy UUIDString];
  }

  v141 = uUIDString2;

  if ([membersCopy count] == 1)
  {
    allObjects4 = [membersCopy allObjects];
    firstObject = [allObjects4 firstObject];
    handle3 = [firstObject handle];
    value2 = [handle3 value];
    v84 = [value2 destinationIdIsTemporary] ^ 1;
    if (linkCopy)
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

  featureFlags2 = [(CSDConversationManager *)selfCopy2 featureFlags];
  if ([featureFlags2 oneToOneFaceTimeMyselfEnabled])
  {
    serverBag2 = [(CSDConversationManager *)selfCopy2 serverBag];
    isFaceTimeMyselfEnabled = [serverBag2 isFaceTimeMyselfEnabled];

    if ((v85 | isFaceTimeMyselfEnabled ^ 1))
    {
      goto LABEL_70;
    }

    if ([membersCopy count] || !objc_msgSend(tokensCopy, "count"))
    {
      v85 = 0;
      goto LABEL_70;
    }

    [NSSet setWithObject:memberCopy];
    featureFlags2 = membersCopy;
    membersCopy = v85 = 1;
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
    v164 = membersCopy;
    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "isOneToOneModeEnabled: %@, remoteMembers: %@", buf, 0x16u);
  }

  featureFlags3 = [(CSDConversationManager *)selfCopy2 featureFlags];
  groupFacetimeAsAServiceEnabled = [featureFlags3 groupFacetimeAsAServiceEnabled];

  if (providerCopy && groupFacetimeAsAServiceEnabled)
  {
    v93 = +[CSDConversationProviderManager sharedInstance];
    service3 = [v93 serviceForProvider:providerCopy];
  }

  else
  {
    service3 = [(CSDConversationManager *)selfCopy2 service];
  }

  v139 = [[CSDConversationABTestConfiguration alloc] initWithGroupUUID:iDCopy];
  v127 = membersCopy;
  v119 = v85;
  if (requestCopy)
  {
    featureFlags4 = [(CSDConversationManager *)selfCopy2 featureFlags];
    requestToScreenShareEnabled = [featureFlags4 requestToScreenShareEnabled];
  }

  else
  {
    requestToScreenShareEnabled = 0;
  }

  groupSessionProviderCreationBlock = [(CSDConversationManager *)selfCopy2 groupSessionProviderCreationBlock];
  allObjects5 = [v145 allObjects];
  v99 = [service3 accountWithCallerID:v143];
  queue2 = [(CSDConversationManager *)selfCopy2 queue];
  v101 = [(CSDConversationABTestConfiguration *)v139 copy];
  HIBYTE(v117) = requestToScreenShareEnabled;
  LOBYTE(v117) = mode == 0;
  v102 = (groupSessionProviderCreationBlock)[2](groupSessionProviderCreationBlock, v141, allObjects5, v143, v99, queue2, v119, memberCopy, v117, v101, isInitiator);

  v103 = [[CSDIDSGroupSession alloc] initWithGroupSessionProvider:v102];
  conversationCreationBlock = [(CSDConversationManager *)self conversationCreationBlock];
  queue3 = [(CSDConversationManager *)self queue];
  v106 = [(CSDConversationABTestConfiguration *)v139 copy];
  v107 = (conversationCreationBlock)[2](conversationCreationBlock, queue3, dCopy, iDCopy, v103, uIDCopy, createdCopy, memberCopy, initiatorCopy, v127, pendingMembersCopy, handlesCopy, v122, tokensCopy, activityCopy, linkCopy, requestCopy, reportCopy, storage, mode, presentationMode, v106, message);

  [v107 setDelegate:self];
  [v107 setProvider:v129];
  if (TUSimulatedModeEnabled())
  {
    [v107 setAvcSessionCreationBlock:&stru_10061CCF0];
  }

  reportingController = [(CSDConversationManager *)self reportingController];
  tuConversation = [v107 tuConversation];
  [reportingController createConversationReportingSession:tuConversation];

  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  uUID = [v107 UUID];
  [mutableConversationsByUUID setObject:v107 forKeyedSubscript:uUID];

  persistenceController = [(CSDConversationManager *)self persistenceController];
  [persistenceController updateConversation:v107];

  featureFlags5 = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags5 groupFacetimeAsAServiceEnabled])
  {
    v114 = [v129 supportsLinks] ^ 1;
  }

  else
  {
    v114 = 0;
  }

  if (linkCopy && (v114 & 1) == 0)
  {
    v115 = [NSSet setWithObject:IDSRegistrationPropertySupportsGondola];
    [v107 addRequiredCapabilities:v115 requiredLackOfCapabilities:0];
  }

  [(CSDConversationManager *)self notifyDelegatesOfCreatedConversation:v107];

  return v107;
}

- (id)pendingConversationUUIDWithPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162458;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v10 = pseudonymCopy;
  v11 = &v12;
  v6 = pseudonymCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)removePendingConversationWithPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162708;
  block[3] = &unk_10061C678;
  v10 = pseudonymCopy;
  v11 = &v12;
  block[4] = self;
  v6 = pseudonymCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_removePendingConversationWithPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  mutablePendingConversationsByPseudonym = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  v7 = [mutablePendingConversationsByPseudonym objectForKeyedSubscript:pseudonymCopy];

  if (v7)
  {
    mutablePendingConversationsByPseudonym2 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
    v9 = [mutablePendingConversationsByPseudonym2 objectForKeyedSubscript:pseudonymCopy];

    mutablePendingConversationsByPseudonym3 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
    [mutablePendingConversationsByPseudonym3 setObject:0 forKeyedSubscript:pseudonymCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_removePendingConversationsWithTemporaryGroupUUIDIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  mutablePendingConversationsByPseudonym = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  v6 = [mutablePendingConversationsByPseudonym countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(mutablePendingConversationsByPseudonym);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        mutablePendingConversationsByPseudonym2 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
        v11 = [mutablePendingConversationsByPseudonym2 objectForKeyedSubscript:v9];

        temporaryGroupUUID = [v11 temporaryGroupUUID];
        v13 = [temporaryGroupUUID isEqual:necessaryCopy];

        if (v13)
        {
          v6 = [(CSDConversationManager *)self _removePendingConversationWithPseudonym:v9];
          [(CSDConversationManager *)self notifyDelegatesOfRemovedConversationWithUUID:necessaryCopy];

          goto LABEL_11;
        }
      }

      v6 = [mutablePendingConversationsByPseudonym countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162A4C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (CSDConversation)activeConversation
{
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  allValues = [mutableConversationsByUUID allValues];

  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 state] == 3)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)conversationWithGroupUUID:(id)d andProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  allValues = [mutableConversationsByUUID allValues];

  v10 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        featureFlags = [(CSDConversationManager *)self featureFlags];
        groupFacetimeAsAServiceEnabled = [featureFlags groupFacetimeAsAServiceEnabled];

        groupUUID = [v14 groupUUID];
        v18 = [groupUUID isEqual:dCopy];
        if (v18)
        {
          v19 = groupFacetimeAsAServiceEnabled == 0;
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
          provider = [v14 provider];
          v22 = [provider isEqualToConversationProvider:providerCopy];

          if (v22)
          {
LABEL_17:
            v23 = v14;
            goto LABEL_18;
          }
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
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

- (id)conversationWithGroupUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  allValues = [mutableConversationsByUUID allValues];

  v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        groupUUID = [v11 groupUUID];
        v13 = [groupUUID isEqual:dCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)conversationWithGroupUUID:(id)d orRepresentedByRemoteMembers:(id)members andLink:(id)link
{
  dCopy = d;
  membersCopy = members;
  linkCopy = link;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = [(CSDConversationManager *)self conversationWithGroupUUID:dCopy];
  if (!v12)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
    allValues = [mutableConversationsByUUID allValues];

    v15 = [allValues countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        if ([v20 isRepresentedByRemoteMembers:membersCopy andLink:linkCopy])
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
          v16 = [allValues countByEnumeratingWithState:&v24 objects:v32 count:16];
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
      groupUUID = [v12 groupUUID];
    }

    else
    {
      groupUUID = 0;
    }

    *buf = 138412546;
    v29 = dCopy;
    v30 = 2112;
    v31 = groupUUID;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "found conversation from groupUUID: %@, conversation: %@", buf, 0x16u);
    if (v12)
    {
    }
  }

  return v12;
}

- (id)conversationRepresentedByRemoteMembers:(id)members andLink:(id)link
{
  membersCopy = members;
  linkCopy = link;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100028694;
  v21 = sub_1000328D4;
  v22 = 0;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001632EC;
  v13[3] = &unk_10061CD18;
  v13[4] = self;
  v14 = membersCopy;
  v15 = linkCopy;
  v16 = &v17;
  v9 = linkCopy;
  v10 = membersCopy;
  dispatch_sync(queue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)activeApprovedConversationWithLink:(id)link
{
  linkCopy = link;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163564;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v10 = linkCopy;
  v11 = &v12;
  v6 = linkCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)pendingConversationWithPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  mutablePendingConversationsByPseudonym = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  allValues = [mutablePendingConversationsByPseudonym allValues];

  v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        link = [v11 link];
        pseudonym = [link pseudonym];
        v14 = [pseudonym isEqual:pseudonymCopy];

        if (v14)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)findConversationLinkMatchingPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
        pseudonym = [v10 pseudonym];
        v12 = [pseudonym isEqual:pseudonymCopy];

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

- (id)conversationLinkForPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028694;
  v16 = sub_1000328D4;
  v17 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163B2C;
  block[3] = &unk_10061C678;
  v10 = pseudonymCopy;
  v11 = &v12;
  block[4] = self;
  v6 = pseudonymCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)conversationLinkForGroupUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
        groupUUID = [v10 groupUUID];
        v12 = [groupUUID isEqual:dCopy];

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

- (id)createConversationIfNecessaryWithUUID:(id)d groupUUID:(id)iD messagesGroupUUID:(id)uID locallyCreated:(BOOL)created localMember:(id)member remoteMembers:(id)members pendingMembers:(id)pendingMembers otherInvitedHandles:(id)self0 remotePushTokens:(id)self1 lightweightMembers:(id)self2 link:(id)self3 activity:(id)self4 avMode:(unint64_t)self5 presentationMode:(unint64_t)self6 provider:(id)self7 screenSharingRequest:(id)self8
{
  createdCopy = created;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  memberCopy = member;
  membersCopy = members;
  pendingMembersCopy = pendingMembers;
  handlesCopy = handles;
  tokensCopy = tokens;
  lightweightMembersCopy = lightweightMembers;
  linkCopy = link;
  activityCopy = activity;
  providerCopy = provider;
  requestCopy = request;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v30 = sub_100004778();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v50 = dCopy;
    v51 = 2112;
    v52 = iDCopy;
    v53 = 2112;
    v54 = memberCopy;
    v55 = 2048;
    modeCopy = mode;
    v57 = 2112;
    v58 = providerCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "UUID: %@ groupUUD: %@ localMember: %@, avMode: %lu, provider: %@", buf, 0x34u);
  }

  v31 = sub_100004778();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = dCopy;
    v51 = 2112;
    v52 = membersCopy;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "UUID: %@ remoteMembers: %@", buf, 0x16u);
  }

  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  v33 = [mutableConversationsByUUID objectForKeyedSubscript:dCopy];

  if (!v33)
  {
    v34 = objc_alloc_init(TUConversationReport);
    [memberCopy handle];
    v35 = membersCopy;
    v37 = v36 = pendingMembersCopy;
    LOWORD(v40) = 1;
    LOBYTE(v39) = 0;
    v33 = [(CSDConversationManager *)self createConversationWithUUID:dCopy groupUUID:iDCopy messagesGroupUUID:uIDCopy locallyCreated:createdCopy localMember:memberCopy initiator:v37 remoteMembers:v35 pendingMembers:v36 otherInvitedHandles:handlesCopy remotePushTokens:tokensCopy lightweightMembers:lightweightMembersCopy activity:activityCopy link:linkCopy report:v34 fromStorage:v39 avMode:mode presentationMode:presentationMode provider:providerCopy screenSharingRequest:requestCopy isInitiator:v40 isOldMessage:?];

    pendingMembersCopy = v36;
    membersCopy = v35;
  }

  return v33;
}

- (id)conversationWithGroupUUID:(id)d orMemberIdentifiers:(id)identifiers orRemoteMembers:(id)members andLink:(id)link andVideo:(BOOL)video
{
  videoCopy = video;
  dCopy = d;
  identifiersCopy = identifiers;
  membersCopy = members;
  linkCopy = link;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = [(CSDConversationManager *)self conversationWithGroupUUID:dCopy];
  if (!v17)
  {
    v42 = dCopy;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
    allValues = [mutableConversationsByUUID allValues];

    v34 = [allValues countByEnumeratingWithState:&v47 objects:v52 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v38 = *(*(&v47 + 1) + 8 * i);
          if ([v38 isRepresentedByRemoteMembers:membersCopy andLink:linkCopy] && objc_msgSend(v38, "isVideo") == videoCopy)
          {
            v40 = sub_100004778();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              sub_100476824();
            }

            v31 = v38;
LABEL_36:
            dCopy = v42;
            goto LABEL_37;
          }
        }

        v35 = [allValues countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
    dCopy = v42;
  }

  serverBag = [(CSDConversationManager *)self serverBag];
  if ([serverBag isParticipantIDToURIIncludedInPush])
  {
    participantIDToURIRemovedEnabled = 0;
  }

  else
  {
    featureFlags = [(CSDConversationManager *)self featureFlags];
    participantIDToURIRemovedEnabled = [featureFlags participantIDToURIRemovedEnabled];
  }

  if (!v17 && (participantIDToURIRemovedEnabled & 1) == 0)
  {
    v42 = dCopy;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    mutableConversationsByUUID2 = [(CSDConversationManager *)self mutableConversationsByUUID];
    allValues2 = [mutableConversationsByUUID2 allValues];

    v23 = [allValues2 countByEnumeratingWithState:&v43 objects:v51 count:16];
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
            objc_enumerationMutation(allValues2);
          }

          if (identifiersCopy)
          {
            v27 = *(*(&v43 + 1) + 8 * j);
            memberIdentifiers = [v27 memberIdentifiers];
            v29 = [memberIdentifiers isEqualToSet:identifiersCopy];

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

        v24 = [allValues2 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
    dCopy = v42;
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

- (void)notifyDelegatesOfMessage:(id)message fromHandle:(id)handle forConversation:(id)conversation withUpdate:(id)update shouldRing:(BOOL)ring
{
  messageCopy = message;
  handleCopy = handle;
  conversationCopy = conversation;
  updateCopy = update;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v19 = [delegateToQueue objectForKey:v16];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100164660;
          block[3] = &unk_10061BCB0;
          block[4] = v16;
          v28 = tuConversation;
          selfCopy = self;
          v30 = messageCopy;
          v31 = handleCopy;
          v32 = updateCopy;
          ringCopy = ring;
          v20 = tuConversation;
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

- (void)notifyDelegatesOfNewConversation:(id)conversation fromHandle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v14 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001649CC;
          block[3] = &unk_10061A450;
          block[4] = v11;
          v20 = tuConversation;
          selfCopy = self;
          v22 = handleCopy;
          v15 = tuConversation;
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

- (void)notifyDelegatesOfCreatedConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v12 = [delegateToQueue objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100164D08;
          block[3] = &unk_100619E58;
          block[4] = v9;
          v17 = tuConversation;
          selfCopy = self;
          v13 = tuConversation;
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

- (void)notifyDelegatesOfAVModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v14 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100165050;
          block[3] = &unk_10061BE60;
          block[4] = v11;
          v21 = tuConversation;
          selfCopy = self;
          changedCopy = changed;
          modeCopy = mode;
          v15 = tuConversation;
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

- (void)notifyDelegatesOfRemovedConversationWithUUID:(id)d
{
  dCopy = d;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v5 = [delegateToQueue countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(delegateToQueue);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v11 = [delegateToQueue2 objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001654A4;
          block[3] = &unk_100619E58;
          block[4] = v9;
          block[5] = self;
          v29 = dCopy;
          dispatch_async(v11, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [delegateToQueue countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  observerStorage = [(CSDConversationManager *)self observerStorage];
  observerToQueue = [observerStorage observerToQueue];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = observerToQueue;
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
          v23 = dCopy;
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

- (void)notifyDelegatesOfTrackedPendingMember:(id)member forConversationLink:(id)link
{
  memberCopy = member;
  linkCopy = link;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v8 = [delegateToQueue countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(delegateToQueue);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v14 = [delegateToQueue2 objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001656C8;
          block[3] = &unk_10061A450;
          block[4] = v12;
          block[5] = self;
          v18 = memberCopy;
          v19 = linkCopy;
          dispatch_async(v14, block);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [delegateToQueue countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)notifyDelegatesOfUpdatePendingConversations
{
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  _incomingPendingConversationsByGroupUUID = [(CSDConversationManager *)self _incomingPendingConversationsByGroupUUID];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v5 = [delegateToQueue countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(delegateToQueue);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v11 = [delegateToQueue2 objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001658B8;
          block[3] = &unk_100619E58;
          block[4] = v9;
          block[5] = self;
          v14 = _incomingPendingConversationsByGroupUUID;
          dispatch_async(v11, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [delegateToQueue countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)notifyDelegatesOfChangedLinkDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if ([descriptorsCopy count])
  {
    v5 = [TUConversationLink alloc];
    firstObject = [descriptorsCopy firstObject];
    v7 = [v5 initWithDescriptor:firstObject];

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = descriptorsCopy;
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

- (void)notifyDelegatesOfChangedLink:(id)link conversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    linkManager = [(CSDConversationManager *)self linkManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100165AEC;
    v8[3] = &unk_10061CD40;
    v8[4] = self;
    v9 = conversationCopy;
    [linkManager activatedLinksWithCompletionHandler:v8];
  }
}

- (void)notifyDelegatesOfRemoteScreenShareAttributes:(id)attributes isLocallySharing:(BOOL)sharing
{
  attributesCopy = attributes;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversationManager *)self featureFlags];
  supportsScreenSharing = [featureFlags supportsScreenSharing];

  if (supportsScreenSharing)
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
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v16 = [delegateToQueue objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10016619C;
          block[3] = &unk_10061BE38;
          block[4] = v14;
          block[5] = self;
          v19 = attributesCopy;
          sharingCopy = sharing;
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

- (void)notifyDelegatesOfRemoteScreenShareEndedWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversationManager *)self featureFlags];
  supportsScreenSharing = [featureFlags supportsScreenSharing];

  if (supportsScreenSharing)
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
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v14 = [delegateToQueue objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001663D8;
          block[3] = &unk_100619E58;
          block[4] = v12;
          block[5] = self;
          v17 = reasonCopy;
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

- (void)notifyDelegatesOfLetMeInRejectedForPendingConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  tuConversation = [conversationCopy tuConversation];
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
        delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
        v13 = [delegateToQueue objectForKey:v11];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10016660C;
        block[3] = &unk_100619E58;
        block[4] = v11;
        v16 = tuConversation;
        selfCopy = self;
        dispatch_async(v13, block);
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)notifyDelegatesOfInvalidLinkForPendingConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  tuConversation = [conversationCopy tuConversation];
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
        delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
        v13 = [delegateToQueue objectForKey:v11];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100166944;
        block[3] = &unk_100619E58;
        block[4] = v11;
        v16 = tuConversation;
        selfCopy = self;
        dispatch_async(v13, block);
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)notifyDelegatesOf:(id)of removedScreenShareRequest:(id)request
{
  ofCopy = of;
  requestCopy = request;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
            v29 = ofCopy;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "notifyDelegatesOfRemovedScreenShareRequest conversation: %@", buf, 0xCu);
          }

          tuConversation = [ofCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v16 = [delegateToQueue objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100166D18;
          block[3] = &unk_10061A450;
          block[4] = v12;
          v21 = tuConversation;
          selfCopy = self;
          v23 = requestCopy;
          v17 = tuConversation;
          dispatch_async(v16, block);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }
}

- (void)handleConversation:(id)conversation receivedBlobRecoveryRequest:(id)request fromHandle:(id)handle
{
  conversationCopy = conversation;
  requestCopy = request;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  requestBlobRecoveryOptions = [requestCopy requestBlobRecoveryOptions];
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 67109378;
    *v25 = requestBlobRecoveryOptions;
    *&v25[4] = 2112;
    *&v25[6] = handleCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handleConversation:receivedBlobRecoveryRequest:fromHandle: options: %u from: %@", &v24, 0x12u);
  }

  v14 = TUCopyIDSCanonicalAddressForHandle();
  v15 = [NSArray arrayWithObject:v14];
  v16 = [conversationCopy localConversationParticipantWithDataToSendToDestinationIDs:v15];

  if (v16)
  {
    v17 = [CSDMessagingConversationMessage alloc];
    groupUUID = [conversationCopy groupUUID];
    v19 = [(CSDMessagingConversationMessage *)v17 initWithType:5 groupUUID:groupUUID link:0];

    v20 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v16];
    if ([requestCopy hasRequestBlobRecoveryOptions] && (requestBlobRecoveryOptions & 1) == 0)
    {
      [v20 setAvcData:0];
    }

    [v19 addActiveParticipants:v20];
    data = [v19 data];
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      *v25 = v19;
      *&v25[8] = 2112;
      *&v25[10] = handleCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "handleConversation:receivedBlobRecoveryRequest:fromHandle: Sending message: %@ to: %@", &v24, 0x16u);
    }

    [(CSDConversationManager *)self sendData:data onConversation:conversationCopy toHandle:handleCopy isBlobResponse:1];
  }

  else
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [conversationCopy UUID];
      v24 = 138412290;
      *v25 = uUID;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] handleConversation:receivedBlobRecoveryRequest:fromHandle: No local participant for conversation UUID: %@", &v24, 0xCu);
    }
  }
}

- (void)handleConversation:(id)conversation receivedBlobRecoveryResponse:(id)response fromHandle:(id)handle
{
  conversationCopy = conversation;
  responseCopy = response;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = handleCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "handleConversation:receivedBlobRecoveryResponse:fromHandle: from: %@", &v25, 0xCu);
  }

  activeParticipants = [responseCopy activeParticipants];
  firstObject = [activeParticipants firstObject];
  csdConversationParticipant = [firstObject csdConversationParticipant];

  if (!csdConversationParticipant)
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = responseCopy;
      v23 = "[WARN] handleConversation:receivedBlobRecoveryResponse:fromHandle: Could not find participant in message: %@";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, &v25, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  handle = [csdConversationParticipant handle];
  v17 = [handle isEqualToHandle:handleCopy];

  if (!v17)
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      handle2 = [csdConversationParticipant handle];
      v25 = 138412546;
      v26 = handle2;
      v27 = 2112;
      v28 = handleCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] handleConversation:receivedBlobRecoveryResponse:fromHandle: %@ <!===> %@", &v25, 0x16u);
    }

    goto LABEL_15;
  }

  avcData = [csdConversationParticipant avcData];
  if (!avcData || (v19 = avcData, [csdConversationParticipant avcData], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, v19, !v21))
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = responseCopy;
      v23 = "[WARN] handleConversation:receivedBlobRecoveryResponse: could not add or update participant: %@";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  [conversationCopy addActiveParticipant:csdConversationParticipant];
LABEL_16:
}

- (void)handleConversationHandoffRecommendationChangedNotification:(id)notification
{
  object = [notification object];
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016749C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = object;
  v6 = object;
  dispatch_async(queue, v7);
}

- (void)updateConversationHandoffEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  selfCopy = self;
  lockdownModeEnabled = [(CSDConversationManager *)self lockdownModeEnabled];
  v7 = lockdownModeEnabled[2]();

  if (v7)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = eligibilityCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not updating handoff eligibility %@ because lockdown mode is enabled", buf, 0xCu);
    }

    goto LABEL_50;
  }

  v9 = sub_100004778();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (eligibilityCopy)
  {
    if (v10)
    {
      conversationGroupUUID = [eligibilityCopy conversationGroupUUID];
      association = [eligibilityCopy association];
      identifier = [association identifier];
      if ([eligibilityCopy isUplinkMuted])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138413058;
      if ([eligibilityCopy isSendingVideo])
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v61 = conversationGroupUUID;
      v62 = 2048;
      v63 = identifier;
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
  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  allValues = [mutableConversationsByUUID allValues];

  v18 = allValues;
  v19 = [allValues countByEnumeratingWithState:&v54 objects:v59 count:16];
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
        remoteMembers = [v24 remoteMembers];
        if ([remoteMembers count] >= 2)
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

        isVideoEnabled = [v24 isVideoEnabled];

        if ((isVideoEnabled & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (eligibilityCopy)
      {
        groupUUID = [v24 groupUUID];
        conversationGroupUUID2 = [eligibilityCopy conversationGroupUUID];
        v27 = [groupUUID isEqual:conversationGroupUUID2];

        if (!v27)
        {
          goto LABEL_32;
        }

        [v24 setHandoffEligibility:eligibilityCopy];
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
        handoffEligibility = [v24 handoffEligibility];

        if (!handoffEligibility)
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
  obj = [(CSDConversationManager *)selfCopy delegateToQueue];
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
        tuConversation = [v8 tuConversation];
        delegateToQueue = [(CSDConversationManager *)selfCopy delegateToQueue];
        v43 = [delegateToQueue objectForKey:v40];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100167AAC;
        block[3] = &unk_100619E58;
        block[4] = v40;
        v48 = tuConversation;
        v49 = selfCopy;
        v44 = tuConversation;
        dispatch_async(v43, block);
      }

      v37 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v37);
  }

LABEL_50:
}

- (void)handleConversationHandoffRouteIdentifierChangedNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167CE4;
  block[3] = &unk_10061A600;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)postSessionStartedForSession:(id)session originator:(id)originator conversation:(id)conversation
{
  sessionCopy = session;
  originatorCopy = originator;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [sessionCopy UUID];
    v18 = 138412546;
    v19 = originatorCopy;
    v20 = 2112;
    v21 = uUID;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Posting session started event from participant %@ for session %@", &v18, 0x16u);
  }

  v14 = [TUConversationActivityEvent alloc];
  uUID2 = [sessionCopy UUID];
  v16 = [v14 initWithSessionUUID:uUID2 originator:originatorCopy type:12];

  [v16 setSession:sessionCopy];
  conversationNoticeManger = [(CSDConversationManager *)self conversationNoticeManger];
  [conversationNoticeManger conversation:conversationCopy receivedActivitySessionEvent:v16];
}

- (void)postEndEventForSession:(id)session originator:(id)originator conversation:(id)conversation
{
  sessionCopy = session;
  originatorCopy = originator;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [sessionCopy UUID];
    v18 = 138412546;
    v19 = originatorCopy;
    v20 = 2112;
    v21 = uUID;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Posting session ended event from participant %@ for session %@", &v18, 0x16u);
  }

  v14 = [TUConversationActivityEvent alloc];
  uUID2 = [sessionCopy UUID];
  v16 = [v14 initWithSessionUUID:uUID2 originator:originatorCopy type:13];

  [v16 setSession:sessionCopy];
  conversationNoticeManger = [(CSDConversationManager *)self conversationNoticeManger];
  [conversationNoticeManger conversation:conversationCopy receivedActivitySessionEvent:v16];
}

- (id)temporaryFilePath
{
  v2 = NSTemporaryDirectory();
  v3 = +[NSString stringGUID];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (id)createActivitySession:(id)session onConversation:(id)conversation fromHandle:(id)handle
{
  sessionCopy = session;
  conversationCopy = conversation;
  handleCopy = handle;
  v10 = [conversationCopy memberWithHandle:handleCopy];
  association = [v10 association];
  if (association && (v12 = association, [v10 association], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isPrimary"), v13, v12, (v14 & 1) == 0))
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [conversationCopy UUID];
      association2 = [v10 association];
      v28 = 138413058;
      v29 = sessionCopy;
      v30 = 2112;
      v31 = uUID;
      v32 = 2112;
      v33 = handleCopy;
      v34 = 2112;
      v35 = association2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Asked to create ActivitySession %@ on conversation UUID: %@ for fromHandle: %@ using association: %@", &v28, 0x2Au);
    }

    association3 = [v10 association];
    handle = [association3 handle];

    v22 = [CSDMessagingHandle handleWithTUHandle:handle];
    activity = [sessionCopy activity];
    [activity setOriginatorHandle:v22];
  }

  else
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [conversationCopy UUID];
      v28 = 138412802;
      v29 = sessionCopy;
      v30 = 2112;
      v31 = uUID2;
      v32 = 2112;
      v33 = handleCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Asked to create ActivitySession %@ on conversation UUID: %@ with trusted fromHandle: %@", &v28, 0x20u);
    }

    handle = handleCopy;
  }

  v24 = [CSDMessagingHandle handleWithTUHandle:handle];
  activity2 = [sessionCopy activity];
  [activity2 setFromHandle:v24];

  v26 = [sessionCopy createActivitySessionOnConversation:conversationCopy];

  return v26;
}

- (void)handleEncryptedMessageWithin:(id)within fromHandle:(id)handle context:(id)context
{
  withinCopy = within;
  handleCopy = handle;
  contextCopy = context;
  if (![withinCopy hasEncryptedMessage] || (objc_msgSend(withinCopy, "hasEnclosedEncryptedType") & 1) == 0)
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

  enclosedEncryptedType = [withinCopy enclosedEncryptedType];
  if (enclosedEncryptedType == 16)
  {
    [(CSDConversationManager *)self handleEncryptedLetMeInResponse:withinCopy fromHandle:handleCopy context:contextCopy];
    goto LABEL_10;
  }

  if (enclosedEncryptedType != 10)
  {
    v12 = sub_100004778();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v16[0] = 67109120;
    v16[1] = [withinCopy enclosedEncryptedType];
    v13 = "[WARN] ConversationMessage of type Encrypted with enclosed type of %d which we do not have support for, dropping.";
    v14 = v12;
    v15 = 8;
    goto LABEL_8;
  }

  [(CSDConversationManager *)self handleEncryptedLetMeInRequest:withinCopy fromHandle:handleCopy context:contextCopy];
LABEL_10:
}

- (void)handleEncryptedLetMeInRequest:(id)request fromHandle:(id)handle context:(id)context
{
  requestCopy = request;
  handleCopy = handle;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = handleCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received Encrypted message with enclosed type of LetMeInRequest from handle %@", buf, 0xCu);
    }

    csd_pseudonym = [contextCopy csd_pseudonym];
    if ([csd_pseudonym length])
    {
      v14 = [TUHandle normalizedGenericHandleForValue:csd_pseudonym];
      if (v14)
      {
        linkManager = [(CSDConversationManager *)self linkManager];
        encryptedMessage = [requestCopy encryptedMessage];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100168D78;
        v18[3] = &unk_10061CD90;
        v18[4] = self;
        v14 = v14;
        v19 = v14;
        v20 = handleCopy;
        v21 = contextCopy;
        [linkManager decryptLetMeInRequest:encryptedMessage pseudonym:v14 fromHandle:v20 completionHandler:v18];
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

- (void)handleEncryptedLetMeInResponse:(id)response fromHandle:(id)handle context:(id)context
{
  responseCopy = response;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    tuConversationLink = [responseCopy tuConversationLink];
    v11 = sub_100004778();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!tuConversationLink)
    {
      if (!v12)
      {
LABEL_26:

        goto LABEL_27;
      }

      link = [responseCopy link];
      *buf = 138412290;
      v38 = link;
      v23 = "[WARN] Provided link is %@, which was not a valid TUConversationLink.";
      v24 = v11;
      goto LABEL_24;
    }

    if (v12)
    {
      *buf = 138412290;
      v38 = handleCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received Encrypted message with enclosed type of LetMeInResponse from handle %@", buf, 0xCu);
    }

    pseudonym = [tuConversationLink pseudonym];
    v11 = [(CSDConversationManager *)self pendingConversationWithPseudonym:pseudonym];

    if (v11)
    {
      if ([v11 letMeInRequestState]== 2)
      {
        letMeInKeyAgreement = [v11 letMeInKeyAgreement];
        if (!letMeInKeyAgreement || (v15 = letMeInKeyAgreement, -[NSObject letMeInKeyAgreement](v11, "letMeInKeyAgreement"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isExhausted], v16, v15, v17))
        {
          link = sub_100004778();
          if (os_log_type_enabled(link, OS_LOG_TYPE_DEFAULT))
          {
            letMeInKeyAgreement2 = [v11 letMeInKeyAgreement];
            if (letMeInKeyAgreement2)
            {
              v20 = @"NO";
            }

            else
            {
              v20 = @"YES";
            }

            letMeInKeyAgreement3 = [v11 letMeInKeyAgreement];
            if (letMeInKeyAgreement3)
            {
              letMeInKeyAgreement4 = [v11 letMeInKeyAgreement];
              if ([letMeInKeyAgreement4 isExhausted])
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
            _os_log_impl(&_mh_execute_header, link, OS_LOG_TYPE_DEFAULT, "[WARN] Pending conversation's let me in key agreement is either nil (%@) or exhausted (%@)", buf, 0x16u);
            if (letMeInKeyAgreement3)
            {
            }
          }

          goto LABEL_25;
        }

        pseudonym2 = [tuConversationLink pseudonym];
        link = [TUHandle normalizedGenericHandleForValue:pseudonym2];

        if (!link)
        {
          v30 = sub_100004778();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Let Me In response was not sent to a pseudonym. Dropping message.", buf, 2u);
          }

          goto LABEL_44;
        }

        linkManager = [(CSDConversationManager *)self linkManager];
        encryptedMessage = [responseCopy encryptedMessage];
        letMeInKeyAgreement5 = [v11 letMeInKeyAgreement];
        v30 = [linkManager decryptLetMeInResponse:encryptedMessage pseudonym:link requestorKeyAgreement:letMeInKeyAgreement5];

        if (v30)
        {
          if ([v30 type]== 16)
          {
            [(CSDConversationManager *)self handleReceivedLetMeInResponse:v30 pendingConversation:v11 fromHandle:handleCopy];
LABEL_44:

            goto LABEL_25;
          }

          v31 = sub_100004778();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            type = [v30 type];
            *buf = 67109120;
            LODWORD(v38) = type;
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

      link = sub_100004778();
      if (os_log_type_enabled(link, OS_LOG_TYPE_DEFAULT))
      {
        letMeInRequestState = [v11 letMeInRequestState];
        *buf = 134217984;
        v38 = letMeInRequestState;
        v23 = "[WARN] Pending conversation's let me in request state is %ld instead of Requested";
        goto LABEL_23;
      }
    }

    else
    {
      link = sub_100004778();
      if (os_log_type_enabled(link, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = tuConversationLink;
        v23 = "[WARN] No pending conversation found for link %@";
LABEL_23:
        v24 = link;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      }
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_27:
}

- (void)handleReceivedLetMeInRequest:(id)request toPseudonym:(id)pseudonym fromHandle:(id)handle responseKeyData:(id)data dateInitiated:(id)initiated
{
  requestCopy = request;
  pseudonymCopy = pseudonym;
  handleCopy = handle;
  dataCopy = data;
  initiatedCopy = initiated;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    linkManager = [(CSDConversationManager *)self linkManager];
    value = [pseudonymCopy value];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001696A8;
    v20[3] = &unk_10061CDE0;
    v20[4] = self;
    v21 = pseudonymCopy;
    v22 = handleCopy;
    v23 = dataCopy;
    v24 = requestCopy;
    v25 = initiatedCopy;
    [linkManager getLinkDescriptorWithPseudonym:value includeInactive:0 completionHandler:v20];
  }
}

- (void)handleReceivedLetMeInResponse:(id)response pendingConversation:(id)conversation fromHandle:(id)handle
{
  responseCopy = response;
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    tuConversationLink = [responseCopy tuConversationLink];
    if (tuConversationLink && [responseCopy hasIsLetMeInApproved])
    {
      if ([responseCopy isLetMeInApproved])
      {
        conversationGroupUUID = [responseCopy conversationGroupUUID];

        if (!conversationGroupUUID)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      link = [conversationCopy link];
      tuConversationLink2 = [responseCopy tuConversationLink];
      v25 = [link isEquivalentToConversationLink:tuConversationLink2];

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

      value = [handleCopy value];
      if ([value destinationIdIsPseudonym])
      {
        link2 = [conversationCopy link];
        pseudonym = [link2 pseudonym];
        value2 = [handleCopy value];
        v30 = [pseudonym isEqualToString:value2];

        if ((v30 & 1) == 0)
        {
          v14 = sub_100004778();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          link3 = [conversationCopy link];
          pseudonym2 = [(__CFString *)link3 pseudonym];
          value3 = [handleCopy value];
          v41 = 138412546;
          v42 = pseudonym2;
          v43 = 2112;
          v44 = value3;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Let me in response is not from the pseudonym defined in the link %@, instead is from %@", &v41, 0x16u);

          goto LABEL_20;
        }
      }

      else
      {
      }

      if ([responseCopy isLetMeInApproved])
      {
        link4 = [conversationCopy link];
        tuConversationLink3 = [responseCopy tuConversationLink];
        v34 = [link4 isEqualToConversationLink:tuConversationLink3];

        if ((v34 & 1) == 0)
        {
          tuConversationLink4 = [responseCopy tuConversationLink];
          v36 = [tuConversationLink4 copy];
          [conversationCopy setLink:v36];
        }

        conversationGroupUUID2 = [responseCopy conversationGroupUUID];
        [conversationCopy setConversationGroupUUID:conversationGroupUUID2];

        tuConversationLink5 = [responseCopy tuConversationLink];
        originatorHandle = [tuConversationLink5 originatorHandle];
        [conversationCopy setApproverHandle:originatorHandle];
      }

      else
      {
        [(CSDConversationManager *)self notifyDelegatesOfLetMeInRejectedForPendingConversation:conversationCopy];
      }

      v14 = sub_100004778();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      if ([responseCopy isLetMeInApproved])
      {
        v40 = @"YES";
      }

      else
      {
        v40 = @"NO";
      }

      link3 = [conversationCopy conversationGroupUUID];
      pseudonym2 = [conversationCopy approverHandle];
      v41 = 138543874;
      v42 = v40;
      v43 = 2112;
      v44 = link3;
      v45 = 2112;
      v46 = pseudonym2;
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

    link3 = [responseCopy conversationGroupUUID];
    if (link3)
    {
      v16 = @"NO";
    }

    else
    {
      v16 = @"YES";
    }

    pseudonym2 = [responseCopy tuConversationLink];
    if (pseudonym2)
    {
      v18 = @"NO";
    }

    else
    {
      v18 = @"YES";
    }

    v41 = 138544130;
    if ([responseCopy hasIsLetMeInApproved])
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
    v48 = responseCopy;
    v20 = "[WARN] Ignoring let me in response message, as it is missing a groupUUID (%{public}@), missing a link (%{public}@), or does not specify approval/rejection (%{public}@): %@";
    v21 = v14;
    v22 = 42;
    goto LABEL_19;
  }

LABEL_22:
}

- (void)handleReceivedLinkCreatedOrChangedMessage:(id)message fromHandle:(id)handle
{
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016A2C4;
  block[3] = &unk_100619E58;
  v12 = messageCopy;
  v13 = handleCopy;
  selfCopy = self;
  v9 = handleCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

- (void)handleReceivedLinkInvalidatedMessage:(id)message fromHandle:(id)handle
{
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016AEE8;
  block[3] = &unk_100619E58;
  v12 = messageCopy;
  v13 = handleCopy;
  selfCopy = self;
  v9 = handleCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

- (void)removeLink:(id)link reason:(int64_t)reason withConversation:(id)conversation
{
  linkCopy = link;
  conversationCopy = conversation;
  linkManager = [(CSDConversationManager *)self linkManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016B3F0;
  v13[3] = &unk_10061AC68;
  v13[4] = self;
  v14 = linkCopy;
  v15 = conversationCopy;
  v11 = conversationCopy;
  v12 = linkCopy;
  [linkManager removeLink:v12 deleteReason:reason completionHandler:v13];
}

- (void)handleReceivedLMIDelegateMessage:(id)message fromHandle:(id)handle
{
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDConversationManager *)self _linksEnabled])
  {
    conversationGroupUUID = [messageCopy conversationGroupUUID];
    if (!conversationGroupUUID)
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Dismissing let me in delegation because no groupUUID was set", buf, 2u);
      }

      goto LABEL_42;
    }

    v10 = [(CSDConversationManager *)self conversationWithGroupUUID:conversationGroupUUID];
    letMeInDelegationHandle = [messageCopy letMeInDelegationHandle];
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
        v46 = handleCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Dismissing let me in delegation because the forHandle is blocked {forHandle: %@, fromHandle: %@}", buf, 0x16u);
      }

      goto LABEL_41;
    }

    if (v13)
    {
      v16 = [TUConversationMember alloc];
      nickname = [messageCopy nickname];
      v15 = [v16 initWithHandle:v13 nickname:nickname joinedFromLetMeIn:1];

      if ([messageCopy type] == 14)
      {
        v18 = [NSUUID alloc];
        letMeInDelegationUUID = [messageCopy letMeInDelegationUUID];
        v20 = [v18 initWithUUIDString:letMeInDelegationUUID];

        v21 = sub_100004778();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          if (v22)
          {
            *buf = 138412802;
            v44 = handleCopy;
            v45 = 2112;
            v46 = v13;
            v47 = 2112;
            v48 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received LMI delegation message! {fromHandle: %@, forHandle: %@, transactionUUID: %@}", buf, 0x20u);
          }

          v42 = v20;

          localMember = [v10 localMember];
          handle = [localMember handle];
          v25 = [v13 isEqualToHandle:handle];

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

          selfCopy = self;
          letMeInDelegationHandle2 = v42;
          [(CSDConversationManager *)selfCopy handleDelegatedPendingMemberIfNecessary:v15 conversation:v10 groupUUID:conversationGroupUUID fromHandle:handleCopy transactionUUID:v42];
          goto LABEL_35;
        }

        if (v22)
        {
          letMeInDelegationUUID2 = [messageCopy letMeInDelegationUUID];
          *buf = 138412546;
          v44 = handleCopy;
          v45 = 2112;
          v46 = letMeInDelegationUUID2;
          v40 = "Received LMI delegation, unable to parse transactionUUID -- ignoring! {fromHandle: %@, message.letMeInDelegationUUID: %@}";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v40, buf, 0x16u);

          goto LABEL_39;
        }

        goto LABEL_39;
      }

      if ([messageCopy type] == 15)
      {
        if (v10)
        {
          v30 = [NSUUID alloc];
          letMeInDelegationUUID3 = [messageCopy letMeInDelegationUUID];
          v20 = [v30 initWithUUIDString:letMeInDelegationUUID3];

          if (v20)
          {
            hasIsLetMeInApproved = [messageCopy hasIsLetMeInApproved];
            v21 = sub_100004778();
            v33 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
            if (hasIsLetMeInApproved)
            {
              if (v33)
              {
                isLetMeInApproved = [messageCopy isLetMeInApproved];
                v35 = @"NO";
                *buf = 138413058;
                v44 = handleCopy;
                v45 = 2112;
                if (isLetMeInApproved)
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

              isLetMeInApproved2 = [messageCopy isLetMeInApproved];
              pendingMembershipTracker = [(CSDConversationManager *)self pendingMembershipTracker];
              v38 = pendingMembershipTracker;
              if (isLetMeInApproved2)
              {
                [pendingMembershipTracker handleRemoteApprovalOfMember:v15 forConversation:v10 from:handleCopy transactionUUID:v20];
              }

              else
              {
                [pendingMembershipTracker handleRemoteRejectionOfMember:v15 forConversation:v10 from:handleCopy transactionUUID:v20];
              }

              goto LABEL_40;
            }

            if (v33)
            {
              *buf = 138412802;
              v44 = handleCopy;
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
              letMeInDelegationUUID2 = [messageCopy letMeInDelegationUUID];
              *buf = 138412546;
              v44 = handleCopy;
              v45 = 2112;
              v46 = letMeInDelegationUUID2;
              v40 = "Received LMI delegation response, unable to parse transactionUUID -- ignoring! {fromHandle: %@, message.letMeInDelegationUUID: %@}";
              goto LABEL_38;
            }
          }

LABEL_39:

LABEL_40:
          goto LABEL_41;
        }

        letMeInDelegationHandle2 = sub_100004778();
        if (!os_log_type_enabled(letMeInDelegationHandle2, OS_LOG_TYPE_DEFAULT))
        {
LABEL_35:

          goto LABEL_41;
        }

        *buf = 138412290;
        v44 = conversationGroupUUID;
        v27 = "[WARN] Dismissing let me in delegation response because no conversation was found for link's groupUUID: %@";
        v28 = letMeInDelegationHandle2;
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
        letMeInDelegationHandle2 = [messageCopy letMeInDelegationHandle];
        *buf = 138412546;
        v44 = handleCopy;
        v45 = 2112;
        v46 = letMeInDelegationHandle2;
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

- (void)handleDelegatedPendingMemberIfNecessary:(id)necessary conversation:(id)conversation groupUUID:(id)d fromHandle:(id)handle transactionUUID:(id)iD
{
  necessaryCopy = necessary;
  conversationCopy = conversation;
  dCopy = d;
  handleCopy = handle;
  iDCopy = iD;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  remoteMembers = [conversationCopy remoteMembers];
  v16 = [remoteMembers countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(remoteMembers);
        }

        handle = [*(*(&v30 + 1) + 8 * v19) handle];
        handle2 = [necessaryCopy handle];
        v22 = [handle isEquivalentToHandle:handle2];

        if (v22)
        {

          notifyPendingMembershipTrackerOfDelegatedMember = sub_100004778();
          if (os_log_type_enabled(notifyPendingMembershipTrackerOfDelegatedMember, OS_LOG_TYPE_ERROR))
          {
            sub_100476B98(necessaryCopy);
          }

          v25 = handleCopy;
          v24 = dCopy;
          v26 = iDCopy;
          goto LABEL_13;
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [remoteMembers countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  [conversationCopy setHasReceivedLetMeInRequest:1];
  notifyPendingMembershipTrackerOfDelegatedMember = [(CSDConversationManager *)self notifyPendingMembershipTrackerOfDelegatedMember];
  v25 = handleCopy;
  v24 = dCopy;
  v26 = iDCopy;
  (*(notifyPendingMembershipTrackerOfDelegatedMember + 16))(notifyPendingMembershipTrackerOfDelegatedMember, necessaryCopy, conversationCopy, dCopy, handleCopy, iDCopy);
LABEL_13:
}

- (BOOL)sendMessagesForInvalidatedLink:(id)link
{
  linkCopy = link;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [CSDMessagingConversationMessage alloc];
  groupUUID = [linkCopy groupUUID];
  v8 = [(CSDMessagingConversationMessage *)v6 initWithType:24 groupUUID:groupUUID link:linkCopy];

  originatorHandle = [linkCopy originatorHandle];

  if (originatorHandle)
  {
    originatorHandle2 = [linkCopy originatorHandle];
    v11 = [CSDMessagingHandle handleWithTUHandle:originatorHandle2];
    link = [(CSDMessagingConversationMessage *)v8 link];
    [link setOriginatorHandle:v11];
  }

  v32 = v8;
  data = [(CSDMessagingConversationMessage *)v8 data];
  service = [(CSDConversationManager *)self service];
  originatorHandle3 = [linkCopy originatorHandle];
  value = [originatorHandle3 value];
  v17 = [service accountWithCallerID:value];

  v18 = +[NSMutableSet set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  invitedMemberHandles = [linkCopy invitedMemberHandles];
  v20 = [invitedMemberHandles countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(invitedMemberHandles);
        }

        v24 = *(*(&v33 + 1) + 8 * v23);
        v25 = TUCopyIDSCanonicalAddressForHandle();
        [v18 addObject:v25];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [invitedMemberHandles countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v21);
  }

  v26 = [TUConversationMember alloc];
  originatorHandle4 = [linkCopy originatorHandle];
  v28 = [v26 initWithHandle:originatorHandle4];

  sendDataBlock = [(CSDConversationManager *)self sendDataBlock];
  v30 = (sendDataBlock)[2](sendDataBlock, data, v17, v18, v28, 0, 0, 0, 0);

  return v30;
}

- (void)requestParticipant:(id)participant toScreenShareWithRequest:(id)request conversation:(id)conversation
{
  participantCopy = participant;
  requestCopy = request;
  conversationCopy = conversation;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    queue = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(queue);

    groupUUID = [conversationCopy groupUUID];
    v14 = [[CSDMessagingConversationMessage alloc] initWithType:35 groupUUID:groupUUID link:0];
    v15 = [[CSDMessagingScreenShareContext alloc] initOutgoingRequestWithScreenSharingRequest:requestCopy];
    [(CSDMessagingConversationMessage *)v14 setScreenShareContext:v15];
    handle = [requestCopy handle];
    [(CSDConversationManager *)self sendDataForScreenShareMessage:v14 toParticipant:participantCopy conversation:conversationCopy screenShareRequestHandle:handle allowMemberFallbackForMessage:0];
  }
}

- (void)sendDataForScreenShareMessage:(id)message toParticipant:(id)participant conversation:(id)conversation screenShareRequestHandle:(id)handle allowMemberFallbackForMessage:(BOOL)forMessage
{
  forMessageCopy = forMessage;
  messageCopy = message;
  participantCopy = participant;
  conversationCopy = conversation;
  handleCopy = handle;
  localMember = [conversationCopy localMember];
  handle = [localMember handle];
  value = [handle value];

  selfCopy = self;
  service = [(CSDConversationManager *)self service];
  v20 = [service accountWithCallerID:value];

  localMember2 = [conversationCopy localMember];
  v22 = objc_alloc_init(NSMutableSet);
  activeIDSDestination = [participantCopy activeIDSDestination];

  if (activeIDSDestination)
  {
    v24 = participantCopy;
    v25 = value;
    v42 = v24;
    activeIDSDestination2 = [v24 activeIDSDestination];
    [v22 addObject:activeIDSDestination2];

LABEL_3:
    v27 = handleCopy;
    v28 = sub_100004778();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v47 = messageCopy;
      v48 = 2112;
      v49 = v25;
      v50 = 2112;
      v51 = v22;
      v52 = 1024;
      v53 = forMessageCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] sendDataForScreenShareMessage: Sending screen share request message %@ from handle %@ to handle %@, allowMemberFallbackForMessage: %d", buf, 0x26u);
    }

    sendDataBlock = [(CSDConversationManager *)selfCopy sendDataBlock];
    data = [messageCopy data];
    capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];
    (*(sendDataBlock + 2))(sendDataBlock, data, v20, v22, localMember2, capabilitySendMessageOptions, 0, 0, 0);

    handleCopy = v27;
    value = v25;
    participantCopy = v42;
    goto LABEL_18;
  }

  if (forMessageCopy)
  {
    v41 = messageCopy;
    handle2 = [participantCopy handle];
    v40 = handleCopy;
    if (handle2)
    {
      handle3 = [participantCopy handle];
    }

    else
    {
      handle3 = handleCopy;
    }

    v34 = handle3;

    remoteMembers = [conversationCopy remoteMembers];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10016CFD0;
    v44[3] = &unk_10061A6F0;
    sendDataBlock = v34;
    v45 = sendDataBlock;
    v36 = [remoteMembers tu_anyObjectPassingTest:v44];

    if (v36)
    {
      idsDestination = [v36 idsDestination];

      if (idsDestination)
      {
        v42 = participantCopy;
        v25 = value;
        idsDestination2 = [v36 idsDestination];
        [v22 addObject:idsDestination2];

        handleCopy = v40;
        messageCopy = v41;
        goto LABEL_3;
      }
    }

    v39 = sub_100004778();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_100476C94();
    }

    handleCopy = v40;
    messageCopy = v41;
  }

  else
  {
    sendDataBlock = sub_100004778();
    if (os_log_type_enabled(sendDataBlock, OS_LOG_TYPE_ERROR))
    {
      sub_100476C24();
    }
  }

LABEL_18:
}

- (void)handleReceivedUpdateJoinedMetadataMessage:(id)message fromHandle:(id)handle
{
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversationManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    if (![(CSDConversationManager *)self isValidLocalHandle:handleCopy])
    {
      conversationGroupUUID = sub_100004778();
      if (os_log_type_enabled(conversationGroupUUID, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = handleCopy;
        _os_log_impl(&_mh_execute_header, conversationGroupUUID, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was sent by a non-local handle %@, dropping message.", buf, 0xCu);
      }

      goto LABEL_37;
    }

    conversationGroupUUID = [messageCopy conversationGroupUUID];
    if (!conversationGroupUUID)
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was missing a group UUID, dropping message.", buf, 2u);
      }

      goto LABEL_36;
    }

    joinedMetadata = [messageCopy joinedMetadata];
    v13 = joinedMetadata;
    if (!joinedMetadata)
    {
      csdConversationParticipant = sub_100004778();
      if (os_log_type_enabled(csdConversationParticipant, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, csdConversationParticipant, OS_LOG_TYPE_DEFAULT, "[WARN] UpdateJoinedMetadata conversation message was missing a joined metadata object, dropping message.", buf, 2u);
      }

      goto LABEL_35;
    }

    v45 = joinedMetadata;
    sender = [joinedMetadata sender];
    csdConversationParticipant = [sender csdConversationParticipant];

    if (csdConversationParticipant)
    {
      sender2 = [v45 sender];
      if ([sender2 hasIdentifier])
      {
        identifier = [csdConversationParticipant identifier];

        if (identifier)
        {
          v18 = [(CSDConversationManager *)self conversationWithGroupUUID:conversationGroupUUID];
          v44 = v18;
          if (!v18)
          {
            audioRouteUniqueIdentifier3 = sub_100004778();
            if (os_log_type_enabled(audioRouteUniqueIdentifier3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v51 = conversationGroupUUID;
              _os_log_impl(&_mh_execute_header, audioRouteUniqueIdentifier3, OS_LOG_TYPE_DEFAULT, "[WARN] No conversation was found for group UUID %@, dropping UpdateJoinedMetadata message.", buf, 0xCu);
            }

            v13 = v45;
            goto LABEL_50;
          }

          v43 = conversationGroupUUID;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          activeRemoteParticipants = [v18 activeRemoteParticipants];
          v20 = [activeRemoteParticipants countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v20)
          {
            v21 = v20;
            v41 = handleCopy;
            v42 = messageCopy;
            v22 = 0;
            v23 = *v47;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v47 != v23)
                {
                  objc_enumerationMutation(activeRemoteParticipants);
                }

                v25 = *(*(&v46 + 1) + 8 * i);
                handle = [csdConversationParticipant handle];
                handle2 = [v25 handle];
                if ([handle isEquivalentToHandle:handle2])
                {
                  identifier2 = [csdConversationParticipant identifier];
                  LOBYTE(identifier2) = identifier2 == [v25 identifier];

                  v22 |= identifier2;
                }

                else
                {
                }
              }

              v21 = [activeRemoteParticipants countByEnumeratingWithState:&v46 objects:v56 count:16];
            }

            while (v21);

            handleCopy = v41;
            messageCopy = v42;
            if (v22)
            {
              v13 = v45;
              audioRouteUniqueIdentifier = [v45 audioRouteUniqueIdentifier];

              v30 = sub_100004778();
              v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
              if (audioRouteUniqueIdentifier)
              {
                conversationGroupUUID = v43;
                if (v31)
                {
                  audioRouteUniqueIdentifier2 = [v45 audioRouteUniqueIdentifier];
                  identifier3 = [csdConversationParticipant identifier];
                  uUID = [v44 UUID];
                  *buf = 138412802;
                  v51 = audioRouteUniqueIdentifier2;
                  v52 = 2048;
                  v53 = identifier3;
                  v54 = 2112;
                  v55 = uUID;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Per UpdateJoinedMetadata message, the local user was using %@ audio route from another device with participant identifier %llu in conversation UUID %@", buf, 0x20u);

                  v13 = v45;
                }

                audioRouteUniqueIdentifier3 = [v13 audioRouteUniqueIdentifier];
                audioRoutesByParticipantIdentifier = [v44 audioRoutesByParticipantIdentifier];
                v37 = [NSNumber numberWithUnsignedLongLong:[csdConversationParticipant identifier]];
                [audioRoutesByParticipantIdentifier setObject:audioRouteUniqueIdentifier3 forKeyedSubscript:v37];
              }

              else
              {
                conversationGroupUUID = v43;
                if (v31)
                {
                  identifier4 = [csdConversationParticipant identifier];
                  uUID2 = [v44 UUID];
                  *buf = 134218242;
                  v51 = identifier4;
                  v52 = 2112;
                  v53 = uUID2;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Per UpdateJoinedMetadata message, the local user was using a default audio route from another device with participant identifier %llu in conversation UUID %@; no need to track a route.", buf, 0x16u);
                }

                audioRouteUniqueIdentifier3 = [v44 audioRoutesByParticipantIdentifier];
                audioRoutesByParticipantIdentifier = [NSNumber numberWithUnsignedLongLong:[csdConversationParticipant identifier]];
                [audioRouteUniqueIdentifier3 setObject:0 forKeyedSubscript:audioRoutesByParticipantIdentifier];
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

          audioRouteUniqueIdentifier3 = sub_100004778();
          v13 = v45;
          if (os_log_type_enabled(audioRouteUniqueIdentifier3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = csdConversationParticipant;
            _os_log_impl(&_mh_execute_header, audioRouteUniqueIdentifier3, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find a matching participant for sender %@, dropping UpdateJoinedMetadata message.", buf, 0xCu);
          }

          conversationGroupUUID = v43;
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

- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d fromMember:(id)member additionalOptions:(id)options isBlobResponse:(BOOL)response callback:(id)callback
{
  responseCopy = response;
  conversationCopy = conversation;
  dCopy = d;
  memberCopy = member;
  callbackCopy = callback;
  optionsCopy = options;
  dataCopy = data;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    provider = [conversationCopy provider];

    if (provider)
    {
      v21 = +[CSDConversationProviderManager sharedInstance];
      provider2 = [conversationCopy provider];
      service = [v21 serviceForProvider:provider2];

      goto LABEL_6;
    }
  }

  else
  {
  }

  service = [(CSDConversationManager *)self service];
LABEL_6:
  v66 = memberCopy;
  handle = [memberCopy handle];
  value = [handle value];
  v64 = service;
  v26 = [service accountWithCallerID:value];

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

  v29 = [optionsCopy mutableCopy];
  capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];

  if (capabilitySendMessageOptions)
  {
    v61 = dCopy;
    if (!v29)
    {
      v29 = objc_alloc_init(NSMutableDictionary);
    }

    capabilitySendMessageOptions2 = [conversationCopy capabilitySendMessageOptions];
    v32 = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
    v33 = [capabilitySendMessageOptions2 objectForKeyedSubscript:IDSSendMessageOptionRequireAllRegistrationPropertiesKey];
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

    v60 = callbackCopy;
    if (v41)
    {
      v42 = [v29 objectForKeyedSubscript:v32];
      v43 = [v40 setByAddingObjectsFromSet:v42];

      v40 = v43;
    }

    capabilitySendMessageOptions3 = [conversationCopy capabilitySendMessageOptions];
    v45 = IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey;
    v46 = [capabilitySendMessageOptions3 objectForKeyedSubscript:IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey];
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

    capabilitySendMessageOptions4 = [conversationCopy capabilitySendMessageOptions];
    [v29 addEntriesFromDictionary:capabilitySendMessageOptions4];

    if ([v40 count])
    {
      [v29 setObject:v40 forKeyedSubscript:v32];
    }

    if ([v49 count])
    {
      [v29 setObject:v49 forKeyedSubscript:v45];
    }

    if (responseCopy)
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

    v37 = conversationCopy;
    v39 = v26;

    v38 = v60;
    v36 = v61;
  }

  else
  {
    v36 = dCopy;
    v37 = conversationCopy;
    v38 = callbackCopy;
    v39 = v26;
  }

  groupUUID = [v37 groupUUID];
  [v29 setObject:groupUUID forKeyedSubscript:@"kCSDConversationGroupUUID"];

  sendDataBlock = [(CSDConversationManager *)self sendDataBlock];
  v57 = [NSSet setWithObject:v36];
  provider3 = [v37 provider];
  v63 = (sendDataBlock)[2](sendDataBlock, dataCopy, v39, v57, v66, v29, 0, v38, provider3);

  return v63;
}

- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d
{
  dCopy = d;
  conversationCopy = conversation;
  dataCopy = data;
  localMember = [conversationCopy localMember];
  LOBYTE(self) = [(CSDConversationManager *)self sendData:dataCopy onConversation:conversationCopy toDestinationID:dCopy fromMember:localMember additionalOptions:0 isBlobResponse:0 callback:0];

  return self;
}

- (BOOL)sendData:(id)data onConversation:(id)conversation toDestinationID:(id)d additionalOptions:(id)options
{
  optionsCopy = options;
  dCopy = d;
  conversationCopy = conversation;
  dataCopy = data;
  localMember = [conversationCopy localMember];
  LOBYTE(self) = [(CSDConversationManager *)self sendData:dataCopy onConversation:conversationCopy toDestinationID:dCopy fromMember:localMember additionalOptions:optionsCopy isBlobResponse:0 callback:0];

  return self;
}

- (BOOL)sendData:(id)data onConversation:(id)conversation toMember:(id)member additionalOptions:(id)options
{
  dataCopy = data;
  conversationCopy = conversation;
  memberCopy = member;
  optionsCopy = options;
  idsDestination = [memberCopy idsDestination];
  if (idsDestination)
  {
    idsDestination2 = [memberCopy idsDestination];
    localMember = [conversationCopy localMember];
    v17 = [(CSDConversationManager *)self sendData:dataCopy onConversation:conversationCopy toDestinationID:idsDestination2 fromMember:localMember additionalOptions:optionsCopy isBlobResponse:0 callback:0];
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = memberCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not convert %@ to IDS destination", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)broadcastFile:(id)file onConversation:(id)conversation additionalOptions:(id)options
{
  fileCopy = file;
  conversationCopy = conversation;
  optionsCopy = options;
  localMember = [conversationCopy localMember];
  v12 = localMember;
  if (localMember)
  {
    v56 = localMember;
    idsDestination = [localMember idsDestination];
    v14 = [NSMutableSet setWithObject:idsDestination];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    remoteMembers = [conversationCopy remoteMembers];
    v16 = [remoteMembers countByEnumeratingWithState:&v63 objects:v72 count:16];
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
            objc_enumerationMutation(remoteMembers);
          }

          idsDestination2 = [*(*(&v63 + 1) + 8 * i) idsDestination];
          [v14 addObject:idsDestination2];
        }

        v17 = [remoteMembers countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v17);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    lightweightMembers = [conversationCopy lightweightMembers];
    v22 = [lightweightMembers countByEnumeratingWithState:&v59 objects:v71 count:16];
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
            objc_enumerationMutation(lightweightMembers);
          }

          idsDestination3 = [*(*(&v59 + 1) + 8 * j) idsDestination];
          [v14 addObject:idsDestination3];
        }

        v23 = [lightweightMembers countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v23);
    }

    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      idsFromID = [v56 idsFromID];
      v29 = TULoggableStringForHandle();
      allObjects = [v14 allObjects];
      TULoggableStringForHandles();
      v32 = v31 = fileCopy;
      *buf = 138412546;
      v68 = v29;
      v69 = 2112;
      v70 = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Broadcasting file from: %@ to: %@", buf, 0x16u);

      fileCopy = v31;
    }

    v33 = [optionsCopy mutableCopy];
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

    capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];

    if (capabilitySendMessageOptions)
    {
      capabilitySendMessageOptions2 = [conversationCopy capabilitySendMessageOptions];
      [v37 addEntriesFromDictionary:capabilitySendMessageOptions2];
    }

    [v37 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionAlwaysSkipSelfKey];
    idsFromID2 = [v56 idsFromID];
    [v37 setObject:idsFromID2 forKeyedSubscript:IDSSendMessageOptionFromIDKey];

    featureFlags = [(CSDConversationManager *)self featureFlags];
    v55 = optionsCopy;
    if ([featureFlags groupFacetimeAsAServiceEnabled])
    {
      provider = [conversationCopy provider];

      if (provider)
      {
        v43 = +[CSDConversationProviderManager sharedInstance];
        provider2 = [conversationCopy provider];
        service2 = [v43 serviceForProvider:provider2];

LABEL_31:
        service = [service2 service];
        v47 = fileCopy;
        v48 = [NSURL fileURLWithPath:fileCopy];
        v57 = 0;
        v58 = 0;
        v49 = [service sendResourceAtURL:v48 metadata:0 toDestinations:v14 priority:300 options:v37 identifier:&v58 error:&v57];
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

        fileCopy = v47;
        optionsCopy = v55;
        goto LABEL_37;
      }
    }

    else
    {
    }

    service2 = [(CSDConversationManager *)self service];
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

- (BOOL)broadcastData:(id)data onConversation:(id)conversation additionalOptions:(id)options
{
  dataCopy = data;
  conversationCopy = conversation;
  optionsCopy = options;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags groupFacetimeAsAServiceEnabled])
  {
    provider = [conversationCopy provider];

    if (provider)
    {
      v12 = +[CSDConversationProviderManager sharedInstance];
      provider2 = [conversationCopy provider];
      service = [v12 serviceForProvider:provider2];

      goto LABEL_6;
    }
  }

  else
  {
  }

  service = [(CSDConversationManager *)self service];
LABEL_6:
  localMember = [conversationCopy localMember];
  handle = [localMember handle];
  value = [handle value];
  v18 = [service accountWithCallerID:value];

  if (localMember)
  {
    v45 = service;
    v46 = dataCopy;
    idsDestination = [localMember idsDestination];
    v20 = [NSMutableSet setWithObject:idsDestination];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    remoteMembers = [conversationCopy remoteMembers];
    v22 = [remoteMembers countByEnumeratingWithState:&v52 objects:v61 count:16];
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
            objc_enumerationMutation(remoteMembers);
          }

          idsDestination2 = [*(*(&v52 + 1) + 8 * i) idsDestination];
          [v20 addObject:idsDestination2];
        }

        v23 = [remoteMembers countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v23);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    lightweightMembers = [conversationCopy lightweightMembers];
    v28 = [lightweightMembers countByEnumeratingWithState:&v48 objects:v60 count:16];
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
            objc_enumerationMutation(lightweightMembers);
          }

          idsDestination3 = [*(*(&v48 + 1) + 8 * j) idsDestination];
          [v20 addObject:idsDestination3];
        }

        v29 = [lightweightMembers countByEnumeratingWithState:&v48 objects:v60 count:16];
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

    v34 = optionsCopy;
    v35 = [optionsCopy mutableCopy];
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

    capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];

    if (capabilitySendMessageOptions)
    {
      capabilitySendMessageOptions2 = [conversationCopy capabilitySendMessageOptions];
      [v39 addEntriesFromDictionary:capabilitySendMessageOptions2];
    }

    [v39 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionAlwaysSkipSelfKey];
    sendDataBlock = [(CSDConversationManager *)self sendDataBlock];
    provider3 = [conversationCopy provider];
    v38 = (sendDataBlock)[2](sendDataBlock, v46, v18, v20, localMember, v39, 0, 0, provider3);

    dataCopy = v46;
    service = v45;
  }

  else
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100476DE4();
    }

    v38 = 0;
    v34 = optionsCopy;
  }

  return v38;
}

- (void)broadcastImageForSession:(id)session onConversation:(id)conversation
{
  sessionCopy = session;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v51 = conversationCopy;
    v52 = 2112;
    v53 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ broadcastImageForSession: %@", buf, 0x16u);
  }

  activity = [sessionCopy activity];
  metadata = [activity metadata];
  imageData = [metadata imageData];

  if (imageData)
  {
    v13 = [CSDMessagingConversationMessage alloc];
    groupUUID = [conversationCopy groupUUID];
    v15 = [(CSDMessagingConversationMessage *)v13 initWithType:27 groupUUID:groupUUID link:0];

    v16 = objc_alloc_init(CSDMessagingConversationActivitySession);
    uUID = [sessionCopy UUID];
    [uUID UUIDString];
    v18 = v47 = conversationCopy;
    [(CSDMessagingConversationActivitySession *)v16 setIdentifierUUIDString:v18];

    activity2 = [sessionCopy activity];
    v20 = objc_alloc_init(CSDMessagingConversationActivity);
    uUID2 = [activity2 UUID];
    uUIDString = [uUID2 UUIDString];
    [(CSDMessagingConversationActivity *)v20 setIdentifierUUIDString:uUIDString];

    v23 = objc_alloc_init(CSDMessagingConversationActivityMetadata);
    v46 = activity2;
    metadata2 = [activity2 metadata];
    imageData2 = [metadata2 imageData];
    _FTCopyGzippedData = [imageData2 _FTCopyGzippedData];
    [(CSDMessagingConversationActivityMetadata *)v23 setImage:_FTCopyGzippedData];

    v45 = v23;
    [(CSDMessagingConversationActivity *)v20 setActivityMetadata:v23];
    [(CSDMessagingConversationActivitySession *)v16 setActivity:v20];
    v44 = v16;
    [(CSDMessagingConversationMessage *)v15 addActivitySessions:v16];
    v56[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v27 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)v15 type]];
    v57[0] = v27;
    v56[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    uUID3 = [sessionCopy UUID];
    uUIDString2 = [uUID3 UUIDString];
    v30 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)v15 type]];
    v31 = [NSString stringWithFormat:@"%@:%@", uUIDString2, v30];
    v57[1] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];

    temporaryFilePath = [(CSDConversationManager *)self temporaryFilePath];
    data = [(CSDMessagingConversationMessage *)v15 data];
    v49 = 0;
    [data writeToFile:temporaryFilePath options:1073741825 error:&v49];
    v35 = v49;

    if (v35)
    {
      conversationCopy = v47;
      v36 = sub_100004778();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        goto LABEL_14;
      }

      activity3 = [sessionCopy activity];
      uUID4 = [activity3 UUID];
      *buf = 138412802;
      v51 = uUID4;
      v52 = 2112;
      v53 = temporaryFilePath;
      v54 = 2112;
      v55 = v35;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error transmitting activity session %@ image. Failed to write to path %@ with error %@", buf, 0x20u);
    }

    else
    {
      conversationCopy = v47;
      v39 = [(CSDConversationManager *)self broadcastFile:temporaryFilePath onConversation:v47 additionalOptions:v32];
      v40 = sub_100004778();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        activity4 = [sessionCopy activity];
        uUID5 = [activity4 UUID];
        *buf = 138412546;
        v51 = uUID5;
        v52 = 1024;
        LODWORD(v53) = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "(broadcastImageForSession activity UUID: %@ success: %d).", buf, 0x12u);

        conversationCopy = v47;
      }

      v43 = +[NSFileManager defaultManager];
      v48 = 0;
      [v43 removeItemAtPath:temporaryFilePath error:&v48];
      v36 = v48;

      if (!v36)
      {
        goto LABEL_13;
      }

      activity3 = sub_100004778();
      if (os_log_type_enabled(activity3, OS_LOG_TYPE_ERROR))
      {
        sub_100476E54();
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)broadcastLightweightEndorsementForAddedMembers:(id)members onConversation:(id)conversation
{
  membersCopy = members;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = conversationCopy;
    v26 = 2112;
    v27 = membersCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ broadcastLightweightEndorsementForAddedMembers: %@", buf, 0x16u);
  }

  localLightweightSecondaryMember = [conversationCopy localLightweightSecondaryMember];
  if (localLightweightSecondaryMember)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [conversationCopy UUID];
      *buf = 138412546;
      v25 = uUID;
      v26 = 2112;
      v27 = localLightweightSecondaryMember;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "conversation: %@ has a splitSessionSecondary (%@), sending verification push", buf, 0x16u);
    }

    v13 = [CSDMessagingConversationMessage alloc];
    groupUUID = [conversationCopy groupUUID];
    v15 = [(CSDMessagingConversationMessage *)v13 initWithType:29 groupUUID:groupUUID link:0];

    v16 = [CSDMessagingConversationMember memberWithTUConversationMember:localLightweightSecondaryMember];
    [(CSDMessagingConversationMessage *)v15 addAddedMembers:v16];

    data = [(CSDMessagingConversationMessage *)v15 data];
    v18 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)v15 type]];
    v23 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v20 = [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v19];
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v25) = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(success: %d).", buf, 8u);
    }
  }
}

- (id)memberExistsForParticipantDestination:(id)destination members:(id)members
{
  destinationCopy = destination;
  membersCopy = members;
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
      v31 = membersCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't find participant destination identifier %@ in members %@", buf, 0x16u);
    }

    v21 = 0;
    goto LABEL_19;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = membersCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v23 = membersCopy;
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
    handle = [v13 handle];
    normalizedValue = [handle normalizedValue];

    if (normalizedValue)
    {
      normalizedValue2 = [v7 normalizedValue];
      v17 = [normalizedValue2 isEqualToString:normalizedValue];

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

      membersCopy = v23;
      goto LABEL_14;
    }
  }

  v21 = v13;

  membersCopy = v23;
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_19:

  return v21;
}

- (id)memberExistsForParticipantDestination:(id)destination groupSessionParticipantUpdate:(id)update
{
  destinationCopy = destination;
  updateCopy = update;
  participantUpdateType = [updateCopy participantUpdateType];
  if (participantUpdateType <= 1)
  {
    if (!participantUpdateType)
    {
      v21 = sub_100004778();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Received unknown participant update message", &v24, 2u);
      }

      goto LABEL_17;
    }

    if (participantUpdateType != 1)
    {
LABEL_17:
      groupUUID = sub_100004778();
      if (os_log_type_enabled(groupUUID, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, groupUUID, OS_LOG_TYPE_DEFAULT, "[WARN] Unable to find members from message", &v24, 2u);
      }

LABEL_25:
      v20 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if (participantUpdateType == 2 || participantUpdateType == 4)
    {
      groupUUID = [updateCopy groupUUID];
      if (groupUUID)
      {
        v14 = [(CSDConversationManager *)self conversationWithGroupUUID:groupUUID];
        v15 = v14;
        if (v14)
        {
          remoteMembers = [v14 remoteMembers];
          v17 = [remoteMembers mutableCopy];

          localMember = [v15 localMember];
          [v17 addObject:localMember];

          lightweightMembers = [v15 lightweightMembers];
          [v17 unionSet:lightweightMembers];

          v20 = [(CSDConversationManager *)self memberExistsForParticipantDestination:destinationCopy members:v17];
        }

        else
        {
          v17 = sub_100004778();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 138412290;
            v25 = groupUUID;
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

    if (participantUpdateType != 3)
    {
      goto LABEL_17;
    }
  }

  v9 = [CSDMessagingConversationParticipantDidJoinContext alloc];
  clientContextData = [updateCopy clientContextData];
  groupUUID = [(CSDMessagingConversationParticipantDidJoinContext *)v9 initWithData:clientContextData];

  data = [groupUUID data];
  v13 = [data length];

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

  if ([groupUUID isLightweight])
  {
    [groupUUID tuLightweightMembers];
  }

  else
  {
    [groupUUID tuConversationMembers];
  }
  v15 = ;
  v20 = [(CSDConversationManager *)self memberExistsForParticipantDestination:destinationCopy members:v15];
LABEL_32:

LABEL_33:

  return v20;
}

- (BOOL)shouldAcceptMessageFromHandle:(id)handle messageContext:(id)context message:(id)message existingConversation:(id)conversation
{
  handleCopy = handle;
  messageCopy = message;
  conversationCopy = conversation;
  if (![(CSDConversationManager *)self verifyMessageIntentKeyFromContext:context message:messageCopy])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100476EFC();
    }

    goto LABEL_20;
  }

  if (![(CSDConversationManager *)self verifyKickMemberPermittedFromHandle:handleCopy message:messageCopy])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100476F38();
    }

    goto LABEL_20;
  }

  if (![(CSDConversationManager *)self verifyActivitySessionOriginatorFromHandle:handleCopy message:messageCopy])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100476F74();
    }

    goto LABEL_20;
  }

  if (![(CSDConversationManager *)self verifyBlobResponseFromHandle:handleCopy message:messageCopy existingConversation:conversationCopy])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100476FB0();
    }

    goto LABEL_20;
  }

  if (![(CSDConversationManager *)self verifyLightweightMessageTypeFromHandle:handleCopy message:messageCopy existingConversation:conversationCopy])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100476FEC();
    }

    goto LABEL_20;
  }

  if (![(CSDConversationManager *)self verifyEndorseRepresentsMemberFromHandle:handleCopy message:messageCopy existingConversation:conversationCopy])
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

- (BOOL)shouldAcceptMembershipUpdateFromHandle:(id)handle joinContext:(id)context participantUpdate:(id)update existingConversation:(id)conversation
{
  handleCopy = handle;
  contextCopy = context;
  updateCopy = update;
  conversationCopy = conversation;
  v13 = +[NSMutableSet set];
  v14 = +[NSMutableSet set];
  message = [contextCopy message];
  selfCopy = self;
  v39 = updateCopy;
  if (conversationCopy)
  {
    remoteMembers = [conversationCopy remoteMembers];
    [v13 unionSet:remoteMembers];

    lightweightMembers = [conversationCopy lightweightMembers];
    [v14 unionSet:lightweightMembers];

    localMember = [conversationCopy localMember];
    isLightweightMember = [localMember isLightweightMember];

    localMember2 = [conversationCopy localMember];
    if (isLightweightMember)
    {
      v21 = v14;
    }

    else
    {
      v21 = v13;
    }

    [v21 addObject:localMember2];
  }

  else
  {
    tuConversationMembers = [contextCopy tuConversationMembers];
    [v13 unionSet:tuConversationMembers];

    localMember2 = [contextCopy tuLightweightMembers];
    [v14 unionSet:localMember2];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  addedMembers = [message addedMembers];
  v24 = [addedMembers countByEnumeratingWithState:&v45 objects:v52 count:16];
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
          objc_enumerationMutation(addedMembers);
        }

        tuConversationMember = [*(*(&v45 + 1) + 8 * i) tuConversationMember];
        [v13 addObject:tuConversationMember];
      }

      v25 = [addedMembers countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v25);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  lightweightMembers2 = [message lightweightMembers];
  v30 = [lightweightMembers2 countByEnumeratingWithState:&v41 objects:v51 count:16];
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
          objc_enumerationMutation(lightweightMembers2);
        }

        tuConversationMember2 = [*(*(&v41 + 1) + 8 * j) tuConversationMember];
        [v14 addObject:tuConversationMember2];
      }

      v31 = [lightweightMembers2 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v31);
  }

  if (![(CSDConversationManager *)selfCopy verifyGroupSessionParticipantUpdateAllowedFromHandle:handleCopy participantUpdate:v39 message:message existingConversation:conversationCopy lightweightMembers:v14])
  {
    v36 = sub_100004778();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100477064();
    }

    goto LABEL_28;
  }

  if (![(CSDConversationManager *)selfCopy verifyAllLightweightmembersAssociated:v14 remoteMembers:v13])
  {
    v36 = sub_100004778();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = handleCopy;
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

- (BOOL)verifyKickMemberPermittedFromHandle:(id)handle message:(id)message
{
  handleCopy = handle;
  messageCopy = message;
  if ([messageCopy type] == 19)
  {
    removedMembers = [messageCopy removedMembers];
    v8 = [removedMembers count];

    if (v8)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      removedMembers2 = [messageCopy removedMembers];
      v10 = [removedMembers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(removedMembers2);
            }

            handle = [*(*(&v19 + 1) + 8 * i) handle];
            tuHandle = [handle tuHandle];

            if ([tuHandle isEquivalentToHandle:handleCopy])
            {
              v17 = sub_100004778();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                sub_1004770D4();
              }

              goto LABEL_18;
            }
          }

          v11 = [removedMembers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
      removedMembers2 = sub_100004778();
      if (os_log_type_enabled(removedMembers2, OS_LOG_TYPE_ERROR))
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

- (BOOL)verifyActivitySessionOriginatorFromHandle:(id)handle message:(id)message
{
  handleCopy = handle;
  messageCopy = message;
  if ([messageCopy type] == 8 || objc_msgSend(messageCopy, "type") == 23)
  {
    activitySessions = [messageCopy activitySessions];
    v8 = [activitySessions count];

    if (v8)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      activitySessions2 = [messageCopy activitySessions];
      v10 = [activitySessions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(activitySessions2);
        }

        activity = [*(*(&v20 + 1) + 8 * v13) activity];
        originatorHandle = [activity originatorHandle];
        tuHandle = [originatorHandle tuHandle];

        if (!tuHandle)
        {
          break;
        }

        if (([tuHandle isEquivalentToHandle:handleCopy] & 1) == 0)
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
          v11 = [activitySessions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

    activitySessions2 = sub_100004778();
    if (os_log_type_enabled(activitySessions2, OS_LOG_TYPE_ERROR))
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

- (BOOL)verifyMessageIntentKeyFromContext:(id)context message:(id)message
{
  contextCopy = context;
  messageCopy = message;
  type = [messageCopy type];
  if (type <= 0x24)
  {
    if (((1 << type) & 0x18D569FE7FLL) != 0)
    {
      v8 = 1;
      goto LABEL_6;
    }

    if (((1 << type) & 0x62A800100) != 0)
    {
      publicIntentAction = [contextCopy publicIntentAction];
      integerValue = [publicIntentAction integerValue];
      v8 = integerValue == [messageCopy type];

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

- (BOOL)verifyBlobResponseFromHandle:(id)handle message:(id)message existingConversation:(id)conversation
{
  handleCopy = handle;
  messageCopy = message;
  conversationCopy = conversation;
  if ([messageCopy type] != 5)
  {
    goto LABEL_27;
  }

  if (!conversationCopy)
  {
    csdConversationParticipant2 = sub_100004778();
    if (os_log_type_enabled(csdConversationParticipant2, OS_LOG_TYPE_ERROR))
    {
      sub_100477520();
    }

    goto LABEL_24;
  }

  activeParticipants = [messageCopy activeParticipants];
  if ([activeParticipants count] == 1)
  {
  }

  else
  {
    activeLightweightParticipants = [messageCopy activeLightweightParticipants];
    v14 = [activeLightweightParticipants count];

    if (v14 != 1)
    {
      csdConversationParticipant2 = sub_100004778();
      if (os_log_type_enabled(csdConversationParticipant2, OS_LOG_TYPE_ERROR))
      {
        sub_100477308();
      }

      goto LABEL_24;
    }
  }

  activeParticipants2 = [messageCopy activeParticipants];
  firstObject = [activeParticipants2 firstObject];
  csdConversationParticipant = [firstObject csdConversationParticipant];
  v18 = csdConversationParticipant;
  if (csdConversationParticipant)
  {
    csdConversationParticipant2 = csdConversationParticipant;
  }

  else
  {
    activeLightweightParticipants2 = [messageCopy activeLightweightParticipants];
    firstObject2 = [activeLightweightParticipants2 firstObject];
    csdConversationParticipant2 = [firstObject2 csdConversationParticipant];
  }

  if (csdConversationParticipant2)
  {
    handle = [csdConversationParticipant2 handle];
    v22 = [handle isEquivalentToHandle:handleCopy];

    if (v22)
    {
      remoteMembers = [conversationCopy remoteMembers];
      v24 = [remoteMembers mutableCopy];

      localMember = [conversationCopy localMember];
      [v24 addObject:localMember];

      isLightweight = [csdConversationParticipant2 isLightweight];
      value = [handleCopy value];
      if (isLightweight)
      {
        lightweightMembers = [conversationCopy lightweightMembers];
        v29 = [lightweightMembers copy];
        v30 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:v29];

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
        v34 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:v24];

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

- (BOOL)verifyAllLightweightmembersAssociated:(id)associated remoteMembers:(id)members
{
  associatedCopy = associated;
  membersCopy = members;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = associatedCopy;
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
      lightweightPrimary = [v13 lightweightPrimary];

      if (!lightweightPrimary)
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

      lightweightPrimary2 = [v13 lightweightPrimary];
      value = [lightweightPrimary2 value];
      v17 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:membersCopy];

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

- (BOOL)verifyGroupSessionParticipantUpdateAllowedFromHandle:(id)handle participantUpdate:(id)update message:(id)message existingConversation:(id)conversation lightweightMembers:(id)members
{
  handleCopy = handle;
  updateCopy = update;
  messageCopy = message;
  membersCopy = members;
  value = [handleCopy value];
  v17 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:membersCopy];

  participantUpdateType = [updateCopy participantUpdateType];
  if (!v17)
  {
    if (participantUpdateType == 3)
    {
      v34 = messageCopy;
      v35 = updateCopy;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      lightweightMembers = [messageCopy lightweightMembers];
      v22 = [lightweightMembers countByEnumeratingWithState:&v36 objects:v40 count:16];
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
              objc_enumerationMutation(lightweightMembers);
            }

            lightweightPrimary = [*(*(&v36 + 1) + 8 * i) lightweightPrimary];
            tuHandle = [lightweightPrimary tuHandle];
            v28 = [tuHandle isEquivalentToHandle:handleCopy];

            if ((v28 & 1) == 0)
            {
              v29 = sub_100004778();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_10047763C();
              }

              v19 = 0;
              messageCopy = v34;
              updateCopy = v35;
              goto LABEL_28;
            }
          }

          v23 = [lightweightMembers countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      messageCopy = v34;
      updateCopy = v35;
    }

LABEL_18:
    v19 = 1;
    goto LABEL_28;
  }

  v19 = 0;
  if (participantUpdateType && participantUpdateType != 3)
  {
    if (participantUpdateType == 1)
    {
      if (!conversation)
      {
        v30 = sub_100004778();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1004775CC();
        }

        goto LABEL_27;
      }

      addedMembers = [messageCopy addedMembers];
      if ([addedMembers count])
      {

        goto LABEL_25;
      }

      lightweightMembers2 = [messageCopy lightweightMembers];
      v32 = [lightweightMembers2 count];

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

- (BOOL)verifyLightweightMessageTypeFromHandle:(id)handle message:(id)message existingConversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  if (!conversationCopy)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1004776A4();
    }

    goto LABEL_9;
  }

  value = [handle value];
  lightweightMembers = [conversationCopy lightweightMembers];
  v12 = [lightweightMembers copy];
  v13 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:v12];

  if (v13)
  {
    type = [messageCopy type];
    if (type <= 0x23)
    {
      if (((1 << type) & 0xE2749FC6FLL) != 0)
      {
LABEL_9:
        v15 = 0;
        goto LABEL_10;
      }

      if (((1 << type) & 0x8A00310) != 0)
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

- (BOOL)verifyEndorseRepresentsMemberFromHandle:(id)handle message:(id)message existingConversation:(id)conversation
{
  handleCopy = handle;
  messageCopy = message;
  conversationCopy = conversation;
  if ([messageCopy type] != 29)
  {
    goto LABEL_9;
  }

  if (!conversationCopy)
  {
    tuConversationMember = sub_100004778();
    if (os_log_type_enabled(tuConversationMember, OS_LOG_TYPE_ERROR))
    {
      sub_1004776A4();
    }

    goto LABEL_23;
  }

  addedMembers = [messageCopy addedMembers];
  v12 = [addedMembers count];

  if (v12 != 1)
  {
    tuConversationMember = sub_100004778();
    if (os_log_type_enabled(tuConversationMember, OS_LOG_TYPE_ERROR))
    {
      sub_1004776E0(messageCopy);
    }

    goto LABEL_23;
  }

  addedMembers2 = [messageCopy addedMembers];
  firstObject = [addedMembers2 firstObject];
  tuConversationMember = [firstObject tuConversationMember];

  if (!-[NSObject isLightweightMember](tuConversationMember, "isLightweightMember") || (-[NSObject lightweightPrimary](tuConversationMember, "lightweightPrimary"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isEquivalentToHandle:handleCopy], v16, (v17 & 1) == 0))
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412546;
      v32 = handleCopy;
      v33 = 2112;
      v34 = tuConversationMember;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "FromID: %@ attempting to vouch for an invalid member %@", &v31, 0x16u);
    }

    goto LABEL_22;
  }

  handle = [tuConversationMember handle];
  value = [handle value];
  lightweightMembers = [conversationCopy lightweightMembers];
  v21 = [lightweightMembers copy];
  v22 = [(CSDConversationManager *)self memberExistsForParticipantDestination:value members:v21];

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

  lightweightPrimary = [v22 lightweightPrimary];
  v24 = [lightweightPrimary isEquivalentToHandle:handleCopy];

  if ((v24 & 1) == 0)
  {
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = handleCopy;
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
  queue = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017108C;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

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
  queue = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100171434;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

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
  queue = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001716D8;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_incomingPendingConversationsByGroupUUID
{
  pendingMembershipTracker = [(CSDConversationManager *)self pendingMembershipTracker];
  pendingMembersByGroup = [pendingMembershipTracker pendingMembersByGroup];

  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [pendingMembersByGroup count]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = pendingMembersByGroup;
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

  linkManager = [(CSDConversationManager *)self linkManager];
  allKeys = [v5 allKeys];
  v36 = 0;
  v16 = [linkManager conversationLinkDescriptorsWithGroupUUIDs:allKeys error:&v36];
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
        groupUUID = [v24 groupUUID];
        v26 = [v4 objectForKeyedSubscript:groupUUID];

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
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
  queue = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100171BF0;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)conversationsByUUIDIncludingStorageConversations:(BOOL)conversations
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100028694;
  v14 = sub_1000328D4;
  v15 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100171D8C;
  block[3] = &unk_10061CE30;
  block[4] = self;
  block[5] = &v10;
  conversationsCopy = conversations;
  dispatch_sync(queue, block);

  v6 = [v11[5] copy];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)activatedConversationLinksWithError:(id *)error
{
  if ([(CSDConversationManager *)self _linksEnabled])
  {
    linkManager = [(CSDConversationManager *)self linkManager];
    v6 = [linkManager fetchActivatedLinksWithError:error];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)deletedConversationLinksWithError:(id *)error
{
  if ([(CSDConversationManager *)self _linksEnabled])
  {
    linkManager = [(CSDConversationManager *)self linkManager];
    v6 = [linkManager fetchDeletedLinksWithError:error];
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
  authorizedBundleIdentifiers = [v5 authorizedBundleIdentifiers];
  [v2 setObject:authorizedBundleIdentifiers forKeyedSubscript:@"bk"];

  return v2;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001722A8;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001723B0;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

- (void)addObserver:(id)observer queue:(id)queue
{
  queueCopy = queue;
  observerCopy = observer;
  observerStorage = [(CSDConversationManager *)self observerStorage];
  [observerStorage addObserver:observerCopy queue:queueCopy];
}

- (void)beginListeningOnService:(id)service
{
  serviceCopy = service;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100172534;
  v7[3] = &unk_100619D88;
  v8 = serviceCopy;
  selfCopy = self;
  v6 = serviceCopy;
  dispatch_async(queue, v7);
}

- (void)retreiveActiveConversations
{
  service = [(CSDConversationManager *)self service];
  callerID = [service callerID];

  if (callerID)
  {
    persistenceController = [(CSDConversationManager *)self persistenceController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001728F0;
    v8[3] = &unk_10061CE58;
    v8[4] = self;
    [persistenceController enumerateActiveConversations:v8];
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

    persistenceController2 = [(CSDConversationManager *)self persistenceController];
    [persistenceController2 removeAllConversations];
  }
}

- (void)removeAllConversations
{
  persistenceController = [(CSDConversationManager *)self persistenceController];
  [persistenceController removeAllConversations];
}

- (id)findOrCreateConversationWithGroupUUID:(id)d messagesGroupUUID:(id)iD remoteMembers:(id)members otherInvitedHandles:(id)handles localMember:(id)member remotePushTokens:(id)tokens link:(id)link activity:(id)self0 avMode:(unint64_t)self1 presentationMode:(unint64_t)self2 conversationProvider:(id)self3 screenSharingRequest:(id)self4
{
  dCopy = d;
  iDCopy = iD;
  membersCopy = members;
  handlesCopy = handles;
  memberCopy = member;
  tokensCopy = tokens;
  linkCopy = link;
  activityCopy = activity;
  providerCopy = provider;
  requestCopy = request;
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
  v46 = dCopy;
  v47 = membersCopy;
  v48 = providerCopy;
  selfCopy = self;
  v50 = linkCopy;
  v24 = linkCopy;
  v25 = providerCopy;
  v51 = memberCopy;
  v52 = iDCopy;
  v53 = handlesCopy;
  v54 = tokensCopy;
  v55 = activityCopy;
  v56 = requestCopy;
  modeCopy = mode;
  presentationModeCopy = presentationMode;
  v57 = &v60;
  v41 = requestCopy;
  v39 = activityCopy;
  v35 = tokensCopy;
  v38 = handlesCopy;
  v26 = iDCopy;
  v27 = memberCopy;
  v28 = v24;
  v29 = v25;
  v30 = membersCopy;
  v31 = dCopy;
  dispatch_sync(queue, block);

  v32 = v61[5];
  _Block_object_dispose(&v60, 8);

  return v32;
}

- (void)joinExistingConversationWithUUID:(id)d context:(id)context
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173C8C;
  block[3] = &unk_100619E58;
  dCopy = d;
  contextCopy = context;
  selfCopy = self;
  v6 = contextCopy;
  v7 = dCopy;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  queue = [(CSDConversationManager *)self queue];
  dispatch_async(queue, v8);
}

- (id)initiatePendingConversationForLink:(id)link localMember:(id)member isVideoEnabled:(BOOL)enabled
{
  linkCopy = link;
  memberCopy = member;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100028694;
  v25 = sub_1000328D4;
  v26 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017467C;
  block[3] = &unk_10061CED0;
  v16 = linkCopy;
  v17 = memberCopy;
  enabledCopy = enabled;
  selfCopy = self;
  v19 = &v21;
  v11 = memberCopy;
  v12 = linkCopy;
  dispatch_sync(queue, block);

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

- (void)requestLetMeInApprovalForPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100174C04;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = pseudonymCopy;
  v6 = pseudonymCopy;
  dispatch_async(queue, v7);
}

- (void)updateLetMeInRequestState:(int64_t)state addLink:(id)link forConversationWithUUID:(id)d
{
  linkCopy = link;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100175C28;
  v13[3] = &unk_10061BDD0;
  v14 = dCopy;
  selfCopy = self;
  v16 = linkCopy;
  stateCopy = state;
  v11 = linkCopy;
  v12 = dCopy;
  dispatch_async(queue, v13);
}

- (void)sendInvitationMessageToMember:(id)member destinationID:(id)d invitationContext:(id)context forConversation:(id)conversation includeAllAttributes:(BOOL)attributes invitationPreferences:(id)preferences additionalOptions:(id)options
{
  attributesCopy = attributes;
  memberCopy = member;
  dCopy = d;
  contextCopy = context;
  conversationCopy = conversation;
  preferencesCopy = preferences;
  optionsCopy = options;
  v18 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  link = [conversationCopy link];
  v21 = [(CSDMessagingConversationMessage *)v18 initWithType:1 groupUUID:groupUUID link:link];

  if (attributesCopy)
  {
    v61 = dCopy;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
    v23 = [activeRemoteParticipants countByEnumeratingWithState:&v78 objects:v87 count:16];
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
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v27 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:*(*(&v78 + 1) + 8 * i)];
          [(CSDMessagingConversationMessage *)v21 addActiveParticipants:v27];
        }

        v24 = [activeRemoteParticipants countByEnumeratingWithState:&v78 objects:v87 count:16];
      }

      while (v24);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    activeLightweightParticipants = [conversationCopy activeLightweightParticipants];
    v29 = [activeLightweightParticipants countByEnumeratingWithState:&v74 objects:v86 count:16];
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
            objc_enumerationMutation(activeLightweightParticipants);
          }

          v33 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:*(*(&v74 + 1) + 8 * j)];
          [(CSDMessagingConversationMessage *)v21 addActiveLightweightParticipants:v33];
        }

        v30 = [activeLightweightParticipants countByEnumeratingWithState:&v74 objects:v86 count:16];
      }

      while (v30);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    remoteMembers = [conversationCopy remoteMembers];
    v35 = [remoteMembers countByEnumeratingWithState:&v70 objects:v85 count:16];
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
            objc_enumerationMutation(remoteMembers);
          }

          v39 = [CSDMessagingConversationMember memberWithTUConversationMember:*(*(&v70 + 1) + 8 * k)];
          [(CSDMessagingConversationMessage *)v21 addAddedMembers:v39];
        }

        v36 = [remoteMembers countByEnumeratingWithState:&v70 objects:v85 count:16];
      }

      while (v36);
    }

    v59 = contextCopy;
    v62 = memberCopy;

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    activitySessions = [conversationCopy activitySessions];
    v41 = [activitySessions countByEnumeratingWithState:&v66 objects:v84 count:16];
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
            objc_enumerationMutation(activitySessions);
          }

          v45 = *(*(&v66 + 1) + 8 * m);
          activity = [v45 activity];
          isStaticActivity = [activity isStaticActivity];

          if ((isStaticActivity & 1) == 0)
          {
            v48 = [CSDMessagingConversationActivitySession activitySessionWithCSDConversationActivitySession:v45 fromConversation:conversationCopy forStorage:0];
            [(CSDMessagingConversationMessage *)v21 addActivitySessions:v48];
          }
        }

        v42 = [activitySessions countByEnumeratingWithState:&v66 objects:v84 count:16];
      }

      while (v42);
    }

    highlightIdentifiers = [conversationCopy highlightIdentifiers];
    anyObject = [highlightIdentifiers anyObject];

    if (anyObject)
    {
      [(CSDMessagingConversationMessage *)v21 setHighlightIdentifier:anyObject];
    }

    stagedActivitySession = [conversationCopy stagedActivitySession];

    dCopy = v61;
    memberCopy = v62;
    if (stagedActivitySession)
    {
      stagedActivitySession2 = [conversationCopy stagedActivitySession];
      v53 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:stagedActivitySession2 fromConversation:conversationCopy forStorage:0];
      [(CSDMessagingConversationMessage *)v21 setStagedActivitySession:v53];
    }

    contextCopy = v60;
  }

  if (preferencesCopy)
  {
    [(CSDMessagingConversationMessage *)v21 setTUInvitationPreferences:preferencesCopy];
  }

  else
  {
    invitationPreferences = [conversationCopy invitationPreferences];
    [(CSDMessagingConversationMessage *)v21 setTUInvitationPreferences:invitationPreferences];
  }

  featureFlags = [(CSDConversationManager *)self featureFlags];
  nearbyFaceTimeEnabled = [featureFlags nearbyFaceTimeEnabled];

  if (nearbyFaceTimeEnabled)
  {
    [(CSDMessagingConversationMessage *)v21 setTUInvitationContext:contextCopy];
  }

  v57 = sub_100004778();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v83 = v21;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Sending invitation message %@", buf, 0xCu);
  }

  data = [(CSDMessagingConversationMessage *)v21 data];
  if (dCopy)
  {
    [(CSDConversationManager *)self sendData:data onConversation:conversationCopy toDestinationID:dCopy additionalOptions:optionsCopy];
  }

  else
  {
    [(CSDConversationManager *)self sendData:data onConversation:conversationCopy toMember:memberCopy additionalOptions:optionsCopy];
  }
}

- (void)startAudioForConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001766B8;
  v7[3] = &unk_100619D88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)_leaveConversation:(id)conversation withContext:(id)context
{
  conversationCopy = conversation;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [conversationCopy leaveUsingContext:contextCopy];
  link = [conversationCopy link];
  pseudonym = [link pseudonym];
  v10 = [pseudonym length];

  if (v10)
  {
    link2 = [conversationCopy link];
    pseudonym2 = [link2 pseudonym];
    v13 = [(CSDConversationManager *)self _removePendingConversationWithPseudonym:pseudonym2];
  }
}

- (void)_leaveConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:0];
  [(CSDConversationManager *)self _leaveConversation:conversationCopy withContext:v6];
}

- (void)leaveConversationWithUUID:(id)d
{
  dCopy = d;
  v5 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:0];
  [(CSDConversationManager *)self leaveConversationWithUUID:dCopy withContext:v5];
}

- (void)leaveConversationWithUUID:(id)d withContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100176AF4;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)leaveAllConversations
{
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100176C08;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addPseudonym:(id)pseudonym forCallUUID:(id)d
{
  pseudonymCopy = pseudonym;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100176DEC;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = pseudonymCopy;
  v9 = pseudonymCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)removePseudonym:(id)pseudonym forCallUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100176EFC;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

- (void)setUplinkMuted:(BOOL)muted forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017700C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  mutedCopy = muted;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setVideo:(BOOL)video forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100177134;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  videoCopy = video;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)sendVideoUpgradeMessageforConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100177254;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)setVideoEnabled:(BOOL)enabled forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001774A4;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  enabledCopy = enabled;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setUplinkMuted:(BOOL)muted forPendingConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001775CC;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  mutedCopy = muted;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setVideoEnabled:(BOOL)enabled forPendingConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001778F0;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  enabledCopy = enabled;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)requestParticipantToShareScreen:(id)screen forConversationUUID:(id)d
{
  screenCopy = screen;
  dCopy = d;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    queue = [(CSDConversationManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100177C78;
    block[3] = &unk_100619E58;
    v13 = screenCopy;
    selfCopy = self;
    v15 = dCopy;
    dispatch_async(queue, block);

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

- (void)cancelOrDenyScreenShareRequest:(id)request forConversationUUID:(id)d
{
  requestCopy = request;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100177FDC;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = requestCopy;
  v9 = requestCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setScreenEnabled:(BOOL)enabled screenShareAttributes:(id)attributes forConversationWithUUID:(id)d
{
  attributesCopy = attributes;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100178394;
  v13[3] = &unk_10061BE38;
  v13[4] = self;
  v14 = dCopy;
  enabledCopy = enabled;
  v15 = attributesCopy;
  v11 = attributesCopy;
  v12 = dCopy;
  dispatch_async(queue, v13);
}

- (void)setVideoPaused:(BOOL)paused forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178B1C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  pausedCopy = paused;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setAudioPaused:(BOOL)paused forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178C44;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  pausedCopy = paused;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setRelaying:(BOOL)relaying forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178D6C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  relayingCopy = relaying;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setScreening:(BOOL)screening forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178E94;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  screeningCopy = screening;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setAudioInjectionAllowed:(BOOL)allowed forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178FBC;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  allowedCopy = allowed;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (BOOL)isConversationWithUUIDRedirectingAudio:(id)audio
{
  audioCopy = audio;
  if ([(CSDConversationManager *)self isConversationWithUUIDRelaying:audioCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CSDConversationManager *)self isConversationWithUUIDScreening:audioCopy];
  }

  return v5;
}

- (BOOL)isConversationWithUUIDRelaying:(id)relaying
{
  relayingCopy = relaying;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179180;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = relayingCopy;
  v10 = &v11;
  v6 = relayingCopy;
  dispatch_sync(queue, block);

  LOBYTE(relayingCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return relayingCopy;
}

- (BOOL)isConversationWithUUIDScreening:(id)screening
{
  screeningCopy = screening;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001792F4;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = screeningCopy;
  v10 = &v11;
  v6 = screeningCopy;
  dispatch_sync(queue, block);

  LOBYTE(screeningCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return screeningCopy;
}

- (int)presentationStateForConversationWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 2;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017946C;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(queue, block);

  LODWORD(dCopy) = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

- (void)setPresentationState:(int)state forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017959C;
  block[3] = &unk_10061CF48;
  block[4] = self;
  v10 = dCopy;
  stateCopy = state;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setPresentationRect:(CGRect)rect forConversationWithUUID:(id)d
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001796E4;
  v12[3] = &unk_10061CF70;
  v12[4] = self;
  v13 = dCopy;
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  v11 = dCopy;
  dispatch_async(queue, v12);
}

- (void)setGridDisplayMode:(unint64_t)mode forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179810;
  block[3] = &unk_100619F20;
  block[4] = self;
  v10 = dCopy;
  modeCopy = mode;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setScreenShareAttributes:(id)attributes forConversationWithUUID:(id)d
{
  attributesCopy = attributes;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179954;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = attributesCopy;
  v9 = attributesCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setIsNearbySharePlay:(BOOL)play forConversationWithUUID:(id)d
{
  playCopy = play;
  dCopy = d;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = playCopy;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversationUUID: %d isNearbySharePlay: %@", buf, 0x12u);
  }

  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179B20;
  block[3] = &unk_100619F48;
  block[4] = self;
  v11 = dCopy;
  v12 = playCopy;
  v9 = dCopy;
  dispatch_async(queue, block);
}

- (void)removeRemoteMembers:(id)members fromConversationWithUUID:(id)d
{
  membersCopy = members;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179FBC;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = membersCopy;
  selfCopy = self;
  v9 = membersCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (BOOL)_conversationIsOverGreenTeaCapacity:(id)capacity addingMembers:(id)members
{
  capacityCopy = capacity;
  membersCopy = members;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  v9 = TUGreenTeaLagunaEnabled();

  if (v9)
  {
    remoteMembers = [capacityCopy remoteMembers];
    remoteMembers3 = [NSMutableSet setWithSet:remoteMembers];

    [remoteMembers3 unionSet:membersCopy];
    localMember = [capacityCopy localMember];
    association = [localMember association];
    v14 = [TUConversation mergedRemoteMembers:remoteMembers3 withLocalMemberAssociation:association removingLocallyAssociatedMember:1];

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
      remoteMembers2 = [capacityCopy remoteMembers];
      v21 = [remoteMembers2 count];
      v22 = @"NO";
      if (v21 == 1)
      {
        v22 = @"YES";
      }

      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "conversationIsOverGreenTeaCapacity: %@", &v24, 0xCu);
    }

    remoteMembers3 = [capacityCopy remoteMembers];
    v18 = [remoteMembers3 count] == 1;
  }

  return v18;
}

- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences toConversationWithUUID:(id)d
{
  membersCopy = members;
  handlesCopy = handles;
  preferencesCopy = preferences;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017A4B8;
  block[3] = &unk_10061A428;
  v20 = dCopy;
  v21 = membersCopy;
  v22 = handlesCopy;
  selfCopy = self;
  v24 = preferencesCopy;
  v15 = preferencesCopy;
  v16 = handlesCopy;
  v17 = membersCopy;
  v18 = dCopy;
  dispatch_async(queue, block);
}

- (void)prepareConversationWithUUID:(id)d withHandoffContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017AC24;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = contextCopy;
  selfCopy = self;
  v9 = contextCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setSharePlayHandedOff:(BOOL)off onConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017B194;
  block[3] = &unk_100619F48;
  offCopy = off;
  v10 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)maybeAddComplementaryAssociationVoucherFor:(id)for toLocalMemberOf:(id)of completion:(id)completion
{
  forCopy = for;
  ofCopy = of;
  completionCopy = completion;
  selfCopy = self;
  voucherManager = [(CSDConversationManager *)self voucherManager];

  if (voucherManager)
  {
    block = completionCopy;
    group = dispatch_group_create();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v41 = forCopy;
    obj = forCopy;
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
          association = [v16 association];
          if (association)
          {
            v18 = association;
            associationVoucher = [v16 associationVoucher];

            if (associationVoucher)
            {
              v20 = objc_alloc_init(CSDMessagingMemberAssociationClaim);
              localMember = [ofCopy localMember];
              [localMember handle];
              v23 = v22 = v13;
              v24 = [CSDMessagingHandle handleWithTUHandle:v23];
              [(CSDMessagingMemberAssociationClaim *)v20 setPrimaryHandle:v24];

              localParticipant = [ofCopy localParticipant];
              -[CSDMessagingMemberAssociationClaim setPrimaryIdentifier:](v20, "setPrimaryIdentifier:", [localParticipant identifier]);

              localParticipant2 = [ofCopy localParticipant];
              avcIdentifier = [localParticipant2 avcIdentifier];
              [(CSDMessagingMemberAssociationClaim *)v20 setPrimaryAvcIdentifier:avcIdentifier];

              handle = [v16 handle];
              v29 = [CSDMessagingHandle handleWithTUHandle:handle];
              [(CSDMessagingMemberAssociationClaim *)v20 setAssociatedPseudonym:v29];

              groupUUID = [ofCopy groupUUID];
              uUIDString = [groupUUID UUIDString];
              [(CSDMessagingMemberAssociationClaim *)v20 setConversationGroupUUIDString:uUIDString];

              association2 = [v16 association];
              -[CSDMessagingMemberAssociationClaim setType:](v20, "setType:", [association2 type]);

              dispatch_group_enter(group);
              voucherManager2 = [(CSDConversationManager *)selfCopy voucherManager];
              data = [(CSDMessagingMemberAssociationClaim *)v20 data];
              localMember2 = [ofCopy localMember];
              handle2 = [localMember2 handle];
              v46[0] = _NSConcreteStackBlock;
              v46[1] = 3221225472;
              v46[2] = sub_10017B75C;
              v46[3] = &unk_10061CF98;
              v46[4] = v16;
              v47 = ofCopy;
              v48 = v20;
              v49 = group;
              v37 = v20;
              [voucherManager2 sign:data as:handle2 completion:v46];

              v13 = v22;
              v14 = v42;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v13);
    }

    queue = [(CSDConversationManager *)selfCopy queue];
    completionCopy = block;
    dispatch_group_notify(group, queue, block);

    forCopy = v41;
  }

  else
  {
    v39 = sub_100004778();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      sub_100477B90();
    }

    completionCopy[2](completionCopy);
  }
}

- (void)addInvitedMemberHandlesFromAddedRemoteMembers:(id)members toConversationLink:(id)link
{
  membersCopy = members;
  linkCopy = link;
  selfCopy = self;
  _linksEnabled = [(CSDConversationManager *)self _linksEnabled];
  v44 = linkCopy;
  if (!linkCopy || !_linksEnabled || ![linkCopy isLocallyCreated])
  {
    goto LABEL_46;
  }

  v42 = +[NSMutableSet set];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v40 = membersCopy;
  v9 = membersCopy;
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
      handle = [v11 handle];
      value = [handle value];
      if ([value destinationIdIsTemporary])
      {
        goto LABEL_12;
      }

      handle2 = [v11 handle];
      value2 = [handle2 value];
      if ([value2 destinationIdIsPseudonym])
      {

LABEL_12:
LABEL_13:
        handle10 = sub_100004778();
        if (!os_log_type_enabled(handle10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        handle3 = [v11 handle];
        handle4 = [v11 handle];
        value3 = [handle4 value];
        if ([value3 destinationIdIsTemporary])
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        v45 = v18;
        handle5 = [v11 handle];
        value4 = [handle5 value];
        if ([value4 destinationIdIsPseudonym])
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        handle6 = [v11 handle];
        originatorHandle = [v44 originatorHandle];
        v24 = [handle6 isEquivalentToHandle:originatorHandle];
        *buf = 138413058;
        if (v24)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        v60 = handle3;
        handle9 = handle3;
        v61 = 2112;
        v62 = v45;
        v63 = 2112;
        v64 = v21;
        v65 = 2112;
        v66 = v25;
        _os_log_impl(&_mh_execute_header, handle10, OS_LOG_TYPE_DEFAULT, "Not adding %@ to invited member handles of link because destinationIdIsTemporary(%@), destinationIdIsPseudonym(%@), or handle is the originator of link (%@)", buf, 0x2Au);

LABEL_24:
        goto LABEL_25;
      }

      handle7 = [v11 handle];
      originatorHandle2 = [v44 originatorHandle];
      v29 = [handle7 isEquivalentToHandle:originatorHandle2];

      if (v29)
      {
        goto LABEL_13;
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      invitedMemberHandles = [v44 invitedMemberHandles];
      v31 = [invitedMemberHandles countByEnumeratingWithState:&v50 objects:v58 count:16];
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
            objc_enumerationMutation(invitedMemberHandles);
          }

          v35 = *(*(&v50 + 1) + 8 * v34);
          handle8 = [v11 handle];
          LOBYTE(v35) = [handle8 isEquivalentToHandle:v35];

          if (v35)
          {
            break;
          }

          if (v32 == ++v34)
          {
            v32 = [invitedMemberHandles countByEnumeratingWithState:&v50 objects:v58 count:16];
            if (v32)
            {
              goto LABEL_30;
            }

            goto LABEL_36;
          }
        }

        handle10 = sub_100004778();
        if (!os_log_type_enabled(handle10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        handle9 = [v11 handle];
        *buf = 138412290;
        v60 = handle9;
        _os_log_impl(&_mh_execute_header, handle10, OS_LOG_TYPE_DEFAULT, "Not adding %@ to invited member handles of link because it is already an invited member handle of the link", buf, 0xCu);
        goto LABEL_24;
      }

LABEL_36:

      handle10 = [v11 handle];
      [v42 addObject:handle10];
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
    [(CSDConversationManager *)selfCopy addInvitedMemberHandles:v42 toConversationLink:v44 completionHandler:0];
    membersCopy = v40;
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

    membersCopy = v40;
    v38 = v42;
  }

LABEL_46:
}

- (BOOL)allActiveConversationParticipantsSupportSharePlay
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = [(CSDConversationManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017BF28;
  v5[3] = &unk_10061C1E0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)isSharePlayAvailable
{
  sharePlaySystemStateObserver = [(CSDConversationManager *)self sharePlaySystemStateObserver];
  allowSharePlay = [sharePlaySystemStateObserver allowSharePlay];

  return allowSharePlay;
}

- (BOOL)isScreenSharingAvailable
{
  sharePlaySystemStateObserver = [(CSDConversationManager *)self sharePlaySystemStateObserver];
  allowScreenSharing = [sharePlaySystemStateObserver allowScreenSharing];

  return allowScreenSharing;
}

- (BOOL)isScreenSharingInitiationAvailable
{
  sharePlaySystemStateObserver = [(CSDConversationManager *)self sharePlaySystemStateObserver];
  allowScreenSharingInitiation = [sharePlaySystemStateObserver allowScreenSharingInitiation];

  return allowScreenSharingInitiation;
}

- (void)displaySharePlayUnableToStartAlert
{
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017C0B8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
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
    queue = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(queue);

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

- (void)updateMessagesGroupName:(id)name onConversationWithUUID:(id)d
{
  nameCopy = name;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017C494;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = nameCopy;
  selfCopy = self;
  v9 = nameCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)updateMessagesGroupPhotoOnConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017C974;
  v7[3] = &unk_100619D88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)setLocalParticipantCluster:(id)cluster forConversationUUID:(id)d
{
  clusterCopy = cluster;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017CE78;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = clusterCopy;
  selfCopy = self;
  v9 = clusterCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
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

- (id)createCPActivitySessionForActivitySession:(id)session onConversationWithUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = sessionCopy;
    v27 = 2112;
    v28 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ConversationManager asked to create activitySession for activitySession: %@ on conversation UUID: %@", &v25, 0x16u);
  }

  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  v11 = [mutableConversationsByUUID objectForKeyedSubscript:dCopy];

  if (!v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      mutableConversationsByUUID2 = [(CSDConversationManager *)self mutableConversationsByUUID];
      allKeys = [mutableConversationsByUUID2 allKeys];
      v25 = 138412546;
      v26 = dCopy;
      v27 = 2112;
      v28 = allKeys;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v25, 0x16u);
    }

    goto LABEL_14;
  }

  if ([v11 state] != 3 && objc_msgSend(sessionCopy, "isLocallyInitiated"))
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = dCopy;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_20;
  }

  activity = [sessionCopy activity];
  [activity setTrustedFromHandle:0];

  v12 = [v11 createActivitySession:sessionCopy];
  if (v12)
  {
    [(CSDConversationManager *)self cancelPreviouslySentScreenShareRequests:v11];
    tuConversationActivitySession = [v12 tuConversationActivitySession];
    localParticipant = [v11 localParticipant];
    [(CSDConversationManager *)self postSessionStartedForSession:tuConversationActivitySession originator:localParticipant conversation:v11];

    activity2 = [sessionCopy activity];
    LOBYTE(localParticipant) = [activity2 isStaticActivity];

    if (localParticipant)
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
      groupUUID = [v11 groupUUID];
      v17 = [(CSDMessagingConversationMessage *)v22 initWithType:8 groupUUID:groupUUID link:0];

      [(CSDConversationManager *)self sendMessage:v17 forConversation:v11 withActivitySession:v12];
      [(CSDConversationManager *)self broadcastImageForSession:sessionCopy onConversation:v11];
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

- (void)advertiseGroupActivity:(id)activity completionHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = activityCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Advertising GroupActivity with UUID = %@", buf, 0xCu);
  }

  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017D4B8;
  block[3] = &unk_10061AF20;
  block[4] = self;
  v13 = activityCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = activityCopy;
  dispatch_async(queue, block);
}

- (void)stopAdvertisingGroupActivity:(id)activity completionHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = activityCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stopping advertisement of GroupActivity with UUID = %@", buf, 0xCu);
  }

  queue = [(CSDConversationManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10017D654;
  v11[3] = &unk_10061ACD0;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(queue, v11);
}

- (void)createActivitySession:(id)session onConversationWithUUID:(id)d options:(unint64_t)options withCompletion:(id)completion
{
  sessionCopy = session;
  dCopy = d;
  completionCopy = completion;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "createActivitySession: %@ onContainerWithUUID: %@", &v15, 0x16u);
  }

  activitySessionContainerProvider = [(CSDConversationManager *)self activitySessionContainerProvider];
  [activitySessionContainerProvider handleActivitySessionCreationRequestWithActivity:sessionCopy options:options containerID:dCopy completionHandler:completionCopy];
}

- (void)leaveActivitySession:(id)session onConversationWithUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017D8A8;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = sessionCopy;
  selfCopy = self;
  v9 = sessionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)endActivitySession:(id)session onConversationWithUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017DB14;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = sessionCopy;
  selfCopy = self;
  v9 = sessionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)presentDismissalAlertForActivitySessionWithUUID:(id)d onConversationWithUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017DD84;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = iDCopy;
  selfCopy = self;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)cancelPreviouslySentScreenShareRequests:(id)requests
{
  requestsCopy = requests;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  screenSharingRequests = [requestsCopy screenSharingRequests];
  v6 = [screenSharingRequests countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(screenSharingRequests);
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

          uUID = [requestsCopy UUID];
          [(CSDConversationManager *)self cancelOrDenyScreenShareRequest:v11 forConversationUUID:uUID];
        }
      }

      v8 = [screenSharingRequests countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)setUsingAirplay:(BOOL)airplay onActivitySession:(id)session onConversationWithUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10017E184;
  v13[3] = &unk_10061BE38;
  airplayCopy = airplay;
  v13[4] = self;
  v14 = sessionCopy;
  v15 = dCopy;
  v11 = dCopy;
  v12 = sessionCopy;
  dispatch_async(queue, v13);
}

- (void)sendMessage:(id)message forConversation:(id)conversation withActivitySession:(id)session additionalOptions:(id)options
{
  conversationCopy = conversation;
  optionsCopy = options;
  sessionCopy = session;
  messageCopy = message;
  v13 = [CSDMessagingConversationActivitySession activitySessionWithCSDConversationActivitySession:sessionCopy fromConversation:conversationCopy forStorage:0];
  [messageCopy addActivitySessions:v13];

  data = [messageCopy data];
  v28[0] = IDSSendMessageOptionPublicMessageIntentKey;
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [messageCopy type]);
  v29[0] = v15;
  v28[1] = IDSSendMessageOptionQueueOneIdentifierKey;
  identifier = [sessionCopy identifier];

  uUIDString = [identifier UUIDString];
  type = [messageCopy type];

  v19 = [NSNumber numberWithInt:type];
  v20 = [NSString stringWithFormat:@"%@:%@", uUIDString, v19];
  v29[1] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v22 = [v21 mutableCopy];

  if (optionsCopy)
  {
    [v22 addEntriesFromDictionary:optionsCopy];
  }

  v23 = [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v22];
  v24 = sub_100004778();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v27 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "(success: %d).", buf, 8u);
  }
}

- (void)joinConversationWithRequest:(id)request
{
  requestCopy = request;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017E880;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

- (void)launchApplicationForActivitySessionUUID:(id)d authorizedExternally:(BOOL)externally forceBackground:(BOOL)background completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10017EB34;
  v15[3] = &unk_10061CFE8;
  backgroundCopy = background;
  v16 = dCopy;
  selfCopy = self;
  v18 = handlerCopy;
  externallyCopy = externally;
  v13 = handlerCopy;
  v14 = dCopy;
  dispatch_sync(queue, v15);
}

- (void)requestActivityAuthorizationForApplicationWithBundleIdentifier:(id)identifier overrides:(id)overrides completionHandler:(id)handler
{
  identifierCopy = identifier;
  overridesCopy = overrides;
  handlerCopy = handler;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting activity authorization for %@", buf, 0xCu);
  }

  queue = [(CSDConversationManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10017F91C;
  v16[3] = &unk_10061AF98;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = overridesCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = overridesCopy;
  v15 = identifierCopy;
  dispatch_sync(queue, v16);
}

- (void)revokeBackgroundPipAuthorizationsForBundleID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017FA70;
  v7[3] = &unk_100619D88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)resetActivitySessionSceneAssociationsForBundleID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017FCAC;
  v7[3] = &unk_100619D88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)handleConversation:(id)conversation participantUpdateMessage:(id)message fromNormalizedHandle:(id)handle
{
  conversationCopy = conversation;
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v137 = messageCopy;
    v138 = 2112;
    v139 = handleCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Handling participant update message: %@ from: %@", buf, 0x16u);
  }

  if (sub_1000C0318(messageCopy))
  {
    v13 = objc_alloc_init(NSMutableArray);
    localParticipant = [conversationCopy localParticipant];
    v15 = [IDSDestination destinationWithTUConversationParticipant:localParticipant];
    v109 = v13;
    [v13 addObject:v15];

    activeParticipants = [messageCopy activeParticipants];
    firstObject = [activeParticipants firstObject];

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
    v19 = [activeRemoteParticipants countByEnumeratingWithState:&v130 objects:v146 count:16];
    if (v19)
    {
      v20 = v19;
      v103 = conversationCopy;
      selfCopy = self;
      v108 = 0;
      v21 = *v131;
      v107 = firstObject;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v131 != v21)
          {
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v23 = *(*(&v130 + 1) + 8 * i);
          identifier = [v23 identifier];
          if (identifier == [firstObject identifier])
          {
            handle = [v23 handle];
            v26 = handleCopy;
            v27 = [handle isEquivalentToHandle:handleCopy];

            if ((v27 & 1) == 0)
            {
              v33 = sub_100004778();
              handleCopy = v26;
              firstObject = v107;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                handle2 = [v23 handle];
                *buf = 138412802;
                v137 = v107;
                v138 = 2112;
                v139 = handle2;
                v140 = 2112;
                v141 = handleCopy;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring participant update message %@ because participant handle %@ does not match message sender %@.", buf, 0x20u);
              }

              goto LABEL_24;
            }

            if (v108)
            {
              v28 = sub_100004778();
              handleCopy = v26;
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v137 = v103;
                _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Trying to update participant, but one is already found... duplicate participants on conversation? conversation: %@", buf, 0xCu);
              }

              tuConversationParticipant = [v23 tuConversationParticipant];
              v30 = [IDSDestination destinationWithTUConversationParticipant:tuConversationParticipant];
              [v109 addObject:v30];
            }

            else
            {
              v108 = v23;
              handleCopy = v26;
            }

            firstObject = v107;
          }

          else
          {
            tuConversationParticipant2 = [v23 tuConversationParticipant];
            v32 = [IDSDestination destinationWithTUConversationParticipant:tuConversationParticipant2];
            [v109 addObject:v32];
          }
        }

        v20 = [activeRemoteParticipants countByEnumeratingWithState:&v130 objects:v146 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

LABEL_24:

      conversationCopy = v103;
      if (v108)
      {
        v35 = sub_100004778();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v137 = v108;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Found participant for update message: %@", buf, 0xCu);
        }

        audioVideoMode = [v108 audioVideoMode];
        avMode = [firstObject avMode];
        presentationMode = [v108 presentationMode];
        hasPresentationMode = [firstObject hasPresentationMode];
        resolvedPresentationMode = presentationMode;
        v40 = selfCopy;
        if (hasPresentationMode)
        {
          resolvedPresentationMode = [v107 resolvedPresentationMode];
        }

        v110 = avMode;
        if ([v103 avMode])
        {
          v41 = 0;
        }

        else
        {
          participantIDsChangedFromAVLessToAV = [v103 participantIDsChangedFromAVLessToAV];
          v43 = handleCopy;
          v44 = [NSNumber numberWithUnsignedLongLong:[v108 identifier]];
          v41 = [participantIDsChangedFromAVLessToAV containsObject:v44];

          handleCopy = v43;
        }

        if (audioVideoMode != v110 || v41)
        {
          v101 = v41;
          if (audioVideoMode != v110)
          {
            tuConversationParticipant3 = [v108 tuConversationParticipant];
            [v103 setParticipantAudioVideoMode:v110 presentationMode:resolvedPresentationMode forParticipant:tuConversationParticipant3];
          }

          tuConversationParticipant4 = [v108 tuConversationParticipant];
          v49 = [IDSDestination destinationWithTUConversationParticipant:tuConversationParticipant4];
          [v109 addObject:v49];

          v50 = sub_100004778();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            uUID = [v103 UUID];
            avMode2 = [v103 avMode];
            *buf = 138413314;
            v53 = @"NO";
            v137 = uUID;
            if (v41)
            {
              v53 = @"YES";
            }

            v138 = 2048;
            v139 = avMode2;
            v140 = 2048;
            v141 = v110;
            v142 = 2048;
            v143 = resolvedPresentationMode;
            v144 = 2112;
            v145 = v53;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Conversation UUID: %@ has avMode: %lu and the desiredAudioVideoMode is %lu desiredPresentationMode is %lu, shouldUpgradeToAV: %@", buf, 0x34u);
          }

          v102 = messageCopy;
          v105 = handleCopy;
          if (![v103 avMode] && v110)
          {
            activeLocalHandles = [(CSDConversationManager *)selfCopy activeLocalHandles];
            v55 = activeLocalHandles[2]();
            v56 = handleCopy;
            v57 = [v55 containsObject:handleCopy];

            v58 = ([v103 state] != 3) & v57;
            if ([messageCopy invitationPreferencesCount])
            {
              invitationResolver = [(CSDConversationManager *)selfCopy invitationResolver];
              tuConversation = [v103 tuConversation];
              tuInvitationPreferences = [messageCopy tuInvitationPreferences];
              v62 = [invitationResolver shouldShowInvitationRingingUIForConversation:tuConversation handle:v56 invitationMessagePreferences:tuInvitationPreferences] ^ 1;
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

              tuConversation2 = [v103 tuConversation];
              v126 = 0u;
              v127 = 0u;
              v128 = 0u;
              v129 = 0u;
              delegateToQueue = [(CSDConversationManager *)selfCopy delegateToQueue];
              v69 = [delegateToQueue countByEnumeratingWithState:&v126 objects:v135 count:16];
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
                      objc_enumerationMutation(delegateToQueue);
                    }

                    v73 = *(*(&v126 + 1) + 8 * j);
                    if (objc_opt_respondsToSelector())
                    {
                      delegateToQueue2 = [(CSDConversationManager *)selfCopy delegateToQueue];
                      v75 = [delegateToQueue2 objectForKey:v73];

                      block[0] = _NSConcreteStackBlock;
                      block[1] = 3221225472;
                      block[2] = sub_100180CC4;
                      block[3] = &unk_10061D010;
                      block[4] = v73;
                      v121 = tuConversation2;
                      v122 = selfCopy;
                      v124 = audioVideoMode;
                      v125 = v110;
                      v123 = v105;
                      dispatch_async(v75, block);
                    }
                  }

                  v70 = [delegateToQueue countByEnumeratingWithState:&v126 objects:v135 count:16];
                }

                while (v70);
              }

              conversationCopy = v103;
              v40 = selfCopy;
            }
          }

          if ([conversationCopy avMode])
          {
            if (!v110 && [conversationCopy state] == 3)
            {
              remoteMembers = [conversationCopy remoteMembers];
              v77 = [remoteMembers count];

              if (v77 == 1)
              {
                v78 = sub_100004778();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Received participant update message to downgrade, but we're in a U+1 call so we should also downgrade!", buf, 2u);
                }

                uUID2 = [conversationCopy UUID];
                [(CSDConversationManager *)v40 setLocalParticipantAudioVideoMode:0 forConversationUUID:uUID2];
              }
            }
          }

          if (![conversationCopy state] && objc_msgSend(conversationCopy, "avMode") < v110)
          {
            activeLocalHandlesForProvider = [(CSDConversationManager *)v40 activeLocalHandlesForProvider];
            provider = [conversationCopy provider];
            v82 = (activeLocalHandlesForProvider)[2](activeLocalHandlesForProvider, provider);
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

              [conversationCopy setAvMode:v110];
            }
          }

          if (!v101 || ([conversationCopy participantIDsChangedFromAVLessToAV], v85 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", -[NSObject identifier](v108, "identifier")), v86 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend(v85, "containsObject:", v86), v86, v85, !v87))
          {
            [conversationCopy setRemoteParticipantType:v110 != 0 participant:v108];
            [conversationCopy updateOneToOneModeForParticipantUpdateType:v110 != 0 participant:v108];
            goto LABEL_95;
          }

          v88 = sub_100004778();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v89 = [NSNumber numberWithUnsignedLongLong:[v108 identifier]];
            participantIDsChangedFromAVLessToAV2 = [conversationCopy participantIDsChangedFromAVLessToAV];
            *buf = 138412546;
            v137 = v89;
            v138 = 2112;
            v139 = participantIDsChangedFromAVLessToAV2;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Removing %@ from participantIDsChangedFromAVLessToAV: %@", buf, 0x16u);
          }

          participantIDsChangedFromAVLessToAV3 = [conversationCopy participantIDsChangedFromAVLessToAV];
          v91 = [NSNumber numberWithUnsignedLongLong:[v108 identifier]];
          [participantIDsChangedFromAVLessToAV3 removeObject:v91];
        }

        else
        {
          v45 = sub_100004778();
          v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
          if (presentationMode == resolvedPresentationMode)
          {
            if (v46)
            {
              *buf = 138412546;
              v137 = v108;
              v138 = 2048;
              v139 = audioVideoMode;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Participant %@ is already in audioVideoMode: %ld... Not handling update!", buf, 0x16u);
            }

LABEL_105:
            firstObject = v107;
LABEL_106:

            goto LABEL_107;
          }

          v102 = messageCopy;
          if (v46)
          {
            *buf = 138412802;
            v137 = v108;
            v138 = 2048;
            v139 = resolvedPresentationMode;
            v140 = 2048;
            v141 = presentationMode;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Update presentationMode for participant %@ desiredPresentationMode:%lu oldPresentationMode:%lu", buf, 0x20u);
          }

          v105 = handleCopy;

          participantIDsChangedFromAVLessToAV3 = [v108 tuConversationParticipant];
          [v103 setParticipantAudioVideoMode:audioVideoMode presentationMode:resolvedPresentationMode forParticipant:participantIDsChangedFromAVLessToAV3];
        }

LABEL_95:
        persistenceController = [(CSDConversationManager *)v40 persistenceController];
        [persistenceController updateConversation:conversationCopy];

        tuConversation3 = [conversationCopy tuConversation];
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        delegateToQueue3 = [(CSDConversationManager *)v40 delegateToQueue];
        v94 = [delegateToQueue3 countByEnumeratingWithState:&v116 objects:v134 count:16];
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
                objc_enumerationMutation(delegateToQueue3);
              }

              v98 = *(*(&v116 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                delegateToQueue4 = [(CSDConversationManager *)selfCopy delegateToQueue];
                v100 = [delegateToQueue4 objectForKey:v98];

                v113[0] = _NSConcreteStackBlock;
                v113[1] = 3221225472;
                v113[2] = sub_100180E10;
                v113[3] = &unk_100619E58;
                v113[4] = v98;
                v114 = tuConversation3;
                v115 = selfCopy;
                dispatch_async(v100, v113);
              }
            }

            v95 = [delegateToQueue3 countByEnumeratingWithState:&v116 objects:v134 count:16];
          }

          while (v95);
        }

        messageCopy = v102;
        conversationCopy = v103;
        handleCopy = v105;
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

- (void)handleConversation:(id)conversation registerMessagesGroupUUIDMessage:(id)message fromNormalizedHandle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = handleCopy;
    v13 = 2112;
    v14 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received message from %@ to associate conversation %@ with messages group", &v11, 0x16u);
  }

  [conversationCopy registerMessagesGroupAssociation];
}

- (void)handleConversation:(id)conversation removeActivitySession:(id)session fromHandle:(id)handle
{
  conversationCopy = conversation;
  sessionCopy = session;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  activitySessions = [sessionCopy activitySessions];
  v11 = [activitySessions count];

  obj = sub_100004778();
  v12 = os_log_type_enabled(obj, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v12)
    {
      *buf = 138412546;
      v39 = sessionCopy;
      v40 = 2112;
      v41 = handleCopy;
      _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEFAULT, "Received remove activity session message %@ from %@", buf, 0x16u);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [sessionCopy activitySessions];
    v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v25 = sessionCopy;
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
          queue2 = [v18 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001813AC;
          block[3] = &unk_100619E58;
          v20 = conversationCopy;
          v30 = v20;
          v31 = v17;
          selfCopy = self;
          dispatch_async(queue2, block);

          v21 = [NSUUID alloc];
          identifierUUIDString = [v17 identifierUUIDString];
          v23 = [v21 initWithUUIDString:identifierUUIDString];

          if (v23)
          {
            [v20 removeActivitySessionWithUUID:v23 usingTerminatingHandle:handleCopy];
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
      sessionCopy = v25;
    }
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
  }
}

- (void)handleConversation:(id)conversation updateActivity:(id)activity fromHandle:(id)handle
{
  conversationCopy = conversation;
  activityCopy = activity;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  activitySessions = [activityCopy activitySessions];
  v13 = [activitySessions count];

  activitySessions2 = sub_100004778();
  v15 = os_log_type_enabled(activitySessions2, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 138412290;
      v34 = activityCopy;
      _os_log_impl(&_mh_execute_header, activitySessions2, OS_LOG_TYPE_DEFAULT, "Updating activities from message: %@", buf, 0xCu);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    activitySessions2 = [activityCopy activitySessions];
    v16 = [activitySessions2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v27 = activityCopy;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(activitySessions2);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = [NSUUID alloc];
          identifierUUIDString = [v20 identifierUUIDString];
          v23 = [v21 initWithUUIDString:identifierUUIDString];

          if (v23)
          {
            activity = [v20 activity];
            tuConversationActivity = [activity tuConversationActivity];

            [tuConversationActivity setTrustedFromHandle:handleCopy];
            activitySessionManager = [conversationCopy activitySessionManager];
            [activitySessionManager updateActivitySessionWithUUID:v23 activity:tuConversationActivity];
          }

          else
          {
            tuConversationActivity = sub_100004778();
            if (os_log_type_enabled(tuConversationActivity, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = v20;
              _os_log_error_impl(&_mh_execute_header, tuConversationActivity, OS_LOG_TYPE_ERROR, "Unable to decode UUID from activitySession %@", buf, 0xCu);
            }
          }
        }

        v17 = [activitySessions2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
      activityCopy = v27;
    }
  }

  else if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, activitySessions2, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
  }
}

- (void)handleConversation:(id)conversation addHighlight:(id)highlight fromHandle:(id)handle
{
  conversationCopy = conversation;
  highlightCopy = highlight;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  highlightIdentifier = [highlightCopy highlightIdentifier];

  anyObject = sub_100004778();
  v14 = os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT);
  if (highlightIdentifier)
  {
    if (v14)
    {
      highlightIdentifier2 = [highlightCopy highlightIdentifier];
      v24 = 138412290;
      v25 = highlightIdentifier2;
      _os_log_impl(&_mh_execute_header, anyObject, OS_LOG_TYPE_DEFAULT, "Received new highlight identifier %@", &v24, 0xCu);
    }

    highlightIdentifiers = [conversationCopy highlightIdentifiers];
    anyObject = [highlightIdentifiers anyObject];

    v17 = [conversationCopy remoteParticipantForHandle:handleCopy];
    highlightIdentifier3 = [highlightCopy highlightIdentifier];
    v19 = [anyObject isEqualToString:highlightIdentifier3];

    if (v19)
    {
      collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
      highlightIdentifier4 = [highlightCopy highlightIdentifier];
      [collaborationStateManager collaborationReAdded:highlightIdentifier4];
    }

    else
    {
      collaborationStateManager = [highlightCopy highlightIdentifier];
      [conversationCopy addHighlightIdentifier:collaborationStateManager];
    }

    tuConversation = [conversationCopy tuConversation];
    highlightIdentifier5 = [highlightCopy highlightIdentifier];
    [(CSDConversationManager *)self notifyDelegateOfHighlightAddedForConversation:tuConversation highlightIdentifier:highlightIdentifier5 oldHighlightIdentifier:anyObject byParticipant:v17 isFirstAdd:v19 ^ 1];
  }

  else if (v14)
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, anyObject, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid highlight identifier.", &v24, 2u);
  }
}

- (void)handleConversation:(id)conversation removeHighlight:(id)highlight fromHandle:(id)handle
{
  conversationCopy = conversation;
  highlightCopy = highlight;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  highlightIdentifier = [highlightCopy highlightIdentifier];

  log = sub_100004778();
  v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (!highlightIdentifier)
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
    highlightIdentifier2 = [highlightCopy highlightIdentifier];
    *buf = 138412546;
    v45 = highlightIdentifier2;
    v46 = 2112;
    v47 = conversationCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Trying to remove highlight identifier %@ from conversation:%@ ", buf, 0x16u);
  }

  highlightIdentifiers = [conversationCopy highlightIdentifiers];
  highlightIdentifier3 = [highlightCopy highlightIdentifier];
  v17 = [highlightIdentifiers containsObject:highlightIdentifier3];

  if (v17)
  {
    highlightIdentifier4 = [highlightCopy highlightIdentifier];
    [conversationCopy removeHighlightIdentifier:highlightIdentifier4];

    collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
    tuConversation = [conversationCopy tuConversation];
    [collaborationStateManager stopTrackingCollaborationForConversationIfNecessary:tuConversation];

    v30 = handleCopy;
    log = [conversationCopy remoteParticipantForHandle:handleCopy];
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
          tuConversation2 = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          [delegateToQueue objectForKey:v24];
          v28 = v27 = conversationCopy;

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100181F94;
          block[3] = &unk_10061A428;
          block[4] = v24;
          v35 = tuConversation2;
          selfCopy = self;
          v37 = log;
          v38 = highlightCopy;
          v29 = tuConversation2;
          dispatch_async(v28, block);

          conversationCopy = v27;
        }

        v22 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v22);
    }

    handleCopy = v30;
LABEL_15:
  }
}

- (void)handleConversation:(id)conversation screenShareRequest:(id)request fromHandle:(id)handle
{
  conversationCopy = conversation;
  requestCopy = request;
  handleCopy = handle;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    queue = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(queue);

    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v28 = conversationCopy;
      v29 = 2112;
      v30 = requestCopy;
      v31 = 2112;
      v32 = handleCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received screen share request for conversation %@ with message %@ from handle %@", buf, 0x20u);
    }

    screenShareContext = [requestCopy screenShareContext];

    if (!screenShareContext)
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid screen share context.", buf, 2u);
      }

      goto LABEL_18;
    }

    v16 = [conversationCopy remoteParticipantForHandle:handleCopy];
    screenShareContext2 = [requestCopy screenShareContext];
    type = [screenShareContext2 type];

    if (type)
    {
      screenShareContext3 = [requestCopy screenShareContext];
      type2 = [screenShareContext3 type];

      if (type2 != 2)
      {
LABEL_18:

        goto LABEL_19;
      }

      screenShareContext4 = [requestCopy screenShareContext];
      [(CSDConversationManager *)self removeScreenShareRequestFromParticipant:v16 conversation:conversationCopy screenShareContext:screenShareContext4];
    }

    else
    {
      if ([(CSDConversationManager *)self conversationContainsScreenShareRequest:conversationCopy localRequest:0 requestHandle:handleCopy])
      {
        v22 = sub_100004778();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100477E38();
        }

        goto LABEL_18;
      }

      screenShareContext5 = [requestCopy screenShareContext];
      isHandleEligibleForScreenSharingRequestsBlock = self->_isHandleEligibleForScreenSharingRequestsBlock;
      v26 = 0;
      v25 = [screenShareContext5 incomingScreenShareRequestFromParticipant:v16 handleEligibilityBlock:isHandleEligibleForScreenSharingRequestsBlock error:&v26];
      screenShareContext4 = v26;

      if (v25)
      {
        [conversationCopy addScreenSharingRequest:v25];
      }
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)handleConversation:(id)conversation screenShareResponse:(id)response fromHandle:(id)handle
{
  conversationCopy = conversation;
  responseCopy = response;
  handleCopy = handle;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];

  if (requestToScreenShareEnabled)
  {
    queue = [(CSDConversationManager *)self queue];
    dispatch_assert_queue_V2(queue);

    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412802;
      v21 = conversationCopy;
      v22 = 2112;
      v23 = responseCopy;
      v24 = 2112;
      v25 = handleCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received screen share response for conversation %@ with message %@ from handle %@", &v20, 0x20u);
    }

    screenShareContext = [responseCopy screenShareContext];

    if (screenShareContext)
    {
      v16 = [conversationCopy remoteParticipantForHandle:handleCopy];
      screenShareContext2 = [responseCopy screenShareContext];
      type = [screenShareContext2 type];

      if ((type & 0xFFFFFFFE) == 2)
      {
        screenShareContext3 = [responseCopy screenShareContext];
        [(CSDConversationManager *)self removeScreenShareRequestFromParticipant:v16 conversation:conversationCopy screenShareContext:screenShareContext3];
      }

      else
      {
        screenShareContext3 = sub_100004778();
        if (os_log_type_enabled(screenShareContext3, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = responseCopy;
          _os_log_impl(&_mh_execute_header, screenShareContext3, OS_LOG_TYPE_DEFAULT, "[WARN] Received screen share response with invalid type %@", &v20, 0xCu);
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

- (void)removeScreenShareRequestFromParticipant:(id)participant conversation:(id)conversation screenShareContext:(id)context
{
  participantCopy = participant;
  conversationCopy = conversation;
  contextCopy = context;
  v10 = [NSUUID alloc];
  screenShareUUID = [contextCopy screenShareUUID];
  v12 = [v10 initWithUUIDString:screenShareUUID];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  screenSharingRequests = [conversationCopy screenSharingRequests];
  v14 = [screenSharingRequests countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v23 = contextCopy;
    v15 = participantCopy;
    v16 = *v26;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(screenSharingRequests);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        uUID = [v18 UUID];
        v20 = [uUID isEqual:v12];

        if (v20)
        {
          v14 = v18;
          goto LABEL_11;
        }
      }

      v14 = [screenSharingRequests countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

LABEL_11:
    participantCopy = v15;
    contextCopy = v23;
  }

  identifier = [participantCopy identifier];
  if (identifier == [v14 participantIdentifier] || objc_msgSend(v14, "originType") == 1)
  {
    if (v14)
    {
      [conversationCopy removeScreenSharingRequest:v14];
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

- (void)handleConversation:(id)conversation updateActivityImage:(id)image fromHandle:(id)handle
{
  conversationCopy = conversation;
  imageCopy = image;
  handleCopy = handle;
  selfCopy = self;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v51 = imageCopy;
  activitySessions = [imageCopy activitySessions];
  v12 = [activitySessions count];

  log = sub_100004778();
  v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    v14 = imageCopy;
    if (v13)
    {
      *buf = 138412290;
      v80 = imageCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updating activity images from message: %@", buf, 0xCu);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    log = [imageCopy activitySessions];
    v58 = [log countByEnumeratingWithState:&v74 objects:v84 count:16];
    if (v58)
    {
      v57 = *v75;
      v59 = conversationCopy;
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
          identifierUUIDString = [v16 identifierUUIDString];
          v19 = [v17 initWithUUIDString:identifierUUIDString];

          if (v19)
          {
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            activitySessions2 = [conversationCopy activitySessions];
            v21 = [activitySessions2 countByEnumeratingWithState:&v70 objects:v83 count:16];
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
                    objc_enumerationMutation(activitySessions2);
                  }

                  v25 = *(*(&v70 + 1) + 8 * j);
                  identifier = [v25 identifier];
                  v27 = [identifier isEqual:v19];

                  if (v27)
                  {
                    v28 = v25;
                    goto LABEL_20;
                  }
                }

                v22 = [activitySessions2 countByEnumeratingWithState:&v70 objects:v83 count:16];
                if (v22)
                {
                  continue;
                }

                break;
              }

              v28 = 0;
LABEL_20:
              conversationCopy = v59;
            }

            else
            {
              v28 = 0;
            }

            stagedActivitySession = [conversationCopy stagedActivitySession];
            uUID = [stagedActivitySession UUID];
            v31 = [uUID isEqual:v19];

            if (v31)
            {
              stagedActivitySession2 = [conversationCopy stagedActivitySession];
            }

            else
            {
              stagedActivitySession2 = 0;
            }

            if (v28 | stagedActivitySession2)
            {
              v33 = [NSUUID alloc];
              activity = [v16 activity];
              identifierUUIDString2 = [activity identifierUUIDString];
              v36 = [v33 initWithUUIDString:identifierUUIDString2];

              if (v36)
              {
                if (v28)
                {
                  v37 = v28;
                }

                else
                {
                  v37 = stagedActivitySession2;
                }

                activity2 = [v37 activity];
                originator = [activity2 originator];
                if (!originator)
                {
                  localMember = [v59 localMember];
                  originator = [localMember handle];
                }

                if ([originator isEquivalentToHandle:handleCopy])
                {
                  v54 = activity2;
                  activity3 = [v16 activity];
                  activityMetadata = [activity3 activityMetadata];

                  v43 = activityMetadata;
                  if (([activityMetadata hasImage]& 1) != 0)
                  {
                    [activityMetadata image];
                    v44 = v53 = activityMetadata;
                    _FTOptionallyDecompressData = [v44 _FTOptionallyDecompressData];

                    v62[0] = _NSConcreteStackBlock;
                    v62[1] = 3221225472;
                    v62[2] = sub_100182FC4;
                    v62[3] = &unk_10061D038;
                    v63 = v28;
                    v64 = v36;
                    v65 = v19;
                    v66 = _FTOptionallyDecompressData;
                    v67 = stagedActivitySession2;
                    v68 = selfCopy;
                    v69 = v59;
                    v46 = _FTOptionallyDecompressData;
                    v47 = objc_retainBlock(v62);
                    imageTranscoder = [(CSDConversationManager *)selfCopy imageTranscoder];
                    v60[0] = _NSConcreteStackBlock;
                    v60[1] = 3221225472;
                    v60[2] = sub_100183240;
                    v60[3] = &unk_10061D060;
                    v60[4] = selfCopy;
                    v61 = v47;
                    v49 = v47;
                    [imageTranscoder generatePreviewImageFromData:v46 completionHandler:v60];

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
                  activity2 = v54;
                }

                else
                {
                  v43 = sub_100004778();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v80 = handleCopy;
                    v81 = 2112;
                    v82 = originator;
                    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Not updating activity because handle: %@ isn't the originator of the activity: %@", buf, 0x16u);
                  }
                }

LABEL_47:
              }

              else
              {
                activity2 = sub_100004778();
                if (os_log_type_enabled(activity2, OS_LOG_TYPE_DEFAULT))
                {
                  originator = [v16 activity];
                  *buf = 138412290;
                  v80 = originator;
                  _os_log_impl(&_mh_execute_header, activity2, OS_LOG_TYPE_DEFAULT, "[WARN] Not updating activity, no activity UUID was provided in message: %@", buf, 0xCu);
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

            conversationCopy = v59;
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

- (void)handleConversation:(id)conversation receivedEndorsementForMember:(id)member fromHandle:(id)handle
{
  memberCopy = member;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = memberCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received endorsement message: %@", &v14, 0xCu);
  }

  addedMembers = [memberCopy addedMembers];
  firstObject = [addedMembers firstObject];
  tuConversationMember = [firstObject tuConversationMember];

  [conversationCopy updateMemberValidationSource:tuConversationMember source:1];
}

- (void)handleConversation:(id)conversation receivedActivitySession:(id)session fromHandle:(id)handle
{
  conversationCopy = conversation;
  sessionCopy = session;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  activitySessions = [sessionCopy activitySessions];
  v13 = [activitySessions count];

  log = sub_100004778();
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v14)
    {
      *buf = 138412290;
      v44 = sessionCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Received new activity for conversation %@", buf, 0xCu);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    log = [sessionCopy activitySessions];
    v35 = [log countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v35)
    {
      v32 = sessionCopy;
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
          activity = [v16 activity];
          tuConversationActivity = [activity tuConversationActivity];

          if (tuConversationActivity)
          {
            metadata = [tuConversationActivity metadata];
            if ([metadata supportsContinuationOnTV])
            {
            }

            else
            {
              localMember = [conversationCopy localMember];
              isLightweightMember = [localMember isLightweightMember];

              if (isLightweightMember)
              {
                v31 = sub_100004778();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v44 = v16;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Sending conversation back since new activitySession doesn't support aTV handoff. session: %@", buf, 0xCu);
                }

                [conversationCopy leave];
                goto LABEL_30;
              }
            }
          }

          v22 = [(CSDConversationManager *)self createActivitySession:v16 onConversation:conversationCopy fromHandle:handleCopy];
          if (v22)
          {
            v23 = +[TUCallCenter sharedInstance];
            [v23 queue];
            v25 = v24 = handleCopy;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100183934;
            block[3] = &unk_100619E58;
            block[4] = v16;
            v26 = conversationCopy;
            v37 = v26;
            selfCopy = self;
            dispatch_async(v25, block);

            handleCopy = v24;
            v27 = [v26 remoteParticipantForHandle:v24];
            if (v27)
            {
              tuConversationActivitySession = [v22 tuConversationActivitySession];
              [(CSDConversationManager *)self postSessionStartedForSession:tuConversationActivitySession originator:v27 conversation:v26];
            }

            else
            {
              tuConversationActivitySession = sub_100004778();
              if (os_log_type_enabled(tuConversationActivitySession, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v44 = v24;
                v45 = 2112;
                v46 = v22;
                _os_log_error_impl(&_mh_execute_header, tuConversationActivitySession, OS_LOG_TYPE_ERROR, "Not posting start session event. Could not find participant for handle %@ for session %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v29 = sub_100004778();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              uUID = [conversationCopy UUID];
              *buf = 138412546;
              v44 = v16;
              v45 = 2112;
              v46 = uUID;
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
      sessionCopy = v32;
    }
  }

  else if (v14)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[WARN] Message did not contain a valid activitySession.", buf, 2u);
  }
}

- (void)handleConversation:(id)conversation updateGuestMode:(id)mode fromHandle:(id)handle
{
  conversationCopy = conversation;
  modeCopy = mode;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(CSDConversationManager *)self serverBag];
  isGuestModeSupported = [serverBag isGuestModeSupported];

  if (isGuestModeSupported)
  {
    hasGuestModeEnabled = [modeCopy hasGuestModeEnabled];
    v14 = sub_100004778();
    delegateToQueue = v14;
    if (hasGuestModeEnabled)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = modeCopy;
        _os_log_impl(&_mh_execute_header, delegateToQueue, OS_LOG_TYPE_DEFAULT, "Received guest mode update for participant in conversation %@", buf, 0xCu);
      }

      v36 = modeCopy;
      guestModeEnabled = [modeCopy guestModeEnabled];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
      v18 = [activeRemoteParticipants countByEnumeratingWithState:&v46 objects:v55 count:16];
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
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v22 = *(*(&v46 + 1) + 8 * v21);
          handle = [v22 handle];
          v24 = [handle isEquivalentToHandle:handleCopy];

          if (v24)
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [activeRemoteParticipants countByEnumeratingWithState:&v46 objects:v55 count:16];
            if (v19)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        [v22 setGuestModeEnabled:guestModeEnabled];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
        v26 = [delegateToQueue countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (!v26)
        {
          goto LABEL_27;
        }

        v27 = v26;
        obj = delegateToQueue;
        v35 = handleCopy;
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
            tuConversation = [conversationCopy tuConversation];
            delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
            v33 = [delegateToQueue2 objectForKey:v30];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100184088;
            block[3] = &unk_100619E58;
            block[4] = v30;
            v40 = tuConversation;
            selfCopy = self;
            v34 = tuConversation;
            dispatch_async(v33, block);
          }

          v27 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v27);
        handleCopy = v35;
        modeCopy = v36;
        delegateToQueue = obj;
      }

      else
      {
LABEL_13:

        delegateToQueue = sub_100004778();
        if (os_log_type_enabled(delegateToQueue, OS_LOG_TYPE_DEFAULT))
        {
          activeRemoteParticipants2 = [conversationCopy activeRemoteParticipants];
          *buf = 138412546;
          v52 = handleCopy;
          v53 = 2112;
          v54 = activeRemoteParticipants2;
          _os_log_impl(&_mh_execute_header, delegateToQueue, OS_LOG_TYPE_DEFAULT, "Ignoring guest mode update message because the from-handle %@ did not match any active remote participants %@", buf, 0x16u);
        }

LABEL_27:
        modeCopy = v36;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100477F74();
    }
  }

  else
  {
    delegateToQueue = sub_100004778();
    if (os_log_type_enabled(delegateToQueue, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, delegateToQueue, OS_LOG_TYPE_DEFAULT, "Ignoring guest mode message since guest mode is not currently supported", buf, 2u);
    }
  }
}

- (void)updateParticipantPresentationContexts:(id)contexts onConversationWithUUID:(id)d
{
  contextsCopy = contexts;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001842A8;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = contextsCopy;
  selfCopy = self;
  v9 = contextsCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)buzzMember:(id)member destinationID:(id)d invitationContext:(id)context conversationUUID:(id)iD
{
  memberCopy = member;
  dCopy = d;
  contextCopy = context;
  iDCopy = iD;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184550;
  block[3] = &unk_10061A428;
  v20 = iDCopy;
  v21 = memberCopy;
  selfCopy = self;
  v23 = contextCopy;
  v24 = dCopy;
  v15 = dCopy;
  v16 = contextCopy;
  v17 = memberCopy;
  v18 = iDCopy;
  dispatch_async(queue, block);
}

- (void)kickMember:(id)member conversationUUID:(id)d
{
  memberCopy = member;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184B80;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = memberCopy;
  selfCopy = self;
  v9 = memberCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (BOOL)conversationContainsScreenShareRequest:(id)request localRequest:(BOOL)localRequest requestHandle:(id)handle
{
  localRequestCopy = localRequest;
  handleCopy = handle;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  screenSharingRequests = [request screenSharingRequests];
  v9 = [screenSharingRequests countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(screenSharingRequests);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isLocallyOriginated] == localRequestCopy)
        {
          handle = [v13 handle];
          v15 = [handle isEquivalentToHandle:handleCopy];

          if (v15)
          {
            v16 = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = [screenSharingRequests countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)processUpdatedNickname:(id)nickname forHandle:(id)handle conversationUUID:(id)d
{
  nicknameCopy = nickname;
  handleCopy = handle;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100184FA4;
  v15[3] = &unk_10061A450;
  v15[4] = self;
  v16 = dCopy;
  v17 = handleCopy;
  v18 = nicknameCopy;
  v12 = nicknameCopy;
  v13 = handleCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (void)noticeManager:(id)manager conversation:(id)conversation participant:(id)participant addedNotice:(id)notice
{
  conversationCopy = conversation;
  participantCopy = participant;
  noticeCopy = notice;
  queue = [(CSDConversationManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100185614;
  v16[3] = &unk_10061A450;
  v16[4] = self;
  v17 = conversationCopy;
  v18 = participantCopy;
  v19 = noticeCopy;
  v13 = noticeCopy;
  v14 = participantCopy;
  v15 = conversationCopy;
  dispatch_async(queue, v16);
}

- (void)setDownlinkMuted:(BOOL)muted forRemoteParticipantsOnConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185A14;
  block[3] = &unk_100619F48;
  mutedCopy = muted;
  v10 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setDownlinkMuted:(BOOL)muted forParticipants:(id)participants inConversationWithUUID:(id)d completionHandler:(id)handler
{
  participantsCopy = participants;
  dCopy = d;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185CA0;
  block[3] = &unk_10061D088;
  mutedCopy = muted;
  v18 = dCopy;
  v19 = participantsCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = participantsCopy;
  v16 = dCopy;
  dispatch_async(queue, block);
}

- (void)updateLocalMemberNickname:(id)nickname conversationUUID:(id)d
{
  nicknameCopy = nickname;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185F6C;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = nicknameCopy;
  v9 = nicknameCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenSharingActivityManager = [(CSDConversationManager *)self screenSharingActivityManager];
  latestRemoteAttributes = [screenSharingActivityManager latestRemoteAttributes];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = latestRemoteAttributes;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to get latest remote attributes, returning: %@", &v8, 0xCu);
  }

  handlerCopy[2](handlerCopy, latestRemoteAttributes);
}

- (void)getActiveLinksWithCreatedOnly:(BOOL)only completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018637C;
  block[3] = &unk_10061B008;
  block[4] = self;
  v10 = handlerCopy;
  onlyCopy = only;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)generateLinkForConversationUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100186774;
  block[3] = &unk_10061D128;
  v12 = dCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = dCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

- (id)_getActivatedLinkWithHandle:(id)handle updateGroupUUID:(id)d updateInvitedHandles:(id)handles
{
  handleCopy = handle;
  dCopy = d;
  handlesCopy = handles;
  linkManager = [(CSDConversationManager *)self linkManager];
  v12 = [linkManager getInactiveLinkForHandle:handleCopy];

  if (!v12)
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = handleCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to fetch inactive link, generating new links for %@", &v22, 0xCu);
    }

    linkManager2 = [(CSDConversationManager *)self linkManager];
    [linkManager2 generateAllInactiveLinksFor:handleCopy];
    goto LABEL_10;
  }

  pseudonym = [v12 pseudonym];
  v14 = [(CSDConversationManager *)self isHandleStringLocalPseudonym:pseudonym];

  if (!v14)
  {
    linkManager2 = sub_100004778();
    if (os_log_type_enabled(linkManager2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, linkManager2, OS_LOG_TYPE_DEFAULT, "Fetched non-local inactive link %@", &v22, 0xCu);
    }

LABEL_10:

    v17 = 0;
    goto LABEL_11;
  }

  linkManager3 = [(CSDConversationManager *)self linkManager];
  pseudonym2 = [v12 pseudonym];
  v17 = [linkManager3 activateLinkForPseudonym:pseudonym2 updateGroupUUID:dCopy updateInvitedHandles:handlesCopy];

  if (v17)
  {
    linkManager4 = [(CSDConversationManager *)self linkManager];
    [linkManager4 generateInactiveLinkFor:handleCopy afterActivation:1];
  }

LABEL_11:

  return v17;
}

- (void)setConversationLink:(id)link forConversation:(id)conversation replyToCompletionHandler:(id)handler
{
  linkCopy = link;
  conversationCopy = conversation;
  handlerCopy = handler;
  v11 = [conversationCopy setConversationLink:linkCopy allowUpdate:0];
  v12 = sub_100004778();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v16 = 138412290;
      v17 = linkCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setConversationLink %@ completed", &v16, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, linkCopy, 0);
    }

    [(CSDConversationManager *)self notifyDelegatesOfChangedLink:linkCopy conversation:conversationCopy];
    [(CSDConversationManager *)self sendMessagesForCreatedOrChangedLink:linkCopy conversation:conversationCopy messageType:11];
    link2 = [NSSet setWithObject:IDSRegistrationPropertySupportsGondola];
    [conversationCopy addRequiredCapabilities:link2 requiredLackOfCapabilities:0];
    goto LABEL_11;
  }

  if (v13)
  {
    link = [conversationCopy link];
    v16 = 138412290;
    v17 = link;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Did not set conversation link as one already existed: %@", &v16, 0xCu);
  }

  if (handlerCopy)
  {
    link2 = [conversationCopy link];
    handlerCopy[2](handlerCopy, link2, 0);
LABEL_11:
  }
}

- (void)generateLinkWithInvitedMemberHandles:(id)handles linkLifetimeScope:(int64_t)scope completionHandler:(id)handler
{
  handlesCopy = handles;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100187420;
  v13[3] = &unk_10061D150;
  v13[4] = self;
  v14 = handlesCopy;
  v15 = handlerCopy;
  scopeCopy = scope;
  v11 = handlesCopy;
  v12 = handlerCopy;
  dispatch_async(queue, v13);
}

- (void)addInvitedMemberHandles:(id)handles toConversationLink:(id)link completionHandler:(id)handler
{
  handlesCopy = handles;
  linkCopy = link;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100187DE4;
  v15[3] = &unk_10061D1C8;
  v15[4] = self;
  v16 = handlesCopy;
  v17 = linkCopy;
  v18 = handlerCopy;
  v12 = linkCopy;
  v13 = handlesCopy;
  v14 = handlerCopy;
  dispatch_async(queue, v15);
}

- (void)invalidateLink:(id)link deleteReason:(int64_t)reason completionHandler:(id)handler
{
  linkCopy = link;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001882D4;
  v13[3] = &unk_10061D150;
  v13[4] = self;
  v14 = linkCopy;
  v15 = handlerCopy;
  reasonCopy = reason;
  v11 = linkCopy;
  v12 = handlerCopy;
  dispatch_async(queue, v13);
}

- (void)renewLinkIfNeeded:(id)needed completionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188838;
  block[3] = &unk_10061AF20;
  block[4] = self;
  v12 = neededCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = neededCopy;
  dispatch_async(queue, block);
}

- (void)renewLink:(id)link expirationDate:(id)date reason:(unint64_t)reason completionHandler:(id)handler
{
  linkCopy = link;
  dateCopy = date;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188E0C;
  block[3] = &unk_10061D2B8;
  v20 = handlerCopy;
  reasonCopy = reason;
  block[4] = self;
  v18 = linkCopy;
  v19 = dateCopy;
  v14 = dateCopy;
  v15 = linkCopy;
  v16 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)checkLinkValidity:(id)validity completionHandler:(id)handler
{
  validityCopy = validity;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001893C0;
  block[3] = &unk_10061D128;
  v12 = validityCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = validityCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)generateAllInactiveLinks
{
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100189510;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getInactiveLinkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001896B8;
  v7[3] = &unk_10061ACD0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)activateLink:(id)link completionHandler:(id)handler
{
  linkCopy = link;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100189A60;
  block[3] = &unk_10061D128;
  v12 = linkCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = linkCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)setLinkName:(id)name forConversationLink:(id)link completionHandler:(id)handler
{
  nameCopy = name;
  linkCopy = link;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100189D04;
  v15[3] = &unk_10061D1C8;
  v15[4] = self;
  v16 = nameCopy;
  v17 = linkCopy;
  v18 = handlerCopy;
  v12 = linkCopy;
  v13 = nameCopy;
  v14 = handlerCopy;
  dispatch_async(queue, v15);
}

- (void)updateExternalParticipants:(id)participants
{
  participantsCopy = participants;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018A224;
  v7[3] = &unk_100619D88;
  v8 = participantsCopy;
  selfCopy = self;
  v6 = participantsCopy;
  dispatch_async(queue, v7);
}

- (void)scheduleConversationLinkCheckInInitial:(BOOL)initial
{
  queue = [(CSDConversationManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018A398;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  initialCopy = initial;
  dispatch_async(queue, v6);
}

- (void)recoverLinksForPseudonyms:(id)pseudonyms
{
  pseudonymsCopy = pseudonyms;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018A534;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = pseudonymsCopy;
  v6 = pseudonymsCopy;
  dispatch_async(queue, v7);
}

- (void)linkSyncStateIncludeLinks:(BOOL)links WithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018A6C0;
  block[3] = &unk_10061B008;
  linksCopy = links;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_sync(queue, block);
}

- (void)approvePendingMember:(id)member forConversationUUID:(id)d
{
  memberCopy = member;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018A884;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = memberCopy;
  v9 = memberCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)rejectPendingMember:(id)member forConversationUUID:(id)d
{
  memberCopy = member;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018AB10;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = memberCopy;
  v9 = memberCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setIgnoreLetMeInRequests:(BOOL)requests forConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018AD74;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  requestsCopy = requests;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)addScreenSharingType:(unint64_t)type forConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B254;
  block[3] = &unk_100619F20;
  selfCopy = self;
  typeCopy = type;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)fetchUpcomingNoticeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018B734;
  v7[3] = &unk_10061ACD0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B880;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = lCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = lCopy;
  dispatch_async(queue, block);
}

- (void)removeConversationNoticeWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018B988;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)setMessagesGroupName:(id)name onConversationWithUUID:(id)d
{
  nameCopy = name;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018BAB4;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  v13 = nameCopy;
  selfCopy = self;
  v9 = nameCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)removeNonIndefiniteLinks
{
  linkManager = [(CSDConversationManager *)self linkManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018BCC4;
  v4[3] = &unk_10061D308;
  v4[4] = self;
  [linkManager getActiveLinksWithCreatedOnly:1 completionHandler:v4];
}

- (void)removeConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018C1B4;
  v7[3] = &unk_100619D88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)addAliasesToConversationContainer:(id)container forBundleIdentifier:(id)identifier
{
  containerCopy = container;
  identifierCopy = identifier;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C400;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = containerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = containerCopy;
  dispatch_sync(queue, block);
}

- (void)includeMetricsReport:(id)report onConversationWithUUID:(id)d
{
  reportCopy = report;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C624;
  block[3] = &unk_100619E58;
  v12 = dCopy;
  selfCopy = self;
  v14 = reportCopy;
  v9 = reportCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)removeNearbyMemberWithHandle:(id)handle onConversationWithUUID:(id)d
{
  handleCopy = handle;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C8B8;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = handleCopy;
  v9 = handleCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode forConversationUUID:(id)d presentationMode:(unint64_t)presentationMode
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018CAAC;
  v11[3] = &unk_10061D330;
  v11[4] = self;
  v12 = dCopy;
  modeCopy = mode;
  presentationModeCopy = presentationMode;
  v10 = dCopy;
  dispatch_async(queue, v11);
}

- (void)registerMessagesGroupUUIDForConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018D00C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)setupPendingConversationCleanupTimer
{
  pendingConversationCleanupTimer = [(CSDConversationManager *)self pendingConversationCleanupTimer];

  if (pendingConversationCleanupTimer)
  {
    pendingConversationCleanupTimer2 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
    dispatch_source_cancel(pendingConversationCleanupTimer2);
  }

  queue = [(CSDConversationManager *)self queue];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  [(CSDConversationManager *)self setPendingConversationCleanupTimer:v6];

  pendingConversationCleanupTimer3 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
  v8 = dispatch_time(0, 300000000000);
  dispatch_source_set_timer(pendingConversationCleanupTimer3, v8, 0x45D964B800uLL, 0x4A817C800uLL);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    pendingConversationCleanupTimer4 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
    *buf = 134218498;
    v16 = 0x4072C00000000000;
    v17 = 2048;
    v18 = 0x4034000000000000;
    v19 = 2112;
    v20 = pendingConversationCleanupTimer4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setupPendingConversationCleanupTimer: %f %f %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  pendingConversationCleanupTimer5 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10018D4A4;
  handler[3] = &unk_10061A740;
  objc_copyWeak(&v14, buf);
  dispatch_source_set_event_handler(pendingConversationCleanupTimer5, handler);

  pendingConversationCleanupTimer6 = [(CSDConversationManager *)self pendingConversationCleanupTimer];
  dispatch_resume(pendingConversationCleanupTimer6);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)cleanupExpiredPendingConversations
{
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_alloc_init(NSMutableArray);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  mutablePendingConversationsByPseudonym = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
  v6 = [mutablePendingConversationsByPseudonym countByEnumeratingWithState:&v29 objects:v38 count:16];
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
          objc_enumerationMutation(mutablePendingConversationsByPseudonym);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        mutablePendingConversationsByPseudonym2 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
        v12 = [mutablePendingConversationsByPseudonym2 objectForKeyedSubscript:v10];

        dateCreated = [v12 dateCreated];
        [dateCreated timeIntervalSinceNow];
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
      v7 = [mutablePendingConversationsByPseudonym countByEnumeratingWithState:&v29 objects:v38 count:16];
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
        mutablePendingConversationsByPseudonym3 = [(CSDConversationManager *)self mutablePendingConversationsByPseudonym];
        [mutablePendingConversationsByPseudonym3 setObject:0 forKeyedSubscript:v23];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }
}

- (void)conversationChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "conversationChanged: %@", buf, 0xCu);
  }

  activeRemoteParticipants = [changedCopy activeRemoteParticipants];
  if ([activeRemoteParticipants count])
  {
    v8 = 0;
  }

  else
  {
    activeLightweightParticipants = [changedCopy activeLightweightParticipants];
    v8 = [activeLightweightParticipants count] == 0;
  }

  if ([changedCopy state] || !v8)
  {
    persistenceController = [(CSDConversationManager *)selfCopy persistenceController];
    [persistenceController updateConversation:changedCopy];
  }

  else
  {
    [(CSDConversationManager *)selfCopy conversationInvalidated:changedCopy];
    persistenceController = [(CSDConversationManager *)selfCopy collaborationStateManager];
    tuConversation = [changedCopy tuConversation];
    [persistenceController stopTrackingCollaborationForConversationIfNecessary:tuConversation];
  }

  if ([changedCopy state] != 3)
  {
    goto LABEL_20;
  }

  remoteMembers = [changedCopy remoteMembers];
  if ([remoteMembers count] != 1)
  {
LABEL_19:

    goto LABEL_20;
  }

  remoteMembers2 = [changedCopy remoteMembers];
  anyObject = [remoteMembers2 anyObject];
  handle = [anyObject handle];
  localMember = [changedCopy localMember];
  handle2 = [localMember handle];
  if ([handle isEqualToHandle:handle2])
  {
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  activeRemoteParticipants2 = [changedCopy activeRemoteParticipants];
  if ([activeRemoteParticipants2 count] != 1)
  {

    goto LABEL_17;
  }

  obj = activeRemoteParticipants2;
  activeRemoteParticipants3 = [changedCopy activeRemoteParticipants];
  anyObject2 = [activeRemoteParticipants3 anyObject];
  handle3 = [anyObject2 handle];
  localMember2 = [changedCopy localMember];
  handle4 = [localMember2 handle];
  v42 = handle3;
  if ([handle3 isEqualToHandle:handle4])
  {
    activeParticipantDestinationsByIdentifier = [changedCopy activeParticipantDestinationsByIdentifier];
    v21 = [activeParticipantDestinationsByIdentifier count] == 1;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    remoteMembers = [changedCopy remoteMembers];
    remoteMembers2 = [remoteMembers anyObject];
    anyObject = [changedCopy UUID];
    [(CSDConversationManager *)selfCopy buzzMember:remoteMembers2 destinationID:0 invitationContext:0 conversationUUID:anyObject];
    goto LABEL_18;
  }

LABEL_20:
  v45 = changedCopy;
  tuConversation2 = [changedCopy tuConversation];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obja = [(CSDConversationManager *)selfCopy delegateToQueue];
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
        delegateToQueue = [(CSDConversationManager *)selfCopy delegateToQueue];
        v29 = [delegateToQueue objectForKey:v27];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10018DDAC;
        block[3] = &unk_100619E58;
        block[4] = v27;
        v56 = tuConversation2;
        v57 = selfCopy;
        dispatch_async(v29, block);

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [obja countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v24);
  }

  activitySessionContainerProvider = [(CSDConversationManager *)selfCopy activitySessionContainerProvider];
  [activitySessionContainerProvider activitySessionContainersChangedOnChildProvider:selfCopy];

  observerStorage = [(CSDConversationManager *)selfCopy observerStorage];
  observerToQueue = [observerStorage observerToQueue];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v33 = observerToQueue;
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
          v49[5] = selfCopy;
          v50 = tuConversation2;
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

- (void)conversationConnectionDidStart:(id)start
{
  startCopy = start;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [startCopy UUID];
    *buf = 138412290;
    v26 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "conversationConnectionDidStart UUID: %@", buf, 0xCu);
  }

  tuConversation = [startCopy tuConversation];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v9 = [delegateToQueue countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(delegateToQueue);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v15 = [delegateToQueue2 objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018E160;
          block[3] = &unk_100619E58;
          block[4] = v13;
          v18 = tuConversation;
          selfCopy = self;
          dispatch_async(v15, block);
        }
      }

      v10 = [delegateToQueue countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (void)conversationInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  uUID = [invalidatedCopy UUID];
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = uUID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversationInvalidated UUID: %@", &v17, 0xCu);
  }

  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  [mutableConversationsByUUID setObject:0 forKeyedSubscript:uUID];

  persistenceController = [(CSDConversationManager *)self persistenceController];
  [persistenceController removeConversation:invalidatedCopy];

  pendingMembershipTracker = [(CSDConversationManager *)self pendingMembershipTracker];
  [pendingMembershipTracker clearPendingMembershipFor:invalidatedCopy];

  link = [invalidatedCopy link];
  v12 = link;
  if (link && [link linkLifetimeScope] == 1)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "conversationLink should be removed after call was invalidated %@", &v17, 0xCu);
    }

    linkManager = [(CSDConversationManager *)self linkManager];
    pseudonym = [v12 pseudonym];
    [linkManager invalidateLinkWithPseudonym:pseudonym deleteReason:7 completionHandler:&stru_10061D350];
  }

  collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
  [collaborationStateManager stopTrackingDisclosedCollaborationInitiatorsForConversationUUID:uUID];

  [(CSDConversationManager *)self notifyDelegatesOfRemovedConversationWithUUID:uUID];
}

- (void)conversation:(id)conversation addedActiveParticipant:(id)participant
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v96 = conversationCopy;
    v97 = 2112;
    v98 = participantCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ addedActiveParticipant: %@", buf, 0x16u);
  }

  association = [participantCopy association];
  v72 = conversationCopy;
  selfCopy = self;
  if (association)
  {
    v11 = association;
    featureFlags = [(CSDConversationManager *)self featureFlags];
    if ([featureFlags conversationHandoffEnabled])
    {
      lockdownModeEnabled = [(CSDConversationManager *)self lockdownModeEnabled];
      v14 = lockdownModeEnabled[2]();

      if ((v14 & 1) == 0)
      {
        handle = [participantCopy handle];
        localMember = [conversationCopy localMember];
        handle2 = [localMember handle];
        if ([handle isEquivalentToHandle:handle2])
        {
          association2 = [participantCopy association];
          identifier = [association2 identifier];
          if (identifier == [conversationCopy localParticipantIdentifier])
          {
            state = [conversationCopy state];

            if (state == 3)
            {
              v21 = sub_100004778();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                uUID = [conversationCopy UUID];
                *buf = 138412546;
                v96 = uUID;
                v97 = 2112;
                v98 = participantCopy;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Conversation UUID %@ was continued on another device as participant %@, leaving...", buf, 0x16u);
              }

              featureFlags2 = [(CSDConversationManager *)self featureFlags];
              if ([featureFlags2 groupFacetimeAsAServiceEnabled])
              {
                provider = [conversationCopy provider];

                if (provider)
                {
                  v25 = +[CSDConversationProviderManager sharedInstance];
                  provider2 = [conversationCopy provider];
                  service = [v25 serviceForProvider:provider2];

LABEL_43:
                  activeIDSDestination = [participantCopy activeIDSDestination];
                  v55 = [service deviceForFromID:activeIDSDestination];

                  if (v55)
                  {
                    csd_localizedDeviceCategory = [v55 csd_localizedDeviceCategory];
                  }

                  else
                  {
                    csd_localizedDeviceCategory = 0;
                  }

                  v89[0] = _NSConcreteStackBlock;
                  v89[1] = 3221225472;
                  v89[2] = sub_10018EEF4;
                  v89[3] = &unk_10061A450;
                  v89[4] = self;
                  v57 = conversationCopy;
                  v90 = v57;
                  v91 = participantCopy;
                  v92 = csd_localizedDeviceCategory;
                  v58 = csd_localizedDeviceCategory;
                  v59 = objc_retainBlock(v89);
                  if (([v57 supportsLeaveContext] & 1) != 0 || (objc_msgSend(v57, "activeRemoteParticipants"), v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "count"), v60, v61 >= 4))
                  {
                    v62 = sub_100004778();
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                    {
                      uUID2 = [v57 UUID];
                      *buf = 138412290;
                      v96 = uUID2;
                      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Leaving immediately due to handoff since the conversation with UUID: %@ supports leave context or was GFT before handoff", buf, 0xCu);
                    }

                    (v59[2])(v59);
                  }

                  else
                  {
                    v64 = sub_100004778();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      uUID3 = [v57 UUID];
                      *buf = 138412290;
                      v96 = uUID3;
                      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Delaying leaving due to handoff since the conversation with UUID: %@ does not support leave context and was 1:1 before handoff", buf, 0xCu);
                    }

                    serverBag = [(CSDConversationManager *)self serverBag];
                    v67 = dispatch_time(0, 1000000000 * [serverBag handoffUPlusOneLeaveDelay]);
                    queue2 = [(CSDConversationManager *)self queue];
                    dispatch_after(v67, queue2, v59);
                  }

                  conversationCopy = v72;
                  goto LABEL_17;
                }
              }

              else
              {
              }

              service = [(CSDConversationManager *)self service];
              goto LABEL_43;
            }

            goto LABEL_29;
          }
        }

LABEL_29:
        v40 = sub_100004778();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          association3 = [participantCopy association];
          identifier2 = [association3 identifier];
          localParticipantIdentifier = [conversationCopy localParticipantIdentifier];
          state2 = [conversationCopy state];
          *buf = 138413058;
          v96 = participantCopy;
          v97 = 2048;
          v98 = identifier2;
          v99 = 2048;
          v100 = localParticipantIdentifier;
          v101 = 2048;
          v102 = state2;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Added participant %@ is a handoff continuation for identifier %llu, but my local identifier is %llu. Not leaving, state: %ld", buf, 0x2Au);
        }

        [conversationCopy updateReportInfoForHandoffParticipant:participantCopy];
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        service = [(CSDConversationManager *)self delegateToQueue];
        v45 = [service countByEnumeratingWithState:&v85 objects:v94 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v86;
          v70 = participantCopy;
          do
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v86 != v47)
              {
                objc_enumerationMutation(service);
              }

              v49 = *(*(&v85 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                tuConversation = [conversationCopy tuConversation];
                delegateToQueue = [(CSDConversationManager *)selfCopy delegateToQueue];
                v52 = [delegateToQueue objectForKey:v49];

                v82[0] = _NSConcreteStackBlock;
                v82[1] = 3221225472;
                conversationCopy = v72;
                v82[2] = sub_10018F264;
                v82[3] = &unk_100619E58;
                v82[4] = v49;
                v83 = tuConversation;
                v84 = selfCopy;
                v53 = tuConversation;
                dispatch_async(v52, v82);
              }
            }

            v46 = [service countByEnumeratingWithState:&v85 objects:v94 count:16];
          }

          while (v46);
          self = selfCopy;
          participantCopy = v70;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  service = sub_100004778();
  if (os_log_type_enabled(service, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v96 = participantCopy;
    _os_log_impl(&_mh_execute_header, service, OS_LOG_TYPE_DEFAULT, "There was no participant association for added participant: %@", buf, 0xCu);
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
          tuConversation2 = [conversationCopy tuConversation];
          tuConversationParticipant = [participantCopy tuConversationParticipant];
          delegateToQueue2 = [(CSDConversationManager *)selfCopy delegateToQueue];
          v36 = [delegateToQueue2 objectForKey:v32];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018F3AC;
          block[3] = &unk_10061A450;
          block[4] = v32;
          v75 = tuConversation2;
          v76 = selfCopy;
          v77 = tuConversationParticipant;
          v37 = tuConversationParticipant;
          v38 = tuConversation2;
          conversationCopy = v72;
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

- (void)conversation:(id)conversation didReceiveParticipantUpdateMessage:(id)message fromNormalizedHandle:(id)handle
{
  conversationCopy = conversation;
  messageCopy = message;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = messageCopy;
    v19 = 2112;
    v20 = handleCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didReceiveParticipantUpdateMessage: %@, from handle: %@", &v17, 0x16u);
  }

  featureFlags = [(CSDConversationManager *)self featureFlags];
  if ([featureFlags controlMessageOverQREnabled])
  {
    serverBag = [(CSDConversationManager *)self serverBag];
    isControlMessageOverQREnabled = [serverBag isControlMessageOverQREnabled];

    if (isControlMessageOverQREnabled)
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
  [(CSDConversationManager *)self handleConversation:conversationCopy participantUpdateMessage:messageCopy fromNormalizedHandle:handleCopy];
}

- (void)conversation:(id)conversation didChangeLocalParticipant:(id)participant broadcastActivitySession:(BOOL)session currentSequenceNumber:(unint64_t)number fromResponse:(BOOL)response
{
  responseCopy = response;
  sessionCopy = session;
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDMessagingConversationMessage *)conversationCopy state]== 3 || [(CSDMessagingConversationMessage *)conversationCopy state]== 2)
  {
    screenCaptureQueue = [(CSDConversationManager *)self screenCaptureQueue];
    uUID = [(CSDMessagingConversationMessage *)conversationCopy UUID];
    v17 = [screenCaptureQueue objectForKeyedSubscript:uUID];

    if ([(CSDMessagingConversationMessage *)participantCopy audioVideoMode]&& v17)
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "executing queued up screenEnabled block since local participant mode changed", buf, 2u);
      }

      (*(v17 + 16))(v17);
      screenCaptureQueue2 = [(CSDConversationManager *)self screenCaptureQueue];
      uUID2 = [(CSDMessagingConversationMessage *)conversationCopy UUID];
      [screenCaptureQueue2 setObject:0 forKeyedSubscript:uUID2];
    }

    v21 = sub_1000C01A0(participantCopy);
    if (!v21)
    {
LABEL_42:

      goto LABEL_43;
    }

    numberCopy = number;
    v81 = sessionCopy;
    mutableConversationsRequestingUpgradeWithPreferences = [(CSDConversationManager *)self mutableConversationsRequestingUpgradeWithPreferences];
    uUID3 = [(CSDMessagingConversationMessage *)conversationCopy UUID];
    v25 = [mutableConversationsRequestingUpgradeWithPreferences objectForKey:uUID3];

    v84 = v25;
    if (v25)
    {
      mutableConversationsRequestingUpgradeWithPreferences2 = [(CSDConversationManager *)self mutableConversationsRequestingUpgradeWithPreferences];
      uUID4 = [(CSDMessagingConversationMessage *)conversationCopy UUID];
      [mutableConversationsRequestingUpgradeWithPreferences2 removeObjectForKey:uUID4];
    }

    groupUUID = [(CSDMessagingConversationMessage *)conversationCopy groupUUID];
    uUID5 = [(CSDMessagingConversationMessage *)conversationCopy UUID];
    v83 = sub_1000C026C(v21, groupUUID, uUID5, v25);

    v93[0] = &off_10063ED08;
    v92[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v92[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v21 identifier]);
    v31 = [NSString stringWithFormat:@"%@:%@", v30, &off_10063ED08];
    v93[1] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];

    if (responseCopy)
    {
      featureFlags = [(CSDConversationManager *)self featureFlags];
      if ([featureFlags controlMessageOverQREnabled])
      {
        serverBag = [(CSDConversationManager *)self serverBag];
        isControlMessageOverQREnabled = [serverBag isControlMessageOverQREnabled];

        if (isControlMessageOverQREnabled)
        {
          v77 = v32;
          v79 = participantCopy;
          data2 = [v32 mutableCopy];
          groupUUID2 = [(CSDMessagingConversationMessage *)conversationCopy groupUUID];
          uUIDString = [groupUUID2 UUIDString];
          [data2 setObject:uUIDString forKeyedSubscript:IDSSendMessageOptionGoupUUIDKey];

          sequenceNumberToTime = [(CSDMessagingConversationMessage *)conversationCopy sequenceNumberToTime];
          v40 = numberCopy;
          v41 = [NSNumber numberWithUnsignedLongLong:numberCopy];
          v42 = [sequenceNumberToTime objectForKey:v41];

          if (v42)
          {
            sequenceNumberToTime2 = [(CSDMessagingConversationMessage *)conversationCopy sequenceNumberToTime];
            v44 = [NSNumber numberWithUnsignedLongLong:numberCopy];
            v45 = [sequenceNumberToTime2 objectForKeyedSubscript:v44];
            [data2 setObject:v45 forKeyedSubscript:IDSSendMessageOptionTimestampKey];

            v46 = sub_100004778();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              [(CSDMessagingConversationMessage *)conversationCopy sequenceNumberToTime];
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

            sequenceNumberToTime3 = [(CSDMessagingConversationMessage *)conversationCopy sequenceNumberToTime];
            v52 = [NSNumber numberWithUnsignedLongLong:v40];
            [sequenceNumberToTime3 removeObjectForKey:v52];
          }

          else
          {
            sequenceNumberToTime3 = sub_100004778();
            if (os_log_type_enabled(sequenceNumberToTime3, OS_LOG_TYPE_ERROR))
            {
              sub_100478128();
            }
          }

          participantCopy = v79;

          v74 = sub_100004778();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v95 = data2;
            v96 = 2112;
            v97 = v79;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "updatedOptions: %@ for participant: %@", buf, 0x16u);
          }

          data = [v83 data];
          v76 = [data2 copy];
          [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v76];

          v54 = v83;
          v32 = v77;
LABEL_24:

          if (v81)
          {
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            activitySessions = [(CSDMessagingConversationMessage *)conversationCopy activitySessions];
            v56 = [activitySessions countByEnumeratingWithState:&v85 objects:v91 count:16];
            if (v56)
            {
              v57 = v56;
              v78 = v32;
              v80 = participantCopy;
              v82 = v17;
              v58 = *v86;
LABEL_27:
              v59 = 0;
              while (1)
              {
                if (*v86 != v58)
                {
                  objc_enumerationMutation(activitySessions);
                }

                v60 = *(*(&v85 + 1) + 8 * v59);
                activity = [v60 activity];
                isSystemActivity = [activity isSystemActivity];

                if (!isSystemActivity)
                {
                  break;
                }

                if (v57 == ++v59)
                {
                  v57 = [activitySessions countByEnumeratingWithState:&v85 objects:v91 count:16];
                  if (v57)
                  {
                    goto LABEL_27;
                  }

                  v63 = activitySessions;
                  participantCopy = v80;
                  v17 = v82;
                  v54 = v83;
                  goto LABEL_38;
                }
              }

              v63 = v60;

              participantCopy = v80;
              v17 = v82;
              v54 = v83;
              v32 = v78;
              if (!v63)
              {
                goto LABEL_41;
              }

              v64 = [CSDMessagingConversationMessage alloc];
              groupUUID3 = [(CSDMessagingConversationMessage *)conversationCopy groupUUID];
              v66 = [(CSDMessagingConversationMessage *)v64 initWithType:8 groupUUID:groupUUID3 link:0];

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
                uUID6 = [(CSDMessagingConversationMessage *)conversationCopy UUID];
                *buf = 138412546;
                v95 = uUID6;
                v96 = 2112;
                v97 = v68;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "For AVLess to AV upgrade of conversation UUID %@, sending an AddActivitySession message to devices lacking AVLess support: %@", buf, 0x16u);
              }

              [(CSDConversationManager *)self sendMessage:v68 forConversation:conversationCopy withActivitySession:v63 additionalOptions:v70];
              tuConversationActivitySession = [v63 tuConversationActivitySession];
              [(CSDConversationManager *)self broadcastImageForSession:tuConversationActivitySession onConversation:conversationCopy];

              participantCopy = v80;
LABEL_38:
              v32 = v78;
            }

            else
            {
              v63 = activitySessions;
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
      v95 = participantCopy;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "didChangeLocalParticipant: %@", buf, 0xCu);
    }

    v54 = v83;
    data2 = [v83 data];
    [(CSDConversationManager *)self broadcastData:data2 onConversation:conversationCopy additionalOptions:v32];
    goto LABEL_24;
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v95 = participantCopy;
    v96 = 2112;
    v97 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not broadcasting localParticipant change for participant %@ since the conversation isn't joined yet %@", buf, 0x16u);
  }

LABEL_43:
}

- (void)conversation:(id)conversation removedActiveParticipant:(id)participant withLeaveReason:(unint64_t)reason
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = conversationCopy;
    v42 = 2112;
    v43 = participantCopy;
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
        tuConversation = [conversationCopy tuConversation];
        tuConversationParticipant = [participantCopy tuConversationParticipant];
        delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
        v16 = [delegateToQueue objectForKey:v12];

        if (objc_opt_respondsToSelector())
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v31[0] = sub_100190368;
          v31[1] = &unk_10061A450;
          v31[2] = v12;
          v32 = tuConversation;
          selfCopy = self;
          v34 = tuConversationParticipant;
          dispatch_async(v16, block);
        }

        if (objc_opt_respondsToSelector())
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v25[0] = sub_1001904B0;
          v25[1] = &unk_10061A678;
          v25[2] = v12;
          v26 = tuConversation;
          selfCopy2 = self;
          v28 = tuConversationParticipant;
          reasonCopy = reason;
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

- (void)conversation:(id)conversation updatedActiveParticipant:(id)participant
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = conversationCopy;
    v31 = 2112;
    v32 = participantCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ participant: %@", buf, 0x16u);
  }

  v19 = participantCopy;

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
        tuConversation = [conversationCopy tuConversation];
        delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
        v17 = [delegateToQueue objectForKey:v14];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10019084C;
        block[3] = &unk_100619E58;
        block[4] = v14;
        v22 = tuConversation;
        selfCopy = self;
        v18 = tuConversation;
        dispatch_async(v17, block);

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }
}

- (void)conversation:(id)conversation updatedActiveParticipantWithScreenSharing:(id)sharing
{
  conversationCopy = conversation;
  sharingCopy = sharing;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
          tuConversation = [conversationCopy tuConversation];
          tuConversationParticipant = [sharingCopy tuConversationParticipant];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v15 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v23[0] = sub_100190BC8;
          v23[1] = &unk_10061A450;
          v23[2] = v11;
          v24 = tuConversation;
          selfCopy = self;
          v26 = tuConversationParticipant;
          v16 = tuConversationParticipant;
          v17 = tuConversation;
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

- (void)conversationDidStopScreenCapture:(id)capture
{
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDConversationManager *)self featureFlags];
  sckSystemPickerEnabled = [featureFlags sckSystemPickerEnabled];

  if (sckSystemPickerEnabled)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting to stop the screensharing activity session since screen capture ended", v9, 2u);
    }

    screenSharingActivityManager = [(CSDConversationManager *)self screenSharingActivityManager];
    [screenSharingActivityManager stopActivitySession];
  }
}

- (void)conversation:(id)conversation mediaPrioritiesChangedForParticipant:(id)participant
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
          tuConversation = [conversationCopy tuConversation];
          tuConversationParticipant = [participantCopy tuConversationParticipant];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v15 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v23[0] = sub_100191004;
          v23[1] = &unk_10061A450;
          v23[2] = v11;
          v24 = tuConversation;
          selfCopy = self;
          v26 = tuConversationParticipant;
          v16 = tuConversationParticipant;
          v17 = tuConversation;
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

- (void)conversation:(id)conversation participant:(id)participant didReact:(id)react
{
  conversationCopy = conversation;
  participantCopy = participant;
  reactCopy = react;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
          tuConversation = [conversationCopy tuConversation];
          tuConversationParticipant = [participantCopy tuConversationParticipant];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v17 = [delegateToQueue objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v26[0] = sub_1001913A8;
          v26[1] = &unk_10061A428;
          v26[2] = v13;
          v27 = tuConversation;
          selfCopy = self;
          v29 = tuConversationParticipant;
          v30 = reactCopy;
          v18 = tuConversationParticipant;
          v19 = tuConversation;
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

- (void)conversation:(id)conversation participantDidStopReacting:(id)reacting
{
  conversationCopy = conversation;
  reactingCopy = reacting;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
          tuConversation = [conversationCopy tuConversation];
          tuConversationParticipant = [reactingCopy tuConversationParticipant];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v15 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v23[0] = sub_100191728;
          v23[1] = &unk_10061A450;
          v23[2] = v11;
          v24 = tuConversation;
          selfCopy = self;
          v26 = tuConversationParticipant;
          v16 = tuConversationParticipant;
          v17 = tuConversation;
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

- (void)conversation:(id)conversation requestBlobRecoveryForParticipantDestination:(id)destination completion:(id)completion
{
  destinationCopy = destination;
  completionCopy = completion;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = TULoggableStringForHandle();
    v19 = 138412290;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting blob recovery for %@", &v19, 0xCu);
  }

  v14 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  v16 = [(CSDMessagingConversationMessage *)v14 initWithType:4 groupUUID:groupUUID link:0];

  [(CSDMessagingConversationMessage *)v16 setRequestBlobRecoveryOptions:1];
  data = [(CSDMessagingConversationMessage *)v16 data];
  v18 = [(CSDConversationManager *)self sendData:data onConversation:conversationCopy toDestinationID:destinationCopy];

  completionCopy[2](completionCopy, v18);
}

- (void)conversation:(id)conversation sendDeclineMessageToParticipantDestination:(id)destination
{
  destinationCopy = destination;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = TULoggableStringForHandle();
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending decline message for %@", &v15, 0xCu);
  }

  v11 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  v13 = [(CSDMessagingConversationMessage *)v11 initWithType:9 groupUUID:groupUUID link:0];

  data = [(CSDMessagingConversationMessage *)v13 data];
  [(CSDConversationManager *)self sendData:data onConversation:conversationCopy toDestinationID:destinationCopy];
}

- (void)conversation:(id)conversation failedWithContext:(id)context
{
  conversationCopy = conversation;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v14 = [delegateToQueue objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100191D88;
          block[3] = &unk_10061A450;
          block[4] = v11;
          v20 = tuConversation;
          selfCopy = self;
          v22 = contextCopy;
          v15 = tuConversation;
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

- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event
{
  conversationCopy = conversation;
  eventCopy = event;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationNoticeManger = [(CSDConversationManager *)self conversationNoticeManger];
  v19 = conversationCopy;
  [conversationNoticeManger conversation:conversationCopy receivedActivitySessionEvent:eventCopy];

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
          tuConversation = [v19 tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v17 = [delegateToQueue objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100192110;
          block[3] = &unk_10061A450;
          block[4] = v14;
          v22 = tuConversation;
          selfCopy = self;
          v24 = eventCopy;
          v18 = tuConversation;
          dispatch_async(v17, block);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }
}

- (void)conversation:(id)conversation activitySessionChanged:(id)changed
{
  conversationCopy = conversation;
  changedCopy = changed;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v11 = 138412546;
    v12 = uUID;
    v13 = 2112;
    v14 = changedCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation UUID: %@ activitySessionChanged: %@", &v11, 0x16u);
  }

  [(CSDConversationManager *)self conversationChanged:conversationCopy];
}

- (void)conversation:(id)conversation didChangeStateForActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = sessionCopy;
  if ([sessionCopy state] == 4)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"CSDSharePlayMediaDidHandoffNotification" object:conversationCopy];
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
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v16 = [delegateToQueue objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001925C8;
          block[3] = &unk_10061A450;
          block[4] = v13;
          v22 = tuConversation;
          selfCopy = self;
          v24 = v18;
          v17 = tuConversation;
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

- (void)conversation:(id)conversation didChangeSceneAssociationForActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = sessionCopy;
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
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v15 = [delegateToQueue objectForKey:v12];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100192980;
          block[3] = &unk_10061A450;
          block[4] = v12;
          v21 = tuConversation;
          selfCopy = self;
          v23 = sessionCopy;
          v16 = tuConversation;
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

- (void)conversation:(id)conversation appLaunchState:(unint64_t)state forActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 134218498;
    stateCopy = state;
    v35 = 2112;
    v36 = sessionCopy;
    v37 = 2112;
    v38 = uUID;
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
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v17 = [delegateToQueue objectForKey:v14];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100192D6C;
          block[3] = &unk_10061A678;
          block[4] = v14;
          v24 = tuConversation;
          selfCopy = self;
          stateCopy2 = state;
          v26 = sessionCopy;
          v18 = tuConversation;
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

- (void)conversation:(id)conversation activityChangedOnSession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = conversationCopy;
    v32 = 2112;
    v33 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation: %@ activityChangedOnSession: %@", buf, 0x16u);
  }

  activity = [sessionCopy activity];
  originator = [activity originator];

  if (!originator)
  {
    v12 = [CSDMessagingConversationMessage alloc];
    groupUUID = [conversationCopy groupUUID];
    v14 = [(CSDMessagingConversationMessage *)v12 initWithType:23 groupUUID:groupUUID link:0];

    v15 = objc_alloc_init(CSDMessagingConversationActivitySession);
    activity2 = [sessionCopy activity];
    v17 = [activity2 copy];

    uUID = [sessionCopy UUID];
    uUIDString = [uUID UUIDString];
    [(CSDMessagingConversationActivitySession *)v15 setIdentifierUUIDString:uUIDString];

    v20 = [CSDMessagingConversationActivity activityWithCSDConversationActivity:v17 fromConversation:conversationCopy forStorage:0];
    [(CSDMessagingConversationActivitySession *)v15 setActivity:v20];

    [(CSDMessagingConversationMessage *)v14 addActivitySessions:v15];
    v28[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v28[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    v29[0] = &off_10063ED20;
    uUID2 = [sessionCopy UUID];
    uUIDString2 = [uUID2 UUIDString];
    v23 = [NSString stringWithFormat:@"%@:%@", uUIDString2, &off_10063ED20];
    v29[1] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

    data = [(CSDMessagingConversationMessage *)v14 data];
    v26 = [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v24];

    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v31) = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "(success: %d)", buf, 8u);
    }

    [(CSDConversationManager *)self broadcastImageForSession:sessionCopy onConversation:conversationCopy];
    [(CSDConversationManager *)self conversationChanged:conversationCopy];
  }
}

- (void)notifyDelegateOfHighlightAddedForConversation:(id)conversation highlightIdentifier:(id)identifier oldHighlightIdentifier:(id)highlightIdentifier byParticipant:(id)participant isFirstAdd:(BOOL)add
{
  conversationCopy = conversation;
  identifierCopy = identifier;
  highlightIdentifierCopy = highlightIdentifier;
  participantCopy = participant;
  if (highlightIdentifierCopy && ([highlightIdentifierCopy isEqualToString:identifierCopy] & 1) == 0)
  {
    collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
    [collaborationStateManager collaborationRemoved:highlightIdentifierCopy];
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
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v19 = [delegateToQueue objectForKey:v17];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10019346C;
          block[3] = &unk_10061BCB0;
          block[4] = v17;
          v26 = conversationCopy;
          selfCopy = self;
          v28 = participantCopy;
          v29 = identifierCopy;
          v30 = highlightIdentifierCopy;
          addCopy = add;
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

- (void)notifyDelegateOfHighlightRemovedFromConversation:(id)conversation highlightIdentifier:(id)identifier byParticipant:(id)participant
{
  conversationCopy = conversation;
  identifierCopy = identifier;
  participantCopy = participant;
  collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
  v19 = identifierCopy;
  [collaborationStateManager collaborationRemoved:identifierCopy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v11 = [delegateToQueue countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(delegateToQueue);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v17 = [delegateToQueue2 objectForKey:v15];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001937F0;
          block[3] = &unk_10061A428;
          block[4] = v15;
          v22 = conversationCopy;
          selfCopy = self;
          v24 = participantCopy;
          v25 = v19;
          dispatch_async(v17, block);
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [delegateToQueue countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }
}

- (void)startTrackingCollaborationWithIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d completionHandler:(id)handler
{
  identifierCopy = identifier;
  lCopy = l;
  dsCopy = ds;
  dCopy = d;
  handlerCopy = handler;
  queue = [(CSDConversationManager *)self queue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100193A88;
  v23[3] = &unk_10061D178;
  v23[4] = self;
  v24 = dCopy;
  v25 = identifierCopy;
  v26 = lCopy;
  v27 = dsCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = dsCopy;
  v20 = lCopy;
  v21 = identifierCopy;
  v22 = dCopy;
  dispatch_async(queue, v23);
}

- (void)addHighlightIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d
{
  identifierCopy = identifier;
  lCopy = l;
  dsCopy = ds;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100193D10;
  block[3] = &unk_10061A428;
  v20 = identifierCopy;
  v21 = lCopy;
  selfCopy = self;
  v23 = dCopy;
  v24 = dsCopy;
  v15 = dsCopy;
  v16 = dCopy;
  v17 = lCopy;
  v18 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)removeHighlightIdentifier:(id)identifier forConversationUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100194044;
  block[3] = &unk_100619E58;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = dCopy;
  v9 = dCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)markCollaborationWithIdentifierOpened:(id)opened forConversationUUID:(id)d
{
  openedCopy = opened;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001942DC;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = openedCopy;
  v9 = openedCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)collaborationStateChanged:(int64_t)changed forCollaborationIdentifier:(id)identifier onConversationUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
  v10 = [mutableConversationsByUUID objectForKeyedSubscript:dCopy];

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    changedCopy = changed;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Collaboration state changed to %lu", buf, 0xCu);
  }

  if (v10)
  {
    v20 = dCopy;
    v22 = v10;
    tuConversation = [v10 tuConversation];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
    v13 = [delegateToQueue countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(delegateToQueue);
          }

          v17 = *(*(&v31 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
            v19 = [delegateToQueue2 objectForKey:v17];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1001946A0;
            block[3] = &unk_10061D378;
            block[4] = v17;
            v26 = v22;
            selfCopy = self;
            v28 = tuConversation;
            changedCopy2 = changed;
            v29 = identifierCopy;
            dispatch_async(v19, block);
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [delegateToQueue countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }

    dCopy = v20;
    v10 = v22;
  }
}

- (void)addCollaborationDictionary:(id)dictionary forConversationWithUUID:(id)d fromMe:(BOOL)me
{
  dictionaryCopy = dictionary;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100194B58;
  v13[3] = &unk_10061BE38;
  v13[4] = self;
  v14 = dictionaryCopy;
  v15 = dCopy;
  meCopy = me;
  v11 = dCopy;
  v12 = dictionaryCopy;
  dispatch_async(queue, v13);
}

- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  initiatorCopy = initiator;
  collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
  [collaborationStateManager getNeedsDisclosureOfCollaborationInitiator:initiatorCopy forConversationUUID:dCopy completionHandler:handlerCopy];
}

- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d
{
  dCopy = d;
  initiatorCopy = initiator;
  collaborationStateManager = [(CSDConversationManager *)self collaborationStateManager];
  [collaborationStateManager addDisclosedCollaborationInitiator:initiatorCopy toConversationUUID:dCopy];
}

- (void)conversation:(id)conversation changedBytesOfDataUsed:(int64_t)used
{
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v13 = [delegateToQueue objectForKey:v10];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001954D4;
          block[3] = &unk_10061BDD0;
          block[4] = v10;
          v19 = tuConversation;
          selfCopy = self;
          usedCopy = used;
          v14 = tuConversation;
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

- (void)conversation:(id)conversation activitySessionRemoved:(id)removed userOriginated:(BOOL)originated
{
  originatedCopy = originated;
  conversationCopy = conversation;
  removedCopy = removed;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (originatedCopy)
  {
    activity = [removedCopy activity];
    isStaticActivity = [activity isStaticActivity];

    if ((isStaticActivity & 1) == 0)
    {
      terminatingHandle = [removedCopy terminatingHandle];

      if (terminatingHandle)
      {
        terminatingHandle2 = [removedCopy terminatingHandle];
        localParticipant = [conversationCopy remoteParticipantForHandle:terminatingHandle2];
      }

      else
      {
        localParticipant = [conversationCopy localParticipant];
        v16 = [CSDMessagingConversationMessage alloc];
        groupUUID = [conversationCopy groupUUID];
        terminatingHandle2 = [(CSDMessagingConversationMessage *)v16 initWithType:21 groupUUID:groupUUID link:0];

        v18 = objc_alloc_init(CSDMessagingConversationActivitySession);
        uUID = [removedCopy UUID];
        uUIDString = [uUID UUIDString];
        [(CSDMessagingConversationActivitySession *)v18 setIdentifierUUIDString:uUIDString];

        [(CSDMessagingConversationMessage *)terminatingHandle2 addActivitySessions:v18];
        data = [(CSDMessagingConversationMessage *)terminatingHandle2 data];
        v28 = IDSSendMessageOptionPublicMessageIntentKey;
        v22 = [NSNumber numberWithInt:[(CSDMessagingConversationMessage *)terminatingHandle2 type]];
        v29 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v24 = [(CSDConversationManager *)self broadcastData:data onConversation:conversationCopy additionalOptions:v23];

        v25 = sub_100004778();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27[0] = 67109120;
          v27[1] = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Did send activity removal message successfully? %d", v27, 8u);
        }
      }

      if (localParticipant)
      {
        [(CSDConversationManager *)self postEndEventForSession:removedCopy originator:localParticipant conversation:conversationCopy];
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

- (void)conversation:(id)conversation sendResourceAtURL:(id)l toParticipants:(id)participants metadata:(id)metadata activitySessionUUID:(id)d completion:(id)completion
{
  conversationCopy = conversation;
  lCopy = l;
  participantsCopy = participants;
  metadataCopy = metadata;
  dCopy = d;
  completionCopy = completion;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [lCopy URL];
    *buf = 138412290;
    v55 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending resource at url %@", buf, 0xCu);
  }

  resourceTransferCallbacks = [(CSDConversationManager *)self resourceTransferCallbacks];
  v24 = [lCopy URL];
  v25 = [resourceTransferCallbacks objectForKeyedSubscript:v24];

  if (v25)
  {
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100478478(lCopy);
    }

    v27 = [NSError errorWithDomain:@"CSDResourceTransferErrorDomain" code:1 userInfo:0];
    completionCopy[2](completionCopy, v27);
  }

  else
  {
    v46 = dCopy;
    v47 = metadataCopy;
    v48 = conversationCopy;
    v27 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [participantsCopy count]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v44 = participantsCopy;
    v28 = participantsCopy;
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

          activeIDSDestination = [*(*(&v49 + 1) + 8 * i) activeIDSDestination];
          [v27 addObject:activeIDSDestination];
        }

        v30 = [v28 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v30);
    }

    if ([v27 count])
    {
      v34 = +[NSMutableDictionary dictionary];
      groupUUID = [v48 groupUUID];
      uUIDString = [groupUUID UUIDString];
      [v34 setObject:uUIDString forKey:@"resourceTransferConversationIDKey"];

      uUIDString2 = [v46 UUIDString];
      [v34 setObject:uUIDString2 forKey:@"resourceTransferActivitySessionIDKey"];

      if (v47)
      {
        [v34 setObject:v47 forKey:@"resourceTransferClientMetadataKey"];
      }

      if (completionCopy)
      {
        v38 = objc_retainBlock(completionCopy);
        resourceTransferCallbacks2 = [(CSDConversationManager *)self resourceTransferCallbacks];
        v40 = [lCopy URL];
        [resourceTransferCallbacks2 setObject:v38 forKeyedSubscript:v40];
      }

      fileTransferController = [(CSDConversationManager *)self fileTransferController];
      localMember = [v48 localMember];
      [fileTransferController transferFileAtSandboxExtendedURL:lCopy toDestinations:v27 withMetadata:v34 fromMember:localMember];

      conversationCopy = v48;
      participantsCopy = v45;
      metadataCopy = v47;
    }

    else
    {
      v43 = sub_100004778();
      metadataCopy = v47;
      conversationCopy = v48;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_100478504();
      }

      v34 = [NSError errorWithDomain:@"CSDResourceTransferErrorDomain" code:2 userInfo:0];
      completionCopy[2](completionCopy, v34);
      participantsCopy = v44;
    }

    dCopy = v46;
  }
}

- (void)conversation:(id)conversation addedMembers:(id)members triggeredLocally:(BOOL)locally
{
  locallyCopy = locally;
  conversationCopy = conversation;
  membersCopy = members;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    *buf = 138412802;
    v31 = conversationCopy;
    v32 = 2112;
    if (locallyCopy)
    {
      v12 = @"YES";
    }

    v33 = membersCopy;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "conversation: %@ addedMembers: %@ triggeredLocally: %@", buf, 0x20u);
  }

  [(CSDConversationManager *)self broadcastLightweightEndorsementForAddedMembers:membersCopy onConversation:conversationCopy];
  if (locallyCopy)
  {
    stagedActivitySession = [conversationCopy stagedActivitySession];

    if (stagedActivitySession)
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        stagedActivitySession2 = [conversationCopy stagedActivitySession];
        *buf = 138412290;
        v31 = stagedActivitySession2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found staged ActivitySession on conversation. Distributing image. %@", buf, 0xCu);
      }

      stagedActivitySession3 = [conversationCopy stagedActivitySession];
      [(CSDConversationManager *)self broadcastImageForSession:stagedActivitySession3 onConversation:conversationCopy];
    }

    v24 = membersCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    tuActivitySessions = [conversationCopy tuActivitySessions];
    v18 = [tuActivitySessions countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(tuActivitySessions);
          }

          v22 = *(*(&v25 + 1) + 8 * i);
          v23 = sub_100004778();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found ActivitySession on conversation. Distributing image. %@", buf, 0xCu);
          }

          [(CSDConversationManager *)self broadcastImageForSession:v22 onConversation:conversationCopy];
        }

        v19 = [tuActivitySessions countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    membersCopy = v24;
  }

  [(CSDConversationManager *)self conversationChanged:conversationCopy];
}

- (void)conversationDidTriggerJoin:(id)join
{
  joinCopy = join;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = joinCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "conversation: %@ triggered join.", &v14, 0xCu);
  }

  stagedActivitySession = [joinCopy stagedActivitySession];
  if (stagedActivitySession)
  {
    v8 = stagedActivitySession;
    stagedActivitySession2 = [joinCopy stagedActivitySession];
    isLocallyInitiated = [stagedActivitySession2 isLocallyInitiated];

    if (isLocallyInitiated)
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        stagedActivitySession3 = [joinCopy stagedActivitySession];
        v14 = 138412290;
        v15 = stagedActivitySession3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found staged ActivitySession on conversation. Distributing image. %@", &v14, 0xCu);
      }

      stagedActivitySession4 = [joinCopy stagedActivitySession];
      [(CSDConversationManager *)self broadcastImageForSession:stagedActivitySession4 onConversation:joinCopy];
    }
  }
}

- (void)conversation:(id)conversation requestedEndpointWithIdentifier:(id)identifier activitySession:(id)session completion:(id)completion
{
  conversationCopy = conversation;
  identifierCopy = identifier;
  sessionCopy = session;
  completionCopy = completion;
  selfCopy = self;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_100196560;
  v36[4] = sub_10019658C;
  v37 = objc_retainBlock(completionCopy);
  v11 = dispatch_group_create();
  observerStorage = [(CSDConversationManager *)self observerStorage];
  observerToQueue = [observerStorage observerToQueue];

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v14 = observerToQueue;
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
        v19 = [v14 objectForKey:{v18, conversationCopy}];
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v11);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100196594;
          block[3] = &unk_10061D3C8;
          block[4] = v18;
          block[5] = selfCopy;
          v28 = identifierCopy;
          v29 = sessionCopy;
          v31 = v36;
          v30 = v11;
          dispatch_async(v19, block);
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v15);
  }

  queue2 = [(CSDConversationManager *)selfCopy queue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100196788;
  v26[3] = &unk_10061D3F0;
  v26[4] = v36;
  dispatch_group_notify(v11, queue2, v26);

  _Block_object_dispose(v36, 8);
}

- (void)conversation:(id)conversation screenShareAttributesSelected:(id)selected
{
  selectedCopy = selected;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  uUID = [conversationCopy UUID];

  [(CSDConversationManager *)self setScreenEnabled:1 screenShareAttributes:selectedCopy forConversationWithUUID:uUID];
}

- (void)conversation:(id)conversation screenShareAttributesUpdated:(id)updated
{
  updatedCopy = updated;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  uUID = [conversationCopy UUID];

  [(CSDConversationManager *)self setScreenShareAttributes:updatedCopy forConversationWithUUID:uUID];
}

- (void)conversation:(id)conversation removedScreenShareRequest:(id)request
{
  requestCopy = request;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManager *)self notifyDelegatesOf:conversationCopy removedScreenShareRequest:requestCopy];
}

- (void)conversation:(id)conversation screenShareAttributesDidChange:(id)change
{
  changeCopy = change;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  screenSharingActivityManager = [(CSDConversationManager *)self screenSharingActivityManager];
  [screenSharingActivityManager broadcastAttributes:changeCopy];
}

- (void)conversation:(id)conversation remoteMembersChanged:(id)changed
{
  conversationCopy = conversation;
  changedCopy = changed;
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
          tuConversation = [conversationCopy tuConversation];
          delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
          v13 = [delegateToQueue objectForKey:v10];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100196BE8;
          block[3] = &unk_10061A450;
          block[4] = v10;
          v19 = tuConversation;
          selfCopy = self;
          v21 = changedCopy;
          v14 = tuConversation;
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

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (success)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412546;
      v37 = identifierCopy;
      v38 = 2112;
      v39 = errorCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sent %@ with error: %@", &v36, 0x16u);
    }

    [(CSDConversationManager *)self _runCallbackIfNecessaryForMessage:identifierCopy];
  }

  else
  {
    mutablePseudonymsByRequestIdentifiers = [(CSDConversationManager *)self mutablePseudonymsByRequestIdentifiers];
    v15 = [mutablePseudonymsByRequestIdentifiers objectForKeyedSubscript:identifierCopy];

    if (v15 && [errorCopy code] == 3)
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

  outIdentifierToConversationInfo = [(CSDConversationManager *)self outIdentifierToConversationInfo];
  v19 = [outIdentifierToConversationInfo objectForKey:identifierCopy];

  if (v19)
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      outIdentifierToConversationInfo2 = [(CSDConversationManager *)self outIdentifierToConversationInfo];
      v22 = [outIdentifierToConversationInfo2 objectForKeyedSubscript:identifierCopy];
      v36 = 138412546;
      v37 = identifierCopy;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "outIdentifierToConversationInfo[%@] = %@", &v36, 0x16u);
    }

    if (success)
    {
      outIdentifierToConversationInfo3 = [(CSDConversationManager *)self outIdentifierToConversationInfo];
      v24 = [outIdentifierToConversationInfo3 objectForKeyedSubscript:identifierCopy];

      v25 = [v24 objectForKeyedSubscript:@"kCSDConversationIsLetMeInApproved"];
      bOOLValue = [v25 BOOLValue];

      v27 = [v24 objectForKeyedSubscript:@"kCSDConversationGroupUUID"];
      v28 = [(CSDConversationManager *)self conversationWithGroupUUID:v27];

      tuConversation = [v28 tuConversation];

      reportingController = sub_100004778();
      v31 = os_log_type_enabled(reportingController, OS_LOG_TYPE_DEFAULT);
      if (tuConversation)
      {
        if (v31)
        {
          v32 = @"NO";
          if (bOOLValue)
          {
            v32 = @"YES";
          }

          v36 = 138412290;
          v37 = v32;
          _os_log_impl(&_mh_execute_header, reportingController, OS_LOG_TYPE_DEFAULT, "Report sent let me in response (approved: %@)", &v36, 0xCu);
        }

        reportingController = [(CSDConversationManager *)self reportingController];
        tuConversation2 = [v28 tuConversation];
        [reportingController sentLetMeInRequestForConversation:tuConversation2 isApproved:bOOLValue];
      }

      else if (v31)
      {
        v34 = @"NO";
        if (bOOLValue)
        {
          v34 = @"YES";
        }

        v36 = 138412546;
        v37 = v34;
        v38 = 2112;
        v39 = v28;
        _os_log_impl(&_mh_execute_header, reportingController, OS_LOG_TYPE_DEFAULT, "Not report sent let me in response (approved: %@) because TUConversation is null for %@", &v36, 0x16u);
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

    outIdentifierToConversationInfo4 = [(CSDConversationManager *)self outIdentifierToConversationInfo];
    [outIdentifierToConversationInfo4 removeObjectForKey:identifierCopy];
  }
}

- (void)_runCallbackIfNecessaryForMessage:(id)message
{
  messageCopy = message;
  mutableSendDataCallbacksByRequestIdentifiers = [(CSDConversationManager *)self mutableSendDataCallbacksByRequestIdentifiers];
  v6 = [mutableSendDataCallbacksByRequestIdentifiers objectForKey:messageCopy];

  if (v6)
  {
    mutableSendDataCallbacksByRequestIdentifiers2 = [(CSDConversationManager *)self mutableSendDataCallbacksByRequestIdentifiers];
    [mutableSendDataCallbacksByRequestIdentifiers2 removeObjectForKey:messageCopy];

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = messageCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Running callback for message %@, which has been received by the IDS daemon", &v9, 0xCu);
    }

    v6[2](v6);
  }
}

- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  if ([dCopy length])
  {
    v16 = IDSCopyAddressDestinationForDestination();
    v17 = IDSCopyRawAddressForDestination();

    v18 = [TUHandle normalizedHandleWithDestinationID:v17];
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [serviceCopy serviceIdentifier];
      v38 = v17;
      selfCopy = self;
      v21 = v18;
      v22 = serviceCopy;
      v24 = v23 = accountCopy;
      v25 = IDSLoggableDescriptionForHandleOnService();
      *buf = 134219010;
      typeCopy3 = type;
      v43 = 2112;
      v44 = v22;
      v45 = 2112;
      v46 = v23;
      v47 = 2112;
      v48 = v25;
      v49 = 2112;
      v50 = contextCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Group Session update %ld received for service %@ account %@ from (fromID=%@) with context: %@", buf, 0x34u);

      accountCopy = v23;
      serviceCopy = v22;
      v18 = v21;
      self = selfCopy;
      v17 = v38;
    }

    v26 = [(CSDConversationManager *)self shouldCreatePendingChatForMessageType:type fromHandle:v18];
    v27 = sub_100004778();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        *buf = 134217984;
        typeCopy3 = type;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Recieved pending message of type %ld", buf, 0xCu);
      }

      originalGUID = [contextCopy originalGUID];

      incomingPendingMessageGUIDs = sub_100004778();
      v31 = os_log_type_enabled(incomingPendingMessageGUIDs, OS_LOG_TYPE_DEFAULT);
      if (originalGUID)
      {
        if (v31)
        {
          originalGUID2 = [contextCopy originalGUID];
          *buf = 138412290;
          typeCopy3 = originalGUID2;
          _os_log_impl(&_mh_execute_header, incomingPendingMessageGUIDs, OS_LOG_TYPE_DEFAULT, "Added %@ to the incomingPendingMessageGUIDs", buf, 0xCu);
        }

        incomingPendingMessageGUIDs = [(CSDConversationManager *)self incomingPendingMessageGUIDs];
        originalGUID3 = [contextCopy originalGUID];
        [incomingPendingMessageGUIDs addObject:originalGUID3];
      }

      else if (v31)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, incomingPendingMessageGUIDs, OS_LOG_TYPE_DEFAULT, "[WARN] No originalGUID in the context", buf, 2u);
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
      typeCopy3 = type;
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

- (BOOL)shouldCreatePendingChatForMessageType:(int64_t)type fromHandle:(id)handle
{
  if (type == 8)
  {
    return ![(CSDConversationManager *)self isValidLocalHandle:handle, v4, v5];
  }

  else
  {
    return 0;
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  dCopy = d;
  contextCopy = context;
  metadataCopy = metadata;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  messageProxy = [(CSDConversationManager *)self messageProxy];
  v22 = [messageProxy shouldIgnoreIDSResource:lCopy metadata:metadataCopy fromID:dCopy context:contextCopy];

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
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    serviceIdentifier = [serviceCopy serviceIdentifier];
    v28 = IDSLoggableDescriptionForHandleOnService();
    v33 = 138412546;
    v34 = outgoingResponseIdentifier;
    v35 = 2112;
    v36 = v28;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received resource URL with identifier %@ from %@", &v33, 0x16u);
  }

  if ([dCopy length])
  {
    v23 = [NSData dataWithContentsOfURL:lCopy];
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
        [(CSDConversationManager *)self _service:serviceCopy account:accountCopy incomingData:v23 fromID:dCopy context:contextCopy attemptCount:0];
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

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  messageProxy = [(CSDConversationManager *)self messageProxy];
  v18 = [messageProxy shouldIgnoreIDSMessage:dataCopy fromID:dCopy context:contextCopy];

  v19 = sub_10022ACCC();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (v18)
  {
    if (v20)
    {
      storageGuid = [contextCopy storageGuid];
      v25 = 141558274;
      v26 = 1752392040;
      v27 = 2112;
      v28 = storageGuid;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "service:account:incomingData:fromID:context: already proxied IDS message with ID %{mask.hash}@, ignoring.", &v25, 0x16u);
    }
  }

  else
  {
    if (v20)
    {
      serviceIdentifier = [serviceCopy serviceIdentifier];
      v23 = IDSLoggableDescriptionForHandleOnService();
      storageGuid2 = [contextCopy storageGuid];
      v25 = 141558786;
      v26 = 1752392040;
      v27 = 2112;
      v28 = v23;
      v29 = 2160;
      v30 = 1752392040;
      v31 = 2112;
      v32 = storageGuid2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "service:account:incomingData:fromID:context: receiving IDS message from %{mask.hash}@ with ID %{mask.hash}@", &v25, 0x2Au);
    }

    [(CSDConversationManager *)self _service:serviceCopy account:accountCopy incomingData:dataCopy fromID:dCopy context:contextCopy attemptCount:0];
  }
}

- (void)processProxiedMessage:(id)message fromID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  messageCopy = message;
  v11 = sub_10022ACCC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10047857C();
  }

  [(CSDConversationManager *)self _service:0 account:0 incomingData:messageCopy fromID:dCopy context:contextCopy attemptCount:0];
}

- (void)processProxiedResource:(id)resource metadata:(id)metadata fromID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  resourceCopy = resource;
  v12 = sub_10022ACCC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10047861C();
  }

  [(CSDConversationManager *)self service:0 account:0 incomingResourceAtURL:resourceCopy fromID:dCopy context:contextCopy];
}

- (void)processProxiedGroupUpdate:(id)update
{
  updateCopy = update;
  v5 = sub_10022ACCC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004786BC();
  }

  [(CSDConversationManager *)self processGroupSessionParticipantUpdate:updateCopy context:0];
}

- (void)_service:(id)_service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context attemptCount:(unint64_t)count
{
  _serviceCopy = _service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    serviceIdentifier = [_serviceCopy serviceIdentifier];
    IDSLoggableDescriptionForHandleOnService();
    v109 = dCopy;
    selfCopy = self;
    v23 = contextCopy;
    v24 = dataCopy;
    v26 = v25 = accountCopy;
    [NSNumber numberWithUnsignedInteger:count];
    v28 = v27 = _serviceCopy;
    *buf = 138412802;
    v124 = outgoingResponseIdentifier;
    v125 = 2112;
    *v126 = v26;
    *&v126[8] = 2112;
    v127 = v28;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received message with identifier %@ from %@ Attempt count %@", buf, 0x20u);

    _serviceCopy = v27;
    accountCopy = v25;
    dataCopy = v24;
    contextCopy = v23;
    self = selfCopy;
    dCopy = v109;
  }

  if ([dCopy length])
  {
    if ([dataCopy length])
    {
      v29 = [[CSDMessagingConversationMessage alloc] initWithData:dataCopy];
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

      v110 = _serviceCopy;
      if (v31)
      {
        type = [(CSDMessagingConversationMessage *)v29 type];
        if (type < 0x26 && ((0x3FFFE9FF7FuLL >> type) & 1) != 0)
        {
          v33 = *(&off_10061D458 + type);
        }

        else
        {
          v33 = [NSString stringWithFormat:@"(unknown: %i)", type];
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
        _serviceCopy = v110;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingData:fromID:context: Empty destinationID after IDSCopyRawAddressForDestination. Dropping message.", buf, 2u);
        }

        goto LABEL_124;
      }

      v36 = [TUHandle normalizedHandleWithDestinationID:v30];
      _serviceCopy = v110;
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

      type2 = [(CSDMessagingConversationMessage *)v29 type];
      if (type2 <= 13)
      {
        if (type2 == 10)
        {
          goto LABEL_47;
        }

        if (type2 != 11)
        {
          if (type2 != 13)
          {
            goto LABEL_49;
          }

          [(CSDConversationManager *)self handleEncryptedMessageWithin:v29 fromHandle:v36 context:contextCopy];
LABEL_124:

LABEL_125:
          goto LABEL_126;
        }
      }

      else
      {
        if (type2 <= 23)
        {
          if ((type2 - 14) < 2)
          {
            log = accountCopy;
            if (![contextCopy fromServerStorage])
            {
              goto LABEL_31;
            }

            v38 = [NSDate dateWithTimeIntervalSinceNow:-1800.0];
            serverReceivedTime = [contextCopy serverReceivedTime];
            v40 = contextCopy;
            v41 = [v38 compare:serverReceivedTime];

            v42 = v41 == 1;
            contextCopy = v40;
            if (!v42 || [(CSDMessagingConversationMessage *)v29 type]!= 14)
            {
              goto LABEL_31;
            }

            conversationGroupUUID = [(CSDMessagingConversationMessage *)v29 conversationGroupUUID];
            v44 = [(CSDConversationManager *)self conversationWithGroupUUID:conversationGroupUUID];

            if (v44)
            {

              contextCopy = v40;
LABEL_31:
              v40 = contextCopy;
              publicIntentAction = [contextCopy publicIntentAction];
              integerValue = [publicIntentAction integerValue];

              v47 = sub_100004778();
              v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
              if (integerValue == 20001)
              {
                accountCopy = log;
                if (v48)
                {
                  publicIntentAction2 = [v40 publicIntentAction];
                  *buf = 138412546;
                  v124 = publicIntentAction2;
                  v125 = 2048;
                  *v126 = 20001;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[WARN] Received LetMeInDelegation with Intent of {publicIntentAction: %@, messageIntent: %llu}", buf, 0x16u);
                }

                [(CSDConversationManager *)self handleReceivedLMIDelegateMessage:v29 fromHandle:v36];
              }

              else
              {
                accountCopy = log;
                if (v48)
                {
                  publicIntentAction3 = [v40 publicIntentAction];
                  *buf = 138412290;
                  v124 = publicIntentAction3;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping let me in delegation request or response because it has the wrong intent {publicIntentAction: %@}", buf, 0xCu);
                }
              }

              _serviceCopy = v110;
              goto LABEL_76;
            }

            v89 = sub_100004778();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping let me in delegation request because it is from server storage, older than 30m, and not for an ongoing conversation.", buf, 2u);
            }

LABEL_54:
            accountCopy = log;
            _serviceCopy = v110;
LABEL_76:
            contextCopy = v40;
            goto LABEL_124;
          }

          if (type2 == 16)
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
          log = accountCopy;
          featureFlags = [(CSDConversationManager *)self featureFlags];
          sharePlayInCallsEnabled = [featureFlags sharePlayInCallsEnabled];

          if (sharePlayInCallsEnabled && [(CSDMessagingConversationMessage *)v29 type]== 37)
          {
            v40 = contextCopy;
            sharePlayAvailable = [(CSDMessagingConversationMessage *)v29 sharePlayAvailable];
            if (sharePlayAvailable)
            {
              serverReceivedTime2 = [v40 serverReceivedTime];
              [serverReceivedTime2 timeIntervalSince1970];
              v57 = (v56 * 1000.0);

              sharePlayAvailabilityManager = [(CSDConversationManager *)self sharePlayAvailabilityManager];
              [sharePlayAvailabilityManager handleWithMessage:sharePlayAvailable fromHandle:v36 sentAtEpochMillis:v57 completionHandler:&stru_10061D410];
            }

            goto LABEL_54;
          }

          if (![(CSDMessagingConversationMessage *)v29 hasConversationGroupUUIDString])
          {
            v50 = sub_100004778();
            accountCopy = log;
            _serviceCopy = v110;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v51 = "[WARN] service:account:incomingData:fromID:context: Empty CSDMessagingConversationMessage. Dropping message.";
              goto LABEL_61;
            }

            goto LABEL_62;
          }

          conversationGroupUUID2 = [(CSDMessagingConversationMessage *)v29 conversationGroupUUID];
          accountCopy = log;
          _serviceCopy = v110;
          if (!conversationGroupUUID2)
          {
            v61 = sub_100004778();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[WARN] service:account:incomingData:fromID:context: Could not create group UUID from string. Dropping message.", buf, 2u);
            }

            goto LABEL_123;
          }

          v105 = conversationGroupUUID2;
          v60 = [(CSDConversationManager *)self conversationWithGroupUUID:conversationGroupUUID2];
          if ([(CSDConversationManager *)self shouldIgnoreMessageForConversation:v60])
          {
            v61 = v60;
            conversationGroupUUID2 = v105;
LABEL_123:

            goto LABEL_124;
          }

          v104 = v60;
          if (!v60)
          {
            v67 = sub_100004778();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = [NSNumber numberWithUnsignedInteger:count];
              *buf = 138412546;
              v124 = v105;
              v125 = 2112;
              *v126 = v68;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[WARN] No conversation found for groupUUID %@, attempt: %@", buf, 0x16u);

              _serviceCopy = v110;
            }

            pendingConversationMessageHandler = [(CSDConversationManager *)self pendingConversationMessageHandler];
            originalGUID = [contextCopy originalGUID];
            v118 = _serviceCopy;
            v119 = log;
            v120 = dataCopy;
            v121 = dCopy;
            v122 = contextCopy;
            [pendingConversationMessageHandler enqueueMessageRetryAttemptForMessage:v29 messageID:originalGUID attemptCount:? processingBlock:?];

            conversationGroupUUID2 = v105;
            v69 = v118;
            goto LABEL_121;
          }

          if (-[NSObject isFromStorage](v60, "isFromStorage") && ([contextCopy fromServerStorage] & 1) == 0)
          {
            v70 = sub_100004778();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              uUID = [v104 UUID];
              *buf = 138412290;
              v124 = uUID;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Updating fromStorage on conversation with UUID: %@ since there are still active remote participants.", buf, 0xCu);
            }

            [v104 setFromStorage:0];
          }

          else
          {
            v62 = sub_100004778();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              uUID2 = [v104 UUID];
              isFromStorage = [v104 isFromStorage];
              fromServerStorage = [contextCopy fromServerStorage];
              *buf = 138412802;
              v124 = uUID2;
              v125 = 1024;
              *v126 = isFromStorage;
              accountCopy = log;
              *&v126[4] = 1024;
              *&v126[6] = fromServerStorage;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Not updating fromStorage on conversation with UUID: %@ since conversation.isFromStorage: %d, and context.fromServerStorage: %d", buf, 0x18u);
            }
          }

          conversationGroupUUID2 = v105;
          featureFlags2 = [(CSDConversationManager *)self featureFlags];
          if ([featureFlags2 conversationHandoffEnabled])
          {
            type3 = [(CSDMessagingConversationMessage *)v29 type];
            v74 = featureFlags2;
            v75 = type3;

            if (v75 == 32)
            {
              [(CSDConversationManager *)self handleReceivedUpdateJoinedMetadataMessage:v29 fromHandle:v36];
              _serviceCopy = v110;
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

          remoteMembers = [v104 remoteMembers];
          v103 = [remoteMembers mutableCopy];

          localMember = [v104 localMember];
          [v103 addObject:localMember];

          lightweightMembers = [v104 lightweightMembers];
          v80 = [lightweightMembers copy];

          v81 = [(CSDConversationManager *)self memberExistsForParticipantDestination:dCopy members:v103];
          v100 = v80;
          v82 = [(CSDConversationManager *)self memberExistsForParticipantDestination:dCopy members:v80];
          v98 = v82;
          v99 = v81;
          if (v81 && v82)
          {
            sub_100004778();
            _serviceCopy = v110;
            v101 = conversationGroupUUID2 = v105;
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
            _serviceCopy = v110;
            conversationGroupUUID2 = v105;
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
                originalGUID2 = [contextCopy originalGUID];
                v113 = v110;
                v114 = accountCopy;
                v115 = dataCopy;
                v116 = dCopy;
                v117 = contextCopy;
                [NSObject enqueueMessageRetryAttemptForMessage:"enqueueMessageRetryAttemptForMessage:messageID:attemptCount:processingBlock:" messageID:v29 attemptCount:originalGUID2 processingBlock:?];

                goto LABEL_120;
              }

              if (count)
              {
                v84 = +[CSDReportingController sharedInstance];
                [v84 messageRetrySucceededForConversationGroupUUID:v105];

                if ([(CSDMessagingConversationMessage *)v29 type]== 4)
                {
                  v85 = +[CSDReportingController sharedInstance];
                  [v85 avcBlobRequestMessageRetrySucceededForConversationGroupUUID:v105];
                }
              }

              _serviceCopy = v110;
              if ([(CSDConversationManager *)self shouldAcceptMessageFromHandle:v36 messageContext:contextCopy message:v29 existingConversation:v104])
              {
                accountCopy = log;
                if (-[NSObject isFromStorage](v104, "isFromStorage") && [contextCopy fromServerStorage] && -[CSDMessagingConversationMessage type](v29, "type") == 1)
                {
                  v86 = sub_100004778();
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                  {
                    uUID3 = [v104 UUID];
                    *buf = 138412802;
                    v124 = v29;
                    v125 = 2112;
                    *v126 = contextCopy;
                    *&v126[8] = 2112;
                    v127 = uUID3;
                    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "[WARN] Received Invitation conversation message from server storage for conversation where that was also retrieved from server storage. Not notifying delegates of this Invitation message. {message: %@, context: %@, conversationUUID: %@}", buf, 0x20u);
                  }

                  accountCopy = log;
                  _serviceCopy = v110;
LABEL_108:
                  conversationGroupUUID2 = v105;
                }

                else
                {
                  v90 = contextCopy;
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

                  handle = [v101 handle];
                  v95 = v91;
                  v96 = handle;
                  [(CSDConversationManager *)self notifyDelegatesOfMessage:v29 fromHandle:handle forConversation:v104 withUpdate:0 shouldRing:v95];

                  _serviceCopy = v110;
                  contextCopy = v90;
                  conversationGroupUUID2 = v105;
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
                      _serviceCopy = v110;
                      contextCopy = v105;
                      goto LABEL_108;
                  }
                }

                goto LABEL_120;
              }

              v88 = sub_100004778();
              accountCopy = log;
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

        if (type2 == 24)
        {
          [(CSDConversationManager *)self handleReceivedLinkInvalidatedMessage:v29 fromHandle:v36];
          goto LABEL_124;
        }

        if (type2 != 26)
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

- (void)service:(id)service account:(id)account receivedGroupSessionParticipantUpdate:(id)update context:(id)context
{
  contextCopy = context;
  updateCopy = update;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_10022ACCC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100478804();
  }

  messageProxy = [(CSDConversationManager *)self messageProxy];
  [messageProxy proxyGroupUpdate:updateCopy forConversationManager:self];

  [(CSDConversationManager *)self sanitizeAndProcessParticipantUpdate:updateCopy context:contextCopy];
}

- (void)service:(id)service account:(id)account receivedGroupSessionParticipantDataUpdate:(id)update
{
  updateCopy = update;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_10022ACCC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100478804();
  }

  messageProxy = [(CSDConversationManager *)self messageProxy];
  [messageProxy proxyGroupUpdate:updateCopy forConversationManager:self];

  [(CSDConversationManager *)self sanitizeAndProcessParticipantUpdate:updateCopy context:0];
}

- (void)sanitizeAndProcessParticipantUpdate:(id)update context:(id)context
{
  contextCopy = context;
  updateCopy = update;
  participantUpdateSanitizer = [(CSDConversationManager *)self participantUpdateSanitizer];

  if (participantUpdateSanitizer)
  {
    participantUpdateSanitizer2 = [(CSDConversationManager *)self participantUpdateSanitizer];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10019938C;
    v11[3] = &unk_10061D438;
    v11[4] = self;
    v12 = contextCopy;
    [participantUpdateSanitizer2 sanitize:updateCopy completion:v11];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100478840();
    }

    [(CSDConversationManager *)self processGroupSessionParticipantUpdate:updateCopy context:contextCopy];
  }
}

- (BOOL)_isConversationDisallowedByGreenTeaForConversation:(id)conversation withUpdateContext:(id)context conversationProvider:(id)provider
{
  conversationCopy = conversation;
  contextCopy = context;
  providerCopy = provider;
  featureFlags = [(CSDConversationManager *)self featureFlags];
  if (TUGreenTeaLagunaEnabled() && ![conversationCopy avMode])
  {
    presentationMode = [conversationCopy presentationMode];

    if (presentationMode == 2)
    {
      identityProvidingTUConversationMembers = [contextCopy identityProvidingTUConversationMembers];
      v20 = [identityProvidingTUConversationMembers count];
      message = [contextCopy message];
      v15 = [message addedMembersCount] + v20;

      goto LABEL_11;
    }
  }

  else
  {
  }

  tuConversationMembers = [contextCopy tuConversationMembers];
  v13 = [tuConversationMembers count];
  message2 = [contextCopy message];
  v15 = [message2 addedMembersCount] + v13;

  if (([contextCopy hasVideo] & 1) == 0)
  {
LABEL_11:
    isDefaultProvider = v15 > 2;
    goto LABEL_12;
  }

  video = [contextCopy video];
  isDefaultProvider = v15 > 2;
  if (v15 <= 2 && (video & 1) == 0)
  {
    if (providerCopy)
    {
      isDefaultProvider = [providerCopy isDefaultProvider];
    }

    else
    {
      isDefaultProvider = 1;
    }
  }

LABEL_12:

  return isDefaultProvider;
}

- (void)processGroupSessionParticipantUpdate:(id)update context:(id)context
{
  updateCopy = update;
  contextCopy = context;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!updateCopy)
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

  participantDestinationID = [updateCopy participantDestinationID];

  if (!participantDestinationID)
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

  groupUUID = [updateCopy groupUUID];
  v11 = [(CSDConversationManager *)self conversationWithGroupUUID:groupUUID];

  if (![(CSDConversationManager *)self shouldIgnoreMessageForConversation:v11])
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      participantIDs = [updateCopy participantIDs];
      v14 = TULoggableStringForObject();
      members = [updateCopy members];
      *buf = 138412802;
      v51 = updateCopy;
      v52 = 2112;
      v53 = v14;
      v54 = 2112;
      v55 = members;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Group session participant update received: %@, participantIDs: %@, members: %@", buf, 0x20u);
    }

    v16 = sub_10022ACCC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      participantDestinationID2 = [updateCopy participantDestinationID];
      v18 = IDSCopyAddressDestinationForDestination();
      v19 = TULoggableStringForHandle();
      participantUpdateType = [updateCopy participantUpdateType];
      [updateCopy participantIDs];
      v21 = v48 = contextCopy;
      allKeys = [v21 allKeys];
      *buf = 138412802;
      v51 = v19;
      v52 = 2048;
      v53 = participantUpdateType;
      v54 = 2112;
      v55 = allKeys;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Participant update from %@, type: %lu, participants: %@", buf, 0x20u);

      contextCopy = v48;
    }

    participantUpdateType2 = [updateCopy participantUpdateType];
    participantDestinationID3 = [updateCopy participantDestinationID];
    v25 = [(CSDConversationManager *)self memberExistsForParticipantDestination:participantDestinationID3 groupSessionParticipantUpdate:updateCopy];
    handle = [v25 handle];

    if (handle)
    {
      deviceSupport = [(CSDConversationManager *)self deviceSupport];
      isGreenTea = [deviceSupport isGreenTea];

      if (isGreenTea)
      {
        v49 = contextCopy;
        v29 = [CSDMessagingConversationParticipantDidJoinContext alloc];
        clientContextData = [updateCopy clientContextData];
        v31 = [(CSDMessagingConversationParticipantDidJoinContext *)v29 initWithData:clientContextData];

        v32 = +[CSDConversationProviderManager sharedInstance];
        providerIdentifier = [(CSDMessagingConversationParticipantDidJoinContext *)v31 providerIdentifier];
        v34 = [v32 tuConversationProviderForIdentifier:providerIdentifier];

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

        contextCopy = v49;
      }

      if (participantUpdateType2 > 1)
      {
        if (participantUpdateType2 != 2)
        {
          if (participantUpdateType2 == 3)
          {
            [(CSDConversationManager *)self processUpdateMembersUpdate:updateCopy fromHandle:handle];
          }

          else if (participantUpdateType2 == 4)
          {
            [(CSDConversationManager *)self processParticipantDataUpdate:updateCopy fromHandle:handle];
          }

          goto LABEL_47;
        }

        participantIdentifier = [updateCopy participantIdentifier];
        groupUUID2 = [updateCopy groupUUID];
        [(CSDConversationManager *)self handleParticipantWithIdentifier:participantIdentifier leftConversationWithGroupUUID:groupUUID2 fromHandle:handle withGroupSessionUpdate:updateCopy];
        goto LABEL_46;
      }

      if (participantUpdateType2)
      {
        if (participantUpdateType2 == 1)
        {
          if (contextCopy)
          {
            groupUUID2 = [contextCopy senderCorrelationIdentifier];
          }

          else
          {
            groupUUID2 = 0;
          }

          originalGUID = [contextCopy originalGUID];
          if (originalGUID && (-[CSDConversationManager incomingPendingMessageGUIDs](self, "incomingPendingMessageGUIDs"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 containsObject:originalGUID], v43, v44))
          {
            incomingPendingMessageGUIDs = [(CSDConversationManager *)self incomingPendingMessageGUIDs];
            [incomingPendingMessageGUIDs removeObject:originalGUID];

            v46 = sub_100004778();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v51 = originalGUID;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "fromPendingMessage, originalGUID: %@", buf, 0xCu);
            }

            v47 = 1;
          }

          else
          {
            v47 = 0;
          }

          [(CSDConversationManager *)self processJoinUpdate:updateCopy fromHandle:handle senderCorrelationIdentifier:groupUUID2 isFromPendingMessage:v47];

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

- (void)processJoinUpdate:(id)update fromHandle:(id)handle senderCorrelationIdentifier:(id)identifier isFromPendingMessage:(BOOL)message
{
  messageCopy = message;
  updateCopy = update;
  handleCopy = handle;
  identifierCopy = identifier;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = [CSDMessagingConversationParticipantDidJoinContext alloc];
  clientContextData = [updateCopy clientContextData];
  v16 = [(CSDMessagingConversationParticipantDidJoinContext *)v14 initWithData:clientContextData];

  data = [(CSDMessagingConversationParticipantDidJoinContext *)v16 data];
  v18 = [data length];

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
    participantIdentifier = [updateCopy participantIdentifier];
    participantData = [updateCopy participantData];
    v20 = [(CSDConversationParticipant *)v21 initWithIdentifier:participantIdentifier handle:handleCopy avcData:participantData senderCorrelationIdentifier:identifierCopy];

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
    participantDestinationID = [updateCopy participantDestinationID];
    [v20 setActiveIDSDestination:participantDestinationID];

    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasVideoEnabled])
    {
      videoEnabled = [(CSDMessagingConversationParticipantDidJoinContext *)v16 videoEnabled];
    }

    else
    {
      videoEnabled = 1;
    }

    [v20 setVideoEnabled:videoEnabled];
    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasParticipantAssociation])
    {
      participantAssociation = [(CSDMessagingConversationParticipantDidJoinContext *)v16 participantAssociation];
      tuConversationParticipantAssociation = [participantAssociation tuConversationParticipantAssociation];
      [v20 setAssociation:tuConversationParticipantAssociation];
    }

    else
    {
      [v20 setAssociation:0];
    }

    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasParticipantCluster])
    {
      participantCluster = [(CSDMessagingConversationParticipantDidJoinContext *)v16 participantCluster];
      tuConversationParticipantCluster = [participantCluster tuConversationParticipantCluster];
      [v20 setCluster:tuConversationParticipantCluster];
    }

    else
    {
      [v20 setCluster:0];
    }

    v48 = identifierCopy;
    v47 = messageCopy;
    if ([(CSDMessagingConversationParticipantDidJoinContext *)v16 hasIsNearbySharePlay])
    {
      isNearbySharePlay = [(CSDMessagingConversationParticipantDidJoinContext *)v16 isNearbySharePlay];
    }

    else
    {
      isNearbySharePlay = 0;
    }

    [v20 setIsNearbySharePlay:isNearbySharePlay];
    v32 = +[CSDConversationProviderManager sharedInstance];
    providerIdentifier = [(CSDMessagingConversationParticipantDidJoinContext *)v16 providerIdentifier];
    v34 = [v32 tuConversationProviderForIdentifier:providerIdentifier];

    if ([v20 isVideoEnabled])
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    [v20 setAudioVideoMode:v35];
    message = [(CSDMessagingConversationParticipantDidJoinContext *)v16 message];
    hasAvMode = [message hasAvMode];

    if (hasAvMode)
    {
      message2 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 message];
      -[NSObject setAudioVideoMode:](v20, "setAudioVideoMode:", [message2 avMode]);
    }

    message3 = [(CSDMessagingConversationParticipantDidJoinContext *)v16 message];
    -[NSObject setPresentationMode:](v20, "setPresentationMode:", [message3 resolvedPresentationMode]);

    [v20 setSpatialPersonaEnabled:[(CSDMessagingConversationParticipantDidJoinContext *)v16 isSpatialPersonaEnabled]];
    featureFlags = [(CSDConversationManager *)self featureFlags];
    groupFacetimeAsAServiceEnabled = [featureFlags groupFacetimeAsAServiceEnabled];

    if (groupFacetimeAsAServiceEnabled && v34)
    {
      v42 = +[CSDConversationProviderManager sharedInstance];
      service = [v42 serviceForProvider:v34];
    }

    else
    {
      service = [(CSDConversationManager *)self service];
    }

    allAliases = [service allAliases];
    value = [handleCopy value];
    -[NSObject setLocalAccountHandle:](v20, "setLocalAccountHandle:", [allAliases containsObject:value]);

    v46 = [NSSet setWithObject:v20];
    [(CSDConversationManager *)self handleParticipants:v46 joinedConversationWithUpdate:updateCopy joinContext:v16 fromHandle:handleCopy isFromPendingMessage:v47];

    identifierCopy = v48;
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
    pushToken = +[NSData data];
  }

  else
  {
    v3 = +[IDSPushHandler sharedInstance];
    pushToken = [v3 pushToken];
  }

  return pushToken;
}

- (void)processUpdateMembersUpdate:(id)update fromHandle:(id)handle
{
  updateCopy = update;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clientContextData = [updateCopy clientContextData];

  if (clientContextData)
  {
    v10 = [CSDMessagingConversationParticipantDidJoinContext alloc];
    clientContextData2 = [updateCopy clientContextData];
    v12 = [(CSDMessagingConversationParticipantDidJoinContext *)v10 initWithData:clientContextData2];

    data = [v12 data];
    v14 = [data length];

    v15 = sub_100004778();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received participant join context", buf, 2u);
      }

      message = [v12 message];
      activeParticipants = [message activeParticipants];
      v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activeParticipants count]);

      message2 = [v12 message];
      activeParticipants2 = [message2 activeParticipants];
      message3 = [v12 message];
      activeLightweightParticipants = [message3 activeLightweightParticipants];
      v23 = [activeParticipants2 arrayByAddingObjectsFromArray:activeLightweightParticipants];

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

            csdConversationParticipant = [*(*(&v30 + 1) + 8 * v28) csdConversationParticipant];
            [v16 addObject:csdConversationParticipant];

            v28 = v28 + 1;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v26);
      }

      [(CSDConversationManager *)self handleParticipants:v16 joinedConversationWithUpdate:updateCopy joinContext:v12 fromHandle:handleCopy isFromPendingMessage:0];
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

- (void)processParticipantDataUpdate:(id)update fromHandle:(id)handle
{
  updateCopy = update;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  groupUUID = [updateCopy groupUUID];

  if (!groupUUID)
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

  participantDestinationID = [updateCopy participantDestinationID];
  v11 = [participantDestinationID length];

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

  if ([updateCopy participantIdentifier])
  {
    groupUUID2 = [updateCopy groupUUID];
    v13 = [(CSDConversationManager *)self conversationWithGroupUUID:groupUUID2];

    if (!v13)
    {
      csdConversationParticipant = sub_100004778();
      if (os_log_type_enabled(csdConversationParticipant, OS_LOG_TYPE_DEFAULT))
      {
        groupUUID3 = [updateCopy groupUUID];
        mutableConversationsByUUID = [(CSDConversationManager *)self mutableConversationsByUUID];
        allKeys = [mutableConversationsByUUID allKeys];
        *buf = 138412546;
        participantIdentifier2 = groupUUID3;
        v54 = 2112;
        v55 = allKeys;
        _os_log_impl(&_mh_execute_header, csdConversationParticipant, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with groupUUID %@. All conversation UUIDs: %@", buf, 0x16u);
      }

      goto LABEL_40;
    }

    clientContextData = [updateCopy clientContextData];
    v15 = [clientContextData length];

    v46 = handleCopy;
    if (v15)
    {
      clientContextData2 = [updateCopy clientContextData];
      participantData = [updateCopy participantData];
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        participantIdentifier2 = clientContextData2;
        v54 = 2112;
        v55 = participantData;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "processParticipantDataUpdate: contextData: %@, participantData: %@", buf, 0x16u);
      }

      v19 = [[CSDMessagingConversationParticipant alloc] initWithData:clientContextData2];
      [(CSDMessagingConversationParticipant *)v19 setAvcData:participantData];
      csdConversationParticipant = [(CSDMessagingConversationParticipant *)v19 csdConversationParticipant];
    }

    else
    {
      v27 = [CSDConversationParticipant alloc];
      participantIdentifier = [updateCopy participantIdentifier];
      participantData2 = [updateCopy participantData];
      csdConversationParticipant = [(CSDConversationParticipant *)v27 initWithIdentifier:participantIdentifier handle:handleCopy avcData:participantData2];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    activeRemoteParticipants = [v13 activeRemoteParticipants];
    v31 = [activeRemoteParticipants countByEnumeratingWithState:&v47 objects:v51 count:16];
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
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v35 = *(*(&v47 + 1) + 8 * i);
          identifier = [v35 identifier];
          if (identifier == [updateCopy participantIdentifier])
          {
            capabilities = [v35 capabilities];
            [csdConversationParticipant setCapabilities:capabilities];

            -[NSObject setPresentationMode:](csdConversationParticipant, "setPresentationMode:", [v35 presentationMode]);
          }
        }

        v32 = [activeRemoteParticipants countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v32);
    }

    featureFlags = [(CSDConversationManager *)self featureFlags];
    if ([featureFlags groupFacetimeAsAServiceEnabled])
    {
      provider = [v13 provider];

      handleCopy = v46;
      if (provider)
      {
        v40 = +[CSDConversationProviderManager sharedInstance];
        provider2 = [v13 provider];
        service = [v40 serviceForProvider:provider2];

LABEL_34:
        [v13 updateConversationParticipantToHaveMatchingSiriDisplayName:csdConversationParticipant];
        allAliases = [service allAliases];
        value = [handleCopy value];
        -[NSObject setLocalAccountHandle:](csdConversationParticipant, "setLocalAccountHandle:", [allAliases containsObject:value]);

        if (csdConversationParticipant)
        {
          [v13 addActiveParticipant:csdConversationParticipant];
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

      handleCopy = v46;
    }

    service = [(CSDConversationManager *)self service];
    goto LABEL_34;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    participantIdentifier2 = [updateCopy participantIdentifier];
    v21 = "[WARN] processParticipantDataUpdate: Invalid participantDataUpdate.participantIdentifier %llu";
    v22 = v13;
    v23 = 12;
    goto LABEL_14;
  }

LABEL_41:
}

- (void)handleParticipants:(id)participants joinedConversationWithUpdate:(id)update joinContext:(id)context fromHandle:(id)handle isFromPendingMessage:(BOOL)message
{
  messageCopy = message;
  participantsCopy = participants;
  updateCopy = update;
  contextCopy = context;
  handleCopy = handle;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  providerIdentifier = [contextCopy providerIdentifier];
  v17 = [TUConversationProvider providerForIdentifier:providerIdentifier];

  featureFlags = [(CSDConversationManager *)self featureFlags];
  LODWORD(providerIdentifier) = [featureFlags groupFacetimeAsAServiceEnabled];

  if (providerIdentifier)
  {
    v19 = +[CSDConversationProviderManager sharedInstance];
    providerIdentifier2 = [contextCopy providerIdentifier];
    v21 = [v19 tuConversationProviderForIdentifier:providerIdentifier2];

    v17 = v21;
  }

  if (contextCopy)
  {
    message = [contextCopy message];
    groupUUID = [updateCopy groupUUID];
    v24 = groupUUID;
    if (!groupUUID)
    {
      v53 = sub_100004778();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[WARN] handleParticipants:joinedConversationWithUpdate:joinContext: Empty participantUpdate.groupUUID", buf, 2u);
      }

      goto LABEL_413;
    }

    v356 = participantsCopy;
    v369 = messageCopy;
    selfCopy = self;
    v360 = groupUUID;
    v25 = sub_10022ACCC();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1004788F8();
    }

    tuConversationLink = [message tuConversationLink];
    tuConversationMembers = [contextCopy tuConversationMembers];
    v367 = [tuConversationMembers mutableCopy];

    tuLightweightMembers = [contextCopy tuLightweightMembers];
    v365 = [tuLightweightMembers mutableCopy];

    [message addedMembers];
    v29 = v28 = message;
    v30 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v29 count]);

    v428 = 0u;
    v427 = 0u;
    v426 = 0u;
    v425 = 0u;
    v362 = v28;
    addedMembers = [v28 addedMembers];
    v32 = [addedMembers countByEnumeratingWithState:&v425 objects:v448 count:16];
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
            objc_enumerationMutation(addedMembers);
          }

          tuConversationMember = [*(*(&v425 + 1) + 8 * i) tuConversationMember];
          [(__CFString *)v30 addObject:tuConversationMember];
        }

        v33 = [addedMembers countByEnumeratingWithState:&v425 objects:v448 count:16];
      }

      while (v33);
    }

    if ([(__CFString *)v30 count])
    {
      [v367 unionSet:v30];
    }

    v368 = v17;
    v361 = contextCopy;
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

    lightweightMembers = [v362 lightweightMembers];
    v42 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [lightweightMembers count]);

    v424 = 0u;
    v423 = 0u;
    v422 = 0u;
    v421 = 0u;
    lightweightMembers2 = [v362 lightweightMembers];
    v44 = [lightweightMembers2 countByEnumeratingWithState:&v421 objects:v447 count:16];
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
            objc_enumerationMutation(lightweightMembers2);
          }

          tuConversationMember2 = [*(*(&v421 + 1) + 8 * j) tuConversationMember];
          lightweightPrimary = [tuConversationMember2 lightweightPrimary];
          v50 = lightweightPrimary;
          if (lightweightPrimary && [lightweightPrimary isEquivalentToHandle:handleCopy])
          {
            [tuConversationMember2 setValidationSource:1];
          }

          [v42 addObject:tuConversationMember2];
        }

        v45 = [lightweightMembers2 countByEnumeratingWithState:&v421 objects:v447 count:16];
      }

      while (v45);
    }

    [v365 unionSet:v42];
    contextCopy = v361;
    v366 = updateCopy;
    if ([v361 hasMessagesGroupUUIDString])
    {
      v51 = [NSUUID alloc];
      messagesGroupUUIDString = [v361 messagesGroupUUIDString];
      v355 = [v51 initWithUUIDString:messagesGroupUUIDString];
    }

    else
    {
      v355 = 0;
    }

    messagesGroupName = [v361 messagesGroupName];
    v54 = +[NSMutableSet set];
    serverBag = [(CSDConversationManager *)selfCopy serverBag];
    if ([serverBag isParticipantIDToURIIncludedInPush])
    {
    }

    else
    {
      featureFlags2 = [(CSDConversationManager *)selfCopy featureFlags];
      participantIDToURIRemovedEnabled = [featureFlags2 participantIDToURIRemovedEnabled];

      if (participantIDToURIRemovedEnabled)
      {
        goto LABEL_48;
      }
    }

    v420 = 0u;
    v419 = 0u;
    v417 = 0u;
    v418 = 0u;
    participantIDs = [v366 participantIDs];
    allValues = [participantIDs allValues];

    v60 = [allValues countByEnumeratingWithState:&v417 objects:v446 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [v54 addObjectsFromArray:*(*(&v417 + 1) + 8 * k)];
        }

        v61 = [allValues countByEnumeratingWithState:&v417 objects:v446 count:16];
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

    activeLocalHandlesForProvider = [(CSDConversationManager *)selfCopy activeLocalHandlesForProvider];
    v66 = (activeLocalHandlesForProvider)[2](activeLocalHandlesForProvider, v368);

    v373 = v66;
    v359 = [(CSDConversationManager *)selfCopy localMemberForProvider:v368 fromHandle:handleCopy members:v367 lightweightMembers:v365 activeLocalHandles:v66];
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

          handle = [*(*(&v413 + 1) + 8 * m) handle];
          v73 = [v373 containsObject:handle];

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

          handle2 = [*(*(&v409 + 1) + 8 * n) handle];
          v80 = [(CSDConversationManager *)selfCopy isValidLocalHandle:handle2 activeLocalHandles:v373 provider:v368];

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
      contextCopy = v361;
    }

    else
    {
      v81 = 0;
    }

LABEL_72:

    v82 = sub_10022ACCC();
    v83 = selfCopy;
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

    LODWORD(v363) = [(CSDConversationManager *)selfCopy isValidLocalHandle:handleCopy activeLocalHandles:v373 provider:v368];
    v84 = sub_100004778();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v437 = v359;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Received local member: %@", buf, 0xCu);
    }

    [contextCopy otherInvitedHandles];
    v86 = v85 = contextCopy;
    v87 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v86 count]);

    v407 = 0u;
    v408 = 0u;
    v405 = 0u;
    v406 = 0u;
    otherInvitedTUHandles = [v85 otherInvitedTUHandles];
    v89 = [otherInvitedTUHandles countByEnumeratingWithState:&v405 objects:v435 count:16];
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
            objc_enumerationMutation(otherInvitedTUHandles);
          }

          [v87 addObject:*(*(&v405 + 1) + 8 * ii)];
        }

        v90 = [otherInvitedTUHandles countByEnumeratingWithState:&v405 objects:v435 count:16];
      }

      while (v90);
    }

    v64 = v367;
    v93 = [v367 mutableCopy];
    featureFlags3 = [(CSDConversationManager *)selfCopy featureFlags];
    v358 = v93;
    if ([featureFlags3 oneToOneFaceTimeMyselfEnabled] && objc_msgSend(v93, "count") == 1)
    {
      anyObject = [v93 anyObject];

      if (v359 == anyObject)
      {
        v96 = sub_100004778();
        contextCopy = v361;
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

    contextCopy = v361;
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
      message = v362;
LABEL_412:

      updateCopy = v366;
      v17 = v368;
      v24 = v360;
      participantsCopy = v356;
      v53 = tuConversationLink;
LABEL_413:

      goto LABEL_414;
    }

    v350 = v81;
    if ([contextCopy hasVideo])
    {
      video = [contextCopy video];
    }

    else
    {
      video = 1;
    }

    message = v362;
    v103 = [(CSDConversationManager *)selfCopy conversationWithGroupUUID:v360 orMemberIdentifiers:v54 orRemoteMembers:v358 andLink:tuConversationLink andVideo:video];
    collaborationIdentifier = [contextCopy collaborationIdentifier];

    if (collaborationIdentifier)
    {
      collaborationIdentifier2 = [contextCopy collaborationIdentifier];
      [v103 addHighlightIdentifier:collaborationIdentifier2];
    }

    v353 = v103;
    if (v103 && ([v103 containsMemberWithHandle:handleCopy] & 1) == 0)
    {
      v118 = sub_100004778();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v437 = handleCopy;
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
      if ([(CSDConversationManager *)v83 shouldAcceptMembershipUpdateFromHandle:handleCopy joinContext:contextCopy participantUpdate:v366 existingConversation:v120])
      {
        v346 = v121;
        if ([contextCopy hasVideo])
        {
          video2 = [contextCopy video];
          v157 = video2 ^ 1;
          if (video2)
          {
            avMode = 2;
          }

          else
          {
            avMode = 1;
          }
        }

        else
        {
          v157 = 0;
          avMode = 2;
        }

        if ([message hasAvMode])
        {
          avMode = [message avMode];
        }

        v343 = avMode;
        v159 = +[IDSCurrentServerTime sharedInstance];
        currentServerTimeDate = [v159 currentServerTimeDate];

        obja = currentServerTimeDate;
        v161 = [NSDate dateWithTimeInterval:currentServerTimeDate sinceDate:-30.0];
        serverDate = [v366 serverDate];
        v344 = [v161 compare:serverDate];

        v163 = sub_100004778();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
        {
          serverDate2 = [v366 serverDate];
          v165 = serverDate2;
          v166 = @"NO";
          *buf = 138412802;
          *v437 = obja;
          *&v437[8] = 2112;
          if (v344 == 1)
          {
            v166 = @"YES";
          }

          *v438 = serverDate2;
          *&v438[8] = 2112;
          v439 = v166;
          _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "currentServerTime: %@, participantUpdate.serverDate: %@, isOldMessage: %@", buf, 0x20u);
        }

        if (!v346)
        {
          groupUUID2 = [v353 groupUUID];
          v177 = [groupUUID2 isEqual:v360];

          contextCopy = v361;
          if (v177)
          {
            unknownProvider = v353;
            if ([(__CFString *)v375 count])
            {
              [unknownProvider addRemoteMembers:v375 otherInvitedHandles:v87 triggeredLocally:0];
            }

            v179 = &_s10Foundation3URLVMa_ptr_0;
            if ([v42 count])
            {
              [unknownProvider addRemoteMembers:v42 otherInvitedHandles:v87 triggeredLocally:0];
            }

LABEL_274:
            provider = [unknownProvider provider];
            v378 = unknownProvider;
            if (provider)
            {
              provider2 = [unknownProvider provider];
              v230 = v179[190];
              v231 = provider2;
              unknownProvider = [v230 unknownProvider];
              if (([(__CFString *)v231 isEqual:unknownProvider]& 1) == 0)
              {

                goto LABEL_284;
              }

              v363 = v231;
            }

            providerIdentifier3 = [contextCopy providerIdentifier];
            v233 = [providerIdentifier3 length];

            if (provider)
            {
            }

            contextCopy = v361;
            if (!v233)
            {
LABEL_285:
              if (v378)
              {
                featureFlags4 = [(CSDConversationManager *)v83 featureFlags];
                if ([featureFlags4 nearbyFaceTimeEnabled])
                {
                  hasIsNearbySession = [message hasIsNearbySession];

                  v240 = v358;
                  v241 = v350;
                  if (hasIsNearbySession)
                  {
                    isNearbySession = [message isNearbySession];
                    v243 = [NSSet setWithObject:IDSRegistrationPropertySupportsNearbyFaceTime];
                    if (isNearbySession)
                    {
                      [v378 addRequiredCapabilities:v243 requiredLackOfCapabilities:0];
                    }

                    else
                    {
                      [v378 removeRequiredCapabilities:v243 requiredLackOfCapabilities:0];
                    }

                    if (v346)
                    {
                      if ([message isNearbySession])
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

                  fromServer = [v366 fromServer];
                  v247 = @"YES";
                  if (!fromServer)
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
                    uUID = [v378 UUID];
                    *buf = 138412290;
                    *v437 = uUID;
                    _os_log_impl(&_mh_execute_header, v248, OS_LOG_TYPE_DEFAULT, "Activating cached conversation with UUID: %@ since participants are joining.", buf, 0xCu);
                  }

                  [v378 setFromStorage:0];
                  messagesGroupUUID = [v378 messagesGroupUUID];
                  v251 = [messagesGroupUUID isEqual:v355];

                  if (v251)
                  {
                    v252 = sub_100004778();
                    if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
                    {
                      uUID2 = [v378 UUID];
                      *buf = 138412290;
                      *v437 = uUID2;
                      _os_log_impl(&_mh_execute_header, v252, OS_LOG_TYPE_DEFAULT, "Updating remoteMembers for conversation with UUID: %@", buf, 0xCu);
                    }

                    remoteMembers = [v378 remoteMembers];
                    v255 = [remoteMembers mutableCopy];

                    [v255 unionSet:v240];
                    localMember = [v378 localMember];
                    [v255 removeObject:localMember];

                    v257 = +[NSSet set];
                    [v378 addRemoteMembers:v255 otherInvitedHandles:v257 triggeredLocally:0];
                  }
                }

                serverBag2 = [(CSDConversationManager *)v83 serverBag];
                if ([serverBag2 isParticipantIDToURIIncludedInPush])
                {

                  v259 = v378;
                }

                else
                {
                  featureFlags5 = [(CSDConversationManager *)v83 featureFlags];
                  participantIDToURIRemovedEnabled2 = [featureFlags5 participantIDToURIRemovedEnabled];

                  v259 = v378;
                  if (participantIDToURIRemovedEnabled2)
                  {
                    goto LABEL_311;
                  }
                }

                [v259 setMemberIdentifiers:v54];
LABEL_311:
                featureFlags6 = [(CSDConversationManager *)v83 featureFlags];
                if ([featureFlags6 shouldRingForIncomingCallEnabled])
                {
                  serverBag3 = [(CSDConversationManager *)v83 serverBag];
                  shouldRingForIncomingCallEnabled = [serverBag3 shouldRingForIncomingCallEnabled];

                  if (shouldRingForIncomingCallEnabled)
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
                serverDate3 = [v366 serverDate];
                v267 = [v265 compare:serverDate3];

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
                  featureFlags7 = [(CSDConversationManager *)v83 featureFlags];
                  if ([featureFlags7 shouldRingForIncomingCallEnabled])
                  {
                    serverBag4 = [(CSDConversationManager *)v83 serverBag];
                    shouldRingForIncomingCallEnabled2 = [serverBag4 shouldRingForIncomingCallEnabled];

                    if (shouldRingForIncomingCallEnabled2)
                    {
                      v277 = [(CSDConversationManager *)v83 _shouldRingForIncomingCallWithHandle:handleCopy conversation:v259 isFromPendingMessage:v369 isOldMessage:v344 == 1 message:message];
                      goto LABEL_334;
                    }
                  }

                  else
                  {
                  }

                  provider3 = [v259 provider];
                  if ([(CSDConversationManager *)v83 isValidLocalHandle:handleCopy forProvider:provider3])
                  {
                    v277 = 0;
                  }

                  else
                  {
                    invitationResolver = [(CSDConversationManager *)v83 invitationResolver];
                    tuConversation = [v259 tuConversation];
                    localMember2 = [v259 localMember];
                    handle3 = [localMember2 handle];
                    if ([invitationResolver shouldShowInvitationRingingUIForConversation:tuConversation handle:handle3])
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
                  v282 = [message isLetMeInApproved]^ 1;
                  if ([v366 participantUpdateType] != 1 || (objc_msgSend(v259, "isLocallyCreated") & 1) != 0 || objc_msgSend(v259, "state"))
                  {
                    v371 = 0;
                  }

                  else
                  {
                    v371 = v346 & ([v259 hasJoined] ^ 1);
                  }

                  v283 = v282 & v277;
                  v284 = -[CSDConversationManager _shouldNotifyDelegatesOfMessage:localHandleAdded:isFromStorage:](v83, "_shouldNotifyDelegatesOfMessage:localHandleAdded:isFromStorage:", message, v241, [v259 isFromStorage]);
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
                    type = [v362 type];
                    isFromStorage = [v378 isFromStorage];
                    *buf = 138413314;
                    if (isFromStorage)
                    {
                      v291 = @"YES";
                    }

                    else
                    {
                      v291 = @"NO";
                    }

                    *v437 = v286;
                    v83 = selfCopy;
                    v259 = v378;
                    *&v437[8] = 2112;
                    *v438 = v347;
                    *&v438[8] = 2112;
                    v439 = v351;
                    v440 = 1024;
                    *v441 = type;
                    v283 = v364;
                    *&v441[4] = 2112;
                    *&v441[6] = v291;
                    _os_log_impl(&_mh_execute_header, v285, OS_LOG_TYPE_DEFAULT, "shouldNotifyDelegatesOfMessage: %@, isJoinUpdateForNewConverstion: %@, shouldNotifyDelegatesOfNewConversation: %@, message.type: %d, isFromStorage: %@", buf, 0x30u);
                  }

                  if (v284)
                  {
                    [(CSDConversationManager *)v83 notifyDelegatesOfMessage:v362 fromHandle:handleCopy forConversation:v259 withUpdate:v366 shouldRing:v277];
                    v292 = v356;
                  }

                  else
                  {
                    v292 = v356;
                    if ((v371 & v283) == 1)
                    {
                      [(CSDConversationManager *)v83 notifyDelegatesOfNewConversation:v259 fromHandle:handleCopy];
                    }
                  }

                  featureFlags8 = [(CSDConversationManager *)v83 featureFlags];
                  if ([featureFlags8 sharePlayInCallsEnabled])
                  {
                  }

                  else
                  {
                    featureFlags9 = [(CSDConversationManager *)v83 featureFlags];
                    audioCallTranslationEnabled = [featureFlags9 audioCallTranslationEnabled];

                    if (!audioCallTranslationEnabled)
                    {
                      goto LABEL_368;
                    }
                  }

                  remoteMembers2 = [v259 remoteMembers];
                  if ([remoteMembers2 count] == 1 && objc_msgSend(v361, "hasVideo") && (objc_msgSend(v361, "video") & 1) == 0 && objc_msgSend(v259, "isVideo"))
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
                        localParticipantIdentifier = [v259 localParticipantIdentifier];
                        if (localParticipantIdentifier != [v302 identifier])
                        {
                          [v259 updateConversationParticipantToHaveMatchingSiriDisplayName:v302];
                          [(CSDConversationManager *)v83 removePendingMemberMatchingActiveParticipant:v302 conversation:v259];
                          handle4 = [v302 handle];
                          v305 = [v259 containsMemberWithHandle:handle4];

                          if (v305)
                          {
                            [v259 addActiveParticipant:v302];
                          }

                          else
                          {
                            v306 = sub_100004778();
                            if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                            {
                              remoteMembers3 = [v259 remoteMembers];
                              lightweightMembers3 = [v259 lightweightMembers];
                              *buf = 138412802;
                              *v437 = v302;
                              *&v437[8] = 2112;
                              *v438 = remoteMembers3;
                              *&v438[8] = 2112;
                              v439 = lightweightMembers3;
                              _os_log_impl(&_mh_execute_header, v306, OS_LOG_TYPE_DEFAULT, "[WARN] activeParticipant: %@ is not in the validConversation: %@, lightweight members: %@", buf, 0x20u);

                              v259 = v378;
                            }
                          }

                          v83 = selfCopy;
                          [(CSDConversationManager *)selfCopy prepareAdditionOfActiveParticipant:v302 toInvitedMembersForLinkOnConversation:v259];
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
                  activitySessions = [v362 activitySessions];
                  v310 = [activitySessions countByEnumeratingWithState:&v380 objects:v429 count:16];
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
                          objc_enumerationMutation(activitySessions);
                        }

                        v314 = [(CSDConversationManager *)v83 createActivitySession:*(*(&v380 + 1) + 8 * kk) onConversation:v378 fromHandle:handleCopy];
                      }

                      v311 = [activitySessions countByEnumeratingWithState:&v380 objects:v429 count:16];
                    }

                    while (v311);
                  }

                  message = v362;
                  stagedActivitySession = [v362 stagedActivitySession];

                  if (stagedActivitySession)
                  {
                    stagedActivitySession2 = [v362 stagedActivitySession];
                    tuConversationActivitySession = [stagedActivitySession2 tuConversationActivitySession];
                    v318 = [v378 setStagedActivitySessionForActivitySession:tuConversationActivitySession];

                    if ((v318 & 1) == 0)
                    {
                      v319 = sub_100004778();
                      if (os_log_type_enabled(v319, OS_LOG_TYPE_DEFAULT))
                      {
                        stagedActivitySession3 = [v362 stagedActivitySession];
                        uUID3 = [v378 UUID];
                        *buf = 138412546;
                        *v437 = stagedActivitySession3;
                        *&v437[8] = 2112;
                        *v438 = uUID3;
                        _os_log_impl(&_mh_execute_header, v319, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't set staged activity session %@ on conversation UUID %@", buf, 0x16u);
                      }
                    }
                  }

                  highlightIdentifier = [v362 highlightIdentifier];
                  v323 = v378;
                  if (!highlightIdentifier)
                  {
                    goto LABEL_400;
                  }

                  highlightIdentifiers = [v378 highlightIdentifiers];
                  anyObject2 = [highlightIdentifiers anyObject];
                  if ([highlightIdentifier isEqualToString:anyObject2])
                  {
                    highlightIdentifiers2 = [v378 highlightIdentifiers];
                    v327 = [highlightIdentifiers2 count];

                    v323 = v378;
                    if (v327)
                    {
                      goto LABEL_400;
                    }
                  }

                  else
                  {
                  }

                  [v323 addHighlightIdentifier:highlightIdentifier];
LABEL_400:
                  remoteMembers4 = [v323 remoteMembers];
                  contextCopy = v361;
                  if ([remoteMembers4 count] == 1 && objc_msgSend(v361, "hasVideo") && (objc_msgSend(v361, "video") & 1) == 0 && objc_msgSend(v323, "isVideo"))
                  {

                    v329 = selfCopy;
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

                    v329 = selfCopy;
                    v119 = v353;
                  }

                  pendingConversationMessageHandler = [(CSDConversationManager *)v329 pendingConversationMessageHandler];
                  [pendingConversationMessageHandler retryMessagesForGroupUUID:v360];

                  v64 = v367;
                  v87 = v352;
                  goto LABEL_410;
                }

LABEL_320:
                v268 = sub_100004778();
                if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
                {
                  fromServer2 = [v366 fromServer];
                  v270 = [NSDate dateWithTimeIntervalSinceNow:-30.0];
                  message = v362;
                  serverDate4 = [v366 serverDate];
                  v272 = [v270 compare:serverDate4];
                  *buf = 67109634;
                  *v437 = fromServer2;
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

            conversationProviderManager = [(CSDConversationManager *)v83 conversationProviderManager];
            providerIdentifier4 = [v361 providerIdentifier];
            provider = [conversationProviderManager tuConversationProviderForIdentifier:providerIdentifier4];

            v236 = sub_100004778();
            if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
            {
              uUID4 = [v378 UUID];
              *buf = 138412546;
              *v437 = uUID4;
              *&v437[8] = 2112;
              *v438 = provider;
              _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "Updating provider on conversation with UUID %@ with provider %@", buf, 0x16u);
            }

            [v378 setProvider:provider];
            contextCopy = v361;
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

          unknownProvider = 0;
LABEL_273:
          v179 = &_s10Foundation3URLVMa_ptr_0;
          goto LABEL_274;
        }

        contextCopy = v361;
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

        tuConversationLink2 = [message tuConversationLink];
        reportData = [message reportData];
        tuConversationReport = [reportData tuConversationReport];

        letMeInRequestState2 = 0;
        v342 = tuConversationLink2;
        if ([(CSDConversationManager *)v83 _linksEnabled]&& tuConversationLink2)
        {
          pseudonym = [tuConversationLink2 pseudonym];
          v170 = [(CSDConversationManager *)v83 pendingConversationWithPseudonym:pseudonym];

          if (v170)
          {
            if ([v170 letMeInRequestState] != 2 || (objc_msgSend(v170, "conversationGroupUUID"), v171 = objc_claimAutoreleasedReturnValue(), v172 = objc_msgSend(v171, "isEqual:", v360), v171, !v172))
            {
              v184 = sub_100004778();
              if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
              {
                conversationGroupUUID = [v170 conversationGroupUUID];
                if ([conversationGroupUUID isEqual:v360])
                {
                  v186 = @"NO";
                }

                else
                {
                  v186 = @"YES";
                }

                letMeInRequestState = [v170 letMeInRequestState];
                *buf = 138412802;
                if (letMeInRequestState == 2)
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
                contextCopy = v361;
                message = v362;
                *&v438[8] = 2114;
                v439 = v188;
                _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "Pending conversation %@ found, but the groupUUID does not match (%{public}@) or the let me in request state is not Requested (%{public}@)", buf, 0x20u);
              }

              goto LABEL_290;
            }

            v173 = sub_100004778();
            if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
            {
              conversationGroupUUID2 = [v170 conversationGroupUUID];
              *buf = 138412290;
              *v437 = conversationGroupUUID2;
              _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "Identified let me in approval for pending conversation group UUID: %@", buf, 0xCu);
            }

            [v170 setLetMeInRequestState:3];
            letMeInRequestState2 = [v170 letMeInRequestState];
            temporaryGroupUUID = [v170 temporaryGroupUUID];

            v83 = selfCopy;
            v340 = temporaryGroupUUID;
            if (temporaryGroupUUID)
            {
LABEL_215:
              resolvedPresentationMode = [message resolvedPresentationMode];
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

              v334 = resolvedPresentationMode;
              if ([v358 count] == 1)
              {
                members = [v366 members];
                v339 = [NSSet setWithArray:members];
              }

              else
              {
                v339 = 0;
              }

              v193 = v342;
              if (v342)
              {
                pendingMembershipTracker = [(CSDConversationManager *)v83 pendingMembershipTracker];
                v338 = [pendingMembershipTracker retrievePendingMembersFor:v360];
              }

              else
              {
                pendingMembershipTracker = +[NSSet set];
                v338 = pendingMembershipTracker;
              }

              v195 = [(CSDConversationManager *)v83 pickInitiatorFromActiveParticipants:v356 forUpdate:v366];
              v196 = v195;
              if (v195)
              {
                handle5 = [v195 handle];

                if ([v361 hasScreenSharingRequest])
                {
                  featureFlags10 = [(CSDConversationManager *)v83 featureFlags];
                  usesModernScreenSharingFromMessages = [featureFlags10 usesModernScreenSharingFromMessages];

                  if (usesModernScreenSharingFromMessages)
                  {
                    screenSharingRequest = [v361 screenSharingRequest];
                    tuConversationParticipant = [v196 tuConversationParticipant];
                    isHandleEligibleForScreenSharingRequestsBlock = v83->_isHandleEligibleForScreenSharingRequestsBlock;
                    v388 = 0;
                    v336 = [screenSharingRequest incomingScreenShareRequestFromParticipant:tuConversationParticipant handleEligibilityBlock:isHandleEligibleForScreenSharingRequestsBlock error:&v388];
                    v202 = v388;

                    v83 = selfCopy;
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
                participantDestinationID = [v366 participantDestinationID];
                handle5 = TUHandleForIDSCanonicalAddress();

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
                  participantUpdateType = [v366 participantUpdateType];
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
                  *v437 = participantUpdateType;
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
              v210 = [(CSDConversationManager *)v83 createConversationWithUUID:v340 groupUUID:v360 messagesGroupUUID:v355 locallyCreated:v363 localMember:v359 initiator:handle5 remoteMembers:v358 pendingMembers:v338 otherInvitedHandles:v87 remotePushTokens:v339 lightweightMembers:v365 activity:0 link:v342 report:tuConversationReport fromStorage:v332 avMode:v343 presentationMode:v334 provider:v368 screenSharingRequest:v336 isInitiator:v333 isOldMessage:?];
              [v210 setLetMeInRequestState:letMeInRequestState2];
              [v210 setMessagesGroupName:messagesGroupName];
              serverDate5 = [v366 serverDate];
              [v210 setInvitationDate:serverDate5];

              collaborationIdentifier3 = [v361 collaborationIdentifier];

              if (collaborationIdentifier3)
              {
                collaborationIdentifier4 = [v361 collaborationIdentifier];
                v214 = [NSMutableSet setWithObjects:collaborationIdentifier4, 0];

                [v210 setHighlightIdentifiers:v214];
              }

              v377 = v210;
              message = v362;
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
                  isVideoEnabled = [v377 isVideoEnabled];
                  v217 = @"NO";
                  if (isVideoEnabled)
                  {
                    v217 = @"YES";
                  }

                  v363 = v217;
                  avMode2 = [v377 avMode];
                  *buf = 138412546;
                  *v437 = v363;
                  *&v437[8] = 2048;
                  *v438 = avMode2;
                  _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "Setting videoEnabled to %@ because the user was added to an existing call with av mode %lu", buf, 0x16u);
                }
              }

              if ([v362 invitationPreferencesCount])
              {
                tuInvitationPreferences = [v362 tuInvitationPreferences];
                [v377 setInvitationPreferences:tuInvitationPreferences];

                v220 = sub_100004778();
                if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                {
                  invitationPreferences = [v377 invitationPreferences];
                  *buf = 138412290;
                  *v437 = invitationPreferences;
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

              featureFlags11 = [(CSDConversationManager *)v83 featureFlags];
              if ([featureFlags11 uplevelFTAEnabled])
              {
                isUpgradeToVideo = [v361 isUpgradeToVideo];

                if (isUpgradeToVideo)
                {
                  [v377 setIsUpgradeToVideo:1];
                }
              }

              else
              {
              }

              activitySession = [v361 activitySession];
              if (activitySession)
              {
                v225 = [(CSDConversationManager *)v83 createActivitySession:activitySession onConversation:v377 fromHandle:handleCopy];
                if (!v225)
                {
                  v226 = sub_100004778();
                  if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
                  {
                    uUID5 = [v377 UUID];
                    *buf = 138412546;
                    *v437 = activitySession;
                    *&v437[8] = 2112;
                    *v438 = uUID5;
                    _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "[WARN] Could not create new activity session for activity session %@ and conversation UUID %@", buf, 0x16u);

                    v193 = v342;
                  }
                }

                contextCopy = v361;
              }

              unknownProvider = v377;
              goto LABEL_273;
            }
          }

          else
          {
            letMeInRequestState2 = 0;
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

    remoteMembers5 = [v103 remoteMembers];
    if ([remoteMembers5 count] == 1)
    {
      activeRemoteParticipants = [v103 activeRemoteParticipants];
      v109 = [activeRemoteParticipants count];

      if (v109 && !tuConversationLink)
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

              handle6 = [*(*(&v401 + 1) + 8 * mm) handle];
              v117 = [handle6 isEqualToHandle:handleCopy];

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
        activeRemoteParticipants2 = [v353 activeRemoteParticipants];
        v123 = [activeRemoteParticipants2 countByEnumeratingWithState:&v397 objects:v433 count:16];
        v83 = selfCopy;
        if (v123)
        {
          v124 = v123;
          v125 = *v398;
          obj = activeRemoteParticipants2;
          while (2)
          {
            for (nn = 0; nn != v124; nn = nn + 1)
            {
              if (*v398 != v125)
              {
                objc_enumerationMutation(obj);
              }

              activeIDSDestination = [*(*(&v397 + 1) + 8 * nn) activeIDSDestination];
              participantDestinationID2 = [v366 participantDestinationID];
              v129 = [activeIDSDestination isEqualToString:participantDestinationID2];

              if (v129)
              {
                message = v362;
                remoteMembers5 = obj;
                goto LABEL_136;
              }

              v83 = selfCopy;
            }

            activeRemoteParticipants2 = obj;
            v124 = [obj countByEnumeratingWithState:&v397 objects:v433 count:16];
            if (v124)
            {
              continue;
            }

            break;
          }
        }

        message = v362;
        v64 = v367;
        if ((v113 & 1) == 0)
        {
          if ([v366 isInitiator])
          {
            v130 = sub_100004778();
            if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v437 = handleCopy;
              _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "[WARN] We received a message from %@, which was in the remote members list but from a different device; treating as new conversation", buf, 0xCu);
            }

            v120 = 0;
            v121 = 1;
            contextCopy = v361;
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

    groupUUID3 = [v353 groupUUID];
    uUIDString = [groupUUID3 UUIDString];
    uUIDString2 = [v360 UUIDString];
    v134 = [uUIDString isEqualToString:uUIDString2];

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
            associationVoucher = [v140 associationVoucher];

            if (associationVoucher)
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
            associationVoucher2 = [v147 associationVoucher];

            if (associationVoucher2)
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
        association = [v359 association];
        localMember3 = [v353 localMember];
        [localMember3 association];
        v151 = v120 = v353;
        v152 = [association isEqualToAssociation:v151];

        message = v362;
        v87 = v352;
        if ((v152 & 1) == 0)
        {
          [v353 updateLocalMember:v359];
        }

        v121 = 0;
        contextCopy = v361;
        v64 = v367;
        v83 = selfCopy;
        goto LABEL_165;
      }

      v121 = 0;
      contextCopy = v361;
      message = v362;
      v64 = v367;
      v120 = v353;
      v83 = selfCopy;
    }

    else
    {
      v153 = +[CSDReportingController sharedInstance];
      tuConversation2 = [v353 tuConversation];
      [v153 transitionAttemptForConversation:tuConversation2];

      v155 = sub_100004778();
      v83 = selfCopy;
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v437 = handleCopy;
        *&v437[8] = 2112;
        *v438 = v353;
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "We received a message from %@, and we found same converastion: %@ with remote members with a different groupUUID; treating as new conversation", buf, 0x16u);
      }

      v120 = 0;
      v121 = 1;
      contextCopy = v361;
      v64 = v367;
    }

    goto LABEL_164;
  }

  message = sub_100004778();
  if (os_log_type_enabled(message, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, message, OS_LOG_TYPE_DEFAULT, "[WARN] handleParticipants:joinedConversationWithUpdate:joinContext: Empty joinContext", buf, 2u);
  }

LABEL_414:
}

- (void)handleParticipantWithIdentifier:(unint64_t)identifier leftConversationWithGroupUUID:(id)d fromHandle:(id)handle withGroupSessionUpdate:(id)update
{
  dCopy = d;
  handleCopy = handle;
  updateCopy = update;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218242;
    identifierCopy3 = identifier;
    v26 = 2112;
    v27 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Participant with identifier: %llu left conversation with groupUUID: %@", &v24, 0x16u);
  }

  if (dCopy)
  {
    clientContextData = [updateCopy clientContextData];

    if (clientContextData)
    {
      v16 = [CSDMessagingConversationParticipantDidLeaveContext alloc];
      clientContextData2 = [updateCopy clientContextData];
      v18 = [(CSDMessagingConversationParticipantDidLeaveContext *)v16 initWithData:clientContextData2];

      leaveReason = [v18 leaveReason];
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134218242;
        identifierCopy3 = identifier;
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
        identifierCopy3 = identifier;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Participant with identifier %llu left without providing a leave context", &v24, 0xCu);
      }

      leaveReason = 0;
    }

    v22 = [(CSDConversationManager *)self conversationWithGroupUUID:dCopy];
    v21 = v22;
    if (v22)
    {
      [v22 removeParticipantWithIdentifier:identifier fromHandle:handleCopy withReason:leaveReason];
    }

    else
    {
      v23 = sub_100004778();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        identifierCopy3 = dCopy;
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

- (void)removePendingMemberMatchingActiveParticipant:(id)participant conversation:(id)conversation
{
  participantCopy = participant;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingMembers = [conversationCopy pendingMembers];
  v10 = [pendingMembers count];

  if (v10)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    pendingMembers2 = [conversationCopy pendingMembers];
    v12 = [pendingMembers2 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (!v12)
    {
      v14 = pendingMembers2;
LABEL_16:

      goto LABEL_17;
    }

    v13 = v12;
    selfCopy = self;
    v26 = conversationCopy;
    v14 = 0;
    v15 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(pendingMembers2);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        handle = [v17 handle];
        handle2 = [participantCopy handle];
        v20 = [handle isEquivalentToHandle:handle2];

        if (v20)
        {
          v21 = v17;

          v14 = v21;
        }
      }

      v13 = [pendingMembers2 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v13);

    conversationCopy = v26;
    if (v14)
    {
      v22 = sub_100004778();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [v26 UUID];
        *buf = 138412802;
        v32 = participantCopy;
        v33 = 2112;
        v34 = v14;
        v35 = 2112;
        v36 = uUID;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Active participant %@ was still listed as a pending member %@ for conversation UUID %@; did we miss an approval delegation notice?", buf, 0x20u);
      }

      pendingMembershipTracker = [(CSDConversationManager *)selfCopy pendingMembershipTracker];
      [pendingMembershipTracker stopTrackingPendingMember:v14 forConversation:v26 triggeredLocally:0];

      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)prepareAdditionOfActiveParticipant:(id)participant toInvitedMembersForLinkOnConversation:(id)conversation
{
  participantCopy = participant;
  conversationCopy = conversation;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  link = [conversationCopy link];
  if (link)
  {
    link2 = [conversationCopy link];
    if ([link2 isLocallyCreated])
    {
      memberHandlesAwaitingInvitesToLink = [conversationCopy memberHandlesAwaitingInvitesToLink];
      v11 = [memberHandlesAwaitingInvitesToLink count];

      if (v11)
      {
        v12 = +[NSMutableArray array];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = [conversationCopy memberHandlesAwaitingInvitesToLink];
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
              handle = [participantCopy handle];
              v19 = [v17 isEquivalentToHandle:handle];

              if (v19)
              {
                objc_initWeak(&location, self);
                v20 = TUKickMemberTimeout();
                v21 = dispatch_time(0, 1000000000 * v20);
                queue2 = [(CSDConversationManager *)self queue];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_10019E388;
                block[3] = &unk_10061CCB0;
                objc_copyWeak(&v31, &location);
                v29 = conversationCopy;
                v30 = v17;
                dispatch_after(v21, queue2, block);

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

        memberHandlesAwaitingInvitesToLink2 = [conversationCopy memberHandlesAwaitingInvitesToLink];
        [memberHandlesAwaitingInvitesToLink2 removeObjectsInArray:v12];
      }
    }

    else
    {
    }
  }
}

- (id)pickInitiatorFromActiveParticipants:(id)participants forUpdate:(id)update
{
  participantsCopy = participants;
  updateCopy = update;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = participantsCopy;
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
          if ([updateCopy isInitiator])
          {
            activeIDSDestination = [v12 activeIDSDestination];
            participantDestinationID = [updateCopy participantDestinationID];
            v15 = [activeIDSDestination isEqualToString:participantDestinationID];

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

- (void)linkManager:(id)manager updatedLinkDescriptorsFromSync:(id)sync
{
  syncCopy = sync;
  queue = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019E900;
  v8[3] = &unk_100619D88;
  v9 = syncCopy;
  selfCopy = self;
  v7 = syncCopy;
  dispatch_async(queue, v8);
}

- (void)linkManager:(id)manager removedLinkDescriptorsFromIDSSignal:(id)signal
{
  signalCopy = signal;
  queue = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019EA68;
  v8[3] = &unk_100619D88;
  v9 = signalCopy;
  selfCopy = self;
  v7 = signalCopy;
  dispatch_async(queue, v8);
}

- (void)linkManager:(id)manager updatedLinkDescriptorsFromIDSSignal:(id)signal
{
  signalCopy = signal;
  queue = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019EBD0;
  v8[3] = &unk_100619D88;
  v9 = signalCopy;
  selfCopy = self;
  v7 = signalCopy;
  dispatch_async(queue, v8);
}

- (void)linkManager:(id)manager removedLinkDescriptorsFromValidityCheck:(id)check
{
  checkCopy = check;
  queue = [(CSDConversationManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019ED48;
  v8[3] = &unk_100619D88;
  v9 = checkCopy;
  selfCopy = self;
  v7 = checkCopy;
  dispatch_async(queue, v8);
}

- (void)handleRemovedLinkDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManager *)self notifyDelegatesOfChangedLinkDescriptors:descriptorsCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = descriptorsCopy;
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

- (void)pendingMembershipTracker:(id)tracker willAdd:(id)add to:(id)to using:(id)using
{
  trackerCopy = tracker;
  addCopy = add;
  toCopy = to;
  usingCopy = using;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [toCopy UUID];
    *buf = 138412546;
    v23 = addCopy;
    v24 = 2112;
    v25 = uUID;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Membership tracker prompted response for pending member! {member: %@, conversation UUID: %@}", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10019F130;
  v18[3] = &unk_10061CCB0;
  objc_copyWeak(&v21, buf);
  v16 = toCopy;
  v19 = v16;
  v17 = addCopy;
  v20 = v17;
  [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:v17 forConversation:v16 usingResponseKeyData:usingCopy approved:1 callback:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)pendingMembershipTracker:(id)tracker didTrack:(id)track forGroupUUID:(id)d
{
  trackCopy = track;
  dCopy = d;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = trackCopy;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Membership tracker retained pending member because conversation does not yet exist {member: %@, groupUUID: %@}", &v12, 0x16u);
  }

  v10 = [(CSDConversationManager *)self conversationLinkForGroupUUID:dCopy];
  if (v10)
  {
    [(CSDConversationManager *)self notifyDelegatesOfTrackedPendingMember:trackCopy forConversationLink:v10];
    [(CSDConversationManager *)self notifyDelegatesOfUpdatePendingConversations];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = trackCopy;
      v14 = 2112;
      v15 = dCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No link was found; ignoring tracked pending member {member: %@, groupUUID: %@}", &v12, 0x16u);
    }
  }
}

- (void)pendingMembershipTracker:(id)tracker willNotAdd:(id)add to:(id)to using:(id)using
{
  addCopy = add;
  toCopy = to;
  usingCopy = using;
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = addCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Membership not adding pending member! {member: %@}", buf, 0xCu);
  }

  featureFlags = [(CSDConversationManager *)self featureFlags];
  if (([featureFlags groupFacetimeAsAServiceEnabled] & 1) == 0)
  {

    goto LABEL_7;
  }

  provider = [toCopy provider];

  if (!provider)
  {
LABEL_7:
    service = [(CSDConversationManager *)self service];
    goto LABEL_8;
  }

  v15 = +[CSDConversationProviderManager sharedInstance];
  provider2 = [toCopy provider];
  service = [v15 serviceForProvider:provider2];

LABEL_8:
  [(CSDConversationManager *)self sendLetMeInResponseToPendingMember:addCopy forConversation:toCopy usingResponseKeyData:usingCopy approved:0 callback:0];

  handle = [addCopy handle];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10019F5A0;
  v20[3] = &unk_10061A4C0;
  v21 = addCopy;
  v19 = addCopy;
  [service noteDismissedHandle:handle completionHandle:v20];
}

- (void)sendDelegationMessageTo:(id)to conversation:(id)conversation link:(id)link transactionUUID:(id)d forMember:(id)member
{
  memberCopy = member;
  dCopy = d;
  linkCopy = link;
  conversationCopy = conversation;
  toCopy = to;
  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Asked to send delegation message!", v22, 2u);
  }

  v18 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  v20 = [(CSDMessagingConversationMessage *)v18 initWithType:14 groupUUID:groupUUID link:0];

  nickname = [memberCopy nickname];
  [(CSDMessagingConversationMessage *)v20 setNickname:nickname];

  [(CSDConversationManager *)self _sendDelegationMessageTo:toCopy conversation:conversationCopy link:linkCopy transactionUUID:dCopy forMember:memberCopy withMessage:v20];
}

- (void)_sendDelegationMessageTo:(id)to conversation:(id)conversation link:(id)link transactionUUID:(id)d forMember:(id)member withMessage:(id)message
{
  toCopy = to;
  conversationCopy = conversation;
  linkCopy = link;
  dCopy = d;
  memberCopy = member;
  messageCopy = message;
  if ([(CSDConversationManager *)self _linksEnabled])
  {
    if (conversationCopy | linkCopy)
    {
      if (conversationCopy)
      {
        v21 = conversationCopy;
        goto LABEL_9;
      }
    }

    else
    {
      groupUUID = [0 groupUUID];
      if (groupUUID)
      {
      }

      else
      {
        originatorHandle = [0 originatorHandle];

        if (!originatorHandle)
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

    v21 = linkCopy;
LABEL_9:
    groupUUID2 = [v21 groupUUID];
    v23 = [toCopy count];
    data = sub_100004778();
    v25 = os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT);
    if (!v23)
    {
      if (v25)
      {
        *buf = 138412802;
        v28 = groupUUID2;
        v70 = groupUUID2;
        v71 = 2112;
        v72 = dCopy;
        v73 = 2112;
        v74 = memberCopy;
        _os_log_impl(&_mh_execute_header, data, OS_LOG_TYPE_DEFAULT, "Not sending delegation message because no handles were specified! {groupUUID: %@, transactionUUID: %@, pendingMember: %@}", buf, 0x20u);
LABEL_38:

LABEL_39:
        goto LABEL_40;
      }

LABEL_37:
      v28 = groupUUID2;
      goto LABEL_38;
    }

    if (v25)
    {
      *buf = 138413058;
      v70 = toCopy;
      v71 = 2112;
      v72 = groupUUID2;
      v73 = 2112;
      v74 = dCopy;
      v75 = 2112;
      v76 = memberCopy;
      _os_log_impl(&_mh_execute_header, data, OS_LOG_TYPE_DEFAULT, "Asked to send delegation message {handles: %@, groupUUID: %@, transactionUUID: %@, pendingMember: %@}", buf, 0x2Au);
    }

    [messageCopy setConversationGroupUUID:groupUUID2];
    idsDestination = [memberCopy idsDestination];
    [messageCopy setLetMeInDelegationHandle:idsDestination];

    uUIDString = [dCopy UUIDString];
    [messageCopy setLetMeInDelegationUUID:uUIDString];

    data = [messageCopy data];
    v56 = dCopy;
    if (conversationCopy)
    {
      localMember = [conversationCopy localMember];
    }

    else
    {
      v29 = [TUConversationMember alloc];
      originatorHandle2 = [linkCopy originatorHandle];
      localMember = [v29 initWithHandle:originatorHandle2];
    }

    featureFlags = [(CSDConversationManager *)self featureFlags];
    v59 = toCopy;
    v57 = linkCopy;
    v55 = memberCopy;
    if ([featureFlags groupFacetimeAsAServiceEnabled])
    {
      provider = [conversationCopy provider];

      if (provider)
      {
        v33 = +[CSDConversationProviderManager sharedInstance];
        provider2 = [conversationCopy provider];
        service = [v33 serviceForProvider:provider2];

LABEL_22:
        handle = [localMember handle];
        value = [handle value];
        v54 = service;
        v58 = [service accountWithCallerID:value];

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

        capabilitySendMessageOptions = [conversationCopy capabilitySendMessageOptions];
        if (capabilitySendMessageOptions)
        {
          [v47 addEntriesFromDictionary:capabilitySendMessageOptions];
        }

        sendDataBlock = [(CSDConversationManager *)self sendDataBlock];
        provider3 = [conversationCopy provider];
        v51 = (sendDataBlock)[2](sendDataBlock, data, v58, v38, localMember, v47, 0, 0, provider3);

        v52 = sub_100004778();
        v53 = v52;
        linkCopy = v57;
        if (v51)
        {
          memberCopy = v55;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Sent delegation request!!!", buf, 2u);
          }
        }

        else
        {
          memberCopy = v55;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_100478A50();
          }
        }

        toCopy = v59;
        dCopy = v56;
        goto LABEL_37;
      }
    }

    else
    {
    }

    service = [(CSDConversationManager *)self service];
    goto LABEL_22;
  }

LABEL_40:
}

- (void)foundAvailableAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = advertisementCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying of found advertisement: %@", buf, 0xCu);
  }

  advertisementsBySessionUUID = [(CSDConversationManager *)self advertisementsBySessionUUID];
  sessionUUID = [advertisementCopy sessionUUID];
  [advertisementsBySessionUUID setObject:advertisementCopy forKeyedSubscript:sessionUUID];

  queue = [(CSDConversationManager *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A0088;
  v10[3] = &unk_100619D88;
  v11 = advertisementCopy;
  selfCopy = self;
  v9 = advertisementCopy;
  dispatch_async(queue, v10);
}

- (void)lostAvailableAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = advertisementCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying of lost advertisement: %@", buf, 0xCu);
  }

  advertisementsBySessionUUID = [(CSDConversationManager *)self advertisementsBySessionUUID];
  sessionUUID = [advertisementCopy sessionUUID];
  [advertisementsBySessionUUID setObject:0 forKeyedSubscript:sessionUUID];

  queue = [(CSDConversationManager *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A05B4;
  v10[3] = &unk_100619D88;
  v11 = advertisementCopy;
  selfCopy = self;
  v9 = advertisementCopy;
  dispatch_async(queue, v10);
}

- (void)fetchActiveActivitySessionContainersWithCompletion:(id)completion
{
  completionCopy = completion;
  activitySessionContainerProvider = [(CSDConversationManager *)self activitySessionContainerProvider];
  [activitySessionContainerProvider activeActivitySessionContainersWithCompletionHandler:completionCopy];
}

- (void)requestUpdatedActivitySessionContainers
{
  activitySessionContainerProvider = [(CSDConversationManager *)self activitySessionContainerProvider];
  [activitySessionContainerProvider sendLatestContainersToObservers];
}

- (BOOL)hasActiveActivitySessionContainer
{
  activitySessionContainerProvider = [(CSDConversationManager *)self activitySessionContainerProvider];
  hasActiveActivitySessionContainer = [activitySessionContainerProvider hasActiveActivitySessionContainer];

  return hasActiveActivitySessionContainer;
}

- (void)screenSharingActivityManager:(id)manager receivedUpdatedRemoteAttributes:(id)attributes isLocallySharing:(BOOL)sharing
{
  attributesCopy = attributes;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0B0C;
  block[3] = &unk_100619F48;
  sharingCopy = sharing;
  v11 = attributesCopy;
  selfCopy = self;
  v9 = attributesCopy;
  dispatch_async(queue, block);
}

- (void)screenSharingActivityManager:(id)manager invalidatedSessionWithReason:(id)reason wasLocallySharing:(BOOL)sharing
{
  reasonCopy = reason;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0CAC;
  block[3] = &unk_100619F48;
  sharingCopy = sharing;
  block[4] = self;
  v11 = reasonCopy;
  v9 = reasonCopy;
  dispatch_async(queue, block);
}

- (void)updateRemoteControlStatus:(int64_t)status onConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0F8C;
  block[3] = &unk_100619F20;
  selfCopy = self;
  statusCopy = status;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)applicationPolicyManager:(id)manager authorizationChangedForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v7 = [delegateToQueue countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(delegateToQueue);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v13 = [delegateToQueue2 objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001A12EC;
          block[3] = &unk_100619E58;
          block[4] = v11;
          block[5] = self;
          v16 = identifierCopy;
          dispatch_async(v13, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [delegateToQueue countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)systemStateObserver:(id)observer sharePlayAllowedStateChanged:(BOOL)changed
{
  changedCopy = changed;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (changedCopy)
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
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v9 = [delegateToQueue countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(delegateToQueue);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v15 = [delegateToQueue2 objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001A165C;
          block[3] = &unk_100619F48;
          block[4] = v13;
          block[5] = self;
          v33 = changedCopy;
          dispatch_async(v15, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [delegateToQueue countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  observerStorage = [(CSDConversationManager *)self observerStorage];
  observerToQueue = [observerStorage observerToQueue];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = observerToQueue;
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
          v27 = changedCopy;
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

- (void)systemStateObserver:(id)observer screenSharingAllowedStateChanged:(BOOL)changed
{
  changedCopy = changed;
  queue = [(CSDConversationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (changedCopy)
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
  delegateToQueue = [(CSDConversationManager *)self delegateToQueue];
  v9 = [delegateToQueue countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(delegateToQueue);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          delegateToQueue2 = [(CSDConversationManager *)self delegateToQueue];
          v15 = [delegateToQueue2 objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001A19DC;
          block[3] = &unk_100619F48;
          block[4] = v13;
          block[5] = self;
          v33 = changedCopy;
          dispatch_async(v15, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [delegateToQueue countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  observerStorage = [(CSDConversationManager *)self observerStorage];
  observerToQueue = [observerStorage observerToQueue];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = observerToQueue;
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
          v27 = changedCopy;
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

- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination
{
  lCopy = l;
  metadataCopy = metadata;
  destinationCopy = destination;
  queue = [(CSDConversationManager *)self queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A1AFC;
  v17[3] = &unk_10061A450;
  v18 = lCopy;
  v19 = metadataCopy;
  selfCopy = self;
  v21 = destinationCopy;
  v14 = destinationCopy;
  v15 = metadataCopy;
  v16 = lCopy;
  dispatch_async(queue, v17);
}

- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  lCopy = l;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = successfullyCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resource transfer did initiate successfully: %d", buf, 8u);
  }

  queue = [(CSDConversationManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A2018;
  v11[3] = &unk_100619D88;
  v11[4] = self;
  v12 = lCopy;
  v10 = lCopy;
  dispatch_async(queue, v11);
}

- (void)sendWithMessage:(id)message toHandle:(id)handle fromHandle:(id)fromHandle
{
  messageCopy = message;
  handleCopy = handle;
  fromHandleCopy = fromHandle;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = messageCopy;
    v23 = 2112;
    v24 = fromHandleCopy;
    v25 = 2112;
    v26 = handleCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] Sending SharePlayAvailable message %@ from handle %@ to handle %@", buf, 0x20u);
  }

  service = [(CSDConversationManager *)self service];
  value = [fromHandleCopy value];
  v14 = [service accountWithCallerID:value];

  v15 = [[TUConversationMember alloc] initWithHandle:fromHandleCopy];
  v16 = TUCopyIDSCanonicalAddressForHandle();
  v17 = [NSSet setWithObject:v16];

  v18 = [[CSDMessagingConversationMessage alloc] initWithType:37 groupUUID:0 link:0];
  [(CSDMessagingConversationMessage *)v18 setSharePlayAvailable:messageCopy];
  sendDataBlock = [(CSDConversationManager *)self sendDataBlock];
  data = [(CSDMessagingConversationMessage *)v18 data];
  (sendDataBlock)[2](sendDataBlock, data, v14, v17, v15, 0, 0, 0, 0);
}

- (void)setIsHeld:(BOOL)held forConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A239C;
  block[3] = &unk_100619F48;
  block[4] = self;
  v10 = dCopy;
  heldCopy = held;
  v8 = dCopy;
  dispatch_async(queue, block);
}

- (void)setProvider:(id)provider forConversationUUID:(id)d
{
  providerCopy = provider;
  dCopy = d;
  queue = [(CSDConversationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A25A4;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = dCopy;
  v13 = providerCopy;
  v9 = providerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (CSDConduitIDSProxy)messageProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_messageProxy);

  return WeakRetained;
}

- (id)activityAuthorizationStatePresentAlertIfIncapable:(BOOL)incapable
{
  selfCopy = self;
  v5 = CSDConversationManager.activityAuthorizationState(presentAlertIfIncapable:)(incapable);

  return v5;
}

- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)activity onContainerWithID:(NSUUID *)d completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = activity;
  v9[3] = d;
  v9[4] = v8;
  v9[5] = self;
  activityCopy = activity;
  dCopy = d;
  selfCopy = self;

  sub_10044D610(&unk_10057F8D0, v9);
}

- (void)activeActivitySessionContainersWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_10044D610(&unk_10057F898, v5);
}

- (void)requestAuthorizationForActivity:(TUConversationActivity *)activity withOptions:(unint64_t)options completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = activity;
  v9[3] = options;
  v9[4] = v8;
  v9[5] = self;
  activityCopy = activity;
  selfCopy = self;

  sub_10044D610(&unk_100587E88, v9);
}

@end