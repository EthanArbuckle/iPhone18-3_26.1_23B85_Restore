@interface CSDConversationManagerXPCServer
- (BOOL)_shouldSend:(id)send;
- (CSDConversationManagerXPCServer)initWithConversationManager:(id)manager featureFlags:(id)flags;
- (id)_advertisementsOnSystemForClient:(id)client;
- (id)_conversationsByGroupUUID:(id)d filteredForClient:(id)client;
- (id)_filter:(id)_filter withClient:(id)client;
- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier;
- (void)activateLink:(id)link completionHandler:(id)handler;
- (void)activatedConversationLinks:(id)links;
- (void)activityAuthorizedBundleIdentifierState:(id)state;
- (void)addCollaborationDictionary:(id)dictionary forConversationWithUUID:(id)d fromMe:(BOOL)me;
- (void)addCollaborationIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d;
- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d;
- (void)addInvitedMemberHandles:(id)handles toConversationLink:(id)link completionHandler:(id)handler;
- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences toConversationWithUUID:(id)d;
- (void)addScreenSharingType:(unint64_t)type forConversationUUID:(id)d;
- (void)advertisementsOnSystem:(id)system;
- (void)approvePendingMember:(id)member forConversationUUID:(id)d;
- (void)buzzMember:(id)member destinationID:(id)d invitationContext:(id)context conversationUUID:(id)iD;
- (void)cancelOrDenyScreenShareRequest:(id)request forConversationUUID:(id)d;
- (void)checkLinkValidity:(id)validity completionHandler:(id)handler;
- (void)conversationManager:(id)manager activatedConversationLinksChanged:(id)changed;
- (void)conversationManager:(id)manager activeParticipant:(id)participant addedHighlightToConversation:(id)conversation highlightIdentifier:(id)identifier oldHighlightIdentifier:(id)highlightIdentifier isFirstAdd:(BOOL)add;
- (void)conversationManager:(id)manager activeParticipant:(id)participant removedHighlightFrom:(id)from highlightIdentifier:(id)identifier;
- (void)conversationManager:(id)manager activityAuthorizationChangedForBundleIdentifier:(id)identifier;
- (void)conversationManager:(id)manager addedCollaborationDictionary:(id)dictionary forConversation:(id)conversation;
- (void)conversationManager:(id)manager conversation:(id)conversation addedMembersLocally:(id)locally;
- (void)conversationManager:(id)manager conversation:(id)conversation appLaunchState:(unint64_t)state forActivitySession:(id)session;
- (void)conversationManager:(id)manager conversation:(id)conversation buzzedMember:(id)member;
- (void)conversationManager:(id)manager conversation:(id)conversation collaborationStateChanged:(int64_t)changed highlightIdentifier:(id)identifier;
- (void)conversationManager:(id)manager conversation:(id)conversation didChangeSceneAssociationForActivitySession:(id)session;
- (void)conversationManager:(id)manager conversation:(id)conversation didChangeStateForActivitySession:(id)session;
- (void)conversationManager:(id)manager conversation:(id)conversation participant:(id)participant addedNotice:(id)notice;
- (void)conversationManager:(id)manager conversation:(id)conversation participant:(id)participant didReact:(id)react;
- (void)conversationManager:(id)manager conversation:(id)conversation participantDidStopReacting:(id)reacting;
- (void)conversationManager:(id)manager conversation:(id)conversation receivedActivitySessionEvent:(id)event;
- (void)conversationManager:(id)manager conversationScreenSharingChanged:(id)changed forParticipant:(id)participant;
- (void)conversationManager:(id)manager conversationUpdateMessagesGroupPhoto:(id)photo;
- (void)conversationManager:(id)manager didChangeConversationAdvertisement:(id)advertisement;
- (void)conversationManager:(id)manager remoteScreenShareAttributesChanged:(id)changed isLocallySharing:(BOOL)sharing;
- (void)conversationManager:(id)manager remoteScreenShareEndedWithReason:(id)reason;
- (void)conversationManager:(id)manager screenSharingAvailableChanged:(BOOL)changed;
- (void)conversationManager:(id)manager sharePlayAvailableChanged:(BOOL)changed;
- (void)conversationManager:(id)manager trackedPendingMember:(id)member forConversationLink:(id)link;
- (void)conversationManager:(id)manager updateIncomingPendingConversationsByGroupUUID:(id)d;
- (void)conversationsByGroupUUID:(id)d;
- (void)createActivitySession:(id)session onConversationWithUUID:(id)d options:(unint64_t)options;
- (void)dealloc;
- (void)endActivitySession:(id)session onConversationWithUUID:(id)d;
- (void)fetchUpcomingNoticeWithCompletionHandler:(id)handler;
- (void)generateLinkForConversationUUID:(id)d completionHandler:(id)handler;
- (void)generateLinkWithInvitedMemberHandles:(id)handles linkLifetimeScope:(int64_t)scope completionHandler:(id)handler;
- (void)getInactiveLinkWithCompletionHandler:(id)handler;
- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)handler;
- (void)getMessagesGroupDetailsForConversationUUID:(id)d completionHandler:(id)handler;
- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler;
- (void)getScreenSharingAvailableWithCompletionHandler:(id)handler;
- (void)getSharePlayAvailableWithCompletionHandler:(id)handler;
- (void)incomingPendingConversationsByGroupUUID:(id)d;
- (void)invalidate;
- (void)invalidateLink:(id)link deleteReason:(int64_t)reason completionHandler:(id)handler;
- (void)joinConversationWithRequest:(id)request;
- (void)kickMember:(id)member conversationUUID:(id)d;
- (void)leaveActivitySession:(id)session onConversationWithUUID:(id)d;
- (void)leaveConversationWithUUID:(id)d;
- (void)markCollaborationWithIdentifierOpened:(id)opened forConversationUUID:(id)d;
- (void)notifyClientsOfConversationsByGroupUUIDUpdate;
- (void)notifyClientsOfMediaPrioritiesChangedForConversation:(id)conversation;
- (void)notifyClientsToConnectIfNecessary;
- (void)prepareConversationWithUUID:(id)d withHandoffContext:(id)context;
- (void)presentDismissalAlertForActivitySessionWithUUID:(id)d onConversationWithUUID:(id)iD;
- (void)pseudonymsByCallUUID:(id)d;
- (void)refreshActiveConversations;
- (void)registerClient:(id)client;
- (void)registerMessagesGroupUUIDForConversationUUID:(id)d;
- (void)rejectPendingMember:(id)member forConversationUUID:(id)d;
- (void)removeCollaborationIdentifier:(id)identifier forConversationUUID:(id)d;
- (void)removeConversationNoticeWithUUID:(id)d;
- (void)renewLink:(id)link expirationDate:(id)date reason:(unint64_t)reason completionHandler:(id)handler;
- (void)requestParticipantToShareScreen:(id)screen forConversationUUID:(id)d;
- (void)setGridDisplayMode:(unint64_t)mode forConversationWithUUID:(id)d;
- (void)setLinkName:(id)name forConversationLink:(id)link completionHandler:(id)handler;
- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode forConversationUUID:(id)d;
- (void)setLocalParticipantCluster:(id)cluster forConversationUUID:(id)d;
- (void)setUsingAirplay:(BOOL)airplay onActivitySession:(id)session onConversationWithUUID:(id)d;
- (void)startTrackingCollaborationWithIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d completionHandler:(id)handler;
- (void)unregisterClient:(id)client;
- (void)updateConversationWithUUID:(id)d participantPresentationContexts:(id)contexts;
- (void)updateExternalParticipants:(id)participants;
- (void)updateLocalParticipantToAVLessWithPresentationMode:(unint64_t)mode forConversationUUID:(id)d;
- (void)updateMessagesGroupName:(id)name onConversationWithUUID:(id)d;
- (void)updateMessagesGroupPhotoOnConversationWithUUID:(id)d;
- (void)updateRemoteControlStatus:(int64_t)status onConversationWithUUID:(id)d;
@end

