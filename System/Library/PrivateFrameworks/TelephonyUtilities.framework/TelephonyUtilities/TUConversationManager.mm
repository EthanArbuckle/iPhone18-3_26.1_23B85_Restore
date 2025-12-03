@interface TUConversationManager
+ (BOOL)allowsPortraitBlurWhenCaptionsEnabled;
+ (BOOL)allowsScreenSharing;
+ (BOOL)allowsScreenSharingWithVideo;
+ (BOOL)allowsVideo;
+ (BOOL)isAddPersonEnabled;
+ (BOOL)supportsConversations;
+ (BOOL)supportsEffects;
+ (id)activeRemoteParticipantsForCall:(id)call remoteMembers:(id)members;
+ (id)conversationWithPseudonym:(id)pseudonym fromConversations:(id)conversations;
+ (id)conversationWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations;
+ (id)conversationWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations matchingVideo:(BOOL)video backedByGroupSession:(BOOL)session;
+ (id)conversationWithUUID:(id)d fromConversations:(id)conversations;
+ (id)conversationsWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations;
+ (id)pendingConversationWithLink:(id)link fromConversations:(id)conversations;
+ (id)remoteMembersForCall:(id)call;
+ (int64_t)conversationStateForCall:(id)call;
+ (int64_t)memorySize;
+ (unint64_t)maximumNumberOfInvitedMembers;
- (BOOL)autoSharePlayEnabled;
- (BOOL)currentProcessCanAccessCollaborations;
- (BOOL)isScreenSharingAvailable;
- (BOOL)isSharePlayAvailable;
- (BOOL)openCollaborationWithIdentifier:(id)identifier forConversation:(id)conversation;
- (NSDictionary)activityAuthorizedBundleIdentifiers;
- (NSSet)activatedConversationLinks;
- (NSSet)activeAdvertisements;
- (NSSet)activeConversations;
- (NSSet)incomingPendingConversations;
- (TUConversation)avLessConversation;
- (TUConversationManager)init;
- (TUConversationManager)initWithDataSource:(id)source;
- (TUConversationManager)initWithDataSource:(id)source notificationCenter:(id)center;
- (TUConversationMediaController)mediaController;
- (TUConversationMessagesGroupProviding)messagesGroupProvider;
- (TUConversationReactionsController)reactionsController;
- (id)activeConversationWithGroupUUID:(id)d;
- (id)activeConversationWithLinkForCall:(id)call;
- (id)activeConversationWithRemoteMembers:(id)members andLink:(id)link;
- (id)activeConversationWithUUID:(id)d;
- (id)callPendingUpgradeInConversationsWithGroupUUID:(id)d;
- (id)ckBundleIDForCollaborationIdentifier:(id)identifier;
- (id)collaborationForConversation:(id)conversation;
- (id)createConversationForCallNotBackedByGroupSession:(id)session;
- (id)handoffEligibleConversationForEligibility:(id)eligibility;
- (id)joinRequestForApplicableConversationWithHandoffEligibility:(id)eligibility;
- (id)pendingConversationWithLink:(id)link;
- (int64_t)collaborationStateForConversation:(id)conversation;
- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier;
- (void)activateLink:(id)link completionHandler:(id)handler;
- (void)activeParticipant:(id)participant removedHighlightFromConversation:(id)conversation highlightIdentifier:(id)identifier;
- (void)activityAuthorizationsChangedForDataSource:(id)source oldActivityAuthorizedBundleIdentifiers:(id)identifiers;
- (void)addCollaboration:(id)collaboration forConversation:(id)conversation;
- (void)addCollaborationIdentifier:(id)identifier forConversation:(id)conversation;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d;
- (void)addInvitedMemberHandles:(id)handles toConversationLink:(id)link completionHandler:(id)handler;
- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences toConversation:(id)conversation;
- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles toConversation:(id)conversation;
- (void)addRemoteMembers:(id)members toConversation:(id)conversation;
- (void)addScreenSharingType:(unint64_t)type forConversation:(id)conversation;
- (void)addedCollaborationDictionary:(id)dictionary forConversation:(id)conversation;
- (void)approveExternalParticipants:(id)participants;
- (void)approvePendingMember:(id)member forConversation:(id)conversation;
- (void)buzzMember:(id)member destinationID:(id)d invitationContext:(id)context conversation:(id)conversation;
- (void)callPropertiesChanged:(id)changed;
- (void)cancelOrDenyScreenShareRequest:(id)request forConversation:(id)conversation;
- (void)checkLinkValidity:(id)validity completionHandler:(id)handler;
- (void)collaborationChanged:(id)changed forConversation:(id)conversation collaborationState:(int64_t)state;
- (void)conversation:(id)conversation addedMembersLocally:(id)locally;
- (void)conversation:(id)conversation buzzedMember:(id)member;
- (void)conversation:(id)conversation collaborationStateChanged:(int64_t)changed highlightIdentifier:(id)identifier;
- (void)conversation:(id)conversation didChangeSceneAssociationForActivitySession:(id)session;
- (void)conversation:(id)conversation didChangeStateForActivitySession:(id)session;
- (void)conversation:(id)conversation participant:(id)participant addedCollaborationNotice:(id)notice;
- (void)conversation:(id)conversation participant:(id)participant addedNotice:(id)notice;
- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event;
- (void)conversation:(id)conversation screenSharingChangedForParticipant:(id)participant;
- (void)conversationManagerDataSource:(id)source conversation:(id)conversation appLaunchState:(unint64_t)state forActivitySession:(id)session;
- (void)conversationManagerDataSource:(id)source didChangeActivatedConversationLinks:(id)links;
- (void)conversationManagerDataSource:(id)source messagesGroupDetailsForMessagesGroupId:(id)id completionHandler:(id)handler;
- (void)conversationUpdateMessagesGroupPhoto:(id)photo;
- (void)conversationUpdatedMessagesGroupPhoto:(id)photo;
- (void)conversationsChangedForDataSource:(id)source conversationsByGroupUUID:(id)d oldConversationsByGroupUUID:(id)iD;
- (void)conversationsChangedForDataSource:(id)source oldConversationsByGroupUUID:(id)d newConversationsByGroupUUID:(id)iD creationQueue:(id)queue;
- (void)conversationsChangedForDataSource:(id)source updatedIncomingPendingConversationsByGroupUUID:(id)d;
- (void)conversationsChangedFromOldConversationsByGroupUUID:(id)d newConversationsByGroupUUID:(id)iD;
- (void)createActivitySession:(id)session onConversation:(id)conversation;
- (void)createActivitySession:(id)session onConversation:(id)conversation options:(unint64_t)options;
- (void)dealloc;
- (void)denyExternalParticipants:(id)participants;
- (void)didChangeConversationAdvertisement:(id)advertisement;
- (void)endActivitySession:(id)session onConversation:(id)conversation;
- (void)fetchUpcomingNoticeWithCompletionHandler:(id)handler;
- (void)generateLinkForConversation:(id)conversation completionHandler:(id)handler;
- (void)generateLinkWithInvitedMemberHandles:(id)handles linkLifetimeScope:(int64_t)scope completionHandler:(id)handler;
- (void)getInactiveLinkWithCompletionHandler:(id)handler;
- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)handler;
- (void)getMessagesGroupDetailsForConversationUUID:(id)d completionHandler:(id)handler;
- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler;
- (void)invalidateLink:(id)link completionHandler:(id)handler;
- (void)joinConversationWithRequest:(id)request;
- (void)kickMember:(id)member conversation:(id)conversation;
- (void)launchApplicationForActivitySession:(id)session completionHandler:(id)handler;
- (void)launchApplicationForActivitySessionUUID:(id)d completionHandler:(id)handler;
- (void)leaveActivitySession:(id)session onConversation:(id)conversation;
- (void)leaveConversationWithUUID:(id)d;
- (void)prepareConversationWithUUID:(id)d withHandoffContext:(id)context;
- (void)presentDismissalAlertForActivitySession:(id)session onConversation:(id)conversation;
- (void)pruneConversationsPendingUpgradeInConversationsWithGroupUUID:(id)d;
- (void)receivedTrackedPendingMember:(id)member forConversationLink:(id)link;
- (void)refreshActiveConversations;
- (void)registerMessagesGroupUUIDForConversationUUID:(id)d;
- (void)registerWithCompletionHandler:(id)handler;
- (void)rejectPendingMember:(id)member forConversation:(id)conversation;
- (void)remoteScreenShareAttributesChanged:(id)changed isLocallySharing:(BOOL)sharing;
- (void)remoteScreenShareEndedWithReason:(id)reason;
- (void)removeCollaborationIdentifier:(id)identifier forConversation:(id)conversation;
- (void)removeConversationNoticeWithUUID:(id)d;
- (void)removeDelegate:(id)delegate;
- (void)renewLink:(id)link expirationDate:(id)date reason:(unint64_t)reason completionHandler:(id)handler;
- (void)requestParticipantToShareScreen:(id)screen forConversation:(id)conversation;
- (void)requestScreenShareFromMember:(id)member conversation:(id)conversation;
- (void)screenSharingAvailableChanged:(BOOL)changed;
- (void)serverDisconnectedForDataSource:(id)source oldConversationsByGroupUUID:(id)d;
- (void)setGridDisplayMode:(unint64_t)mode conversation:(id)conversation;
- (void)setLinkName:(id)name forConversationLink:(id)link completionHandler:(id)handler;
- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode forConversationUUID:(id)d;
- (void)setLocalParticipantCluster:(id)cluster forConversation:(id)conversation;
- (void)setMessagesGroupProvider:(id)provider;
- (void)setNonSessionBackedConversationCreationQueue:(id)queue;
- (void)sharePlayAvailableChanged:(BOOL)changed;
- (void)startTrackingCollaboration:(id)collaboration forConversation:(id)conversation completionHandler:(id)handler;
- (void)updateConversationsNotBackedByGroupSessionWithCall:(id)call;
- (void)updateConversationsNotBackedByGroupSessionWithCall:(id)call conversationsByGroupUUID:(id)d creationQueue:(id)queue;
- (void)updateExternalParticipants:(id)participants;
- (void)updateLocalParticipantToAVLessWithPresentationMode:(unint64_t)mode forConversationUUID:(id)d;
- (void)updateMessagesGroupName:(id)name onConversation:(id)conversation;
- (void)updateRemoteControlStatus:(int64_t)status onConversation:(id)conversation;
- (void)updateURLWithDugongTokenIfNeeded:(id)needed collaboration:(id)collaboration handle:(id)handle completion:(id)completion;
@end

@implementation TUConversationManager

- (TUConversationManager)init
{
  v3 = objc_alloc_init(TUConversationManagerXPCClient);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [(TUConversationManager *)self initWithDataSource:v3 notificationCenter:defaultCenter];

  return v5;
}

- (BOOL)currentProcessCanAccessCollaborations
{
  if (currentProcessCanAccessCollaborations_onceToken != -1)
  {
    [TUConversationManager currentProcessCanAccessCollaborations];
  }

  return currentProcessCanAccessCollaborations_isCurrentProcessEntitled;
}

uint64_t __62__TUConversationManager_currentProcessCanAccessCollaborations__block_invoke()
{
  result = TUCurrentProcessHasEntitlementCapability(@"access-collaboration");
  currentProcessCanAccessCollaborations_isCurrentProcessEntitled = result;
  return result;
}

- (NSSet)activeConversations
{
  v3 = MEMORY[0x1E695DFD8];
  dataSource = [(TUConversationManager *)self dataSource];
  conversationsByGroupUUID = [dataSource conversationsByGroupUUID];
  allValues = [conversationsByGroupUUID allValues];
  v7 = [v3 setWithArray:allValues];
  conversationsNotBackedByGroupSessions = [(TUConversationManager *)self conversationsNotBackedByGroupSessions];
  v9 = [v7 setByAddingObjectsFromSet:conversationsNotBackedByGroupSessions];

  return v9;
}

- (void)refreshActiveConversations
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to refreshActiveConversations", v5, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource refreshActiveConversations];
}

- (TUConversationReactionsController)reactionsController
{
  reactionsController = self->_reactionsController;
  if (!reactionsController)
  {
    v4 = [TUConversationReactionsController alloc];
    dataSource = [(TUConversationManager *)self dataSource];
    v6 = [(TUConversationReactionsController *)v4 initWithConversationDataSource:dataSource];
    v7 = self->_reactionsController;
    self->_reactionsController = v6;

    reactionsController = self->_reactionsController;
  }

  return reactionsController;
}

- (BOOL)isSharePlayAvailable
{
  dataSource = [(TUConversationManager *)self dataSource];
  isSharePlayAvailable = [dataSource isSharePlayAvailable];

  return isSharePlayAvailable;
}

- (TUConversation)avLessConversation
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataSource = [(TUConversationManager *)self dataSource];
  conversationsByGroupUUID = [dataSource conversationsByGroupUUID];
  allValues = [conversationsByGroupUUID allValues];

  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (![v8 avMode] && (objc_msgSend(v8, "state") == 3 || objc_msgSend(v8, "state") == 2))
        {
          v5 = v8;
          goto LABEL_13;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (TUConversationManager)initWithDataSource:(id)source
{
  v4 = MEMORY[0x1E696AD88];
  sourceCopy = source;
  defaultCenter = [v4 defaultCenter];
  v7 = [(TUConversationManager *)self initWithDataSource:sourceCopy notificationCenter:defaultCenter];

  return v7;
}

- (TUConversationManager)initWithDataSource:(id)source notificationCenter:(id)center
{
  v43[8] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  centerCopy = center;
  v41.receiver = self;
  v41.super_class = TUConversationManager;
  v9 = [(TUConversationManager *)&v41 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.telephonyutilities.conversationmanager", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_dataSource, source);
    [(TUConversationManagerDataSource *)v9->_dataSource setDelegate:v9];
    objc_storeStrong(&v9->_notificationCenter, center);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v9->_delegateToQueue;
    v9->_delegateToQueue = weakToStrongObjectsMapTable;

    v14 = [MEMORY[0x1E695DFA8] set];
    conversationsNotBackedByGroupSessions = v9->_conversationsNotBackedByGroupSessions;
    v9->_conversationsNotBackedByGroupSessions = v14;

    v16 = [MEMORY[0x1E695DFA8] set];
    callsNotBackedByGroupSessionsPendingUpgrade = v9->_callsNotBackedByGroupSessionsPendingUpgrade;
    v9->_callsNotBackedByGroupSessionsPendingUpgrade = v16;

    currentProcessCanAccessCollaborations = [(TUConversationManager *)v9 currentProcessCanAccessCollaborations];
    collaborationManager2 = TUDefaultLog();
    v20 = os_log_type_enabled(collaborationManager2, OS_LOG_TYPE_DEFAULT);
    if (currentProcessCanAccessCollaborations)
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, collaborationManager2, OS_LOG_TYPE_DEFAULT, "Creating collaboration manager for current process", buf, 2u);
      }

      v21 = [TUCollaborationManager alloc];
      v22 = objc_alloc_init(TUCollaborationHighlightProvider);
      v23 = [(TUCollaborationManager *)v21 initWithCollaborationProvider:v22];
      collaborationManager = v9->_collaborationManager;
      v9->_collaborationManager = v23;

      collaborationManager = [(TUConversationManager *)v9 collaborationManager];
      [collaborationManager setDelegate:v9];

      collaborationManager2 = [(TUConversationManager *)v9 collaborationManager];
      queue = [(TUConversationManager *)v9 queue];
      [(TUConversationManager *)v9 addDelegate:collaborationManager2 queue:queue];
    }

    else if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, collaborationManager2, OS_LOG_TYPE_DEFAULT, "Current process is not entitled to access collaborations on the call- not initializing the collaboration manager", buf, 2u);
    }

    v43[0] = @"TUCallCenterCallStatusChangedNotification";
    v43[1] = @"TUCallCenterVideoCallStatusChangedNotification";
    v43[2] = @"TUCallVideoStreamTokenChangedNotification";
    v43[3] = @"TUCallProviderContextChangedNotification";
    v43[4] = @"TUCallConversationChangedNotification";
    v43[5] = @"TUCallCenterCallStartedConnectingNotification";
    v43[6] = @"TUCallCenterCallConnectedNotification";
    v43[7] = @"TUCallDowngradedToAudioNotification";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = v39 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v37;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v36 + 1) + 8 * i);
          notificationCenter = [(TUConversationManager *)v9 notificationCenter];
          [notificationCenter addObserver:v9 selector:sel_callPropertiesChanged_ name:v32 object:0];
        }

        v29 = [v27 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v29);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(TUConversationManagerDataSource *)self->_dataSource invalidate];
  v4.receiver = self;
  v4.super_class = TUConversationManager;
  [(TUConversationManager *)&v4 dealloc];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__TUConversationManager_addDelegate_queue___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

