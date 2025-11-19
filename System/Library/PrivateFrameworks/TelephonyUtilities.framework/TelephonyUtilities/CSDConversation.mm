@interface CSDConversation
- (BOOL)_addActiveParticipantIsDisallowedByGreenTea:(id)a3;
- (BOOL)_endScreenCallIfNecessary;
- (BOOL)_expanseEnabled;
- (BOOL)_joinIsDisallowedByGreenTeaWithContext:(id)a3;
- (BOOL)_shouldSendSetParticipantType:(unint64_t)a3;
- (BOOL)activitySessionManager:(id)a3 activitySessionIsJoinable:(id)a4;
- (BOOL)activitySessionManagerShouldSupportEndOnlyForMe:(id)a3;
- (BOOL)allowsScreenSharing;
- (BOOL)containsMemberWithHandle:(id)a3;
- (BOOL)isAnyOtherAccountDeviceActive;
- (BOOL)isAudioEnabled;
- (BOOL)isAudioPaused;
- (BOOL)isAudioReady;
- (BOOL)isFromStorage;
- (BOOL)isNearbySession;
- (BOOL)isOneToOneHandoffOngoing;
- (BOOL)isOneToOneModeEnabled;
- (BOOL)isRedirectingAudio;
- (BOOL)isRelaying;
- (BOOL)isRepresentedByRemoteMembers:(id)a3 andLink:(id)a4;
- (BOOL)isScreenEnabled;
- (BOOL)isScreenSharingInitiationAvailable;
- (BOOL)isScreening;
- (BOOL)isUplinkMuted;
- (BOOL)isVideo;
- (BOOL)isVideoEnabled;
- (BOOL)isVideoPaused;
- (BOOL)remoteJoinedActivity:(id)a3;
- (BOOL)setConversationLink:(id)a3 allowUpdate:(BOOL)a4;
- (BOOL)setStagedActivitySessionForActivitySession:(id)a3;
- (BOOL)shouldRespondToLetMeInRequestForMember:(id)a3;
- (BOOL)supportsLeaveContext;
- (CGRect)presentationRect;
- (CGSize)localPortraitAspectRatio;
- (CSDConversation)initWithQueue:(id)a3 UUID:(id)a4 groupUUID:(id)a5 groupSession:(id)a6 messagesGroupUUID:(id)a7 locallyCreated:(BOOL)a8 localMember:(id)a9 initiator:(id)a10 remoteMembers:(id)a11 pendingMembers:(id)a12 otherInvitedHandles:(id)a13 lightweightMembers:(id)a14 activity:(id)a15 link:(id)a16 report:(id)a17 fromStorage:(BOOL)a18 avMode:(unint64_t)a19 presentationMode:(unint64_t)a20 applicationController:(id)a21;
- (CSDConversation)initWithQueue:(id)a3 UUID:(id)a4 groupUUID:(id)a5 groupSession:(id)a6 messagesGroupUUID:(id)a7 locallyCreated:(BOOL)a8 localMember:(id)a9 initiator:(id)a10 remoteMembers:(id)a11 pendingMembers:(id)a12 otherInvitedHandles:(id)a13 lightweightMembers:(id)a14 remotePushTokens:(id)a15 activity:(id)a16 link:(id)a17 report:(id)a18 fromStorage:(BOOL)a19 avMode:(unint64_t)a20 presentationMode:(unint64_t)a21 applicationController:(id)a22 featureFlags:(id)a23 systemStateObserver:(id)a24 applicationPolicyManager:(id)a25 screenSharingRequest:(id)a26 testConfiguration:(id)a27 isOldMessage:(BOOL)a28;
- (CSDConversationDelegate)delegate;
- (CSDConversationParticipant)localCSDParticipant;
- (FTDeviceSupport)deviceSupport;
- (NSDictionary)capabilitySendMessageOptions;
- (NSSet)activeLightweightParticipants;
- (NSSet)activeRemoteParticipants;
- (NSSet)activitySessions;
- (NSSet)memberHandlesEligibleForLinkApproval;
- (NSSet)memberIdentifiers;
- (NSSet)screenSharingRequests;
- (NSSet)tuActivitySessions;
- (NSSet)virtualParticipants;
- (NSString)description;
- (TUConversation)tuConversation;
- (TUConversationParticipant)localParticipant;
- (TUVideoDeviceController)videoDeviceController;
- (id)_allMembers;
- (id)_stableExpanseIdentifier;
- (id)activeParticipants;
- (id)activitySessionManagerRequestedCallTypeStringForLogging:(id)a3;
- (id)avcSessionIdentifier;
- (id)createActivitySession:(id)a3 isAutoStartedStagedActivity:(BOOL)a4;
- (id)createStagedActivitySessionForActivity:(id)a3;
- (id)localCSDConversationParticipant;
- (id)localConversationParticipantWithData;
- (id)localConversationParticipantWithDataToSendToDestinationIDs:(id)a3;
- (id)localParticipantCapabilities;
- (id)localParticipantData;
- (id)localParticipantDataToSendToDestinationIDs:(id)a3;
- (id)memberWithHandle:(id)a3;
- (id)onlyAvailableSessionConversationParticipant:(id)a3;
- (id)reducedInfoMembers:(id)a3;
- (id)remoteMemberForHandle:(id)a3;
- (id)remoteParticipantForHandle:(id)a3;
- (id)remoteParticipantForIdentifier:(unint64_t)a3;
- (id)session:(id)a3 conversationParticipantWithParticipantIdentifier:(unint64_t)a4;
- (id)tuSystemActivitySessions;
- (int)_errorToAVCProviderEndedReason:(id)a3 defaultProviderReason:(int)a4;
- (int)presentationState;
- (int64_t)activeRemoteParticipantCountMinusEligibleAVLess;
- (int64_t)avcLocalCaptionsToken;
- (int64_t)avcSessionToken;
- (int64_t)maxVideoDecodesAllowed;
- (unint64_t)_resolvedNearbyTimeOut;
- (unint64_t)activitySessionManager:(id)a3 localParticipantAliasForBundleIdentifier:(id)a4;
- (unint64_t)localParticipantIdentifier;
- (void)_addParticipantsWaitingToBeAddedToAVCSession;
- (void)_addRemoteParticipantToAVCSessionIfPossible:(id)a3;
- (void)_allowMember:(id)a3;
- (void)_applyUpdateFromDataBlobForRemoteParticipant:(id)a3 participantIdentifier:(unint64_t)a4;
- (void)_beginTimeoutForLeavingConversationWithReason:(id)a3;
- (void)_cancelInFlightAVCBlobRecoveryIfNecessary;
- (void)_cancelTimeoutForLeavingConversation;
- (void)_cleanUpConversation;
- (void)_cleanUpFromAVCSessionFailure;
- (void)_cleanUpHandoffMetricsIfNecessary;
- (void)_emitRTCConnectionSetupEvent:(int64_t)a3 participantIdentifier:(unint64_t)a4;
- (void)_emitRTCConnectionSetupEventForAddActiveParticipant:(id)a3;
- (void)_endCallIfNecessary;
- (void)_generateHandoffReportIfNecessaryForUpdatedParticipantID:(unint64_t)a3 isAddParticipant:(BOOL)a4;
- (void)_handleStateChanged:(int64_t)a3 oldState:(int64_t)a4;
- (void)_launchApplicationDueToActivityCreation:(id)a3;
- (void)_launchApplicationForActivityIfNecessary:(id)a3;
- (void)_launchApplicationForActivityIfNecessary:(id)a3 shouldForeground:(BOOL)a4;
- (void)_launchApplicationsForActivitiesIfNecessary;
- (void)_launchApplicationsForActivitiesIfNecessary:(BOOL)a3;
- (void)_pruneRemoteParticipantsIfNecessary;
- (void)_recomputeAudioStates;
- (void)_registerPluginsIfNecessary;
- (void)_removeMemberFromPendingMemberListForParticipant:(id)a3;
- (void)_reportConversationFailedWithFailureReason:(int64_t)a3 providerEndedReason:(unint64_t)a4;
- (void)_reportConversationFailedWithProviderEndedReason:(unint64_t)a3;
- (void)_requestAVCBlobsIfNecessary;
- (void)_restartIDSSessionIfNecessary;
- (void)_showLetMeInUIIfNecessary;
- (void)_startAVCSessionIfNecessary;
- (void)_startIDSSessionWithContext:(id)a3;
- (void)_stopAVCSession;
- (void)_updateParticipantTypesForAddedParticipant:(id)a3;
- (void)activitySessionManager:(id)a3 activityChangedOnSession:(id)a4;
- (void)activitySessionManager:(id)a3 activitySessionAssociatedSceneChanged:(id)a4;
- (void)activitySessionManager:(id)a3 activitySessionChanged:(id)a4;
- (void)activitySessionManager:(id)a3 activitySessionStateChanged:(id)a4 oldState:(unint64_t)a5;
- (void)activitySessionManager:(id)a3 fetchDataCryptorForTopic:(id)a4 completionHandler:(id)a5;
- (void)activitySessionManager:(id)a3 participantWithIdentifier:(unint64_t)a4 bundleIdentifier:(id)a5 includeLocalParticipant:(BOOL)a6 completionHandler:(id)a7;
- (void)activitySessionManager:(id)a3 receivedActivitySessionEvent:(id)a4;
- (void)activitySessionManager:(id)a3 requestEncryptionKeysForParticipants:(id)a4 topicName:(id)a5;
- (void)activitySessionManager:(id)a3 requestForegroundPresentationForActivity:(id)a4;
- (void)activitySessionManager:(id)a3 requestedEndpointWithIdentifier:(id)a4 activitySession:(id)a5 completion:(id)a6;
- (void)activitySessionManager:(id)a3 sendResourceAtURL:(id)a4 toParticipants:(id)a5 metadata:(id)a6 activitySessionUUID:(id)a7 completion:(id)a8;
- (void)activitySessionManager:(id)a3 sessionUnjoined:(id)a4 startDate:(id)a5 endDate:(id)a6;
- (void)activitySessionManager:(id)a3 shouldRegisterPlugin:(id)a4;
- (void)activitySessionManager:(id)a3 tuActivitySessionsDidChange:(id)a4;
- (void)addActiveParticipant:(id)a3;
- (void)addAliasesToConversationContainer:(id)a3 forBundleIdentifier:(id)a4;
- (void)addHighlightIdentifier:(id)a3;
- (void)addPendingMembers:(id)a3 triggeredLocally:(BOOL)a4;
- (void)addRemoteMembers:(id)a3 otherInvitedHandles:(id)a4 invitationPreferences:(id)a5 addingFromLetMeIn:(BOOL)a6 triggeredLocally:(BOOL)a7;
- (void)addRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4;
- (void)addScreenSharingRequest:(id)a3;
- (void)addScreenSharingType:(unint64_t)a3;
- (void)addVirtualParticipant:(id)a3;
- (void)audioPolicyManager:(id)a3 sharePlayAllowedStateChanged:(BOOL)a4;
- (void)broadcastLocalParticipantData;
- (void)cleanUpIDSSessionState;
- (void)continueHandoffAudioRouteForIdentifier:(unint64_t)a3 participantLeft:(BOOL)a4;
- (void)executeSessionDidStart;
- (void)fulfillLocalScreenShareRequests;
- (void)fulfillPendingScreenSharingRequestsForRemoteParticipant:(id)a3;
- (void)handleRemoteControlStatusChanged:(int64_t)a3;
- (void)joinUsingContext:(id)a3;
- (void)kickMember:(id)a3;
- (void)leaveActivitySessionWithUUID:(id)a3;
- (void)leaveUsingContext:(id)a3;
- (void)leaveWithReason:(unint64_t)a3;
- (void)postSharePlayActivityDidChangeNotificationIfNecessary:(id)a3;
- (void)postUserNotificationForUnsupportedScreenSharingActivity:(id)a3 alternateReponseHandler:(id)a4;
- (void)presentDismissalAlertForActivitySessionWithUUID:(id)a3;
- (void)refreshActiveParticipantsList;
- (void)registerMessagesGroupAssociation;
- (void)remoteParticipantWithIdentifier:(unint64_t)a3 didChangeAudioPriority:(int64_t)a4 videoPriority:(int64_t)a5;
- (void)remoteParticipantWithIdentifier:(unint64_t)a3 didReact:(id)a4;
- (void)removeActivitySessionIfNecessary;
- (void)removeActivitySessionWithUUID:(id)a3 usingTerminatingHandle:(id)a4;
- (void)removeHighlightIdentifier:(id)a3;
- (void)removeNearbyMemberWithHandleIfNecessary:(id)a3;
- (void)removeParticipantWithIdentifier:(unint64_t)a3 fromHandle:(id)a4 withReason:(unint64_t)a5;
- (void)removeParticipantsForMember:(id)a3;
- (void)removePendingMembers:(id)a3 triggeredLocally:(BOOL)a4;
- (void)removeRemoteMembers:(id)a3 triggeredLocally:(BOOL)a4;
- (void)removeRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4;
- (void)removeScreenSharingRequest:(id)a3;
- (void)removeVirtualParticipant:(id)a3;
- (void)removedRemoteParticipantWithIdentifier:(unint64_t)a3 didSucceed:(BOOL)a4;
- (void)resetAVCSession;
- (void)resetActivitySessionSceneAssociationsForBundleID:(id)a3;
- (void)resetConversation;
- (void)reviveOrInvalidateCachedConversationIfNecessary;
- (void)serverDisconnectedForSession:(id)a3;
- (void)session:(id)a3 changedBytesOfDataUsed:(int64_t)a4;
- (void)session:(id)a3 changedLocalAudioEnabled:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)session:(id)a3 changedLocalAudioPaused:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)session:(id)a3 changedLocalVideoEnabled:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)session:(id)a3 changedLocalVideoPaused:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)session:(id)a3 changedScreenEnabled:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)session:(id)a3 didDetectError:(id)a4;
- (void)session:(id)a3 didJoinGroup:(BOOL)a4 participantIdentifiers:(id)a5 error:(id)a6;
- (void)session:(id)a3 didLeaveGroupWithError:(id)a4;
- (void)session:(id)a3 didReceiveData:(id)a4 dataType:(unsigned __int16)a5 forParticipant:(id)a6;
- (void)session:(id)a3 didReceiveDataBlob:(id)a4 forParticipant:(id)a5;
- (void)session:(id)a3 didReceiveJoinedParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)session:(id)a3 didReceiveKickedParticipantIDs:(id)a4 withCode:(unsigned int)a5 withType:(unsigned __int16)a6 isTruncated:(BOOL)a7;
- (void)session:(id)a3 didReceiveLeftParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)session:(id)a3 didReceiveLocalParticipantType:(unsigned __int16)a4 requestIdentifier:(unint64_t)a5 error:(id)a6;
- (void)session:(id)a3 didReceiveParticipantUpdateParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)session:(id)a3 didReceiveReport:(id)a4;
- (void)session:(id)a3 didReceiveUnderlyingLinksStatus:(BOOL)a4;
- (void)session:(id)a3 didRegisterPluginAllocationInfo:(id)a4;
- (void)session:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)session:(id)a3 didStopWithError:(id)a4;
- (void)session:(id)a3 didUnregisterPluginAllocationInfo:(id)a4;
- (void)session:(id)a3 endedWithError:(id)a4 reason:(unsigned int)a5;
- (void)session:(id)a3 localParticipantDidReact:(id)a4;
- (void)session:(id)a3 receivedActiveLightweightParticipantDestinationsByIdentifier:(id)a4;
- (void)session:(id)a3 receivedActiveParticipantDestinationsByIdentifier:(id)a4;
- (void)session:(id)a3 screenCaptureDidStart:(BOOL)a4 withError:(id)a5;
- (void)session:(id)a3 screenCaptureDidStop:(BOOL)a4 withError:(id)a5;
- (void)session:(id)a3 screenShareAttributesUpdated:(id)a4;
- (void)sessionDidReceiveKeyUpdate:(id)a3;
- (void)sessionDidTerminate:(id)a3;
- (void)sessionLocalParticipantDidStopReacting:(id)a3;
- (void)sessionShouldReconnect:(id)a3;
- (void)setActiveLightweightParticipantDestinationsByIdentifier:(id)a3;
- (void)setActiveParticipantDestinationsByIdentifier:(id)a3;
- (void)setAudioInjectionAllowed:(BOOL)a3;
- (void)setConversationGridDisplayMode:(unint64_t)a3;
- (void)setForceExpanseEnabled:(BOOL)a3;
- (void)setFromStorage:(BOOL)a3;
- (void)setIDSAliasingSalt:(id)a3 onContainer:(id)a4;
- (void)setIsHeld:(BOOL)a3;
- (void)setIsNearbySharePlay:(BOOL)a3;
- (void)setLocalParticipantAudioVideoMode:(unint64_t)a3 presentationMode:(unint64_t)a4;
- (void)setMemberIdentifiers:(id)a3;
- (void)setParticipantAudioVideoMode:(unint64_t)a3 presentationMode:(unint64_t)a4 forParticipant:(id)a5;
- (void)setPresentationMode:(unint64_t)a3;
- (void)setPresentationRect:(CGRect)a3;
- (void)setProvider:(id)a3;
- (void)setRemoteMembers:(id)a3;
- (void)setScreenShareAttributes:(id)a3;
- (void)setSplitSessionSecondary:(id)a3;
- (void)setState:(int64_t)a3;
- (void)startAudio;
- (void)startTimeOutForNearbyMembers:(id)a3;
- (void)startTimeOutForNearbySession;
- (void)stopContentSharingSession;
- (void)switchBackToOneToOneIfPossibleUsingDelay:(BOOL)a3;
- (void)systemStateObserver:(id)a3 screenSharingInitiationAllowedStateChanged:(BOOL)a4;
- (void)updateConversationParticipantToHaveMatchingSiriDisplayName:(id)a3;
- (void)updateLightweightMember:(id)a3;
- (void)updateLocalAspectRatios;
- (void)updateLocalParticipantCluster:(id)a3;
- (void)updateLocalParticipantInfo;
- (void)updateMemberValidationSource:(id)a3 source:(int64_t)a4;
- (void)updateMessagesGroupName:(id)a3;
- (void)updateOneToOneModeForParticipantUpdateType:(unsigned __int16)a3 participant:(id)a4;
- (void)updateParticipantPresentationContexts:(id)a3;
- (void)updateParticipantsWithDestinationIdentifiers:(id)a3;
- (void)updateRemoteMember:(id)a3;
- (void)updateReportInfoForHandoffParticipant:(id)a3;
@end

@implementation CSDConversation

- (CSDConversation)initWithQueue:(id)a3 UUID:(id)a4 groupUUID:(id)a5 groupSession:(id)a6 messagesGroupUUID:(id)a7 locallyCreated:(BOOL)a8 localMember:(id)a9 initiator:(id)a10 remoteMembers:(id)a11 pendingMembers:(id)a12 otherInvitedHandles:(id)a13 lightweightMembers:(id)a14 activity:(id)a15 link:(id)a16 report:(id)a17 fromStorage:(BOOL)a18 avMode:(unint64_t)a19 presentationMode:(unint64_t)a20 applicationController:(id)a21
{
  v41 = a8;
  v36 = a21;
  v34 = a17;
  v32 = a16;
  v31 = a15;
  v30 = a14;
  v46 = a13;
  v45 = a12;
  v44 = a11;
  v43 = a10;
  v28 = a9;
  v29 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v39 = objc_alloc_init(TUFeatureFlags);
  LOBYTE(v27) = a18;
  v42 = [(CSDConversation *)self initWithQueue:v25 UUID:v24 groupUUID:v23 groupSession:v22 messagesGroupUUID:v29 locallyCreated:v41 localMember:v28 initiator:v43 remoteMembers:v44 pendingMembers:v45 otherInvitedHandles:v46 lightweightMembers:v30 remotePushTokens:0 activity:v31 link:v32 report:v34 fromStorage:v27 avMode:a19 presentationMode:a20 applicationController:v36 featureFlags:v39 systemStateObserver:0 applicationPolicyManager:0 screenSharingRequest:0 testConfiguration:0];

  return v42;
}

- (CSDConversation)initWithQueue:(id)a3 UUID:(id)a4 groupUUID:(id)a5 groupSession:(id)a6 messagesGroupUUID:(id)a7 locallyCreated:(BOOL)a8 localMember:(id)a9 initiator:(id)a10 remoteMembers:(id)a11 pendingMembers:(id)a12 otherInvitedHandles:(id)a13 lightweightMembers:(id)a14 remotePushTokens:(id)a15 activity:(id)a16 link:(id)a17 report:(id)a18 fromStorage:(BOOL)a19 avMode:(unint64_t)a20 presentationMode:(unint64_t)a21 applicationController:(id)a22 featureFlags:(id)a23 systemStateObserver:(id)a24 applicationPolicyManager:(id)a25 screenSharingRequest:(id)a26 testConfiguration:(id)a27 isOldMessage:(BOOL)a28
{
  v143 = a8;
  v157 = a3;
  v161 = a4;
  v162 = a5;
  v141 = a6;
  v152 = a6;
  v144 = a7;
  v150 = a9;
  v151 = a10;
  v160 = a11;
  v155 = a12;
  v154 = a13;
  v156 = a14;
  v145 = a15;
  v163 = a16;
  v146 = a17;
  v147 = a18;
  v159 = a22;
  v158 = a23;
  v165 = a24;
  v153 = a25;
  v164 = a26;
  v148 = a27;
  v175.receiver = self;
  v175.super_class = CSDConversation;
  v32 = [(CSDConversation *)&v175 init];
  if (v32)
  {
    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = @"NO";
      *buf = 138413826;
      v178 = v161;
      if (v143)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      if (a28)
      {
        v34 = @"YES";
      }

      v179 = 2112;
      v180 = v162;
      v181 = 2112;
      v182 = v35;
      v183 = 2112;
      v184 = v151;
      v185 = 2112;
      v186 = v160;
      v187 = 2112;
      v188 = v34;
      v189 = 2112;
      v190 = v150;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "init CSDConversation: %@, %@, %@, initiator: %@, remoteMembers: %@, isOldMessage: %@, localMember: %@", buf, 0x48u);
    }

    objc_storeStrong(&v32->_queue, a3);
    objc_storeStrong(&v32->_featureFlags, a23);
    objc_storeStrong(&v32->_UUID, a4);
    objc_storeStrong(&v32->_groupUUID, a5);
    objc_storeStrong(&v32->_messagesGroupUUID, a7);
    v32->_state = 0;
    v32->_letMeInRequestState = 0;
    v32->_locallyCreated = v143;
    objc_storeStrong(&v32->_initiator, a10);
    objc_storeStrong(&v32->_localMember, a9);
    v36 = +[NSDictionary dictionary];
    activeParticipantDestinationsByIdentifier = v32->_activeParticipantDestinationsByIdentifier;
    v32->_activeParticipantDestinationsByIdentifier = v36;

    v38 = +[NSMutableDictionary dictionary];
    activeRemoteParticipantsByIdentifier = v32->_activeRemoteParticipantsByIdentifier;
    v32->_activeRemoteParticipantsByIdentifier = v38;

    v40 = objc_alloc_init(NSMutableDictionary);
    activeLightweightParticipantsByIdentifier = v32->_activeLightweightParticipantsByIdentifier;
    v32->_activeLightweightParticipantsByIdentifier = v40;

    v42 = objc_alloc_init(NSMutableDictionary);
    screenSharingRequestsByUUID = v32->_screenSharingRequestsByUUID;
    v32->_screenSharingRequestsByUUID = v42;

    v44 = objc_alloc_init(NSMutableSet);
    recentlyLeftParticipantIdentifiers = v32->_recentlyLeftParticipantIdentifiers;
    v32->_recentlyLeftParticipantIdentifiers = v44;

    v46 = objc_alloc_init(NSMutableSet);
    kickedParticipants = v32->_kickedParticipants;
    v32->_kickedParticipants = v46;

    v48 = objc_alloc_init(NSMutableSet);
    pendingRemoteMembers = v32->_pendingRemoteMembers;
    v32->_pendingRemoteMembers = v48;

    v50 = objc_alloc_init(NSMutableArray);
    removedHandoffParticipants = v32->_removedHandoffParticipants;
    v32->_removedHandoffParticipants = v50;

    v52 = objc_alloc_init(NSMutableArray);
    addedHandoffParticipants = v32->_addedHandoffParticipants;
    v32->_addedHandoffParticipants = v52;

    v54 = +[NSMutableDictionary dictionary];
    startAddingHandoffParticipantToTime = v32->_startAddingHandoffParticipantToTime;
    v32->_startAddingHandoffParticipantToTime = v54;

    v56 = +[NSMutableDictionary dictionary];
    addedHandoffParticipantToTime = v32->_addedHandoffParticipantToTime;
    v32->_addedHandoffParticipantToTime = v56;

    v58 = +[NSMutableDictionary dictionary];
    removedHandoffParticipantToTime = v32->_removedHandoffParticipantToTime;
    v32->_removedHandoffParticipantToTime = v58;

    v60 = +[NSMutableDictionary dictionary];
    sequenceNumberToTime = v32->_sequenceNumberToTime;
    v32->_sequenceNumberToTime = v60;

    currentParticipantPresentationContexts = v32->_currentParticipantPresentationContexts;
    v32->_currentParticipantPresentationContexts = &__NSArray0__struct;

    v63 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v32->_serverBag;
    v32->_serverBag = v63;

    v32->_fromStorage = a19;
    v65 = +[NSDate distantPast];
    lastRebroadcastTime = v32->_lastRebroadcastTime;
    v32->_lastRebroadcastTime = v65;

    v32->_rebroadcastTimeThreshold = 0;
    objc_storeStrong(&v32->_report, a18);
    v32->_avMode = a20;
    v32->_presentationMode = a21;
    v32->_video = a20 == 2;
    objc_storeStrong(&v32->_link, a17);
    objc_storeStrong(&v32->_sharePlaySystemStateObserver, a24);
    if (v165)
    {
      [(CPSystemStateObserver *)v32->_sharePlaySystemStateObserver addObserver:v32 withQueue:v32->_queue];
    }

    else
    {
      v67 = sub_100004778();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
      {
        sub_100471E94();
      }
    }

    v68 = [CPActivitySessionManager alloc];
    v69 = +[NSSet set];
    v70 = +[CSDSceneObservationManager shared];
    v71 = [v68 initWithIdentifier:v161 groupUUID:v162 activities:v69 applicationController:v159 delegate:v32 queue:v157 systemStateObserver:v165 sceneObservationManager:v70];
    activitySessionManager = v32->_activitySessionManager;
    v32->_activitySessionManager = v71;

    if ([v158 sharePlayCanEndWhenInitiatorLeaves])
    {
      v73 = [[_TtC13callservicesd36CSDActivitySessionParticipantMonitor alloc] initWithActivitySessionManager:v32->_activitySessionManager];
      activitySessionParticipantMonitor = v32->_activitySessionParticipantMonitor;
      v32->_activitySessionParticipantMonitor = v73;
    }

    if (v163)
    {
      v75 = [(CSDConversation *)v32 createStagedActivitySessionForActivity:v163];
    }

    v76 = [(CSDConversation *)v32 featureFlags];
    v77 = [v76 usesModernScreenSharingFromMessages];
    if (v164)
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    if (v78)
    {
      v79 = [(CSDConversation *)v32 screenSharingRequestsByUUID];
      v80 = [v164 UUID];
      [v79 setObject:v164 forKeyedSubscript:v80];
    }

    v81 = +[NSMutableDictionary dictionary];
    inflightAVCBlobRecoveryBlocksByIdentifier = v32->_inflightAVCBlobRecoveryBlocksByIdentifier;
    v32->_inflightAVCBlobRecoveryBlocksByIdentifier = v81;

    objc_storeStrong(&v32->_ABTestConfiguration, a27);
    [(CSDConversation *)v32 setRemoteMembers:v160];
    v83 = [v156 mutableCopy];
    lightweightMembers = v32->_lightweightMembers;
    v32->_lightweightMembers = v83;

    if (v155)
    {
      v85 = [v155 copy];
    }

    else
    {
      v85 = +[NSSet set];
    }

    pendingMembers = v32->_pendingMembers;
    v32->_pendingMembers = v85;

    v87 = +[NSMutableSet set];
    v174 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v88 = [(CSDConversation *)v32 pendingMembers];
    v89 = [v88 countByEnumeratingWithState:&v171 objects:v176 count:16];
    if (v89)
    {
      v90 = *v172;
      do
      {
        for (i = 0; i != v89; i = i + 1)
        {
          if (*v172 != v90)
          {
            objc_enumerationMutation(v88);
          }

          v92 = [*(*(&v171 + 1) + 8 * i) handle];
          [v87 addObject:v92];
        }

        v89 = [v88 countByEnumeratingWithState:&v171 objects:v176 count:16];
      }

      while (v89);
    }

    v93 = [v87 copy];
    pendingMemberHandles = v32->_pendingMemberHandles;
    v32->_pendingMemberHandles = v93;

    v95 = +[NSSet set];
    kickedMembers = v32->_kickedMembers;
    v32->_kickedMembers = v95;

    objc_storeStrong(&v32->_remotePushTokens, a15);
    v97 = +[NSMutableDictionary dictionary];
    pendingKickedMembersByIdentifier = v32->_pendingKickedMembersByIdentifier;
    v32->_pendingKickedMembersByIdentifier = v97;

    v99 = +[NSMutableSet set];
    pendingAllowedMembers = v32->_pendingAllowedMembers;
    v32->_pendingAllowedMembers = v99;

    v101 = +[NSMutableSet set];
    participantIDsChangedFromAVLessToAV = v32->_participantIDsChangedFromAVLessToAV;
    v32->_participantIDsChangedFromAVLessToAV = v101;

    v103 = +[NSSet set];
    rejectedMembers = v32->_rejectedMembers;
    v32->_rejectedMembers = v103;

    [(CSDConversation *)v32 setOtherInvitedHandles:v154];
    v105 = +[NSMutableSet set];
    highlightIdentifiers = v32->_highlightIdentifiers;
    v32->_highlightIdentifiers = v105;

    v107 = +[NSMutableArray array];
    memberHandlesAwaitingInvitesToLink = v32->_memberHandlesAwaitingInvitesToLink;
    v32->_memberHandlesAwaitingInvitesToLink = v107;

    objc_storeStrong(&v32->_idsSession, v141);
    [(CSDIDSGroupSession *)v32->_idsSession setDelegate:v32];
    v109 = objc_alloc_init(CSDFaceTimeInviteDemuxer);
    faceTimeInviteDemuxer = v32->_faceTimeInviteDemuxer;
    v32->_faceTimeInviteDemuxer = v109;

    v111 = [RTCReporting newHierarchyTokenFromParentToken:0];
    reportingHierarchyToken = v32->_reportingHierarchyToken;
    v32->_reportingHierarchyToken = v111;

    objc_initWeak(&location, v32);
    v168[0] = _NSConcreteStackBlock;
    v168[1] = 3221225472;
    v168[2] = sub_100086398;
    v168[3] = &unk_10061A548;
    objc_copyWeak(&v169, &location);
    v113 = objc_retainBlock(v168);
    avcSessionCreationBlock = v32->_avcSessionCreationBlock;
    v32->_avcSessionCreationBlock = v113;

    v166[0] = _NSConcreteStackBlock;
    v166[1] = 3221225472;
    v166[2] = sub_100086608;
    v166[3] = &unk_10061A570;
    objc_copyWeak(&v167, &location);
    v115 = objc_retainBlock(v166);
    videoDeviceControllerCreationBlock = v32->_videoDeviceControllerCreationBlock;
    v32->_videoDeviceControllerCreationBlock = v115;

    if (v32->_fromStorage || a28)
    {
      v117 = sub_100004778();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        UUID = v32->_UUID;
        *buf = 138412290;
        v178 = UUID;
        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "Requesting remote active participants for cached conversation with UUID: %@", buf, 0xCu);
      }

      [(CSDIDSGroupSession *)v32->_idsSession requestActiveParticipants];
    }

    v119 = +[NSMutableDictionary dictionary];
    virtualParticipantsByPluginName = v32->_virtualParticipantsByPluginName;
    v32->_virtualParticipantsByPluginName = v119;

    v121 = +[TUConversationProvider unknownProvider];
    provider = v32->_provider;
    v32->_provider = v121;

    if (v153)
    {
      v123 = v153;
    }

    else
    {
      v123 = +[CPApplicationPolicyManager sharedInstance];
    }

    applicationLaunchPolicyManager = v32->_applicationLaunchPolicyManager;
    v32->_applicationLaunchPolicyManager = v123;

    v125 = +[CPAudioRoutePolicyManager sharedInstance];
    audioRoutePolicyManager = v32->_audioRoutePolicyManager;
    v32->_audioRoutePolicyManager = v125;

    [(CPAudioRoutePolicyManager *)v32->_audioRoutePolicyManager addObserver:v32 withQueue:v32->_queue];
    v127 = +[NSMutableDictionary dictionary];
    audioRoutesByParticipantIdentifier = v32->_audioRoutesByParticipantIdentifier;
    v32->_audioRoutesByParticipantIdentifier = v127;

    v129 = +[NSMutableDictionary dictionary];
    pendingConversationParticipantsByIdentifier = v32->_pendingConversationParticipantsByIdentifier;
    v32->_pendingConversationParticipantsByIdentifier = v129;

    personaHandshakeBlobCreationBlock = v32->_personaHandshakeBlobCreationBlock;
    v32->_personaHandshakeBlobCreationBlock = &stru_10061A5B0;

    v132 = [(CSDConversation *)v32 localMember];
    v133 = [v132 isLightweightMember];

    if (v133)
    {
      v134 = [NSSet setWithObject:IDSRegistrationPropertySupportsCo];
      [(CSDConversation *)v32 addRequiredCapabilities:v134 requiredLackOfCapabilities:0];
    }

    if (!v32->_avMode)
    {
      v135 = [NSSet setWithObject:IDSRegistrationPropertySupportsAVLess];
      [(CSDConversation *)v32 addRequiredCapabilities:v135 requiredLackOfCapabilities:0];
    }

    v32->_sessionSwitchTimeout = 3.0;
    v136 = [[CSDConversationLocalParticipantBlobTracker alloc] initWithConversation:v32 idsGroupSession:v152 queue:v32->_queue];
    localParticipantBlobTracker = v32->_localParticipantBlobTracker;
    v32->_localParticipantBlobTracker = v136;

    v32->_screenSharingType = 0;
    v138 = +[NSMutableDictionary dictionary];
    nearbyMemberRemovalBlockByHandle = v32->_nearbyMemberRemovalBlockByHandle;
    v32->_nearbyMemberRemovalBlockByHandle = v138;

    objc_destroyWeak(&v167);
    objc_destroyWeak(&v169);
    objc_destroyWeak(&location);
  }

  return v32;
}

- (TUVideoDeviceController)videoDeviceController
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  videoDeviceController = self->_videoDeviceController;
  if (!videoDeviceController)
  {
    v5 = [(CSDConversation *)self videoDeviceControllerCreationBlock];
    v6 = v5[2]();
    v7 = self->_videoDeviceController;
    self->_videoDeviceController = v6;

    [(TUVideoDeviceController *)self->_videoDeviceController setIgnoreStartPreview:1];
    videoDeviceController = self->_videoDeviceController;
  }

  return videoDeviceController;
}

- (NSString)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CSDConversation *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(CSDConversation *)self groupUUID];
  [v3 appendFormat:@" groupUUID=%@", v5];

  v6 = [(CSDConversation *)self link];

  if (v6)
  {
    v7 = [(CSDConversation *)self link];
    [v3 appendFormat:@" link=%@", v7];
  }

  v8 = [(CSDConversation *)self messagesGroupUUID];

  if (v8)
  {
    v9 = [(CSDConversation *)self messagesGroupUUID];
    [v3 appendFormat:@" messagesGroupUUID=%@", v9];
  }

  [v3 appendFormat:@" state=%ld", -[CSDConversation state](self, "state")];
  [v3 appendFormat:@" hasReceivedLetMeInRequest=%ld", -[CSDConversation hasReceivedLetMeInRequest](self, "hasReceivedLetMeInRequest")];
  [v3 appendFormat:@" letMeInRequestState=%ld", -[CSDConversation letMeInRequestState](self, "letMeInRequestState")];
  [v3 appendFormat:@" ignoreLMIRequests=%d", -[CSDConversation ignoreLMIRequests](self, "ignoreLMIRequests")];
  [v3 appendFormat:@" avcSessionToken=%ld", -[CSDConversation avcSessionToken](self, "avcSessionToken")];
  v10 = [(CSDConversation *)self avcSessionIdentifier];
  [v3 appendFormat:@" avcSessionIdentifier=%@", v10];

  [v3 appendFormat:@" isLocallyCreated=%d", -[CSDConversation isLocallyCreated](self, "isLocallyCreated")];
  [v3 appendFormat:@" hasJoined=%d", -[CSDConversation hasJoined](self, "hasJoined")];
  [v3 appendFormat:@" isAudioInjectionAllowed=%d", -[CSDConversation isAudioInjectionAllowed](self, "isAudioInjectionAllowed")];
  [v3 appendFormat:@" isHeld=%d", -[CSDConversation isHeld](self, "isHeld")];
  [v3 appendFormat:@" isUnderlyingLinksConnected=%d", -[CSDConversation isUnderlyingLinksConnected](self, "isUnderlyingLinksConnected")];
  [v3 appendFormat:@" isUplinkMuted=%d", -[CSDConversation isUplinkMuted](self, "isUplinkMuted")];
  [v3 appendFormat:@" video=%d", -[CSDConversation isVideo](self, "isVideo")];
  [v3 appendFormat:@" isUpgradeToVideo=%d", -[CSDConversation isUpgradeToVideo](self, "isUpgradeToVideo")];
  [v3 appendFormat:@" isAudioEnabled=%d", -[CSDConversation isAudioEnabled](self, "isAudioEnabled")];
  [v3 appendFormat:@" isVideoEnabled=%d", -[CSDConversation isVideoEnabled](self, "isVideoEnabled")];
  [v3 appendFormat:@" isScreenEnabled=%d", -[CSDConversation isScreenEnabled](self, "isScreenEnabled")];
  [v3 appendFormat:@" oneToOneModeEnabled=%d", -[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled")];
  v11 = [(CSDConversation *)self localMember];
  [v3 appendFormat:@" localMember=%@", v11];

  v12 = [(CSDConversation *)self remoteMembers];
  [v3 appendFormat:@" remoteMembers=%@", v12];

  v13 = [(CSDConversation *)self localMember];
  v14 = [v13 handle];
  [v3 appendFormat:@" localMemberHandle=%@", v14];

  v15 = [(CSDConversation *)self pendingMembers];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [(CSDConversation *)self pendingMembers];
    [v3 appendFormat:@" pendingMembers=%@", v17];
  }

  v18 = [(CSDConversation *)self kickedMembers];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [(CSDConversation *)self kickedMembers];
    [v3 appendFormat:@" kickedMembers=%@", v20];
  }

  v21 = [(CSDConversation *)self rejectedMembers];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [(CSDConversation *)self rejectedMembers];
    [v3 appendFormat:@" rejectedMembers=%@", v23];
  }

  v24 = [(CSDConversation *)self otherInvitedHandles];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [(CSDConversation *)self otherInvitedHandles];
    v27 = [v26 allObjects];
    v28 = [v27 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" otherInvitedHandles=%@", v28];
  }

  v29 = [(CSDConversation *)self lightweightMembers];
  v30 = [v29 count];

  if (v30)
  {
    v31 = [(CSDConversation *)self lightweightMembers];
    [v3 appendFormat:@" lightweightMembers=%@", v31];
  }

  v32 = [(CSDConversation *)self memberIdentifiers];
  v33 = [v32 count];

  if (v33)
  {
    v34 = [(CSDConversation *)self memberIdentifiers];
    v35 = [v34 allObjects];
    v36 = [v35 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" memberIdentifiers=%@", v36];
  }

  v37 = [(CSDConversation *)self screenSharingRequests];
  v38 = [v37 count];

  if (v38)
  {
    v39 = [(CSDConversation *)self screenSharingRequests];
    v40 = [v39 allObjects];
    v41 = [v40 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" screenSharingRequests=%@", v41];
  }

  v42 = [(CSDConversation *)self activeRemoteParticipants];
  [v3 appendFormat:@" activeRemoteParticipants=%@", v42];

  v43 = [(CSDConversation *)self activeLightweightParticipants];
  v44 = [v43 count];

  if (v44)
  {
    v45 = [(CSDConversation *)self activeLightweightParticipants];
    v46 = [v45 allObjects];
    v47 = [v46 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" activeLightweightParticipants=%@", v47];
  }

  v48 = [(CSDConversation *)self report];
  [v3 appendFormat:@" report=%@", v48];

  v49 = [(CSDConversation *)self virtualParticipants];
  v50 = [v49 count];

  if (v50)
  {
    v51 = [(CSDConversation *)self virtualParticipants];
    [v3 appendFormat:@" virtualParticipants=%@", v51];
  }

  v52 = [(CSDConversation *)self provider];
  [v3 appendFormat:@" provider=%@", v52];

  v53 = [(CSDConversation *)self tuActivitySessions];
  v54 = [v53 count];

  if (v54)
  {
    v55 = [(CSDConversation *)self tuActivitySessions];
    [v3 appendFormat:@" tuActivitySessions=%@", v55];
  }

  v56 = [(CSDConversation *)self tuSystemActivitySessions];
  v57 = [v56 count];

  if (v57)
  {
    v58 = [(CSDConversation *)self tuSystemActivitySessions];
    [v3 appendFormat:@" tuSystemActivitySessions=%@", v58];
  }

  v59 = [(CSDConversation *)self handoffEligibility];

  if (v59)
  {
    v60 = [(CSDConversation *)self handoffEligibility];
    [v3 appendFormat:@" handoffEligibility=%@", v60];
  }

  v61 = [(CSDConversation *)self highlightIdentifiers];
  v62 = [v61 count];

  if (v62)
  {
    v63 = [(CSDConversation *)self highlightIdentifiers];
    v64 = [v63 allObjects];
    v65 = [v64 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" highlightIdentifiers=%@", v65];
  }

  v66 = [(CSDConversation *)self splitSessionSecondary];

  if (v66)
  {
    v67 = [(CSDConversation *)self splitSessionSecondary];
    [v3 appendFormat:@" splitSessionSecondary=%@", v67];
  }

  v68 = [(CSDConversation *)self localLightweightSecondaryMember];

  if (v68)
  {
    v69 = [(CSDConversation *)self localLightweightSecondaryMember];
    [v3 appendFormat:@" localLightweightSecondaryMember=%@", v69];
  }

  v70 = [(CSDConversation *)self invitationPreferences];

  if (v70)
  {
    v71 = [(CSDConversation *)self invitationPreferences];
    [v3 appendFormat:@" invitationPreferences=%@", v71];
  }

  [v3 appendFormat:@" avMode=%ld", -[CSDConversation avMode](self, "avMode")];
  [v3 appendFormat:@" presentationMode=%ld", -[CSDConversation presentationMode](self, "presentationMode")];
  [v3 appendFormat:@" screening=%d", -[CSDConversation isScreening](self, "isScreening")];
  v72 = objc_opt_self();
  v73 = [v72 isFromStorage];

  if (v73)
  {
    v74 = objc_opt_self();
    [v3 appendFormat:@" self.isFromStorage=%d", objc_msgSend(v74, "isFromStorage")];
  }

  if ([(CSDConversation *)self isCameraMixedWithScreen])
  {
    [v3 appendFormat:@" isCameraMixedWithScreen=%d", -[CSDConversation isCameraMixedWithScreen](self, "isCameraMixedWithScreen")];
  }

  v75 = [(CSDConversation *)self handoffContext];

  if (v75)
  {
    v76 = [(CSDConversation *)self handoffContext];
    [v3 appendFormat:@" handoffContext=%@", v76];
  }

  v77 = objc_opt_self();
  v78 = [v77 ABTestConfiguration];

  if (v78)
  {
    v79 = objc_opt_self();
    v80 = [v79 ABTestConfiguration];
    [v3 appendFormat:@" self.ABTestConfiguration=%@", v80];
  }

  [v3 appendFormat:@" screenSharingType=%ld", -[CSDConversation screenSharingType](self, "screenSharingType")];
  v81 = [(CSDConversation *)self localParticipantCluster];

  if (v81)
  {
    v82 = [(CSDConversation *)self localParticipantCluster];
    [v3 appendFormat:@" localParticipantCluster=%@", v82];
  }

  [v3 appendString:@">"];
  v83 = [v3 copy];

  return v83;
}

- (void)setProvider:(id)a3
{
  v5 = a3;
  p_provider = &self->_provider;
  provider = self->_provider;
  if (!provider || (+[TUConversationProvider unknownProvider], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(TUConversationProvider *)provider isEqual:v8], v8, v9))
  {
    objc_storeStrong(&self->_provider, a3);
  }

  v10 = [(CSDConversation *)self featureFlags];
  if ([v10 sharePlayInCallsEnabled] && -[TUConversationProvider isTelephonyWithSharePlayProvider](*p_provider, "isTelephonyWithSharePlayProvider"))
  {
    v11 = [v5 isDefaultProvider];

    if (v11)
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_provider;
        v14 = [(CSDConversation *)self UUID];
        v15 = 138412802;
        v16 = v13;
        v17 = 2112;
        v18 = v5;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[CSDConversation] Overriding conversation provider from %@ to %@, conversation: %@", &v15, 0x20u);
      }

      objc_storeStrong(p_provider, a3);
    }
  }

  else
  {
  }
}

- (void)setActiveParticipantDestinationsByIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  activeParticipantDestinationsByIdentifier = self->_activeParticipantDestinationsByIdentifier;
  self->_activeParticipantDestinationsByIdentifier = v4;
  v7 = v4;

  [(CSDConversation *)self updateParticipantsWithDestinationIdentifiers:v7];
}

- (void)setActiveLightweightParticipantDestinationsByIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  activeLightweightParticipantDestinationsByIdentifier = self->_activeLightweightParticipantDestinationsByIdentifier;
  self->_activeLightweightParticipantDestinationsByIdentifier = v4;
  v7 = v4;

  [(CSDConversation *)self updateParticipantsWithDestinationIdentifiers:v7];
}

- (id)activeParticipants
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self activeRemoteParticipants];
  v5 = [(CSDConversation *)self activeLightweightParticipants];
  v6 = [v4 setByAddingObjectsFromSet:v5];

  return v6;
}

- (NSSet)activeRemoteParticipants
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v5 = [v4 allValues];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (NSSet)activeLightweightParticipants
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
  v5 = [v4 allValues];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (BOOL)isAnyOtherAccountDeviceActive
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CSDConversation *)self activeRemoteParticipants];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isLocalAccountHandle])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSSet)screenSharingRequests
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self screenSharingRequestsByUUID];
  v5 = [v4 allValues];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (TUConversation)tuConversation
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [TUMutableConversation alloc];
  v5 = [(CSDConversation *)self UUID];
  v6 = [(CSDConversation *)self groupUUID];
  v7 = [(CSDConversation *)self provider];
  v8 = [v4 initWithUUID:v5 groupUUID:v6 provider:v7];

  [v8 setState:{-[CSDConversation state](self, "state")}];
  [v8 setHasReceivedLetMeInRequest:{-[CSDConversation hasReceivedLetMeInRequest](self, "hasReceivedLetMeInRequest")}];
  [v8 setLetMeInRequestState:{-[CSDConversation letMeInRequestState](self, "letMeInRequestState")}];
  v9 = [(CSDConversation *)self link];
  [v8 setLink:v9];

  v10 = [(CSDConversation *)self messagesGroupUUID];
  [v8 setMessagesGroupUUID:v10];

  [v8 setAvcSessionToken:{-[CSDConversation avcSessionToken](self, "avcSessionToken")}];
  [v8 setLocalCaptionToken:{-[CSDConversation avcLocalCaptionsToken](self, "avcLocalCaptionsToken")}];
  v11 = [(CSDConversation *)self avcSessionIdentifier];
  [v8 setAvcSessionIdentifier:v11];

  [v8 setAudioEnabled:{-[CSDConversation isAudioEnabled](self, "isAudioEnabled")}];
  [v8 setVideoEnabled:{-[CSDConversation isVideoEnabled](self, "isVideoEnabled")}];
  [v8 setVideoPaused:{-[CSDConversation isVideoPaused](self, "isVideoPaused")}];
  [v8 setScreenEnabled:{-[CSDConversation isScreenEnabled](self, "isScreenEnabled")}];
  [v8 setLocallyCreated:{-[CSDConversation isLocallyCreated](self, "isLocallyCreated")}];
  [v8 setHasJoined:{-[CSDConversation hasJoined](self, "hasJoined")}];
  v12 = [(CSDConversation *)self initiator];
  [v8 setInitiator:v12];

  v13 = [(CSDConversation *)self remoteMembers];
  [v8 setRemoteMembers:v13];

  v14 = [(CSDConversation *)self pendingMembers];
  [v8 setPendingMembers:v14];

  v15 = [(CSDConversation *)self kickedMembers];
  [v8 setKickedMembers:v15];

  v16 = [(CSDConversation *)self rejectedMembers];
  [v8 setRejectedMembers:v16];

  v17 = [(CSDConversation *)self otherInvitedHandles];
  [v8 setOtherInvitedHandles:v17];

  [v8 setIgnoreLMIRequests:{-[CSDConversation ignoreLMIRequests](self, "ignoreLMIRequests")}];
  v18 = [(CSDConversation *)self messagesGroupName];
  [v8 setMessagesGroupName:v18];

  [v8 setMaxVideoDecodesAllowed:{-[CSDConversation maxVideoDecodesAllowed](self, "maxVideoDecodesAllowed")}];
  v19 = [(CSDConversation *)self report];
  [v8 setReport:v19];

  v20 = [(CSDConversation *)self reportingHierarchyToken];
  [v8 setReportingHierarchyToken:v20];

  v21 = [(CSDConversation *)self reportingHierarchySubToken];
  [v8 setReportingHierarchySubToken:v21];

  v22 = [(CSDConversation *)self localMember];
  [v8 setLocalMember:v22];

  [v8 setLocalParticipantIdentifier:{-[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier")}];
  v23 = [(CSDConversation *)self featureFlags];
  LODWORD(v6) = [v23 conversationHandoffEnabled];

  if (v6)
  {
    v24 = [(CSDConversation *)self localParticipantAssociation];
    [v8 setLocalParticipantAssociation:v24];

    [v8 setOneToOneHandoffOngoing:{-[CSDConversation isOneToOneHandoffOngoing](self, "isOneToOneHandoffOngoing")}];
    v25 = [(CSDConversation *)self handoffEligibility];
    [v8 setHandoffEligibility:v25];
  }

  [v8 setOneToOneModeEnabled:{-[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled")}];
  v26 = [(CSDConversation *)self tuActivitySessions];
  [v8 setActivitySessions:v26];

  v27 = [(CSDConversation *)self tuSystemActivitySessions];
  [v8 setSystemActivitySessions:v27];

  v28 = [(CSDConversation *)self stagedActivitySession];
  [v8 setStagedActivitySession:v28];

  [v8 setVideo:{-[CSDConversation isVideo](self, "isVideo")}];
  [v8 setIsUpgradeToVideo:{-[CSDConversation isUpgradeToVideo](self, "isUpgradeToVideo")}];
  v29 = [(CSDConversation *)self virtualParticipants];
  [v8 setVirtualParticipants:v29];

  v30 = [(CSDConversation *)self invitationPreferences];
  [v8 setInvitationPreferences:v30];

  v31 = [(CSDConversation *)self lightweightMembers];
  [v8 setLightweightMembers:v31];

  [v8 setFromStorage:{-[CSDConversation isFromStorage](self, "isFromStorage")}];
  v32 = [(CSDConversation *)self invitationDate];
  [v8 setInvitationDate:v32];

  v33 = [(CSDConversation *)self failureContext];
  [v8 setConversationFailureContext:v33];

  [v8 setIsAnyOtherAccountDeviceActive:{-[CSDConversation isAnyOtherAccountDeviceActive](self, "isAnyOtherAccountDeviceActive")}];
  [v8 setAvMode:{-[CSDConversation avMode](self, "avMode")}];
  [v8 setPresentationMode:{-[CSDConversation presentationMode](self, "presentationMode")}];
  [v8 setScreening:{-[CSDConversation isScreening](self, "isScreening")}];
  [v8 setRelaying:{-[CSDConversation isRelaying](self, "isRelaying")}];
  [v8 setEndpointOnCurrentDevice:{-[CSDConversation isRelaying](self, "isRelaying") ^ 1}];
  [v8 setSpatialPersonaEnabled:{-[CSDConversation isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled")}];
  [v8 setCameraMixedWithScreen:{-[CSDConversation isCameraMixedWithScreen](self, "isCameraMixedWithScreen")}];
  [v8 setIsNearbySharePlay:{-[CSDConversation isNearbySharePlay](self, "isNearbySharePlay")}];
  [v8 setIsUnderlyingLinksConnected:{-[CSDConversation isUnderlyingLinksConnected](self, "isUnderlyingLinksConnected")}];
  v34 = [(CSDConversation *)self activeRemoteParticipants];
  v35 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v34 count]);

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v36 = [(CSDConversation *)self activeRemoteParticipants];
  v37 = [v36 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v65;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v65 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v64 + 1) + 8 * i) tuConversationParticipant];
        [v35 addObject:v41];
      }

      v38 = [v36 countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v38);
  }

  v42 = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
  v43 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v42 count]);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v44 = [(CSDConversation *)self activeLightweightParticipants];
  v45 = [v44 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v61;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v61 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = [*(*(&v60 + 1) + 8 * j) tuConversationParticipant];
        [v43 addObject:v49];
      }

      v46 = [v44 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v46);
  }

  v50 = [(CSDConversation *)self featureFlags];
  v51 = [v50 aTVHandoff];

  if ((v51 & 1) == 0)
  {
    [v35 unionSet:v43];
  }

  [v8 setActiveRemoteParticipants:v35];
  [v8 setActiveLightweightParticipants:v43];
  v52 = [(CSDConversation *)self highlightIdentifiers];
  [v8 setHighlightIdentifiers:v52];

  v53 = [(CSDConversation *)self screenSharingRequests];
  [v8 setScreenSharingRequests:v53];

  v54 = [(CSDConversation *)self supportedMediaTypes];
  [v8 setSupportedMediaTypes:v54];

  v55 = [(CSDConversation *)self handoffContext];
  [v8 setHandoffContext:v55];

  v56 = [(CSDConversation *)self screenSharingRequests];
  [v8 setScreenSharingRequests:v56];

  [v8 setScreenSharingType:{-[CSDConversation screenSharingType](self, "screenSharingType")}];
  v57 = [(CSDConversation *)self localParticipantCluster];
  [v8 setLocalParticipantCluster:v57];

  [v8 setNearbySession:{-[CSDConversation isNearbySession](self, "isNearbySession")}];
  v58 = [v8 copy];

  return v58;
}

- (id)avcSessionIdentifier
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self avcSession];
  v5 = [v4 sessionIdentifier];

  return v5;
}

- (int64_t)avcSessionToken
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self avcSession];
  v5 = [v4 sessionToken];

  return v5;
}

- (int64_t)avcLocalCaptionsToken
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self avcSession];
  v5 = [v4 localCaptionsToken];

  return v5;
}

- (unint64_t)localParticipantIdentifier
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self idsSession];
  v5 = [v4 localParticipantIdentifier];

  return v5;
}

- (int64_t)maxVideoDecodesAllowed
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self avcSession];
  v5 = [v4 maxVideoDecodesAllowed];

  return v5;
}

- (BOOL)isAudioReady
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self avcSession];
  LOBYTE(v3) = [v4 isAudioReady];

  return v3;
}

- (void)setRemoteMembers:(id)a3
{
  if (self->_remoteMembers != a3)
  {
    v4 = [a3 copy];
    remoteMembers = self->_remoteMembers;
    self->_remoteMembers = v4;

    v6 = +[NSMutableSet set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(CSDConversation *)self remoteMembers];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * v11) handle];
          [v6 addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(CSDConversation *)self setRemoteMemberHandles:v6];
    v13 = [(CSDConversation *)self delegate];
    [v13 conversation:self remoteMembersChanged:self->_remoteMembers];
  }
}

- (id)localParticipantCapabilities
{
  v3 = objc_alloc_init(TUMutableConversationParticipantCapabilities);
  [v3 setScreenSharingAvailable:1];
  [v3 setGondolaCallingAvailable:1];
  [v3 setSupportsLeaveContext:1];
  v4 = [(CSDConversation *)self featureFlags];
  [v3 setGftDowngradeToOneToOneAvailable:{objc_msgSend(v4, "gftDowngradeToOneToOne")}];

  v5 = [(CSDConversation *)self featureFlags];
  [v3 setUPlusOneScreenShareAvailable:{objc_msgSend(v5, "uPlusOneScreenSharing")}];

  v6 = [(CSDConversation *)self featureFlags];
  [v3 setUPlusNDowngradeAvailable:{objc_msgSend(v6, "uPlusNDowngrade")}];

  [v3 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
  [v3 setPersonaAvailable:TUIsPersonaAvailable()];
  [v3 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
  [v3 setVisionFeatureVersion:TUVisionFeatureVersion()];
  [v3 setNearbyFeatureVersion:TUNearbyFeatureVersion()];
  [v3 setUPlusOneAVLessAvailable:1];
  v7 = [(CSDConversation *)self featureFlags];
  [v3 setTranslationAvailable:{objc_msgSend(v7, "audioCallTranslationEnabled")}];

  v8 = [(CSDConversation *)self featureFlags];
  [(CSDConversation *)self isRelaying];
  [(CSDConversation *)self isScreenSharingInitiationAvailable];
  [v3 setSupportsRequestToScreenShare:TUIsRequestToScreenShareAvailable()];

  v9 = +[CSDMomentsController localCapabilities];
  [v3 setMomentsAvailable:{objc_msgSend(v9, "isEnabled")}];

  [v3 setPhotosSharePlayAvailable:TUIsPhotosSharePlayAvailable()];

  return v3;
}

- (id)localConversationParticipantWithData
{
  v3 = [NSMutableArray alloc];
  v4 = [(CSDConversation *)self remoteMembers];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CSDConversation *)self remoteMembers];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) handle];
        v12 = [v11 value];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(CSDConversation *)self localConversationParticipantWithDataToSendToDestinationIDs:v5];

  return v13;
}

- (id)localConversationParticipantWithDataToSendToDestinationIDs:(id)a3
{
  v4 = [(CSDConversation *)self localParticipantDataToSendToDestinationIDs:a3];
  v5 = 0;
  if ([(CSDConversation *)self localParticipantIdentifier]&& v4)
  {
    v6 = [CSDConversationParticipant alloc];
    v7 = [(CSDConversation *)self localParticipantIdentifier];
    v8 = [(CSDConversation *)self localMember];
    v9 = [v8 handle];
    v5 = [(CSDConversationParticipant *)v6 initWithIdentifier:v7 handle:v9 avcData:v4];

    [(CSDConversationParticipant *)v5 setAudioVideoMode:[(CSDConversation *)self avMode]];
    [(CSDConversationParticipant *)v5 setSpatialPersonaEnabled:[(CSDConversation *)self isSpatialPersonaEnabled]];
    v10 = [(CSDConversation *)self localParticipantCapabilities];
    [(CSDConversationParticipant *)v5 setCapabilities:v10];

    v11 = [(CSDConversation *)self localParticipantCluster];
    [(CSDConversationParticipant *)v5 setCluster:v11];

    [(CSDConversationParticipant *)v5 setIsNearbySharePlay:[(CSDConversation *)self isNearbySharePlay]];
  }

  return v5;
}

- (id)localParticipantData
{
  v3 = [NSMutableArray alloc];
  v4 = [(CSDConversation *)self remoteMembers];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CSDConversation *)self remoteMembers];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) handle];
        v12 = [v11 value];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(CSDConversation *)self localParticipantDataToSendToDestinationIDs:v5];

  return v13;
}

- (id)localParticipantDataToSendToDestinationIDs:(id)a3
{
  v4 = a3;
  if ([(CSDConversation *)self isOneToOneModeEnabled])
  {
    v5 = 2;
  }

  else if ([v4 count])
  {
    v6 = [(CSDConversation *)self faceTimeInviteDemuxer];
    if ([v6 destinationIDsCanUseV2Blobs:v4])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  v7 = [(CSDConversation *)self avcSession];
  v8 = [v7 localParticipantDataWithVersion:v5];

  return v8;
}

- (BOOL)_expanseEnabled
{
  v3 = [(CSDConversation *)self featureFlags];
  if ([v3 expanseEnabled])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(CSDConversation *)self forceExpanseEnabled];
  }

  return v4;
}

- (void)setForceExpanseEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDConversation *)self _expanseEnabled];
  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      v6 = [CPActivitySessionManager alloc];
      v7 = [(CSDConversation *)self UUID];
      v8 = [(CSDConversation *)self groupUUID];
      v9 = +[NSSet set];
      v10 = objc_alloc_init(CPApplicationController);
      v11 = [(CSDConversation *)self queue];
      v12 = [(CSDConversation *)self sharePlaySystemStateObserver];
      v13 = +[CSDSceneObservationManager shared];
      v14 = [v6 initWithIdentifier:v7 groupUUID:v8 activities:v9 applicationController:v10 delegate:self queue:v11 systemStateObserver:v12 sceneObservationManager:v13];
      [(CSDConversation *)self setActivitySessionManager:v14];
    }
  }

  else if (v5)
  {
    [(CSDConversation *)self setActivitySessionManager:0];
  }

  self->_forceExpanseEnabled = v3;
}

- (NSSet)virtualParticipants
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self virtualParticipantsByPluginName];
  v5 = [v4 allValues];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (NSSet)memberHandlesEligibleForLinkApproval
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = +[NSMutableSet set];
  v5 = [(CSDConversation *)self link];

  if (v5)
  {
    v6 = [(CSDConversation *)self link];
    v7 = [v6 invitedMemberHandles];
    v8 = [v7 mutableCopy];

    v4 = v8;
    goto LABEL_15;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(CSDConversation *)self remoteMemberHandles];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = *v21;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v20 + 1) + 8 * i);
      v15 = [v14 value];
      if ([v15 destinationIdIsPhoneNumber])
      {
      }

      else
      {
        v16 = [v14 value];
        v17 = [v16 destinationIdIsEmailAddress];

        if (!v17)
        {
          continue;
        }
      }

      [v4 addObject:v14];
    }

    v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v11);
LABEL_14:

LABEL_15:
  v18 = [v4 copy];

  return v18;
}

- (BOOL)isUplinkMuted
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self avcSession];
  LOBYTE(v3) = [v4 isUplinkMuted];

  return v3;
}

- (void)setAudioInjectionAllowed:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversation *)self featureFlags];
  if ([v6 callRecordingEnabled])
  {
  }

  else
  {
    v7 = [(CSDConversation *)self featureFlags];
    v8 = [v7 audioCallTranslationEnabled];

    if (!v8)
    {
      return;
    }
  }

  if ([(CSDConversation *)self isAudioInjectionAllowed]!= v3)
  {
    v9 = [(CSDConversation *)self isUplinkMuted];
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (v3)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (v9)
      {
        v11 = @"YES";
      }

      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting audio injection allowed to %@, isUplinkMuted: %@", &v15, 0x16u);
    }

    if (v3)
    {
      [(CSDConversation *)self setExpectedUplinkMuted:v9];
      [(CSDConversation *)self setUplinkMuted:0];
      self->_audioInjectionAllowed = v3;
    }

    else
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(CSDConversation *)self expectedUplinkMuted];
        v15 = 67109120;
        LODWORD(v16) = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resetting uplink mute to exected uplink muted %d", &v15, 8u);
      }

      self->_audioInjectionAllowed = 0;
      [(CSDConversation *)self setUplinkMuted:[(CSDConversation *)self expectedUplinkMuted]];
    }
  }
}

- (void)setIsHeld:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_isHeld != v3)
  {
    self->_isHeld = v3;
    v6 = [(CSDConversation *)self delegate];
    [v6 conversationChanged:self];
  }
}

- (BOOL)isAudioEnabled
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self expectedAudioEnabled];
  if (v4)
  {
    v5 = [(CSDConversation *)self expectedAudioEnabled];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v5 = [(CSDConversation *)self avcSession];
    v6 = [v5 isAudioEnabled];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isVideoEnabled
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self expectedVideoEnabled];
  if (v4)
  {
    v5 = [(CSDConversation *)self expectedVideoEnabled];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v5 = [(CSDConversation *)self avcSession];
    v6 = [v5 isVideoEnabled];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isScreenEnabled
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self expectedScreenEnabled];
  if (v4)
  {
    v5 = [(CSDConversation *)self expectedScreenEnabled];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v5 = [(CSDConversation *)self avcSession];
    v6 = [v5 isScreenEnabled];
  }

  v7 = v6;

  return v7;
}

- (void)addScreenSharingType:(unint64_t)a3
{
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    screenSharingType = self->_screenSharingType;
    v9 = 134218240;
    v10 = a3;
    v11 = 2048;
    v12 = screenSharingType;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding %lu to screenSharingType %lu", &v9, 0x16u);
  }

  self->_screenSharingType |= a3;
  v8 = [(CSDConversation *)self delegate];
  [v8 conversationChanged:self];
}

- (void)setIsNearbySharePlay:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting isNearbySharePlay = %@", &v9, 0xCu);
  }

  self->_isNearbySharePlay = v3;
  v8 = [(CSDConversation *)self delegate];
  [v8 conversationChanged:self];
}

- (void)handleRemoteControlStatusChanged:(int64_t)a3
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling changed remote control status: %lu", &v7, 0xCu);
  }

  switch(a3)
  {
    case 3:
      v6 = [(CSDConversation *)self avcSession];
      [v6 handleUpdatedControllingRemoteScreen:1];
      break;
    case 2:
      v6 = [(CSDConversation *)self avcSession];
      [v6 enableRemoteControlWithCursorCapture:0];
      break;
    case 1:
      v6 = [(CSDConversation *)self avcSession];
      [v6 disableRemoteControl];
      break;
    default:
      return;
  }
}

- (BOOL)isVideoPaused
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self expectedVideoPaused];
  if (v4)
  {
    v5 = [(CSDConversation *)self expectedVideoPaused];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v5 = [(CSDConversation *)self avcSession];
    v6 = [v5 isVideoPaused];
  }

  v7 = v6;

  return v7;
}

- (void)setScreenShareAttributes:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting screenShareAttributes to %@", &v8, 0xCu);
  }

  if ([(CSDConversation *)self isScreenEnabled])
  {
    v7 = [(CSDConversation *)self avcSession];
    [v7 setScreenShareAttributes:v4];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100471ED4();
    }
  }
}

- (BOOL)isAudioPaused
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self expectedAudioPaused];
  if (v4)
  {
    v5 = [(CSDConversation *)self expectedAudioPaused];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v5 = [(CSDConversation *)self avcSession];
    v6 = [v5 isAudioPaused];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isRedirectingAudio
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(CSDConversation *)self isRelaying])
  {
    return 1;
  }

  return [(CSDConversation *)self isScreening];
}

- (BOOL)isRelaying
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_relaying;
}

- (BOOL)isScreening
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_screening;
}

- (BOOL)_shouldSendSetParticipantType:(unint64_t)a3
{
  if (a3 - 1 > 1)
  {
    return 1;
  }

  v3 = [(CSDConversation *)self idsSession];
  v4 = [v3 localParticipantType] != 1;

  return v4;
}

- (void)setLocalParticipantAudioVideoMode:(unint64_t)a3 presentationMode:(unint64_t)a4
{
  v7 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    avMode = self->_avMode;
    presentationMode = self->_presentationMode;
    *buf = 134218752;
    v45 = a3;
    v46 = 2048;
    v47 = avMode;
    v48 = 2048;
    v49 = a4;
    v50 = 2048;
    v51 = presentationMode;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setLocalParticipantAudioVideoMode: %lu, _avMode: %lu, presentationMode: %lu, _presentationMode: %lu", buf, 0x2Au);
  }

  self->_avMode = a3;
  self->_presentationMode = a4;
  v11 = [(CSDConversation *)self _allMembers];
  v12 = [(CSDConversation *)self localCSDConversationParticipant];
  v13 = &_s10Foundation3URLVMa_ptr_0;
  v14 = [NSNumber numberWithInt:0];
  v15 = [(CSDConversation *)self featureFlags];
  if (![v15 controlMessageOverQREnabled])
  {
    goto LABEL_10;
  }

  v16 = [(CSDConversation *)self serverBag];
  v17 = [v16 isControlMessageOverQREnabled];

  if (v17 && [(CSDConversation *)self _shouldSendSetParticipantType:a3])
  {
    v18 = [(CSDConversation *)self localParticipant];
    v15 = sub_1000C01A0(v18);

    if (v15)
    {
      v19 = [(CSDConversation *)self groupUUID];
      v20 = [(CSDConversation *)self UUID];
      v21 = [(CSDConversation *)self invitationPreferences];
      v22 = sub_1000C026C(v15, v19, v20, v21);

      v23 = +[NSDate date];
      [v23 timeIntervalSinceReferenceDate];
      v24 = [NSNumber numberWithDouble:?];

      [v24 doubleValue];
      v26 = v25;
      v27 = [(CSDConversation *)self sequenceNumberToTime];
      v28 = [(CSDConversation *)self participantUpdateSequenceNumber];
      [(CSDConversation *)self setParticipantUpdateSequenceNumber:v28 + 1];
      v29 = [NSNumber numberWithUnsignedLongLong:v28 + 1];
      [v27 setObject:v24 forKeyedSubscript:v29];

      v30 = [(CSDConversation *)self participantUpdateSequenceNumber];
      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(CSDConversation *)self participantUpdateSequenceNumber];
        *buf = 134219010;
        v45 = a3;
        v46 = 2112;
        v47 = v24;
        v48 = 2048;
        v49 = v26;
        v50 = 2048;
        v51 = v32;
        v52 = 2112;
        v53 = v22;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "setLocalParticipantAudioVideoMode: %lu, time: %@, timestampValue: %f, participantUpdateSequenceNumber: %lu, message: %@", buf, 0x34u);
      }

      v13 = &_s10Foundation3URLVMa_ptr_0;
      goto LABEL_11;
    }

LABEL_10:
    v30 = 0;
    v22 = 0;
    v24 = v14;
LABEL_11:

    v14 = v24;
    goto LABEL_13;
  }

  v30 = 0;
  v22 = 0;
LABEL_13:
  if (a3 - 1 >= 2)
  {
    if (!a3)
    {
      v35 = [(CSDConversation *)self idsSession];
      v36 = [v22 data];
      [v35 setParticipantType:0 forParticipant:v12 members:v11 isLocalParticipant:1 withContext:v36 timestamp:v14 identifier:v30];

      v37 = sub_100004778();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Stopping session since local av mode is switching to none", buf, 2u);
      }

      [(CSDConversation *)self _stopAVCSession];
    }
  }

  else
  {
    v33 = [(CSDConversation *)self idsSession];
    v34 = [v33 localParticipantType];

    if (v34 == 1)
    {
      [(CSDConversation *)self setVideo:a3 == 2];
    }

    else
    {
      v38 = v13[59];
      v39 = a3 == 2 && [(CSDConversation *)self isVideoEnabled];
      v40 = [v38 numberWithInt:v39];
      [(CSDConversation *)self setExpectedVideoEnabled:v40];

      v41 = sub_100004778();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Rebroadcasting AVC data to other members of this group to since we are transioning to normal and setup a new AVCSession.", buf, 2u);
      }

      [(CSDConversation *)self broadcastLocalParticipantData];
      v42 = [(CSDConversation *)self idsSession];
      v43 = [v22 data];
      [v42 setParticipantType:1 forParticipant:v12 members:v11 isLocalParticipant:1 withContext:v43 timestamp:v14 identifier:v30];
    }
  }
}

- (void)registerMessagesGroupAssociation
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CSDConversation *)self UUID];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Conversation UUID: %@ asked to register messages group association", &v8, 0xCu);
  }

  v6 = [(CSDConversation *)self groupUUID];
  [(CSDConversation *)self setMessagesGroupUUID:v6];

  v7 = [(CSDConversation *)self delegate];
  [v7 conversationChanged:self];
}

- (BOOL)isVideo
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self featureFlags];
  v5 = [v4 avLessSharePlayEnabled];

  if (v5)
  {
    return [(CSDConversation *)self avMode]== 2;
  }

  else
  {
    return self->_video;
  }
}

- (int64_t)activeRemoteParticipantCountMinusEligibleAVLess
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(CSDConversation *)self activeRemoteParticipants];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    v8 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 capabilities];
        v12 = [v11 isUPlusOneAVLessAvailable];

        if (v12)
        {
          if (![v10 audioVideoMode])
          {
            ++v6;
          }
        }

        else
        {
          v8 = 0;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  v13 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v14 = [v13 count];

  if (((v6 > 0) & v8) != 0)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  return v14 - v15;
}

- (BOOL)isOneToOneModeEnabled
{
  v2 = self;
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)v2 avcSession];

  if (v4)
  {
    v5 = [(CSDConversation *)v2 avcSession];
    LOBYTE(v2) = [v5 isOneToOneModeEnabled];
    goto LABEL_68;
  }

  v6 = [(CSDConversation *)v2 featureFlags];
  v7 = [v6 conversationHandoffEnabled];

  if (v7)
  {
    v8 = [(CSDConversation *)v2 localParticipantAssociation];
    if (v8)
    {
      v9 = [(CSDConversation *)v2 activeRemoteParticipants];
      v10 = [v9 count] < 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = [(CSDConversation *)v2 localMember];
  v12 = [v11 isLightweightMember];

  v13 = [(CSDConversation *)v2 remoteMembers];
  v14 = [v13 count];

  if (v14 == 1)
  {
    v15 = v12 ^ 1;
    goto LABEL_49;
  }

  if ([(CSDConversation *)v2 state]> 1)
  {
    v15 = [(CSDConversation *)v2 activeRemoteParticipantCountMinusEligibleAVLess]== 1;
    goto LABEL_49;
  }

  v16 = [(CSDConversation *)v2 remoteMembers];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [(CSDConversation *)v2 remoteMembers];
    v19 = [(CSDConversation *)v2 localMember];
    v20 = [v19 association];
    v21 = [TUConversation mergedRemoteMembers:v18 withLocalMemberAssociation:v20 removingLocallyAssociatedMember:0];

    if ((v12 & 1) != 0 || [v21 count] != 1)
    {
      v15 = 0;
    }

    else
    {
      v22 = [(CSDConversation *)v2 lightweightMembers];
      v15 = [v22 count] == 0;
    }

    goto LABEL_49;
  }

  v23 = [(CSDConversation *)v2 featureFlags];
  if (([v23 oneToOneFaceTimeMyselfEnabled] & 1) == 0)
  {

LABEL_39:
    v15 = 0;
    goto LABEL_49;
  }

  v24 = [(CSDConversation *)v2 serverBag];
  v15 = [v24 isFaceTimeMyselfEnabled];

  if (!v15)
  {
    goto LABEL_49;
  }

  v25 = [(CSDConversation *)v2 remotePushTokens];
  v26 = [v25 count];

  if (!v26)
  {
    goto LABEL_39;
  }

  v15 = v12 ^ 1;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [(CSDConversation *)v2 remotePushTokens];
  v27 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (!v27)
  {
    goto LABEL_48;
  }

  v28 = v27;
  v60 = *v62;
  while (2)
  {
    for (i = 0; i != v28; i = i + 1)
    {
      if (*v62 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v61 + 1) + 8 * i);
      v31 = TUHandleForIDSURI();
      if (v31)
      {
        v32 = v31;
        v33 = TUCopyIDSFromIDForHandle();
        v34 = TUHandleForIDSCanonicalAddress();

        v35 = [(CSDConversation *)v2 localMember];
        v36 = [v35 handle];
        v37 = [v34 isEqualToHandle:v36];

        if ((v37 & 1) == 0)
        {
          v42 = sub_100004778();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = [v34 value];
            v44 = [(CSDConversation *)v2 localMember];
            v45 = [v44 handle];
            v46 = [v45 value];
            *buf = 138412546;
            v66 = v43;
            v67 = 2112;
            v68 = v46;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "not local handle: %@, %@", buf, 0x16u);
          }

          goto LABEL_47;
        }

        v38 = [v34 value];
        v39 = [v38 destinationIdIsPseudonym];

        if (v39)
        {
          v42 = sub_100004778();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v66 = v34;
            v47 = "handle is pseudonym: %@";
LABEL_46:
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v47, buf, 0xCu);
          }
        }

        else
        {
          v40 = [v34 value];
          v41 = [v40 destinationIdIsTemporary];

          if (!v41)
          {

            goto LABEL_35;
          }

          v42 = sub_100004778();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v66 = v34;
            v47 = "handle is temporary: %@";
            goto LABEL_46;
          }
        }

LABEL_47:

        v15 = 0;
        goto LABEL_48;
      }

      v34 = sub_100004778();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = v30;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[WARN] null handle for %@", buf, 0xCu);
      }

      v15 = 0;
LABEL_35:
    }

    v28 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_48:

LABEL_49:
  v48 = sub_100004778();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = @"NO";
    if (v15)
    {
      v50 = @"YES";
    }

    else
    {
      v50 = @"NO";
    }

    if (v10)
    {
      v49 = @"YES";
    }

    *buf = 138412546;
    v66 = v50;
    v67 = 2112;
    v68 = v49;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "meetsRemoteCountCriteria: %@, meetsParticipantCriteria: %@", buf, 0x16u);
  }

  v5 = [(CSDConversation *)v2 featureFlags];
  if (([v5 conversationOneToOneModeEnabled] & v15 & v10) == 1)
  {
    v51 = [(CSDConversation *)v2 remoteMembers];
    v52 = [v51 allObjects];
    v53 = [v52 firstObject];
    v54 = [v53 handle];
    v55 = [v54 value];
    if ([v55 destinationIdIsTemporary])
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      v56 = [(CSDConversation *)v2 link];
      if (v56)
      {
        LOBYTE(v2) = 0;
      }

      else
      {
        v57 = [(CSDConversation *)v2 provider];
        if ([v57 isTelephonyWithSharePlayProvider])
        {
          LOBYTE(v2) = 0;
        }

        else
        {
          LODWORD(v2) = ![(CSDConversation *)v2 isNearbySession];
        }
      }
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

LABEL_68:

  return v2;
}

- (BOOL)isOneToOneHandoffOngoing
{
  v3 = [(CSDConversation *)self featureFlags];
  v4 = [v3 conversationHandoffEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CSDConversation *)self remoteMembers];
  if ([v5 count] != 1)
  {

    return 0;
  }

  v6 = [(CSDConversation *)self activeRemoteParticipants];
  v7 = [v6 count];

  if (v7 != 2)
  {
    return 0;
  }

  v8 = [(CSDConversation *)self localParticipantAssociation];

  if (v8)
  {
    v9 = [(CSDConversation *)self localParticipantAssociation];
    v10 = [v9 identifier];

    if (v10 != [(CSDConversation *)self localParticipantIdentifier])
    {
      v11 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
      v12 = [NSNumber numberWithUnsignedLongLong:v10];
      v13 = [v11 objectForKeyedSubscript:v12];
      v14 = v13 != 0;

      return v14;
    }

    return 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [(CSDConversation *)self activeRemoteParticipants];
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
LABEL_12:
    v20 = 0;
    while (1)
    {
      if (*v29 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v28 + 1) + 8 * v20);
      v22 = [v21 association];

      if (v22)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v18)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

    v23 = [v21 association];
    v24 = [v23 identifier];

    if (v24 == [v21 identifier])
    {
      goto LABEL_20;
    }

    if (v24 == [(CSDConversation *)self localParticipantIdentifier])
    {
      v14 = 1;
    }

    else
    {
      v25 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
      v26 = [NSNumber numberWithUnsignedLongLong:v24];
      v27 = [v25 objectForKeyedSubscript:v26];
      v14 = v27 != 0;
    }
  }

  else
  {
LABEL_20:
    v14 = 0;
  }

  return v14;
}

- (void)addHighlightIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [NSMutableSet setWithObject:v4];

  [(CSDConversation *)self setHighlightIdentifiers:v6];
  v7 = [(CSDConversation *)self delegate];
  [v7 conversationChanged:self];
}

- (void)removeHighlightIdentifier:(id)a3
{
  v9 = a3;
  v4 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDConversation *)self highlightIdentifiers];
  v6 = [v5 containsObject:v9];

  if (v6)
  {
    v7 = [(CSDConversation *)self highlightIdentifiers];
    [v7 removeObject:v9];

    v8 = [(CSDConversation *)self delegate];
    [v8 conversationChanged:self];
  }
}

- (void)setSplitSessionSecondary:(id)a3
{
  v5 = a3;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = self->_splitSessionSecondary;
  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    objc_storeStrong(&self->_splitSessionSecondary, a3);
    if (v7)
    {
      v19 = v5;
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(CSDConversation *)self UUID];
        *buf = 138412546;
        v26 = v9;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Kicking previous participant on conversation UUID: %@ participant: %@", buf, 0x16u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [(CSDConversation *)self lightweightMembers];
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            v16 = [v15 handle];
            v17 = [(CSDConversationParticipant *)v7 handle];
            v18 = [v16 isEquivalentToHandle:v17];

            if (v18)
            {
              [(CSDConversation *)self kickMember:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v12);
      }

      v5 = v19;
    }

    [(CSDConversation *)self setSharePlayHandedOff:v5 != 0];
  }
}

- (int)presentationState
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self avcSession];
  LODWORD(v3) = [v4 presentationState];

  return v3;
}

- (void)setPresentationMode:(unint64_t)a3
{
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_presentationMode != a3)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      presentationMode = self->_presentationMode;
      v8 = 134218240;
      v9 = a3;
      v10 = 2048;
      v11 = presentationMode;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setPresentationMode: %lu from _presentationMode: %lu", &v8, 0x16u);
    }

    self->_presentationMode = a3;
  }
}

- (CGRect)presentationRect
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self avcSession];
  [v4 presentationRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setPresentationRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversation *)self avcSession];
  [v9 setPresentationRect:{x, y, width, height}];
}

- (void)setConversationGridDisplayMode:(unint64_t)a3
{
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversation *)self avcSession];
  [v6 setGridDisplayMode:a3];
}

- (void)updateLocalAspectRatios
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  [(CSDConversation *)self localPortraitAspectRatio];
  v5 = v4;
  v7 = v6;
  v8 = [(CSDConversation *)self videoDeviceController];
  [v8 setLocalPortraitAspectRatio:v5 localLandscapeAspectRatio:{v7, v7, v5}];
}

- (BOOL)isFromStorage
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_fromStorage;
}

- (void)setFromStorage:(BOOL)a3
{
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  self->_fromStorage = a3;
}

- (NSSet)memberIdentifiers
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  memberIdentifiers = self->_memberIdentifiers;

  return memberIdentifiers;
}

- (void)setMemberIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 copy];
  memberIdentifiers = self->_memberIdentifiers;
  self->_memberIdentifiers = v6;
}

- (BOOL)_addActiveParticipantIsDisallowedByGreenTea:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self featureFlags];
  if (TUGreenTeaLagunaEnabled())
  {
    presentationMode = self->_presentationMode;

    if (presentationMode == 2)
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "addActiveParticipantIsDisallowedByGreenTea for continuity session: %@", &v12, 0xCu);
      }

      v8 = [(CSDConversation *)self tuConversation];
      v9 = [v8 mergedActiveRemoteParticipants];
      if ([v9 count])
      {
        LODWORD(v10) = [v4 isPseudonym] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "addActiveParticipantIsDisallowedByGreenTea: %@", &v12, 0xCu);
  }

  v8 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  LOBYTE(v10) = [v8 count] != 0;
LABEL_13:

  return v10;
}

- (void)addActiveParticipant:(id)a3
{
  v4 = a3;
  val = self;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v86 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding active participant: %@", buf, 0xCu);
  }

  if (!_TUIsInternalInstall())
  {
LABEL_11:
    v17 = [(CSDConversation *)val activeRemoteParticipantsByIdentifier];
    v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
    v19 = [v17 objectForKeyedSubscript:v18];

    if ([v4 isLightweight])
    {
      if ([v4 audioVideoMode])
      {
        [CSDCrashReporter simulateCrashReportWithFormat:@"Attempting to add lightweight participant with invalid AVMode. Please file a bug to [FaceTime | (New Bugs)]"];
      }

      [v4 setAudioVideoMode:0];
      v20 = [(CSDConversation *)val activeLightweightParticipantsByIdentifier];
      v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
      v22 = [v20 objectForKeyedSubscript:v21];

      v23 = v22;
    }

    else
    {
      v23 = v19;
    }

    v77 = v23;
    if ([v23 audioVideoMode])
    {
      v24 = 0;
    }

    else
    {
      v24 = [v4 audioVideoMode] != 0;
    }

    if (v77)
    {
      v25 = [v77 avcData];
      v26 = [v4 avcData];
      if ([v25 isEqual:v26] & 1) != 0 || (objc_msgSend(v4, "isLightweight"))
      {

        if (!v24)
        {
          v27 = sub_100004778();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [(CSDConversation *)val UUID];
            *buf = 138412802;
            v86 = v4;
            v87 = 2112;
            v88 = v77;
            v89 = 2112;
            v90 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Conversation already contains participant %@, existing active participant: %@ with no change in AVC data or av mode: %@", buf, 0x20u);
          }

          [(CSDConversation *)val _recomputeAudioStates];
LABEL_75:
          [(CSDConversation *)val _removeMemberFromPendingMemberListForParticipant:v4];
          [(CSDConversation *)val _cancelInFlightAVCBlobRecoveryIfNecessary];
          [(CSDConversation *)val _endScreenCallIfNecessary];
          goto LABEL_76;
        }
      }

      else
      {
      }
    }

    if ([(CSDConversation *)val state]== 2 || [(CSDConversation *)val state]== 3)
    {
      [(CSDConversation *)val _emitRTCConnectionSetupEventForAddActiveParticipant:v4];
    }

    if ([v4 isLightweight])
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v29 = [(CSDConversation *)val lightweightMembers];
      v30 = [v29 countByEnumeratingWithState:&v81 objects:v91 count:16];
      if (v30)
      {
        v31 = *v82;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v82 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v81 + 1) + 8 * i);
            v34 = [v33 handle];
            v35 = [v4 handle];
            v36 = [v34 isEquivalentToHandle:v35];

            if (v36)
            {
              v37 = sub_100004778();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v86 = v33;
                v87 = 2112;
                v88 = v4;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Found member: %@ representing participant: %@", buf, 0x16u);
              }

              if ([v33 isLightweightMember])
              {
                v38 = [v33 lightweightPrimary];
                v39 = [(CSDConversation *)val localMember];
                v40 = [v39 handle];
                if ([v38 isEquivalentToHandle:v40])
                {
                  v41 = [v33 lightweightPrimaryParticipantIdentifier];
                  LODWORD(v41) = v41 == [(CSDConversation *)val localParticipantIdentifier];

                  if (v41)
                  {
                    v42 = sub_100004778();
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v86 = v4;
                      v87 = 2112;
                      v88 = v33;
                      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "AddedParticipant %@ for member: %@ is representing our localMember", buf, 0x16u);
                    }

                    [(CSDConversation *)val setSplitSessionSecondary:v4];
                  }
                }

                else
                {
                }
              }
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v81 objects:v91 count:16];
        }

        while (v30);
      }

      v43 = [(CSDConversation *)val activeLightweightParticipantsByIdentifier];
      v44 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
      [v43 setObject:v4 forKeyedSubscript:v44];

LABEL_68:
      [(CSDConversation *)val _updateParticipantTypesForAddedParticipant:v4];
      if ([(CSDConversation *)val activeRemoteParticipantCountMinusEligibleAVLess]>= 2)
      {
        [(CSDConversation *)val setOneToOneModeEnabled:0];
      }

      v57 = [(CSDConversation *)val featureFlags];
      v58 = [v57 nearbyFaceTimeEnabled];

      if (v58)
      {
        v59 = [v4 handle];
        v60 = [(CSDConversation *)val memberWithHandle:v59];

        [v60 setProposedParticipantCluster:0];
      }

      [(CSDConversation *)val _recomputeAudioStates];
      v61 = [(CSDConversation *)val activitySessionManager];
      [v61 refreshActivitySessionActiveParticipants];

      v62 = [v4 cluster];
      v63 = v62 == 0;

      if (!v63)
      {
        v64 = +[CSDReportingController sharedInstance];
        v65 = [(CSDConversation *)val tuConversation];
        [v64 participantClusterChangedForConversation:v65];
      }

      [(CSDConversation *)val setServerProvidedParticipantIdentifiers:0];
      [(CSDConversation *)val setServerProvidedLightweightParticipantIdentifiers:0];
      [(CSDConversation *)val refreshActiveParticipantsList];
      v66 = [(CSDConversation *)val serverBag];
      -[CSDConversation setRebroadcastTimeThreshold:](val, "setRebroadcastTimeThreshold:", [v66 rebroadcastTimeThreshold]);

      v67 = [(CSDConversation *)val delegate];
      [v67 conversation:val addedActiveParticipant:v4];
      [v67 conversationChanged:val];

      goto LABEL_75;
    }

    if (v77 && [v77 audioVideoMode])
    {
      v45 = sub_100004778();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = v77;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Removing active participant %@ and replacing it with one with the same identifier but a newer AVC data blob.", buf, 0xCu);
      }

      v46 = [v4 audioVideoMode];
      if (v46 != [v77 audioVideoMode])
      {
        v47 = sub_100004778();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "New participant blob's audioVideoMode is different than our current audioVideoMode. AVModeUpdates need to happen with the explicit ParticipantUpdate message. Resetting to known audioVideoMode", buf, 2u);
        }

        [v4 setAudioVideoMode:{objc_msgSend(v77, "audioVideoMode")}];
      }

      v48 = [(CSDConversation *)val avcSession];
      [v48 removeParticipant:v77];

      goto LABEL_63;
    }

    v49 = [(CSDConversation *)val deviceSupport];
    if ([v49 isGreenTea] && -[CSDConversation _addActiveParticipantIsDisallowedByGreenTea:](val, "_addActiveParticipantIsDisallowedByGreenTea:", v4))
    {
      if ([(CSDConversation *)val state]== 2)
      {

        goto LABEL_81;
      }

      v68 = [(CSDConversation *)val state]== 3;

      if (v68)
      {
LABEL_81:
        v69 = [v4 association];
        v70 = v69 == 0;

        v71 = sub_100004778();
        v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
        if (v70)
        {
          if (v72)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[WARN] GreenTea device cannot be in a call with more than one other participant, leaving", buf, 2u);
          }

          v76 = +[CSDConversationLeaveContext greenTeaLeaveContext];
          [(CSDConversation *)val leaveUsingContext:v76];
        }

        else
        {
          if (v72)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "GreenTea hand off eligible call, will leave shortly if handoff not completed", buf, 2u);
          }

          objc_initWeak(buf, val);
          v73 = [(CSDConversation *)val serverBag];
          v74 = dispatch_time(0, 1000000000 * [v73 greenTeaHandoffTimeout]);
          v75 = [(CSDConversation *)val queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10008D458;
          block[3] = &unk_10061A600;
          objc_copyWeak(&v80, buf);
          block[4] = val;
          dispatch_after(v74, v75, block);

          objc_destroyWeak(&v80);
          objc_destroyWeak(buf);
        }
      }
    }

    else
    {
    }

LABEL_63:
    if (v24)
    {
      v50 = sub_100004778();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
        v52 = [(CSDConversation *)val participantIDsChangedFromAVLessToAV];
        *buf = 138412546;
        v86 = v51;
        v87 = 2112;
        v88 = v52;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "adding %@ to participantIDsChangedFromAVLessToAV: %@", buf, 0x16u);
      }

      v53 = [(CSDConversation *)val participantIDsChangedFromAVLessToAV];
      v54 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
      [v53 addObject:v54];
    }

    v55 = [(CSDConversation *)val activeRemoteParticipantsByIdentifier];
    v56 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
    [v55 setObject:v4 forKeyedSubscript:v56];

    [(CSDConversation *)val _addRemoteParticipantToAVCSessionIfPossible:v4];
    goto LABEL_68;
  }

  v7 = +[NSUserDefaults tu_defaults];
  v77 = [v7 stringForKey:@"DefaultsRemovedURI"];

  v8 = v77;
  if (!v77)
  {
    goto LABEL_10;
  }

  v9 = [v4 handle];
  v10 = [v9 value];
  v11 = [v10 isEqualToString:v77];

  v8 = v77;
  if (!v11)
  {
LABEL_10:

    goto LABEL_11;
  }

  v12 = [(CSDConversation *)val remoteMemberHandles];
  v13 = [v4 handle];
  v14 = [v12 containsObject:v13];

  v15 = sub_100004778();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *buf = 138412290;
      v86 = v77;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "User defaults: added to remote member: %@, continue adding active participant", buf, 0xCu);
    }

    v8 = v77;
    goto LABEL_10;
  }

  if (v16)
  {
    *buf = 138412290;
    v86 = v77;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "User defaults: do not add %@ to participant", buf, 0xCu);
  }

LABEL_76:
}

- (void)removeParticipantsForMember:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversation *)self activeParticipants];
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CSDConversation *)self UUID];
    *buf = 138412802;
    v26 = v4;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing participants for member: %@ on conversation UUID: %@ participants: %@", buf, 0x20u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 handle];
        v16 = [v4 handle];
        v17 = [v15 isEquivalentToHandle:v16];

        if (v17)
        {
          v18 = [v14 identifier];
          v19 = [v14 handle];
          [(CSDConversation *)self removeParticipantWithIdentifier:v18 fromHandle:v19 withReason:0];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)setParticipantAudioVideoMode:(unint64_t)a3 presentationMode:(unint64_t)a4 forParticipant:(id)a5
{
  v8 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [(CSDConversation *)self activeRemoteParticipants];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v25 + 1) + 8 * v13);
      v15 = [v14 identifier];
      if (v15 == [v8 identifier])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v14;

    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v30 = a3;
      v31 = 2048;
      v32 = a4;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "setParticipantAudioVideoMode: audioVideoMode: %lu, presentationMode: %lu for %@", buf, 0x20u);
    }

    if (!a3)
    {
      v18 = [(CSDConversation *)self participantIDsChangedFromAVLessToAV];
      v19 = [NSNumber numberWithUnsignedLongLong:[v16 identifier]];
      v20 = [v18 containsObject:v19];

      if (v20)
      {
        v21 = sub_100004778();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [(CSDConversation *)self participantIDsChangedFromAVLessToAV];
          *buf = 138412546;
          v30 = v8;
          v31 = 2112;
          v32 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "remove participant %@ from participantIDsChangedFromAVLessToAV: %@", buf, 0x16u);
        }

        v23 = [(CSDConversation *)self participantIDsChangedFromAVLessToAV];
        v24 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 identifier]);
        [v23 removeObject:v24];
      }
    }

    [v16 setAudioVideoMode:a3];
    [v16 setPresentationMode:a4];
  }

  else
  {
LABEL_9:

LABEL_19:
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100471F80();
    }
  }
}

- (void)updateReportInfoForHandoffParticipant:(id)a3
{
  v8 = a3;
  if ([(CSDConversation *)self state]== 3)
  {
    v4 = [(CSDConversation *)self addedHandoffParticipants];
    [v4 addObject:v8];

    v5 = [(CSDConversation *)self startAddingHandoffParticipantToTime];
    v6 = +[NSDate now];
    v7 = [v8 handle];
    [v5 setObject:v6 forKey:v7];
  }
}

- (BOOL)allowsScreenSharing
{
  v3 = [(CSDConversation *)self featureFlags];
  if ([v3 supportsScreenSharing] && (TUSharePlayForceDisabled() & 1) == 0)
  {
    v5 = [(CSDConversation *)self audioRoutePolicyManager];
    if ([v5 sharePlaySupported])
    {
      v6 = [(CSDConversation *)self sharePlaySystemStateObserver];
      v4 = [v6 allowScreenSharing];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeParticipantWithIdentifier:(unint64_t)a3 fromHandle:(id)a4 withReason:(unint64_t)a5
{
  v8 = a4;
  v9 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithUnsignedInteger:a5];
    *buf = 134218498;
    v134 = a3;
    v135 = 2112;
    v136 = v8;
    v137 = 2112;
    v138 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing participant with identifier: %lu handle: %@ withReason: %@", buf, 0x20u);
  }

  v12 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v13 = [NSNumber numberWithUnsignedLongLong:a3];
  v14 = [v12 objectForKeyedSubscript:v13];

  v116 = v14;
  if (v14)
  {
    goto LABEL_5;
  }

  v15 = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
  v16 = [NSNumber numberWithUnsignedLongLong:a3];
  v17 = [v15 objectForKeyedSubscript:v16];

  v116 = v17;
  if (v17)
  {
LABEL_5:
    v18 = [v116 handle];
    v19 = [v18 isEqualToHandle:v8];

    v20 = sub_100004778();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      v113 = a5;
      if (v21)
      {
        v22 = [v116 handle];
        *buf = 134218242;
        v134 = a3;
        v135 = 2112;
        v136 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found matching handle %lu: %@", buf, 0x16u);
      }

      v23 = [(CSDConversation *)self delegate];
      v24 = [(CSDConversation *)self recentlyLeftParticipantIdentifiers];
      v25 = [NSNumber numberWithUnsignedLongLong:a3];
      [v24 addObject:v25];

      v112 = a3;
      if ([v116 isLightweight])
      {
        v26 = [(CSDConversation *)self splitSessionSecondary];

        if (v26 == v116)
        {
          v40 = sub_100004778();
          v29 = v116;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v134 = v116;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Removing splitSessionSecondary: %@", buf, 0xCu);
          }

          [(CSDConversation *)self setSplitSessionSecondary:0];
        }

        else
        {
          v27 = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
          v28 = [NSNumber numberWithUnsignedLongLong:a3];
          [v27 setObject:0 forKeyedSubscript:v28];

          v29 = v116;
        }
      }

      else
      {
        v31 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
        v32 = [NSNumber numberWithUnsignedLongLong:a3];
        [v31 setObject:0 forKeyedSubscript:v32];

        v33 = [(CSDConversation *)self avcSession];
        [v33 removeParticipant:v116];

        [(CSDConversation *)self _recomputeAudioStates];
        v34 = [(CSDConversation *)self localMember];
        v35 = [v34 lightweightPrimaryParticipantIdentifier];

        v29 = v116;
        if (v35 == a3)
        {
          v36 = sub_100004778();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [(CSDConversation *)self UUID];
            v38 = [(CSDConversation *)self localMember];
            *buf = 138412802;
            v134 = v37;
            v135 = 2112;
            v136 = v116;
            v137 = 2112;
            v138 = v38;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Leaving conversation because lightweightPrimary left on conversation UUID: %@ participant: %@ localMember: %@", buf, 0x20u);
          }

          [(CSDConversation *)self leave];
        }
      }

      if ([v29 isScreenEnabled])
      {
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v41 = [(CSDConversation *)self activeRemoteParticipants];
        v42 = [v41 countByEnumeratingWithState:&v126 objects:v132 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v127;
          v45 = 1;
          do
          {
            for (i = 0; i != v43; i = i + 1)
            {
              if (*v127 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v45 &= [*(*(&v126 + 1) + 8 * i) isScreenEnabled] ^ 1;
            }

            v43 = [v41 countByEnumeratingWithState:&v126 objects:v132 count:16];
          }

          while (v43);

          v29 = v116;
          if ((v45 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
        }

        v47 = sub_100004778();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Removing screen sharing activity sessions since screen sharing participant was removed and no other screen sharing participant is active.", buf, 2u);
        }

        v48 = [(CSDConversation *)self activitySessionManager];
        [v48 removeScreenSharingSessions];
      }

LABEL_37:
      v49 = [(CSDConversation *)self tuActivitySessions];
      [(CSDConversation *)self checkAndSetTUActivityActive:v49];

      v50 = [(CSDConversation *)self featureFlags];
      v51 = [v50 sharePlayCanEndWhenInitiatorLeaves];

      if (v51)
      {
        v52 = [(CSDConversation *)self activitySessionParticipantMonitor];
        [v52 evaluateConversation:self];
      }

      v53 = [(CSDConversation *)self featureFlags];
      v54 = [v53 conversationHandoffEnabled];

      if (v54)
      {
        v55 = [(CSDConversation *)self localParticipantAssociation];
        if (v55)
        {
          v56 = v55;
          v57 = [(CSDConversation *)self localParticipantAssociation];
          v58 = [v57 identifier];
          v59 = [v29 identifier];

          if (v58 == v59)
          {
            v60 = sub_100004778();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = [(CSDConversation *)self localParticipantIdentifier];
              *buf = 134218242;
              v134 = v61;
              v135 = 2112;
              v136 = v29;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Local participant %llu was associated with participant %@ who is now being removed. Clearing local participant association.", buf, 0x16u);
            }

            [(CSDConversation *)self setLocalParticipantAssociation:0];
          }
        }

        v109 = v23;
        v110 = self;
        v111 = v8;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v62 = [(CSDConversation *)self activeRemoteParticipants];
        v63 = [v62 countByEnumeratingWithState:&v122 objects:v131 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = *v123;
          v114 = v62;
          v115 = *v123;
          do
          {
            for (j = 0; j != v64; j = j + 1)
            {
              if (*v123 != v65)
              {
                objc_enumerationMutation(v62);
              }

              v67 = *(*(&v122 + 1) + 8 * j);
              v68 = [v67 association];
              if (v68)
              {
                v69 = v68;
                v70 = [v67 association];
                v71 = [v70 identifier];
                if (v71 != [v29 identifier])
                {

                  continue;
                }

                v72 = [v67 association];
                v73 = [v72 avcIdentifier];
                if (v73)
                {
                  v74 = [v67 association];
                  [v74 avcIdentifier];
                  v76 = v75 = v64;
                  v77 = [v29 avcIdentifier];
                  v117 = [v76 isEqualToString:v77];

                  v29 = v116;
                  v64 = v75;

                  v62 = v114;
                  v65 = v115;

                  if ((v117 & 1) == 0)
                  {
                    continue;
                  }
                }

                else
                {
                }

                v78 = sub_100004778();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  v79 = [v67 identifier];
                  v80 = [v67 identifier];
                  *buf = 134218498;
                  v134 = v79;
                  v135 = 2112;
                  v136 = v29;
                  v137 = 2048;
                  v138 = v80;
                  _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Remote participant %llu was associated with participant %@ who is now being removed. Clearing participant association for %llu.", buf, 0x20u);
                }

                [v67 setAssociation:0];
              }
            }

            v64 = [v62 countByEnumeratingWithState:&v122 objects:v131 count:16];
          }

          while (v64);
        }

        self = v110;
        v8 = v111;
        v23 = v109;
      }

      if ([(CSDConversation *)self state]== 3)
      {
        [(CSDConversation *)self continueHandoffAudioRouteForIdentifier:v112 participantLeft:1];
        if (v113 == 1)
        {
          v81 = [(CSDConversation *)self removedHandoffParticipants];
          [v81 addObject:v29];
        }
      }

      [v23 conversation:self removedActiveParticipant:v29 withLeaveReason:v113];
      [v23 conversationChanged:self];
      v82 = [(CSDConversation *)self featureFlags];
      v83 = [v82 uPlusNDowngrade];

      if (!v83)
      {
LABEL_89:
        v95 = [(CSDConversation *)self featureFlags];
        if ([v95 nearbyFaceTimeEnabled])
        {
          v96 = [(CSDConversation *)self isNearbySession];

          if (!v96)
          {
            goto LABEL_104;
          }

          v97 = [(CSDConversation *)self remoteMembers];
          v98 = [v97 count];

          if (v98 < 2)
          {
            goto LABEL_104;
          }

          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v95 = [(CSDConversation *)self remoteMembers];
          v99 = [v95 countByEnumeratingWithState:&v118 objects:v130 count:16];
          if (v99)
          {
            v100 = v99;
            v101 = v23;
            v102 = self;
            v103 = *v119;
LABEL_94:
            v104 = 0;
            while (1)
            {
              if (*v119 != v103)
              {
                objc_enumerationMutation(v95);
              }

              v105 = *(*(&v118 + 1) + 8 * v104);
              v106 = [v105 handle];
              v107 = [v106 isEqualToHandle:v8];

              if (v107)
              {
                break;
              }

              if (v100 == ++v104)
              {
                v100 = [v95 countByEnumeratingWithState:&v118 objects:v130 count:16];
                if (v100)
                {
                  goto LABEL_94;
                }

                v29 = v116;
                v23 = v101;
                goto LABEL_103;
              }
            }

            v108 = v105;

            v29 = v116;
            v23 = v101;
            if (!v108)
            {
              goto LABEL_104;
            }

            [(CSDConversation *)v102 kickMember:v108];
            v95 = v108;
          }
        }

LABEL_103:

LABEL_104:
        goto LABEL_105;
      }

      v84 = [(CSDConversation *)self activeRemoteParticipants];
      if ([v84 count])
      {
        v85 = 0;
      }

      else
      {
        v86 = [(CSDConversation *)self remoteMembers];
        if ([v86 count] == 1)
        {
          v85 = 0;
        }

        else
        {
          v85 = [(CSDConversation *)self isOneToOneModeEnabled];
        }
      }

      v87 = [(CSDConversation *)self featureFlags];
      if ([v87 oneToOneFaceTimeMyselfEnabled])
      {
        v88 = [(CSDConversation *)self serverBag];
        v89 = [v88 isFaceTimeMyselfEnabled];

        if (v89)
        {
          v90 = [(CSDConversation *)self activeRemoteParticipants];
          if (![v90 count])
          {
            v91 = [(CSDConversation *)self remoteMembers];
            if ([v91 count] > 1)
            {
              v92 = [(CSDConversation *)self isOneToOneModeEnabled];

              if ((v92 & 1) == 0)
              {
                goto LABEL_87;
              }

LABEL_82:
              v93 = sub_100004778();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
              {
                v94 = [(CSDConversation *)self remoteMembers];
                *buf = 138412290;
                v134 = v94;
                _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "No active remote participants left, remoteMembers: %@, requesting to move back to oneToOne=0", buf, 0xCu);
              }

              [(CSDConversation *)self setOneToOneModeEnabled:0];
              goto LABEL_88;
            }
          }
        }

        else if (v85)
        {
          goto LABEL_82;
        }

LABEL_87:
        [(CSDConversation *)self switchBackToOneToOneIfPossibleUsingDelay:1];
LABEL_88:
        v29 = v116;
        goto LABEL_89;
      }

      if ((v85 & 1) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_82;
    }

    v29 = v116;
    if (v21)
    {
      v30 = [v116 handle];
      *buf = 138412802;
      v134 = v30;
      v135 = 2048;
      v136 = a3;
      v137 = 2112;
      v138 = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] removeParticipantWithIdentifier:fromHandle: Not removing participant handle (%@) didn't match, with identifier %lu: %@", buf, 0x20u);
    }
  }

  else
  {
    v29 = sub_100004778();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(CSDConversation *)self UUID];
      *buf = 134218242;
      v134 = a3;
      v135 = 2112;
      v136 = v39;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] removeParticipantWithIdentifier:fromHandle: Could not find participant with identifier %lu: %@", buf, 0x16u);
    }
  }

LABEL_105:
}

- (void)updateParticipantPresentationContexts:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversation *)self avcSession];
  [v6 beginParticipantUpdates];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = [(CSDConversation *)self avcSession];
        v13 = [v11 videoQuality];
        v14 = [v11 visibility];
        v15 = [v11 prominence];
        [v11 spatialPosition];
        [v12 setVideoQuality:v13 visibility:v14 prominence:v15 spatialPosition:objc_msgSend(v11 isInCanvas:"isInCanvas") forParticipantWithIdentifier:{objc_msgSend(v11, "participantIdentifier"), v16, v17, v18, v19}];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v20 = [(CSDConversation *)self avcSession];
  [v20 commitParticipantUpdates];

  [(CSDConversation *)self setCurrentParticipantPresentationContexts:obj];
}

- (void)addVirtualParticipant:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding virtual participant: %@", &v15, 0xCu);
  }

  v7 = [(CSDConversation *)self virtualParticipantsByPluginName];
  v8 = [v4 pluginName];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    if (([v9 isEqual:v4] & 1) == 0)
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_100471FF0(v4, self, v10);
      }

      goto LABEL_9;
    }
  }

  else
  {
    v11 = [(CSDConversation *)self virtualParticipantsByPluginName];
    v12 = [v4 pluginName];
    [v11 setObject:v4 forKeyedSubscript:v12];

    v13 = [(CSDConversation *)self delegate];
    [v13 conversationChanged:self];

    v14 = [v4 pluginName];
    LODWORD(v12) = [v14 isEqualToString:@"PubSub"];

    if (v12)
    {
      v10 = [(CSDConversation *)self activitySessionManager];
      -[NSObject updateVirtualParticipantIdentifier:](v10, "updateVirtualParticipantIdentifier:", [v4 identifier]);
LABEL_9:
    }
  }
}

- (void)removeVirtualParticipant:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing virtual participant: %@", &v22, 0xCu);
  }

  v7 = [(CSDConversation *)self virtualParticipantsByPluginName];
  v8 = [v4 pluginName];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v4 pluginName];
      v22 = 138412546;
      v23 = v17;
      v24 = 2112;
      v25 = self;
      v18 = "[WARN] Could not find virtual participant for plugin %@: %@";
      v19 = v16;
      v20 = 22;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v22, v20);
    }

LABEL_13:

    goto LABEL_14;
  }

  v10 = [v9 identifier];
  if (v10 != [v4 identifier])
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v4 pluginName];
      v21 = [v4 identifier];
      v22 = 138412802;
      v23 = v17;
      v24 = 2048;
      v25 = v21;
      v26 = 2112;
      v27 = self;
      v18 = "[WARN] Trying to remove virtual participant for plugin %@ with different identifier %llu: %@";
      v19 = v16;
      v20 = 32;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v11 = [(CSDConversation *)self virtualParticipantsByPluginName];
  v12 = [v4 pluginName];
  [v11 setObject:0 forKeyedSubscript:v12];

  v13 = [(CSDConversation *)self delegate];
  [v13 conversationChanged:self];

  v14 = [v4 pluginName];
  LODWORD(v12) = [v14 isEqualToString:@"PubSub"];

  if (v12)
  {
    v15 = [(CSDConversation *)self activitySessionManager];
    [v15 updateVirtualParticipantIdentifier:0];
  }

  [(CSDConversation *)self _registerPluginsIfNecessary];
LABEL_14:
}

- (void)removeRemoteMembers:(id)a3 triggeredLocally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v92 = self;
    v93 = 1024;
    LODWORD(v94) = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "conversation: %@ remove remoteMembers triggeredLocally: %d", buf, 0x12u);
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CSDConversation *)self UUID];
    *buf = 138412546;
    v92 = v10;
    v93 = 2112;
    v94 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UUID: %@ remove remoteMembers: %@", buf, 0x16u);
  }

  v11 = [(CSDConversation *)self remoteMembers];
  v12 = [v11 mutableCopy];

  v13 = [(CSDConversation *)self lightweightMembers];
  v14 = [v13 mutableCopy];

  v15 = [(CSDConversation *)self remoteMembers];
  v16 = [v15 mutableCopy];

  v17 = [(CSDConversation *)self localMember];
  [v16 addObject:v17];

  v18 = [(CSDConversation *)self lightweightMembers];
  [v16 unionSet:v18];

  if ([v6 count])
  {
    v67 = v16;
    v65 = v4;
    v19 = [(CSDConversation *)self kickedMembers];
    [v19 setByAddingObjectsFromSet:v6];
    v21 = v20 = v12;
    [(CSDConversation *)self setKickedMembers:v21];

    [v20 minusSet:v6];
    v64 = v20;
    [(CSDConversation *)self setRemoteMembers:v20];
    [v14 minusSet:v6];
    v63 = v14;
    v22 = [v14 copy];
    [(CSDConversation *)self setLightweightMembers:v22];

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v66 = v6;
    v23 = v6;
    v24 = [v23 countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v84;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v84 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v83 + 1) + 8 * i);
          v29 = [(CSDConversation *)self localLightweightSecondaryMember];
          v30 = [v29 handle];
          v31 = [v28 handle];
          v32 = [v30 isEqual:v31];

          if (v32)
          {
            [(CSDConversation *)self setLocalLightweightSecondaryMember:0];
          }

          [(CSDConversation *)self removeParticipantsForMember:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v25);
    }

    v33 = +[NSMutableSet set];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v34 = v23;
    v35 = [v34 countByEnumeratingWithState:&v79 objects:v89 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v80;
      do
      {
        for (j = 0; j != v36; j = j + 1)
        {
          if (*v80 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v79 + 1) + 8 * j) handle];
          [v33 addObject:v39];
        }

        v36 = [v34 countByEnumeratingWithState:&v79 objects:v89 count:16];
      }

      while (v36);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v67;
    v40 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v76;
      do
      {
        for (k = 0; k != v41; k = k + 1)
        {
          if (*v76 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v75 + 1) + 8 * k);
          v45 = [v44 association];

          if (v45)
          {
            v46 = [v44 association];
            v47 = [v46 handle];
            v48 = [v33 containsObject:v47];

            if (v48)
            {
              [v44 setAssociation:0];
              [v44 setAssociationVoucher:0];
              [v44 setValidationSource:0];
            }
          }
        }

        v41 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
      }

      while (v41);
    }

    v62 = v34;

    v68 = +[NSMutableDictionary dictionary];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v69 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
    v49 = [v69 countByEnumeratingWithState:&v71 objects:v87 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v72;
      do
      {
        for (m = 0; m != v50; m = m + 1)
        {
          if (*v72 != v51)
          {
            objc_enumerationMutation(v69);
          }

          v53 = *(*(&v71 + 1) + 8 * m);
          v54 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
          v55 = [v54 objectForKeyedSubscript:v53];
          v56 = [v55 handle];
          v57 = [v33 containsObject:v56];

          if ((v57 & 1) == 0)
          {
            v58 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
            v59 = [v58 objectForKeyedSubscript:v53];
            [v68 setObject:v59 forKeyedSubscript:v53];
          }
        }

        v50 = [v69 countByEnumeratingWithState:&v71 objects:v87 count:16];
      }

      while (v50);
    }

    [(CSDConversation *)self setPendingConversationParticipantsByIdentifier:v68];
    [(CSDConversation *)self removeActivitySessionIfNecessary];
    v60 = [(CSDConversation *)self idsSession];
    [v60 removeMembers:v62 fromExistingMembers:obj activeParticipants:0 triggeredLocally:v65];

    v61 = [(CSDConversation *)self delegate];
    [v61 conversationChanged:self];

    v6 = v66;
    v16 = v67;
    v14 = v63;
    v12 = v64;
  }

  else
  {
    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v92 = self;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] No members were removed to conversation: %@", buf, 0xCu);
    }
  }
}

- (void)addRemoteMembers:(id)a3 otherInvitedHandles:(id)a4 invitationPreferences:(id)a5 addingFromLetMeIn:(BOOL)a6 triggeredLocally:(BOOL)a7
{
  v7 = a7;
  v188 = a6;
  v11 = a3;
  v12 = a4;
  v183 = a5;
  v13 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v13);

  v14 = sub_100004778();
  v192 = v7;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(CSDConversation *)self UUID];
    v16 = [(CSDConversation *)self groupUUID];
    *buf = 138413058;
    v216 = v15;
    v217 = 2112;
    v218 = v16;
    v219 = 2112;
    v220 = v11;
    v221 = 1024;
    v222 = v192;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "addRemoteMembers - UUID: %@ groupUUID: %@ remoteMembers: %@ triggeredLocally: %d", buf, 0x26u);

    v7 = v192;
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(CSDConversation *)self UUID];
    *buf = 138412546;
    v216 = v18;
    v217 = 2112;
    v218 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "addRemoteMembers - UUID: %@ otherInvitedHandles: %@", buf, 0x16u);
  }

  v182 = v12;

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(CSDConversation *)self UUID];
    *buf = 138412546;
    v216 = v20;
    v217 = 2112;
    v218 = v183;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "addRemoteMembers - UUID: %@ invitationPreferences: %@", buf, 0x16u);
  }

  v21 = [(CSDConversation *)self remoteMembers];
  v181 = [v21 mutableCopy];

  v22 = [(CSDConversation *)self remoteMembers];
  v23 = [v22 mutableCopy];

  v24 = [(CSDConversation *)self lightweightMembers];
  v25 = [v24 mutableCopy];

  v26 = [(CSDConversation *)self localMember];
  v27 = [v26 isLightweightMember];

  v28 = [(CSDConversation *)self localMember];
  v179 = v25;
  v180 = v23;
  if (v27)
  {
    v29 = v25;
  }

  else
  {
    v29 = v23;
  }

  [v29 addObject:v28];

  v185 = +[NSMutableSet set];
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  obj = v11;
  v30 = [obj countByEnumeratingWithState:&v207 objects:v214 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v208;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v208 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v207 + 1) + 8 * i);
        if (([v34 isLightweightMember] & 1) == 0)
        {
          if (v7)
          {
            v35 = [(CSDConversation *)self kickedMembers];
            v36 = [v35 containsObject:v34];

            if (v36)
            {
              [(CSDConversation *)self _allowMember:v34];
              continue;
            }
          }

          v37 = [(CSDConversation *)self remoteMemberHandles];
          v38 = [v34 handle];
          v39 = [v37 containsObject:v38];

          if (v39)
          {
            v40 = !v188;
          }

          else
          {
            v40 = 1;
          }

          if (v40)
          {
            if (v39)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v41 = sub_100004778();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v43 = [v34 handle];
              *buf = 138412290;
              v216 = v43;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Handle is part of remoteMembers list, but trying to add them as part of LMI. Allowing this handle to be added: %@", buf, 0xCu);
            }
          }

          v44 = [(CSDConversation *)self localMember];
          v45 = [v44 handle];
          v46 = [v34 handle];
          v47 = [v45 isEquivalentToHandle:v46];

          if (v47)
          {
LABEL_30:
            v48 = sub_100004778();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = [(CSDConversation *)self UUID];
              v50 = [v34 handle];
              *buf = 138412546;
              v216 = v49;
              v217 = 2112;
              v218 = v50;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Conversation UUID %@ already contains member with handle %@, filtering out.", buf, 0x16u);

              v7 = v192;
            }

            continue;
          }

          v51 = [v34 copy];
          if (v7)
          {
            v52 = [(CSDConversation *)self featureFlags];
            if ([v52 nearbyFaceTimeEnabled] && (-[CSDConversation localParticipantCluster](self, "localParticipantCluster"), (v53 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v54 = v53;
              v55 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
              v56 = [v183 isEqualToSet:v55];

              if (v56)
              {
                v52 = [(CSDConversation *)self localParticipantCluster];
                [v51 setProposedParticipantCluster:v52];
                goto LABEL_38;
              }
            }

            else
            {
LABEL_38:
            }
          }

          [v185 addObject:v51];
          if ([v34 joinedFromLetMeIn])
          {
            v57 = [v34 handle];
            v58 = [v57 value];
            v59 = [v58 destinationIdIsTemporary];

            if ((v59 & 1) == 0)
            {
              v60 = sub_100004778();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                v61 = [v34 handle];
                *buf = 138412290;
                v216 = v61;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Handle %@ should be considered for addition as an invited member handle if not kicked", buf, 0xCu);
              }

              v62 = [(CSDConversation *)self memberHandlesAwaitingInvitesToLink];
              v63 = [v34 handle];
              [v62 addObject:v63];
            }
          }

          v64 = [(CSDConversation *)self link];
          if (v64)
          {
            v65 = v64;
            v66 = [(CSDConversation *)self pendingMembers];
            v67 = [v66 containsObject:v34];

            if (v67)
            {
              v68 = sub_100004778();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v216 = v34;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "addRemoteMembers, remove pending member: %@", buf, 0xCu);
              }

              v69 = [NSSet setWithObject:v34];
              [(CSDConversation *)self removePendingMembers:v69 triggeredLocally:v192];
            }
          }

          v70 = [(CSDConversation *)self link];
          if (v70)
          {
            v71 = v70;
            v72 = [(CSDConversation *)self pendingRemoteMembers];
            v73 = [v72 containsObject:v34];

            if (v73)
            {
              v74 = sub_100004778();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                v75 = [(CSDConversation *)self pendingRemoteMembers];
                *buf = 138412546;
                v216 = v34;
                v217 = 2112;
                v218 = v75;
                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "addRemoteMembers, remove pending remote member: %@ from: %@", buf, 0x16u);
              }

              v76 = [(CSDConversation *)self pendingRemoteMembers];
              [v76 removeObject:v34];
            }
          }

          v7 = v192;
          continue;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v207 objects:v214 count:16];
    }

    while (v31);
  }

  v77 = +[NSMutableSet set];
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v78 = [(CSDConversation *)self lightweightMembers];
  v79 = [v78 countByEnumeratingWithState:&v203 objects:v213 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v204;
    do
    {
      for (j = 0; j != v80; j = j + 1)
      {
        if (*v204 != v81)
        {
          objc_enumerationMutation(v78);
        }

        [v77 addObject:*(*(&v203 + 1) + 8 * j)];
      }

      v80 = [v78 countByEnumeratingWithState:&v203 objects:v213 count:16];
    }

    while (v80);
  }

  v184 = +[NSMutableSet set];
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v83 = obj;
  v84 = [v83 countByEnumeratingWithState:&v199 objects:v212 count:16];
  v187 = v83;
  if (v84)
  {
    v85 = v84;
    v86 = *v200;
    do
    {
      v87 = 0;
      obja = v85;
      do
      {
        if (*v200 != v86)
        {
          objc_enumerationMutation(v83);
        }

        v88 = *(*(&v199 + 1) + 8 * v87);
        if ([v88 isLightweightMember])
        {
          v89 = [v88 handle];
          if ([v77 containsObject:v89])
          {

LABEL_73:
            v97 = sub_100004778();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              v98 = [(CSDConversation *)self UUID];
              v99 = [v88 handle];
              *buf = 138412546;
              v216 = v98;
              v217 = 2112;
              v218 = v99;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Conversation UUID %@ already contains member with handle %@, filtering out.", buf, 0x16u);
            }
          }

          else
          {
            [(CSDConversation *)self localMember];
            v91 = v90 = v86;
            v92 = [v91 handle];
            [v88 handle];
            v93 = self;
            v95 = v94 = v77;
            v96 = [v92 isEquivalentToHandle:v95];

            v77 = v94;
            self = v93;
            v83 = v187;

            v86 = v90;
            v85 = obja;

            if (v96)
            {
              goto LABEL_73;
            }

            v100 = [v88 copy];
            v97 = v100;
            if (v192)
            {
              [v100 setValidationSource:1];
              v101 = [(CSDConversation *)self localMember];
              v102 = [v101 handle];
              [v97 setLightweightPrimary:v102];

              [v97 setLightweightPrimaryParticipantIdentifier:[(CSDConversation *)self localParticipantIdentifier]];
              [(CSDConversation *)self setLocalLightweightSecondaryMember:v97];
            }

            [v184 addObject:v97];
          }
        }

        v87 = v87 + 1;
      }

      while (v85 != v87);
      v85 = [v83 countByEnumeratingWithState:&v199 objects:v212 count:16];
    }

    while (v85);
  }

  if ([v185 count] || objc_msgSend(v182, "count") || objc_msgSend(v184, "count"))
  {
    v170 = v77;
    v103 = [(CSDConversation *)self activitySessions];
    v104 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v103, "count")}];
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v105 = v103;
    v106 = [v105 countByEnumeratingWithState:&v195 objects:v211 count:16];
    if (v106)
    {
      v107 = v106;
      v108 = *v196;
      do
      {
        for (k = 0; k != v107; k = k + 1)
        {
          if (*v196 != v108)
          {
            objc_enumerationMutation(v105);
          }

          v110 = *(*(&v195 + 1) + 8 * k);
          v111 = [v110 activity];
          v112 = [v111 isStaticActivity];

          if ((v112 & 1) == 0)
          {
            v113 = [CSDMessagingConversationActivitySession activitySessionWithCSDConversationActivitySession:v110 fromConversation:self forStorage:0];
            [v104 addObject:v113];
          }
        }

        v107 = [v105 countByEnumeratingWithState:&v195 objects:v211 count:16];
      }

      while (v107);
    }

    v114 = [(CSDConversation *)self stagedActivitySession];
    if (v114)
    {
      v115 = [(CSDConversation *)self stagedActivitySession];
      v116 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:v115 fromConversation:self forStorage:0];
    }

    else
    {
      v116 = 0;
    }

    [v181 unionSet:v185];
    [(CSDConversation *)self setRemoteMembers:v181];
    v117 = [(CSDConversation *)self otherInvitedHandles];
    v118 = [NSMutableSet setWithSet:v117];

    [v118 unionSet:v182];
    v169 = v118;
    [(CSDConversation *)self setOtherInvitedHandles:v118];
    v119 = [(CSDConversation *)self lightweightMembers];
    v120 = [NSMutableSet setWithSet:v119];

    [v120 unionSet:v184];
    v168 = v120;
    [(CSDConversation *)self setLightweightMembers:v120];
    if (v192)
    {
      v121 = [(CSDConversation *)self activeRemoteParticipants];
      v122 = [v121 mutableCopy];

      v123 = [(CSDConversation *)self activeLightweightParticipants];
      [v122 unionSet:v123];

      v124 = [(CSDConversation *)self idsSession];
      v125 = [v124 isJoined];

      if (v125)
      {
        v126 = [(CSDConversation *)self localCSDConversationParticipant];
        [v122 addObject:v126];
      }
    }

    else
    {
      v122 = 0;
    }

    v127 = v185;
    [v127 unionSet:v184];
    objb = v180;
    [objb unionSet:v179];
    v128 = +[NSMutableArray array];
    v129 = v128;
    if (v188)
    {
      [v128 addObject:IDSRegistrationPropertySupportsModernGFT];
    }

    v130 = [(CSDConversation *)self featureFlags];
    v186 = v122;
    v167 = v127;
    if ([v130 uPlusNDowngrade])
    {

      v131 = v183;
    }

    else
    {
      v132 = v129;
      v133 = [objb count];
      v134 = &v133[[v127 count]];
      v129 = v132;

      v135 = v134 >= 2;
      v131 = v183;
      if (v135)
      {
        [(CSDConversation *)self setOneToOneModeEnabled:0];
      }
    }

    v136 = [(CSDConversation *)self highlightIdentifiers];
    v178 = [v136 anyObject];

    v171 = [(CSDConversation *)self avMode];
    v137 = [(CSDConversation *)self localMember];
    v172 = v129;
    v173 = v116;
    if (([v137 isLightweightMember] & 1) == 0)
    {
      v138 = [(CSDConversation *)self localMember];
      v139 = [v138 association];
      if (v139)
      {
        v140 = v139;
        v141 = [(CSDConversation *)self localMember];
        v142 = [v141 association];
        if ([v142 isPrimary])
        {
          v143 = [(CSDConversation *)self localMember];
          [v143 association];
          v145 = v144 = v138;
          v176 = [v145 type];

          if (v176 != 2)
          {
            v131 = v183;
            v129 = v172;
            v116 = v173;
            goto LABEL_119;
          }

          v146 = [(CSDConversation *)self localMember];
          v147 = [v146 association];
          v148 = [v147 handle];

          v149 = [(CSDConversation *)self activeRemoteParticipants];
          v193[0] = _NSConcreteStackBlock;
          v193[1] = 3221225472;
          v193[2] = sub_100090BF4;
          v193[3] = &unk_10061A628;
          v137 = v148;
          v194 = v137;
          v150 = [v149 tu_anyObjectPassingTest:v193];

          v131 = v183;
          v116 = v173;
          if (v150)
          {
            v151 = sub_100004778();
            if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "Updating avMode and invitationPreferences for member addition to match the associated participant", buf, 2u);
            }

            v171 = [v150 audioVideoMode];
          }

          v138 = v194;
          v129 = v172;
        }

        else
        {

          v116 = v173;
        }
      }
    }

LABEL_119:
    v177 = [(CSDConversation *)self idsSession];
    v175 = [(CSDConversation *)self link];
    v174 = [(CSDConversation *)self otherInvitedHandles];
    v152 = [(CSDConversation *)self report];
    v153 = v131;
    if (!v131)
    {
      v153 = [(CSDConversation *)self invitationPreferences];
    }

    v154 = [v129 copy];
    v155 = [(CSDConversation *)self messagesGroupUUID];
    v156 = [(CSDConversation *)self messagesGroupName];
    BYTE1(v166) = v192;
    LOBYTE(v166) = v188;
    [v177 addMembers:v167 toExistingMembers:objb activeParticipants:v186 activitySessions:v104 link:v175 otherInvitedHandles:v174 report:v152 invitationPreferences:v153 requiredCapabilities:v154 messagesGroupUUID:v155 messagesGroupName:v156 addingFromLetMeIn:v166 triggeredLocally:v178 highlightIdentifier:v116 stagedActivitySession:v171 avMode:?];

    v157 = v131;
    if (!v131)
    {
    }

    v158 = [(CSDConversation *)self applicationLaunchPolicyManager];
    v159 = [(CSDConversation *)self tuConversation];
    [v158 updateAllowedHandlesForConversation:v159];

    v160 = [(CSDConversation *)self delegate];
    [v160 conversation:self addedMembers:v167 triggeredLocally:v192];

    v161 = [(CSDConversation *)self featureFlags];
    if ([v161 nearbyFaceTimeEnabled])
    {
      v162 = [(CSDConversation *)self isNearbySession];

      v163 = v182;
      v164 = v173;
      if (v162)
      {
        [(CSDConversation *)self startTimeOutForNearbyMembers:v167];
      }
    }

    else
    {

      v163 = v182;
      v164 = v173;
    }

    [(CSDConversation *)self _endScreenCallIfNecessary];

    v77 = v170;
    goto LABEL_128;
  }

  v105 = sub_100004778();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v165 = [(CSDConversation *)self UUID];
    *buf = 138412290;
    v216 = v165;
    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[WARN] No new members were added to conversation UUID: %@", buf, 0xCu);
  }

  v163 = v182;
  v157 = v183;
LABEL_128:
}

- (void)updateMemberValidationSource:(id)a3 source:(int64_t)a4
{
  v34 = a3;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v49 = v34;
    v50 = 2048;
    v51 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating member validation source for: %@ to source: %ld", buf, 0x16u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v33 = self;
  v8 = [(CSDConversation *)self lightweightMembers];
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v9)
  {
LABEL_11:

    goto LABEL_31;
  }

  v10 = v9;
  v11 = *v43;
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v43 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v42 + 1) + 8 * v12);
    v14 = [v13 handle];
    v15 = [v34 handle];
    v16 = [v14 isEquivalentToHandle:v15];

    if (v16)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (!v10)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found member to update validation state: %@", buf, 0xCu);
  }

  v18 = v13;
  if (!v18)
  {
LABEL_31:
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1004720B8();
    }

    goto LABEL_33;
  }

  [v18 setValidationSource:a4];
  v35 = [v18 lightweightPrimary];
  if (!v35)
  {
    goto LABEL_30;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(CSDConversation *)v33 activitySessions];
  v19 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (!v19)
  {
    goto LABEL_29;
  }

  v20 = v19;
  v37 = *v39;
  do
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v39 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v38 + 1) + 8 * i);
      v23 = [v22 activity];
      v24 = [v23 trustedFromHandle];
      if (v24)
      {
        v25 = v24;
        v26 = [v22 activity];
        v27 = [v26 trustedFromHandle];
        [v18 handle];
        v29 = v28 = v18;
        v30 = [v27 isEquivalentToHandle:v29];

        v18 = v28;
        if (!v30)
        {
          continue;
        }

        v31 = sub_100004778();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = v28;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "We found an activity originated from now validated member %@ updating activity", buf, 0xCu);
        }

        v23 = [v22 activity];
        [v23 setTrustedFromHandle:v35];
      }
    }

    v20 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  }

  while (v20);
LABEL_29:

LABEL_30:
  v32 = [(CSDConversation *)v33 delegate];
  [v32 conversationChanged:v33];

LABEL_33:
}

- (void)updateMessagesGroupName:(id)a3
{
  [(CSDConversation *)self setMessagesGroupName:a3];
  v4 = [(CSDConversation *)self delegate];
  [v4 conversationChanged:self];
}

- (void)addPendingMembers:(id)a3 triggeredLocally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = v6;
    v44 = 1024;
    LODWORD(v45) = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "add pendingMembers: %@ triggeredLocally: %d", buf, 0x12u);
  }

  v9 = [(CSDConversation *)self pendingMembers];
  v34 = [v9 mutableCopy];

  v10 = [(CSDConversation *)self pendingMemberHandles];
  v36 = [v10 mutableCopy];

  v35 = +[NSMutableSet set];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = [v16 handle];
        if (!v17)
        {
          goto LABEL_10;
        }

        v18 = v17;
        v19 = [(CSDConversation *)self pendingMemberHandles];
        v20 = [v16 handle];
        v21 = [v19 containsObject:v20];

        if ((v21 & 1) == 0)
        {
          v25 = [TUConversationMember alloc];
          v26 = [v16 handle];
          v27 = [v16 nickname];
          v28 = [v25 initWithHandle:v26 nickname:v27];
          [v35 addObject:v28];

          v22 = [v16 handle];
          [v36 addObject:v22];
        }

        else
        {
LABEL_10:
          v22 = sub_100004778();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(CSDConversation *)self UUID];
            v24 = [v16 handle];
            *buf = 138412546;
            v43 = v23;
            v44 = 2112;
            v45 = v24;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Conversation UUID %@ already contains pending member with handle %@, filtering out from addition list.", buf, 0x16u);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v13);
  }

  [v34 unionSet:v35];
  v29 = [v34 copy];
  [(CSDConversation *)self setPendingMembers:v29];

  v30 = [v36 copy];
  [(CSDConversation *)self setPendingMemberHandles:v30];

  if ([v35 count])
  {
    v31 = +[TUCallCenter sharedInstance];
    v32 = [v31 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000914E8;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(v32, block);
  }

  v33 = [(CSDConversation *)self delegate];
  [v33 conversationChanged:self];
}

- (BOOL)shouldRespondToLetMeInRequestForMember:(id)a3
{
  v4 = a3;
  if ([v4 isLightweightMember])
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      v6 = "No need to add lightweight member to the session";
      v7 = v5;
      v8 = 2;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v22, v8);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = [(CSDConversation *)self pendingMemberHandles];
  v10 = [v4 handle];
  v11 = [v9 containsObject:v10];

  if ((v11 & 1) == 0)
  {
    v5 = sub_100004778();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v14 = [(CSDConversation *)self pendingMemberHandles];
    v22 = 138412546;
    v23 = v4;
    v24 = 2112;
    v25 = v14;
    v15 = "member: %@ is not in pendingMemberHandles: %@";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v15, &v22, 0x16u);

    goto LABEL_12;
  }

  v12 = [v4 handle];
  v13 = [(CSDConversation *)self remoteMemberForHandle:v12];

  if (v13)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v4;
      v6 = "member: %@ is in remoteMemberForHandle";
      v7 = v5;
      v8 = 12;
      goto LABEL_8;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v18 = [(CSDConversation *)self pendingRemoteMembers];
  v19 = [v18 containsObject:v4];

  if ((v19 & 1) == 0)
  {
    v5 = sub_100004778();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v14 = [(CSDConversation *)self pendingRemoteMembers];
    v22 = 138412546;
    v23 = v4;
    v24 = 2112;
    v25 = v14;
    v15 = "member: %@ is not in pendingRemoteMembers: %@";
    goto LABEL_11;
  }

  v20 = [(CSDConversation *)self pendingRemoteMembers];
  [v20 removeObject:v4];

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(CSDConversation *)self pendingRemoteMembers];
    v22 = 138412546;
    v23 = v4;
    v24 = 2112;
    v25 = v21;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Get matching memeber: %@ current pendingRemoteMembers: %@", &v22, 0x16u);
  }

  v16 = 1;
LABEL_13:

  return v16;
}

- (void)removePendingMembers:(id)a3 triggeredLocally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = v6;
    v40 = 1024;
    LODWORD(v41) = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "removePendingMembers: %@ triggeredLocally: %d", buf, 0x12u);
  }

  v9 = [(CSDConversation *)self pendingMemberHandles];
  v33 = [v9 mutableCopy];

  v10 = +[NSMutableSet set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v35;
    *&v13 = 138412546;
    v32 = v13;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        v18 = [(CSDConversation *)self pendingMemberHandles];
        v19 = [v17 handle];
        v20 = [v18 containsObject:v19];

        if (v20)
        {
          v21 = [TUConversationMember alloc];
          v22 = [v17 handle];
          v23 = [v17 nickname];
          v24 = [v21 initWithHandle:v22 nickname:v23];
          [v10 addObject:v24];

          v25 = [v17 handle];
          [v33 removeObject:v25];
        }

        else
        {
          v25 = sub_100004778();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [(CSDConversation *)self UUID];
            v27 = [v17 handle];
            *buf = v32;
            v39 = v26;
            v40 = 2112;
            v41 = v27;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Conversation with UUID %@ does not have pending member with handle %@, filtering out from removal list.", buf, 0x16u);
          }
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v14);
  }

  v28 = [(CSDConversation *)self pendingMembers];
  v29 = [v28 mutableCopy];

  [v29 minusSet:v10];
  v30 = [v29 copy];
  [(CSDConversation *)self setPendingMembers:v30];

  v31 = [v33 copy];
  [(CSDConversation *)self setPendingMemberHandles:v31];
}

- (BOOL)setConversationLink:(id)a3 allowUpdate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CSDConversation *)self link];
  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = [(CSDConversation *)self link];

    if (!v9 || !v4)
    {
      v21 = [v6 copy];
      [(CSDConversation *)self setLink:v21];
      goto LABEL_14;
    }

    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CSDConversation *)self UUID];
      v12 = [(CSDConversation *)self link];
      v13 = [v6 linkName];
      v14 = [v6 expirationDate];
      v15 = [v6 invitedMemberHandles];
      v24 = 138413314;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Link on conversation UUID %@ was already set to %@, but this setting allows for updates, setting the link name to %@, the expiration date to %@, and the invited handles to %@", &v24, 0x34u);
    }

    v16 = [v6 linkName];
    v17 = [(CSDConversation *)self link];
    [v17 setLinkName:v16];

    v18 = [v6 expirationDate];
    v19 = [v18 copy];
    v20 = [(CSDConversation *)self link];
    [v20 setExpirationDate:v19];

    v21 = [v6 invitedMemberHandles];
    v22 = [(CSDConversation *)self link];
    [v22 setInvitedMemberHandles:v21];
    goto LABEL_12;
  }

  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(CSDConversation *)self link];
    v24 = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring new link %@ as conversation link already set to %@", &v24, 0x16u);
LABEL_12:
  }

LABEL_14:

  return v8;
}

- (void)addScreenSharingRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversation *)self screenSharingRequestsByUUID];
  v7 = [v4 UUID];
  [v6 setObject:v4 forKeyedSubscript:v7];

  v8 = [(CSDConversation *)self delegate];
  [v8 conversationChanged:self];
}

- (void)removeScreenSharingRequest:(id)a3
{
  v11 = a3;
  v4 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDConversation *)self screenSharingRequests];
  v6 = [v5 containsObject:v11];

  if (v6)
  {
    v7 = [(CSDConversation *)self screenSharingRequestsByUUID];
    v8 = [v11 UUID];
    [v7 setObject:0 forKeyedSubscript:v8];

    v9 = [(CSDConversation *)self delegate];
    [v9 conversation:self removedScreenShareRequest:v11];

    v10 = [(CSDConversation *)self delegate];
    [v10 conversationChanged:self];
  }
}

- (void)fulfillLocalScreenShareRequests
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = +[NSMutableSet set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(CSDConversation *)self screenSharingRequestsByUUID];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = [(CSDConversation *)self screenSharingRequestsByUUID];
        v13 = [v12 objectForKeyedSubscript:v11];

        if ([v13 type] == 4)
        {
          [v4 addObject:v13];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v4;
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
        v20 = [(CSDConversation *)self screenSharingRequestsByUUID];
        v21 = [v19 UUID];
        [v20 setObject:0 forKeyedSubscript:v21];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v16);
  }

  v22 = sub_100004778();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v14;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Fulfilled screen sharing requests %@", buf, 0xCu);
  }

  if ([v14 count])
  {
    v23 = [(CSDConversation *)self delegate];
    [v23 conversationChanged:self];
  }
}

- (void)fulfillPendingScreenSharingRequestsForRemoteParticipant:(id)a3
{
  v28 = a3;
  v4 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = +[NSMutableSet set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [(CSDConversation *)self screenSharingRequestsByUUID];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v13 = [(CSDConversation *)self screenSharingRequestsByUUID];
        v14 = [v13 objectForKeyedSubscript:v12];

        if ([v14 type] == 1)
        {
          v15 = [v14 handle];
          v16 = [v28 handle];
          v17 = [v15 isEqualToHandle:v16];

          if (v17)
          {
            [v5 addObject:v14];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      v22 = 0;
      do
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * v22);
        v24 = [(CSDConversation *)self screenSharingRequestsByUUID];
        v25 = [v23 UUID];
        [v24 setObject:0 forKeyedSubscript:v25];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v20);
  }

  v26 = sub_100004778();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v18;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Fulfilled remote screen sharing requests %@", buf, 0xCu);
  }

  if ([v18 count])
  {
    v27 = [(CSDConversation *)self delegate];
    [v27 conversationChanged:self];
  }
}

- (void)leaveActivitySessionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "leaveActivitySessionWithUUID: %@", &v8, 0xCu);
  }

  if ([(CSDConversation *)self _expanseEnabled])
  {
    v7 = [(CSDConversation *)self activitySessionManager];
    [v7 leaveActivitySessionWithUUID:v4];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping request to remove activitySession because Expanse features are disabled. Please enable the expanseEnabled feature flag in TelephonyUtilities.", &v8, 2u);
    }
  }
}

- (void)presentDismissalAlertForActivitySessionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finding activitySession with UUID: %@ to present dismissal alert", buf, 0xCu);
  }

  v7 = [(CSDConversation *)self activitySessionManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000928AC;
  v9[3] = &unk_10061A650;
  v10 = v4;
  v8 = v4;
  [v7 presentSessionDismissalAlertForActivitySessionUUID:v8 allowingCancellation:1 completionHandler:v9];
}

- (void)removeActivitySessionWithUUID:(id)a3 usingTerminatingHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "removeActivitySessionWithUUID: %@", &v11, 0xCu);
  }

  if ([(CSDConversation *)self _expanseEnabled])
  {
    v10 = [(CSDConversation *)self activitySessionManager];
    [v10 removeActivitySessionWithUUID:v6 usingHandle:v7];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping request to remove activitySession because Expanse features are disabled. Please enable the expanseEnabled feature flag in TelephonyUtilities.", &v11, 2u);
    }
  }
}

- (void)_launchApplicationDueToActivityCreation:(id)a3
{
  v4 = a3;
  v5 = [v4 activity];
  v6 = [v5 isScreenSharingActivity];

  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not launching screen sharing app", buf, 2u);
    }

    v8 = [(CSDConversation *)self audioRoutePolicyManager];
    v9 = [v8 sharePlaySupported];

    if ((v9 & 1) == 0)
    {
      v10 = [v4 activity];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100092C0C;
      v11[3] = &unk_100619D38;
      v11[4] = self;
      [(CSDConversation *)self postUserNotificationForUnsupportedScreenSharingActivity:v10 alternateReponseHandler:v11];
    }
  }

  else
  {
    [(CSDConversation *)self _launchApplicationForActivityIfNecessary:v4];
  }
}

- (id)createActivitySession:(id)a3 isAutoStartedStagedActivity:(BOOL)a4
{
  v5 = a3;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 138412290;
    v44 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "activitySession: %@", &v43, 0xCu);
  }

  if (TUSharePlayForceDisabled())
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v43) = 0;
      v9 = "[WARN] Dropping new activitySession because Expanse features are disabled. Please upgrade to a later release to re-enable Expanse features.";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v43, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (![(CSDConversation *)self _expanseEnabled])
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v43) = 0;
      v9 = "[WARN] Dropping new activitySession because Expanse features are disabled. Please enable the expanseEnabled feature flag in TelephonyUtilities.";
      goto LABEL_17;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_51;
  }

  v8 = [v5 activity];
  v10 = [(CSDConversation *)self serverBag];
  v11 = [v8 activityIdentifier];
  v12 = [v10 localBundleIDForActivityIdentifier:v11];

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 138412290;
    v44 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BundleID override: %@", &v43, 0xCu);
  }

  if (v12)
  {
    [v8 setBundleIdentifier:v12];
  }

  if ([v8 isScreenSharingActivity])
  {
    v14 = [v8 applicationContext];
    v15 = [CSDScreenSharingActivityManager screenShareAttributesFromApplicationContext:v14];
    [v8 setScreenShareAttributes:v15];
  }

  v16 = [v8 trustedFromHandle];
  if (v16)
  {
    v17 = [v8 trustedFromHandle];
    v18 = [(CSDConversation *)self memberWithHandle:v17];
  }

  else
  {
    v18 = 0;
  }

  v20 = [v18 association];
  if (v18)
  {
    if ([v18 isLightweightMember] && objc_msgSend(v18, "isValidated") && (objc_msgSend(v18, "lightweightPrimary"), v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
    {
      v22 = sub_100004778();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v8 trustedFromHandle];
        v24 = [v18 lightweightPrimary];
        v43 = 138412802;
        v44 = v23;
        v45 = 2112;
        v46 = v18;
        v47 = 2112;
        v48 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Attempting to create Activity with trustedFromHandle: %@ on trusted lightweight member: %@. Overriding to lightweightPrimary. %@", &v43, 0x20u);
      }

      v25 = [v18 lightweightPrimary];
      v26 = [v25 copy];
      [v8 setTrustedFromHandle:v26];
    }

    else
    {
      if (!v20 || ([v20 isPrimary] & 1) != 0 || objc_msgSend(v20, "type") != 2)
      {
        goto LABEL_34;
      }

      v27 = [v20 handle];
      v25 = [(CSDConversation *)self memberWithHandle:v27];

      v28 = sub_100004778();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v8 trustedFromHandle];
        v30 = [v25 handle];
        v43 = 138412802;
        v44 = v29;
        v45 = 2112;
        v46 = v25;
        v47 = 2112;
        v48 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Attempting to create Activity with trustedFromHandle: %@ on trusted associated member: %@. Overriding to associated member. %@", &v43, 0x20u);
      }

      v26 = [v25 handle];
      v31 = [v26 copy];
      [v8 setTrustedFromHandle:v31];
    }
  }

LABEL_34:
  v32 = [(CSDConversation *)self localMember];
  if ([v32 isLightweightMember])
  {
    v33 = [v32 lightweightPrimary];
    if (v33)
    {
      v34 = [v8 originator];
      [v5 setIsLightweightPrimaryInitiated:{objc_msgSend(v34, "isEquivalentToHandle:", v33)}];
    }

    else
    {
      [v5 setIsLightweightPrimaryInitiated:0];
    }
  }

  v35 = sub_100004778();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v5 isLightweightPrimaryInitiated];
    v43 = 67109120;
    LODWORD(v44) = v36;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "isLightweightPrimaryInitiated: %d", &v43, 8u);
  }

  v37 = [(CSDConversation *)self activitySessionManager];
  v19 = [v37 createActivitySessionWithTuActivitySession:v5];

  if (v19)
  {
    if (([v8 isSystemActivity]& 1) == 0)
    {
      [(CSDConversation *)self setStagedActivitySession:0];
    }

    [(CSDConversation *)self _registerPluginsIfNecessary];
    if ([v5 isLocallyInitiated])
    {
      v38 = sub_100004778();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v19 tuConversationActivitySession];
        v43 = 138412290;
        v44 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Not launching app for locally started activity %@", &v43, 0xCu);
      }
    }

    else
    {
      [(CSDConversation *)self _launchApplicationDueToActivityCreation:v19];
    }

    v40 = [(CSDConversation *)self activitySessionManager];
    v41 = [v19 tuConversationActivitySession];
    [(CSDConversation *)self activitySessionManager:v40 activitySessionChanged:v41];

    [(CSDConversation *)self postSharePlayActivityDidChangeNotificationIfNecessary:v5];
  }

LABEL_51:

  return v19;
}

- (void)resetActivitySessionSceneAssociationsForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self activitySessionManager];
  [v5 resetSceneAssociationsForBundleID:v4];
}

- (id)createStagedActivitySessionForActivity:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to create staged activitySession for activity: %@", &v20, 0xCu);
  }

  v7 = [(CSDConversation *)self activitySessions];
  v8 = [v7 count];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to create staged activitySession since we can't replace an activitySession with a staged activitySession.", &v20, 2u);
    }

    v10 = 0;
  }

  else
  {
    v11 = +[IDSCurrentServerTime sharedInstance];
    v12 = [v11 currentServerTimeDate];

    [v4 setTimestamp:v12];
    v13 = [v4 metadata];
    [v13 saveImageToDisk];

    v14 = [[TUConversationActivitySession alloc] initWithActivity:v4 locallyInitiated:1 timestamp:v12 isFirstJoin:1];
    if ([v4 startWhenStaged])
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skipping staging activity %@", &v20, 0xCu);
      }

      v16 = [(CSDConversation *)self createActivitySession:v14 isAutoStartedStagedActivity:1];
    }

    else if ([(CSDConversation *)self setStagedActivitySessionForActivitySession:v14])
    {
      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully created staged activitySession: %@", &v20, 0xCu);
      }

      v18 = [(CSDConversation *)self delegate];
      [v18 conversationChanged:self];
    }

    v9 = v14;

    v10 = v9;
  }

  return v10;
}

- (BOOL)setStagedActivitySessionForActivitySession:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to set staged activitySession: %@", &v16, 0xCu);
  }

  v7 = [(CSDConversation *)self activitySessions];
  v8 = [v7 count];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to create staged activitySession since we can't replace an activitySession with a staged activitySession.", &v16, 2u);
    }
  }

  else
  {
    v10 = [(CSDConversation *)self serverBag];
    v11 = [v4 activity];
    v12 = [v11 activityIdentifier];
    v9 = [v10 localBundleIDForActivityIdentifier:v12];

    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BundleID override: %@", &v16, 0xCu);
    }

    if (v9)
    {
      v14 = [v4 activity];
      [v14 setBundleIdentifier:v9];
    }

    [(CSDConversation *)self setStagedActivitySession:v4];
  }

  return v8 == 0;
}

- (void)_launchApplicationsForActivitiesIfNecessary
{
  v3 = TUShouldForegroundLaunchForActivity();

  [(CSDConversation *)self _launchApplicationsForActivitiesIfNecessary:v3];
}

- (void)removeActivitySessionIfNecessary
{
  if ([(CSDConversation *)self state]== 2 || [(CSDConversation *)self state]== 3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [(CSDConversation *)self activitySessions];
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v17;
      *&v5 = 138412802;
      v15 = v5;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 activity];
          v11 = [v10 trustedFromHandle];

          if (v11 && ![(CSDConversation *)self containsMemberWithHandle:v11])
          {
            v12 = sub_100004778();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v14 = [v9 identifier];
              *buf = v15;
              v21 = v11;
              v22 = 2112;
              v23 = v14;
              v24 = 2112;
              v25 = self;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Trusted from handle %@ not found in membership list for activitySession ID: %@ on conversation %@", buf, 0x20u);
            }

            v13 = [v9 identifier];
            [(CSDConversation *)self removeActivitySessionWithUUID:v13 usingTerminatingHandle:v11];
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v6);
    }
  }
}

- (void)_launchApplicationsForActivitiesIfNecessary:(BOOL)a3
{
  v3 = a3;
  obj = [(CSDConversation *)self activitySessions];
  if ([obj count])
  {
    v5 = [(CSDConversation *)self isScreening];

    if (v5)
    {
      return;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [(CSDConversation *)self activitySessions];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (!v7)
    {
      v9 = v6;
      goto LABEL_19;
    }

    v8 = v7;
    v19 = self;
    v20 = v3;
    v9 = 0;
    v10 = *v24;
    obja = v6;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obja);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if (!v9)
        {
          goto LABEL_10;
        }

        v13 = [*(*(&v23 + 1) + 8 * i) tuConversationActivitySession];
        v14 = [v13 timestamp];
        v15 = [v9 tuConversationActivitySession];
        v16 = [v15 timestamp];
        v17 = [v14 compare:v16];

        if (v17 == 1)
        {
LABEL_10:
          v18 = v12;

          v9 = v18;
        }
      }

      v8 = [obja countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);

    if (v9)
    {
      [(CSDConversation *)v19 _launchApplicationForActivityIfNecessary:v9 shouldForeground:v20];
LABEL_19:
    }
  }

  else
  {
  }
}

- (void)_launchApplicationForActivityIfNecessary:(id)a3
{
  v4 = a3;
  [(CSDConversation *)self _launchApplicationForActivityIfNecessary:v4 shouldForeground:TUShouldForegroundLaunchForActivity()];
}

- (void)_launchApplicationForActivityIfNecessary:(id)a3 shouldForeground:(BOOL)a4
{
  v5 = a3;
  if ([(CSDConversation *)self state]== 3)
  {
    v6 = [(CSDConversation *)self sharePlaySystemStateObserver];
    v7 = [v6 allowSharePlay];

    if (v7)
    {
      v8 = [v5 tuConversationActivitySession];
      v9 = [v8 activity];
      v10 = [v9 applicationContext];

      if (!v10)
      {
        v11 = sub_100004778();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v9 UUID];
          *buf = 138412290;
          v39 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Activity with identifier %@ is missing application context.", buf, 0xCu);
        }

        goto LABEL_21;
      }

      if ([v9 isStaticActivity])
      {
        v11 = sub_100004778();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v8;
          v12 = "Not launching app for static activity: %@";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
        }
      }

      else if ([v9 isSupported])
      {
        v15 = [v8 state];
        if ((v15 - 2) >= 3)
        {
          if (v15 != 1)
          {
            v16 = [(CSDConversation *)self applicationLaunchPolicyManager];
            v17 = [(CSDConversation *)self tuConversation];
            if ([v16 shouldAutoLaunchAppForActivity:v9 onConversation:v17])
            {
              v18 = [(CSDConversation *)self audioRoutePolicyManager];
              v19 = [v18 sharePlaySupported];
            }

            else
            {
              v19 = 0;
            }

            v20 = sub_100004778();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v9 bundleIdentifier];
              v22 = [(CSDConversation *)self UUID];
              v23 = v22;
              v24 = @"NO";
              *buf = 138412802;
              v39 = v21;
              v40 = 2112;
              if (v19)
              {
                v24 = @"YES";
              }

              v41 = v22;
              v42 = 2112;
              v43 = v24;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Request to launch %@ for conversation with UUID: %@ allowing auto-launch: %@", buf, 0x20u);
            }

            if (v19)
            {
              v35[0] = _NSConcreteStackBlock;
              v35[1] = 3221225472;
              v35[2] = sub_10009435C;
              v35[3] = &unk_10061A6A0;
              v35[4] = self;
              v25 = v5;
              v36 = v25;
              v37 = v8;
              v26 = objc_retainBlock(v35);
              v27 = sub_100004778();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Attempting to launch app in background w/ PiP", buf, 2u);
              }

              [v25 permitJoin];
              v28 = [(CSDConversation *)self activitySessionManager];
              v29 = [v28 applicationLauncher];
              v32[0] = _NSConcreteStackBlock;
              v32[1] = 3221225472;
              v32[2] = sub_1000944B4;
              v32[3] = &unk_10061A6C8;
              v33 = v25;
              v34 = v26;
              v30 = v26;
              [v29 launchAppForActivitySession:v33 options:1 completion:v32];
            }

            else
            {
              [CSDAnalyticsReporter sendManualLaunchNeededEventWithActivitySession:v8];
              v31 = [(CSDConversation *)self delegate];
              [v31 conversation:self appLaunchState:1 forActivitySession:v8];
            }

            goto LABEL_22;
          }

          v11 = sub_100004778();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v8;
            v12 = "Not launching app as the activitySession has already been joined: %@";
            goto LABEL_20;
          }
        }

        else
        {
          v11 = sub_100004778();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v8;
            v12 = "Not launching app as we are not in an eligible activitySession state: %@";
            goto LABEL_20;
          }
        }
      }

      else
      {
        v11 = sub_100004778();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v8;
          v12 = "Not launching app for unsupported activity: %@";
          goto LABEL_20;
        }
      }

LABEL_21:

LABEL_22:
      goto LABEL_23;
    }

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Not launching app as SharePlay is not allowed";
      goto LABEL_11;
    }
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Not launching app as we are not joined into this conversation";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    }
  }

LABEL_23:
}

- (NSSet)activitySessions
{
  v2 = [(CSDConversation *)self activitySessionManager];
  v3 = [v2 activitySessions];
  v4 = [v3 copy];

  return v4;
}

- (NSSet)tuActivitySessions
{
  v2 = [(CSDConversation *)self activitySessionManager];
  v3 = [v2 tuActivitySessions];

  return v3;
}

- (id)tuSystemActivitySessions
{
  v2 = [(CSDConversation *)self activitySessionManager];
  v3 = [v2 tuSystemActivitySessions];

  return v3;
}

- (CGSize)localPortraitAspectRatio
{
  v2 = [CUTWeakLinkClass() mainDisplay];
  [v2 bounds];
  if (v3 <= v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v3 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = TUBinaryGCD();
  v8 = v5 / v7;
  v9 = v6 / v7;

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)stopContentSharingSession
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(CSDConversation *)self activitySessions];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    *&v5 = 138412290;
    v14 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 activity];
        if ([v10 isScreenSharingActivity])
        {
          v11 = [v9 tuConversationActivitySession];
          v12 = [v11 isLocallyInitiated];

          if (!v12)
          {
            continue;
          }

          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = v9;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found locally initiated screen sharing activity session %@, ending session", buf, 0xCu);
          }

          v10 = [v9 identifier];
          [(CSDConversation *)self removeActivitySessionWithUUID:v10 usingTerminatingHandle:0];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }
}

- (BOOL)_joinIsDisallowedByGreenTeaWithContext:(id)a3
{
  v5 = a3;
  v6 = [(CSDConversation *)self featureFlags];
  if (TUGreenTeaLagunaEnabled() && ![v5 avMode])
  {
    v3 = [v5 presentationMode];

    if (v3 == 2)
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(CSDConversation *)self tuConversation];
        v18 = [v17 mergedRemoteMembers];
        v19 = [v18 count];
        v20 = @"NO";
        if (v19 > 1)
        {
          v20 = @"YES";
        }

        v23 = 138412290;
        v24 = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Returning Join Disallowed for Green Tea Laguna Conversation: %@", &v23, 0xCu);
      }

      v7 = [(CSDConversation *)self tuConversation];
      v21 = [v7 mergedRemoteMembers];
      v14 = [v21 count] > 1;

      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CSDConversation *)self isVideo];
    if ((v8 & 1) != 0 || ([v5 provider], v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "isDefaultProvider") & 1) == 0))
    {
      v11 = v8 ^ 1;
      v8 = [(CSDConversation *)self remoteMembers];
      v12 = [v8 count];
      v10 = @"NO";
      if (v12 > 1)
      {
        v10 = @"YES";
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
      v10 = @"YES";
      v11 = 1;
    }

    v23 = 138412290;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning Join Disallowed for Green Tea Conversation: %@", &v23, 0xCu);
    if (v9)
    {
    }

    if (v11)
    {
    }
  }

  v13 = [(CSDConversation *)self isVideo];
  if ((v13 & 1) != 0 || ([v5 provider], v7 = objc_claimAutoreleasedReturnValue(), (-[NSObject isDefaultProvider](v7, "isDefaultProvider") & 1) == 0))
  {
    v15 = [(CSDConversation *)self remoteMembers];
    v14 = [v15 count] > 1;

    if (v13)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_26:

LABEL_27:
  return v14;
}

- (void)joinUsingContext:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v109 = self;
    v110 = 2112;
    v111 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Joining CSDConversation self: %@ context: %@", buf, 0x16u);
  }

  v7 = [v4 participantCluster];
  localParticipantCluster = self->_localParticipantCluster;
  self->_localParticipantCluster = v7;

  v9 = [(CSDConversation *)self serverBag];
  -[CSDConversation setRebroadcastTimeThreshold:](self, "setRebroadcastTimeThreshold:", [v9 rebroadcastTimeThreshold]);

  [(CSDConversation *)self setFailureContext:0];
  v10 = [(CSDConversation *)self delegate];
  v11 = [(CSDConversation *)self messagesGroupUUID];
  [v4 setMessagesGroupUUID:v11];

  v12 = [(CSDConversation *)self messagesGroupName];
  [v4 setMessagesGroupName:v12];

  if (!+[TUConversationManager allowsVideo])
  {
LABEL_6:
    [v4 setVideoEnabled:0];
    goto LABEL_8;
  }

  v13 = [(CSDConversation *)self featureFlags];
  if ([v13 groupFacetimeAsAServiceEnabled])
  {
    v14 = [v4 provider];
    v15 = [v14 supportsVideo];

    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_8:
  v16 = +[CSDMomentsController localCapabilities];
  [v4 setMomentsAvailable:{objc_msgSend(v16, "isEnabled")}];

  [v4 setPersonaAvailable:TUIsPersonaAvailable()];
  v17 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  [v4 setInitiator:{objc_msgSend(v17, "count") == 0}];

  v18 = [(CSDConversation *)self featureFlags];
  v19 = [v18 avLessSharePlayEnabled];

  if (v19)
  {
    -[CSDConversation setAvMode:](self, "setAvMode:", [v4 avMode]);
    if ([(CSDConversation *)self avMode])
    {
      -[CSDConversation setVideo:](self, "setVideo:", [v4 avMode] == 2);
    }

    -[CSDConversation setPresentationMode:](self, "setPresentationMode:", [v4 presentationMode]);
    if (![v4 avMode] && objc_msgSend(v4, "isVideo"))
    {
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_100472164();
      }
    }

    if ([v4 avMode] && objc_msgSend(v4, "presentationMode"))
    {
      v21 = sub_100004778();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1004721CC();
      }
    }

    if (![v4 avMode] && !objc_msgSend(v4, "presentationMode"))
    {
      v22 = sub_100004778();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_100472234();
      }
    }
  }

  else
  {
    -[CSDConversation setVideo:](self, "setVideo:", [v4 isVideo]);
  }

  v23 = [(CSDConversation *)self featureFlags];
  if ([v23 usesModernScreenSharingFromMessages])
  {
    v24 = [v4 screenSharingRequest];

    if (!v24)
    {
      goto LABEL_31;
    }

    v23 = [v4 screenSharingRequest];
    v25 = [(CSDConversation *)self screenSharingRequestsByUUID];
    v26 = [v4 screenSharingRequest];
    v27 = [v26 UUID];
    [v25 setObject:v23 forKeyedSubscript:v27];
  }

LABEL_31:
  self->_spatialPersonaEnabled = [v4 isSpatialPersonaEnabled];
  v28 = [(CSDConversation *)self localMember];
  [v4 setLightweight:{objc_msgSend(v28, "isLightweightMember")}];

  v29 = [(CSDConversation *)self deviceSupport];
  if ([v29 isGreenTea])
  {
    v30 = [(CSDConversation *)self _joinIsDisallowedByGreenTeaWithContext:v4];

    if (v30)
    {
      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1004722D8(self);
      }

      [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:519];
      goto LABEL_113;
    }
  }

  else
  {
  }

  v32 = [(CSDConversation *)self invitationPreferences];
  if ([(NSSet *)v32 count])
  {
    goto LABEL_41;
  }

  v33 = [v4 invitationPreferences];
  if (![v33 count] || -[CSDConversation hasJoined](self, "hasJoined"))
  {

LABEL_41:
    goto LABEL_42;
  }

  v60 = [(CSDConversation *)self isLocallyCreated];

  if (v60)
  {
    v61 = sub_100004778();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [v4 invitationPreferences];
      *buf = 138412290;
      v109 = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Copying invitation preferences to locally-created conversation from join context: %@", buf, 0xCu);
    }

    v63 = [v4 invitationPreferences];
    v64 = [v63 copy];
    [(CSDConversation *)self setInvitationPreferences:v64];

    v32 = [(CSDConversation *)self featureFlags];
    if (![(NSSet *)v32 nearbyFaceTimeEnabled])
    {
      goto LABEL_41;
    }

    v65 = [(CSDConversation *)self invitationPreferences];
    v66 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
    v67 = [v65 isEqualToSet:v66];

    if (v67)
    {
      v68 = [NSSet setWithObject:IDSRegistrationPropertySupportsNearbyFaceTime];
      [(CSDConversation *)self addRequiredCapabilities:v68 requiredLackOfCapabilities:0];

      v69 = [v4 participantCluster];

      if (v69)
      {
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v32 = self->_remoteMembers;
        v70 = [(NSSet *)v32 countByEnumeratingWithState:&v102 objects:v107 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v103;
          do
          {
            for (i = 0; i != v71; i = i + 1)
            {
              if (*v103 != v72)
              {
                objc_enumerationMutation(v32);
              }

              v74 = *(*(&v102 + 1) + 8 * i);
              v75 = [v4 participantCluster];
              [v74 setProposedParticipantCluster:v75];
            }

            v71 = [(NSSet *)v32 countByEnumeratingWithState:&v102 objects:v107 count:16];
          }

          while (v71);
        }

        goto LABEL_41;
      }
    }
  }

LABEL_42:
  self->_isNearbySharePlay = [v4 isNearbySharePlay];
  if ([v4 isLightweight])
  {
    v34 = sub_100004778();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(CSDConversation *)self localMember];
      *buf = 138412290;
      v109 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Bypassing AVCSession creation because localMember is lightweight %@", buf, 0xCu);
    }

    [(CSDConversation *)self setState:2];
    [(CSDConversation *)self _startIDSSessionWithContext:v4];
    goto LABEL_112;
  }

  if (![(CSDConversation *)self state])
  {
    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(CSDConversation *)self idsSession];
      v40 = [v39 idsDestination];
      *buf = 138412290;
      v109 = v40;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Creating CSDAVCSession with transport token %@", buf, 0xCu);
    }

    v41 = [(CSDConversation *)self isOneToOneModeEnabled];
    v42 = [(CSDConversation *)self featureFlags];
    if (([v42 conversationHandoffEnabled] & 1) == 0)
    {

      goto LABEL_89;
    }

    v43 = [v4 participantAssociation];

    if (!v43)
    {
      goto LABEL_89;
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v44 = [(CSDConversation *)self activeRemoteParticipants];
    v45 = [v44 countByEnumeratingWithState:&v98 objects:v106 count:16];
    v46 = v45 != 0;
    if (v45)
    {
      v47 = v45;
      v94 = v45 != 0;
      v95 = v41;
      v96 = v10;
      v97 = self;
      v48 = 0;
      v49 = *v99;
      do
      {
        for (j = 0; j != v47; j = j + 1)
        {
          if (*v99 != v49)
          {
            objc_enumerationMutation(v44);
          }

          v51 = *(*(&v98 + 1) + 8 * j);
          v52 = [v51 identifier];
          v53 = [v4 participantAssociation];
          v54 = [v53 identifier];

          if (v52 == v54)
          {
            v55 = [v51 avcIdentifier];
            v56 = [v55 copy];
            v57 = [v4 participantAssociation];
            [v57 setAvcIdentifier:v56];

            v48 = 1;
          }
        }

        v47 = [v44 countByEnumeratingWithState:&v98 objects:v106 count:16];
      }

      while (v47);

      if ((v48 & 1) == 0)
      {
        v46 = 0;
        v10 = v96;
        self = v97;
        v41 = v95;
        if (!v95)
        {
          goto LABEL_89;
        }

        goto LABEL_115;
      }

      v44 = [v4 participantAssociation];
      self = v97;
      [(CSDConversation *)v97 setLocalParticipantAssociation:v44];
      v10 = v96;
      v46 = v94;
      v41 = v95;
    }

    if (!v41)
    {
      goto LABEL_89;
    }

LABEL_115:
    v90 = [(CSDConversation *)self activeRemoteParticipants];
    v91 = [v90 count];

    v92 = !v46;
    if (v91 < 2)
    {
      v92 = 1;
    }

    if (v92)
    {
      v41 = 1;
    }

    else
    {
      v93 = sub_100004778();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "This device is joining a U+1 FaceTime call to complete a handoff from a different participant, setting oneToOneModeEnabled to NO.", buf, 2u);
      }

      [v4 setOneToOneModeEnabled:0];
      v41 = 0;
    }

LABEL_89:
    v76 = [(CSDConversation *)self featureFlags];
    v77 = [v76 conversationOneToOneModeEnabled];

    if (v77)
    {
      [(CSDConversation *)self updateLocalAspectRatios];
    }

    v78 = [(CSDConversation *)self featureFlags];
    v79 = [v78 uplevelFTAEnabled];

    if (v79)
    {
      -[CSDConversation setIsUpgradeToVideo:](self, "setIsUpgradeToVideo:", [v4 isUpgradeToVideo]);
    }

    if ([(CSDConversation *)self avMode])
    {
      -[CSDConversation setVideoEnabled:](self, "setVideoEnabled:", [v4 isVideoEnabled]);
    }

    v80 = [(CSDConversation *)self setupNewAVCSession:v41];
    [(CSDConversation *)self setAvcSession:v80];

    v81 = [(CSDConversation *)self avcSession];
    v82 = [(CSDConversation *)self localParticipantCluster];
    [v81 setLocalParticipantCluster:v82];

    [(CSDConversation *)self _recomputeAudioStates];
    [(CSDConversation *)self setAvcSessionInProgress:0];
    [(CSDConversation *)self setExpectedAudioEnabled:0];
    [(CSDConversation *)self setExpectedVideoEnabled:0];
    [(CSDConversation *)self setExpectedVideoPaused:0];
    [(CSDConversation *)self setExpectedScreenEnabled:0];
    v83 = [(CSDConversation *)self avcSession];

    v84 = sub_100004778();
    v85 = v84;
    if (!v83)
    {
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        sub_10047229C();
      }

      [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:502];
      goto LABEL_112;
    }

    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v86 = [(CSDConversation *)self avcSession];
      *buf = 138412290;
      v109 = v86;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Created CSDAVCSession %@", buf, 0xCu);
    }

    if ([v4 wantsStagingArea])
    {
      [(CSDConversation *)self setState:1];
      if ([v4 representsTransitionFromPending])
      {
        -[CSDConversation setVideoEnabled:](self, "setVideoEnabled:", [v4 isVideoEnabled]);
      }

      v87 = sub_100004778();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Not joining IDS group session because wantsStagingArea is true, instead moving to preparing state", buf, 2u);
      }

      goto LABEL_111;
    }

    if ([(CSDConversation *)self avMode])
    {
      goto LABEL_107;
    }

    goto LABEL_108;
  }

  if ([(CSDConversation *)self state]== 1)
  {
    if ([(CSDConversation *)self avMode])
    {
      v36 = [(CSDConversation *)self featureFlags];
      if ([v36 conversationHandoffEnabled])
      {
        v37 = [(CSDConversation *)self localParticipantAssociation];

        if (!v37)
        {
LABEL_53:
          -[CSDConversation setVideoEnabled:](self, "setVideoEnabled:", [v4 isVideoEnabled]);
LABEL_107:
          -[CSDConversation setVideoPaused:](self, "setVideoPaused:", [v4 isVideoPaused]);
          goto LABEL_108;
        }

        v36 = [(CSDConversation *)self localParticipantAssociation];
        [v4 setParticipantAssociation:v36];
      }

      goto LABEL_53;
    }

LABEL_108:
    [(CSDConversation *)self setState:2];
    [(CSDConversation *)self _startIDSSessionWithContext:v4];
    v88 = [(CSDConversation *)self featureFlags];
    v89 = [v88 avLessSharePlayEnabled];

    if (v89)
    {
      -[CSDConversation setAvMode:](self, "setAvMode:", [v4 avMode]);
    }

    v87 = [v4 participantAssociation];
    [(CSDConversation *)self continueHandoffAudioRouteForIdentifier:[v87 identifier] participantLeft:0];
LABEL_111:

LABEL_112:
    [v10 conversationChanged:self];
    goto LABEL_113;
  }

  v58 = sub_100004778();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [(CSDConversation *)self UUID];
    *buf = 138412290;
    v109 = v59;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[WARN] Not joining conversation because it isn't waiting or preparing: %@", buf, 0xCu);
  }

LABEL_113:
}

- (void)updateLocalParticipantInfo
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self localParticipantBlobTracker];
  [v4 invalidateLocalParticipantBlobWantsDeliveryOverPush:0];
}

- (void)broadcastLocalParticipantData
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self avcSession];

  if (v4)
  {
    v7 = [(CSDConversation *)self localParticipantBlobTracker];
    [v7 invalidateLocalParticipantBlobWantsDeliveryOverPush:1];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CSDConversation *)self UUID];
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Not sending local participant data, no AVCSession: %@", buf, 0xCu);
    }
  }
}

- (void)startAudio
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CSDConversation *)self UUID];
    v10 = 138413058;
    v11 = v5;
    v12 = 1024;
    v13 = [(CSDConversation *)self isAudioReady];
    v14 = 1024;
    v15 = [(CSDConversation *)self isAudioPaused];
    v16 = 1024;
    v17 = [(CSDConversation *)self isAudioEnabled];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requested to mark conversation as audioReady UUID: %@ audioReady: %d audioPaused: %d audioEnabled: %d", &v10, 0x1Eu);
  }

  [(CSDConversation *)self _addParticipantsWaitingToBeAddedToAVCSession];
  if ([(CSDConversation *)self avMode])
  {
    if ([(CSDConversation *)self state]== 2 || [(CSDConversation *)self state]== 3)
    {
      v6 = [(CSDConversation *)self avcSession];
      [v6 setAudioReady:1];

      [(CSDConversation *)self _startAVCSessionIfNecessary];
      return;
    }

    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CSDConversation *)self UUID];
      v10 = 138412290;
      v11 = v8;
      v9 = "[WARN] Not starting audio for conversation because it isn't joining/joined: %@";
      goto LABEL_11;
    }
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CSDConversation *)self UUID];
      v10 = 138412290;
      v11 = v8;
      v9 = "[WARN] Not starting audio for conversation because avmode is .none %@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v10, 0xCu);
    }
  }
}

- (BOOL)supportsLeaveContext
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CSDConversation *)self activeRemoteParticipants];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (v6)
        {
          v8 = [*(*(&v10 + 1) + 8 * i) capabilities];
          v6 = [v8 supportsLeaveContext];
        }

        else
        {
          v6 = 0;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)leaveWithReason:(unint64_t)a3
{
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:a3];
  [(CSDConversation *)self leaveUsingContext:v6];
}

- (void)leaveUsingContext:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CSDConversation *)self UUID];
    *buf = 138412290;
    v62 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "leaveUsingContext: self UUID: %@", buf, 0xCu);
  }

  [(CSDConversation *)self setUplinkMuted:1];
  [(CSDConversation *)self setAudioEnabled:0];
  [(CSDConversation *)self setVideoEnabled:0];
  v8 = [(CSDConversation *)self delegate];
  v9 = [(CSDConversation *)self tuConversation];
  v10 = [v9 mergedActiveRemoteParticipants];

  v11 = [(CSDConversation *)self tuConversation];
  v12 = [v11 mergedRemoteMembers];

  if ([(CSDConversation *)self state]== 2 || [(CSDConversation *)self state]== 3)
  {
    v48 = v4;
    v13 = v10;
    [(CSDConversation *)self setState:4];
    [(CSDConversation *)self _beginTimeoutForLeavingConversationWithReason:@"Calling [CSDConversation leave]"];
    [(CSDConversation *)self setUplinkMuted:1];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v14 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
    v15 = [v14 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v56;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v55 + 1) + 8 * i);
          v20 = [(CSDConversation *)self avcSession];
          [v20 setDownlinkMuted:1 forParticipantWithIdentifier:{objc_msgSend(v19, "unsignedLongLongValue")}];
        }

        v16 = [v14 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v16);
    }

    [(CSDConversation *)self setSplitSessionSecondary:0];
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(CSDConversation *)self idsSession];
      *buf = 138412290;
      v62 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Leaving CSDIDSGroupSession: %@", buf, 0xCu);
    }

    v23 = sub_100004778();
    v10 = v13;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(CSDConversation *)self supportsLeaveContext];
      v25 = @"NO";
      if (v24)
      {
        v25 = @"YES";
      }

      *buf = 138412290;
      v62 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Conversation participants support leave context: %@", buf, 0xCu);
    }

    v26 = +[TUCallScreenShareAttributes defaultAttributes];
    [(CSDConversation *)self setScreenEnabled:0 attributes:v26];

    v27 = [(CSDConversation *)self idsSession];
    v4 = v48;
    if ([(CSDConversation *)self supportsLeaveContext])
    {
      v28 = v48;
    }

    else
    {
      v28 = 0;
    }

    [v27 leaveGroupSessionWithContext:v28];

    [(CSDConversation *)self stopContentSharingSession];
    [(CSDConversation *)self destroyScreenCapturePickerIfNecessary];
    [(CSDConversation *)self resetConversation];
    goto LABEL_22;
  }

  if ([(CSDConversation *)self state]== 1)
  {
    [(CSDConversation *)self setState:0];
    [(CSDConversation *)self setAvcSession:0];
    [(CSDConversation *)self setAvcSessionInProgress:0];
    v29 = +[TUCallScreenShareAttributes defaultAttributes];
    [(CSDConversation *)self setScreenEnabled:0 attributes:v29];

LABEL_22:
    [v8 conversationChanged:self];
    goto LABEL_23;
  }

  if (![(CSDConversation *)self state])
  {
    v30 = [(CSDConversation *)self link];
    if (v30)
    {

      goto LABEL_29;
    }

    if (([v12 count] != 1 || objc_msgSend(v10, "count") != 1) && !-[CSDConversation isNearbySession](self, "isNearbySession"))
    {
      goto LABEL_29;
    }

    v49 = v4;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v33 = [(CSDConversation *)self activeRemoteParticipants:v12];
    v34 = [v33 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (!v34)
    {
      goto LABEL_49;
    }

    v35 = v34;
    v36 = *v52;
LABEL_37:
    v37 = 0;
    while (1)
    {
      if (*v52 != v36)
      {
        objc_enumerationMutation(v33);
      }

      v38 = *(*(&v51 + 1) + 8 * v37);
      v39 = [v38 activeIDSDestination];
      if (v39)
      {
        v40 = v39;
      }

      else
      {
        v41 = [(CSDConversation *)self remoteMembers];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100096938;
        v50[3] = &unk_10061A6F0;
        v50[4] = v38;
        v42 = [v41 tu_anyObjectPassingTest:v50];

        v40 = [v42 idsDestination];

        if (!v40)
        {
          v40 = sub_100004778();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v43 = [(CSDConversation *)self UUID];
            *buf = 138412290;
            v62 = v43;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[WARN] No IDS destination to send decline message: %@", buf, 0xCu);
          }

          goto LABEL_44;
        }
      }

      [v8 conversation:self sendDeclineMessageToParticipantDestination:v40];
LABEL_44:

      if (v35 == ++v37)
      {
        v44 = [v33 countByEnumeratingWithState:&v51 objects:v59 count:16];
        v35 = v44;
        if (!v44)
        {
LABEL_49:

          v45 = +[TUCallScreenShareAttributes defaultAttributes];
          [(CSDConversation *)self setScreenEnabled:0 attributes:v45];

          v4 = v49;
          v12 = v46;
          v10 = v47;
          goto LABEL_23;
        }

        goto LABEL_37;
      }
    }
  }

LABEL_29:
  v31 = sub_100004778();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(CSDConversation *)self UUID];
    *buf = 138412290;
    v62 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] Not leaving conversation because it isn't joining/joined: %@", buf, 0xCu);
  }

LABEL_23:
}

- (void)kickMember:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSDConversation *)self UUID];
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Kicking member on conversation UUID: %@ member: %@", buf, 0x16u);
  }

  v7 = [(CSDConversation *)self activeParticipants];
  v8 = [v7 allObjects];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100096BA8;
  v15[3] = &unk_10061A718;
  v9 = v4;
  v16 = v9;
  v10 = [v8 tu_firstObjectPassingTest:v15];

  if (v10)
  {
    v11 = [(CSDConversation *)self pendingKickedMembersByIdentifier];
    v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 identifier]);
    [v11 setObject:v9 forKeyedSubscript:v12];
  }

  v13 = [(CSDConversation *)self idsSession];
  [v13 kickMember:v9];

  v14 = [NSSet setWithObject:v9];
  [(CSDConversation *)self removeRemoteMembers:v14 triggeredLocally:1];
}

- (void)_allowMember:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self pendingAllowedMembers];
  [v5 addObject:v4];

  v6 = [(CSDConversation *)self idsSession];
  [v6 allowMember:v4];
}

- (void)_recomputeAudioStates
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self featureFlags];
  v5 = [v4 nearbyFaceTimeEnabled];

  v6 = sub_100004778();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Nearby FaceTime not enabled, skipping recomputing audio states", buf, 2u);
    }

    goto LABEL_28;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Recomputing audio states for participants", buf, 2u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(CSDConversation *)self activeRemoteParticipants];
  v8 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    LODWORD(v10) = 0;
    v11 = *v38;
    while (1)
    {
      v12 = 0;
      v31 = v9;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        v14 = [v13 cluster];
        if (v14)
        {
          v15 = v14;
          v16 = [v13 cluster];
          if ([v16 type] == 1)
          {
            [v13 cluster];
            v17 = v11;
            v10 = v18 = v10;
            v19 = [(CSDConversation *)self localParticipantCluster];
            v20 = [v10 isEqual:v19];

            LODWORD(v10) = v18;
            v11 = v17;
            v9 = v31;

            LODWORD(v10) = v10 + (v20 & 1);
            goto LABEL_14;
          }
        }

        v20 = 0;
LABEL_14:
        v21 = [(CSDConversation *)self avcSession];
        [v21 setPlaybackSynchronizationGroupMember:v20 & 1 forParticipantWithIdentifier:{objc_msgSend(v13, "identifier")}];

        v22 = [(CSDConversation *)self avcSession];
        [v22 setDownlinkMuted:v20 & 1 forParticipantWithIdentifier:{objc_msgSend(v13, "identifier")}];

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (!v9)
      {
        v10 = v10;
        goto LABEL_20;
      }
    }
  }

  v10 = 0;
LABEL_20:

  if (![(CSDConversation *)self isOneToOneModeEnabled])
  {
    v23 = [(CSDConversation *)self activeRemoteParticipants];
    v24 = [v23 count];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = [(CSDConversation *)self activeRemoteParticipants];
    v25 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v6);
          }

          v29 = *(*(&v33 + 1) + 8 * i);
          v30 = [(CSDConversation *)self avcSession];
          [v30 setAudioEnabled:v24 != v10 forParticipantWithIdentifier:{objc_msgSend(v29, "identifier")}];
        }

        v26 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v26);
    }

LABEL_28:
  }
}

- (id)reducedInfoMembers:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) handle];
        v11 = [CXHandle handleWithTUHandle:v10];

        v12 = [TUConversationMember alloc];
        v13 = [v11 tuHandle];
        v14 = [v12 initWithHandle:v13];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isRepresentedByRemoteMembers:(id)a3 andLink:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversation *)self remoteMembers];
  v10 = [(CSDConversation *)self reducedInfoMembers:v9];

  v11 = [(CSDConversation *)self reducedInfoMembers:v7];

  if ([v10 isEqualToSet:v11] && ((-[CSDConversation link](self, "link"), v12 = objc_claimAutoreleasedReturnValue(), v12, v6) || !v12))
  {
    v15 = [(CSDConversation *)self link];

    if (!v6 || v15)
    {
      v16 = [(CSDConversation *)self link];

      v13 = 1;
      if (v6 && v16)
      {
        v17 = [(CSDConversation *)self link];
        v18 = [v17 pseudonym];
        v19 = [v6 pseudonym];
        v13 = [v18 isEqualToString:v19];
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateRemoteMember:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(CSDConversation *)self remoteMembers];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v4 handle];
        v12 = [v10 handle];
        v13 = TUHandlesAreCanonicallyEqual();

        if (v13)
        {
          v14 = [(CSDConversation *)self remoteMembers];
          v15 = [v14 mutableCopy];

          [v15 removeObject:v10];
          [v15 addObject:v4];
          v16 = [v15 copy];
          [(CSDConversation *)self setRemoteMembers:v16];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)updateLightweightMember:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(CSDConversation *)self lightweightMembers];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v4 handle];
        v12 = [v10 handle];
        v13 = TUHandlesAreCanonicallyEqual();

        if (v13)
        {
          v14 = [(CSDConversation *)self lightweightMembers];
          v15 = [v14 mutableCopy];

          [v15 removeObject:v10];
          [v15 addObject:v4];
          v16 = [v15 copy];
          [(CSDConversation *)self setLightweightMembers:v16];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)memberWithHandle:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self localMember];
  v6 = [v5 handle];
  v7 = TUHandlesAreCanonicallyEqual();

  if (v7)
  {
    v8 = [(CSDConversation *)self localMember];
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(CSDConversation *)self remoteMembers];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v15 = [v14 handle];
        v16 = TUHandlesAreCanonicallyEqual();

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v8 = v14;

      if (v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_11:
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [(CSDConversation *)self lightweightMembers];
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          v23 = [v22 handle];
          v24 = TUHandlesAreCanonicallyEqual();

          if (v24)
          {
            v8 = v22;
            goto LABEL_23;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_23:
  }

LABEL_24:

  return v8;
}

- (BOOL)containsMemberWithHandle:(id)a3
{
  v3 = [(CSDConversation *)self memberWithHandle:a3];
  v4 = v3 != 0;

  return v4;
}

- (NSDictionary)capabilitySendMessageOptions
{
  v3 = [(CSDConversation *)self idsSession];
  v4 = [v3 requiredCapabilities];

  v5 = [(CSDConversation *)self idsSession];
  v6 = [v5 requiredLackOfCapabilities];

  if ([v4 count] || objc_msgSend(v6, "count"))
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    if ([v4 count])
    {
      [v7 setObject:v4 forKeyedSubscript:IDSSendMessageOptionRequireAllRegistrationPropertiesKey];
    }

    if ([v6 count])
    {
      [v7 setObject:v6 forKeyedSubscript:IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey];
    }

    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversation *)self idsSession];
  [v8 addRequiredCapabilities:v7 requiredLackOfCapabilities:v6];
}

- (void)removeRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversation *)self idsSession];
  [v8 removeRequiredCapabilities:v7 requiredLackOfCapabilities:v6];
}

- (id)remoteParticipantForHandle:(id)a3
{
  v4 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(CSDConversation *)self activeRemoteParticipants];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v28 + 1) + 8 * v9);
      v11 = [v10 handle];
      v12 = [v11 isEquivalentToHandle:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_9:
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [(CSDConversation *)self activeLightweightParticipants];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [v19 handle];
        v21 = [v20 isEquivalentToHandle:v4];

        if (v21)
        {
          v13 = v19;
          goto LABEL_21;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_21:

LABEL_22:
  v22 = [v13 tuConversationParticipant];

  return v22;
}

- (id)remoteParticipantForIdentifier:(unint64_t)a3
{
  v5 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v6 = [NSNumber numberWithUnsignedLongLong:a3];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 tuConversationParticipant];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
    v12 = [NSNumber numberWithUnsignedLongLong:a3];
    v13 = [v11 objectForKeyedSubscript:v12];
    v10 = [v13 tuConversationParticipant];
  }

  return v10;
}

- (id)remoteMemberForHandle:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CSDConversation *)self remoteMembers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 handle];
        v11 = [v10 isEquivalentToHandle:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (TUConversationParticipant)localParticipant
{
  v3 = [TUConversationParticipant alloc];
  v4 = [(CSDConversation *)self localParticipantIdentifier];
  v5 = [(CSDConversation *)self localMember];
  v6 = [v5 handle];
  v7 = [v3 initWithIdentifier:v4 handle:v6];

  [v7 setAudioVideoMode:{-[CSDConversation avMode](self, "avMode")}];
  [v7 setPresentationMode:{-[CSDConversation presentationMode](self, "presentationMode")}];
  [v7 setLocalAccountHandle:1];
  [v7 setSpatialPersonaEnabled:{-[CSDConversation isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled")}];
  [v7 setCameraMixedWithScreen:{-[CSDConversation isCameraMixedWithScreen](self, "isCameraMixedWithScreen")}];
  v8 = [(CSDConversation *)self localParticipantCluster];
  [v7 setCluster:v8];

  [v7 setIsNearbySharePlay:{-[CSDConversation isNearbySharePlay](self, "isNearbySharePlay")}];

  return v7;
}

- (id)localCSDConversationParticipant
{
  v3 = [CSDConversationParticipant alloc];
  v4 = [(CSDConversation *)self idsSession];
  v5 = [v4 localParticipantIdentifier];
  v6 = [(CSDConversation *)self localMember];
  v7 = [v6 handle];
  v8 = [(CSDConversation *)self localParticipantData];
  v9 = [(CSDConversationParticipant *)v3 initWithIdentifier:v5 handle:v7 avcData:v8];

  v10 = [(CSDConversation *)self localParticipantCapabilities];
  [(CSDConversationParticipant *)v9 setCapabilities:v10];

  [(CSDConversationParticipant *)v9 setVideoEnabled:[(CSDConversation *)self isVideoEnabled]];
  [(CSDConversationParticipant *)v9 setAudioVideoMode:[(CSDConversation *)self avMode]];
  [(CSDConversationParticipant *)v9 setPresentationMode:[(CSDConversation *)self presentationMode]];
  [(CSDConversationParticipant *)v9 setSpatialPersonaEnabled:[(CSDConversation *)self isSpatialPersonaEnabled]];
  [(CSDConversationParticipant *)v9 setCameraMixedWithScreen:[(CSDConversation *)self isCameraMixedWithScreen]];
  [(CSDConversationParticipant *)v9 setCaptionsToken:[(CSDConversation *)self avcLocalCaptionsToken]];
  v11 = [(CSDConversation *)self localParticipantCluster];
  [(CSDConversationParticipant *)v9 setCluster:v11];

  [(CSDConversationParticipant *)v9 setIsNearbySharePlay:[(CSDConversation *)self isNearbySharePlay]];

  return v9;
}

- (void)addAliasesToConversationContainer:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversation *)self serverBag];
  v9 = [v8 stableBundleIdentifierForLocalBundleIdentifier:v7];

  if (v9)
  {
    v10 = v9;

    v7 = v10;
  }

  v11 = [v7 dataUsingEncoding:4];
  [(CSDConversation *)self setIDSAliasingSalt:v11 onContainer:v6];
  v12 = [(CSDConversation *)self idsSession];
  [v12 addAliasesToConversationContainer:v6 withSalt:v11];

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CSDConversation *)self groupUUID];
    v15 = [v6 groupUUID];
    v16 = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Aliased session %@ to %@ for bundle identifier %@", &v16, 0x20u);
  }
}

- (void)setIDSAliasingSalt:(id)a3 onContainer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [v5 virtualParticipantConfig];
  [v8 setIdsAliasingSalt:v6];
  [v5 setVirtualParticipantConfig:v8];
  v7 = [v5 unreliableMessengerConfig];
  [v7 setIdsAliasingSalt:v6];

  [v5 setUnreliableMessengerConfig:v7];
}

- (unint64_t)_resolvedNearbyTimeOut
{
  if (!_TUIsInternalInstall())
  {
    return 60;
  }

  v2 = +[NSUserDefaults tu_defaults];
  v3 = [v2 objectForKey:@"DefaultNearbyMemberTimeOutOverride"];

  if (!v3)
  {
    return 60;
  }

  v4 = +[NSUserDefaults tu_defaults];
  v5 = [v4 integerForKey:@"DefaultNearbyMemberTimeOutOverride"];

  return v5;
}

- (void)startTimeOutForNearbyMembers:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v8 = *v29;
    *&v7 = 138412546;
    v22 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v28 + 1) + 8 * v9) handle];
        v11 = [(CSDConversation *)self nearbyMemberRemovalBlockByHandle];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          dispatch_block_cancel(v12);
          v13 = [(CSDConversation *)self nearbyMemberRemovalBlockByHandle];
          [v13 setObject:0 forKeyedSubscript:v10];
        }

        objc_initWeak(&location, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100098B88;
        block[3] = &unk_10061A600;
        objc_copyWeak(&v26, &location);
        v14 = v10;
        v25 = v14;
        v15 = dispatch_block_create(0, block);
        v16 = objc_retainBlock(v15);
        v17 = [(CSDConversation *)self nearbyMemberRemovalBlockByHandle];
        [v17 setObject:v16 forKeyedSubscript:v14];

        v18 = sub_100004778();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(CSDConversation *)self UUID];
          *buf = v22;
          v33 = v14;
          v34 = 2112;
          v35 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Starting time out to remove nearby member %@ in conversation %@", buf, 0x16u);
        }

        v20 = dispatch_time(0, 1000000000 * [(CSDConversation *)self _resolvedNearbyTimeOut]);
        v21 = [(CSDConversation *)self queue];
        dispatch_after(v20, v21, v15);

        objc_destroyWeak(&v26);
        objc_destroyWeak(&location);

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v6);
  }
}

- (void)startTimeOutForNearbySession
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CSDConversation *)self UUID];
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting time out to clean up nearby conversation: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = dispatch_time(0, 1000000000 * [(CSDConversation *)self _resolvedNearbyTimeOut]);
  v7 = [(CSDConversation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098D78;
  block[3] = &unk_10061A740;
  objc_copyWeak(&v9, buf);
  dispatch_after(v6, v7, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)removeNearbyMemberWithHandleIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversation *)self nearbyMemberRemovalBlockByHandle];
  [v6 setObject:0 forKeyedSubscript:v4];

  v7 = [(CSDConversation *)self featureFlags];
  v8 = [v7 nearbyFaceTimeEnabled];

  if (v8 && [(CSDConversation *)self isNearbySession])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = [(CSDConversation *)self remoteMembers];
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v42 + 1) + 8 * v13) handle];
        v15 = [v14 isEqualToHandle:v4];

        if (v15)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_37;
        }
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = [(CSDConversation *)self activeRemoteParticipants];
      v16 = [v9 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v39;
LABEL_14:
        v19 = 0;
        while (1)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v9);
          }

          v20 = [*(*(&v38 + 1) + 8 * v19) handle];
          v21 = [v20 isEqualToHandle:v4];

          if (v21)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v9 countByEnumeratingWithState:&v38 objects:v49 count:16];
            if (v17)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:

        v22 = sub_100004778();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v4;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing nearby member with handle %@", buf, 0xCu);
        }

        v23 = [(CSDConversation *)self remoteMembers];
        v24 = [v23 count];

        if (v24 == 1)
        {
          v25 = sub_100004778();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Last member to remove, leaving conversation", buf, 2u);
          }

          [(CSDConversation *)self leave];
          goto LABEL_38;
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v9 = [(CSDConversation *)self remoteMembers];
        v26 = [v9 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v35;
LABEL_28:
          v29 = 0;
          while (1)
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(v9);
            }

            v30 = *(*(&v34 + 1) + 8 * v29);
            v31 = [v30 handle];
            v32 = [v31 isEqualToHandle:v4];

            if (v32)
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v9 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v27)
              {
                goto LABEL_28;
              }

              goto LABEL_37;
            }
          }

          v33 = v30;

          if (!v33)
          {
            goto LABEL_38;
          }

          [(CSDConversation *)self kickMember:v33];
          v9 = v33;
        }
      }
    }

LABEL_37:
  }

LABEL_38:
}

- (BOOL)_endScreenCallIfNecessary
{
  v3 = [(CSDConversation *)self isScreening];
  if (!v3)
  {
    return v3;
  }

  v4 = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
  v5 = [v4 count];

  if (v5 >= 3)
  {
    v6 = sub_100004778();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v7 = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
    *buf = 134217984;
    v35 = [v7 count];
    v8 = "Ending the screening call because a new participant joins, count: %ld";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
LABEL_12:

    goto LABEL_13;
  }

  v9 = [(CSDConversation *)self activeLightweightParticipants];
  v10 = [v9 count];

  if (v10)
  {
    v6 = sub_100004778();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v7 = [(CSDConversation *)self activeLightweightParticipants];
    *buf = 134217984;
    v35 = [v7 count];
    v8 = "Ending the screening call because a lightweight participant joins, count: %ld";
    goto LABEL_11;
  }

  v11 = [(CSDConversation *)self activeRemoteParticipants];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    v6 = sub_100004778();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v7 = [(CSDConversation *)self activeRemoteParticipants];
    *buf = 134217984;
    v35 = [v7 count];
    v8 = "Ending the screening call because active remote participants, count: %ld";
    goto LABEL_11;
  }

  v13 = [(CSDConversation *)self remoteMembers];
  if ([v13 count] >= 2)
  {

LABEL_22:
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CSDConversation *)self remoteMembers];
      v16 = [v7 count];
      v17 = [(CSDConversation *)self lightweightMembers];
      *buf = 134218240;
      v35 = v16;
      v36 = 2048;
      v37 = [v17 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ending the screening call because a new member is added, remoteMembers: %ld, lightweightMembers: %ld", buf, 0x16u);

      goto LABEL_12;
    }

LABEL_13:

    [(CSDConversation *)self leaveWithReason:3];
LABEL_14:
    LOBYTE(v3) = 1;
    return v3;
  }

  v14 = [(CSDConversation *)self lightweightMembers];
  v15 = [v14 count];

  if (v15)
  {
    goto LABEL_22;
  }

  if ([(CSDConversation *)self isVideoEnabled])
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ending the screening call because local upgrades to video", buf, 2u);
    }

    goto LABEL_13;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        v24 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
        v25 = [v24 objectForKeyedSubscript:v23];

        if ([v25 isVideoEnabled])
        {
          v26 = sub_100004778();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [(CSDConversation *)self state];
            *buf = 134218242;
            v35 = v27;
            v36 = 2112;
            v37 = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Ending the screening call because participant upgrades to video call, state: %ld, %@", buf, 0x16u);
          }

          [(CSDConversation *)self leaveWithReason:3];
          goto LABEL_14;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (id)_allMembers
{
  v3 = [(CSDConversation *)self remoteMembers];
  v4 = [v3 mutableCopy];

  v5 = [(CSDConversation *)self lightweightMembers];
  v6 = [v5 mutableCopy];

  v7 = [(CSDConversation *)self localMember];
  [v4 addObject:v7];

  [v4 unionSet:v6];
  v8 = [v4 copy];

  return v8;
}

- (void)_restartIDSSessionIfNecessary
{
  if ([(CSDConversation *)self isOneToOneModeEnabled])
  {
    v3 = [(CSDConversation *)self remoteMembers];
    if ([v3 count] == 1)
    {
      v4 = [(CSDConversation *)self link];

      if (!v4)
      {
        [(CSDConversation *)self _cleanUpConversation];
        v5 = sub_100004778();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          if ([(CSDConversation *)self isOneToOneModeEnabled])
          {
            v6 = @"YES";
          }

          else
          {
            v6 = @"NO";
          }

          v7 = [(CSDConversation *)self remoteMembers];
          *buf = 138412546;
          v13 = v6;
          v14 = 2048;
          v15 = [v7 count];
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "restartIDSSessionIfNecessary: No need to restart IDS Session since it's U + 1, %@, %lu", buf, 0x16u);
        }

        return;
      }
    }

    else
    {
    }
  }

  v8 = [(CSDConversation *)self featureFlags];
  if ([v8 nearbyFaceTimeEnabled])
  {
    v9 = [(CSDConversation *)self isNearbySession];

    if (v9)
    {
      [(CSDConversation *)self _cleanUpConversation];
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "restartIDSSessionIfNecessary: No need to restart IDS Session since it's a nearby session", buf, 2u);
      }

      return;
    }
  }

  else
  {
  }

  v11 = [(CSDConversation *)self idsSession];
  [v11 restart];
}

- (void)_stopAVCSession
{
  if ([(CSDConversation *)self avcSessionInProgress])
  {
    [(CSDConversation *)self setAvcSessionInProgress:0];
    v3 = [(CSDConversation *)self failureContext];
    v4 = [v3 providerEndedReason];

    if (v4)
    {
      v5 = [(CSDConversation *)self failureContext];
      v8 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"callservicesd.ConversationErrorType", [v5 providerEndedReason], 0);

      v6 = [(CSDConversation *)self avcSession];
      [v6 stopWithError:v8];
    }

    else
    {
      v8 = [(CSDConversation *)self avcSession];
      [v8 stopWithError:0];
    }
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not to stopAVCSession because it's not in progress", buf, 2u);
    }

    [(CSDConversation *)self setNotNeededToStopAVCSession:1];
  }
}

- (void)_cleanUpConversation
{
  v3 = +[NSDictionary dictionary];
  activeParticipantDestinationsByIdentifier = self->_activeParticipantDestinationsByIdentifier;
  self->_activeParticipantDestinationsByIdentifier = v3;

  v5 = +[NSMutableDictionary dictionary];
  activeRemoteParticipantsByIdentifier = self->_activeRemoteParticipantsByIdentifier;
  self->_activeRemoteParticipantsByIdentifier = v5;

  v7 = +[NSMutableDictionary dictionary];
  activeLightweightParticipantsByIdentifier = self->_activeLightweightParticipantsByIdentifier;
  self->_activeLightweightParticipantsByIdentifier = v7;

  v9 = +[NSMutableDictionary dictionary];
  sequenceNumberToTime = self->_sequenceNumberToTime;
  self->_sequenceNumberToTime = v9;

  v11 = objc_alloc_init(NSSet);
  [(CSDConversation *)self setRemotePushTokens:v11];

  v12 = objc_alloc_init(NSMutableSet);
  [(CSDConversation *)self setPendingRemoteMembers:v12];

  v13 = objc_alloc_init(NSSet);
  [(CSDConversation *)self setRemoteMembers:v13];

  v14 = [(CSDConversation *)self letMeInRequestUINotificationBlock];

  if (v14)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "cleanUpConversation: cancel letMeInRequestUINotificationBlock", v17, 2u);
    }

    v16 = [(CSDConversation *)self letMeInRequestUINotificationBlock];
    dispatch_block_cancel(v16);

    [(CSDConversation *)self setLetMeInRequestUINotificationBlock:0];
  }

  [(CSDConversation *)self setABTestConfiguration:0];
}

- (void)_emitRTCConnectionSetupEventForAddActiveParticipant:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self report];
  -[CSDConversation _emitRTCConnectionSetupEvent:participantIdentifier:](self, "_emitRTCConnectionSetupEvent:participantIdentifier:", 5, [v5 hashForParticipantIdentifier:{objc_msgSend(v4, "identifier")}]);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Metrics] Adding active participant: %@", &v7, 0xCu);
  }
}

- (void)_emitRTCConnectionSetupEvent:(int64_t)a3 participantIdentifier:(unint64_t)a4
{
  v7 = [CSDRTCConnectionSetup rtcKey:1];
  v18[0] = v7;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v19[0] = v8;
  v9 = [CSDRTCConnectionSetup rtcKey:2];
  v18[1] = v9;
  v10 = +[NSDate date];
  v11 = [(CSDConversation *)self report];
  v12 = [v11 timebase];
  [v10 timeIntervalSinceDate:v12];
  v14 = [NSNumber numberWithUnsignedInteger:(v13 * 1000.0)];
  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  v16 = +[CSDReportingController sharedInstance];
  v17 = [(CSDConversation *)self tuConversation];
  [v16 connectionSetupReportReceived:v15 eventType:a3 forConversation:v17];
}

- (void)_startIDSSessionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(CSDConversation *)self state]!= 2)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(CSDConversation *)self state];
      v14 = [(CSDConversation *)self UUID];
      *buf = 134218242;
      v80 = v13;
      v81 = 2112;
      v82 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Not joining IDS session as state (%tu) is not joining on conversation: %@", buf, 0x16u);
    }

    goto LABEL_42;
  }

  v6 = [(CSDConversation *)self remoteMembers];
  v7 = [NSMutableSet setWithSet:v6];

  v8 = [(CSDConversation *)self lightweightMembers];
  [v7 unionSet:v8];

  v9 = [(CSDConversation *)self localMember];
  [v7 addObject:v9];

  v10 = +[NSMutableSet set];
  v68 = v4;
  v64 = v7;
  if (-[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled") && ([v4 isInitiator] & 1) == 0)
  {
    v15 = [(CSDConversation *)self idsSession];
    v16 = [v15 participantDestinationIDs];
    v11 = [NSMutableSet setWithArray:v16];

    v17 = [(CSDConversation *)self localMember];
    v18 = [IDSDestination destinationWithTUConversationMember:v17];
    [v11 removeObject:v18];

    v19 = [(CSDConversation *)self localMember];
    v20 = [v19 idsDestination];
    [v11 removeObject:v20];

    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v80 = v11;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending U+1 join context to subset of participants: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = v10;
  }

  if ([(CSDConversation *)self isOneToOneModeEnabled])
  {
    v22 = [(CSDConversation *)self featureFlags];
    if ([v22 uPlusOneSessionWithCapabilitiesEnabled])
    {
      v23 = [(CSDConversation *)self serverBag];
      v24 = [v23 isUPlusOneSessionCapabilitiesEnabled];

      if (!v24)
      {
        goto LABEL_17;
      }

      v25 = [(CSDConversation *)self screenSharingRequests];
      v26 = [v25 count];

      if (v26)
      {
        v27 = [NSSet setWithObject:IDSRegistrationPropertySupportsSSRC];
        [(CSDConversation *)self addRequiredCapabilities:v27 requiredLackOfCapabilities:0];
      }

      v22 = [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
      [(CSDConversation *)self addRequiredCapabilities:v22 requiredLackOfCapabilities:0];
    }
  }

LABEL_17:
  v63 = v11;
  v28 = sub_100004778();
  v29 = [(CSDConversation *)self idsSession];
  v30 = os_signpost_id_make_with_pointer(v28, v29);

  v31 = sub_100004778();
  v32 = v31;
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "idsSessionJoin", "", buf, 2u);
  }

  v33 = [(CSDConversation *)self report];
  -[CSDConversation _emitRTCConnectionSetupEvent:participantIdentifier:](self, "_emitRTCConnectionSetupEvent:participantIdentifier:", 1, [v33 hashForParticipantIdentifier:{-[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier")}]);

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v34 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v35 = [v34 allValues];

  v36 = [v35 countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v74;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v74 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(CSDConversation *)self _emitRTCConnectionSetupEventForAddActiveParticipant:*(*(&v73 + 1) + 8 * i)];
      }

      v37 = [v35 countByEnumeratingWithState:&v73 objects:v78 count:16];
    }

    while (v37);
  }

  v40 = [(CSDConversation *)self stagedActivitySession];
  if (v40 && (v41 = v40, -[CSDConversation stagedActivitySession](self, "stagedActivitySession"), v42 = objc_claimAutoreleasedReturnValue(), v43 = [v42 isLocallyInitiated], v42, v41, v43))
  {
    v44 = [(CSDConversation *)self stagedActivitySession];
    v65 = [CSDMessagingConversationActivitySession activitySessionWithTUConversationActivitySession:v44 fromConversation:self forStorage:0];
  }

  else
  {
    v65 = 0;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [(CSDConversation *)self activitySessions];
  v45 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v70;
    while (2)
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v70 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v69 + 1) + 8 * j);
        v50 = [v49 activity];
        v51 = [v50 UUID];
        v52 = [v68 activity];
        v53 = [v52 UUID];
        v54 = [v51 isEqual:v53];

        if (v54)
        {
          v55 = [CSDMessagingConversationActivitySession activitySessionWithCSDConversationActivitySession:v49 fromConversation:self];
          goto LABEL_41;
        }
      }

      v46 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  v55 = 0;
LABEL_41:

  obja = [(CSDConversation *)self idsSession];
  v56 = [(CSDConversation *)self localParticipantData];
  v57 = [(CSDConversation *)self otherInvitedHandles];
  v58 = [(CSDConversation *)self link];
  v59 = [(CSDConversation *)self report];
  v60 = [(CSDConversation *)self personaHandshakeBlobCreationBlock];
  v61 = v60[2]();
  [obja joinUsingContext:v68 localParticipantAVCData:v56 members:v64 otherInvitedHandles:v57 participantDestinationIDs:v63 link:v58 report:v59 stagedActivitySession:v65 personaHandshakeBlob:v61 activitySession:v55];

  v62 = [(CSDConversation *)self delegate];
  [v62 conversationDidTriggerJoin:self];

  v12 = v64;
  v4 = v68;

LABEL_42:
}

- (void)_addRemoteParticipantToAVCSessionIfPossible:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversation *)self avcSession];
  v7 = [v6 isAudioReady];

  v8 = [(CSDConversation *)self isRedirectingAudio];
  if (v8)
  {
    v8 = [(CSDConversation *)self isOneToOneModeEnabled];
  }

  if (((v7 | v8) & 1) == 0)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = [v4 identifier];
      v11 = "AVAudioClient not set up yet, delaying adding participant to AVCSession: %llu";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (![v4 audioVideoMode])
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = [v4 identifier];
      v11 = "Participant has no AV configured, ignoring to add the participant to the session: %llu";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v9 = [(CSDConversation *)self avcSession];
  [v9 addParticipant:v4 withVideoEnabled:+[TUConversationManager allowsVideo](TUConversationManager audioPaused:"allowsVideo") screenEnabled:{-[CSDConversation isAudioPaused](self, "isAudioPaused"), -[CSDConversation allowsScreenSharing](self, "allowsScreenSharing")}];

LABEL_12:
}

- (void)_addParticipantsWaitingToBeAddedToAVCSession
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(CSDConversation *)self activeRemoteParticipants];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v23;
    *&v6 = 134217984;
    v21 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [(CSDConversation *)self avcSession];
        v12 = [v11 containsRemoteParticipantWithIdentifier:{objc_msgSend(v10, "identifier")}];

        v13 = sub_100004778();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (!v14)
          {
            goto LABEL_16;
          }

          v15 = [v10 identifier];
          *buf = v21;
          v27 = v15;
          v16 = v13;
          v17 = "Not adding participant %llu to AVCSession now that AVAudioClient is set up because they're already in the AVCSession";
          goto LABEL_15;
        }

        if (v14)
        {
          v18 = [v10 identifier];
          *buf = v21;
          v27 = v18;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adding participant to AVCSession now that AVAudioClient is set up: %llu", buf, 0xCu);
        }

        if ([v10 audioVideoMode])
        {
          v19 = +[TUConversationManager allowsVideo];
          v13 = [(CSDConversation *)self avcSession];
          [v13 addParticipant:v10 withVideoEnabled:v19 audioPaused:[(CSDConversation *)self isAudioPaused] screenEnabled:[(CSDConversation *)self allowsScreenSharing]];
          goto LABEL_16;
        }

        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v10 identifier];
          *buf = v21;
          v27 = v20;
          v16 = v13;
          v17 = "Participant has no AV configured, ignoring to add the participant to the session: %llu";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
        }

LABEL_16:
      }

      v7 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }
}

- (void)_startAVCSessionIfNecessary
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self avcSession];
  v5 = [v4 isAudioReady];

  v6 = [(CSDConversation *)self isRelaying];
  if (v6)
  {
    v7 = v6;
    v8 = [(CSDConversation *)self featureFlags];
    if (([v8 gftOnWatch] & 1) != 0 || -[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled"))
    {
      v9 = 1;
    }

    else if ([(CSDConversation *)self isScreening])
    {
      v9 = [(CSDConversation *)self isOneToOneModeEnabled];
      if ((v7 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else if ([(CSDConversation *)self isScreening])
  {
    v9 = [(CSDConversation *)self isOneToOneModeEnabled];
  }

  else
  {
    v9 = 0;
  }

LABEL_9:
  v10 = [(CSDConversation *)self avMode];
  v11 = [(CSDConversation *)self idsSession];
  v12 = [v11 localParticipantType];

  v13 = [(CSDConversation *)self idsSession];
  v14 = [v13 isJoined];

  if (v14 && ((v5 | v9) & 1) != 0 && v10 && v12 == 1)
  {
    v15 = [(CSDConversation *)self avcSessionInProgress];
    v16 = sub_100004778();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v18 = [(CSDConversation *)self avcSession];
        v35 = 138412290;
        v36 = v18;
        v19 = "Skipped starting session since session start is already in progress %@";
        v20 = v16;
        v21 = 12;
LABEL_32:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, &v35, v21);
      }
    }

    else
    {
      if (v17)
      {
        v28 = [(CSDConversation *)self avcSession];
        v35 = 138412290;
        v36 = v28;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Starting %@", &v35, 0xCu);
      }

      [(CSDConversation *)self setAvcSessionInProgress:1];
      v29 = sub_100004778();
      v30 = [(CSDConversation *)self avcSession];
      v31 = os_signpost_id_make_with_pointer(v29, v30);

      v32 = sub_100004778();
      v33 = v32;
      if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        LOWORD(v35) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "avcSessionStart", "", &v35, 2u);
      }

      v34 = [(CSDConversation *)self report];
      -[CSDConversation _emitRTCConnectionSetupEvent:participantIdentifier:](self, "_emitRTCConnectionSetupEvent:participantIdentifier:", 3, [v34 hashForParticipantIdentifier:{-[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier")}]);

      v16 = [(CSDConversation *)self avcSession];
      [v16 start];
    }
  }

  else
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(CSDConversation *)self idsSession];
      v22 = [(__CFString *)v18 isJoined];
      v23 = @"NO";
      if (v22)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      if (v5)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v35 = 138413314;
      v36 = v24;
      if (v9)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v37 = 2112;
      v38 = v25;
      if (v10)
      {
        v27 = @"NO";
      }

      else
      {
        v27 = @"YES";
      }

      v39 = 2112;
      v40 = v26;
      v41 = 2112;
      if (v12 == 1)
      {
        v23 = @"YES";
      }

      v42 = v27;
      v43 = 2112;
      v44 = v23;
      v19 = "Skipped starting session since isJoined:%@ audioReady:%@ isRedirectingAudio :%@ isAVLess:%@ isLocalParticipantNormal: %@";
      v20 = v16;
      v21 = 52;
      goto LABEL_32;
    }
  }
}

- (void)_cleanUpFromAVCSessionFailure
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  [(CSDConversation *)self resetConversation];
  [(CSDConversation *)self refreshActiveParticipantsList];
  [(CSDConversation *)self cleanUpIDSSessionState];

  [(CSDConversation *)self _cleanUpHandoffMetricsIfNecessary];
}

- (void)setState:(int64_t)a3
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v8 = 134218240;
    v9 = a3;
    v10 = 2048;
    v11 = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setting state to: %ld, from: %ld", &v8, 0x16u);
  }

  v7 = self->_state;
  self->_state = a3;
  [(CSDConversation *)self _handleStateChanged:a3 oldState:v7];
}

- (void)_handleStateChanged:(int64_t)a3 oldState:(int64_t)a4
{
  if (a3 != a4)
  {
    v5 = [(CSDConversation *)self localParticipantBlobTracker];
    [v5 handleConversationStateUpdated];
  }
}

- (void)_cleanUpHandoffMetricsIfNecessary
{
  v3 = [(CSDConversation *)self addedHandoffParticipantToTime];
  v4 = [v3 count];

  v5 = [(CSDConversation *)self removedHandoffParticipantToTime];
  v6 = [v5 count];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218240;
    v24 = v4;
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cleanUpHandoffMetrics: addedHandoffParticipantToTimeCount: %lu, removedHandoffParticipantToTimeCount: %lu", &v23, 0x16u);
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  if (v4)
  {
    v9 = [NSNumber numberWithUnsignedLong:v4];
    [v8 setObject:v9 forKeyedSubscript:@"kCSDConversationAddedParticipantCount"];
  }

  if (v6)
  {
    v10 = [NSNumber numberWithUnsignedLong:v6];
    [v8 setObject:v10 forKeyedSubscript:@"kCSDConversationRemovedParticipantCount"];
  }

  if ([v8 count])
  {
    v11 = +[CSDReportingController sharedInstance];
    v12 = [(CSDConversation *)self tuConversation];
    [v11 handoffReportReceived:v8 forConversation:v12];
  }

  v13 = objc_alloc_init(NSMutableArray);
  removedHandoffParticipants = self->_removedHandoffParticipants;
  self->_removedHandoffParticipants = v13;

  v15 = objc_alloc_init(NSMutableArray);
  addedHandoffParticipants = self->_addedHandoffParticipants;
  self->_addedHandoffParticipants = v15;

  v17 = +[NSMutableDictionary dictionary];
  startAddingHandoffParticipantToTime = self->_startAddingHandoffParticipantToTime;
  self->_startAddingHandoffParticipantToTime = v17;

  v19 = +[NSMutableDictionary dictionary];
  addedHandoffParticipantToTime = self->_addedHandoffParticipantToTime;
  self->_addedHandoffParticipantToTime = v19;

  v21 = +[NSMutableDictionary dictionary];
  removedHandoffParticipantToTime = self->_removedHandoffParticipantToTime;
  self->_removedHandoffParticipantToTime = v21;
}

- (void)cleanUpIDSSessionState
{
  if ([(CSDConversation *)self state]== 4)
  {
    [(CSDConversation *)self _cancelTimeoutForLeavingConversation];
    [(CSDConversation *)self _restartIDSSessionIfNecessary];

    [(CSDConversation *)self setState:0];
  }

  else if ([(CSDConversation *)self state])
  {
    [(CSDConversation *)self setState:4];
    [(CSDConversation *)self _beginTimeoutForLeavingConversationWithReason:@"Cleaning up from AVCSession failure."];
    v3 = [(CSDConversation *)self idsSession];
    [v3 leaveGroupSessionWithContext:0];
  }
}

- (void)_beginTimeoutForLeavingConversationWithReason:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversation *)self timeoutBlock];

  if (v6)
  {
    v7 = [(CSDConversation *)self timeoutBlock];
    dispatch_block_cancel(v7);
  }

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B4FC;
  block[3] = &unk_10061A600;
  objc_copyWeak(&v16, &location);
  v8 = v4;
  v15 = v8;
  v9 = dispatch_block_create(0, block);
  [(CSDConversation *)self setTimeoutBlock:v9];

  v10 = [(CSDConversation *)self serverBag];
  v11 = dispatch_time(0, 1000000000 * [v10 sessionCleanupTimeout]);
  v12 = [(CSDConversation *)self queue];
  v13 = [(CSDConversation *)self timeoutBlock];
  dispatch_after(v11, v12, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_cancelTimeoutForLeavingConversation
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self timeoutBlock];

  if (v4)
  {
    v5 = [(CSDConversation *)self timeoutBlock];
    dispatch_block_cancel(v5);

    [(CSDConversation *)self setTimeoutBlock:0];
  }
}

- (void)_endCallIfNecessary
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self serverBag];
  v5 = [v4 isNoConversationParticipantEndCallEnabled];

  if (v5)
  {
    if ([(CSDConversation *)self state]!= 3)
    {
      return;
    }

    v6 = [(CSDConversation *)self activeRemoteParticipants];
    if ([v6 count])
    {

LABEL_9:
      v10 = [(CSDConversation *)self noConversationParticipantTimeoutBlock];

      if (!v10)
      {
        return;
      }

      v11 = [(CSDConversation *)self noConversationParticipantTimeoutBlock];
      dispatch_block_cancel(v11);

      [(CSDConversation *)self setNoConversationParticipantTimeoutBlock:0];
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_endCallIfNecessary: Cancel noConversationParticipantTimeoutBlock", buf, 2u);
      }

      goto LABEL_12;
    }

    v8 = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
    v9 = [v8 count];

    if (v9 <= 1)
    {
      goto LABEL_9;
    }

    v13 = [(CSDConversation *)self noConversationParticipantTimeoutBlock];

    if (v13)
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_endCallIfNecessary: noConversationParticipantTimeout is running, return", buf, 2u);
      }

LABEL_12:

      return;
    }

    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009BA98;
    block[3] = &unk_10061A740;
    objc_copyWeak(&v23, buf);
    v14 = dispatch_block_create(0, block);
    [(CSDConversation *)self setNoConversationParticipantTimeoutBlock:v14];

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(CSDConversation *)self serverBag];
      v17 = [v16 noConversationParticipantTimeout];
      *v25 = 67109120;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_endCallIfNecessary: started noConversationParticipantTimeout: %d", v25, 8u);
    }

    v18 = [(CSDConversation *)self serverBag];
    v19 = dispatch_time(0, 1000000000 * [v18 noConversationParticipantTimeout]);
    v20 = [(CSDConversation *)self queue];
    v21 = [(CSDConversation *)self noConversationParticipantTimeoutBlock];
    dispatch_after(v19, v20, v21);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "disable noConversationParticipantEndCall due to server over-ride", buf, 2u);
    }
  }
}

- (void)_showLetMeInUIIfNecessary
{
  v2 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v2);

  v3 = [(CSDConversation *)self serverBag];
  v4 = [v3 isLetMeInRequestUIForUnknownParticipantEnabled];

  if ((v4 & 1) == 0)
  {
    v36 = sub_100004778();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "disable showLetMeInUI due to server over-ride", buf, 2u);
    }

    goto LABEL_40;
  }

  if ([(CSDConversation *)self state]== 3)
  {
    v5 = [(CSDConversation *)self link];

    if (v5)
    {
      v44 = objc_alloc_init(NSMutableSet);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
      v47 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (v47)
      {
        v46 = *v52;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v52 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v51 + 1) + 8 * i);
            v8 = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
            v9 = [v8 objectForKeyedSubscript:v7];

            v10 = [(CSDConversation *)self localParticipantIdentifier];
            if (v10 != [v7 unsignedLongLongValue])
            {
              v11 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
              v12 = [v11 objectForKeyedSubscript:v7];
              v13 = v12 || v9 == 0;
              v14 = !v13;

              if (v14)
              {
                v50[1] = 0;
                v15 = IDSCopyTokenAndIDForTokenWithID();
                v16 = 0;
                v17 = [v15 _stripFZIDPrefix];
                v18 = [TUHandle normalizedHandleWithDestinationID:v17];

                v19 = [[TUConversationMember alloc] initWithHandle:v18];
                v20 = [(CSDConversation *)self localMember];
                v21 = [v20 handle];
                v22 = [TUHandle normalizedHandleWithDestinationID:v9];
                v23 = [v21 isEquivalentToHandle:v22];

                if ((v23 & 1) == 0)
                {
                  v24 = [(CSDConversation *)self remoteMemberHandles];
                  v25 = [v24 containsObject:v18];

                  if ((v25 & 1) == 0)
                  {
                    [v44 addObject:v19];
                  }
                }
              }
            }
          }

          v47 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
        }

        while (v47);
      }

      if ([v44 count])
      {
        v26 = sub_100004778();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [(CSDConversation *)self pendingRemoteMembers];
          v28 = [(CSDConversation *)self localMember];
          v29 = [v28 handle];
          *buf = 138412802;
          v56 = v44;
          v57 = 2112;
          v58 = v27;
          v59 = 2112;
          v60 = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "add pending remote members: %@ to %@, localMember: %@", buf, 0x20u);
        }

        v30 = [(CSDConversation *)self pendingRemoteMembers];
        v31 = [v44 copy];
        [v30 unionSet:v31];
      }

      v32 = [(CSDConversation *)self pendingRemoteMembers];
      v33 = [v32 count] == 0;

      v34 = [(CSDConversation *)self letMeInRequestUINotificationBlock];

      if (v33)
      {
        if (v34)
        {
          v37 = sub_100004778();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "No pendingRemoteMembers, cancel letMeInRequestUINotificationBlock", buf, 2u);
          }

          v38 = [(CSDConversation *)self letMeInRequestUINotificationBlock];
          dispatch_block_cancel(v38);

          [(CSDConversation *)self setLetMeInRequestUINotificationBlock:0];
        }
      }

      else if (v34)
      {
        v35 = sub_100004778();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "waiting till existing letMeInRequestUINotification completes", buf, 2u);
        }
      }

      else
      {
        objc_initWeak(buf, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009C214;
        block[3] = &unk_10061A740;
        objc_copyWeak(v50, buf);
        v39 = dispatch_block_create(0, block);
        [(CSDConversation *)self setLetMeInRequestUINotificationBlock:v39];

        v40 = [(CSDConversation *)self serverBag];
        v41 = dispatch_time(0, 1000000000 * [v40 letMeInRequestUINotificationGracePeriod]);
        v42 = [(CSDConversation *)self queue];
        v43 = [(CSDConversation *)self letMeInRequestUINotificationBlock];
        dispatch_after(v41, v42, v43);

        objc_destroyWeak(v50);
        objc_destroyWeak(buf);
      }

      v36 = v44;
LABEL_40:
    }
  }
}

- (void)_requestAVCBlobsIfNecessary
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(CSDConversation *)self state]== 3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = *v25;
      v19 = v21;
      do
      {
        v7 = 0;
        do
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v24 + 1) + 8 * v7);
          v9 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
          v10 = [v9 objectForKeyedSubscript:v8];
          if (v10 || (v11 = -[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier"), v11 == [v8 unsignedLongLongValue]))
          {
          }

          else
          {
            v12 = [(CSDConversation *)self inflightAVCBlobRecoveryBlocksByIdentifier];
            v13 = [v12 objectForKeyedSubscript:v8];
            v14 = v13 == 0;

            if (v14)
            {
              objc_initWeak(&location, self);
              v15 = [(CSDConversation *)self serverBag];
              v16 = dispatch_time(0, 1000000000 * [v15 AVCBlobRecoveryGracePeriod]);
              v17 = [(CSDConversation *)self queue];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              v21[0] = sub_10009C900;
              v21[1] = &unk_10061A600;
              objc_copyWeak(&v22, &location);
              v21[2] = v8;
              dispatch_after(v16, v17, block);

              objc_destroyWeak(&v22);
              objc_destroyWeak(&location);
            }
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v18 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v5 = v18;
      }

      while (v18);
    }
  }
}

- (void)_removeMemberFromPendingMemberListForParticipant:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversation *)self link];

  if (v6)
  {
    v7 = [v4 handle];
    v8 = [(CSDConversation *)self memberWithHandle:v7];

    if (v8)
    {
      v9 = [(CSDConversation *)self pendingRemoteMembers];
      v10 = [v9 containsObject:v8];

      if (v10)
      {
        v11 = sub_100004778();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [(CSDConversation *)self pendingRemoteMembers];
          v14 = 138412546;
          v15 = v8;
          v16 = 2112;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "remove %@ from pendingRemoteMembers: %@", &v14, 0x16u);
        }

        v13 = [(CSDConversation *)self pendingRemoteMembers];
        [v13 removeObject:v8];
      }
    }
  }
}

- (void)_cancelInFlightAVCBlobRecoveryIfNecessary
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(CSDConversation *)self inflightAVCBlobRecoveryBlocksByIdentifier];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 138412290;
    v19 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = [(CSDConversation *)self serverProvidedParticipantIdentifiers];
        if ([v12 containsObject:v11])
        {
          v13 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
          v14 = [v13 objectForKeyedSubscript:v11];

          if (!v14)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }

        v15 = sub_100004778();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v19;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cancelling in flight AVC blob recovery for participant with identifier %@", buf, 0xCu);
        }

        v16 = [(CSDConversation *)self inflightAVCBlobRecoveryBlocksByIdentifier];
        v17 = [v16 objectForKeyedSubscript:v11];
        dispatch_block_cancel(v17);

        v18 = [(CSDConversation *)self inflightAVCBlobRecoveryBlocksByIdentifier];
        [v18 setObject:0 forKeyedSubscript:v11];

LABEL_13:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)_pruneRemoteParticipantsIfNecessary
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  if (![(CSDConversation *)self isWaitingToPruneParticipants])
  {
    [(CSDConversation *)self setWaitingToPruneParticipants:1];
    objc_initWeak(&location, self);
    v4 = [(CSDConversation *)self serverBag];
    v5 = dispatch_time(0, 1000000000 * [v4 activeParticipantPruningTimeout]);
    v6 = [(CSDConversation *)self queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009D30C;
    v7[3] = &unk_10061A740;
    objc_copyWeak(&v8, &location);
    dispatch_after(v5, v6, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)refreshActiveParticipantsList
{
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversation *)self participantRefreshBlock];

  if (v4)
  {
    v5 = [(CSDConversation *)self participantRefreshBlock];
    dispatch_block_cancel(v5);
  }

  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10009D7C4;
  v14 = &unk_10061A740;
  objc_copyWeak(&v15, &location);
  v6 = dispatch_block_create(0, &v11);
  [(CSDConversation *)self setParticipantRefreshBlock:v6, v11, v12, v13, v14];

  v7 = [(CSDConversation *)self serverBag];
  v8 = dispatch_time(0, [v7 activeParticipantRefreshDelay]);
  v9 = [(CSDConversation *)self queue];
  v10 = [(CSDConversation *)self participantRefreshBlock];
  dispatch_after(v8, v9, v10);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_reportConversationFailedWithFailureReason:(int64_t)a3 providerEndedReason:(unint64_t)a4
{
  v7 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v7);

  v9 = objc_alloc_init(CXCallFailureContext);
  [v9 setFailureReason:a3];
  [v9 setProviderEndedReason:a4];
  [(CSDConversation *)self setFailureContext:v9];
  v8 = [(CSDConversation *)self delegate];
  [v8 conversation:self failedWithContext:v9];
}

- (void)_reportConversationFailedWithProviderEndedReason:(unint64_t)a3
{
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v7 = objc_alloc_init(CXCallFailureContext);
  [v7 setProviderEndedReason:a3];
  [v7 setFailureReason:a3];
  [(CSDConversation *)self setFailureContext:v7];
  v6 = [(CSDConversation *)self delegate];
  [v6 conversation:self failedWithContext:v7];
}

- (id)_stableExpanseIdentifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(CSDConversation *)self messagesGroupUUID];
  v5 = [v4 UUIDString];
  if ([v5 length])
  {
    v6 = [(CSDConversation *)self isOneToOneModeEnabled];

    if ((v6 & 1) == 0)
    {
      v7 = [(CSDConversation *)self messagesGroupUUID];
      v8 = [v7 UUIDString];
      [v3 addObject:v8];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(CSDConversation *)self remoteMemberHandles];
  v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v20 + 1) + 8 * i) normalizedValue];
        [v3 addObject:v13];
      }

      v10 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v10);
  }

LABEL_12:

  [v3 sortUsingSelector:"caseInsensitiveCompare:"];
  v14 = [v3 componentsJoinedByString:@"-"];
  v15 = [v14 dataUsingEncoding:4];
  v16 = [v15 SHA1HexString];

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(CSDConversation *)self UUID];
    *buf = 138412546;
    v25 = v16;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_stableExpanseIdentifier %@ for %@ ", buf, 0x16u);
  }

  return v16;
}

- (void)_registerPluginsIfNecessary
{
  v3 = [(CSDConversation *)self idsSession];
  v4 = [v3 isJoined];

  if (v4)
  {
    v10 = [(CSDConversation *)self virtualParticipantsByPluginName];
    v5 = [v10 objectForKeyedSubscript:@"PubSub"];
    if (v5)
    {
    }

    else
    {
      v6 = [(CSDConversation *)self activitySessions];
      v7 = [v6 count];

      if (v7)
      {
        v11 = IDSGroupSessionPluginNameKey;
        v12 = @"PubSub";
        v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
        v9 = [(CSDConversation *)self idsSession];
        [v9 registerPluginWithOptions:v8];
      }
    }
  }
}

- (void)switchBackToOneToOneIfPossibleUsingDelay:(BOOL)a3
{
  v64 = a3;
  v3 = [(CSDConversation *)self downgradeToOneToOneAfterDelayBlock];

  v4 = self;
  if (v3)
  {
    v5 = [(CSDConversation *)self downgradeToOneToOneAfterDelayBlock];
    dispatch_block_cancel(v5);

    v4 = self;
    [(CSDConversation *)self setDowngradeToOneToOneAfterDelayBlock:0];
  }

  v6 = [(CSDConversation *)v4 remoteMembers];
  v65 = [v6 count];

  v7 = [(CSDConversation *)self activeRemoteParticipants];
  v8 = [v7 count];
  v9 = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
  v10 = [v9 count];

  v66 = [(CSDConversation *)self activeRemoteParticipantCountMinusEligibleAVLess];
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219264;
    *v81 = [(CSDConversation *)self state];
    *&v81[8] = 1024;
    v82 = [(CSDConversation *)self isOneToOneModeEnabled];
    v83 = 2048;
    v84 = v65;
    v85 = 2048;
    v86 = &v8[v10];
    v87 = 2048;
    v88 = v66;
    v89 = 1024;
    v90 = v64;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Checking if oneToOne->1 downgrade available with state: %tu oneToOneMode: %d remoteMemberCount: %lu activeRemoteParticipantCount: %lu activeRemoteParticipantCountMinusEligibleAVLess: %lu useDelay: %d", buf, 0x36u);
  }

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CSDConversation *)self activeRemoteParticipants];
    *buf = 138412290;
    *v81 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "activeRemoteParticipantsByIdentifier: %@", buf, 0xCu);
  }

  if ([(CSDConversation *)self isOneToOneModeEnabled])
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Returning - isOneToOneModeEnabled is already true", buf, 2u);
    }

LABEL_10:

    return;
  }

  if ([(CSDConversation *)self state]!= 3)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Returning - Conversation state is not Joined", buf, 2u);
    }

    goto LABEL_10;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v15 = [(CSDConversation *)self activeRemoteParticipants];
  v16 = 0;
  v17 = [v15 countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (v17)
  {
    v18 = *v75;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v75 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v74 + 1) + 8 * i);
        v21 = [v20 capabilities];
        if ([v21 isUPlusOneAVLessAvailable])
        {
          v22 = [v20 audioVideoMode] == 0;

          if (v22)
          {
            v23 = sub_100004778();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v81 = v20;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "switchBackToOneToOneIfPossibleUsingDelay: remoteParticipant %@ is AVLess", buf, 0xCu);
            }

            ++v16;
          }
        }

        else
        {
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v74 objects:v79 count:16];
    }

    while (v17);
  }

  if (v66 == 1)
  {
    v24 = [(CSDConversation *)self featureFlags];
    if ([v24 uPlusNDowngrade])
    {
      v25 = [(CSDConversation *)self serverBag];
      v26 = [v25 isUPlusNDowngradeAvailable];

      v27 = v26 ^ 1;
    }

    else
    {
      v27 = 1;
    }

    v29 = [(CSDConversation *)self activeRemoteParticipants];
    v30 = [v29 anyObject];
    v31 = [v30 capabilities];
    v32 = [v31 isUPlusNDowngradeAvailable];

    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v81 = v16;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "switchBackToOneToOneIfPossibleUsingDelay: avLessParticipantCount: %lu", buf, 0xCu);
    }

    if (v65 == 1 || v16)
    {
      v34 = [(CSDConversation *)self link];
      if (v34)
      {

        if ((v27 | v32 ^ 1))
        {
          return;
        }
      }
    }

    else if (v27 & 1 | ((v32 & 1) == 0))
    {
      return;
    }

    if (-[CSDConversation isScreenEnabled](self, "isScreenEnabled") || (-[CSDConversation activeRemoteParticipants](self, "activeRemoteParticipants"), v35 = objc_claimAutoreleasedReturnValue(), [v35 anyObject], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isScreenEnabled"), v36, v35, (v37 & 1) != 0))
    {
      v38 = 0;
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v39 = [(CSDConversation *)self activitySessions];
      v40 = [v39 countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v40)
      {
        v38 = v37 ^ 1;
        v41 = *v71;
        while (2)
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v71 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v43 = [*(*(&v70 + 1) + 8 * j) activity];
            v44 = [v43 isScreenSharingActivity];

            if (v44)
            {
              v38 = 0;
              goto LABEL_58;
            }
          }

          v40 = [v39 countByEnumeratingWithState:&v70 objects:v78 count:16];
          if (v40)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v38 = 1;
      }

LABEL_58:
    }

    v45 = [(CSDConversation *)self featureFlags];
    if ([v45 uPlusOneScreenSharing])
    {
      v46 = [(CSDConversation *)self activeRemoteParticipants];
      v47 = [v46 anyObject];
      v48 = [v47 capabilities];
      v49 = [v48 isUPlusOneScreenShareAvailable];

      if (((v49 | v38) & 1) == 0)
      {
        return;
      }
    }

    else
    {

      if (!v38)
      {
        return;
      }
    }

    v50 = [(CSDConversation *)self featureFlags];
    if ([v50 gftDowngradeToOneToOne])
    {
      v51 = [(CSDConversation *)self serverBag];
      v52 = [v51 isGFTDowngradeToOneToOneAvailable];
    }

    else
    {
      v52 = 0;
    }

    v53 = [(CSDConversation *)self activeRemoteParticipants];
    v54 = [v53 anyObject];
    v55 = [v54 capabilities];
    v56 = [v55 isGFTDowngradeToOneToOneAvailable];

    if (v52 & v56)
    {
      if (v64)
      {
        objc_initWeak(buf, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009E6A4;
        block[3] = &unk_10061A740;
        objc_copyWeak(&v69, buf);
        v57 = dispatch_block_create(0, block);
        [(CSDConversation *)self setDowngradeToOneToOneAfterDelayBlock:v57];

        [(CSDConversation *)self sessionSwitchTimeout];
        v59 = dispatch_time(0, (v58 * 1000000000.0));
        v60 = [(CSDConversation *)self queue];
        v61 = [(CSDConversation *)self downgradeToOneToOneAfterDelayBlock];
        dispatch_after(v59, v60, v61);

        objc_destroyWeak(&v69);
        objc_destroyWeak(buf);
      }

      else
      {
        v63 = sub_100004778();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "We only have 1 remote participant that AV compatible, requesting to move back to U+1 mode", buf, 2u);
        }

        [(CSDConversation *)self setOneToOneModeEnabled:1];
      }
    }

    else
    {
      v62 = sub_100004778();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v81 = v52;
        *&v81[4] = 1024;
        *&v81[6] = v56;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Screen sharing has ended but not requesting to move back to U+1 mode since localDowngradeAvailable:%d remoteDowngradeAvailable:%d", buf, 0xEu);
      }
    }
  }

  else
  {
    v28 = sub_100004778();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Returning - active remote participants is greater than 1 or zero", buf, 2u);
    }
  }
}

- (void)continueHandoffAudioRouteForIdentifier:(unint64_t)a3 participantLeft:(BOOL)a4
{
  v4 = a4;
  v7 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CSDConversation *)self audioRoutesByParticipantIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = sub_100004778();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v12)
    {
      v16 = 134217984;
      v17 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did not retrieve a route identifier for participant identifier %llu", &v16, 0xCu);
    }

    goto LABEL_8;
  }

  if (v12)
  {
    v16 = 138412546;
    v17 = v10;
    v18 = 2048;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Retrieved route identifier %@ for participant identifier %llu", &v16, 0x16u);
  }

  v13 = +[NSNotificationCenter defaultCenter];
  v14 = +[CSDHandoffAudioController continueHandoffAudioRouteNotification];
  [v13 postNotificationName:v14 object:v10];

  if (v4)
  {
    v11 = [(CSDConversation *)self audioRoutesByParticipantIdentifier];
    v15 = [NSNumber numberWithUnsignedLongLong:a3];
    [v11 setObject:0 forKeyedSubscript:v15];

LABEL_8:
  }
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

- (void)updateConversationParticipantToHaveMatchingSiriDisplayName:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(CSDConversation *)self remoteMembers];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 handle];
        v11 = [v4 handle];
        if ([v10 isEquivalentToHandle:v11])
        {
          v12 = [v9 handle];
          v13 = [v12 siriDisplayName];
          v14 = [v13 length];

          if (v14)
          {
            v15 = [v9 handle];
            v16 = [v15 siriDisplayName];
            v17 = [v4 handle];
            [v17 setSiriDisplayName:v16];

            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

LABEL_12:
}

- (void)_generateHandoffReportIfNecessaryForUpdatedParticipantID:(unint64_t)a3 isAddParticipant:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    v51 = 0uLL;
    v52 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v7 = [(CSDConversation *)self addedHandoffParticipants];
    v8 = [v7 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v50;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v50 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v49 + 1) + 8 * i);
          if ([v12 identifier] == a3)
          {
            v18 = [(CSDConversation *)self addedHandoffParticipantToTime];
            goto LABEL_22;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v49 objects:v62 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v47 = 0uLL;
    v48 = 0uLL;
    *(&v45 + 1) = 0;
    v46 = 0uLL;
    v7 = [(CSDConversation *)self removedHandoffParticipants];
    v13 = [v7 countByEnumeratingWithState:&v45 objects:v61 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v46;
      while (2)
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v45 + 1) + 8 * j);
          if ([v12 identifier] == a3)
          {
            v18 = [(CSDConversation *)self removedHandoffParticipantToTime];
LABEL_22:
            v19 = v18;
            v20 = +[NSDate now];
            v21 = [v12 handle];
            [v19 setObject:v20 forKey:v21];

            v17 = v12;
            goto LABEL_23;
          }
        }

        v14 = [v7 countByEnumeratingWithState:&v45 objects:v61 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = 0;
LABEL_23:

  if (v17)
  {
    v22 = [v17 handle];
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = @"NO";
      *buf = 134218498;
      v56 = a3;
      v57 = 2112;
      if (v4)
      {
        v24 = @"YES";
      }

      v58 = v24;
      v59 = 2112;
      v60 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "updatedParticipantID: %llu, isAddParticipant: %@, handle: %@", buf, 0x20u);
    }

    v25 = [(CSDConversation *)self addedHandoffParticipantToTime];
    v26 = [v25 allKeys];
    if ([v26 containsObject:v22])
    {
      v27 = [(CSDConversation *)self removedHandoffParticipantToTime];
      v28 = [v27 allKeys];
      if ([v28 containsObject:v22])
      {
        v29 = [(CSDConversation *)self startAddingHandoffParticipantToTime];
        v30 = [v29 allKeys];
        v31 = [v30 containsObject:v22];

        if (!v31)
        {
LABEL_36:

          goto LABEL_37;
        }

        v32 = [(CSDConversation *)self addedHandoffParticipants];
        [v32 removeObject:v17];

        v33 = [(CSDConversation *)self removedHandoffParticipants];
        [v33 removeObject:v17];

        v53[0] = @"kCSDConversationStartAddingParticipant";
        v34 = [(CSDConversation *)self startAddingHandoffParticipantToTime];
        v35 = [v34 objectForKeyedSubscript:v22];
        v54[0] = v35;
        v53[1] = @"kCSDConversationAddedParticipant";
        v36 = [(CSDConversation *)self addedHandoffParticipantToTime];
        v37 = [v36 objectForKeyedSubscript:v22];
        v54[1] = v37;
        v53[2] = @"kCSDConversationRemovedParticipant";
        v38 = [(CSDConversation *)self removedHandoffParticipantToTime];
        v39 = [v38 objectForKeyedSubscript:v22];
        v54[2] = v39;
        v25 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:3];

        v40 = sub_100004778();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = v25;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "handoff report: %@", buf, 0xCu);
        }

        v41 = +[CSDReportingController sharedInstance];
        v42 = [(CSDConversation *)self tuConversation];
        [v41 handoffReportReceived:v25 forConversation:v42];

        v43 = [(CSDConversation *)self startAddingHandoffParticipantToTime];
        [v43 removeObjectForKey:v22];

        v44 = [(CSDConversation *)self addedHandoffParticipantToTime];
        [v44 removeObjectForKey:v22];

        v26 = [(CSDConversation *)self removedHandoffParticipantToTime];
        [v26 removeObjectForKey:v22];
      }

      else
      {
      }
    }

    goto LABEL_36;
  }

LABEL_37:
}

- (void)updateLocalParticipantCluster:(id)a3
{
  v5 = a3;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDConversation *)self featureFlags];
  v8 = [v7 nearbyFaceTimeEnabled];

  if (v8)
  {
    v9 = [(CSDConversation *)self idsSession];
    v10 = [v9 isJoined];

    if (v10)
    {
      v11 = [(CSDConversation *)self localParticipantCluster];
      v12 = [v11 isEqual:v5];

      if ((v12 & 1) == 0)
      {
        objc_storeStrong(&self->_localParticipantCluster, a3);
        [(CSDConversation *)self _recomputeAudioStates];
        v13 = [(CSDConversation *)self avcSession];
        [v13 setLocalParticipantCluster:v5];

        v14 = [(CSDConversation *)self activitySessionManager];
        v15 = [(CSDConversation *)self activeRemoteParticipants];
        v16 = NSStringFromSelector("tuConversationParticipant");
        v17 = [v15 valueForKey:v16];
        [v14 updateNearbyClustersWithLocalParticipantCluster:v5 remoteParticipants:v17];

        v18 = +[CSDReportingController sharedInstance];
        v19 = [(CSDConversation *)self tuConversation];
        [v18 participantClusterChangedForConversation:v19];

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained conversationChanged:self];

        [(CSDConversation *)self updateLocalParticipantInfo];
      }
    }

    else
    {
      v21 = sub_100004778();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100472460();
      }
    }
  }
}

- (void)postSharePlayActivityDidChangeNotificationIfNecessary:(id)a3
{
  v4 = a3;
  if ([(CSDConversation *)self state]== 3)
  {
    v5 = [v4 activity];
    v6 = [v5 isSystemActivity];

    if ((v6 & 1) == 0)
    {
      if (![v4 isLocallyInitiated] || (objc_msgSend(v4, "activity"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isScreenSharingActivity"), v7, (v8 & 1) == 0))
      {
        if (([v4 isLocallyInitiated] & 1) == 0)
        {
          v9 = +[NSNotificationCenter defaultCenter];
          [v9 postNotificationName:@"CSDSharePlayRemoteActivityDidChangeNotification" object:self];
        }
      }
    }
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not posting notification since conversation is not joined", v11, 2u);
    }
  }
}

- (void)_applyUpdateFromDataBlobForRemoteParticipant:(id)a3 participantIdentifier:(unint64_t)a4
{
  v28 = a3;
  v6 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v7 = [NSNumber numberWithUnsignedLongLong:a4];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [(CSDConversation *)self delegate];
  if (v8)
  {
    v10 = [v8 cluster];
    v11 = [v28 cluster];
    v12 = TUObjectsAreEqualOrNil();

    v13 = [v8 capabilities];
    v14 = [v28 capabilities];
    if ([v13 isEqualToCapabilities:v14])
    {
      v15 = [v8 isSpatialPersonaEnabled];
      v16 = v15 ^ [v28 isSpatialPersonaEnabled] | v12 ^ 1;
    }

    else
    {
      v16 = 1;
    }

    v17 = [v28 capabilities];
    [v8 setCapabilities:v17];

    [v8 setSpatialPersonaEnabled:{objc_msgSend(v28, "isSpatialPersonaEnabled")}];
    [v8 setSpatialPersonaGenerationCounter:{objc_msgSend(v28, "spatialPersonaGenerationCounter")}];
    v18 = [v28 cluster];
    [v8 setCluster:v18];

    if ((v12 & 1) == 0)
    {
      [(CSDConversation *)self _recomputeAudioStates];
      v19 = [(CSDConversation *)self avcSession];
      v20 = [v28 cluster];
      [v19 setParticipantCluster:v20 forParticipantWithIdentifier:a4];

      v21 = [(CSDConversation *)self activitySessionManager];
      v22 = [(CSDConversation *)self localParticipantCluster];
      v23 = [(CSDConversation *)self activeRemoteParticipants];
      v24 = NSStringFromSelector("tuConversationParticipant");
      v25 = [v23 valueForKey:v24];
      [v21 updateNearbyClustersWithLocalParticipantCluster:v22 remoteParticipants:v25];

      v26 = +[CSDReportingController sharedInstance];
      v27 = [(CSDConversation *)self tuConversation];
      [v26 participantClusterChangedForConversation:v27];
    }

    if (v16)
    {
      [v9 conversation:self updatedActiveParticipant:v8];
    }
  }
}

- (BOOL)isScreenSharingInitiationAvailable
{
  v2 = [(CSDConversation *)self sharePlaySystemStateObserver];
  v3 = [v2 allowScreenSharingInitiation];

  return v3;
}

- (void)resetAVCSession
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "resetAVCSession", v5, 2u);
  }

  v4 = [(CSDConversation *)self setupNewAVCSession:[(CSDConversation *)self isOneToOneModeEnabled]];
  [(CSDConversation *)self setAvcSession:v4];

  [(CSDConversation *)self setExpectedVideoPaused:0];
  [(CSDConversation *)self setExpectedAudioEnabled:0];
  [(CSDConversation *)self setExpectedVideoEnabled:0];
  [(CSDConversation *)self setExpectedScreenEnabled:0];
}

- (void)resetConversation
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "resetConversation", v6, 2u);
  }

  v4 = [(CSDConversation *)self activitySessionManager];
  [v4 resetSessions];

  self->_spatialPersonaEnabled = 0;
  localParticipantCluster = self->_localParticipantCluster;
  self->_localParticipantCluster = 0;
}

- (BOOL)isNearbySession
{
  v3 = [(CSDConversation *)self featureFlags];
  v4 = [v3 nearbyFaceTimeEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CSDConversation *)self idsSession];
  v6 = [v5 requiredCapabilities];
  v7 = [v6 containsObject:IDSRegistrationPropertySupportsNearbyFaceTime];

  return v7;
}

- (void)session:(id)a3 didJoinGroup:(BOOL)a4 participantIdentifiers:(id)a5 error:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  v13 = [(CSDConversation *)self idsSession];
  v14 = os_signpost_id_make_with_pointer(v12, v13);

  v15 = sub_100004778();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v27[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v14, "idsSessionJoin", "", v27, 2u);
  }

  v17 = [(CSDConversation *)self report];
  -[CSDConversation _emitRTCConnectionSetupEvent:participantIdentifier:](self, "_emitRTCConnectionSetupEvent:participantIdentifier:", 2, [v17 hashForParticipantIdentifier:{-[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier")}]);

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v27[0] = 67109378;
    v27[1] = v7;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "didJoinGroup: %d error: %@", v27, 0x12u);
  }

  v19 = [(CSDConversation *)self delegate];
  if (!v7)
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10047249C();
    }

    [(CSDConversation *)self setState:0];
    -[CSDConversation _reportConversationFailedWithProviderEndedReason:](self, "_reportConversationFailedWithProviderEndedReason:", [v10 code] + 2000);
    goto LABEL_22;
  }

  [(CSDConversation *)self setMemberIdentifiers:v9];
  [(CSDConversation *)self _startAVCSessionIfNecessary];
  [(CSDConversation *)self setLocalParticipantAudioVideoMode:[(CSDConversation *)self avMode] presentationMode:[(CSDConversation *)self presentationMode]];
  [(CSDConversation *)self createScreenCapturePickerIfNecessary];
  if ([(CSDConversation *)self state]== 2)
  {
    v20 = [(CSDConversation *)self localMember];
    if ([v20 isLightweightMember])
    {

LABEL_14:
      v23 = sub_100004778();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27[0]) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Joining conversation without AVC session for lightweight device", v27, 2u);
      }

      [(CSDConversation *)self setState:3];
      [(CSDConversation *)self setHasJoined:1];
      [(CSDConversation *)self createContentSharingSessionIfNecessary];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained conversationChanged:self];

      [(CSDConversation *)self _launchApplicationsForActivitiesIfNecessary];
      goto LABEL_17;
    }

    v22 = [(CSDConversation *)self avMode];

    if (!v22)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  [(CSDConversation *)self _registerPluginsIfNecessary];
  [v19 conversationConnectionDidStart:self];
  v25 = [(CSDConversation *)self featureFlags];
  if (![v25 nearbyFaceTimeEnabled] || !-[CSDConversation isNearbySession](self, "isNearbySession"))
  {
    goto LABEL_21;
  }

  v26 = [(CSDConversation *)self isLocallyCreated];

  if (v26)
  {
    v25 = [(CSDConversation *)self remoteMembers];
    [(CSDConversation *)self startTimeOutForNearbyMembers:v25];
LABEL_21:
  }

LABEL_22:
  [v19 conversationChanged:self];
}

- (void)session:(id)a3 didLeaveGroupWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversation *)self delegate];
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didLeaveGroupWithError: %@", buf, 0xCu);
  }

  if (v7)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v29 = [(CSDConversation *)self UUID];
      *buf = 138412802;
      v36 = v6;
      v37 = 2112;
      v38 = v29;
      v39 = 2112;
      v40 = v7;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CSDIDSGroupSession %@ failed to leave group for conversation UUID %@: %@", buf, 0x20u);
    }
  }

  [v9 conversationDidLeave:self];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [(CSDConversation *)self activeRemoteParticipants];
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        [v17 setStreamToken:0];
        [v17 setScreenToken:0];
        [v17 setCaptionsToken:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v18 = +[NSMutableDictionary dictionary];
  virtualParticipantsByPluginName = self->_virtualParticipantsByPluginName;
  self->_virtualParticipantsByPluginName = v18;

  [(CSDConversation *)self _stopAVCSession];
  [(CSDConversation *)self setSplitSessionSecondary:0];
  v20 = objc_alloc_init(NSMutableSet);
  [(CSDConversation *)self setPendingRemoteMembers:v20];

  v21 = [(CSDConversation *)self letMeInRequestUINotificationBlock];

  if (v21)
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Cancel letMeInRequestUINotificationBlock", buf, 2u);
    }

    v23 = [(CSDConversation *)self letMeInRequestUINotificationBlock];
    dispatch_block_cancel(v23);

    [(CSDConversation *)self setLetMeInRequestUINotificationBlock:0];
  }

  [(CSDConversation *)self resetConversation];
  v24 = +[NSMutableDictionary dictionary];
  [(CSDConversation *)self setSequenceNumberToTime:v24];

  v25 = [(CSDConversation *)self localMember];
  v26 = [v25 isLightweightMember];

  if (v26)
  {
    [v9 conversationInvalidated:self];
  }

  v27 = [(CSDConversation *)self avcSession];
  if (v27 && [(CSDConversation *)self isAudioReady])
  {
    v28 = [(CSDConversation *)self isNotNeededToStopAVCSession];

    if ((v28 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  [(CSDConversation *)self setAvcSession:0];
  [(CSDConversation *)self setNotNeededToStopAVCSession:0];
  [(CSDConversation *)self setState:0];
  [(CSDConversation *)self _cancelTimeoutForLeavingConversation];
  if (!v7)
  {
    [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:528];
  }

  [(CSDConversation *)self _cleanUpHandoffMetricsIfNecessary];
  [(CSDConversation *)self _restartIDSSessionIfNecessary];
LABEL_28:
  [v9 conversationChanged:self];
}

- (void)session:(id)a3 endedWithError:(id)a4 reason:(unsigned int)a5
{
  v7 = a4;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversation *)self delegate];
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v24 = [(CSDConversation *)self isOneToOneModeEnabled];
    v25 = [(CSDConversation *)self remoteMembers];
    v26 = 138413058;
    v27 = v7;
    v28 = 1024;
    v29 = a5;
    v30 = 1024;
    v31 = v24;
    v32 = 2048;
    v33 = [v25 count];
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "endedWithError: %@ reason: %d, isOneToOneModeEnabled: %d, remoteMembers count: %lu", &v26, 0x22u);
  }

  [(CSDConversation *)self setAvcSession:0];
  [(CSDConversation *)self setAvcSessionInProgress:0];
  v11 = +[NSMutableDictionary dictionary];
  virtualParticipantsByPluginName = self->_virtualParticipantsByPluginName;
  self->_virtualParticipantsByPluginName = v11;

  [(CSDConversation *)self _cancelTimeoutForLeavingConversation];
  [(CSDConversation *)self _cleanUpHandoffMetricsIfNecessary];
  [(CSDConversation *)self setSplitSessionSecondary:0];
  [(CSDConversation *)self resetConversation];
  v13 = [(CSDConversation *)self localMember];
  v14 = [v13 isLightweightMember];

  if (v14)
  {
    [v9 conversationInvalidated:self];
  }

  if (a5 == 48)
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unknown participant added while in lockdown mode, cleaning up", &v26, 2u);
    }

    [(CSDConversation *)self _cleanUpConversation];
    v16 = self;
    v17 = 14;
    v18 = 2048;
    goto LABEL_13;
  }

  if (a5 == 44)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Kicked from the conversation, cleaning up", &v26, 2u);
    }

    [(CSDConversation *)self _cleanUpConversation];
    v16 = self;
    v17 = 7;
    v18 = 2044;
LABEL_13:
    [(CSDConversation *)v16 _reportConversationFailedWithFailureReason:v17 providerEndedReason:v18];
    goto LABEL_14;
  }

  if (-[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled") && (-[CSDConversation remoteMembers](self, "remoteMembers"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 count], v20, v21 == 1))
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "U + 1, no need to recreate session, cleaning up", &v26, 2u);
    }

    [(CSDConversation *)self _cleanUpConversation];
  }

  else
  {
    [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:a5 + 2000];
    if (v7)
    {
      v23 = [(CSDConversation *)self idsSession];
      [v23 restart];
    }
  }

LABEL_14:
  [(CSDConversation *)self setState:0];
  [v9 conversationChanged:self];
}

- (void)updateParticipantsWithDestinationIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDConversation *)self activeParticipants];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 identifier]);
        v13 = [v4 objectForKeyedSubscript:v12];

        if (v13)
        {
          [v11 setActiveIDSDestination:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)reviveOrInvalidateCachedConversationIfNecessary
{
  v2 = self;
  v3 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(CSDConversation *)v2 isFromStorage])
  {
    v4 = [(CSDConversation *)v2 serverProvidedParticipantIdentifiers];
    if (v4)
    {
      v5 = v4;
      v6 = [(CSDConversation *)v2 serverProvidedLightweightParticipantIdentifiers];

      if (v6)
      {
        v32 = [(CSDConversation *)v2 delegate];
        v35 = +[NSMutableSet set];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = [(CSDConversation *)v2 serverProvidedLightweightParticipantIdentifiers];
        v37 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v37)
        {
          v36 = *v44;
          v34 = v2;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v44 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v8 = *(*(&v43 + 1) + 8 * i);
              v9 = [(CSDConversation *)v2 activeLightweightParticipantDestinationsByIdentifier];
              v10 = [v9 objectForKeyedSubscript:v8];

              if (v10)
              {
                v38 = v8;
                v41 = 0u;
                v42 = 0u;
                v39 = 0u;
                v40 = 0u;
                v11 = [(CSDConversation *)v2 lightweightMembers];
                v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v40;
LABEL_12:
                  v15 = 0;
                  while (1)
                  {
                    if (*v40 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = *(*(&v39 + 1) + 8 * v15);
                    v17 = [v16 handle];
                    v18 = [TUHandle normalizedHandleWithDestinationID:v10];
                    v19 = [v17 isEquivalentToHandle:v18];

                    if (v19)
                    {
                      break;
                    }

                    if (v13 == ++v15)
                    {
                      v13 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
                      if (v13)
                      {
                        goto LABEL_12;
                      }

                      goto LABEL_18;
                    }
                  }

                  v20 = v16;

                  v2 = v34;
                  v8 = v38;
                  if (v20)
                  {
                    goto LABEL_21;
                  }
                }

                else
                {
LABEL_18:

                  v2 = v34;
                  v8 = v38;
                }
              }

              [v35 addObject:v8];
              v20 = 0;
LABEL_21:
            }

            v37 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
          }

          while (v37);
        }

        v21 = [(CSDConversation *)v2 serverProvidedParticipantIdentifiers];
        if ([v21 count])
        {
        }

        else
        {
          v22 = [v35 count];

          if (!v22)
          {
            v30 = sub_100004778();
            v29 = v32;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [(CSDConversation *)v2 UUID];
              *buf = 138412290;
              v48 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Invalidating cached conversation: %@, no remote active participants were found.", buf, 0xCu);
            }

            [v32 conversationInvalidated:v2];
            goto LABEL_29;
          }
        }

        v23 = sub_100004778();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(CSDConversation *)v2 UUID];
          v25 = [(CSDConversation *)v2 activeParticipantDestinationsByIdentifier];
          v26 = [v25 count];
          v27 = [(CSDConversation *)v2 serverProvidedLightweightParticipantIdentifiers];
          v28 = [v27 count];
          *buf = 138412546;
          v48 = v24;
          v49 = 2048;
          v50 = &v26[v28];
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Activating cached conversation with UUID: %@ since %lu remote participants were still found to be active.", buf, 0x16u);
        }

        [(CSDConversation *)v2 setFromStorage:0];
        v29 = v32;
        [v32 conversationChanged:v2];
LABEL_29:
      }
    }
  }
}

- (void)session:(id)a3 receivedActiveParticipantDestinationsByIdentifier:(id)a4
{
  v32 = a3;
  v33 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v33 allKeys];
  v8 = [NSSet setWithArray:v7];
  [(CSDConversation *)self setServerProvidedParticipantIdentifiers:v8];

  [(CSDConversation *)self setActiveParticipantDestinationsByIdentifier:v33];
  v9 = [(CSDConversation *)self recentlyLeftParticipantIdentifiers];
  [v9 removeAllObjects];

  if (![(CSDConversation *)self _endScreenCallIfNecessary])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = v33;
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (!v11)
    {
      goto LABEL_21;
    }

    v34 = *v39;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
        v15 = [v14 objectForKeyedSubscript:v13];

        if (v15)
        {
          v16 = [v10 objectForKeyedSubscript:v13];
          [v15 setActiveIDSDestination:v16];

          v17 = [(CSDConversation *)self localParticipantIdentifier];
          if (v17 == [v15 identifier])
          {
            v18 = sub_100004778();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v15;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Found cached pending-participant, do not add local participant: %@", buf, 0xCu);
            }

            v19 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
            [v19 removeObjectForKey:v13];
          }

          else
          {
            v20 = [(CSDConversation *)self featureFlags];
            if ([v20 controlMessageOverQREnabled])
            {
              v21 = [(CSDConversation *)self serverBag];
              v22 = [v21 isControlMessageOverQREnabled];

              if (v22)
              {
                objc_initWeak(buf, self);
                v23 = [(CSDConversation *)self serverBag];
                v24 = dispatch_time(0, 1000000 * [v23 addParticipantFromQRTime]);
                v25 = [(CSDConversation *)self queue];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_1000A0E08;
                block[3] = &unk_10061A790;
                objc_copyWeak(&v37, buf);
                block[4] = self;
                block[5] = v13;
                v36 = v15;
                dispatch_after(v24, v25, block);

                objc_destroyWeak(&v37);
                objc_destroyWeak(buf);
                goto LABEL_19;
              }
            }

            else
            {
            }

            v26 = sub_100004778();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v15;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Found cached pending-participant, adding as active-participant, csdParticipant: %@", buf, 0xCu);
            }

            [(CSDConversation *)self addActiveParticipant:v15];
            v27 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
            [v27 removeObjectForKey:v13];
          }
        }

LABEL_19:
      }

      v11 = [v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (!v11)
      {
LABEL_21:

        v28 = [(CSDConversation *)self featureFlags];
        if ([v28 controlMessageOverQREnabled])
        {
          v29 = [(CSDConversation *)self serverBag];
          v30 = [v29 isControlMessageOverQREnabled];

          if (v30)
          {
LABEL_26:
            [(CSDConversation *)self reviveOrInvalidateCachedConversationIfNecessary];
            [(CSDConversation *)self _requestAVCBlobsIfNecessary];
            [(CSDConversation *)self _cancelInFlightAVCBlobRecoveryIfNecessary];
            [(CSDConversation *)self _showLetMeInUIIfNecessary];
            [(CSDConversation *)self _endCallIfNecessary];
            [(CSDConversation *)self _pruneRemoteParticipantsIfNecessary];
            break;
          }
        }

        else
        {
        }

        v31 = +[NSMutableDictionary dictionary];
        [(CSDConversation *)self setPendingConversationParticipantsByIdentifier:v31];

        goto LABEL_26;
      }
    }
  }
}

- (void)session:(id)a3 receivedActiveLightweightParticipantDestinationsByIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 allKeys];
  v8 = [NSSet setWithArray:v7];
  [(CSDConversation *)self setServerProvidedLightweightParticipantIdentifiers:v8];

  [(CSDConversation *)self setActiveLightweightParticipantDestinationsByIdentifier:v5];
  if (![(CSDConversation *)self _endScreenCallIfNecessary])
  {
    [(CSDConversation *)self reviveOrInvalidateCachedConversationIfNecessary];

    [(CSDConversation *)self _pruneRemoteParticipantsIfNecessary];
  }
}

- (void)sessionDidTerminate:(id)a3
{
  v4 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v4);

  [(CSDConversation *)self setState:0];
  [(CSDConversation *)self _cancelTimeoutForLeavingConversation];
  [(CSDConversation *)self _cleanUpHandoffMetricsIfNecessary];
  [(CSDConversation *)self _restartIDSSessionIfNecessary];
  v5 = [(CSDConversation *)self delegate];
  [v5 conversationChanged:self];
}

- (void)session:(id)a3 didReceiveLocalParticipantType:(unsigned __int16)a4 requestIdentifier:(unint64_t)a5 error:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v10);

  if (v9)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CSDConversation *)self UUID];
      v48 = 138412546;
      *v49 = v12;
      *&v49[8] = 2112;
      *&v49[10] = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requested audio/video mode changed for conversation %@ failed with error %@", &v48, 0x16u);
    }

    v13 = [(CSDConversation *)self featureFlags];
    if ([v13 controlMessageOverQREnabled])
    {
      v14 = [(CSDConversation *)self serverBag];
      v15 = [v14 isControlMessageOverQREnabled];

      if (v15)
      {
        v16 = [(CSDConversation *)self sequenceNumberToTime];
        v17 = [NSNumber numberWithUnsignedLongLong:a5];
        v18 = [v16 objectForKey:v17];

        if (v18)
        {
          v19 = [(CSDConversation *)self sequenceNumberToTime];
          v20 = [NSNumber numberWithUnsignedLongLong:a5];
          [v19 removeObjectForKey:v20];
        }

        else
        {
          v19 = sub_100004778();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v48 = 134217984;
            *v49 = a5;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't find requestIdentifier: %llu", &v48, 0xCu);
          }
        }
      }

      goto LABEL_62;
    }

LABEL_61:

    goto LABEL_62;
  }

  if ([(CSDConversation *)self state]== 2 || [(CSDConversation *)self state]== 3)
  {
    if (v7 == 1)
    {
      if ([(CSDConversation *)self avMode]== 1 || [(CSDConversation *)self avMode]== 2)
      {
        v24 = sub_100004778();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v48) = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Configuring session since local participant type is Normal", &v48, 2u);
        }

        v25 = [(CSDConversation *)self avMode];
        v26 = [(CSDConversation *)self avcSession];
        [v26 setAudioEnabled:1];
        [v26 setVideo:v25 == 2];
        v27 = [(CSDConversation *)self expectedVideoEnabled];

        if (v27)
        {
          v28 = [(CSDConversation *)self expectedVideoEnabled];
          [v26 setVideoEnabled:{objc_msgSend(v28, "BOOLValue")}];
        }

        if (-[CSDConversation usesAudioSession](self, "usesAudioSession") && (-[CSDConversation avcSession](self, "avcSession"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 isAudioReady], v29, !v30))
        {
          v38 = sub_100004778();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            if ([(CSDConversation *)self usesAudioSession])
            {
              v39 = @"YES";
            }

            else
            {
              v39 = @"NO";
            }

            v40 = [(CSDConversation *)self avcSession];
            if ([v40 isAudioReady])
            {
              v41 = @"YES";
            }

            else
            {
              v41 = @"NO";
            }

            v48 = 138412546;
            *v49 = v39;
            *&v49[8] = 2112;
            *&v49[10] = v41;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Not starting audio, usesAudioSession: %@, audioReady: %@", &v48, 0x16u);
          }
        }

        else
        {
          v31 = sub_100004778();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            if ([(CSDConversation *)self usesAudioSession])
            {
              v32 = @"YES";
            }

            else
            {
              v32 = @"NO";
            }

            v33 = [(CSDConversation *)self avcSession];
            if ([v33 isAudioReady])
            {
              v34 = @"YES";
            }

            else
            {
              v34 = @"NO";
            }

            v48 = 138412546;
            *v49 = v32;
            *&v49[8] = 2112;
            *&v49[10] = v34;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Starting audio, usesAudioSession: %@, audioReady: %@", &v48, 0x16u);
          }

          [(CSDConversation *)self startAudio];
        }

        goto LABEL_58;
      }
    }

    else if (!v7 && ![(CSDConversation *)self avMode])
    {
      v21 = sub_100004778();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        if ([(CSDConversation *)self avcSessionInProgress])
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        v23 = [(CSDConversation *)self avcSession];
        v48 = 138412546;
        *v49 = v22;
        *&v49[8] = 2112;
        *&v49[10] = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Stopping session since local participant type is Lightweight avcSessionInProgress %@ avcSession: %@", &v48, 0x16u);
      }

      if ([(CSDConversation *)self avcSessionInProgress])
      {
        [(CSDConversation *)self _stopAVCSession];
        [(CSDConversation *)self setAvcSessionInProgress:0];
      }

      else
      {
        v37 = [(CSDConversation *)self avcSession];
        if (v37)
        {
        }

        else
        {
          v45 = [(CSDConversation *)self localMember];
          v46 = [v45 isLightweightMember];

          if ((v46 & 1) == 0)
          {
            v47 = sub_100004778();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v48) = 0;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Downgraded from AV -> AVLess, but didn't have AVCSession yet. Creating an AVCSession.", &v48, 2u);
            }

            [(CSDConversation *)self resetAVCSession];
          }
        }
      }

LABEL_58:
      v42 = sub_100004778();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [(CSDConversation *)self localParticipant];
        v48 = 67109378;
        *v49 = v7;
        *&v49[4] = 2112;
        *&v49[6] = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "didReceiveLocalParticipantType: %hu, localParticipant: %@", &v48, 0x12u);
      }

      v13 = [(CSDConversation *)self delegate];
      v44 = [(CSDConversation *)self localParticipant];
      [v13 conversation:self didChangeLocalParticipant:v44 broadcastActivitySession:1 currentSequenceNumber:a5 fromResponse:1];

      goto LABEL_61;
    }

    v35 = sub_100004778();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10047257C(self);
    }
  }

  else
  {
    v36 = sub_100004778();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_10047250C();
    }

    [CSDCrashReporter simulateCrashReportWithFormat:@"Received update callback for participant type without being joined into a conversation. Please file a bug to [FaceTime | (New Bugs)]"];
  }

LABEL_62:
}

- (void)_updateParticipantTypesForAddedParticipant:(id)a3
{
  v4 = a3;
  -[CSDConversation setRemoteParticipantType:participant:](self, "setRemoteParticipantType:participant:", [v4 audioVideoMode] != 0, v4);
}

- (void)updateOneToOneModeForParticipantUpdateType:(unsigned __int16)a3 participant:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 identifier]);
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
    v11 = [v10 count];
    v12 = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
    v13 = [v12 count];

    if (&v13[v11])
    {
      v14 = [(CSDConversation *)self activeRemoteParticipantCountMinusEligibleAVLess]== 1;
    }

    else
    {
      v14 = [(CSDConversation *)self isOneToOneModeEnabled];
    }

    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 67109634;
      *v29 = v4;
      *&v29[4] = 2112;
      *&v29[6] = v6;
      v30 = 1024;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "type: %d participant: %@, shouldSetOneToOneModeEnabled: %d", &v28, 0x18u);
    }

    v17 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
    v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 identifier]);
    v15 = [v17 objectForKeyedSubscript:v18];

    if (v4 == 1)
    {
      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        *v29 = v6;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Adding participant: %@", &v28, 0xCu);
      }

      [(CSDConversation *)self _addRemoteParticipantToAVCSessionIfPossible:v6];
      -[NSObject setAudioVideoMode:](v15, "setAudioVideoMode:", [v6 audioVideoMode]);
      if (!(v14 | ![(CSDConversation *)self isOneToOneModeEnabled]))
      {
        [(CSDConversation *)self setOneToOneModeEnabled:0];
      }
    }

    else if (!v4)
    {
      v19 = [(CSDConversation *)self avcSession];
      v20 = [v19 pendingRemovedRemoteParticipantByIdentififer:{objc_msgSend(v6, "identifier")}];

      v21 = [(CSDConversation *)self avcSession];
      v22 = [v21 containsRemoteParticipantWithIdentifier:{objc_msgSend(v6, "identifier")}];

      v23 = sub_100004778();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 67109376;
        *v29 = v20 != 0;
        *&v29[4] = 1024;
        *&v29[6] = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "isRemovingParticipantWithIdentifier: %d containsRemoteParticipantWithIdentifier: %d", &v28, 0xEu);
      }

      v24 = sub_100004778();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v20 || ((v22 ^ 1) & 1) != 0)
      {
        if (v25)
        {
          v28 = 138412290;
          *v29 = v6;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Ignoring to remove participant %@ since its in pending list", &v28, 0xCu);
        }
      }

      else
      {
        if (v25)
        {
          v28 = 138412290;
          *v29 = v6;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removing participant %@", &v28, 0xCu);
        }

        v26 = [(CSDConversation *)self avcSession];
        [v26 removeParticipant:v6];

        [v15 setAudioVideoMode:0];
        if (![(CSDConversation *)self isOneToOneModeEnabled]&& v14)
        {
          [(CSDConversation *)self switchBackToOneToOneIfPossibleUsingDelay:1];
        }
      }
    }
  }

  else
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No participant found on the conversation", &v28, 2u);
    }
  }
}

- (void)session:(id)a3 didReceiveJoinedParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v7 = a5;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversation *)self featureFlags];
  if ([v9 controlMessageOverQREnabled])
  {
    v10 = [(CSDConversation *)self serverBag];
    v11 = [v10 isControlMessageOverQREnabled];

    if (v11)
    {
      if ([(CSDConversation *)self localParticipantIdentifier]== a4)
      {
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v38 = a4;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Do not add local participant: %llu", buf, 0xCu);
        }

        v13 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
        v14 = [NSNumber numberWithUnsignedLongLong:a4];
        [(CSDMessagingConversationParticipant *)v13 removeObjectForKey:v14];
        goto LABEL_16;
      }

      if (v7)
      {
        v13 = [[CSDMessagingConversationParticipant alloc] initWithData:v7];
        [(CSDMessagingConversationParticipant *)v13 setIdentifier:a4];
        v18 = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
        v19 = [NSNumber numberWithUnsignedLongLong:a4];
        v20 = [v18 objectForKeyedSubscript:v19];

        v21 = IDSCopyTokenAndIDForTokenWithID();
        v22 = 0;
        v23 = [v21 _stripFZIDPrefix];
        v24 = [TUHandle normalizedHandleWithDestinationID:v23];

        if (v24)
        {
          v36 = v22;
          v25 = [CSDMessagingHandle handleWithTUHandle:v24];
          [(CSDMessagingConversationParticipant *)v13 setHandle:v25];

          v26 = [(CSDMessagingConversationParticipant *)v13 csdConversationParticipant];
          v27 = sub_100004778();
          v28 = v27;
          if (v26)
          {
            v35 = v20;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v38 = v26;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "didReceiveJoinedParticipantID: add csdParticipant: %@ to active participant", buf, 0xCu);
            }

            [(CSDConversation *)self addActiveParticipant:v26];
            v29 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
            v30 = [NSNumber numberWithUnsignedLongLong:a4];
            v28 = [v29 objectForKeyedSubscript:v30];

            if (v28)
            {
              v31 = sub_100004778();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
                *buf = 134218242;
                v38 = a4;
                v39 = 2112;
                v40 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "remove participantID: %llu from pendingConversationParticipantsByIdentifier %@", buf, 0x16u);
              }

              v33 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
              v34 = [NSNumber numberWithUnsignedLongLong:a4];
              [v33 removeObjectForKey:v34];
            }

            v20 = v35;
          }

          else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100472610(v13, a4);
          }

          v22 = v36;
        }

        else
        {
          v26 = sub_100004778();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218754;
            v38 = a4;
            v39 = 2112;
            v40 = v20;
            v41 = 2112;
            v42 = v22;
            v43 = 2112;
            v44 = v21;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Couldn't find handle for participantID: %llu, participantDestination: %@, participantToken: %@, participantURI: %@", buf, 0x2Au);
          }
        }
      }

      else
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "no valid clientContext, return", buf, 2u);
        }
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CSDConversation *)self featureFlags];
    if ([v14 controlMessageOverQREnabled])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [(CSDConversation *)self serverBag];
    if ([v16 isControlMessageOverQREnabled])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    *buf = 138412546;
    v38 = v15;
    v39 = 2112;
    v40 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "didReceiveJoinedParticipantID: feature flag of controlMessageOverQREnabled: %@, server bag of isControlMessageOverQREnabled: %@, return", buf, 0x16u);

LABEL_16:
  }

LABEL_17:
}

- (void)session:(id)a3 didReceiveParticipantUpdateParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(CSDConversation *)self featureFlags];
  if (([v11 controlMessageOverQREnabled] & 1) == 0)
  {

    goto LABEL_7;
  }

  v12 = [(CSDConversation *)self serverBag];
  v13 = [v12 isControlMessageOverQREnabled];

  if ((v13 & 1) == 0)
  {
LABEL_7:
    v14 = sub_100004778();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v18 = [(CSDConversation *)self featureFlags];
    if ([v18 controlMessageOverQREnabled])
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v20 = [(CSDConversation *)self serverBag];
    if ([v20 isControlMessageOverQREnabled])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 138412546;
    v43 = v19;
    v44 = 2112;
    v45 = v21;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "didReceiveParticipantUpdateParticipantID: feature flag of controlMessageOverQREnabled: %@, server bag of isControlMessageOverQREnabled: %@, return", buf, 0x16u);

LABEL_15:
    goto LABEL_16;
  }

  if ([(CSDConversation *)self localParticipantIdentifier]== a4)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v43 = a4;
      v15 = "didReceiveParticipantUpdateParticipantID: Do not process local participant: %llu";
      v16 = v14;
      v17 = 12;
LABEL_35:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (v9)
  {
    v22 = [[CSDMessagingConversationMessage alloc] initWithData:v9];
    v14 = v22;
    if (!v22)
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "didReceiveParticipantUpdateParticipantID: no valid message, return", buf, 2u);
      }

      goto LABEL_15;
    }

    if (!sub_1000C0318(v22))
    {
      goto LABEL_16;
    }

    v36 = v8;
    v23 = [v14 activeParticipants];
    v18 = [v23 firstObject];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = [(CSDConversation *)self activeRemoteParticipants];
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v25)
    {
      v26 = v25;
      v35 = v9;
      v27 = 0;
      v28 = *v38;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v37 + 1) + 8 * i);
          v31 = [v30 identifier];
          if (v31 == [v18 identifier])
          {
            v32 = [v30 handle];

            v27 = v32;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v26);

      v9 = v35;
      if (v27)
      {
        v33 = sub_100004778();
        v8 = v36;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v27;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Found remoteParticipant: %@ for didReceiveParticipantUpdateParticipantID", buf, 0xCu);
        }

        v34 = [(CSDConversation *)self delegate];
        [v34 conversation:self didReceiveParticipantUpdateMessage:v14 fromNormalizedHandle:v27];

LABEL_41:
        goto LABEL_15;
      }
    }

    else
    {
    }

    v27 = sub_100004778();
    v8 = v36;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100472684();
    }

    goto LABEL_41;
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v15 = "didReceiveParticipantUpdateParticipantID: no valid clientContext, return";
    v16 = v14;
    v17 = 2;
    goto LABEL_35;
  }

LABEL_16:
}

- (void)session:(id)a3 didReceiveLeftParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v7 = a5;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversation *)self featureFlags];
  if (([v9 controlMessageOverQREnabled] & 1) == 0)
  {

LABEL_7:
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(CSDConversation *)self featureFlags];
      if ([v14 controlMessageOverQREnabled])
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v16 = [(CSDConversation *)self serverBag];
      if ([v16 isControlMessageOverQREnabled])
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      *buf = 138412546;
      v35 = v15;
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "feature flag of controlMessageOverQREnabled: %@, server bag of isControlMessageOverQREnabled: %@, return", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v10 = [(CSDConversation *)self serverBag];
  v11 = [v10 isControlMessageOverQREnabled];

  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v7)
  {
    v12 = [[CSDMessagingConversationParticipantDidLeaveContext alloc] initWithData:v7];
    v28 = [v12 leaveReason];
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v35 = a4;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ParticipantId %llu left with leave context %@", buf, 0x16u);
    }
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v35 = a4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ParticipantID %llu left without providing leave context", buf, 0xCu);
    }

    v28 = 0;
    v12 = 0;
  }

  [(CSDConversation *)self activeParticipants];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v32 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        if ([v23 identifier] == a4)
        {
          v25 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
          v26 = [NSNumber numberWithUnsignedLongLong:a4];
          [v25 removeObjectForKey:v26];

          v27 = [v23 handle];
          [(CSDConversation *)self removeParticipantWithIdentifier:a4 fromHandle:v27 withReason:v28];

          v24 = v18;
          goto LABEL_29;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v24 = sub_100004778();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v35 = a4;
    v36 = 2112;
    v37 = v18;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Couldn't find participantID %llu from active participant list: %@", buf, 0x16u);
  }

LABEL_29:

LABEL_30:
}

- (void)session:(id)a3 didReceiveReport:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v8 = +[CSDReportingController sharedInstance];
  v7 = [(CSDConversation *)self tuConversation];
  [v8 idsReportsReceived:v5 forConversation:v7];
}

- (void)session:(id)a3 didReceiveKickedParticipantIDs:(id)a4 withCode:(unsigned int)a5 withType:(unsigned __int16)a6 isTruncated:(BOOL)a7
{
  v7 = a6;
  v93 = a4;
  v10 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v121 = v93;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didReceiveKickedParticipantIDs: %@", buf, 0xCu);
  }

  if (a5 - 4 < 2)
  {
    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v121) = a5;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] resetting state, IDSGroupSessionMemberManagementCode: %d", buf, 8u);
    }

    [(CSDConversation *)self setKickMemberRetryCount:0];
    v34 = +[NSMutableDictionary dictionary];
    [(CSDConversation *)self setPendingKickedMembersByIdentifier:v34];
    goto LABEL_69;
  }

  if (a5 == 2)
  {
    v35 = [(CSDConversation *)self kickMemberRetryCount];
    v36 = [(CSDConversation *)self serverBag];
    v37 = [v36 maxKickMemberRetries];

    if (v35 >= v37)
    {
      v50 = sub_100004778();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [(CSDConversation *)self serverBag];
        v52 = [v51 maxActiveParticipantFetchRetries];
        *buf = 134217984;
        v121 = v52;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[WARN] Not retrying to kickMembers, max retry count (%lu) reached", buf, 0xCu);
      }

      goto LABEL_70;
    }

    if (v7 == 2)
    {
      v79 = sub_100004778();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = [(CSDConversation *)self kickMemberRetryCount];
        v81 = [(CSDConversation *)self pendingAllowedMembers];
        *buf = 134218242;
        v121 = v80;
        v122 = 2112;
        v123 = v81;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Retrying allowed members: retries: %lu pendingAllowedMembers: %@", buf, 0x16u);
      }

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v82 = [(CSDConversation *)self pendingAllowedMembers];
      v41 = [v82 copy];

      v83 = [v41 countByEnumeratingWithState:&v94 objects:v116 count:16];
      if (v83)
      {
        v84 = v83;
        v85 = *v95;
        do
        {
          for (i = 0; i != v84; i = i + 1)
          {
            if (*v95 != v85)
            {
              objc_enumerationMutation(v41);
            }

            [(CSDConversation *)self _allowMember:*(*(&v94 + 1) + 8 * i)];
          }

          v84 = [v41 countByEnumeratingWithState:&v94 objects:v116 count:16];
        }

        while (v84);
      }
    }

    else
    {
      if (v7 != 1)
      {
LABEL_81:
        [(CSDConversation *)self setKickMemberRetryCount:[(CSDConversation *)self kickMemberRetryCount]+ 1];
        goto LABEL_70;
      }

      v38 = sub_100004778();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(CSDConversation *)self kickMemberRetryCount];
        v40 = [(CSDConversation *)self pendingKickedMembersByIdentifier];
        *buf = 134218242;
        v121 = v39;
        v122 = 2112;
        v123 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Retrying kicked members: retries: %lu pendingKickedMembers: %@", buf, 0x16u);
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v41 = [(CSDConversation *)self pendingKickedMembersByIdentifier];
      v42 = [v41 countByEnumeratingWithState:&v98 objects:v117 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v99;
        do
        {
          for (j = 0; j != v43; j = j + 1)
          {
            if (*v99 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v98 + 1) + 8 * j);
            v47 = [(CSDConversation *)self pendingKickedMembersByIdentifier];
            v48 = [v47 objectForKeyedSubscript:v46];

            v49 = [(CSDConversation *)self idsSession];
            [v49 kickMember:v48];
          }

          v43 = [v41 countByEnumeratingWithState:&v98 objects:v117 count:16];
        }

        while (v43);
      }
    }

    goto LABEL_81;
  }

  if (!a5)
  {
    [(CSDConversation *)self setKickMemberRetryCount:0];
    if (v7 == 2)
    {
      v53 = [NSMutableSet alloc];
      v54 = [(CSDConversation *)self pendingAllowedMembers];
      v55 = [v53 initWithSet:v54];

      v92 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v93, "count")}];
      v90 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v93, "count")}];
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v56 = [(CSDConversation *)self kickedParticipants];
      v57 = [v56 countByEnumeratingWithState:&v106 objects:v119 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v107;
        do
        {
          for (k = 0; k != v58; k = k + 1)
          {
            if (*v107 != v59)
            {
              objc_enumerationMutation(v56);
            }

            v61 = *(*(&v106 + 1) + 8 * k);
            v62 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v61 identifier]);
            v63 = [v93 containsObject:v62];

            if (v63)
            {
              v64 = [TUConversationMember alloc];
              v65 = [v61 handle];
              v66 = [v64 initWithHandle:v65];

              [v90 addObject:v61];
              [v92 addObject:v66];
              [v55 removeObject:v66];
            }
          }

          v58 = [v56 countByEnumeratingWithState:&v106 objects:v119 count:16];
        }

        while (v58);
      }

      [(CSDConversation *)self setKickedMembers:v92];
      v67 = [(CSDConversation *)self pendingAllowedMembers];
      v32 = v55;
      [v67 minusSet:v55];

      v68 = sub_100004778();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = [(CSDConversation *)self kickedMembers];
        *buf = 138412290;
        v121 = v69;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "updating kickedMembers to %@", buf, 0xCu);
      }

      v70 = sub_100004778();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = [(CSDConversation *)self pendingAllowedMembers];
        *buf = 138412290;
        v121 = v71;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "updating pendingAllowedMembers to %@", buf, 0xCu);
      }

      v72 = objc_alloc_init(NSSet);
      [(CSDConversation *)self addRemoteMembers:v55 otherInvitedHandles:v72 triggeredLocally:1];

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v73 = [(CSDConversation *)self pendingAllowedMembers];
      v74 = [v73 copy];

      v75 = [v74 countByEnumeratingWithState:&v102 objects:v118 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v103;
        do
        {
          for (m = 0; m != v76; m = m + 1)
          {
            if (*v103 != v77)
            {
              objc_enumerationMutation(v74);
            }

            [(CSDConversation *)self _allowMember:*(*(&v102 + 1) + 8 * m)];
          }

          v76 = [v74 countByEnumeratingWithState:&v102 objects:v118 count:16];
        }

        while (v76);
      }
    }

    else if (v7 == 1)
    {
      v12 = [(CSDConversation *)self remoteMembers];
      v13 = [(CSDConversation *)self lightweightMembers];
      v14 = [v12 setByAddingObjectsFromSet:v13];
      v91 = [v14 allObjects];

      v88 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v93 count]);
      v15 = [(CSDConversation *)self memberIdentifiers];
      v16 = [NSMutableSet setWithSet:v15];

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      obj = v93;
      v17 = [obj countByEnumeratingWithState:&v112 objects:v126 count:16];
      if (v17)
      {
        v19 = v17;
        v20 = *v113;
        *&v18 = 138412802;
        v87 = v18;
        do
        {
          for (n = 0; n != v19; n = n + 1)
          {
            if (*v113 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v112 + 1) + 8 * n);
            v23 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
            v24 = [v23 objectForKeyedSubscript:v22];
            v25 = v24;
            if (v24)
            {
              v26 = v24;
            }

            else
            {
              v27 = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
              v26 = [v27 objectForKeyedSubscript:v22];
            }

            [v16 removeObject:v22];
            v28 = [(CSDConversation *)self pendingKickedMembersByIdentifier];
            [v28 removeObjectForKey:v22];

            if (v26)
            {
              v110[0] = _NSConcreteStackBlock;
              v110[1] = 3221225472;
              v110[2] = sub_1000A37FC;
              v110[3] = &unk_10061A7B8;
              v29 = v26;
              v111 = v29;
              v30 = [v91 tu_firstObjectPassingTest:v110];
              if (v30)
              {
                [v88 addObject:v30];
              }

              else
              {
                v31 = sub_100004778();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = v87;
                  v121 = v22;
                  v122 = 2112;
                  v123 = v29;
                  v124 = 2112;
                  v125 = v91;
                  _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "When kicking participantID %@ we found participant %@ with no member in %@", buf, 0x20u);
                }
              }
            }
          }

          v19 = [obj countByEnumeratingWithState:&v112 objects:v126 count:16];
        }

        while (v19);
      }

      [(CSDConversation *)self setMemberIdentifiers:v16];
      [(CSDConversation *)self removeRemoteMembers:v88 triggeredLocally:0];

      v32 = v91;
    }

    else
    {
      v32 = sub_100004778();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v121) = v7;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] didReceiveKickedParticipantIDstype: %hu unexpected", buf, 8u);
      }
    }

    v34 = [(CSDConversation *)self delegate];
    [v34 conversationChanged:self];
LABEL_69:
  }

LABEL_70:
}

- (void)session:(id)a3 didRegisterPluginAllocationInfo:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 objectForKeyedSubscript:IDSGroupSessionParticipantIdentifierKey];
  v8 = [v7 unsignedLongLongValue];

  v10 = [v5 objectForKeyedSubscript:IDSGroupSessionPluginNameKey];

  if (![(__CFString *)v10 length])
  {

    v10 = @"PubSub";
  }

  v9 = [[TUConversationVirtualParticipant alloc] initWithIdentifier:v8 pluginName:v10];
  [(CSDConversation *)self addVirtualParticipant:v9];
}

- (void)session:(id)a3 didUnregisterPluginAllocationInfo:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 objectForKeyedSubscript:IDSGroupSessionParticipantIdentifierKey];
  v8 = [v7 unsignedLongLongValue];

  v13 = [v5 objectForKeyedSubscript:IDSGroupSessionPluginNameKey];

  if (![(__CFString *)v13 length])
  {

    v13 = @"PubSub";
  }

  v9 = [(CSDConversation *)self virtualParticipantsByPluginName];
  v10 = [v9 objectForKeyedSubscript:v13];
  v11 = [v10 identifier];

  if (v11 == v8)
  {
    v12 = [[TUConversationVirtualParticipant alloc] initWithIdentifier:v8 pluginName:v13];
    [(CSDConversation *)self removeVirtualParticipant:v12];
  }
}

- (void)sessionDidReceiveKeyUpdate:(id)a3
{
  v4 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDConversation *)self activitySessionManager];
  [v5 refreshDataCryptors];
}

- (void)session:(id)a3 didReceiveDataBlob:(id)a4 forParticipant:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v51 = v8;
    v52 = 2112;
    v53 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didReceiveDataBlob for participant: %@, blob %@", buf, 0x16u);
  }

  v11 = [[CSDMessagingConversationParticipant alloc] initWithData:v7];
  [(CSDMessagingConversationParticipant *)v11 setIdentifier:[v8 participantIdentifier]];
  v12 = [v8 participantURI];
  v13 = [v12 _stripFZIDPrefix];
  v14 = [TUHandle normalizedHandleWithDestinationID:v13];

  if (v14)
  {
    v15 = [(CSDConversation *)self pendingKickedMembersByIdentifier];
    v16 = [NSNumber numberWithUnsignedLongLong:[v8 participantIdentifier]];
    v17 = [v15 objectForKeyedSubscript:v16];

    if (v17)
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v8 participantIdentifier];
        *buf = 134217984;
        v51 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] didReceiveDataBlob not processing because we have a pendingKickedMember with the same identifier: %llu", buf, 0xCu);
      }

      goto LABEL_34;
    }

    v22 = [(CSDConversation *)self kickedMembers];
    v23 = [v22 allObjects];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000A41A0;
    v48[3] = &unk_10061A7B8;
    v24 = v14;
    v49 = v24;
    v25 = [v23 tu_containsObjectPassingTest:v48];

    if (v25)
    {
      v26 = sub_100004778();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] didReceiveDataBlob not processing because we have a kickedMember with the same handle: %@", buf, 0xCu);
      }

      goto LABEL_33;
    }

    v27 = [CSDMessagingHandle handleWithTUHandle:v24];
    [(CSDMessagingConversationParticipant *)v11 setHandle:v27];

    v26 = [(CSDMessagingConversationParticipant *)v11 csdConversationParticipant];
    if (!v26)
    {
      v29 = sub_100004778();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1004726F4();
      }

      goto LABEL_32;
    }

    [(CSDConversation *)self _applyUpdateFromDataBlobForRemoteParticipant:v26 participantIdentifier:[v8 participantIdentifier]];
    [(CSDConversation *)self updateConversationParticipantToHaveMatchingSiriDisplayName:v26];
    v28 = [(CSDConversation *)self localParticipantIdentifier];
    if (v28 == [v26 identifier])
    {
      v29 = sub_100004778();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v26;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "didReceiveDataBlob skipped adding local-participant's datablob to the cache, csdConversationParticipant: %@", buf, 0xCu);
      }

LABEL_32:

LABEL_33:
      v18 = v49;
      goto LABEL_34;
    }

    v30 = [(CSDConversation *)self activeParticipantDestinationsByIdentifier];
    v31 = [NSNumber numberWithUnsignedLongLong:[v26 identifier]];
    v32 = [v30 objectForKeyedSubscript:v31];
    if (!v32)
    {
      v33 = [(CSDConversation *)self activeLightweightParticipantsByIdentifier];
      v34 = [NSNumber numberWithUnsignedLongLong:[v26 identifier]];
      v35 = [v33 objectForKeyedSubscript:v34];
      if (!v35)
      {

LABEL_29:
        v40 = sub_100004778();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v26;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "didReceiveDataBlob caching as pending-participant, csdConversationParticipant: %@", buf, 0xCu);
        }

        v29 = [(CSDConversation *)self pendingConversationParticipantsByIdentifier];
        v41 = [NSNumber numberWithUnsignedLongLong:[v8 participantIdentifier]];
        [v29 setObject:v26 forKeyedSubscript:v41];

        goto LABEL_32;
      }

      v42 = v35;
      v44 = v34;
      v45 = v33;
      v32 = 0;
    }

    v46 = v31;
    v47 = v30;
    v36 = [(CSDConversation *)self recentlyLeftParticipantIdentifiers];
    v37 = [NSNumber numberWithUnsignedLongLong:[v26 identifier]];
    v38 = [v36 containsObject:v37];

    if (v32)
    {
    }

    else
    {
    }

    if ((v38 & 1) == 0)
    {
      v39 = sub_100004778();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v26;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "didReceiveDataBlob adding as active-participant, csdConversationParticipant: %@", buf, 0xCu);
      }

      [(CSDConversation *)self addActiveParticipant:v26];
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v8 participantURI];
    v21 = TULoggableStringForHandle();
    *buf = 138412290;
    v51 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] didReceiveDataBlob not processing because unable to create handle from URI: %@", buf, 0xCu);
  }

LABEL_34:
}

- (void)session:(id)a3 didReceiveData:(id)a4 dataType:(unsigned __int16)a5 forParticipant:(id)a6
{
  v6 = a5;
  v8 = a6;
  v9 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didReceiveData dataType: %u for participant: %@", v12, 0x12u);
  }

  if (v6 != 1)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100472764();
    }
  }
}

- (id)session:(id)a3 conversationParticipantWithParticipantIdentifier:(unint64_t)a4
{
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v8 = [NSNumber numberWithUnsignedLongLong:a4];
  v9 = [v7 objectForKeyedSubscript:v8];

  return v9;
}

- (id)onlyAvailableSessionConversationParticipant:(id)a3
{
  v4 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v6 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v7 = [v6 allValues];
  v8 = [v7 firstObject];
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 identifier]);
  v10 = [v5 objectForKeyedSubscript:v9];

  return v10;
}

- (void)session:(id)a3 didReceiveUnderlyingLinksStatus:(BOOL)a4
{
  v4 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CSDConversation] didReceiveUnderlyingLinksStatus: %@", &v10, 0xCu);
  }

  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversation *)self delegate];
  [v9 conversationChanged:self];
}

- (int)_errorToAVCProviderEndedReason:(id)a3 defaultProviderReason:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No error with a failed start from AVC using %d", &v14, 8u);
    }

    goto LABEL_12;
  }

  v7 = [v5 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"NSErrorUserInfoDetailedError"];

  if (v8)
  {
    v9 = [v6 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"NSErrorUserInfoDetailedError"];
    LODWORD(v8) = [v10 intValue];
  }

  a4 = v8 + 100 * [v6 code];
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109632;
    v15 = a4;
    v16 = 1024;
    v17 = [v6 code];
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AVCProviderEndReason=%d error.code=%d detailedError=%d", &v14, 0x14u);
  }

  if (!a4)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AVCProviderEndReason=%d, this should not happen", &v14, 8u);
    }

    a4 = 518;
LABEL_12:
  }

  return a4;
}

- (void)executeSessionDidStart
{
  v3 = [(CSDConversation *)self avcSession];
  if (!v3)
  {
    sub_100472814();
  }

  v4 = [(CSDConversation *)self expectedVideoEnabled];

  if (v4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CSDConversation *)self expectedVideoEnabled];
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found expectedVideoEnabled: %@, updating value to match state", &v16, 0xCu);
    }

    v7 = [(CSDConversation *)self expectedVideoEnabled];
    v8 = [v7 BOOLValue];

    [(CSDConversation *)self setExpectedVideoEnabled:0];
    [(CSDConversation *)self setVideoEnabled:v8];
  }

  v9 = [(CSDConversation *)self featureFlags];
  if ([v9 nearbyFaceTimeEnabled] && -[CSDConversation isNearbySession](self, "isNearbySession"))
  {
    v10 = [(CSDConversation *)self remoteMembers];
    v11 = [v10 count] != 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(CSDConversation *)self featureFlags];
  if (([v12 sharePlayInCallsEnabled] & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = [(CSDConversation *)self provider];
  if (([v13 isTelephonyWithSharePlayProvider] & 1) == 0)
  {

LABEL_16:
    goto LABEL_17;
  }

  v14 = [(CSDConversation *)self remoteMembers];
  v15 = [v14 count];

  if (v15 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v11;
  }

LABEL_17:
  [(CSDConversation *)self switchBackToOneToOneIfPossibleUsingDelay:v11];
  [(CSDConversation *)self createContentSharingSessionIfNecessary];
  [(CSDConversation *)self _launchApplicationsForActivitiesIfNecessary:0];
}

- (void)session:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v28[0] = 67109378;
    v28[1] = v5;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didStart: %d error: %@", v28, 0x12u);
  }

  v10 = sub_100004778();
  v11 = [(CSDConversation *)self avcSession];
  v12 = os_signpost_id_make_with_pointer(v10, v11);

  v13 = sub_100004778();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v28[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v12, "avcSessionStart", "", v28, 2u);
  }

  v15 = [(CSDConversation *)self report];
  -[CSDConversation _emitRTCConnectionSetupEvent:participantIdentifier:](self, "_emitRTCConnectionSetupEvent:participantIdentifier:", 4, [v15 hashForParticipantIdentifier:{-[CSDConversation localParticipantIdentifier](self, "localParticipantIdentifier")}]);

  v16 = [(CSDConversation *)self delegate];
  if (v5)
  {
    if ([(CSDConversation *)self state]== 2 || [(CSDConversation *)self state]== 3)
    {
      [(CSDConversation *)self setState:3];
      [(CSDConversation *)self setHasJoined:1];
      [(CSDConversation *)self executeSessionDidStart];
    }

    else
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1004728EC();
      }

      [(CSDConversation *)self setState:4];
      [(CSDConversation *)self _beginTimeoutForLeavingConversationWithReason:@"AVCSession started but we weren't trying to join the conversation."];
      [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:[(CSDConversation *)self _errorToAVCProviderEndedReason:v7 defaultProviderReason:515]];
      [(CSDConversation *)self _stopAVCSession];
    }

    goto LABEL_29;
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100472840();
  }

  [(CSDConversation *)self setAvcSessionInProgress:0];
  [(CSDConversation *)self setAvcSession:0];
  v18 = [(CSDConversation *)self featureFlags];
  if ([v18 conversationOneToOneModeEnabled] && -[CSDConversation isOneToOneModeEnabled](self, "isOneToOneModeEnabled"))
  {
    v19 = [(CSDConversation *)self state];

    if (v19 == 4)
    {
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1004728B0();
      }

      [(CSDConversation *)self setState:0];
      goto LABEL_29;
    }
  }

  else
  {
  }

  v21 = [(CSDConversation *)self featureFlags];
  v22 = [v21 avLessSharePlayEnabled];
  if (v7 || !v22 || [(CSDConversation *)self state]!= 3 || [(CSDConversation *)self avMode])
  {

    goto LABEL_24;
  }

  v25 = [(CSDConversation *)self remoteMembers];
  v26 = [v25 count];

  if (v26 != 1)
  {
LABEL_24:
    if ([(CSDConversation *)self state]!= 4)
    {
      [(CSDConversation *)self setState:4];
      [(CSDConversation *)self _beginTimeoutForLeavingConversationWithReason:@"AVCSession failed to start."];
      v23 = [(CSDConversation *)self idsSession];
      [v23 leaveGroupSessionWithContext:0];

      [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:[(CSDConversation *)self _errorToAVCProviderEndedReason:v7 defaultProviderReason:516]];
    }

    goto LABEL_29;
  }

  v27 = sub_100004778();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28[0]) = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "CSDAVCSession failed to start, but there is no error, Ignoring the start failure and leaving conversation intact", v28, 2u);
  }

LABEL_29:
  [v16 conversationChanged:self];
}

- (void)session:(id)a3 didDetectError:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100472928();
  }

  if ([(CSDConversation *)self state]== 3)
  {
    v8 = +[NSDate date];
    v9 = [(CSDConversation *)self lastRebroadcastTime];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    if (v11 > [(CSDConversation *)self rebroadcastTimeThreshold])
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11;
        v15 = 134217984;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rebroadcasting AVC data to other members of this group to attempt to recover from error (last rebroadcast time was %f).", &v15, 0xCu);
      }

      [(CSDConversation *)self setLastRebroadcastTime:v8];
      v14 = [(CSDConversation *)self serverBag];
      -[CSDConversation setRebroadcastTimeThreshold:](self, "setRebroadcastTimeThreshold:", -[CSDConversation rebroadcastTimeThreshold](self, "rebroadcastTimeThreshold") * [v14 rebroadcastTimeThreshold]);

      [(CSDConversation *)self broadcastLocalParticipantData];
    }
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = [(CSDConversation *)self state];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not attempting to rebroadcast message since state was not in join (was %d)", &v15, 8u);
    }
  }
}

- (void)session:(id)a3 didStopWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CSDAVCSession didStopWithError: %@", &v21, 0xCu);
  }

  if (v7)
  {
    v10 = [v7 code];
    v11 = sub_100004778();
    v12 = v11;
    if (v10 == 32003)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AVCSession %@ stopped for remote hangup. Ignoring this signal.", &v21, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v20 = [(CSDConversation *)self UUID];
        v21 = 138412802;
        v22 = v6;
        v23 = 2112;
        v24 = v20;
        v25 = 2112;
        v26 = v7;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "AVCSession %@ stopped in failure for conversation UUID %@: %@", &v21, 0x20u);
      }

      [(CSDConversation *)self _cleanUpFromAVCSessionFailure];
      [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:[(CSDConversation *)self _errorToAVCProviderEndedReason:v7 defaultProviderReason:518]];
    }
  }

  else if ([(CSDConversation *)self avMode])
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AVCSession %@ stopped, cleaning up IDSSession state", &v21, 0xCu);
    }

    [(CSDConversation *)self cleanUpIDSSessionState];
  }

  [(CSDConversation *)self setAvcSession:0];
  [(CSDConversation *)self setAvcSessionInProgress:0];
  [(CSDConversation *)self setSetScreenSharingRetryCount:0];
  if (![(CSDConversation *)self avMode]&& [(CSDConversation *)self state]== 3)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CSDAVCSession stopped for downgrade to AVModeNone, setting up new not started AVCSession", &v21, 2u);
    }

    [(CSDConversation *)self resetAVCSession];
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rebroadcasting AVC data to other members of this group to since we transitioned to lightweight and setup a new AVCSession.", &v21, 2u);
    }

    [(CSDConversation *)self broadcastLocalParticipantData];
  }

  if (![(CSDConversation *)self isOneToOneModeEnabled]&& ![(CSDConversation *)self isVideo])
  {
    v16 = [(CSDConversation *)self featureFlags];
    if ([v16 avLessSharePlayEnabled])
    {
      v17 = [(CSDConversation *)self avMode];

      if (!v17)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting GFT conversation back to default state of video=1", &v21, 2u);
    }

    [(CSDConversation *)self setVideo:1];
  }

LABEL_31:
  v19 = [(CSDConversation *)self delegate];
  [v19 conversationChanged:self];
}

- (void)serverDisconnectedForSession:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100472998(v4, self);
  }

  [(CSDConversation *)self setAvcSession:0];
  [(CSDConversation *)self setAvcSessionInProgress:0];
  if ([(CSDConversation *)self avMode]|| [(CSDConversation *)self state]!= 3)
  {
    [(CSDConversation *)self _cleanUpFromAVCSessionFailure];
    [(CSDConversation *)self _reportConversationFailedWithProviderEndedReason:13];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Detected AVCSession server disconnect, but we're in AVLess. Re-creating an AVCSession and re-distributing blob.", buf, 2u);
    }

    [(CSDConversation *)self resetAVCSession];
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "serverDisconnectedForSession: broadcastLocalParticipantData", v10, 2u);
    }

    [(CSDConversation *)self broadcastLocalParticipantData];
  }

  v9 = [(CSDConversation *)self delegate];
  [v9 conversationChanged:self];
}

- (void)session:(id)a3 changedLocalAudioEnabled:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v6 = a5;
  v7 = a4;
  v9 = a6;
  v10 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109120;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "changedLocalAudioEnabled=%d", &v23, 8u);
  }

  if (v9 || !v6)
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109634;
      v24 = v7;
      v25 = 1024;
      *v26 = v6;
      *&v26[4] = 2112;
      *&v26[6] = v9;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to set localAudioEnabled (%d): didSucceed (%d): error: %@", &v23, 0x18u);
    }

    goto LABEL_14;
  }

  v12 = [(CSDConversation *)self expectedAudioEnabled];
  if (!v12 || (v13 = v12, -[CSDConversation expectedAudioEnabled](self, "expectedAudioEnabled"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 BOOLValue], v14, v13, v15 == v7))
  {
    v22 = [(CSDConversation *)self delegate];
    [v22 conversationChanged:self];

LABEL_14:
    [(CSDConversation *)self setExpectedAudioEnabled:0];
    goto LABEL_15;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(CSDConversation *)self expectedAudioEnabled];
    v23 = 67109378;
    v24 = v7;
    v25 = 2112;
    *v26 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Audio was set to audioEnabled: %d self.expectedAudioEnabled.BOOLValue: %@. Setting audioEnabled to self.expectedAudioEnabled.BOOLValue", &v23, 0x12u);
  }

  v18 = [(CSDConversation *)self expectedAudioEnabled];
  v19 = [v18 BOOLValue];
  v20 = [(CSDConversation *)self avcSession];
  [v20 setAudioEnabled:v19];

LABEL_15:
}

- (void)session:(id)a3 changedLocalVideoEnabled:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v6 = a5;
  v7 = a4;
  v9 = a6;
  v10 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 67109120;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "changedLocalVideoEnabled=%d", &v29, 8u);
  }

  if (v9 || !v6)
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v29 = 67109634;
      v30 = v7;
      v31 = 1024;
      *v32 = v6;
      *&v32[4] = 2112;
      *&v32[6] = v9;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to set localVideoEnabled (%d): didSucceed (%d): error: %@", &v29, 0x18u);
    }

    if ([(CSDConversation *)self state]== 3)
    {
      v18 = [(CSDConversation *)self expectedVideoEnabled];
      if (v18)
      {
        v19 = v18;
        v20 = [(CSDConversation *)self expectedVideoEnabled];
        if ([v20 BOOLValue])
        {
          v21 = +[TUConversationManager allowsVideo];

          if (!v21)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        goto LABEL_27;
      }
    }

    else
    {
      v22 = sub_100004778();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 67109378;
        v30 = v7;
        v31 = 2112;
        *v32 = v9;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping to set localVideoEnabled (%d) error: %@", &v29, 0x12u);
      }
    }
  }

  else
  {
    v12 = [(CSDConversation *)self expectedVideoEnabled];
    if (v12)
    {
      v13 = v12;
      v14 = [(CSDConversation *)self expectedVideoEnabled];
      if ([v14 BOOLValue] == v7)
      {
      }

      else
      {
        v15 = [(CSDConversation *)self expectedVideoEnabled];
        if (([v15 BOOLValue] & 1) == 0)
        {

LABEL_24:
          v24 = sub_100004778();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [(CSDConversation *)self expectedVideoEnabled];
            v29 = 67109378;
            v30 = v7;
            v31 = 2112;
            *v32 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Video was set to videoEnabled: %d self.expectedVideoEnabled.BOOLValue: %@. Setting videoEnabled to self.expectedVideoEnabled.BOOLValue", &v29, 0x12u);
          }

LABEL_27:
          v26 = [(CSDConversation *)self expectedVideoEnabled];
          v27 = [v26 BOOLValue];
          v28 = [(CSDConversation *)self avcSession];
          [v28 setVideoEnabled:v27];

          goto LABEL_28;
        }

        v16 = +[TUConversationManager allowsVideo];

        if (v16)
        {
          goto LABEL_24;
        }
      }
    }

    v23 = [(CSDConversation *)self delegate];
    [v23 conversationChanged:self];

    [(CSDConversation *)self setExpectedVideoEnabled:0];
  }

LABEL_28:
}

- (void)session:(id)a3 changedScreenEnabled:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v6 = a5;
  v7 = a4;
  v9 = a6;
  v10 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 67109634;
    v33 = v7;
    v34 = 1024;
    *v35 = v6;
    *&v35[4] = 2112;
    *&v35[6] = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "changedScreenEnabled=%d didSucceed=%d error %@", &v32, 0x18u);
  }

  if (!v9 && v6)
  {
    [(CSDConversation *)self setSetScreenSharingRetryCount:0];
    if (!v7)
    {
      goto LABEL_18;
    }

    v12 = [(CSDConversation *)self featureFlags];
    if ([v12 requestToScreenShareEnabled])
    {
    }

    else
    {
      v16 = [(CSDConversation *)self featureFlags];
      v17 = [v16 usesModernScreenSharingFromMessages];

      if (!v17)
      {
        goto LABEL_18;
      }
    }

    [(CSDConversation *)self fulfillLocalScreenShareRequests];
    [(CSDConversation *)self addScreenSharingType:1];
LABEL_18:
    v18 = [(CSDConversation *)self expectedScreenEnabled];
    if (v18)
    {
      v19 = v18;
      v20 = [(CSDConversation *)self expectedScreenEnabled];
      v21 = [v20 BOOLValue];

      if (v21 != v7)
      {
        v22 = sub_100004778();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(CSDConversation *)self expectedScreenEnabled];
          v32 = 67109378;
          v33 = v7;
          v34 = 2112;
          *v35 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Screen was set to screenEnabled: %d self.expectedScreenEnabled.BOOLValue: %@. Setting screenEnabled to self.expectedScreenEnabled.BOOLValue", &v32, 0x12u);
        }

        goto LABEL_23;
      }
    }

    if ((v7 & 1) == 0)
    {
      [(CSDConversation *)self resetContentSharingSessionContent];
      [(CSDConversation *)self switchBackToOneToOneIfPossible];
    }

    v29 = [(CSDConversation *)self delegate];
    [v29 conversationChanged:self];

    goto LABEL_28;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v31 = [(CSDConversation *)self setScreenSharingRetryCount];
    v32 = 67109890;
    v33 = v7;
    v34 = 1024;
    *v35 = v6;
    *&v35[4] = 2112;
    *&v35[6] = v9;
    v36 = 2048;
    v37 = v31;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to set screenEnabled (%d): didSucceed (%d): error: %@ retry:%lu", &v32, 0x22u);
  }

  v14 = [(CSDConversation *)self expectedScreenEnabled];

  if (v14)
  {
    if ([(CSDConversation *)self setScreenSharingRetryCount]<= 2)
    {
      [(CSDConversation *)self setSetScreenSharingRetryCount:[(CSDConversation *)self setScreenSharingRetryCount]+ 1];
LABEL_23:
      v24 = [(CSDConversation *)self expectedScreenEnabled];
      v25 = [v24 BOOLValue];

      v26 = [(CSDConversation *)self avcSession];
      v27 = [(CSDConversation *)self expectedScreenEnabled];
      v28 = [v27 BOOLValue];
      if (v25)
      {
        [(CSDConversation *)self screenShareAttributes];
      }

      else
      {
        +[TUCallScreenShareAttributes defaultAttributes];
      }
      v30 = ;
      [v26 setScreenEnabled:v28 attributes:v30];

      goto LABEL_31;
    }

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100472A40();
    }

    [(CSDConversation *)self setSetScreenSharingRetryCount:0];
LABEL_28:
    [(CSDConversation *)self setExpectedScreenEnabled:0];
  }

LABEL_31:
}

- (void)session:(id)a3 changedLocalAudioPaused:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v6 = a5;
  v7 = a4;
  v9 = a6;
  v10 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109120;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "changedLocalAudioPaused=%d", &v23, 8u);
  }

  if (v9 || !v6)
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109634;
      v24 = v7;
      v25 = 1024;
      *v26 = v6;
      *&v26[4] = 2112;
      *&v26[6] = v9;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to set localAudioPaused (%d): didSucceed (%d): error: %@", &v23, 0x18u);
    }

    goto LABEL_14;
  }

  v12 = [(CSDConversation *)self expectedAudioPaused];
  if (!v12 || (v13 = v12, -[CSDConversation expectedAudioPaused](self, "expectedAudioPaused"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 BOOLValue], v14, v13, v15 == v7))
  {
    v22 = [(CSDConversation *)self delegate];
    [v22 conversationChanged:self];

LABEL_14:
    [(CSDConversation *)self setExpectedAudioPaused:0];
    goto LABEL_15;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(CSDConversation *)self expectedAudioPaused];
    v23 = 67109378;
    v24 = v7;
    v25 = 2112;
    *v26 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Audio paused was set to audioPaused: %d self.expectedAudioPaused.BOOLValue: %@. Setting audioPaused to self.expectedAudioPaused.BOOLValue", &v23, 0x12u);
  }

  v18 = [(CSDConversation *)self expectedAudioPaused];
  v19 = [v18 BOOLValue];
  v20 = [(CSDConversation *)self avcSession];
  [v20 setAudioPaused:v19];

LABEL_15:
}

- (void)session:(id)a3 changedLocalVideoPaused:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v6 = a5;
  v7 = a4;
  v9 = a6;
  v10 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109120;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "changedLocalVideoPaused=%d", &v23, 8u);
  }

  if (v9 || !v6)
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109634;
      v24 = v7;
      v25 = 1024;
      *v26 = v6;
      *&v26[4] = 2112;
      *&v26[6] = v9;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to set localVideoPaused (%d): didSucceed (%d): error: %@", &v23, 0x18u);
    }

    goto LABEL_14;
  }

  v12 = [(CSDConversation *)self expectedVideoPaused];
  if (!v12 || (v13 = v12, -[CSDConversation expectedVideoPaused](self, "expectedVideoPaused"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 BOOLValue], v14, v13, v15 == v7))
  {
    v22 = [(CSDConversation *)self delegate];
    [v22 conversationChanged:self];

LABEL_14:
    [(CSDConversation *)self setExpectedVideoPaused:0];
    goto LABEL_15;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(CSDConversation *)self expectedVideoPaused];
    v23 = 67109378;
    v24 = v7;
    v25 = 2112;
    *v26 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Video paused was set to videoPaused: %d self.expectedVideoPaused.BOOLValue: %@. Setting videoPaused to self.expectedVideoPaused.BOOLValue", &v23, 0x12u);
  }

  v18 = [(CSDConversation *)self expectedVideoPaused];
  v19 = [v18 BOOLValue];
  v20 = [(CSDConversation *)self avcSession];
  [v20 setVideoPaused:v19];

LABEL_15:
}

- (void)session:(id)a3 changedBytesOfDataUsed:(int64_t)a4
{
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "changedBytesOfDataUsed=%ld", &v9, 0xCu);
  }

  v8 = [(CSDConversation *)self delegate];
  [v8 conversation:self changedBytesOfDataUsed:a4];
}

- (void)sessionShouldReconnect:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sessionShouldReconnect=%@", &v13, 0xCu);
  }

  if (![(CSDConversation *)self isOneToOneModeEnabled])
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Skipping reconnect since one to one mode is disabled", &v13, 2u);
    }

    goto LABEL_13;
  }

  v7 = [(CSDConversation *)self serverProvidedParticipantIdentifiers];
  if ([v7 count] != 1)
  {

    goto LABEL_12;
  }

  v8 = [(CSDConversation *)self serverProvidedParticipantIdentifiers];
  v9 = [NSNumber numberWithUnsignedLongLong:[(CSDConversation *)self localParticipantIdentifier]];
  v10 = [v8 containsObject:v9];

  if (!v10)
  {
LABEL_12:
    v12 = [(CSDConversation *)self idsSession];
    [v12 reconnect];
LABEL_13:

    goto LABEL_14;
  }

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Only local participant presents and media stall for U + 1, end the call", &v13, 2u);
  }

  [(CSDConversation *)self leaveWithReason:4];
LABEL_14:
}

- (void)session:(id)a3 screenShareAttributesUpdated:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  if ([(CSDConversation *)self isScreenEnabled])
  {
    v7 = [(CSDConversation *)self delegate];
    [v7 conversation:self screenShareAttributesUpdated:v5];
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100472A7C();
    }
  }
}

- (void)remoteParticipantWithIdentifier:(unint64_t)a3 didChangeAudioPriority:(int64_t)a4 videoPriority:(int64_t)a5
{
  v9 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v11 = [NSNumber numberWithUnsignedLongLong:a3];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    [v12 setAudioPriority:a4];
    [v12 setVideoPriority:a5];
    v13 = [(CSDConversation *)self delegate];
    [v13 conversation:self mediaPrioritiesChangedForParticipant:v12];
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = a3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown participant with identifier: %llu", &v15, 0xCu);
    }
  }
}

- (void)remoteParticipantWithIdentifier:(unint64_t)a3 didReact:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [(CSDConversation *)self delegate];
    [v11 conversation:self participant:v10 didReact:v6];
  }

  else
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown participant with identifier: %llu", &v13, 0xCu);
    }
  }
}

- (void)session:(id)a3 localParticipantDidReact:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [CSDConversationParticipant alloc];
  v8 = [(CSDConversation *)self idsSession];
  v9 = [v8 localParticipantIdentifier];
  v10 = [(CSDConversation *)self localMember];
  v11 = [v10 handle];
  v12 = [(CSDConversation *)self localParticipantData];
  v14 = [(CSDConversationParticipant *)v7 initWithIdentifier:v9 handle:v11 avcData:v12];

  v13 = [(CSDConversation *)self delegate];
  [v13 conversation:self participant:v14 didReact:v5];
}

- (void)sessionLocalParticipantDidStopReacting:(id)a3
{
  v4 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [CSDConversationParticipant alloc];
  v6 = [(CSDConversation *)self idsSession];
  v7 = [v6 localParticipantIdentifier];
  v8 = [(CSDConversation *)self localMember];
  v9 = [v8 handle];
  v10 = [(CSDConversation *)self localParticipantData];
  v12 = [(CSDConversationParticipant *)v5 initWithIdentifier:v7 handle:v9 avcData:v10];

  v11 = [(CSDConversation *)self delegate];
  [v11 conversation:self participantDidStopReacting:v12];
}

- (void)session:(id)a3 screenCaptureDidStart:(BOOL)a4 withError:(id)a5
{
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  if (a5 || !a4)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CSDConversation *)self UUID];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Stopping screen on local device capture failed to start for conversation UUID: %@", &v12, 0xCu);
    }

    v11 = +[TUCallScreenShareAttributes defaultAttributes];
    [(CSDConversation *)self setScreenEnabled:0 attributes:v11];
  }
}

- (void)session:(id)a3 screenCaptureDidStop:(BOOL)a4 withError:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversation *)self featureFlags];
  v10 = [v9 sckSystemPickerEnabled];

  if (v7 && v5 && v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CSDConversation *)self UUID];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Stopping screen on local device capture, capture stopped without calling stop for conversation UUID: %@ error: %@", &v15, 0x16u);
    }

    v13 = +[TUCallScreenShareAttributes defaultAttributes];
    [(CSDConversation *)self setScreenEnabled:0 attributes:v13];

    v14 = [(CSDConversation *)self delegate];
    [v14 conversationDidStopScreenCapture:self];
  }
}

- (void)removedRemoteParticipantWithIdentifier:(unint64_t)a3 didSucceed:(BOOL)a4
{
  v4 = a4;
  v7 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v7);

  if (v4)
  {
    [(CSDConversation *)self switchBackToOneToOneIfPossible];
    [(CSDConversation *)self _generateHandoffReportIfNecessaryForUpdatedParticipantID:a3 isAddParticipant:0];
  }

  v8 = [(CSDConversation *)self activeRemoteParticipantsByIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    if (![v10 audioVideoMode])
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Retrying updating oneToOneMode since participant got added", v13, 2u);
      }

      [(CSDConversation *)self updateOneToOneModeForParticipantUpdateType:0 participant:v10];
    }
  }

  else
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No participant found on the conversation", buf, 2u);
    }
  }
}

- (void)audioPolicyManager:(id)a3 sharePlayAllowedStateChanged:(BOOL)a4
{
  v6 = [(CSDConversation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A8298;
  v7[3] = &unk_100619EA8;
  v8 = a4;
  v7[4] = self;
  dispatch_async(v6, v7);
}

- (void)postUserNotificationForUnsupportedScreenSharingActivity:(id)a3 alternateReponseHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversation *)self tuConversation];
  v9 = [v8 groupUUID];
  v10 = [v7 bundleIdentifier];
  v11 = [NSString stringWithFormat:@"%@.%@", v9, v10];

  v12 = [(CSDConversation *)self audioRoutePolicyManager];
  v13 = [CPActivityAuthorizationManager notificationDisplayInformationForAudioPolicyManager:v12 activity:v7 conversation:v8];

  v14 = [IMUserNotification userNotificationWithIdentifier:v11 timeout:3 alertLevel:0 displayFlags:v13 displayInformation:0.0];

  [v14 setUsesNotificationCenter:0];
  [v14 setRepresentedApplicationBundle:TUBundleIdentifierTelephonyUtilitiesFramework];
  v15 = +[IMUserNotificationCenter sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A87D8;
  v17[3] = &unk_10061A808;
  v17[4] = self;
  v18 = v6;
  v16 = v6;
  [v15 addUserNotification:v14 listener:0 completionHandler:v17];
}

- (BOOL)remoteJoinedActivity:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CSDConversation *)self activeRemoteParticipants];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v4 activeRemoteParticipants];
        v11 = [v9 tuConversationParticipant];
        v12 = [v10 containsObject:v11];

        if (v12)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)activitySessionManager:(id)a3 tuActivitySessionsDidChange:(id)a4
{
  v6 = a4;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDConversation *)self checkAndSetTUActivityActive:v6];
}

- (void)activitySessionManager:(id)a3 activitySessionChanged:(id)a4
{
  v11 = a4;
  v5 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v11 activity];
  v7 = [v6 isSystemActivity];

  if ((v7 & 1) == 0)
  {
    v8 = [(CSDConversation *)self applicationLaunchPolicyManager];
    v9 = [(CSDConversation *)self tuConversation];
    [v8 updateAllowedHandlesForConversation:v9];
  }

  v10 = [(CSDConversation *)self delegate];
  [v10 conversation:self activitySessionChanged:v11];
}

- (BOOL)activitySessionManager:(id)a3 activitySessionIsJoinable:(id)a4
{
  v5 = [(CSDConversation *)self queue:a3];
  dispatch_assert_queue_V2(v5);

  return [(CSDConversation *)self state]== 3;
}

- (void)activitySessionManager:(id)a3 receivedActivitySessionEvent:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDConversation *)self delegate];
  [v7 conversation:self receivedActivitySessionEvent:v5];
}

- (void)activitySessionManager:(id)a3 fetchDataCryptorForTopic:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CSDConversation *)self idsSession];
  [v10 requestDataCryptorForTopic:v8 completionHandler:v7];
}

- (void)activitySessionManager:(id)a3 requestEncryptionKeysForParticipants:(id)a4 topicName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CSDConversation *)self idsSession];
  [v10 requestEncryptionKeyForParticipants:v8 topic:v7];
}

- (unint64_t)activitySessionManager:(id)a3 localParticipantAliasForBundleIdentifier:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = v5;
    v7 = [(CSDConversation *)self serverBag];
    v8 = [v7 stableBundleIdentifierForLocalBundleIdentifier:v6];

    if (v8)
    {
      v9 = v8;

      v6 = v9;
    }

    v10 = [(CSDConversation *)self idsSession];
    v11 = [(CSDConversation *)self localParticipantIdentifier];
    v12 = [v6 dataUsingEncoding:4];
    v13 = [v10 aliasForParticipantID:v11 salt:v12];

    return v13;
  }

  else
  {

    return [(CSDConversation *)self localParticipantIdentifier];
  }
}

- (void)activitySessionManager:(id)a3 participantWithIdentifier:(unint64_t)a4 bundleIdentifier:(id)a5 includeLocalParticipant:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v15);

  if (v8 && [(CSDConversation *)self activitySessionManager:v12 localParticipantAliasForBundleIdentifier:v13]== a4)
  {
    v16 = [(CSDConversation *)self localParticipant];
    v14[2](v14, v16);
  }

  else
  {
    v17 = [(CSDConversation *)self remoteParticipantForIdentifier:a4];
    if (v13)
    {
      v18 = [(CSDConversation *)self serverBag];
      v19 = [v18 stableBundleIdentifierForLocalBundleIdentifier:v13];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v13;
      }

      v22 = v21;

      v23 = [v22 dataUsingEncoding:4];

      v24 = [(CSDConversation *)self idsSession];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000A9080;
      v25[3] = &unk_10061A830;
      v25[4] = self;
      v27 = v14;
      v26 = v17;
      [v24 participantIDForAlias:a4 salt:v23 completion:v25];
    }

    else
    {
      v14[2](v14, v17);
    }
  }
}

- (void)activitySessionManager:(id)a3 activityChangedOnSession:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDConversation *)self delegate];
  [v7 conversation:self activityChangedOnSession:v5];
}

- (id)activitySessionManagerRequestedCallTypeStringForLogging:(id)a3
{
  v4 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDConversation *)self provider];
  v6 = [v5 isTelephonyWithSharePlayProvider];

  if (v6)
  {
    return @"telephony";
  }

  v8 = [(CSDConversation *)self localParticipantCluster];
  if (v8)
  {
    v9 = v8;
    v10 = [(CSDConversation *)self localParticipantCluster];
    v11 = [v10 type];

    if (v11 == 1)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = [(CSDConversation *)self activeRemoteParticipants];
      v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (!v13)
      {
LABEL_13:

        return @"nearby";
      }

      v14 = v13;
      v15 = *v34;
LABEL_7:
      v16 = 0;
      while (1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v33 + 1) + 8 * v16) cluster];
        v18 = [(CSDConversation *)self localParticipantCluster];
        v19 = [v17 isEqual:v18];

        if ((v19 & 1) == 0)
        {
          goto LABEL_26;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v14)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = [(CSDConversation *)self activeRemoteParticipants];
  v20 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
LABEL_16:
    v23 = 0;
    while (1)
    {
      if (*v30 != v22)
      {
        objc_enumerationMutation(v12);
      }

      v24 = *(*(&v29 + 1) + 8 * v23);
      v25 = [v24 cluster];
      if (v25)
      {
        v26 = v25;
        v27 = [v24 cluster];
        v28 = [v27 type];

        if (v28 == 1)
        {
          break;
        }
      }

      if (v21 == ++v23)
      {
        v21 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v21)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

LABEL_26:

    return @"mixed";
  }

LABEL_23:

  if ([(CSDConversation *)self isOneToOneModeEnabled])
  {
    return @"1-1";
  }

  else
  {
    return @"GFT";
  }
}

- (void)activitySessionManager:(id)a3 sessionUnjoined:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v12);

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Did get session unjoined callback startDate %@ endDate %@ session %@", &v15, 0x20u);
  }

  v14 = +[CSDReportingController sharedInstance];
  [v14 didEndSession:v9 startDate:v10 endDate:v11];
}

- (void)activitySessionManager:(id)a3 requestForegroundPresentationForActivity:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 activity];
  v8 = [v7 isSystemActivity];

  if ((v8 & 1) == 0)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CSDConversation setting appLaunchState to needsLaunch %@", &v11, 0xCu);
    }

    v10 = [(CSDConversation *)self delegate];
    [v10 conversation:self appLaunchState:1 forActivitySession:v5];
  }
}

- (void)activitySessionManager:(id)a3 activitySessionStateChanged:(id)a4 oldState:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CSDConversation *)self delegate];
  [(CSDConversation *)self activitySessionManager:v8 activitySessionChanged:v7];

  [v10 conversation:self didChangeStateForActivitySession:v7];
}

- (void)activitySessionManager:(id)a3 activitySessionAssociatedSceneChanged:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CSDConversation associated scene changed for %@", &v11, 0xCu);
  }

  v10 = [(CSDConversation *)self delegate];
  [(CSDConversation *)self activitySessionManager:v7 activitySessionChanged:v6];

  [v10 conversation:self didChangeSceneAssociationForActivitySession:v6];
}

- (void)activitySessionManager:(id)a3 sendResourceAtURL:(id)a4 toParticipants:(id)a5 metadata:(id)a6 activitySessionUUID:(id)a7 completion:(id)a8
{
  v13 = a4;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v18);

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(CSDConversation *)self UUID];
    v21 = [v13 URL];
    v22 = [v21 path];
    v24 = 138412546;
    v25 = v20;
    v26 = 2112;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Conversation UUID: %@ sending resource url.path: %@", &v24, 0x16u);
  }

  v23 = [(CSDConversation *)self delegate];
  [v23 conversation:self sendResourceAtURL:v13 toParticipants:v17 metadata:v16 activitySessionUUID:v15 completion:v14];
}

- (void)activitySessionManager:(id)a3 requestedEndpointWithIdentifier:(id)a4 activitySession:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v12);

  v13 = [(CSDConversation *)self delegate];
  [v13 conversation:self requestedEndpointWithIdentifier:v11 activitySession:v10 completion:v9];
}

- (void)activitySessionManager:(id)a3 shouldRegisterPlugin:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversation *)self featureFlags];
  v7 = [v6 sharePlayInFaceTimeCanvasEnabled];

  if ((v7 & 1) == 0)
  {
    v13 = sub_100004778();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v15 = "[WARN] Not registering plugin since featureFlag is disabled.";
    v16 = v13;
    v17 = 2;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    goto LABEL_13;
  }

  v8 = [(CSDConversation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversation *)self idsSession];
  v10 = [v9 isJoined];

  if ((v10 & 1) == 0)
  {
    v13 = sub_100004778();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = self;
    v15 = "Not registering plugin %@ since we're not joined. Conversation: %@";
    v16 = v13;
    v17 = 22;
    goto LABEL_10;
  }

  v11 = [(CSDConversation *)self virtualParticipantsByPluginName];
  v12 = [v11 objectForKeyedSubscript:v5];

  if (!v12)
  {
    v18 = IDSGroupSessionPluginNameKey;
    v19 = v5;
    v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = [(CSDConversation *)self idsSession];
    [(CSDConversation *)v14 registerPluginWithOptions:v13];
    goto LABEL_12;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CSDConversation *)self virtualParticipantsByPluginName];
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not registering plugin %@ because it already exists. All current plugins: %@", buf, 0x16u);
LABEL_12:
  }

LABEL_13:
}

- (BOOL)activitySessionManagerShouldSupportEndOnlyForMe:(id)a3
{
  v4 = [(CSDConversation *)self featureFlags];
  if ([v4 nearbyFaceTimeEnabled] && -[CSDConversation isNearbySession](self, "isNearbySession"))
  {
    v5 = [(CSDConversation *)self remoteMembers];
    v6 = [v5 count] != 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)systemStateObserver:(id)a3 screenSharingInitiationAllowedStateChanged:(BOOL)a4
{
  v4 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "screenSharingInitiationAllowedStateChanged: %@", &v10, 0xCu);
  }

  v8 = [(CSDConversation *)self featureFlags];
  v9 = [v8 requestToScreenShareEnabled];

  if (v9)
  {
    [(CSDConversation *)self broadcastLocalParticipantData];
  }
}

- (CSDConversationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSDConversationParticipant)localCSDParticipant
{
  v2 = self;
  v3 = sub_10034E748();

  return v3;
}

@end