@implementation CSDConversationManagerXPCServer

- (void)refreshActiveConversations
{
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager refreshActiveParticipantsList];
}

- (CSDConversationManagerXPCServer)initWithConversationManager:(id)manager featureFlags:(id)flags
{
  managerCopy = manager;
  flagsCopy = flags;
  v22.receiver = self;
  v22.super_class = CSDConversationManagerXPCServer;
  v9 = [(CSDConversationManagerXPCServer *)&v22 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.conversationmanagerxpcserver", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_conversationManager, manager);
    objc_storeStrong(&v9->_featureFlags, flags);
    [(CSDConversationManager *)v9->_conversationManager addDelegate:v9 queue:v9->_queue];
    v12 = [[CSDClientManager alloc] initWithSerialQueue:v9->_queue];
    clientManager = v9->_clientManager;
    v9->_clientManager = v12;

    v14 = v9->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001EB60C;
    block[3] = &unk_100619D38;
    v15 = v9;
    v21 = v15;
    dispatch_sync(v14, block);
    queue = [(CSDConversationManagerXPCServer *)v15 queue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001EB9A0;
    v18[3] = &unk_100619D38;
    v19 = v15;
    dispatch_async(queue, v18);
  }

  return v9;
}

- (void)dealloc
{
  notify_cancel(self->_clientsShouldConnectToken);
  v3.receiver = self;
  v3.super_class = CSDConversationManagerXPCServer;
  [(CSDConversationManagerXPCServer *)&v3 dealloc];
}

- (void)invalidate
{
  queue = [(CSDConversationManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EBAEC;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)notifyClientsToConnectIfNecessary
{
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v6 = [conversationsByUUID count];

  clientsShouldConnectToken = self->_clientsShouldConnectToken;
  if (v6)
  {
    notify_set_state(clientsShouldConnectToken, 1uLL);

    notify_post("CSDConversationManagerClientsShouldConnectNotification");
  }

  else
  {

    notify_set_state(clientsShouldConnectToken, 0);
  }
}

- (BOOL)_shouldSend:(id)send
{
  sendCopy = send;
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];

  if ([currentClient isRemote])
  {
    provider = [sendCopy provider];
    isDefaultProvider = [provider isDefaultProvider];

    if ((isDefaultProvider & 1) != 0 || (-[CSDConversationManagerXPCServer featureFlags](self, "featureFlags"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 groupFacetimeAsAServiceEnabled], v9, !v10))
    {
      featureFlags = [(CSDConversationManagerXPCServer *)self featureFlags];
      if (TUGreenTeaLagunaEnabled())
      {
        [sendCopy mergedRemoteMembers];
      }

      else
      {
        [sendCopy remoteMembers];
      }
      v17 = ;
      v18 = [v17 count];

      v12 = +[FTDeviceSupport sharedInstance];
      v19 = [v12 isGreenTea] ^ 1;
      if (v18 < 2)
      {
        v15 = 1;
      }

      else
      {
        v15 = v19;
      }
    }

    else
    {
      v11 = +[CSDConversationProviderManager sharedInstance];
      v12 = [v11 providerIdentifiersForClient:currentClient];

      if ([v12 count])
      {
        provider2 = [sendCopy provider];
        identifier = [provider2 identifier];
        v15 = [v12 containsObject:identifier];
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (id)_conversationsByGroupUUID:(id)d filteredForClient:(id)client
{
  dCopy = d;
  clientCopy = client;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  if (clientCopy)
  {
    v9 = [(CSDConversationManagerXPCServer *)self _filter:dCopy withClient:clientCopy];
  }

  else
  {
    v9 = dCopy;
  }

  v10 = v9;

  return v10;
}

- (id)_advertisementsOnSystemForClient:(id)client
{
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  advertisementsBySessionUUID = [conversationManager advertisementsBySessionUUID];

  return advertisementsBySessionUUID;
}

- (id)_filter:(id)_filter withClient:(id)client
{
  _filterCopy = _filter;
  clientCopy = client;
  if ([clientCopy isRemote])
  {
    v8 = +[CSDConversationProviderManager sharedInstance];
    v34 = clientCopy;
    v9 = [v8 providerIdentifiersForClient:clientCopy];

    v10 = objc_alloc_init(NSMutableDictionary);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v35 = _filterCopy;
    v11 = _filterCopy;
    v12 = v9;
    allValues = [v11 allValues];
    v38 = [allValues countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (!v38)
    {
      goto LABEL_24;
    }

    v14 = *v40;
    v36 = *v40;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        provider = [v16 provider];
        isDefaultProvider = [provider isDefaultProvider];

        if (!isDefaultProvider)
        {
          provider2 = [v16 provider];
          identifier = [provider2 identifier];
          if ([v12 containsObject:identifier])
          {

            goto LABEL_18;
          }

          featureFlags = [(CSDConversationManagerXPCServer *)self featureFlags];
          if ([featureFlags sharePlayInCallsEnabled])
          {
            [v16 provider];
            v26 = allValues;
            v27 = v10;
            selfCopy = self;
            v30 = v29 = v12;
            isTelephonyWithSharePlayProvider = [v30 isTelephonyWithSharePlayProvider];

            v12 = v29;
            self = selfCopy;
            v10 = v27;
            allValues = v26;
            v14 = v36;

            if (!isTelephonyWithSharePlayProvider)
            {
              goto LABEL_20;
            }

LABEL_18:
            provider2 = [v16 copy];
            identifier = [v16 groupUUID];
            [v10 setObject:provider2 forKeyedSubscript:identifier];
          }

          else
          {
          }

          goto LABEL_20;
        }

        featureFlags2 = [(CSDConversationManagerXPCServer *)self featureFlags];
        if (TUGreenTeaLagunaEnabled())
        {
          [v16 mergedRemoteMembers];
        }

        else
        {
          [v16 remoteMembers];
        }
        v22 = ;
        v23 = [v22 count];

        v24 = +[FTDeviceSupport sharedInstance];
        LODWORD(v22) = [v24 isGreenTea];

        if (!v22 || v23 <= 1)
        {
          goto LABEL_18;
        }

LABEL_20:
        v15 = v15 + 1;
      }

      while (v38 != v15);
      v31 = [allValues countByEnumeratingWithState:&v39 objects:v43 count:16];
      v38 = v31;
      if (!v31)
      {
LABEL_24:

        v32 = [v10 copy];
        clientCopy = v34;
        _filterCopy = v35;
        goto LABEL_26;
      }
    }
  }

  v32 = _filterCopy;
LABEL_26:

  return v32;
}

- (void)conversationsByGroupUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  conversationsByGroupUUID = [conversationManager conversationsByGroupUUID];
  v9 = [(CSDConversationManagerXPCServer *)self _conversationsByGroupUUID:conversationsByGroupUUID filteredForClient:currentClient];
  dCopy[2](dCopy, v9);
}

- (void)advertisementsOnSystem:(id)system
{
  systemCopy = system;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = [(CSDConversationManagerXPCServer *)self _advertisementsOnSystemForClient:currentClient];
  systemCopy[2](systemCopy, v7);
}

- (void)incomingPendingConversationsByGroupUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  incomingPendingConversationsByGroupUUID = [conversationManager incomingPendingConversationsByGroupUUID];
  dCopy[2](dCopy, incomingPendingConversationsByGroupUUID);
}

- (void)pseudonymsByCallUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  pseudonymsByCallUUID = [conversationManager pseudonymsByCallUUID];
  dCopy[2](dCopy, pseudonymsByCallUUID);
}

- (void)activityAuthorizedBundleIdentifierState:(id)state
{
  stateCopy = state;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  activityAuthorizedBundleIdentifierState = [conversationManager activityAuthorizedBundleIdentifierState];
  stateCopy[2](stateCopy, activityAuthorizedBundleIdentifierState);
}

- (void)activatedConversationLinks:(id)links
{
  linksCopy = links;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  v10 = 0;
  v7 = [conversationManager activatedConversationLinksWithError:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047ACEC(v8, v9);
    }
  }

  else
  {
    linksCopy[2](linksCopy, v7);
  }
}

- (void)addRemoteMembers:(id)members otherInvitedHandles:(id)handles invitationPreferences:(id)preferences toConversationWithUUID:(id)d
{
  dCopy = d;
  preferencesCopy = preferences;
  handlesCopy = handles;
  membersCopy = members;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager addRemoteMembers:membersCopy otherInvitedHandles:handlesCopy invitationPreferences:preferencesCopy toConversationWithUUID:dCopy];
}