void __43__TUConversationManager_addDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(TUConversationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__TUConversationManager_removeDelegate___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

void __40__TUConversationManager_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (NSSet)activeAdvertisements
{
  v2 = MEMORY[0x1E695DFD8];
  dataSource = [(TUConversationManager *)self dataSource];
  advertisementsOnSystem = [dataSource advertisementsOnSystem];
  allValues = [advertisementsOnSystem allValues];
  v6 = [v2 setWithArray:allValues];

  return v6;
}

- (NSSet)incomingPendingConversations
{
  v2 = MEMORY[0x1E695DFD8];
  dataSource = [(TUConversationManager *)self dataSource];
  incomingPendingConversationsByGroupUUID = [dataSource incomingPendingConversationsByGroupUUID];
  allValues = [incomingPendingConversationsByGroupUUID allValues];
  v6 = [v2 setWithArray:allValues];

  return v6;
}

- (NSSet)activatedConversationLinks
{
  dataSource = [(TUConversationManager *)self dataSource];
  activatedConversationLinks = [dataSource activatedConversationLinks];

  return activatedConversationLinks;
}

- (NSDictionary)activityAuthorizedBundleIdentifiers
{
  dataSource = [(TUConversationManager *)self dataSource];
  activityAuthorizedBundleIdentifiers = [dataSource activityAuthorizedBundleIdentifiers];

  return activityAuthorizedBundleIdentifiers;
}

- (BOOL)autoSharePlayEnabled
{
  dataSource = [(TUConversationManager *)self dataSource];
  autoSharePlayEnabled = [dataSource autoSharePlayEnabled];

  return autoSharePlayEnabled;
}

- (BOOL)isScreenSharingAvailable
{
  dataSource = [(TUConversationManager *)self dataSource];
  isScreenSharingAvailable = [dataSource isScreenSharingAvailable];

  return isScreenSharingAvailable;
}

- (id)activeConversationWithUUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  activeConversations = [(TUConversationManager *)self activeConversations];
  v6 = [activeConversations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(activeConversations);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uUID = [v9 UUID];
        v11 = [uUID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [activeConversations countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)activeConversationWithGroupUUID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dataSource = [(TUConversationManager *)self dataSource];
  conversationsByGroupUUID = [dataSource conversationsByGroupUUID];
  v7 = [conversationsByGroupUUID objectForKeyedSubscript:dCopy];

  if (!v7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    conversationsNotBackedByGroupSessions = [(TUConversationManager *)self conversationsNotBackedByGroupSessions];
    v9 = [conversationsNotBackedByGroupSessions countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v7 = 0;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(conversationsNotBackedByGroupSessions);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          groupUUID = [v13 groupUUID];
          v15 = [groupUUID isEqual:dCopy];

          if (v15)
          {
            v16 = v13;

            v7 = v16;
          }
        }

        v10 = [conversationsNotBackedByGroupSessions countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    else
    {
      v7 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)activeConversationWithRemoteMembers:(id)members andLink:(id)link
{
  linkCopy = link;
  membersCopy = members;
  v8 = objc_opt_class();
  activeConversations = [(TUConversationManager *)self activeConversations];
  v10 = [v8 conversationWithRemoteMembers:membersCopy andLink:linkCopy fromConversations:activeConversations];

  return v10;
}

- (id)activeConversationWithLinkForCall:(id)call
{
  callCopy = call;
  dataSource = [(TUConversationManager *)self dataSource];
  pseudonymsByCallUUID = [dataSource pseudonymsByCallUUID];
  uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];

  v8 = [pseudonymsByCallUUID objectForKeyedSubscript:uniqueProxyIdentifierUUID];

  if (v8)
  {
    v9 = objc_opt_class();
    activeConversations = [(TUConversationManager *)self activeConversations];
    v11 = [v9 conversationWithPseudonym:v8 fromConversations:activeConversations];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)pendingConversationWithLink:(id)link
{
  linkCopy = link;
  v5 = objc_opt_class();
  activeConversations = [(TUConversationManager *)self activeConversations];
  v7 = [v5 pendingConversationWithLink:linkCopy fromConversations:activeConversations];

  return v7;
}

+ (id)conversationWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations
{
  v5 = [self conversationsWithRemoteMembers:members andLink:link fromConversations:conversations];
  anyObject = [v5 anyObject];

  return anyObject;
}

+ (id)conversationWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations matchingVideo:(BOOL)video backedByGroupSession:(BOOL)session
{
  sessionCopy = session;
  videoCopy = video;
  v28 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  linkCopy = link;
  conversationsCopy = conversations;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [objc_opt_class() conversationsWithRemoteMembers:membersCopy andLink:linkCopy fromConversations:{conversationsCopy, 0}];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        if ([v19 isVideo] == videoCopy && objc_msgSend(v19, "isBackedByGroupSession") == sessionCopy)
        {
          v20 = v19;
          goto LABEL_12;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_12:

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)conversationsWithRemoteMembers:(id)members andLink:(id)link fromConversations:(id)conversations
{
  v24 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  linkCopy = link;
  conversationsCopy = conversations;
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(conversationsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = conversationsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([v16 isRepresentedByRemoteMembers:membersCopy andLink:{linkCopy, v19}])
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)conversationWithPseudonym:(id)pseudonym fromConversations:(id)conversations
{
  v23 = *MEMORY[0x1E69E9840];
  pseudonymCopy = pseudonym;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  conversationsCopy = conversations;
  v7 = [conversationsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(conversationsCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        link = [v10 link];
        if (link)
        {
          v12 = link;
          link2 = [v10 link];
          pseudonym = [link2 pseudonym];
          v15 = [pseudonym isEqualToString:pseudonymCopy];

          if (v15)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [conversationsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)pendingConversationWithLink:(id)link fromConversations:(id)conversations
{
  v22 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  conversationsCopy = conversations;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [conversationsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v18;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(conversationsCopy);
      }

      v12 = *(*(&v17 + 1) + 8 * i);
      link = [v12 link];
      if ([link isEquivalentToConversationLink:linkCopy])
      {
        letMeInRequestState = [v12 letMeInRequestState];

        if (!letMeInRequestState)
        {
          continue;
        }

        link = v9;
        v9 = v12;
      }
    }

    v8 = [conversationsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v8);
LABEL_14:

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)remoteMembersForCall:(id)call
{
  v21 = *MEMORY[0x1E69E9840];
  remoteParticipantHandles = [call remoteParticipantHandles];
  v4 = [remoteParticipantHandles copy];

  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [TUConversationMember alloc];
        v13 = [(TUConversationMember *)v12 initWithHandle:v11 nickname:0, v16];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)registerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource registerWithCompletionHandler:handlerCopy];
}

- (TUConversationMediaController)mediaController
{
  mediaController = self->_mediaController;
  if (!mediaController)
  {
    v4 = [TUConversationMediaController alloc];
    dataSource = [(TUConversationManager *)self dataSource];
    v6 = [(TUConversationMediaController *)v4 initWithConversationDataSource:dataSource];
    v7 = self->_mediaController;
    self->_mediaController = v6;

    mediaController = self->_mediaController;
  }

  return mediaController;
}

- (void)addRemoteMembers:(id)members toConversation:(id)conversation
{
  v6 = MEMORY[0x1E695DFD8];
  conversationCopy = conversation;
  membersCopy = members;
  v9 = [v6 set];
  [(TUConversationManager *)self addRemoteMembers:membersCopy otherInvitedHandles:v9 toConversation:conversationCopy];
}

- (void)updateMessagesGroupName:(id)name onConversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = nameCopy;
    v13 = 2112;
    v14 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to set new messages group name: %@ on conversation: %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource updateMessagesGroupName:nameCopy onConversation:conversationCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setGridDisplayMode:(unint64_t)mode conversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    modeCopy = mode;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to set grid display mode to: %lu on conversation: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setGridDisplayMode:mode conversation:conversationCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)conversationUpdateMessagesGroupPhoto:(id)photo
{
  v10 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = photoCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to update messages group photo on conversation: %@", &v8, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource conversationUpdateMessagesGroupPhoto:photoCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles toConversation:(id)conversation
{
  v7 = MEMORY[0x1E695DFD8];
  conversationCopy = conversation;
  membersCopy = members;
  v10 = [v7 set];
  [(TUConversationManager *)self addRemoteMembers:membersCopy otherInvitedHandles:v10 invitationPreferences:0 toConversation:conversationCopy];
}

- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences toConversation:(id)conversation
{
  v23 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  handlesCopy = handles;
  conversationCopy = conversation;
  preferencesCopy = preferences;
  v14 = TUDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = membersCopy;
    v19 = 2112;
    v20 = handlesCopy;
    v21 = 2112;
    v22 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Asked to add remote members: %@ otherInvitedHandles: %@ to conversation: %@", &v17, 0x20u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource addRemoteMembers:membersCopy otherInvitedHandles:handlesCopy invitationPreferences:preferencesCopy toConversation:conversationCopy];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)prepareConversationWithUUID:(id)d withHandoffContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to prepare conversation with UUID: %@ with hand off context: %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource prepareConversationWithUUID:dCopy withHandoffContext:contextCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)createActivitySession:(id)session onConversation:(id)conversation
{
  conversationCopy = conversation;
  sessionCopy = session;
  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource createActivitySession:sessionCopy onConversation:conversationCopy options:0];
}

- (void)createActivitySession:(id)session onConversation:(id)conversation options:(unint64_t)options
{
  v17 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  conversationCopy = conversation;
  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = sessionCopy;
    v15 = 2112;
    v16 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Asked to add activity: %@ to conversation: %@", &v13, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource createActivitySession:sessionCopy onConversation:conversationCopy options:options];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)leaveActivitySession:(id)session onConversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to leave activitySession: %@ to conversation: %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource leaveActivitySession:sessionCopy onConversation:conversationCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)endActivitySession:(id)session onConversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to end activitySession: %@ to conversation: %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource endActivitySession:sessionCopy onConversation:conversationCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)presentDismissalAlertForActivitySession:(id)session onConversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to present dismissal alert for activitySession: %@ on conversation: %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource presentDismissalAlertForActivitySession:sessionCopy onConversation:conversationCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)joinConversationWithRequest:(id)request
{
  v10 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = requestCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "joinConversationWithRequest %@", &v8, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource joinConversationWithRequest:requestCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)leaveConversationWithUUID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "leaveConversationWithUUID %@", &v8, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource leaveConversationWithUUID:dCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)launchApplicationForActivitySession:(id)session completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  handlerCopy = handler;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = sessionCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to launch application for activitySession %@", &v12, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  uUID = [sessionCopy UUID];
  [dataSource launchApplicationForActivitySessionUUID:uUID authorizedExternally:0 forceBackground:0 completionHandler:handlerCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)launchApplicationForActivitySessionUUID:(id)d completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to launch application for activitySession UUID %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource launchApplicationForActivitySessionUUID:dCopy authorizedExternally:0 forceBackground:0 completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)buzzMember:(id)member destinationID:(id)d invitationContext:(id)context conversation:(id)conversation
{
  v21 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  conversationCopy = conversation;
  contextCopy = context;
  dCopy = d;
  v14 = TUDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = memberCopy;
    v19 = 2112;
    v20 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Asked to buzz member: %@ conversation: %@", &v17, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource buzzMember:memberCopy destinationID:dCopy invitationContext:contextCopy conversation:conversationCopy];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)requestScreenShareFromMember:(id)member conversation:(id)conversation
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUConversationManager.m" lineNumber:509 description:@"requestScreenShareFromMembers is deprecated and should not be used"];
}

- (void)kickMember:(id)member conversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = memberCopy;
    v13 = 2112;
    v14 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to kick member: %@ conversation: %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource kickMember:memberCopy conversation:conversationCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addScreenSharingType:(unint64_t)type forConversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    typeCopy = type;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to set screen sharing type to: (%ld) for conversation: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource addScreenSharingType:type forConversation:conversationCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to get the latest remote screen share attributes", v7, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource getLatestRemoteScreenShareAttributesWithCompletionHandler:handlerCopy];
}

- (id)ckBundleIDForCollaborationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  collaborationManager = [(TUConversationManager *)self collaborationManager];
  collaborationProvider = [collaborationManager collaborationProvider];
  v7 = [collaborationProvider ckBundleIDForCollaborationIdentifier:identifierCopy];

  return v7;
}

- (void)addCollaborationIdentifier:(id)identifier forConversation:(id)conversation
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  v9 = v8;
  if (identifierCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = conversationCopy;
      _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Asked to set collaboration identifier: %@ for conversation: %@", &v16, 0x16u);
    }

    collaborationManager = [(TUConversationManager *)self collaborationManager];
    collaborationProvider = [collaborationManager collaborationProvider];
    v9 = [collaborationProvider collaborationHighlightForIdentifier:identifierCopy];

    v12 = TUDefaultLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v13)
      {
        v16 = 138412546;
        v17 = identifierCopy;
        v18 = 2112;
        v19 = conversationCopy;
        _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Found collaboration -Adding collaboration identifier: %@ for conversation: %@", &v16, 0x16u);
      }

      [(TUConversationManager *)self addCollaboration:v9 forConversation:conversationCopy];
    }

    else
    {
      if (v13)
      {
        v16 = 138412546;
        v17 = identifierCopy;
        v18 = 2112;
        v19 = conversationCopy;
        _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Not adding collaboration identifier: %@ to conversation: %@, could not find corresponding collaboration. Adding to pending collaborations", &v16, 0x16u);
      }

      collaborationManager2 = [(TUConversationManager *)self collaborationManager];
      [collaborationManager2 queueCollaborationIdentifierForCollaboration:identifierCopy toConversation:conversationCopy];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [TUConversationManager addCollaborationIdentifier:conversationCopy forConversation:?];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addCollaboration:(id)collaboration forConversation:(id)conversation
{
  v27 = *MEMORY[0x1E69E9840];
  collaborationCopy = collaboration;
  conversationCopy = conversation;
  collaborationIdentifier = [collaborationCopy collaborationIdentifier];

  v9 = TUDefaultLog();
  ckAppBundleIDs = v9;
  if (collaborationIdentifier)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      collaborationIdentifier2 = [collaborationCopy collaborationIdentifier];
      v23 = 138412546;
      v24 = collaborationIdentifier2;
      v25 = 2112;
      v26 = conversationCopy;
      _os_log_impl(&dword_1956FD000, ckAppBundleIDs, OS_LOG_TYPE_DEFAULT, "Asked to add collaboration: %@ for conversation: %@", &v23, 0x16u);
    }

    attributions = [collaborationCopy attributions];
    v13 = [attributions count];

    if (v13)
    {
      attributions2 = [collaborationCopy attributions];
      firstObject = [attributions2 firstObject];
      collaborationMetadata = [firstObject collaborationMetadata];
      ckAppBundleIDs = [collaborationMetadata ckAppBundleIDs];
    }

    else
    {
      ckAppBundleIDs = 0;
    }

    dataSource = [(TUConversationManager *)self dataSource];
    collaborationIdentifier3 = [collaborationCopy collaborationIdentifier];
    v19 = [collaborationCopy URL];
    v20 = [v19 description];
    uUID = [conversationCopy UUID];
    [dataSource addCollaborationIdentifier:collaborationIdentifier3 collaborationURL:v20 cloudKitAppBundleIDs:ckAppBundleIDs forConversationUUID:uUID];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [TUConversationManager addCollaboration:collaborationCopy forConversation:conversationCopy];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)startTrackingCollaboration:(id)collaboration forConversation:(id)conversation completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  collaborationCopy = collaboration;
  conversationCopy = conversation;
  handlerCopy = handler;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    collaborationIdentifier = [collaborationCopy collaborationIdentifier];
    v25 = 138412546;
    v26 = collaborationIdentifier;
    v27 = 2112;
    v28 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Asked to set collaboration identifier: %@ for conversation: %@", &v25, 0x16u);
  }

  attributions = [collaborationCopy attributions];
  v14 = [attributions count];

  if (v14)
  {
    attributions2 = [collaborationCopy attributions];
    firstObject = [attributions2 firstObject];
    collaborationMetadata = [firstObject collaborationMetadata];
    ckAppBundleIDs = [collaborationMetadata ckAppBundleIDs];
  }

  else
  {
    ckAppBundleIDs = 0;
  }

  dataSource = [(TUConversationManager *)self dataSource];
  collaborationIdentifier2 = [collaborationCopy collaborationIdentifier];
  v21 = [collaborationCopy URL];
  v22 = [v21 description];
  uUID = [conversationCopy UUID];
  [dataSource startTrackingCollaborationWithIdentifier:collaborationIdentifier2 collaborationURL:v22 cloudKitAppBundleIDs:ckAppBundleIDs forConversationUUID:uUID completionHandler:handlerCopy];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)removeCollaborationIdentifier:(id)identifier forConversation:(id)conversation
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  dataSource = v8;
  if (identifierCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = identifierCopy;
      v14 = 2112;
      v15 = conversationCopy;
      _os_log_impl(&dword_1956FD000, dataSource, OS_LOG_TYPE_DEFAULT, "Asked to remove collaboration identifier: %@ for conversation: %@", &v12, 0x16u);
    }

    dataSource = [(TUConversationManager *)self dataSource];
    uUID = [conversationCopy UUID];
    [dataSource removeCollaborationIdentifier:identifierCopy forConversationUUID:uUID];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [TUConversationManager removeCollaborationIdentifier:conversationCopy forConversation:?];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  initiatorCopy = initiator;
  dCopy = d;
  handlerCopy = handler;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = initiatorCopy;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Checking disclosure of collaboration initiator %@ for conversation UUID %@", &v14, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource getNeedsDisclosureOfCollaborationInitiator:initiatorCopy forConversationUUID:dCopy completionHandler:handlerCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  initiatorCopy = initiator;
  dCopy = d;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = initiatorCopy;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Adding disclosed collaboration initiator %@ to conversation UUID %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource addDisclosedCollaborationInitiator:initiatorCopy toConversationUUID:dCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateURLWithDugongTokenIfNeeded:(id)needed collaboration:(id)collaboration handle:(id)handle completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  collaborationCopy = collaboration;
  handleCopy = handle;
  completionCopy = completion;
  attributions = [collaborationCopy attributions];
  firstObject = [attributions firstObject];
  uniqueIdentifier = [firstObject uniqueIdentifier];

  v17 = TUDefaultLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (uniqueIdentifier)
  {
    if (v18)
    {
      *buf = 138412546;
      *&buf[4] = neededCopy;
      *&buf[12] = 2112;
      *&buf[14] = handleCopy;
      _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "Asked to update collaboration URL %@ with Dugong token for handle %@, if needed", buf, 0x16u);
    }

    queue = [(TUConversationManager *)self queue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __90__TUConversationManager_updateURLWithDugongTokenIfNeeded_collaboration_handle_completion___block_invoke;
    v28[3] = &unk_1E7426B50;
    v29 = uniqueIdentifier;
    v32 = completionCopy;
    v30 = neededCopy;
    v31 = handleCopy;
    v20 = v29;
    v21 = queue;
    v22 = v28;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v23 = getIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOSSymbolLoc_ptr;
    v36 = getIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOSSymbolLoc_ptr;
    if (!getIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOSSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOSSymbolLoc_block_invoke;
      v38 = &unk_1E7424CD8;
      v39 = &v33;
      __getIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOSSymbolLoc_block_invoke(buf);
      v23 = v34[3];
    }

    _Block_object_dispose(&v33, 8);
    if (!v23)
    {
      [TUConversationManager updateURLWithDugongTokenIfNeeded:collaboration:handle:completion:];
    }

    v23(v20, 33, v21, v22);
  }

  else
  {
    if (v18)
    {
      attributions2 = [collaborationCopy attributions];
      firstObject2 = [attributions2 firstObject];
      uniqueIdentifier2 = [firstObject2 uniqueIdentifier];
      *buf = 138412290;
      *&buf[4] = uniqueIdentifier2;
      _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "Returning collaboration URL without Dugong token because no messageGUID was found in collaboration's attribution: %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, neededCopy);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __90__TUConversationManager_updateURLWithDugongTokenIfNeeded_collaboration_handle_completion___block_invoke(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 138412546;
    v45 = v3;
    v46 = 2112;
    v47 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Retrieved messages for queried GUID %@ to populate Dugong tokens: %@", buf, 0x16u);
  }

  v6 = [v3 firstObject];
  v7 = [v6 richLinkMetadata];

  if (v7)
  {
    v8 = [v7 specialization];
    v9 = [v8 specialization];

    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [v9 encodedTokens];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 objectForKey:a1[6]];
          if (v12)
          {
            v13 = [MEMORY[0x1E696AF20] componentsWithURL:a1[5] resolvingAgainstBaseURL:0];
            v14 = objc_alloc_init(MEMORY[0x1E696AF20]);
            v15 = [v13 scheme];
            [v14 setScheme:v15];

            v16 = [v13 host];
            [v14 setHost:v16];

            v17 = [v13 path];
            [v14 setPath:v17];

            v42 = v13;
            v18 = [v13 fragment];
            [v14 setFragment:v18];

            v19 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
            v20 = [v19 mutableCopy];

            [v20 removeCharactersInString:@"+=/"];
            v21 = [@"token" stringByAddingPercentEncodingWithAllowedCharacters:v20];
            v43 = v12;
            v40 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
            v39 = [v40 base64EncodedStringWithOptions:0];
            v38 = [v39 stringByAddingPercentEncodingWithAllowedCharacters:v20];
            v41 = v21;
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", v21, v38];
            [v14 setQuery:v22];
            v23 = [v14 URL];
            v24 = TUDefaultLog();
            v25 = v24;
            if (v23)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v45 = v23;
                _os_log_impl(&dword_1956FD000, v25, OS_LOG_TYPE_DEFAULT, "Sucessfully amended collaboration URL with Dugong token %@", buf, 0xCu);
              }

              v26 = *(a1[7] + 16);
            }

            else
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                __90__TUConversationManager_updateURLWithDugongTokenIfNeeded_collaboration_handle_completion___block_invoke_cold_1();
              }

              v37 = a1[5];
              v26 = *(a1[7] + 16);
            }

            v26();

            v12 = v43;
          }

          else
          {
            v34 = TUDefaultLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = a1[6];
              *buf = 138412290;
              v45 = v35;
              _os_log_impl(&dword_1956FD000, v34, OS_LOG_TYPE_DEFAULT, "Returning collaboration URL without Dugong token because could not lookup token for handle %@", buf, 0xCu);
            }

            v36 = a1[5];
            (*(a1[7] + 16))();
          }

          goto LABEL_21;
        }
      }

      v30 = TUDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v9;
        v31 = "[WARN] Returning collaboration URL without Dugong token because encodedTokens was nil for specialization %@";