- (void)createActivitySession:(id)session onConversationWithUUID:(id)d options:(unint64_t)options
{
  sessionCopy = session;
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001EC894;
  v17[3] = &unk_10061D3F0;
  v17[4] = &v18;
  sub_100004AA4(currentClient, @"override-activity-verification", v17, 0, "[CSDConversationManagerXPCServer createActivitySession:onConversationWithUUID:options:]");
  if (*(v19 + 24) != 1 || ([sessionCopy bundleIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    processBundleIdentifier = [currentClient processBundleIdentifier];
    [sessionCopy setBundleIdentifier:processBundleIdentifier];
  }

  bundleIdentifier = [sessionCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
    [conversationManager createActivitySession:sessionCopy onConversationWithUUID:dCopy options:options withCompletion:&stru_10061E340];
  }

  else
  {
    conversationManager = sub_100004778();
    if (os_log_type_enabled(conversationManager, OS_LOG_TYPE_ERROR))
    {
      sub_10047AD64(conversationManager);
    }
  }

  _Block_object_dispose(&v18, 8);
}

- (void)leaveActivitySession:(id)session onConversationWithUUID:(id)d
{
  dCopy = d;
  sessionCopy = session;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager leaveActivitySession:sessionCopy onConversationWithUUID:dCopy];
}

- (void)endActivitySession:(id)session onConversationWithUUID:(id)d
{
  dCopy = d;
  sessionCopy = session;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager endActivitySession:sessionCopy onConversationWithUUID:dCopy];
}

- (void)setUsingAirplay:(BOOL)airplay onActivitySession:(id)session onConversationWithUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001ECAE8;
  v14[3] = &unk_10061BE38;
  airplayCopy = airplay;
  v14[4] = self;
  v15 = sessionCopy;
  v16 = dCopy;
  v12 = dCopy;
  v13 = sessionCopy;
  sub_100004AA4(currentClient, @"modify-activity-session-airplay", v14, 0, "[CSDConversationManagerXPCServer setUsingAirplay:onActivitySession:onConversationWithUUID:]");
}

- (void)presentDismissalAlertForActivitySessionWithUUID:(id)d onConversationWithUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager presentDismissalAlertForActivitySessionWithUUID:dCopy onConversationWithUUID:iDCopy];
}

- (void)joinConversationWithRequest:(id)request
{
  requestCopy = request;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager joinConversationWithRequest:requestCopy];
}

- (void)leaveConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager leaveConversationWithUUID:dCopy];
}

- (void)buzzMember:(id)member destinationID:(id)d invitationContext:(id)context conversationUUID:(id)iD
{
  iDCopy = iD;
  contextCopy = context;
  dCopy = d;
  memberCopy = member;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager buzzMember:memberCopy destinationID:dCopy invitationContext:contextCopy conversationUUID:iDCopy];
}

- (void)kickMember:(id)member conversationUUID:(id)d
{
  dCopy = d;
  memberCopy = member;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager kickMember:memberCopy conversationUUID:dCopy];
}

- (void)addScreenSharingType:(unint64_t)type forConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager addScreenSharingType:type forConversationUUID:dCopy];
}

- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager getLatestRemoteScreenShareAttributesWithCompletionHandler:handlerCopy];
}

- (void)generateLinkForConversationUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager generateLinkForConversationUUID:dCopy completionHandler:handlerCopy];
}

- (void)generateLinkWithInvitedMemberHandles:(id)handles linkLifetimeScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  handlesCopy = handles;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager generateLinkWithInvitedMemberHandles:handlesCopy linkLifetimeScope:scope completionHandler:handlerCopy];
}

- (void)addInvitedMemberHandles:(id)handles toConversationLink:(id)link completionHandler:(id)handler
{
  handlerCopy = handler;
  linkCopy = link;
  handlesCopy = handles;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager addInvitedMemberHandles:handlesCopy toConversationLink:linkCopy completionHandler:handlerCopy];
}

- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lCopy = l;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager activateConversationNoticeWithActionURL:lCopy bundleIdentifier:identifierCopy];
}

- (void)removeConversationNoticeWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager removeConversationNoticeWithUUID:dCopy];
}

- (void)getSharePlayAvailableWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  handlerCopy[2](handlerCopy, [conversationManager isSharePlayAvailable]);
}

- (void)getScreenSharingAvailableWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  handlerCopy[2](handlerCopy, [conversationManager isScreenSharingAvailable]);
}

- (void)fetchUpcomingNoticeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager fetchUpcomingNoticeWithCompletionHandler:handlerCopy];
}

- (void)invalidateLink:(id)link deleteReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  linkCopy = link;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager invalidateLink:linkCopy deleteReason:reason completionHandler:handlerCopy];
}

- (void)renewLink:(id)link expirationDate:(id)date reason:(unint64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  linkCopy = link;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager renewLink:linkCopy expirationDate:dateCopy reason:reason completionHandler:handlerCopy];
}