LABEL_19:
        _os_log_impl(&dword_1956FD000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
      }
    }

    else
    {
      v30 = TUDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v7;
        v31 = "[WARN] Returning collaboration URL without Dugong token because specialization was nil for the richLinkMetadata %@";
        goto LABEL_19;
      }
    }

    v32 = a1[5];
    (*(a1[7] + 16))();
LABEL_21:

    goto LABEL_22;
  }

  v27 = TUDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v3 firstObject];
    *buf = 138412290;
    v45 = v28;
    _os_log_impl(&dword_1956FD000, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Returning collaboration URL without Dugong token because richLinkMetadata was nil from the message %@", buf, 0xCu);
  }

  v29 = a1[5];
  (*(a1[7] + 16))();
LABEL_22:

  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)openCollaborationWithIdentifier:(id)identifier forConversation:(id)conversation
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to open collaboration identifier: %@", buf, 0xCu);
  }

  collaborationManager = [(TUConversationManager *)self collaborationManager];
  collaborationProvider = [collaborationManager collaborationProvider];
  v11 = [collaborationProvider collaborationHighlightForIdentifier:identifierCopy];

  if (v11)
  {
    objc_initWeak(buf, self);
    v12 = [v11 URL];
    localMember = [conversationCopy localMember];
    handle = [localMember handle];
    normalizedValue = [handle normalizedValue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke;
    v19[3] = &unk_1E7426BA0;
    objc_copyWeak(&v23, buf);
    v20 = identifierCopy;
    v21 = conversationCopy;
    v22 = v11;
    [(TUConversationManager *)self updateURLWithDugongTokenIfNeeded:v12 collaboration:v22 handle:normalizedValue completion:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = TUDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [TUConversationManager openCollaborationWithIdentifier:forConversation:];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11 != 0;
}

void __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke_2;
  v4[3] = &unk_1E7426B78;
  objc_copyWeak(&v8, a1 + 7);
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  TUOpenURLWithCompletion(v3, v4);

  objc_destroyWeak(&v8);
}

void __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v4)
    {
      v7 = TUDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke_2_cold_1(a1);
      }
    }

    else
    {
      v7 = [WeakRetained dataSource];
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) UUID];
      [v7 markCollaborationWithIdentifierOpened:v8 forConversationUUID:v9];
    }
  }
}

- (void)generateLinkForConversation:(id)conversation completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  handlerCopy = handler;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to generate link for conversation: %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource generateLinkForConversation:conversationCopy completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)generateLinkWithInvitedMemberHandles:(id)handles linkLifetimeScope:(int64_t)scope completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  handlerCopy = handler;
  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = handlesCopy;
    v18 = 2048;
    scopeCopy = scope;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Asked to generate link in advance of conversation with invited member handles: %@, linkLifetimeScope: %ld", buf, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__TUConversationManager_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke;
  v14[3] = &unk_1E7426BC8;
  v15 = handlerCopy;
  v12 = handlerCopy;
  [dataSource generateLinkWithInvitedMemberHandles:handlesCopy linkLifetimeScope:scope completionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __98__TUConversationManager_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __98__TUConversationManager_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke_cold_1();
    }

    v8 = *(*(a1 + 32) + 16);
LABEL_9:
    v8();
    goto LABEL_10;
  }

  v9 = TUDefaultLog();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Link generation succeeded with link %@", &v14, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    __98__TUConversationManager_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke_cold_2(v10);
  }

  v12 = *(a1 + 32);
  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.telephonyutilities.callservicesd" code:1 userInfo:0];
  (*(v12 + 16))(v12, 0, v13);

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)addInvitedMemberHandles:(id)handles toConversationLink:(id)link completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  linkCopy = link;
  handlerCopy = handler;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = handlesCopy;
    v16 = 2112;
    v17 = linkCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Asked to add invited member handles %@ to link %@", &v14, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource addInvitedMemberHandles:handlesCopy toConversationLink:linkCopy completionHandler:handlerCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)invalidateLink:(id)link completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  handlerCopy = handler;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = linkCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Invalidate link: %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource invalidateLink:linkCopy deleteReason:2 completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)renewLink:(id)link expirationDate:(id)date reason:(unint64_t)reason completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  dateCopy = date;
  handlerCopy = handler;
  v13 = TUDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = linkCopy;
    v18 = 2112;
    v19 = dateCopy;
    v20 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Asked to renew link %@ to new expiration date %@ with reason %lu", &v16, 0x20u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource renewLink:linkCopy expirationDate:dateCopy reason:reason completionHandler:handlerCopy];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)checkLinkValidity:(id)validity completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  validityCopy = validity;
  handlerCopy = handler;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = validityCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to check validity for link: %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource checkLinkValidity:validityCopy completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)getInactiveLinkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to get an inactive link for vending as suggestion", v7, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource getInactiveLinkWithCompletionHandler:handlerCopy];
}

- (void)activateLink:(id)link completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  handlerCopy = handler;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = linkCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to activate previously-vended link: %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource activateLink:linkCopy completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setLinkName:(id)name forConversationLink:(id)link completionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  handlerCopy = handler;
  nameCopy = name;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = linkCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Asked to set a link name for link: %@", &v14, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setLinkName:nameCopy forConversationLink:linkCopy completionHandler:handlerCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updateExternalParticipants:(id)participants
{
  participantsCopy = participants;
  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource updateExternalParticipants:participantsCopy];
}

- (void)approveExternalParticipants:(id)participants
{
  v23 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v4 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = participantsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [TUExternalParticipant alloc];
        identifier = [v10 identifier];
        displayName = [v10 displayName];
        info = [v10 info];
        v15 = [(TUExternalParticipant *)v11 initWithIdentifier:identifier displayName:displayName info:info status:1];
        [v4 addObject:v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [(TUConversationManager *)self updateExternalParticipants:v4];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)denyExternalParticipants:(id)participants
{
  v23 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v4 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = participantsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [TUExternalParticipant alloc];
        identifier = [v10 identifier];
        displayName = [v10 displayName];
        info = [v10 info];
        v15 = [(TUExternalParticipant *)v11 initWithIdentifier:identifier displayName:displayName info:info status:2];
        [v4 addObject:v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [(TUConversationManager *)self updateExternalParticipants:v4];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)approvePendingMember:(id)member forConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = memberCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to approve a pending member waiting to be let in: %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource approvePendingMember:memberCopy forConversation:conversationCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)rejectPendingMember:(id)member forConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = memberCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to reject a pending member waiting to be let in: %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource rejectPendingMember:memberCopy forConversation:conversationCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)requestParticipantToShareScreen:(id)screen forConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = screenCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to generate screen share request with requested participant: %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource requestParticipantToShareScreen:screenCopy forConversation:conversationCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)cancelOrDenyScreenShareRequest:(id)request forConversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = requestCopy;
    v13 = 2112;
    v14 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to cancel screen share request: %@ for conversation: %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource cancelOrDenyScreenShareRequest:requestCopy forConversation:conversationCopy];

  v10 = *MEMORY[0x1E69E9840];
}

+ (BOOL)supportsConversations
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  if ([cUTWeakLinkClass() multiwaySupported])
  {
    v3 = [cUTWeakLinkClass() isGreenTea] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (BOOL)isAddPersonEnabled
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  v3 = [cUTWeakLinkClass() objectForKey:@"gft-legacy-upgrade-enabled"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (unint64_t)maximumNumberOfInvitedMembers
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  v3 = [cUTWeakLinkClass() objectForKey:@"qr-max-participants"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 32;
  }

  return unsignedIntegerValue;
}

+ (BOOL)allowsVideo
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__TUConversationManager_allowsVideo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allowsVideo_onceToken != -1)
  {
    dispatch_once(&allowsVideo_onceToken, block);
  }

  return allowsVideo_allowsVideo;
}

uint64_t __36__TUConversationManager_allowsVideo__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memorySize];
  allowsVideo_allowsVideo = result > 1610612736;
  return result;
}

+ (BOOL)allowsScreenSharing
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = screenCaptureCapabilities();
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "allowsScreenSharing: %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2 != 0;
}

+ (BOOL)allowsScreenSharingWithVideo
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = screenCaptureCapabilities();
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2 == 2)
    {
      v4 = @"YES";
    }

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "allowsScreenSharingWithVideo: %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2 == 2;
}

+ (BOOL)allowsPortraitBlurWhenCaptionsEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MGGetSInt32Answer();
  v3 = MGGetSInt64Answer();
  v4 = (v2 - 1) > 1 || ((v3 - 0x8000) > 0x30 || ((1 << v3) & 0x100810023000BLL) == 0) && ((v3 - 35152) > 0x10 || ((1 << (v3 - 80)) & 0x10021) == 0) && (v3 - 28672) >= 2;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "allowsPortraitBlurWhenCaptionsEnabled: %{public}@", &v9, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (BOOL)supportsEffects
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  supportsFunCam = [cUTWeakLinkClass() supportsFunCam];

  return supportsFunCam;
}

+ (int64_t)memorySize
{
  if (memorySize_onceToken != -1)
  {
    +[TUConversationManager memorySize];
  }

  return memorySize_mem;
}

uint64_t __35__TUConversationManager_memorySize__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  *v3 = 0x1800000006;
  v2 = 8;
  result = sysctl(v3, 2u, &memorySize_mem, &v2, 0, 0);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getMessagesGroupDetailsForConversationUUID:(id)d completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Fetching Messages group info for conversation: %@", &v11, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource getMessagesGroupDetailsForConversationUUID:dCopy completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setMessagesGroupProvider:(id)provider
{
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_messagesGroupProvider);

  objc_storeWeak(&self->_messagesGroupProvider, providerCopy);
  if ((providerCopy != 0) == (WeakRetained == 0))
  {
    dataSource = [(TUConversationManager *)self dataSource];
    [dataSource setSupportsMessagesGroupProviding:providerCopy != 0];
  }
}

- (void)setLocalParticipantCluster:(id)cluster forConversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  clusterCopy = cluster;
  conversationCopy = conversation;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = clusterCopy;
    v13 = 2112;
    v14 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to set local participant cluster to %@ for conversation %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setLocalParticipantCluster:clusterCopy forConversation:conversationCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode forConversationUUID:(id)d
{
  dCopy = d;
  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource setLocalParticipantAudioVideoMode:mode forConversationUUID:dCopy];
}

- (void)updateLocalParticipantToAVLessWithPresentationMode:(unint64_t)mode forConversationUUID:(id)d
{
  dCopy = d;
  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource updateLocalParticipantToAVLessWithPresentationMode:mode forConversationUUID:dCopy];
}

- (void)registerMessagesGroupUUIDForConversationUUID:(id)d
{
  dCopy = d;
  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource registerMessagesGroupUUIDForConversationUUID:dCopy];
}

- (void)updateRemoteControlStatus:(int64_t)status onConversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    statusCopy = status;
    v12 = 2112;
    v13 = conversationCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Asked to update remote control status: %lu for conversation: %@", &v10, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource updateRemoteControlStatus:status onConversation:conversationCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)conversationsChangedForDataSource:(id)source conversationsByGroupUUID:(id)d oldConversationsByGroupUUID:(id)iD
{
  sourceCopy = source;
  dCopy = d;
  iDCopy = iD;
  queue = [(TUConversationManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__TUConversationManager_conversationsChangedForDataSource_conversationsByGroupUUID_oldConversationsByGroupUUID___block_invoke;
  v15[3] = &unk_1E7425188;
  v16 = dCopy;
  selfCopy = self;
  v18 = sourceCopy;
  v19 = iDCopy;
  v12 = iDCopy;
  v13 = sourceCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __112__TUConversationManager_conversationsChangedForDataSource_conversationsByGroupUUID_oldConversationsByGroupUUID___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) copy];
  v2 = [*(a1 + 40) nonSessionBackedConversationCreationQueue];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 conversationsChangedForDataSource:*(a1 + 48) oldConversationsByGroupUUID:*(a1 + 56) newConversationsByGroupUUID:v4 creationQueue:v2];
  }

  else
  {
    [v3 conversationsChangedFromOldConversationsByGroupUUID:*(a1 + 56) newConversationsByGroupUUID:v4];
  }
}