- (void)checkLinkValidity:(id)validity completionHandler:(id)handler
{
  handlerCopy = handler;
  validityCopy = validity;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager checkLinkValidity:validityCopy completionHandler:handlerCopy];
}

- (void)getInactiveLinkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager getInactiveLinkWithCompletionHandler:handlerCopy];
}

- (void)activateLink:(id)link completionHandler:(id)handler
{
  handlerCopy = handler;
  linkCopy = link;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager activateLink:linkCopy completionHandler:handlerCopy];
}

- (void)setLinkName:(id)name forConversationLink:(id)link completionHandler:(id)handler
{
  handlerCopy = handler;
  linkCopy = link;
  nameCopy = name;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager setLinkName:nameCopy forConversationLink:linkCopy completionHandler:handlerCopy];
}

- (void)updateExternalParticipants:(id)participants
{
  participantsCopy = participants;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager updateExternalParticipants:participantsCopy];
}

- (void)approvePendingMember:(id)member forConversationUUID:(id)d
{
  dCopy = d;
  memberCopy = member;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager approvePendingMember:memberCopy forConversationUUID:dCopy];
}

- (void)rejectPendingMember:(id)member forConversationUUID:(id)d
{
  dCopy = d;
  memberCopy = member;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager rejectPendingMember:memberCopy forConversationUUID:dCopy];
}

- (void)updateConversationWithUUID:(id)d participantPresentationContexts:(id)contexts
{
  contextsCopy = contexts;
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager updateParticipantPresentationContexts:contextsCopy onConversationWithUUID:dCopy];
}

- (void)setGridDisplayMode:(unint64_t)mode forConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager setGridDisplayMode:mode forConversationWithUUID:dCopy];
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001EE144;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001EE24C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)setLocalParticipantAudioVideoMode:(unint64_t)mode forConversationUUID:(id)d
{
  dCopy = d;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager setLocalParticipantAudioVideoMode:mode forConversationUUID:dCopy];
}

- (void)updateLocalParticipantToAVLessWithPresentationMode:(unint64_t)mode forConversationUUID:(id)d
{
  dCopy = d;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager updateLocalParticipantToAVLessWithPresentationMode:mode forConversationUUID:dCopy];
}

- (void)registerMessagesGroupUUIDForConversationUUID:(id)d
{
  dCopy = d;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager registerMessagesGroupUUIDForConversationUUID:dCopy];
}

- (void)startTrackingCollaborationWithIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  dsCopy = ds;
  lCopy = l;
  identifierCopy = identifier;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager startTrackingCollaborationWithIdentifier:identifierCopy collaborationURL:lCopy cloudKitAppBundleIDs:dsCopy forConversationUUID:dCopy completionHandler:handlerCopy];
}

- (void)addCollaborationIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds forConversationUUID:(id)d
{
  dCopy = d;
  dsCopy = ds;
  lCopy = l;
  identifierCopy = identifier;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager addHighlightIdentifier:identifierCopy collaborationURL:lCopy cloudKitAppBundleIDs:dsCopy forConversationUUID:dCopy];
}

- (void)removeCollaborationIdentifier:(id)identifier forConversationUUID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager removeHighlightIdentifier:identifierCopy forConversationUUID:dCopy];
}

- (void)markCollaborationWithIdentifierOpened:(id)opened forConversationUUID:(id)d
{
  dCopy = d;
  openedCopy = opened;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager markCollaborationWithIdentifierOpened:openedCopy forConversationUUID:dCopy];
}

- (void)addCollaborationDictionary:(id)dictionary forConversationWithUUID:(id)d fromMe:(BOOL)me
{
  dictionaryCopy = dictionary;
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];
  v13 = TUEntitlementsModifyPendingCollaborationCapability;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001EE778;
  v16[3] = &unk_10061BE38;
  v16[4] = self;
  v17 = dictionaryCopy;
  v18 = dCopy;
  meCopy = me;
  v14 = dCopy;
  v15 = dictionaryCopy;
  sub_100004AA4(currentClient, v13, v16, 0, "[CSDConversationManagerXPCServer addCollaborationDictionary:forConversationWithUUID:fromMe:]");
}

- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler
{
  initiatorCopy = initiator;
  dCopy = d;
  handlerCopy = handler;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];
  v14 = TUEntitlementsAccessCollaborationDisclosuresCapability;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001EE974;
  v20[3] = &unk_10061AF98;
  v20[4] = self;
  v21 = initiatorCopy;
  v22 = dCopy;
  v23 = handlerCopy;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001EE9CC;
  v18[3] = &unk_10061A7E0;
  v19 = v23;
  v15 = v23;
  v16 = dCopy;
  v17 = initiatorCopy;
  sub_100004AA4(currentClient, v14, v20, v18, "[CSDConversationManagerXPCServer getNeedsDisclosureOfCollaborationInitiator:forConversationUUID:completionHandler:]");
}

- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d
{
  initiatorCopy = initiator;
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];
  v11 = TUEntitlementsAccessCollaborationDisclosuresCapability;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EEBD4;
  v14[3] = &unk_100619E58;
  v14[4] = self;
  v15 = initiatorCopy;
  v16 = dCopy;
  v12 = dCopy;
  v13 = initiatorCopy;
  sub_100004AA4(currentClient, v11, v14, 0, "[CSDConversationManagerXPCServer addDisclosedCollaborationInitiator:toConversationUUID:]");
}

- (void)getMessagesGroupDetailsForConversationUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v10 = [conversationsByUUID objectForKeyedSubscript:dCopy];

  if (!v10)
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = dCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (![(CSDConversationManagerXPCServer *)self _shouldSend:v10])
  {
LABEL_9:
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    goto LABEL_18;
  }

  messagesGroupUUID = [v10 messagesGroupUUID];
  if (messagesGroupUUID)
  {
    clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
    v13 = [clientManager clientsPassingTest:&stru_10061E360];
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1001EF04C;
      v23[3] = &unk_10061E388;
      v24 = messagesGroupUUID;
      v25 = handlerCopy;
      [firstObject performBlock:v23];

      v15 = v24;
    }

    else
    {
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] No Messages group provider was registered", buf, 2u);
      }

      v21 = TUConversationManagerMessagesErrorDomain;
      v26 = NSLocalizedDescriptionKey;
      v27 = @"No messages group details provider available";
      v22 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v15 = [NSError errorWithDomain:v21 code:1 userInfo:v22];

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v15);
    }
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Conversation with conversationUUID %@ is not associated with a Messages group", buf, 0xCu);
    }

    v18 = TUConversationManagerMessagesErrorDomain;
    v28 = NSLocalizedDescriptionKey;
    v29 = @"Conversation is not associated with a Messages group";
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    firstObject = [NSError errorWithDomain:v18 code:2 userInfo:v19];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, firstObject);
  }

LABEL_18:
}

- (void)updateMessagesGroupName:(id)name onConversationWithUUID:(id)d
{
  dCopy = d;
  nameCopy = name;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager updateMessagesGroupName:nameCopy onConversationWithUUID:dCopy];
}

- (void)updateMessagesGroupPhotoOnConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager updateMessagesGroupPhotoOnConversationWithUUID:dCopy];
}

- (void)requestParticipantToShareScreen:(id)screen forConversationUUID:(id)d
{
  dCopy = d;
  screenCopy = screen;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager requestParticipantToShareScreen:screenCopy forConversationUUID:dCopy];
}

- (void)cancelOrDenyScreenShareRequest:(id)request forConversationUUID:(id)d
{
  dCopy = d;
  requestCopy = request;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager cancelOrDenyScreenShareRequest:requestCopy forConversationUUID:dCopy];
}

- (void)prepareConversationWithUUID:(id)d withHandoffContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager prepareConversationWithUUID:dCopy withHandoffContext:contextCopy];
}

- (void)setLocalParticipantCluster:(id)cluster forConversationUUID:(id)d
{
  dCopy = d;
  clusterCopy = cluster;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager setLocalParticipantCluster:clusterCopy forConversationUUID:dCopy];
}

- (void)conversationManager:(id)manager conversation:(id)conversation addedMembersLocally:(id)locally
{
  conversationCopy = conversation;
  locallyCopy = locally;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EF5E8;
  v14[3] = &unk_10061E3B0;
  v15 = conversationCopy;
  v16 = locallyCopy;
  v11 = locallyCopy;
  v12 = conversationCopy;
  v13 = NSStringFromSelector("conversation:addedMembersLocally:");
  [clientManager performBlockOnClients:v14 coalescedByIdentifier:v13];
}

- (void)conversationManager:(id)manager conversation:(id)conversation buzzedMember:(id)member
{
  conversationCopy = conversation;
  memberCopy = member;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EF70C;
  v14[3] = &unk_10061E3B0;
  v15 = conversationCopy;
  v16 = memberCopy;
  v11 = memberCopy;
  v12 = conversationCopy;
  v13 = NSStringFromSelector("conversation:buzzedMember:");
  [clientManager performBlockOnClients:v14 coalescedByIdentifier:v13];
}

- (void)conversationManager:(id)manager conversationUpdateMessagesGroupPhoto:(id)photo
{
  photoCopy = photo;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001EF810;
  v10[3] = &unk_10061E3D8;
  v11 = photoCopy;
  v8 = photoCopy;
  v9 = NSStringFromSelector("conversationUpdatedMessagesGroupPhoto:");
  [clientManager performBlockOnClients:v10 coalescedByIdentifier:v9];
}

- (void)conversationManager:(id)manager updateIncomingPendingConversationsByGroupUUID:(id)d
{
  dCopy = d;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001EF914;
  v10[3] = &unk_10061E3D8;
  v11 = dCopy;
  v8 = dCopy;
  v9 = NSStringFromSelector("updateIncomingPendingConversationsByGroupUUID:");
  [clientManager performBlockOnClients:v10 coalescedByIdentifier:v9];
}

- (void)conversationManager:(id)manager activatedConversationLinksChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001EFA18;
  v10[3] = &unk_10061E3D8;
  v11 = changedCopy;
  v8 = changedCopy;
  v9 = NSStringFromSelector("updateActivatedConversationLinks:");
  [clientManager performBlockOnClients:v10 coalescedByIdentifier:v9];
}

- (void)notifyClientsOfConversationsByGroupUUIDUpdate
{
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  conversationsByGroupUUID = [conversationManager conversationsByGroupUUID];

  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001EFB38;
  v9[3] = &unk_10061E3B0;
  v9[4] = self;
  v10 = conversationsByGroupUUID;
  v7 = conversationsByGroupUUID;
  v8 = NSStringFromSelector("updateConversationsByGroupUUID:");
  [clientManager performBlockOnClients:v9 coalescedByIdentifier:v8];
}

- (void)notifyClientsOfMediaPrioritiesChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001EFCC0;
  v9[3] = &unk_10061E3D8;
  v10 = conversationCopy;
  v7 = conversationCopy;
  v8 = NSStringFromSelector("mediaPrioritiesChangedForConversation:");
  [clientManager filterClientsUsingPredicate:&stru_10061E3F8 andPerformBlock:v9 coalescedByIdentifier:v8];
}

- (void)conversationManager:(id)manager conversation:(id)conversation participant:(id)participant didReact:(id)react
{
  conversationCopy = conversation;
  participantCopy = participant;
  reactCopy = react;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001EFE24;
  v18[3] = &unk_10061E440;
  v19 = conversationCopy;
  v20 = participantCopy;
  v21 = reactCopy;
  v14 = reactCopy;
  v15 = participantCopy;
  v16 = conversationCopy;
  v17 = NSStringFromSelector("conversation:participant:didReact:");
  [clientManager filterClientsUsingPredicate:&stru_10061E418 andPerformBlock:v18 coalescedByIdentifier:v17];
}

- (void)conversationManager:(id)manager conversation:(id)conversation participantDidStopReacting:(id)reacting
{
  conversationCopy = conversation;
  reactingCopy = reacting;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EFF60;
  v14[3] = &unk_10061E3B0;
  v15 = conversationCopy;
  v16 = reactingCopy;
  v11 = reactingCopy;
  v12 = conversationCopy;
  v13 = NSStringFromSelector("conversation:participantDidStopReacting:");
  [clientManager filterClientsUsingPredicate:&stru_10061E460 andPerformBlock:v14 coalescedByIdentifier:v13];
}

- (void)conversationManager:(id)manager conversation:(id)conversation participant:(id)participant addedNotice:(id)notice
{
  conversationCopy = conversation;
  participantCopy = participant;
  noticeCopy = notice;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001F0098;
  v17[3] = &unk_10061E440;
  v18 = conversationCopy;
  v19 = participantCopy;
  v20 = noticeCopy;
  v13 = noticeCopy;
  v14 = participantCopy;
  v15 = conversationCopy;
  v16 = NSStringFromSelector("conversationManager:conversation:participant:addedNotice:");
  [clientManager performBlockOnClients:v17 coalescedByIdentifier:v16];
}

- (void)conversationManager:(id)manager conversation:(id)conversation receivedActivitySessionEvent:(id)event
{
  conversationCopy = conversation;
  eventCopy = event;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001F01A8;
  v13[3] = &unk_10061E3B0;
  v14 = conversationCopy;
  v15 = eventCopy;
  v10 = eventCopy;
  v11 = conversationCopy;
  v12 = NSStringFromSelector("conversationManager:conversation:receivedActivitySessionEvent:");
  [clientManager performBlockOnClients:v13 coalescedByIdentifier:v12];
}

- (void)conversationManager:(id)manager conversation:(id)conversation appLaunchState:(unint64_t)state forActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F029C;
  v14[3] = &unk_10061E488;
  v16 = sessionCopy;
  stateCopy = state;
  v15 = conversationCopy;
  v12 = sessionCopy;
  v13 = conversationCopy;
  [clientManager performBlockOnClients:v14];
}

- (void)conversationManager:(id)manager activityAuthorizationChangedForBundleIdentifier:(id)identifier
{
  managerCopy = manager;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F038C;
  v9[3] = &unk_10061E3D8;
  v10 = managerCopy;
  v7 = managerCopy;
  v8 = NSStringFromSelector("updateActivityAuthorizedBundleIdentifierState:");
  [clientManager performBlockOnClients:v9 coalescedByIdentifier:v8];
}

- (void)conversationManager:(id)manager trackedPendingMember:(id)member forConversationLink:(id)link
{
  memberCopy = member;
  linkCopy = link;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001F04EC;
  v13[3] = &unk_10061E3B0;
  v14 = memberCopy;
  v15 = linkCopy;
  v10 = linkCopy;
  v11 = memberCopy;
  v12 = NSStringFromSelector("receivedTrackedPendingMember:forConversationLink:");
  [clientManager performBlockOnClients:v13 coalescedByIdentifier:v12];
}

- (void)conversationManager:(id)manager conversationScreenSharingChanged:(id)changed forParticipant:(id)participant
{
  changedCopy = changed;
  participantCopy = participant;
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001F05D0;
  v12[3] = &unk_10061E3B0;
  v13 = changedCopy;
  v14 = participantCopy;
  v10 = participantCopy;
  v11 = changedCopy;
  [clientManager performBlockOnClients:v12];
}

- (void)conversationManager:(id)manager didChangeConversationAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F068C;
  v8[3] = &unk_10061E3D8;
  v9 = advertisementCopy;
  v7 = advertisementCopy;
  [clientManager performBlockOnClients:v8];
}

- (void)conversationManager:(id)manager conversation:(id)conversation didChangeStateForActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001F0790;
  v13[3] = &unk_10061E3B0;
  v14 = conversationCopy;
  v15 = sessionCopy;
  v10 = sessionCopy;
  v11 = conversationCopy;
  v12 = NSStringFromSelector("conversation:didChangeStateForActivitySession:");
  [clientManager performBlockOnClients:v13 coalescedByIdentifier:v12];
}