- (void)conversationsChangedForDataSource:(id)source oldConversationsByGroupUUID:(id)d newConversationsByGroupUUID:(id)iD creationQueue:(id)queue
{
  dCopy = d;
  iDCopy = iD;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke;
  block[3] = &unk_1E7424FD8;
  v14 = dCopy;
  v15 = iDCopy;
  selfCopy = self;
  v11 = iDCopy;
  v12 = dCopy;
  dispatch_async(queue, block);
}

void __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke(id *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v40 = [a1[4] mutableCopy];
  v2 = [a1[5] mutableCopy];
  v3 = [a1[6] callPendingUpgradeInConversationsWithGroupUUID:a1[5]];
  v36 = v3;
  if (v3)
  {
    v4 = a1[6];
    v5 = objc_opt_class();
    v6 = [v3 uniqueProxyIdentifierUUID];
    v7 = [a1[6] conversationsNotBackedByGroupSessions];
    v8 = [v5 conversationWithUUID:v6 fromConversations:v7];

    v9 = a1[6];
    v10 = objc_opt_class();
    v11 = a1[6];
    v12 = [objc_opt_class() remoteMembersForCall:v3];
    v13 = [v8 link];
    v14 = MEMORY[0x1E695DFD8];
    v15 = [v2 allValues];
    v16 = [v14 setWithArray:v15];
    v17 = [v10 conversationWithRemoteMembers:v12 andLink:v13 fromConversations:v16 matchingVideo:objc_msgSend(v3 backedByGroupSession:{"isVideo"), 1}];

    v18 = TUDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v50 = v17;
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "Notified of new session-backed conversation %@ to replace non-session-backed conversation %@", buf, 0x16u);
    }

    LODWORD(v3) = v17 != 0;
    if (v8 && v17)
    {
      v19 = [a1[6] queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke_160;
      block[3] = &unk_1E7424FD8;
      block[4] = a1[6];
      v8 = v8;
      v46 = v8;
      v38 = v17;
      v47 = v38;
      dispatch_async(v19, block);

      LODWORD(v3) = 1;
    }

    else
    {
      v38 = v17;
    }
  }

  else
  {
    v8 = 0;
    v38 = 0;
  }

  v39 = v2;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v37 = a1;
  v20 = [a1[6] conversationsNotBackedByGroupSessions];
  v21 = [v20 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v42;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v41 + 1) + 8 * i);
        v26 = [v25 UUID];
        v27 = v8;
        v28 = [v8 UUID];
        v29 = [v26 isEqual:v28] & v3;

        if (v29 == 1)
        {
          v30 = [v25 copy];
          v31 = [v38 UUID];
          [v30 setUUID:v31];

          v32 = [v38 groupUUID];
          [v30 setGroupUUID:v32];

          v33 = [v30 groupUUID];
          [v40 setObject:v30 forKeyedSubscript:v33];
        }

        else
        {
          v34 = [v25 groupUUID];
          [v40 setObject:v25 forKeyedSubscript:v34];

          v30 = [v25 groupUUID];
          [v39 setObject:v25 forKeyedSubscript:v30];
        }

        v8 = v27;
      }

      v22 = [v20 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v22);
  }

  [v37[6] pruneConversationsPendingUpgradeInConversationsWithGroupUUID:v37[5]];
  [v37[6] conversationsChangedFromOldConversationsByGroupUUID:v40 newConversationsByGroupUUID:v39];

  v35 = *MEMORY[0x1E69E9840];
}

void __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke_160(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        v15 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __129__TUConversationManager_conversationsChangedForDataSource_oldConversationsByGroupUUID_newConversationsByGroupUUID_creationQueue___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 conversationManager:v5 migratingFromConversation:v6 toConversation:v7];
  }

  return result;
}

- (void)conversationsChangedFromOldConversationsByGroupUUID:(id)d newConversationsByGroupUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__TUConversationManager_conversationsChangedFromOldConversationsByGroupUUID_newConversationsByGroupUUID___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = dCopy;
  v13 = iDCopy;
  selfCopy = self;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __105__TUConversationManager_conversationsChangedFromOldConversationsByGroupUUID_newConversationsByGroupUUID___block_invoke(uint64_t a1)
{
  v187 = *MEMORY[0x1E69E9840];
  v139 = [MEMORY[0x1E695DFA8] set];
  v118 = [MEMORY[0x1E695DFA8] set];
  v114 = [MEMORY[0x1E695DFA8] set];
  v136 = [MEMORY[0x1E695DFA8] set];
  v111 = [MEMORY[0x1E695DFA8] set];
  v135 = [MEMORY[0x1E695DFA8] set];
  v134 = [MEMORY[0x1E695DFA8] set];
  v133 = [MEMORY[0x1E695DFA8] set];
  v137 = [MEMORY[0x1E695DFA8] set];
  v132 = [MEMORY[0x1E695DFA8] set];
  v138 = [MEMORY[0x1E695DFA8] set];
  v131 = [MEMORY[0x1E695DFA8] set];
  v130 = [MEMORY[0x1E695DFA8] set];
  v129 = [MEMORY[0x1E695DFA8] set];
  v128 = [MEMORY[0x1E695DFA8] set];
  v127 = [MEMORY[0x1E695DFA8] set];
  v126 = [MEMORY[0x1E695DFA8] set];
  v2 = MEMORY[0x1E695DFA8];
  v3 = [*(a1 + 32) allValues];
  v116 = [v2 setWithArray:v3];

  v108 = [MEMORY[0x1E695DFA8] set];
  v125 = [MEMORY[0x1E695DFA8] set];
  v124 = [MEMORY[0x1E695DFA8] set];
  v123 = [MEMORY[0x1E695DFA8] set];
  v122 = [MEMORY[0x1E695DFA8] set];
  v110 = [MEMORY[0x1E695DFA8] set];
  v121 = [MEMORY[0x1E695DFA8] set];
  v117 = [MEMORY[0x1E695DFA8] set];
  v120 = [MEMORY[0x1E695DFA8] set];
  v119 = [MEMORY[0x1E695DFA8] set];
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v141 = a1;
  obj = [*(a1 + 40) allValues];
  v113 = [obj countByEnumeratingWithState:&v180 objects:v186 count:16];
  if (!v113)
  {
    v115 = 0;
    v140 = 0;
    goto LABEL_93;
  }

  v115 = 0;
  v140 = 0;
  v112 = *v181;
  do
  {
    for (i = 0; i != v113; ++i)
    {
      if (*v181 != v112)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v180 + 1) + 8 * i);
      v6 = *(v141 + 32);
      v7 = [v5 groupUUID];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (!v8)
      {
        [v131 addObject:v5];
        [v130 addObject:v5];
        [v136 addObject:v5];
        [v111 addObject:v5];
        [v135 addObject:v5];
        [v134 addObject:v5];
        [v133 addObject:v5];
        [v132 addObject:v5];
        [v138 addObject:v5];
        [v129 addObject:v5];
        [v128 addObject:v5];
        [v127 addObject:v5];
        [v126 addObject:v5];
        [v139 addObject:v5];
        [v110 addObject:v5];
        if ([v5 state] != 4)
        {
          [v108 addObject:v5];
        }

        [v125 addObject:v5];
        [v123 addObject:v5];
        [v124 addObject:v5];
        [v137 addObject:v5];
        goto LABEL_69;
      }

      v9 = [v8 state];
      if (v9 != [v5 state])
      {
        [v131 addObject:v5];
      }

      v10 = [v8 letMeInRequestState];
      if (v10 != [v5 letMeInRequestState])
      {
        [v130 addObject:v5];
      }

      v11 = [v8 isVideoEnabled];
      if (v11 != [v5 isVideoEnabled])
      {
        [v136 addObject:v5];
      }

      v12 = [v8 isScreenEnabled];
      if (v12 != [v5 isScreenEnabled])
      {
        [v111 addObject:v5];
      }

      v13 = [v8 remoteMembers];
      v14 = [v5 remoteMembers];
      v15 = [v13 isEqualToSet:v14];

      if ((v15 & 1) == 0)
      {
        [v135 addObject:v5];
      }

      v16 = [v8 pendingMembers];
      v17 = [v5 pendingMembers];
      v18 = [v16 isEqualToSet:v17];

      if ((v18 & 1) == 0)
      {
        [v134 addObject:v5];
      }

      v19 = [v8 kickedMembers];
      v20 = [v5 kickedMembers];
      v21 = [v19 isEqualToSet:v20];

      if ((v21 & 1) == 0)
      {
        [v133 addObject:v5];
      }

      v22 = [v8 otherInvitedHandles];
      v23 = [v5 otherInvitedHandles];
      v24 = [v22 isEqualToSet:v23];

      if ((v24 & 1) == 0)
      {
        [v132 addObject:v5];
      }

      v25 = [v8 activeRemoteParticipants];
      v26 = [v5 activeRemoteParticipants];
      if (([v25 isEqualToSet:v26] & 1) == 0)
      {

LABEL_30:
        [v138 addObject:v5];
        goto LABEL_31;
      }

      v27 = [v8 activeLightweightParticipants];
      v28 = [v5 activeLightweightParticipants];
      v29 = [v27 isEqualToSet:v28];

      if ((v29 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_31:
      v30 = [v8 isOneToOneModeEnabled];
      if (v30 != [v5 isOneToOneModeEnabled])
      {
        [v129 addObject:v5];
      }

      v31 = [v8 avMode];
      if (v31 != [v5 avMode])
      {
        [v128 addObject:v5];
      }

      v32 = [v8 presentationContext];
      v33 = [v5 presentationContext];
      v34 = [v32 isEqual:v33];

      if ((v34 & 1) == 0)
      {
        [v127 addObject:v5];
      }

      v35 = [v8 resolvedAudioVideoMode];
      if (v35 != [v5 resolvedAudioVideoMode])
      {
        [v126 addObject:v5];
      }

      v36 = [v8 activitySessions];
      v37 = [v5 activitySessions];
      if (([v36 isEqualToSet:v37] & 1) == 0)
      {

LABEL_43:
        [v139 addObject:v5];
        goto LABEL_44;
      }

      v38 = [v8 stagedActivitySession];
      v39 = [v5 stagedActivitySession];
      v40 = TUObjectsAreEqualOrNil(v38, v39);

      if ((v40 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_44:
      v41 = [v8 isNearbySharePlay];
      if (v41 != [v5 isNearbySharePlay])
      {
        [v110 addObject:v5];
      }

      v42 = [v8 link];
      v43 = [v5 link];
      if (([v42 isEquivalentToConversationLink:v43] & 1) == 0)
      {

LABEL_50:
        [v118 addObject:v5];
        goto LABEL_51;
      }

      v44 = [v8 link];
      v45 = [v44 linkName];
      v46 = [v5 link];
      v47 = [v46 linkName];
      v48 = TUStringsAreEqualOrNil(v45, v47);

      if ((v48 & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_51:
      v49 = [v8 link];
      if (v49)
      {
        v50 = v49;
        v51 = [v5 link];
        if (v51)
        {
          v52 = v51;
          v53 = [v8 link];
          v54 = [v53 invitedMemberHandles];
          v55 = [v5 link];
          v56 = [v55 invitedMemberHandles];
          v57 = [v54 isEqualToSet:v56];

          if ((v57 & 1) == 0)
          {
            [v114 addObject:v5];
          }
        }

        else
        {
        }
      }

      v58 = [v8 UUID];
      v59 = [v5 UUID];
      v60 = [v58 isEqual:v59];

      if (v60)
      {
        [v116 removeObject:v8];
      }

      v61 = [v8 messagesGroupName];
      v62 = [v5 messagesGroupName];
      v63 = [v61 isEqualToString:v62];

      if ((v63 & 1) == 0)
      {
        [v125 addObject:v5];
      }

      v64 = [v8 messagesGroupUUID];
      v65 = [v5 messagesGroupUUID];
      v66 = TUObjectsAreEqualOrNil(v64, v65);

      if ((v66 & 1) == 0)
      {
        [v123 addObject:v5];
      }

      v67 = [v8 ignoreLMIRequests];
      if (v67 != [v5 ignoreLMIRequests])
      {
        [v124 addObject:v5];
      }

      v68 = [v8 rejectedMembers];
      v69 = [v5 rejectedMembers];

      if (v68 != v69)
      {
        [v137 addObject:v5];
      }

      v70 = [v5 handoffEligibility];
      if (v70)
      {
      }

      else
      {
        v71 = [v8 handoffEligibility];

        if (!v71)
        {
          goto LABEL_77;
        }
      }

LABEL_69:
      v72 = [v5 handoffEligibility];

      if (!v72 || v140)
      {
        if (!v8)
        {
LABEL_87:
          [v122 addObject:v5];
          [v121 addObject:v5];
          v88 = v120;
LABEL_88:
          [v88 addObject:v5];
          goto LABEL_89;
        }

        v73 = [v8 handoffEligibility];
        if (v73)
        {
          v74 = v73;
          v75 = [v5 handoffEligibility];

          if (!v75)
          {
            v76 = v5;

            v115 = v76;
          }
        }
      }

      else
      {
        v140 = v5;
        if (!v8)
        {
          goto LABEL_87;
        }
      }

LABEL_77:
      v77 = [v8 systemActivitySessions];
      v78 = [v5 systemActivitySessions];
      v79 = [v77 isEqualToSet:v78];

      if ((v79 & 1) == 0)
      {
        [v122 addObject:v5];
      }

      v80 = [v8 isCameraMixedWithScreen];
      if (v80 != [v5 isCameraMixedWithScreen])
      {
        [v121 addObject:v5];
      }

      v81 = [v8 isScreening];
      if (v81 != [v5 isScreening])
      {
        [v117 addObject:v5];
      }

      v82 = [v8 screenSharingRequests];
      v83 = [v5 screenSharingRequests];
      v84 = [v82 isEqualToSet:v83];

      if ((v84 & 1) == 0)
      {
        [v120 addObject:v5];
      }

      v85 = [v8 localParticipantCluster];
      v86 = [v5 localParticipantCluster];
      v87 = [v85 isEqual:v86];

      v88 = v119;
      if ((v87 & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_89:
    }

    v113 = [obj countByEnumeratingWithState:&v180 objects:v186 count:16];
  }

  while (v113);
LABEL_93:

  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v89 = v108;
  v90 = [v89 countByEnumeratingWithState:&v176 objects:v185 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v177;
    do
    {
      for (j = 0; j != v91; ++j)
      {
        if (*v177 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v176 + 1) + 8 * j);
        v95 = [v94 highlightIdentifiers];
        v96 = [v95 count];

        if (v96)
        {
          v97 = [*(v141 + 48) collaborationManager];
          [v97 associateCollaborationWithNewConversation:v94];
        }
      }

      v91 = [v89 countByEnumeratingWithState:&v176 objects:v185 count:16];
    }

    while (v91);
  }

  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v98 = [*(v141 + 48) delegateToQueue];
  v99 = [v98 countByEnumeratingWithState:&v172 objects:v184 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v173;
    do
    {
      for (k = 0; k != v100; ++k)
      {
        if (*v173 != v101)
        {
          objc_enumerationMutation(v98);
        }

        v103 = *(*(&v172 + 1) + 8 * k);
        v104 = [*(v141 + 48) delegateToQueue];
        v105 = [v104 objectForKey:v103];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __105__TUConversationManager_conversationsChangedFromOldConversationsByGroupUUID_newConversationsByGroupUUID___block_invoke_2;
        block[3] = &unk_1E7426BF0;
        v106 = *(v141 + 48);
        block[4] = v103;
        block[5] = v106;
        v143 = v125;
        v144 = *(v141 + 32);
        v145 = v123;
        v146 = v131;
        v147 = v130;
        v148 = v136;
        v149 = v135;
        v150 = v134;
        v151 = v133;
        v152 = v132;
        v153 = v138;
        v154 = v129;
        v155 = v128;
        v156 = v127;
        v157 = v126;
        v158 = v139;
        v159 = v118;
        v160 = v114;
        v161 = v116;
        v162 = v89;
        v163 = v124;
        v164 = v137;
        v165 = v140;
        v166 = v115;
        v167 = v122;
        v168 = v121;
        v169 = v117;
        v170 = v120;
        v171 = v119;
        dispatch_async(v105, block);
      }

      v100 = [v98 countByEnumeratingWithState:&v172 objects:v184 count:16];
    }

    while (v100);
  }

  v107 = *MEMORY[0x1E69E9840];
}

void __105__TUConversationManager_conversationsChangedFromOldConversationsByGroupUUID_newConversationsByGroupUUID___block_invoke_2(uint64_t a1)
{
  v455 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) conversationsChangedForConversationManager:*(a1 + 40)];
  }

  v3 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v4 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v427 = 0u;
    v426 = 0u;
    v425 = 0u;
    v424 = 0u;
    v5 = *(a1 + 48);
    v6 = [v5 countByEnumeratingWithState:&v424 objects:v454 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v425;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v425 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v424 + 1) + 8 * i);
          v11 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) conversationUpdatedMessagesGroupName:v10];
          }

          v12 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v13 = *(a1 + 56);
            v14 = [v10 groupUUID];
            v15 = [v13 objectForKeyedSubscript:v14];

            [*(a1 + 32) conversationManager:*(a1 + 40) conversationUpdatedMessagesGroupName:v10 fromOldConversation:v15];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v424 objects:v454 count:16];
      }

      while (v7);
    }
  }

  v16 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v423 = 0u;
    v422 = 0u;
    v421 = 0u;
    v420 = 0u;
    v17 = *(a1 + 64);
    v18 = [v17 countByEnumeratingWithState:&v420 objects:v453 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v421;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v421 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) conversationUpdatedMessagesGroupUUID:*(*(&v420 + 1) + 8 * j)];
        }

        v19 = [v17 countByEnumeratingWithState:&v420 objects:v453 count:16];
      }

      while (v19);
    }
  }

  v22 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v23 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v419 = 0u;
    v418 = 0u;
    v417 = 0u;
    v416 = 0u;
    v24 = *(a1 + 72);
    v25 = [v24 countByEnumeratingWithState:&v416 objects:v452 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v417;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v417 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v416 + 1) + 8 * k);
          v30 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) stateChangedForConversation:v29];
          }

          v31 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v32 = *(a1 + 56);
            v33 = [v29 groupUUID];
            v34 = [v32 objectForKeyedSubscript:v33];

            [*(a1 + 32) conversationManager:*(a1 + 40) stateChangedForConversation:v29 fromOldConversation:v34];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v416 objects:v452 count:16];
      }

      while (v26);
    }
  }

  v35 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v36 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v415 = 0u;
    v414 = 0u;
    v413 = 0u;
    v412 = 0u;
    v37 = *(a1 + 72);
    v38 = [v37 countByEnumeratingWithState:&v412 objects:v451 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v413;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v413 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v412 + 1) + 8 * m);
          v43 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) nearbySharePlayToggledForConversation:v42];
          }

          v44 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v45 = *(a1 + 56);
            v46 = [v42 groupUUID];
            v47 = [v45 objectForKeyedSubscript:v46];

            [*(a1 + 32) conversationManager:*(a1 + 40) nearbySharePlayToggledForConversation:v42 fromOldConversation:v47];
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v412 objects:v451 count:16];
      }

      while (v39);
    }
  }

  v48 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v49 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v411 = 0u;
    v410 = 0u;
    v409 = 0u;
    v408 = 0u;
    v50 = *(a1 + 80);
    v51 = [v50 countByEnumeratingWithState:&v408 objects:v450 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v409;
      do
      {
        for (n = 0; n != v52; ++n)
        {
          if (*v409 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v408 + 1) + 8 * n);
          v56 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) letMeInRequestStateChangedForConversation:v55];
          }

          v57 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v58 = *(a1 + 56);
            v59 = [v55 groupUUID];
            v60 = [v58 objectForKeyedSubscript:v59];

            [*(a1 + 32) conversationManager:*(a1 + 40) letMeInRequestStateChangedForConversation:v55 fromOldConversation:v60];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v408 objects:v450 count:16];
      }

      while (v52);
    }
  }

  v61 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v62 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v407 = 0u;
    v406 = 0u;
    v405 = 0u;
    v404 = 0u;
    v63 = *(a1 + 88);
    v64 = [v63 countByEnumeratingWithState:&v404 objects:v449 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v405;
      do
      {
        for (ii = 0; ii != v65; ++ii)
        {
          if (*v405 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = *(*(&v404 + 1) + 8 * ii);
          v69 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) localVideoToggledForConversation:v68];
          }

          v70 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v71 = *(a1 + 56);
            v72 = [v68 groupUUID];
            v73 = [v71 objectForKeyedSubscript:v72];

            [*(a1 + 32) conversationManager:*(a1 + 40) localVideoToggledForConversation:v68 fromOldConversation:v73];
          }
        }

        v65 = [v63 countByEnumeratingWithState:&v404 objects:v449 count:16];
      }

      while (v65);
    }
  }

  v74 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v75 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v403 = 0u;
    v402 = 0u;
    v401 = 0u;
    v400 = 0u;
    v76 = *(a1 + 96);
    v77 = [v76 countByEnumeratingWithState:&v400 objects:v448 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v401;
      do
      {
        for (jj = 0; jj != v78; ++jj)
        {
          if (*v401 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v81 = *(*(&v400 + 1) + 8 * jj);
          v82 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) remoteMembersChangedForConversation:v81];
          }

          v83 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v84 = *(a1 + 56);
            v85 = [v81 groupUUID];
            v86 = [v84 objectForKeyedSubscript:v85];

            [*(a1 + 32) conversationManager:*(a1 + 40) remoteMembersChangedForConversation:v81 fromOldConversation:v86];
          }
        }

        v78 = [v76 countByEnumeratingWithState:&v400 objects:v448 count:16];
      }

      while (v78);
    }
  }

  v87 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v88 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v399 = 0u;
    v398 = 0u;
    v397 = 0u;
    v396 = 0u;
    v89 = *(a1 + 104);
    v90 = [v89 countByEnumeratingWithState:&v396 objects:v447 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v397;
      do
      {
        for (kk = 0; kk != v91; ++kk)
        {
          if (*v397 != v92)
          {
            objc_enumerationMutation(v89);
          }

          v94 = *(*(&v396 + 1) + 8 * kk);
          v95 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) pendingMembersChangedForConversation:v94];
          }

          v96 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v97 = *(a1 + 56);
            v98 = [v94 groupUUID];
            v99 = [v97 objectForKeyedSubscript:v98];

            [*(a1 + 32) conversationManager:*(a1 + 40) pendingMembersChangedForConversation:v94 fromOldConversation:v99];
          }
        }

        v91 = [v89 countByEnumeratingWithState:&v396 objects:v447 count:16];
      }

      while (v91);
    }
  }

  v100 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v101 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v395 = 0u;
    v394 = 0u;
    v393 = 0u;
    v392 = 0u;
    v102 = *(a1 + 112);
    v103 = [v102 countByEnumeratingWithState:&v392 objects:v446 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v393;
      do
      {
        for (mm = 0; mm != v104; ++mm)
        {
          if (*v393 != v105)
          {
            objc_enumerationMutation(v102);
          }

          v107 = *(*(&v392 + 1) + 8 * mm);
          v108 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) kickedMembersChangedForConversation:v107];
          }

          v109 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v110 = *(a1 + 56);
            v111 = [v107 groupUUID];
            v112 = [v110 objectForKeyedSubscript:v111];

            [*(a1 + 32) conversationManager:*(a1 + 40) kickedMembersChangedForConversation:v107 fromOldConversation:v112];
          }
        }

        v104 = [v102 countByEnumeratingWithState:&v392 objects:v446 count:16];
      }

      while (v104);
    }
  }

  v113 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v114 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v391 = 0u;
    v390 = 0u;
    v389 = 0u;
    v388 = 0u;
    v115 = *(a1 + 120);
    v116 = [v115 countByEnumeratingWithState:&v388 objects:v445 count:16];
    if (v116)
    {
      v117 = v116;
      v118 = *v389;
      do
      {
        for (nn = 0; nn != v117; ++nn)
        {
          if (*v389 != v118)
          {
            objc_enumerationMutation(v115);
          }

          v120 = *(*(&v388 + 1) + 8 * nn);
          v121 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) otherInvitedHandlesChangedForConversation:v120];
          }

          v122 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v123 = *(a1 + 56);
            v124 = [v120 groupUUID];
            v125 = [v123 objectForKeyedSubscript:v124];

            [*(a1 + 32) conversationManager:*(a1 + 40) otherInvitedHandlesChangedForConversation:v120 fromOldConversation:v125];
          }
        }

        v117 = [v115 countByEnumeratingWithState:&v388 objects:v445 count:16];
      }

      while (v117);
    }
  }

  v126 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v127 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v387 = 0u;
    v386 = 0u;
    v385 = 0u;
    v384 = 0u;
    v128 = *(a1 + 128);
    v129 = [v128 countByEnumeratingWithState:&v384 objects:v444 count:16];
    if (v129)
    {
      v130 = v129;
      v131 = *v385;
      do
      {
        for (i1 = 0; i1 != v130; ++i1)
        {
          if (*v385 != v131)
          {
            objc_enumerationMutation(v128);
          }

          v133 = *(*(&v384 + 1) + 8 * i1);
          v134 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) activeRemoteParticipantsChangedForConversation:v133];
          }

          v135 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v136 = *(a1 + 56);
            v137 = [v133 groupUUID];
            v138 = [v136 objectForKeyedSubscript:v137];

            [*(a1 + 32) conversationManager:*(a1 + 40) activeRemoteParticipantsChangedForConversation:v133 fromOldConversation:v138];
          }
        }

        v130 = [v128 countByEnumeratingWithState:&v384 objects:v444 count:16];
      }

      while (v130);
    }
  }

  v139 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v140 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v382 = 0u;
    v383 = 0u;
    v380 = 0u;
    v381 = 0u;
    v141 = *(a1 + 136);
    v142 = [v141 countByEnumeratingWithState:&v380 objects:v443 count:16];
    if (v142)
    {
      v143 = v142;
      v144 = *v381;
      do
      {
        for (i2 = 0; i2 != v143; ++i2)
        {
          if (*v381 != v144)
          {
            objc_enumerationMutation(v141);
          }

          v146 = *(*(&v380 + 1) + 8 * i2);
          v147 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) oneToOneModeChangedForConversation:v146];
          }

          v148 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v149 = *(a1 + 56);
            v150 = [v146 groupUUID];
            v151 = [v149 objectForKeyedSubscript:v150];

            [*(a1 + 32) conversationManager:*(a1 + 40) oneToOneModeChangedForConversation:v146 fromOldConversation:v151];
          }
        }

        v143 = [v141 countByEnumeratingWithState:&v380 objects:v443 count:16];
      }

      while (v143);
    }
  }

  v152 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v153 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v154 = *(a1 + 144);
    v155 = [v154 countByEnumeratingWithState:&v376 objects:v442 count:16];
    if (v155)
    {
      v156 = v155;
      v157 = *v377;
      do
      {
        for (i3 = 0; i3 != v156; ++i3)
        {
          if (*v377 != v157)
          {
            objc_enumerationMutation(v154);
          }

          v159 = *(*(&v376 + 1) + 8 * i3);
          v160 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) avModeChangedForConversation:v159];
          }

          v161 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v162 = *(a1 + 56);
            v163 = [v159 groupUUID];
            v164 = [v162 objectForKeyedSubscript:v163];

            [*(a1 + 32) conversationManager:*(a1 + 40) avModeChangedForConversation:v159 fromOldConversation:v164];
          }
        }

        v156 = [v154 countByEnumeratingWithState:&v376 objects:v442 count:16];
      }

      while (v156);
    }
  }

  v165 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v166 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v374 = 0u;
    v375 = 0u;
    v372 = 0u;
    v373 = 0u;
    v167 = *(a1 + 152);
    v168 = [v167 countByEnumeratingWithState:&v372 objects:v441 count:16];
    if (v168)
    {
      v169 = v168;
      v170 = *v373;
      do
      {
        for (i4 = 0; i4 != v169; ++i4)
        {
          if (*v373 != v170)
          {
            objc_enumerationMutation(v167);
          }

          v172 = *(*(&v372 + 1) + 8 * i4);
          v173 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) presentationContextChangedForConversation:v172];
          }

          v174 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v175 = *(a1 + 56);
            v176 = [v172 groupUUID];
            v177 = [v175 objectForKeyedSubscript:v176];

            [*(a1 + 32) conversationManager:*(a1 + 40) presentationContextChangedForConversation:v172 fromOldConversation:v177];
          }
        }

        v169 = [v167 countByEnumeratingWithState:&v372 objects:v441 count:16];
      }

      while (v169);
    }
  }

  v178 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v179 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    v180 = *(a1 + 160);
    v181 = [v180 countByEnumeratingWithState:&v368 objects:v440 count:16];
    if (v181)
    {
      v182 = v181;
      v183 = *v369;
      do
      {
        for (i5 = 0; i5 != v182; ++i5)
        {
          if (*v369 != v183)
          {
            objc_enumerationMutation(v180);
          }

          v185 = *(*(&v368 + 1) + 8 * i5);
          v186 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) resolvedAudioVideoModeChangedForConversation:v185];
          }

          v187 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v188 = *(a1 + 56);
            v189 = [v185 groupUUID];
            v190 = [v188 objectForKeyedSubscript:v189];

            [*(a1 + 32) conversationManager:*(a1 + 40) resolvedAudioVideoModeChangedForConversation:v185 fromOldConversation:v190];
          }
        }

        v182 = [v180 countByEnumeratingWithState:&v368 objects:v440 count:16];
      }

      while (v182);
    }
  }

  v191 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v192 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v366 = 0u;
    v367 = 0u;
    v364 = 0u;
    v365 = 0u;
    v193 = *(a1 + 168);
    v194 = [v193 countByEnumeratingWithState:&v364 objects:v439 count:16];
    if (v194)
    {
      v195 = v194;
      v196 = *v365;
      do
      {
        for (i6 = 0; i6 != v195; ++i6)
        {
          if (*v365 != v196)
          {
            objc_enumerationMutation(v193);
          }

          v198 = *(*(&v364 + 1) + 8 * i6);
          v199 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) activitySessionsChangedForConversation:v198];
          }

          v200 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v201 = *(a1 + 56);
            v202 = [v198 groupUUID];
            v203 = [v201 objectForKeyedSubscript:v202];

            [*(a1 + 32) conversationManager:*(a1 + 40) activitySessionsChangedForConversation:v198 fromOldConversation:v203];
          }
        }

        v195 = [v193 countByEnumeratingWithState:&v364 objects:v439 count:16];
      }

      while (v195);
    }
  }

  v204 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v205 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v362 = 0u;
    v363 = 0u;
    v360 = 0u;
    v361 = 0u;
    v206 = *(a1 + 176);
    v207 = [v206 countByEnumeratingWithState:&v360 objects:v438 count:16];
    if (v207)
    {
      v208 = v207;
      v209 = *v361;
      do
      {
        for (i7 = 0; i7 != v208; ++i7)
        {
          if (*v361 != v209)
          {
            objc_enumerationMutation(v206);
          }

          v211 = *(*(&v360 + 1) + 8 * i7);
          v212 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) linkChangedForConversation:v211];
          }

          v213 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v214 = *(a1 + 56);
            v215 = [v211 groupUUID];
            v216 = [v214 objectForKeyedSubscript:v215];

            [*(a1 + 32) conversationManager:*(a1 + 40) linkChangedForConversation:v211 fromOldConversation:v216];
          }
        }

        v208 = [v206 countByEnumeratingWithState:&v360 objects:v438 count:16];
      }

      while (v208);
    }
  }

  v217 = *(a1 + 32);
  v218 = objc_opt_respondsToSelector();
  v219 = *(a1 + 32);
  v220 = objc_opt_respondsToSelector();
  v221 = v220;
  if (v218 & 1) != 0 || (v220)
  {
    v358 = 0u;
    v359 = 0u;
    v356 = 0u;
    v357 = 0u;
    v222 = *(a1 + 184);
    v223 = [v222 countByEnumeratingWithState:&v356 objects:v437 count:16];
    if (v223)
    {
      v224 = v223;
      v225 = *v357;
      do
      {
        for (i8 = 0; i8 != v224; ++i8)
        {
          if (*v357 != v225)
          {
            objc_enumerationMutation(v222);
          }

          v227 = *(*(&v356 + 1) + 8 * i8);
          if (v218)
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) linkInvitedMemberHandlesChangedForConversation:*(*(&v356 + 1) + 8 * i8)];
          }

          if (v221)
          {
            v228 = *(a1 + 56);
            v229 = [v227 groupUUID];
            v230 = [v228 objectForKeyedSubscript:v229];

            [*(a1 + 32) conversationManager:*(a1 + 40) linkInvitedMemberHandlesChangedForConversation:v227 fromOldConversation:v230];
          }
        }

        v224 = [v222 countByEnumeratingWithState:&v356 objects:v437 count:16];
      }

      while (v224);
    }
  }

  v231 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v354 = 0u;
    v355 = 0u;
    v352 = 0u;
    v353 = 0u;
    v232 = *(a1 + 192);
    v233 = [v232 countByEnumeratingWithState:&v352 objects:v436 count:16];
    if (v233)
    {
      v234 = v233;
      v235 = *v353;
      do
      {
        for (i9 = 0; i9 != v234; ++i9)
        {
          if (*v353 != v235)
          {
            objc_enumerationMutation(v232);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) removedActiveConversation:*(*(&v352 + 1) + 8 * i9)];
        }

        v234 = [v232 countByEnumeratingWithState:&v352 objects:v436 count:16];
      }

      while (v234);
    }
  }

  v237 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v238 = *(a1 + 200);
    v239 = [v238 countByEnumeratingWithState:&v348 objects:v435 count:16];
    if (v239)
    {
      v240 = v239;
      v241 = *v349;
      do
      {
        for (i10 = 0; i10 != v240; ++i10)
        {
          if (*v349 != v241)
          {
            objc_enumerationMutation(v238);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) addedActiveConversation:*(*(&v348 + 1) + 8 * i10)];
        }

        v240 = [v238 countByEnumeratingWithState:&v348 objects:v435 count:16];
      }

      while (v240);
    }
  }

  v243 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v346 = 0u;
    v347 = 0u;
    v344 = 0u;
    v345 = 0u;
    v244 = *(a1 + 208);
    v245 = [v244 countByEnumeratingWithState:&v344 objects:v434 count:16];
    if (v245)
    {
      v246 = v245;
      v247 = *v345;
      do
      {
        for (i11 = 0; i11 != v246; ++i11)
        {
          if (*v345 != v247)
          {
            objc_enumerationMutation(v244);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) ignoreLMIRequestsChangedForConversation:*(*(&v344 + 1) + 8 * i11)];
        }

        v246 = [v244 countByEnumeratingWithState:&v344 objects:v434 count:16];
      }

      while (v246);
    }
  }

  v249 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v250 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v342 = 0u;
    v343 = 0u;
    v340 = 0u;
    v341 = 0u;
    v251 = *(a1 + 216);
    v252 = [v251 countByEnumeratingWithState:&v340 objects:v433 count:16];
    if (v252)
    {
      v253 = v252;
      v254 = *v341;
      do
      {
        for (i12 = 0; i12 != v253; ++i12)
        {
          if (*v341 != v254)
          {
            objc_enumerationMutation(v251);
          }

          v256 = *(*(&v340 + 1) + 8 * i12);
          v257 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) rejectedMembersChangedForConversation:v256];
          }

          v258 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v259 = *(a1 + 56);
            v260 = [v256 groupUUID];
            v261 = [v259 objectForKeyedSubscript:v260];

            [*(a1 + 32) conversationManager:*(a1 + 40) rejectedMembersChangedForConversation:v256 fromOldConversation:v261];
          }
        }

        v253 = [v251 countByEnumeratingWithState:&v340 objects:v433 count:16];
      }

      while (v253);
    }
  }

  if (*(a1 + 224) && *(a1 + 232) && (v262 = *(a1 + 32), (objc_opt_respondsToSelector() & 1) != 0))
  {
    [*(a1 + 32) conversationManager:*(a1 + 40) handoffEligibilityChangedToConversation:*(a1 + 224) fromPreviousConversation:*(a1 + 232)];
  }

  else
  {
    v263 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      if (*(a1 + 224))
      {
        [*(a1 + 32) conversationManager:*(a1 + 40) handoffEligibilityChangedForConversation:?];
      }

      if (*(a1 + 232))
      {
        [*(a1 + 32) conversationManager:*(a1 + 40) handoffEligibilityChangedForConversation:?];
      }
    }
  }

  v264 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v265 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v338 = 0u;
    v339 = 0u;
    v336 = 0u;
    v337 = 0u;
    v266 = *(a1 + 240);
    v267 = [v266 countByEnumeratingWithState:&v336 objects:v432 count:16];
    if (v267)
    {
      v268 = v267;
      v269 = *v337;
      do
      {
        for (i13 = 0; i13 != v268; ++i13)
        {
          if (*v337 != v269)
          {
            objc_enumerationMutation(v266);
          }

          v271 = *(*(&v336 + 1) + 8 * i13);
          v272 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) systemActivitySessionsChangedForConversation:v271];
          }

          v273 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v274 = *(a1 + 56);
            v275 = [v271 groupUUID];
            v276 = [v274 objectForKeyedSubscript:v275];

            [*(a1 + 32) conversationManager:*(a1 + 40) systemActivitySessionsChangedForConversation:v271 fromOldConversation:v276];
          }
        }

        v268 = [v266 countByEnumeratingWithState:&v336 objects:v432 count:16];
      }

      while (v268);
    }
  }

  v277 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v278 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v334 = 0u;
    v335 = 0u;
    v332 = 0u;
    v333 = 0u;
    v279 = *(a1 + 248);
    v280 = [v279 countByEnumeratingWithState:&v332 objects:v431 count:16];
    if (v280)
    {
      v281 = v280;
      v282 = *v333;
      do
      {
        for (i14 = 0; i14 != v281; ++i14)
        {
          if (*v333 != v282)
          {
            objc_enumerationMutation(v279);
          }

          v284 = *(*(&v332 + 1) + 8 * i14);
          v285 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) cameraMixedWithScreenDidChangeForConversation:v284];
          }

          v286 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v287 = *(a1 + 56);
            v288 = [v284 groupUUID];
            v289 = [v287 objectForKeyedSubscript:v288];

            [*(a1 + 32) conversationManager:*(a1 + 40) cameraMixedWithScreenDidChangeForConversation:v284 fromOldConversation:v289];
          }
        }

        v281 = [v279 countByEnumeratingWithState:&v332 objects:v431 count:16];
      }

      while (v281);
    }
  }

  v290 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v330 = 0u;
    v331 = 0u;
    v328 = 0u;
    v329 = 0u;
    v291 = *(a1 + 256);
    v292 = [v291 countByEnumeratingWithState:&v328 objects:v430 count:16];
    if (v292)
    {
      v293 = v292;
      v294 = *v329;
      do
      {
        for (i15 = 0; i15 != v293; ++i15)
        {
          if (*v329 != v294)
          {
            objc_enumerationMutation(v291);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) screeningChangedForConversation:*(*(&v328 + 1) + 8 * i15)];
        }

        v293 = [v291 countByEnumeratingWithState:&v328 objects:v430 count:16];
      }

      while (v293);
    }
  }

  v296 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v326 = 0u;
    v327 = 0u;
    v324 = 0u;
    v325 = 0u;
    v297 = *(a1 + 264);
    v298 = [v297 countByEnumeratingWithState:&v324 objects:v429 count:16];
    if (v298)
    {
      v299 = v298;
      v300 = *v325;
      do
      {
        for (i16 = 0; i16 != v299; ++i16)
        {
          if (*v325 != v300)
          {
            objc_enumerationMutation(v297);
          }

          v302 = *(*(&v324 + 1) + 8 * i16);
          v303 = *(a1 + 56);
          v304 = [v302 groupUUID];
          v305 = [v303 objectForKeyedSubscript:v304];

          [*(a1 + 32) conversationManager:*(a1 + 40) screenSharingRequestsChangedForConversation:v302 fromOldConversation:v305];
        }

        v299 = [v297 countByEnumeratingWithState:&v324 objects:v429 count:16];
      }

      while (v299);
    }
  }

  v306 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 || (v307 = *(a1 + 32), (objc_opt_respondsToSelector()))
  {
    v322 = 0u;
    v323 = 0u;
    v320 = 0u;
    v321 = 0u;
    v308 = *(a1 + 272);
    v309 = [v308 countByEnumeratingWithState:&v320 objects:v428 count:16];
    if (v309)
    {
      v310 = v309;
      v311 = *v321;
      do
      {
        for (i17 = 0; i17 != v310; ++i17)
        {
          if (*v321 != v311)
          {
            objc_enumerationMutation(v308);
          }

          v313 = *(*(&v320 + 1) + 8 * i17);
          v314 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 32) conversationManager:*(a1 + 40) localParticipantClusterDidChangeForConversation:{v313, v320}];
          }

          v315 = *(a1 + 32);
          if (objc_opt_respondsToSelector())
          {
            v316 = *(a1 + 56);
            v317 = [v313 groupUUID];
            v318 = [v316 objectForKeyedSubscript:v317];

            [*(a1 + 32) conversationManager:*(a1 + 40) localParticipantClusterDidChangeForConversation:v313 fromOldConversation:v318];
          }
        }

        v310 = [v308 countByEnumeratingWithState:&v320 objects:v428 count:16];
      }

      while (v310);
    }
  }

  v319 = *MEMORY[0x1E69E9840];
}