- (void)conversationManager:(id)manager conversation:(id)conversation didChangeSceneAssociationForActivitySession:(id)session
{
  conversationCopy = conversation;
  sessionCopy = session;
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001F0874;
  v12[3] = &unk_10061E3B0;
  v13 = conversationCopy;
  v14 = sessionCopy;
  v10 = sessionCopy;
  v11 = conversationCopy;
  [clientManager performBlockOnClients:v12];
}

- (void)conversationManager:(id)manager remoteScreenShareAttributesChanged:(id)changed isLocallySharing:(BOOL)sharing
{
  changedCopy = changed;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001F0968;
  v11[3] = &unk_10061E4B0;
  v12 = changedCopy;
  sharingCopy = sharing;
  v9 = changedCopy;
  v10 = NSStringFromSelector("remoteScreenShareAttributesChanged:isLocallySharing:");
  [clientManager performBlockOnClients:v11 coalescedByIdentifier:v10];
}

- (void)conversationManager:(id)manager remoteScreenShareEndedWithReason:(id)reason
{
  reasonCopy = reason;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F0A58;
  v9[3] = &unk_10061E3D8;
  v10 = reasonCopy;
  v7 = reasonCopy;
  v8 = NSStringFromSelector("remoteScreenShareEndedWithReason:");
  [clientManager performBlockOnClients:v9 coalescedByIdentifier:v8];
}

- (void)conversationManager:(id)manager sharePlayAvailableChanged:(BOOL)changed
{
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F0B10;
  v7[3] = &unk_10061E4D0;
  changedCopy = changed;
  v6 = NSStringFromSelector("sharePlayAvailableChanged:");
  [clientManager performBlockOnClients:v7 coalescedByIdentifier:v6];
}

- (void)conversationManager:(id)manager screenSharingAvailableChanged:(BOOL)changed
{
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F0BC8;
  v7[3] = &unk_10061E4D0;
  changedCopy = changed;
  v6 = NSStringFromSelector("screenSharingAvailableChanged:");
  [clientManager performBlockOnClients:v7 coalescedByIdentifier:v6];
}

- (void)conversationManager:(id)manager activeParticipant:(id)participant addedHighlightToConversation:(id)conversation highlightIdentifier:(id)identifier oldHighlightIdentifier:(id)highlightIdentifier isFirstAdd:(BOOL)add
{
  participantCopy = participant;
  conversationCopy = conversation;
  identifierCopy = identifier;
  highlightIdentifierCopy = highlightIdentifier;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001F0D48;
  v24[3] = &unk_10061E4F8;
  v25 = participantCopy;
  v26 = conversationCopy;
  v27 = identifierCopy;
  v28 = highlightIdentifierCopy;
  addCopy = add;
  v19 = highlightIdentifierCopy;
  v20 = identifierCopy;
  v21 = conversationCopy;
  v22 = participantCopy;
  v23 = NSStringFromSelector("activeParticipant:addedHighlightToConversation:highlightIdentifier:oldHighlightIdentifier:isFirstAdd:");
  [clientManager performBlockOnClients:v24 coalescedByIdentifier:v23];
}

- (void)conversationManager:(id)manager activeParticipant:(id)participant removedHighlightFrom:(id)from highlightIdentifier:(id)identifier
{
  participantCopy = participant;
  fromCopy = from;
  identifierCopy = identifier;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001F0EA0;
  v18[3] = &unk_10061E440;
  v19 = participantCopy;
  v20 = fromCopy;
  v21 = identifierCopy;
  v14 = identifierCopy;
  v15 = fromCopy;
  v16 = participantCopy;
  v17 = NSStringFromSelector("activeParticipant:removedHighlightFromConversation:highlightIdentifier:");
  [clientManager performBlockOnClients:v18 coalescedByIdentifier:v17];
}

- (void)conversationManager:(id)manager conversation:(id)conversation collaborationStateChanged:(int64_t)changed highlightIdentifier:(id)identifier
{
  conversationCopy = conversation;
  identifierCopy = identifier;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001F0FD8;
  v16[3] = &unk_10061E488;
  v18 = identifierCopy;
  changedCopy = changed;
  v17 = conversationCopy;
  v13 = identifierCopy;
  v14 = conversationCopy;
  v15 = NSStringFromSelector("conversation:collaborationStateChanged:highlightIdentifier:");
  [clientManager performBlockOnClients:v16 coalescedByIdentifier:v15];
}

- (void)conversationManager:(id)manager addedCollaborationDictionary:(id)dictionary forConversation:(id)conversation
{
  dictionaryCopy = dictionary;
  conversationCopy = conversation;
  queue = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  clientManager = [(CSDConversationManagerXPCServer *)self clientManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F1100;
  v14[3] = &unk_10061E3B0;
  v15 = dictionaryCopy;
  v16 = conversationCopy;
  v11 = conversationCopy;
  v12 = dictionaryCopy;
  v13 = NSStringFromSelector("addedCollaborationDictionary:forConversation:");
  [clientManager performBlockOnClients:v14 coalescedByIdentifier:v13];
}

- (void)updateRemoteControlStatus:(int64_t)status onConversationWithUUID:(id)d
{
  dCopy = d;
  conversationManager = [(CSDConversationManagerXPCServer *)self conversationManager];
  [conversationManager updateRemoteControlStatus:status onConversationWithUUID:dCopy];
}

@end