- (void)serverDisconnectedForDataSource:(id)source oldConversationsByGroupUUID:(id)d
{
  dCopy = d;
  queue = [(TUConversationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__TUConversationManager_serverDisconnectedForDataSource_oldConversationsByGroupUUID___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

void __85__TUConversationManager_serverDisconnectedForDataSource_oldConversationsByGroupUUID___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Removing conversationsNotBackedByGroupSessions since dataSource got disconnected", buf, 2u);
  }

  v3 = [*(a1 + 32) conversationsNotBackedByGroupSessions];
  [v3 removeAllObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [*(a1 + 32) delegateToQueue];
        v10 = [v9 objectForKey:v8];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __85__TUConversationManager_serverDisconnectedForDataSource_oldConversationsByGroupUUID___block_invoke_267;
        block[3] = &unk_1E7424FD8;
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        block[4] = v8;
        block[5] = v11;
        v16 = v12;
        dispatch_async(v10, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __85__TUConversationManager_serverDisconnectedForDataSource_oldConversationsByGroupUUID___block_invoke_267(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) serverDisconnectedForConversationManager:*(a1 + 40)];
  }

  v3 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [*(a1 + 48) allValues];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(a1 + 32) conversationManager:*(a1 + 40) removedActiveConversation:*(*(&v10 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)conversation:(id)conversation participant:(id)participant addedNotice:(id)notice
{
  conversationCopy = conversation;
  participantCopy = participant;
  noticeCopy = notice;
  queue = [(TUConversationManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__TUConversationManager_conversation_participant_addedNotice___block_invoke;
  v15[3] = &unk_1E7425188;
  v15[4] = self;
  v16 = conversationCopy;
  v17 = participantCopy;
  v18 = noticeCopy;
  v12 = noticeCopy;
  v13 = participantCopy;
  v14 = conversationCopy;
  dispatch_async(queue, v15);
}

void __62__TUConversationManager_conversation_participant_addedNotice___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __62__TUConversationManager_conversation_participant_addedNotice___block_invoke_2;
        block[3] = &unk_1E7426C18;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        v15 = *(a1 + 48);
        v16 = *(a1 + 56);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __62__TUConversationManager_conversation_participant_addedNotice___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];

    return [v4 conversationManager:v5 conversation:v6 participant:v7 addedNotice:v8];
  }

  return result;
}

- (void)activeParticipant:(id)participant removedHighlightFromConversation:(id)conversation highlightIdentifier:(id)identifier
{
  identifierCopy = identifier;
  conversationCopy = conversation;
  participantCopy = participant;
  collaborationManager = [(TUConversationManager *)self collaborationManager];
  [collaborationManager participant:participantCopy removedHighlightFromConversation:conversationCopy highlightIdentifier:identifierCopy];
}

- (void)conversation:(id)conversation participant:(id)participant addedCollaborationNotice:(id)notice
{
  conversationCopy = conversation;
  participantCopy = participant;
  noticeCopy = notice;
  queue = [(TUConversationManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__TUConversationManager_conversation_participant_addedCollaborationNotice___block_invoke;
  v15[3] = &unk_1E7425188;
  v15[4] = self;
  v16 = conversationCopy;
  v17 = participantCopy;
  v18 = noticeCopy;
  v12 = noticeCopy;
  v13 = participantCopy;
  v14 = conversationCopy;
  dispatch_async(queue, v15);
}

void __75__TUConversationManager_conversation_participant_addedCollaborationNotice___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __75__TUConversationManager_conversation_participant_addedCollaborationNotice___block_invoke_2;
        block[3] = &unk_1E7426C18;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        v15 = *(a1 + 48);
        v16 = *(a1 + 56);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __75__TUConversationManager_conversation_participant_addedCollaborationNotice___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];

    return [v4 conversationManager:v5 conversation:v6 participant:v7 addedCollaborationNotice:v8];
  }

  return result;
}

- (void)conversation:(id)conversation collaborationStateChanged:(int64_t)changed highlightIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    changedCopy = changed;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "TUConversationManager received collaborationStateChanged : %lu", &v11, 0xCu);
  }

  collaborationManager = [(TUConversationManager *)self collaborationManager];
  [collaborationManager setCollaborationState:changed forCollaborationIdentifier:identifierCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addedCollaborationDictionary:(id)dictionary forConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dictionaryCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Received collaboration dictionary: %@", &v11, 0xCu);
  }

  collaborationManager = [(TUConversationManager *)self collaborationManager];
  collaborationProvider = [collaborationManager collaborationProvider];
  v9 = [collaborationProvider addTemporaryCollaboration:dictionaryCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)conversation:(id)conversation addedMembersLocally:(id)locally
{
  conversationCopy = conversation;
  locallyCopy = locally;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__TUConversationManager_conversation_addedMembersLocally___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = locallyCopy;
  v9 = locallyCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __58__TUConversationManager_conversation_addedMembersLocally___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__TUConversationManager_conversation_addedMembersLocally___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        v15 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __58__TUConversationManager_conversation_addedMembersLocally___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 conversationManager:v5 conversation:v6 addedMembersLocally:v7];
  }

  return result;
}

- (void)conversation:(id)conversation buzzedMember:(id)member
{
  conversationCopy = conversation;
  memberCopy = member;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__TUConversationManager_conversation_buzzedMember___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = memberCopy;
  v9 = memberCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __51__TUConversationManager_conversation_buzzedMember___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __51__TUConversationManager_conversation_buzzedMember___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        v15 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __51__TUConversationManager_conversation_buzzedMember___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 conversationManager:v5 conversation:v6 buzzedMember:v7];
  }

  return result;
}

- (void)conversationsChangedForDataSource:(id)source updatedIncomingPendingConversationsByGroupUUID:(id)d
{
  dCopy = d;
  queue = [(TUConversationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__TUConversationManager_conversationsChangedForDataSource_updatedIncomingPendingConversationsByGroupUUID___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

void __106__TUConversationManager_conversationsChangedForDataSource_updatedIncomingPendingConversationsByGroupUUID___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __106__TUConversationManager_conversationsChangedForDataSource_updatedIncomingPendingConversationsByGroupUUID___block_invoke_2;
        block[3] = &unk_1E7424FD8;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __106__TUConversationManager_conversationsChangedForDataSource_updatedIncomingPendingConversationsByGroupUUID___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) allValues];
    [v3 conversationManager:v4 updatedIncomingPendingConversations:v5];
  }
}

- (void)conversationUpdatedMessagesGroupPhoto:(id)photo
{
  photoCopy = photo;
  queue = [(TUConversationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__TUConversationManager_conversationUpdatedMessagesGroupPhoto___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = photoCopy;
  v6 = photoCopy;
  dispatch_async(queue, v7);
}

void __63__TUConversationManager_conversationUpdatedMessagesGroupPhoto___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __63__TUConversationManager_conversationUpdatedMessagesGroupPhoto___block_invoke_2;
        block[3] = &unk_1E7424FD8;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __63__TUConversationManager_conversationUpdatedMessagesGroupPhoto___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v5 messagesGroupPhotoData];
    [v3 conversationManager:v4 conversation:v5 updatedMessagesGroupPhoto:v6];
  }
}

- (void)conversation:(id)conversation didChangeStateForActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TUConversationManager_conversation_didChangeStateForActivitySession___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = sessionCopy;
  v9 = sessionCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __71__TUConversationManager_conversation_didChangeStateForActivitySession___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__TUConversationManager_conversation_didChangeStateForActivitySession___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        v15 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __71__TUConversationManager_conversation_didChangeStateForActivitySession___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 conversationManager:v5 conversation:v6 didChangeStateForActivitySession:v7];
  }

  return result;
}

- (void)didChangeConversationAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  queue = [(TUConversationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__TUConversationManager_didChangeConversationAdvertisement___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = advertisementCopy;
  selfCopy = self;
  v6 = advertisementCopy;
  dispatch_async(queue, v7);
}

void __60__TUConversationManager_didChangeConversationAdvertisement___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager didChangeConversationAdvertisement %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 40) delegateToQueue];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [*(a1 + 40) delegateToQueue];
        v10 = [v9 objectForKey:v8];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__TUConversationManager_didChangeConversationAdvertisement___block_invoke_284;
        block[3] = &unk_1E7424FD8;
        block[4] = v8;
        v14 = *(a1 + 32);
        v11 = v14.i64[0];
        v16 = vextq_s8(v14, v14, 8uLL);
        dispatch_async(v10, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __60__TUConversationManager_didChangeConversationAdvertisement___block_invoke_284(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 conversationManager:v5 didChangeConversationAdvertisement:v6];
  }

  return result;
}

- (void)conversation:(id)conversation didChangeSceneAssociationForActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__TUConversationManager_conversation_didChangeSceneAssociationForActivitySession___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = sessionCopy;
  v9 = sessionCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __82__TUConversationManager_conversation_didChangeSceneAssociationForActivitySession___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __82__TUConversationManager_conversation_didChangeSceneAssociationForActivitySession___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        v15 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __82__TUConversationManager_conversation_didChangeSceneAssociationForActivitySession___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 conversationManager:v5 conversation:v6 didChangeSceneAssociationForActivitySession:v7];
  }

  return result;
}

- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event
{
  conversationCopy = conversation;
  eventCopy = event;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__TUConversationManager_conversation_receivedActivitySessionEvent___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = eventCopy;
  v9 = eventCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __67__TUConversationManager_conversation_receivedActivitySessionEvent___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __67__TUConversationManager_conversation_receivedActivitySessionEvent___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        v15 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __67__TUConversationManager_conversation_receivedActivitySessionEvent___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 conversationManager:v5 conversation:v6 receivedActivitySessionEvent:v7];
  }

  return result;
}

- (void)conversationManagerDataSource:(id)source didChangeActivatedConversationLinks:(id)links
{
  linksCopy = links;
  queue = [(TUConversationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__TUConversationManager_conversationManagerDataSource_didChangeActivatedConversationLinks___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = linksCopy;
  v7 = linksCopy;
  dispatch_async(queue, v8);
}

void __91__TUConversationManager_conversationManagerDataSource_didChangeActivatedConversationLinks___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegateToQueue];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v2 objectForKey:v7];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __91__TUConversationManager_conversationManagerDataSource_didChangeActivatedConversationLinks___block_invoke_2;
        block[3] = &unk_1E7424FD8;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v7;
        block[5] = v9;
        v13 = v10;
        dispatch_async(v8, block);
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __91__TUConversationManager_conversationManagerDataSource_didChangeActivatedConversationLinks___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 conversationManager:v5 didChangeActivatedLinks:v6];
  }

  return result;
}

- (void)conversationManagerDataSource:(id)source messagesGroupDetailsForMessagesGroupId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__TUConversationManager_conversationManagerDataSource_messagesGroupDetailsForMessagesGroupId_completionHandler___block_invoke;
  block[3] = &unk_1E7426458;
  block[4] = self;
  v13 = idCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = idCopy;
  dispatch_async(queue, block);
}

void __112__TUConversationManager_conversationManagerDataSource_messagesGroupDetailsForMessagesGroupId_completionHandler___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) messagesGroupProvider];
  v3 = v2;
  if (v2)
  {
    [v2 getMessagesGroupDetailsForGroupId:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __112__TUConversationManager_conversationManagerDataSource_messagesGroupDetailsForMessagesGroupId_completionHandler___block_invoke_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"No messages group details provider available";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v11 errorWithDomain:@"TUConversationManagerMessagesErrorDomain" code:1 userInfo:v12];

    (*(*(a1 + 48) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)fetchUpcomingNoticeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource fetchUpcomingNoticeWithCompletionHandler:handlerCopy];
}

- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = lCopy;
    v13 = 2112;
    v14 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "activateConversationNoticeWithActionURL: %@ bundleID %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource activateConversationNoticeWithActionURL:lCopy bundleIdentifier:identifierCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeConversationNoticeWithUUID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "UUID: %@", &v8, 0xCu);
  }

  dataSource = [(TUConversationManager *)self dataSource];
  [dataSource removeConversationNoticeWithUUID:dCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)conversationManagerDataSource:(id)source conversation:(id)conversation appLaunchState:(unint64_t)state forActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  queue = [(TUConversationManager *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__TUConversationManager_conversationManagerDataSource_conversation_appLaunchState_forActivitySession___block_invoke;
  v14[3] = &unk_1E7424D50;
  v15 = sessionCopy;
  v16 = conversationCopy;
  selfCopy = self;
  stateCopy = state;
  v12 = conversationCopy;
  v13 = sessionCopy;
  dispatch_async(queue, v14);
}

void __102__TUConversationManager_conversationManagerDataSource_conversation_appLaunchState_forActivitySession___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412802;
    v27 = v3;
    v28 = 2112;
    v29 = v4;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager app launch state %@ session %@ conversation %@", buf, 0x20u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [*(a1 + 48) delegateToQueue];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [*(a1 + 48) delegateToQueue];
        v12 = [v11 objectForKey:v10];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __102__TUConversationManager_conversationManagerDataSource_conversation_appLaunchState_forActivitySession___block_invoke_297;
        block[3] = &unk_1E7426C40;
        block[4] = v10;
        v16 = *(a1 + 40);
        v13 = v16.i64[0];
        v18 = vextq_s8(v16, v16, 8uLL);
        v20 = *(a1 + 56);
        v19 = *(a1 + 32);
        dispatch_async(v12, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __102__TUConversationManager_conversationManagerDataSource_conversation_appLaunchState_forActivitySession___block_invoke_297(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v7 = a1[7];
    v6 = a1[8];
    v8 = a1[6];

    return [v4 conversationManager:v5 conversation:v8 launchStateChanged:v6 forActivitySession:v7];
  }

  return result;
}

- (void)receivedTrackedPendingMember:(id)member forConversationLink:(id)link
{
  memberCopy = member;
  linkCopy = link;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TUConversationManager_receivedTrackedPendingMember_forConversationLink___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = memberCopy;
  v13 = linkCopy;
  selfCopy = self;
  v9 = linkCopy;
  v10 = memberCopy;
  dispatch_async(queue, block);
}

void __74__TUConversationManager_receivedTrackedPendingMember_forConversationLink___block_invoke(id *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v24 = v3;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager receivedTrackedPendingMember %@ forConversationLink %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [a1[6] delegateToQueue];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [a1[6] delegateToQueue];
        v11 = [v10 objectForKey:v9];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __74__TUConversationManager_receivedTrackedPendingMember_forConversationLink___block_invoke_300;
        block[3] = &unk_1E7425188;
        v12 = a1[6];
        block[4] = v9;
        block[5] = v12;
        v16 = a1[4];
        v17 = a1[5];
        dispatch_async(v11, block);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __74__TUConversationManager_receivedTrackedPendingMember_forConversationLink___block_invoke_300(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 conversationManager:v5 trackedPendingMember:v6 forConversationLink:v7];
  }

  return result;
}

- (void)conversation:(id)conversation screenSharingChangedForParticipant:(id)participant
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__TUConversationManager_conversation_screenSharingChangedForParticipant___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = conversationCopy;
  v13 = participantCopy;
  v9 = participantCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

void __73__TUConversationManager_conversation_screenSharingChangedForParticipant___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __73__TUConversationManager_conversation_screenSharingChangedForParticipant___block_invoke_2;
        block[3] = &unk_1E7425188;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v14 = v10;
        v15 = *(a1 + 48);
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __73__TUConversationManager_conversation_screenSharingChangedForParticipant___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 conversationManager:v5 conversation:v6 screenSharingChangedForParticipant:v7];
  }

  return result;
}

- (void)remoteScreenShareAttributesChanged:(id)changed isLocallySharing:(BOOL)sharing
{
  changedCopy = changed;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__TUConversationManager_remoteScreenShareAttributesChanged_isLocallySharing___block_invoke;
  block[3] = &unk_1E7425B78;
  sharingCopy = sharing;
  v10 = changedCopy;
  selfCopy = self;
  v8 = changedCopy;
  dispatch_async(queue, block);
}

void __77__TUConversationManager_remoteScreenShareAttributesChanged_isLocallySharing___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = @"NO";
    if (*(a1 + 48))
    {
      v4 = @"YES";
    }

    *buf = 138412546;
    v25 = v3;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager remoteScreenShareAttributesChanged %@, isLocallySharing: %@", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 40) delegateToQueue];
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
        v10 = [*(a1 + 40) delegateToQueue];
        v11 = [v10 objectForKey:v9];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __77__TUConversationManager_remoteScreenShareAttributesChanged_isLocallySharing___block_invoke_305;
        block[3] = &unk_1E7425C80;
        block[4] = v9;
        v15 = *(a1 + 32);
        v12 = v15.i64[0];
        v17 = vextq_s8(v15, v15, 8uLL);
        v18 = *(a1 + 48);
        dispatch_async(v11, block);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __77__TUConversationManager_remoteScreenShareAttributesChanged_isLocallySharing___block_invoke_305(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);

    return [v4 conversationManager:v5 remoteScreenShareAttributesChanged:v6 isLocallySharing:v7];
  }

  return result;
}

- (void)remoteScreenShareEndedWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(TUConversationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__TUConversationManager_remoteScreenShareEndedWithReason___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = reasonCopy;
  selfCopy = self;
  v6 = reasonCopy;
  dispatch_async(queue, v7);
}

void __58__TUConversationManager_remoteScreenShareEndedWithReason___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager remoteScreenShareEndedWithReason: %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 40) delegateToQueue];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [*(a1 + 40) delegateToQueue];
        v10 = [v9 objectForKey:v8];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__TUConversationManager_remoteScreenShareEndedWithReason___block_invoke_308;
        block[3] = &unk_1E7424FD8;
        block[4] = v8;
        v14 = *(a1 + 32);
        v11 = v14.i64[0];
        v16 = vextq_s8(v14, v14, 8uLL);
        dispatch_async(v10, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __58__TUConversationManager_remoteScreenShareEndedWithReason___block_invoke_308(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 conversationManager:v5 remoteScreenShareEndedWithReason:v6];
  }

  return result;
}

- (void)sharePlayAvailableChanged:(BOOL)changed
{
  queue = [(TUConversationManager *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__TUConversationManager_sharePlayAvailableChanged___block_invoke;
  v6[3] = &unk_1E7425000;
  changedCopy = changed;
  v6[4] = self;
  dispatch_async(queue, v6);
}

void __51__TUConversationManager_sharePlayAvailableChanged___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 67109120;
    v22 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager sharePlayAvailable: %d", buf, 8u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [*(a1 + 32) delegateToQueue];
        v10 = [v9 objectForKey:v8];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __51__TUConversationManager_sharePlayAvailableChanged___block_invoke_311;
        block[3] = &unk_1E7425B78;
        v11 = *(a1 + 32);
        block[4] = v8;
        block[5] = v11;
        v15 = *(a1 + 40);
        dispatch_async(v10, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __51__TUConversationManager_sharePlayAvailableChanged___block_invoke_311(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 conversationManager:v5 sharePlayAvailableChanged:v6];
  }

  return result;
}

- (void)screenSharingAvailableChanged:(BOOL)changed
{
  queue = [(TUConversationManager *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__TUConversationManager_screenSharingAvailableChanged___block_invoke;
  v6[3] = &unk_1E7425000;
  changedCopy = changed;
  v6[4] = self;
  dispatch_async(queue, v6);
}

void __55__TUConversationManager_screenSharingAvailableChanged___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 67109120;
    v22 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConversationManager screenSharingAvailable: %d", buf, 8u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [*(a1 + 32) delegateToQueue];
        v10 = [v9 objectForKey:v8];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __55__TUConversationManager_screenSharingAvailableChanged___block_invoke_314;
        block[3] = &unk_1E7425B78;
        v11 = *(a1 + 32);
        block[4] = v8;
        block[5] = v11;
        v15 = *(a1 + 40);
        dispatch_async(v10, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __55__TUConversationManager_screenSharingAvailableChanged___block_invoke_314(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 conversationManager:v5 screenSharingAvailableChanged:v6];
  }

  return result;
}

- (void)activityAuthorizationsChangedForDataSource:(id)source oldActivityAuthorizedBundleIdentifiers:(id)identifiers
{
  sourceCopy = source;
  identifiersCopy = identifiers;
  queue = [(TUConversationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__TUConversationManager_activityAuthorizationsChangedForDataSource_oldActivityAuthorizedBundleIdentifiers___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = sourceCopy;
  v13 = identifiersCopy;
  selfCopy = self;
  v9 = identifiersCopy;
  v10 = sourceCopy;
  dispatch_async(queue, block);
}

void __107__TUConversationManager_activityAuthorizationsChangedForDataSource_oldActivityAuthorizedBundleIdentifiers___block_invoke(id *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] activityAuthorizedBundleIdentifiers];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1[5]];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [a1[5] objectForKeyedSubscript:v9];
        if ([v11 isEqual:v10])
        {
          [v3 removeObjectForKey:v9];
        }

        else
        {
          [v3 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [a1[6] delegateToQueue];
  v12 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v26 + 1) + 8 * j);
        v17 = [a1[6] delegateToQueue];
        v18 = [v17 objectForKey:v16];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __107__TUConversationManager_activityAuthorizationsChangedForDataSource_oldActivityAuthorizedBundleIdentifiers___block_invoke_2;
        block[3] = &unk_1E7424FD8;
        block[4] = v16;
        v19 = v3;
        v20 = a1[6];
        v24 = v19;
        v25 = v20;
        dispatch_async(v18, block);
      }

      v13 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __107__TUConversationManager_activityAuthorizationsChangedForDataSource_oldActivityAuthorizedBundleIdentifiers___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(a1 + 32) conversationManager:*(a1 + 48) changedActivityAuthorizationForBundleIdentifier:{*(*(&v9 + 1) + 8 * v7++), v9}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)collaborationChanged:(id)changed forConversation:(id)conversation collaborationState:(int64_t)state
{
  v25 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  conversationCopy = conversation;
  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    collaborationIdentifier = [changedCopy collaborationIdentifier];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    *buf = 138412546;
    v22 = collaborationIdentifier;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Notifying delegate of collaboration changed %@ with document state %@", buf, 0x16u);
  }

  queue = [(TUConversationManager *)self queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__TUConversationManager_collaborationChanged_forConversation_collaborationState___block_invoke;
  v17[3] = &unk_1E7424D50;
  v17[4] = self;
  v18 = changedCopy;
  v19 = conversationCopy;
  stateCopy = state;
  v14 = conversationCopy;
  v15 = changedCopy;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __81__TUConversationManager_collaborationChanged_forConversation_collaborationState___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __81__TUConversationManager_collaborationChanged_forConversation_collaborationState___block_invoke_2;
        block[3] = &unk_1E7426C40;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v16 = v10;
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v17 = v11;
        v18 = v12;
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v3);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __81__TUConversationManager_collaborationChanged_forConversation_collaborationState___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      v8 = a1[7];
      v9 = a1[8];

      return [v5 conversationManager:v6 collaborationChanged:v7 forConversation:v8 collaborationState:v9];
    }
  }

  return result;
}

- (id)collaborationForConversation:(id)conversation
{
  conversationCopy = conversation;
  collaborationManager = [(TUConversationManager *)self collaborationManager];
  v6 = [collaborationManager collaborationForConversation:conversationCopy];

  return v6;
}

- (int64_t)collaborationStateForConversation:(id)conversation
{
  conversationCopy = conversation;
  collaborationManager = [(TUConversationManager *)self collaborationManager];
  v6 = [collaborationManager collaborationStateForConversation:conversationCopy];

  return v6;
}

- (void)setNonSessionBackedConversationCreationQueue:(id)queue
{
  queueCopy = queue;
  queue = [(TUConversationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__TUConversationManager_setNonSessionBackedConversationCreationQueue___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(queue, v7);
}

- (void)callPropertiesChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changedCopy object];
    if (object2)
    {
      v7 = object2;
      [(TUConversationManager *)self updateConversationsNotBackedByGroupSessionWithCall:object2];
    }
  }
}

- (void)updateConversationsNotBackedByGroupSessionWithCall:(id)call
{
  callCopy = call;
  if ([(TUConversationManager *)self nonSessionBackedConversationCreationMode])
  {
    queue = [(TUConversationManager *)self queue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall___block_invoke;
    v6[3] = &unk_1E7424898;
    v6[4] = self;
    v7 = callCopy;
    dispatch_async(queue, v6);
  }
}

void __76__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nonSessionBackedConversationCreationQueue];
  if (v2)
  {
    v6 = v2;
    v3 = [*(a1 + 32) dataSource];
    v4 = [v3 conversationsByGroupUUID];
    v5 = [v4 copy];

    [*(a1 + 32) updateConversationsNotBackedByGroupSessionWithCall:*(a1 + 40) conversationsByGroupUUID:v5 creationQueue:v6];
    v2 = v6;
  }
}

- (void)updateConversationsNotBackedByGroupSessionWithCall:(id)call conversationsByGroupUUID:(id)d creationQueue:(id)queue
{
  callCopy = call;
  dCopy = d;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall_conversationsByGroupUUID_creationQueue___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v13 = callCopy;
  v14 = dCopy;
  v10 = dCopy;
  v11 = callCopy;
  dispatch_async(queue, block);
}

void __115__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall_conversationsByGroupUUID_creationQueue___block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) conversationsNotBackedByGroupSessions];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) createConversationForCallNotBackedByGroupSession:*(a1 + 40)];
  v58 = a1;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count") + 1}];
    if ([v4 state])
    {
      [v5 addObject:v4];
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v55 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v68;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v68 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v67 + 1) + 8 * i);
          v12 = [v11 groupUUID];
          v13 = [v4 groupUUID];
          v14 = [v12 isEqual:v13];

          if ((v14 & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v8);
    }

    [*(v58 + 32) setConversationsNotBackedByGroupSessions:v5];
    v15 = [*(v58 + 48) mutableCopy];
    v16 = [*(v58 + 48) mutableCopy];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v64;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v64 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v63 + 1) + 8 * j);
          v23 = [v22 groupUUID];
          [v15 setObject:v22 forKeyedSubscript:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v19);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v24 = [*(v58 + 32) conversationsNotBackedByGroupSessions];
    v25 = [v24 countByEnumeratingWithState:&v59 objects:v78 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v60;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v60 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v59 + 1) + 8 * k);
          v30 = [v29 groupUUID];
          [v16 setObject:v29 forKeyedSubscript:v30];
        }

        v26 = [v24 countByEnumeratingWithState:&v59 objects:v78 count:16];
      }

      while (v26);
    }

    [*(v58 + 32) conversationsChangedFromOldConversationsByGroupUUID:v15 newConversationsByGroupUUID:v16];
    goto LABEL_28;
  }

  v31 = *(a1 + 32);
  v32 = objc_opt_class();
  v33 = [*(a1 + 40) uniqueProxyIdentifierUUID];
  v5 = [v32 conversationWithUUID:v33 fromConversations:v3];

  if ([*(a1 + 40) isConversation] && v5)
  {
    v34 = TUDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 40);
      *buf = 138412290;
      v83 = v35;
      _os_log_impl(&dword_1956FD000, v34, OS_LOG_TYPE_DEFAULT, "Adding call %@ to calls pending upgrade to session-backed architecture", buf, 0xCu);
    }

    v36 = [*(a1 + 32) callsNotBackedByGroupSessionsPendingUpgrade];
    [v36 addObject:*(a1 + 40)];

    v37 = *(a1 + 32);
    v15 = [v37 dataSource];
    v16 = [*(a1 + 32) dataSource];
    v38 = [v16 conversationsByGroupUUID];
    [v37 conversationsChangedForDataSource:v15 conversationsByGroupUUID:v38 oldConversationsByGroupUUID:*(a1 + 48)];

    goto LABEL_34;
  }

  if (([*(a1 + 40) isVideo] & 1) == 0 && objc_msgSend(*(a1 + 32), "nonSessionBackedConversationCreationMode") == 1)
  {
    v40 = *(a1 + 32);
    v41 = objc_opt_class();
    v42 = [*(a1 + 40) uniqueProxyIdentifierUUID];
    v43 = [*(a1 + 32) conversationsNotBackedByGroupSessions];
    v15 = [v41 conversationWithUUID:v42 fromConversations:v43];

    if (!v15)
    {
      goto LABEL_35;
    }

    v44 = TUDefaultLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [v15 UUID];
      *buf = 138412290;
      v83 = v45;
      _os_log_impl(&dword_1956FD000, v44, OS_LOG_TYPE_DEFAULT, "Call downgraded to isVideo=NO, but sessionCreationMode=.faceTimeVideo, and we already made a fake TUConversation, removing it now: %@", buf, 0xCu);
    }

    v46 = [*(a1 + 32) conversationsNotBackedByGroupSessions];
    [v46 removeObject:v15];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v16 = [*(a1 + 32) delegateToQueue];
    v47 = [v16 countByEnumeratingWithState:&v74 objects:v81 count:16];
    if (!v47)
    {
LABEL_34:

LABEL_35:
      goto LABEL_36;
    }

    v48 = v47;
    v57 = *v75;
    v55 = v3;
    v56 = v72;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v75 != v57)
        {
          objc_enumerationMutation(v16);
        }

        v50 = *(*(&v74 + 1) + 8 * m);
        v51 = [*(a1 + 32) delegateToQueue];
        v52 = [v51 objectForKey:v50];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        v72[0] = __115__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall_conversationsByGroupUUID_creationQueue___block_invoke_323;
        v72[1] = &unk_1E7424FD8;
        v53 = *(a1 + 32);
        v72[2] = v50;
        v72[3] = v53;
        v54 = v15;
        v73 = v54;
        dispatch_async(v52, block);
      }

      v48 = [v16 countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v48);
    v15 = v54;
LABEL_28:
    v3 = v55;
    goto LABEL_34;
  }

LABEL_36:

  v39 = *MEMORY[0x1E69E9840];
}

uint64_t __115__TUConversationManager_updateConversationsNotBackedByGroupSessionWithCall_conversationsByGroupUUID_creationQueue___block_invoke_323(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 conversationManager:v5 removedActiveConversation:v6];
  }

  return result;
}

- (void)pruneConversationsPendingUpgradeInConversationsWithGroupUUID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nonSessionBackedConversationCreationQueue = [(TUConversationManager *)self nonSessionBackedConversationCreationQueue];
  dispatch_assert_queue_V2(nonSessionBackedConversationCreationQueue);

  v6 = [(TUConversationManager *)self callPendingUpgradeInConversationsWithGroupUUID:dCopy];

  v7 = objc_opt_class();
  uniqueProxyIdentifierUUID = [v6 uniqueProxyIdentifierUUID];
  conversationsNotBackedByGroupSessions = [(TUConversationManager *)self conversationsNotBackedByGroupSessions];
  v10 = [v7 conversationWithUUID:uniqueProxyIdentifierUUID fromConversations:conversationsNotBackedByGroupSessions];

  if (v10)
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Stopping tracking conversation not backed by session %@ since it is now backed by session", &v15, 0xCu);
    }

    conversationsNotBackedByGroupSessions2 = [(TUConversationManager *)self conversationsNotBackedByGroupSessions];
    [conversationsNotBackedByGroupSessions2 removeObject:v10];

    callsNotBackedByGroupSessionsPendingUpgrade = [(TUConversationManager *)self callsNotBackedByGroupSessionsPendingUpgrade];
    [callsNotBackedByGroupSessionsPendingUpgrade removeObject:v6];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)callPendingUpgradeInConversationsWithGroupUUID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nonSessionBackedConversationCreationQueue = [(TUConversationManager *)self nonSessionBackedConversationCreationQueue];
  dispatch_assert_queue_V2(nonSessionBackedConversationCreationQueue);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(TUConversationManager *)self callsNotBackedByGroupSessionsPendingUpgrade];
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v23 = 0;
    v20 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        allValues = [dCopy allValues];
        v8 = [allValues countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(allValues);
              }

              v12 = *(*(&v24 + 1) + 8 * j);
              v13 = [objc_opt_class() remoteMembersForCall:v6];
              if ([v12 isRepresentedByRemoteMembers:v13 andLink:0])
              {
                isVideo = [v12 isVideo];
                isVideo2 = [v6 isVideo];

                if (isVideo == isVideo2)
                {
                  v16 = v6;

                  v23 = v16;
                  goto LABEL_17;
                }
              }

              else
              {
              }
            }

            v9 = [allValues countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }

LABEL_17:
      }

      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)createConversationForCallNotBackedByGroupSession:(id)session
{
  v40 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  nonSessionBackedConversationCreationQueue = [(TUConversationManager *)self nonSessionBackedConversationCreationQueue];
  dispatch_assert_queue_V2(nonSessionBackedConversationCreationQueue);

  if (!sessionCopy || ([sessionCopy isConversation] & 1) != 0 || (objc_msgSend(sessionCopy, "isVideo") & 1) == 0 && -[TUConversationManager nonSessionBackedConversationCreationMode](self, "nonSessionBackedConversationCreationMode") == 1)
  {
    goto LABEL_3;
  }

  provider = [sessionCopy provider];
  if (([provider isFaceTimeProvider] & 1) == 0)
  {
    provider2 = [sessionCopy provider];
    if ([provider2 isSuperboxProvider])
    {

      goto LABEL_9;
    }

    nonSessionBackedConversationCreationMode = [(TUConversationManager *)self nonSessionBackedConversationCreationMode];

    if (nonSessionBackedConversationCreationMode == 3)
    {
      goto LABEL_10;
    }

LABEL_3:
    v6 = 0;
    goto LABEL_24;
  }

LABEL_9:

LABEL_10:
  v9 = objc_opt_class();
  uniqueProxyIdentifierUUID = [sessionCopy uniqueProxyIdentifierUUID];
  conversationsNotBackedByGroupSessions = [(TUConversationManager *)self conversationsNotBackedByGroupSessions];
  v12 = [v9 conversationWithUUID:uniqueProxyIdentifierUUID fromConversations:conversationsNotBackedByGroupSessions];
  groupUUID = [v12 groupUUID];

  provider3 = [sessionCopy provider];
  if ([provider3 isFaceTimeProvider])
  {
    +[TUConversationProvider faceTimeProvider];
  }

  else
  {
    +[TUConversationProvider unknownProvider];
  }
  v15 = ;

  v16 = [TUMutableConversation alloc];
  uniqueProxyIdentifierUUID2 = [sessionCopy uniqueProxyIdentifierUUID];
  if (groupUUID)
  {
    v18 = [(TUConversation *)v16 initWithUUID:uniqueProxyIdentifierUUID2 groupUUID:groupUUID provider:v15];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v18 = [(TUConversation *)v16 initWithUUID:uniqueProxyIdentifierUUID2 groupUUID:uUID provider:v15];
  }

  -[TUConversation setVideo:](v18, "setVideo:", [sessionCopy isVideo]);
  -[TUConversation setState:](v18, "setState:", [objc_opt_class() conversationStateForCall:sessionCopy]);
  v20 = [objc_opt_class() remoteMembersForCall:sessionCopy];
  [(TUConversation *)v18 setRemoteMembers:v20];

  v21 = objc_opt_class();
  remoteMembers = [(TUConversation *)v18 remoteMembers];
  v23 = [v21 activeRemoteParticipantsForCall:sessionCopy remoteMembers:remoteMembers];
  [(TUConversation *)v18 setActiveRemoteParticipants:v23];

  -[TUConversation setAudioEnabled:](v18, "setAudioEnabled:", [sessionCopy isUplinkMuted]);
  -[TUConversation setVideoEnabled:](v18, "setVideoEnabled:", [sessionCopy isSendingVideo]);
  v24 = [MEMORY[0x1E695DFD8] set];
  [(TUConversation *)v18 setActivitySessions:v24];

  [(TUConversation *)v18 setOneToOneModeEnabled:1];
  [(TUConversation *)v18 setBackedByGroupSession:0];
  -[TUConversation setAvcSessionToken:](v18, "setAvcSessionToken:", [sessionCopy videoStreamToken]);
  if ([sessionCopy isVideo])
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  [(TUConversation *)v18 setAvMode:v25];
  localSenderIdentity = [sessionCopy localSenderIdentity];
  handle = [localSenderIdentity handle];

  if (handle)
  {
    v28 = [TUConversationMember alloc];
    localSenderIdentity2 = [sessionCopy localSenderIdentity];
    handle2 = [localSenderIdentity2 handle];
    v31 = [(TUConversationMember *)v28 initWithHandle:handle2];
    [(TUConversation *)v18 setLocalMember:v31];
  }

  v32 = TUDefaultLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412546;
    v37 = v18;
    v38 = 2112;
    v39 = sessionCopy;
    _os_log_impl(&dword_1956FD000, v32, OS_LOG_TYPE_DEFAULT, "Created conversation: %@ for call: %@", &v36, 0x16u);
  }

  v6 = [(TUMutableConversation *)v18 copy];
LABEL_24:

  v33 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (int64_t)conversationStateForCall:(id)call
{
  callCopy = call;
  status = [callCopy status];
  if (status <= 2)
  {
    if (status == 1)
    {
      v5 = [callCopy isConnected] == 0;
      v6 = 2;
LABEL_11:
      if (v5)
      {
        v9 = v6;
      }

      else
      {
        v9 = v6 + 1;
      }

      goto LABEL_14;
    }

    v7 = status == 2;
    v8 = 3;
  }

  else
  {
    if ((status - 3) < 2)
    {
      v5 = [callCopy isConnecting] == 0;
      v6 = 1;
      goto LABEL_11;
    }

    v7 = status == 5;
    v8 = 4;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  return v9;
}

+ (id)activeRemoteParticipantsForCall:(id)call remoteMembers:(id)members
{
  v32 = *MEMORY[0x1E69E9840];
  callCopy = call;
  membersCopy = members;
  v26 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(membersCopy, "count")}];
  status = [callCopy status];
  if (status <= 4 && ((1 << status) & 0x16) != 0)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = membersCopy;
    obj = membersCopy;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [TUConversationParticipant alloc];
          handle = [v12 handle];
          v15 = [(TUConversationParticipant *)v13 initWithIdentifier:0 handle:handle];

          -[TUConversationParticipant setStreamToken:](v15, "setStreamToken:", [callCopy videoStreamToken]);
          [(TUConversationParticipant *)v15 setAudioEnabled:1];
          -[TUConversationParticipant setVideoEnabled:](v15, "setVideoEnabled:", [callCopy isVideo]);
          if ([callCopy isVideo])
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          [(TUConversationParticipant *)v15 setAudioVideoMode:v16];
          providerContext = [callCopy providerContext];
          v18 = [providerContext objectForKeyedSubscript:@"TUCallFaceTimeRemoteIDSDestinationKey"];
          [(TUConversationParticipant *)v15 setActiveIDSDestination:v18];

          v19 = objc_alloc_init(TUConversationParticipantCapabilities);
          providerContext2 = [callCopy providerContext];
          v21 = [providerContext2 objectForKeyedSubscript:@"TUCallFaceTimeRemoteMomentsAvailableKey"];
          -[TUConversationParticipantCapabilities setMomentsAvailable:](v19, "setMomentsAvailable:", [v21 BOOLValue]);

          [(TUConversationParticipant *)v15 setCapabilities:v19];
          [v26 addObject:v15];
        }

        v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v9);
    }

    membersCopy = v24;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)conversationWithUUID:(id)d fromConversations:(id)conversations
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  conversationsCopy = conversations;
  v7 = [conversationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(conversationsCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        uUID = [v10 UUID];
        v12 = [uUID isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [conversationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)handoffEligibleConversationForEligibility:(id)eligibility
{
  v26 = *MEMORY[0x1E69E9840];
  eligibilityCopy = eligibility;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  dataSource = [(TUConversationManager *)self dataSource];
  conversationsByGroupUUID = [dataSource conversationsByGroupUUID];
  allValues = [conversationsByGroupUUID allValues];

  v9 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v22;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(allValues);
      }

      v14 = *(*(&v21 + 1) + 8 * v13);
      if ([v14 state])
      {
        goto LABEL_18;
      }

      if (eligibilityCopy && ([eligibilityCopy conversationGroupUUID], conversationsByGroupUUID = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "groupUUID"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(conversationsByGroupUUID, "isEqual:", v3)))
      {
      }

      else
      {
        handoffEligibility = [v14 handoffEligibility];

        if (eligibilityCopy)
        {
        }

        if (!handoffEligibility)
        {
          goto LABEL_14;
        }
      }

      v16 = v14;

      v11 = v16;
LABEL_14:
      if (v10 == ++v13)
      {
        v10 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
        v17 = v11;
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }
  }

  v11 = 0;
LABEL_18:
  v17 = 0;
LABEL_19:

  v18 = v17;
  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)joinRequestForApplicableConversationWithHandoffEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  v5 = [(TUConversationManager *)self handoffEligibleConversationForEligibility:eligibilityCopy];
  v6 = v5;
  if (v5)
  {
    if (eligibilityCopy)
    {
      handoffEligibility = eligibilityCopy;
    }

    else
    {
      handoffEligibility = [v5 handoffEligibility];
    }

    v9 = handoffEligibility;
    v8 = [[TUJoinConversationRequest alloc] initWithConversation:v6 originatingUIType:43];
    -[TUJoinConversationRequest setAvMode:](v8, "setAvMode:", [v6 avMode]);
    presentationContext = [v6 presentationContext];
    -[TUJoinConversationRequest setPresentationMode:](v8, "setPresentationMode:", [presentationContext mode]);

    if ([v6 avMode] == 2)
    {
      isSendingVideo = [v9 isSendingVideo];
    }

    else
    {
      isSendingVideo = 0;
    }

    [(TUJoinConversationRequest *)v8 setVideoEnabled:isSendingVideo];
    -[TUJoinConversationRequest setUplinkMuted:](v8, "setUplinkMuted:", [v9 isUplinkMuted]);
    v12 = [v6 avMode] != 1 && objc_msgSend(v6, "resolvedAudioVideoMode") == 2;
    [(TUJoinConversationRequest *)v8 setWantsStagingArea:v12];
    association = [v9 association];
    v14 = [association copy];
    [(TUJoinConversationRequest *)v8 setParticipantAssociation:v14];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TUConversationMessagesGroupProviding)messagesGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_messagesGroupProvider);

  return WeakRetained;
}

- (void)addCollaborationDictionary:(void *)a1 forConversation:fromMe:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 UUID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addCollaborationIdentifier:(void *)a1 forConversation:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 UUID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addCollaboration:(uint64_t)a1 forConversation:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 UUID];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeCollaborationIdentifier:(void *)a1 forConversation:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 UUID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateURLWithDugongTokenIfNeeded:collaboration:handle:completion:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL LocalIMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOS(NSString *__strong, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)"}];
  [v0 handleFailureInFunction:v1 file:@"TUConversationManager.m" lineNumber:54 description:{@"%s", dlerror()}];

  __break(1u);
}

void __90__TUConversationManager_updateURLWithDugongTokenIfNeeded_collaboration_handle_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Returning collaboration URL without Dugong token because could not construct updated url from components %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)openCollaborationWithIdentifier:forConversation:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not find a collaboration highlight for identifier %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__TUConversationManager_openCollaborationWithIdentifier_forConversation___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 48) URL];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __98__TUConversationManager_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Link generation failed with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __112__TUConversationManager_conversationManagerDataSource_messagesGroupDetailsForMessagesGroupId_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "No messages group provider is available to fetch details for messages group %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end