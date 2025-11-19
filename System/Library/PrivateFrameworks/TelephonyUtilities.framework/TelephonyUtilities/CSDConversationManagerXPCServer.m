@interface CSDConversationManagerXPCServer
- (BOOL)_shouldSend:(id)a3;
- (CSDConversationManagerXPCServer)initWithConversationManager:(id)a3 featureFlags:(id)a4;
- (id)_advertisementsOnSystemForClient:(id)a3;
- (id)_conversationsByGroupUUID:(id)a3 filteredForClient:(id)a4;
- (id)_filter:(id)a3 withClient:(id)a4;
- (void)activateConversationNoticeWithActionURL:(id)a3 bundleIdentifier:(id)a4;
- (void)activateLink:(id)a3 completionHandler:(id)a4;
- (void)activatedConversationLinks:(id)a3;
- (void)activityAuthorizedBundleIdentifierState:(id)a3;
- (void)addCollaborationDictionary:(id)a3 forConversationWithUUID:(id)a4 fromMe:(BOOL)a5;
- (void)addCollaborationIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6;
- (void)addDisclosedCollaborationInitiator:(id)a3 toConversationUUID:(id)a4;
- (void)addInvitedMemberHandles:(id)a3 toConversationLink:(id)a4 completionHandler:(id)a5;
- (void)addRemoteMembers:(id)a3 otherInvitedHandles:(id)a4 invitationPreferences:(id)a5 toConversationWithUUID:(id)a6;
- (void)addScreenSharingType:(unint64_t)a3 forConversationUUID:(id)a4;
- (void)advertisementsOnSystem:(id)a3;
- (void)approvePendingMember:(id)a3 forConversationUUID:(id)a4;
- (void)buzzMember:(id)a3 destinationID:(id)a4 invitationContext:(id)a5 conversationUUID:(id)a6;
- (void)cancelOrDenyScreenShareRequest:(id)a3 forConversationUUID:(id)a4;
- (void)checkLinkValidity:(id)a3 completionHandler:(id)a4;
- (void)conversationManager:(id)a3 activatedConversationLinksChanged:(id)a4;
- (void)conversationManager:(id)a3 activeParticipant:(id)a4 addedHighlightToConversation:(id)a5 highlightIdentifier:(id)a6 oldHighlightIdentifier:(id)a7 isFirstAdd:(BOOL)a8;
- (void)conversationManager:(id)a3 activeParticipant:(id)a4 removedHighlightFrom:(id)a5 highlightIdentifier:(id)a6;
- (void)conversationManager:(id)a3 activityAuthorizationChangedForBundleIdentifier:(id)a4;
- (void)conversationManager:(id)a3 addedCollaborationDictionary:(id)a4 forConversation:(id)a5;
- (void)conversationManager:(id)a3 conversation:(id)a4 addedMembersLocally:(id)a5;
- (void)conversationManager:(id)a3 conversation:(id)a4 appLaunchState:(unint64_t)a5 forActivitySession:(id)a6;
- (void)conversationManager:(id)a3 conversation:(id)a4 buzzedMember:(id)a5;
- (void)conversationManager:(id)a3 conversation:(id)a4 collaborationStateChanged:(int64_t)a5 highlightIdentifier:(id)a6;
- (void)conversationManager:(id)a3 conversation:(id)a4 didChangeSceneAssociationForActivitySession:(id)a5;
- (void)conversationManager:(id)a3 conversation:(id)a4 didChangeStateForActivitySession:(id)a5;
- (void)conversationManager:(id)a3 conversation:(id)a4 participant:(id)a5 addedNotice:(id)a6;
- (void)conversationManager:(id)a3 conversation:(id)a4 participant:(id)a5 didReact:(id)a6;
- (void)conversationManager:(id)a3 conversation:(id)a4 participantDidStopReacting:(id)a5;
- (void)conversationManager:(id)a3 conversation:(id)a4 receivedActivitySessionEvent:(id)a5;
- (void)conversationManager:(id)a3 conversationScreenSharingChanged:(id)a4 forParticipant:(id)a5;
- (void)conversationManager:(id)a3 conversationUpdateMessagesGroupPhoto:(id)a4;
- (void)conversationManager:(id)a3 didChangeConversationAdvertisement:(id)a4;
- (void)conversationManager:(id)a3 remoteScreenShareAttributesChanged:(id)a4 isLocallySharing:(BOOL)a5;
- (void)conversationManager:(id)a3 remoteScreenShareEndedWithReason:(id)a4;
- (void)conversationManager:(id)a3 screenSharingAvailableChanged:(BOOL)a4;
- (void)conversationManager:(id)a3 sharePlayAvailableChanged:(BOOL)a4;
- (void)conversationManager:(id)a3 trackedPendingMember:(id)a4 forConversationLink:(id)a5;
- (void)conversationManager:(id)a3 updateIncomingPendingConversationsByGroupUUID:(id)a4;
- (void)conversationsByGroupUUID:(id)a3;
- (void)createActivitySession:(id)a3 onConversationWithUUID:(id)a4 options:(unint64_t)a5;
- (void)dealloc;
- (void)endActivitySession:(id)a3 onConversationWithUUID:(id)a4;
- (void)fetchUpcomingNoticeWithCompletionHandler:(id)a3;
- (void)generateLinkForConversationUUID:(id)a3 completionHandler:(id)a4;
- (void)generateLinkWithInvitedMemberHandles:(id)a3 linkLifetimeScope:(int64_t)a4 completionHandler:(id)a5;
- (void)getInactiveLinkWithCompletionHandler:(id)a3;
- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)a3;
- (void)getMessagesGroupDetailsForConversationUUID:(id)a3 completionHandler:(id)a4;
- (void)getNeedsDisclosureOfCollaborationInitiator:(id)a3 forConversationUUID:(id)a4 completionHandler:(id)a5;
- (void)getScreenSharingAvailableWithCompletionHandler:(id)a3;
- (void)getSharePlayAvailableWithCompletionHandler:(id)a3;
- (void)incomingPendingConversationsByGroupUUID:(id)a3;
- (void)invalidate;
- (void)invalidateLink:(id)a3 deleteReason:(int64_t)a4 completionHandler:(id)a5;
- (void)joinConversationWithRequest:(id)a3;
- (void)kickMember:(id)a3 conversationUUID:(id)a4;
- (void)leaveActivitySession:(id)a3 onConversationWithUUID:(id)a4;
- (void)leaveConversationWithUUID:(id)a3;
- (void)markCollaborationWithIdentifierOpened:(id)a3 forConversationUUID:(id)a4;
- (void)notifyClientsOfConversationsByGroupUUIDUpdate;
- (void)notifyClientsOfMediaPrioritiesChangedForConversation:(id)a3;
- (void)notifyClientsToConnectIfNecessary;
- (void)prepareConversationWithUUID:(id)a3 withHandoffContext:(id)a4;
- (void)presentDismissalAlertForActivitySessionWithUUID:(id)a3 onConversationWithUUID:(id)a4;
- (void)pseudonymsByCallUUID:(id)a3;
- (void)refreshActiveConversations;
- (void)registerClient:(id)a3;
- (void)registerMessagesGroupUUIDForConversationUUID:(id)a3;
- (void)rejectPendingMember:(id)a3 forConversationUUID:(id)a4;
- (void)removeCollaborationIdentifier:(id)a3 forConversationUUID:(id)a4;
- (void)removeConversationNoticeWithUUID:(id)a3;
- (void)renewLink:(id)a3 expirationDate:(id)a4 reason:(unint64_t)a5 completionHandler:(id)a6;
- (void)requestParticipantToShareScreen:(id)a3 forConversationUUID:(id)a4;
- (void)setGridDisplayMode:(unint64_t)a3 forConversationWithUUID:(id)a4;
- (void)setLinkName:(id)a3 forConversationLink:(id)a4 completionHandler:(id)a5;
- (void)setLocalParticipantAudioVideoMode:(unint64_t)a3 forConversationUUID:(id)a4;
- (void)setLocalParticipantCluster:(id)a3 forConversationUUID:(id)a4;
- (void)setUsingAirplay:(BOOL)a3 onActivitySession:(id)a4 onConversationWithUUID:(id)a5;
- (void)startTrackingCollaborationWithIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6 completionHandler:(id)a7;
- (void)unregisterClient:(id)a3;
- (void)updateConversationWithUUID:(id)a3 participantPresentationContexts:(id)a4;
- (void)updateExternalParticipants:(id)a3;
- (void)updateLocalParticipantToAVLessWithPresentationMode:(unint64_t)a3 forConversationUUID:(id)a4;
- (void)updateMessagesGroupName:(id)a3 onConversationWithUUID:(id)a4;
- (void)updateMessagesGroupPhotoOnConversationWithUUID:(id)a3;
- (void)updateRemoteControlStatus:(int64_t)a3 onConversationWithUUID:(id)a4;
@end

@implementation CSDConversationManagerXPCServer

- (void)refreshActiveConversations
{
  v3 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v4 refreshActiveParticipantsList];
}

- (CSDConversationManagerXPCServer)initWithConversationManager:(id)a3 featureFlags:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = CSDConversationManagerXPCServer;
  v9 = [(CSDConversationManagerXPCServer *)&v22 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.conversationmanagerxpcserver", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_conversationManager, a3);
    objc_storeStrong(&v9->_featureFlags, a4);
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
    v16 = [(CSDConversationManagerXPCServer *)v15 queue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001EB9A0;
    v18[3] = &unk_100619D38;
    v19 = v15;
    dispatch_async(v16, v18);
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
  v3 = [(CSDConversationManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EBAEC;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)notifyClientsToConnectIfNecessary
{
  v3 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v5 = [v4 conversationsByUUID];
  v6 = [v5 count];

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

- (BOOL)_shouldSend:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self clientManager];
  v6 = [v5 currentClient];

  if ([v6 isRemote])
  {
    v7 = [v4 provider];
    v8 = [v7 isDefaultProvider];

    if ((v8 & 1) != 0 || (-[CSDConversationManagerXPCServer featureFlags](self, "featureFlags"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 groupFacetimeAsAServiceEnabled], v9, !v10))
    {
      v16 = [(CSDConversationManagerXPCServer *)self featureFlags];
      if (TUGreenTeaLagunaEnabled())
      {
        [v4 mergedRemoteMembers];
      }

      else
      {
        [v4 remoteMembers];
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
      v12 = [v11 providerIdentifiersForClient:v6];

      if ([v12 count])
      {
        v13 = [v4 provider];
        v14 = [v13 identifier];
        v15 = [v12 containsObject:v14];
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

- (id)_conversationsByGroupUUID:(id)a3 filteredForClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = [(CSDConversationManagerXPCServer *)self _filter:v6 withClient:v7];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (id)_advertisementsOnSystemForClient:(id)a3
{
  v4 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v6 = [v5 advertisementsBySessionUUID];

  return v6;
}

- (id)_filter:(id)a3 withClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isRemote])
  {
    v8 = +[CSDConversationProviderManager sharedInstance];
    v34 = v7;
    v9 = [v8 providerIdentifiersForClient:v7];

    v10 = objc_alloc_init(NSMutableDictionary);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v35 = v6;
    v11 = v6;
    v12 = v9;
    v13 = [v11 allValues];
    v38 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(v13);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        v17 = [v16 provider];
        v18 = [v17 isDefaultProvider];

        if (!v18)
        {
          v20 = [v16 provider];
          v21 = [v20 identifier];
          if ([v12 containsObject:v21])
          {

            goto LABEL_18;
          }

          v25 = [(CSDConversationManagerXPCServer *)self featureFlags];
          if ([v25 sharePlayInCallsEnabled])
          {
            [v16 provider];
            v26 = v13;
            v27 = v10;
            v28 = self;
            v30 = v29 = v12;
            v37 = [v30 isTelephonyWithSharePlayProvider];

            v12 = v29;
            self = v28;
            v10 = v27;
            v13 = v26;
            v14 = v36;

            if (!v37)
            {
              goto LABEL_20;
            }

LABEL_18:
            v20 = [v16 copy];
            v21 = [v16 groupUUID];
            [v10 setObject:v20 forKeyedSubscript:v21];
          }

          else
          {
          }

          goto LABEL_20;
        }

        v19 = [(CSDConversationManagerXPCServer *)self featureFlags];
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
      v31 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
      v38 = v31;
      if (!v31)
      {
LABEL_24:

        v32 = [v10 copy];
        v7 = v34;
        v6 = v35;
        goto LABEL_26;
      }
    }
  }

  v32 = v6;
LABEL_26:

  return v32;
}

- (void)conversationsByGroupUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self clientManager];
  v10 = [v6 currentClient];

  v7 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v8 = [v7 conversationsByGroupUUID];
  v9 = [(CSDConversationManagerXPCServer *)self _conversationsByGroupUUID:v8 filteredForClient:v10];
  v4[2](v4, v9);
}

- (void)advertisementsOnSystem:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self clientManager];
  v8 = [v6 currentClient];

  v7 = [(CSDConversationManagerXPCServer *)self _advertisementsOnSystemForClient:v8];
  v4[2](v4, v7);
}

- (void)incomingPendingConversationsByGroupUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v7 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v6 = [v7 incomingPendingConversationsByGroupUUID];
  v4[2](v4, v6);
}

- (void)pseudonymsByCallUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v7 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v6 = [v7 pseudonymsByCallUUID];
  v4[2](v4, v6);
}

- (void)activityAuthorizedBundleIdentifierState:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v7 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v6 = [v7 activityAuthorizedBundleIdentifierState];
  v4[2](v4, v6);
}

- (void)activatedConversationLinks:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v10 = 0;
  v7 = [v6 activatedConversationLinksWithError:&v10];
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
    v4[2](v4, v7);
  }
}

- (void)addRemoteMembers:(id)a3 otherInvitedHandles:(id)a4 invitationPreferences:(id)a5 toConversationWithUUID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v15 addRemoteMembers:v13 otherInvitedHandles:v12 invitationPreferences:v11 toConversationWithUUID:v10];
}

- (void)createActivitySession:(id)a3 onConversationWithUUID:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(CSDConversationManagerXPCServer *)self clientManager];
  v12 = [v11 currentClient];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001EC894;
  v17[3] = &unk_10061D3F0;
  v17[4] = &v18;
  sub_100004AA4(v12, @"override-activity-verification", v17, 0, "[CSDConversationManagerXPCServer createActivitySession:onConversationWithUUID:options:]");
  if (*(v19 + 24) != 1 || ([v8 bundleIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v14 = [v12 processBundleIdentifier];
    [v8 setBundleIdentifier:v14];
  }

  v15 = [v8 bundleIdentifier];

  if (v15)
  {
    v16 = [(CSDConversationManagerXPCServer *)self conversationManager];
    [v16 createActivitySession:v8 onConversationWithUUID:v9 options:a5 withCompletion:&stru_10061E340];
  }

  else
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10047AD64(v16);
    }
  }

  _Block_object_dispose(&v18, 8);
}

- (void)leaveActivitySession:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 leaveActivitySession:v7 onConversationWithUUID:v6];
}

- (void)endActivitySession:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 endActivitySession:v7 onConversationWithUUID:v6];
}

- (void)setUsingAirplay:(BOOL)a3 onActivitySession:(id)a4 onConversationWithUUID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSDConversationManagerXPCServer *)self clientManager];
  v11 = [v10 currentClient];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001ECAE8;
  v14[3] = &unk_10061BE38;
  v17 = a3;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  sub_100004AA4(v11, @"modify-activity-session-airplay", v14, 0, "[CSDConversationManagerXPCServer setUsingAirplay:onActivitySession:onConversationWithUUID:]");
}

- (void)presentDismissalAlertForActivitySessionWithUUID:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 presentDismissalAlertForActivitySessionWithUUID:v7 onConversationWithUUID:v6];
}

- (void)joinConversationWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v6 joinConversationWithRequest:v4];
}

- (void)leaveConversationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v6 leaveConversationWithUUID:v4];
}

- (void)buzzMember:(id)a3 destinationID:(id)a4 invitationContext:(id)a5 conversationUUID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v15 buzzMember:v13 destinationID:v12 invitationContext:v11 conversationUUID:v10];
}

- (void)kickMember:(id)a3 conversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 kickMember:v7 conversationUUID:v6];
}

- (void)addScreenSharingType:(unint64_t)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v8 addScreenSharingType:a3 forConversationUUID:v6];
}

- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v6 getLatestRemoteScreenShareAttributesWithCompletionHandler:v4];
}

- (void)generateLinkForConversationUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 generateLinkForConversationUUID:v7 completionHandler:v6];
}

- (void)generateLinkWithInvitedMemberHandles:(id)a3 linkLifetimeScope:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v11 generateLinkWithInvitedMemberHandles:v9 linkLifetimeScope:a4 completionHandler:v8];
}

- (void)addInvitedMemberHandles:(id)a3 toConversationLink:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v12 addInvitedMemberHandles:v10 toConversationLink:v9 completionHandler:v8];
}

- (void)activateConversationNoticeWithActionURL:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 activateConversationNoticeWithActionURL:v7 bundleIdentifier:v6];
}

- (void)removeConversationNoticeWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v6 removeConversationNoticeWithUUID:v4];
}

- (void)getSharePlayAvailableWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v4[2](v4, [v6 isSharePlayAvailable]);
}

- (void)getScreenSharingAvailableWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v4[2](v4, [v6 isScreenSharingAvailable]);
}

- (void)fetchUpcomingNoticeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v6 fetchUpcomingNoticeWithCompletionHandler:v4];
}

- (void)invalidateLink:(id)a3 deleteReason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v11 invalidateLink:v9 deleteReason:a4 completionHandler:v8];
}

- (void)renewLink:(id)a3 expirationDate:(id)a4 reason:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v13 renewLink:v12 expirationDate:v11 reason:a5 completionHandler:v10];
}

- (void)checkLinkValidity:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 checkLinkValidity:v7 completionHandler:v6];
}

- (void)getInactiveLinkWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v6 getInactiveLinkWithCompletionHandler:v4];
}

- (void)activateLink:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 activateLink:v7 completionHandler:v6];
}

- (void)setLinkName:(id)a3 forConversationLink:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v12 setLinkName:v10 forConversationLink:v9 completionHandler:v8];
}

- (void)updateExternalParticipants:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v6 updateExternalParticipants:v4];
}

- (void)approvePendingMember:(id)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 approvePendingMember:v7 forConversationUUID:v6];
}

- (void)rejectPendingMember:(id)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 rejectPendingMember:v7 forConversationUUID:v6];
}

- (void)updateConversationWithUUID:(id)a3 participantPresentationContexts:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 updateParticipantPresentationContexts:v6 onConversationWithUUID:v7];
}

- (void)setGridDisplayMode:(unint64_t)a3 forConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v8 setGridDisplayMode:a3 forConversationWithUUID:v6];
}

- (void)registerClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001EE144;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)unregisterClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001EE24C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setLocalParticipantAudioVideoMode:(unint64_t)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v7 setLocalParticipantAudioVideoMode:a3 forConversationUUID:v6];
}

- (void)updateLocalParticipantToAVLessWithPresentationMode:(unint64_t)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v7 updateLocalParticipantToAVLessWithPresentationMode:a3 forConversationUUID:v6];
}

- (void)registerMessagesGroupUUIDForConversationUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v5 registerMessagesGroupUUIDForConversationUUID:v4];
}

- (void)startTrackingCollaborationWithIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v17 startTrackingCollaborationWithIdentifier:v16 collaborationURL:v15 cloudKitAppBundleIDs:v14 forConversationUUID:v13 completionHandler:v12];
}

- (void)addCollaborationIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v14 addHighlightIdentifier:v13 collaborationURL:v12 cloudKitAppBundleIDs:v11 forConversationUUID:v10];
}

- (void)removeCollaborationIdentifier:(id)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v8 removeHighlightIdentifier:v7 forConversationUUID:v6];
}

- (void)markCollaborationWithIdentifierOpened:(id)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v8 markCollaborationWithIdentifierOpened:v7 forConversationUUID:v6];
}

- (void)addCollaborationDictionary:(id)a3 forConversationWithUUID:(id)a4 fromMe:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(CSDConversationManagerXPCServer *)self clientManager];
  v12 = [v11 currentClient];
  v13 = TUEntitlementsModifyPendingCollaborationCapability;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001EE778;
  v16[3] = &unk_10061BE38;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = a5;
  v14 = v9;
  v15 = v8;
  sub_100004AA4(v12, v13, v16, 0, "[CSDConversationManagerXPCServer addCollaborationDictionary:forConversationWithUUID:fromMe:]");
}

- (void)getNeedsDisclosureOfCollaborationInitiator:(id)a3 forConversationUUID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(CSDConversationManagerXPCServer *)self clientManager];
  v13 = [v12 currentClient];
  v14 = TUEntitlementsAccessCollaborationDisclosuresCapability;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001EE974;
  v20[3] = &unk_10061AF98;
  v20[4] = self;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001EE9CC;
  v18[3] = &unk_10061A7E0;
  v19 = v23;
  v15 = v23;
  v16 = v9;
  v17 = v8;
  sub_100004AA4(v13, v14, v20, v18, "[CSDConversationManagerXPCServer getNeedsDisclosureOfCollaborationInitiator:forConversationUUID:completionHandler:]");
}

- (void)addDisclosedCollaborationInitiator:(id)a3 toConversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self clientManager];
  v10 = [v9 currentClient];
  v11 = TUEntitlementsAccessCollaborationDisclosuresCapability;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EEBD4;
  v14[3] = &unk_100619E58;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  sub_100004AA4(v10, v11, v14, 0, "[CSDConversationManagerXPCServer addDisclosedCollaborationInitiator:toConversationUUID:]");
}

- (void)getMessagesGroupDetailsForConversationUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v9 = [v8 conversationsByUUID];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (!v10)
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (![(CSDConversationManagerXPCServer *)self _shouldSend:v10])
  {
LABEL_9:
    (*(v7 + 2))(v7, 0, 0, 0);
    goto LABEL_18;
  }

  v11 = [v10 messagesGroupUUID];
  if (v11)
  {
    v12 = [(CSDConversationManagerXPCServer *)self clientManager];
    v13 = [v12 clientsPassingTest:&stru_10061E360];
    v14 = [v13 firstObject];

    if (v14)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1001EF04C;
      v23[3] = &unk_10061E388;
      v24 = v11;
      v25 = v7;
      [v14 performBlock:v23];

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

      (*(v7 + 2))(v7, 0, 0, v15);
    }
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Conversation with conversationUUID %@ is not associated with a Messages group", buf, 0xCu);
    }

    v18 = TUConversationManagerMessagesErrorDomain;
    v28 = NSLocalizedDescriptionKey;
    v29 = @"Conversation is not associated with a Messages group";
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v14 = [NSError errorWithDomain:v18 code:2 userInfo:v19];

    (*(v7 + 2))(v7, 0, 0, v14);
  }

LABEL_18:
}

- (void)updateMessagesGroupName:(id)a3 onConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 updateMessagesGroupName:v7 onConversationWithUUID:v6];
}

- (void)updateMessagesGroupPhotoOnConversationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v6 updateMessagesGroupPhotoOnConversationWithUUID:v4];
}

- (void)requestParticipantToShareScreen:(id)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 requestParticipantToShareScreen:v7 forConversationUUID:v6];
}

- (void)cancelOrDenyScreenShareRequest:(id)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v8 cancelOrDenyScreenShareRequest:v7 forConversationUUID:v6];
}

- (void)prepareConversationWithUUID:(id)a3 withHandoffContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 prepareConversationWithUUID:v7 withHandoffContext:v6];
}

- (void)setLocalParticipantCluster:(id)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v9 setLocalParticipantCluster:v7 forConversationUUID:v6];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 addedMembersLocally:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v9);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v10 = [(CSDConversationManagerXPCServer *)self clientManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EF5E8;
  v14[3] = &unk_10061E3B0;
  v15 = v7;
  v16 = v8;
  v11 = v8;
  v12 = v7;
  v13 = NSStringFromSelector("conversation:addedMembersLocally:");
  [v10 performBlockOnClients:v14 coalescedByIdentifier:v13];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 buzzedMember:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v9);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v10 = [(CSDConversationManagerXPCServer *)self clientManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EF70C;
  v14[3] = &unk_10061E3B0;
  v15 = v7;
  v16 = v8;
  v11 = v8;
  v12 = v7;
  v13 = NSStringFromSelector("conversation:buzzedMember:");
  [v10 performBlockOnClients:v14 coalescedByIdentifier:v13];
}

- (void)conversationManager:(id)a3 conversationUpdateMessagesGroupPhoto:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v6);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v7 = [(CSDConversationManagerXPCServer *)self clientManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001EF810;
  v10[3] = &unk_10061E3D8;
  v11 = v5;
  v8 = v5;
  v9 = NSStringFromSelector("conversationUpdatedMessagesGroupPhoto:");
  [v7 performBlockOnClients:v10 coalescedByIdentifier:v9];
}

- (void)conversationManager:(id)a3 updateIncomingPendingConversationsByGroupUUID:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v6);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v7 = [(CSDConversationManagerXPCServer *)self clientManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001EF914;
  v10[3] = &unk_10061E3D8;
  v11 = v5;
  v8 = v5;
  v9 = NSStringFromSelector("updateIncomingPendingConversationsByGroupUUID:");
  [v7 performBlockOnClients:v10 coalescedByIdentifier:v9];
}

- (void)conversationManager:(id)a3 activatedConversationLinksChanged:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v6);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v7 = [(CSDConversationManagerXPCServer *)self clientManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001EFA18;
  v10[3] = &unk_10061E3D8;
  v11 = v5;
  v8 = v5;
  v9 = NSStringFromSelector("updateActivatedConversationLinks:");
  [v7 performBlockOnClients:v10 coalescedByIdentifier:v9];
}

- (void)notifyClientsOfConversationsByGroupUUIDUpdate
{
  v3 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v3);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v4 = [(CSDConversationManagerXPCServer *)self conversationManager];
  v5 = [v4 conversationsByGroupUUID];

  v6 = [(CSDConversationManagerXPCServer *)self clientManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001EFB38;
  v9[3] = &unk_10061E3B0;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  v8 = NSStringFromSelector("updateConversationsByGroupUUID:");
  [v6 performBlockOnClients:v9 coalescedByIdentifier:v8];
}

- (void)notifyClientsOfMediaPrioritiesChangedForConversation:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDConversationManagerXPCServer *)self clientManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001EFCC0;
  v9[3] = &unk_10061E3D8;
  v10 = v4;
  v7 = v4;
  v8 = NSStringFromSelector("mediaPrioritiesChangedForConversation:");
  [v6 filterClientsUsingPredicate:&stru_10061E3F8 andPerformBlock:v9 coalescedByIdentifier:v8];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 participant:(id)a5 didReact:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v12);

  v13 = [(CSDConversationManagerXPCServer *)self clientManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001EFE24;
  v18[3] = &unk_10061E440;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = NSStringFromSelector("conversation:participant:didReact:");
  [v13 filterClientsUsingPredicate:&stru_10061E418 andPerformBlock:v18 coalescedByIdentifier:v17];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 participantDidStopReacting:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CSDConversationManagerXPCServer *)self clientManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EFF60;
  v14[3] = &unk_10061E3B0;
  v15 = v7;
  v16 = v8;
  v11 = v8;
  v12 = v7;
  v13 = NSStringFromSelector("conversation:participantDidStopReacting:");
  [v10 filterClientsUsingPredicate:&stru_10061E460 andPerformBlock:v14 coalescedByIdentifier:v13];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 participant:(id)a5 addedNotice:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v12 = [(CSDConversationManagerXPCServer *)self clientManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001F0098;
  v17[3] = &unk_10061E440;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = NSStringFromSelector("conversationManager:conversation:participant:addedNotice:");
  [v12 performBlockOnClients:v17 coalescedByIdentifier:v16];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 receivedActivitySessionEvent:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v9 = [(CSDConversationManagerXPCServer *)self clientManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001F01A8;
  v13[3] = &unk_10061E3B0;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  v12 = NSStringFromSelector("conversationManager:conversation:receivedActivitySessionEvent:");
  [v9 performBlockOnClients:v13 coalescedByIdentifier:v12];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 appLaunchState:(unint64_t)a5 forActivitySession:(id)a6
{
  v9 = a4;
  v10 = a6;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v11 = [(CSDConversationManagerXPCServer *)self clientManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F029C;
  v14[3] = &unk_10061E488;
  v16 = v10;
  v17 = a5;
  v15 = v9;
  v12 = v10;
  v13 = v9;
  [v11 performBlockOnClients:v14];
}

- (void)conversationManager:(id)a3 activityAuthorizationChangedForBundleIdentifier:(id)a4
{
  v5 = a3;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v6 = [(CSDConversationManagerXPCServer *)self clientManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F038C;
  v9[3] = &unk_10061E3D8;
  v10 = v5;
  v7 = v5;
  v8 = NSStringFromSelector("updateActivityAuthorizedBundleIdentifierState:");
  [v6 performBlockOnClients:v9 coalescedByIdentifier:v8];
}

- (void)conversationManager:(id)a3 trackedPendingMember:(id)a4 forConversationLink:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v9 = [(CSDConversationManagerXPCServer *)self clientManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001F04EC;
  v13[3] = &unk_10061E3B0;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  v12 = NSStringFromSelector("receivedTrackedPendingMember:forConversationLink:");
  [v9 performBlockOnClients:v13 coalescedByIdentifier:v12];
}

- (void)conversationManager:(id)a3 conversationScreenSharingChanged:(id)a4 forParticipant:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDConversationManagerXPCServer *)self clientManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001F05D0;
  v12[3] = &unk_10061E3B0;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 performBlockOnClients:v12];
}

- (void)conversationManager:(id)a3 didChangeConversationAdvertisement:(id)a4
{
  v5 = a4;
  v6 = [(CSDConversationManagerXPCServer *)self clientManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F068C;
  v8[3] = &unk_10061E3D8;
  v9 = v5;
  v7 = v5;
  [v6 performBlockOnClients:v8];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 didChangeStateForActivitySession:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDConversationManagerXPCServer *)self clientManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001F0790;
  v13[3] = &unk_10061E3B0;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  v12 = NSStringFromSelector("conversation:didChangeStateForActivitySession:");
  [v9 performBlockOnClients:v13 coalescedByIdentifier:v12];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 didChangeSceneAssociationForActivitySession:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDConversationManagerXPCServer *)self clientManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001F0874;
  v12[3] = &unk_10061E3B0;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 performBlockOnClients:v12];
}

- (void)conversationManager:(id)a3 remoteScreenShareAttributesChanged:(id)a4 isLocallySharing:(BOOL)a5
{
  v7 = a4;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v8 = [(CSDConversationManagerXPCServer *)self clientManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001F0968;
  v11[3] = &unk_10061E4B0;
  v12 = v7;
  v13 = a5;
  v9 = v7;
  v10 = NSStringFromSelector("remoteScreenShareAttributesChanged:isLocallySharing:");
  [v8 performBlockOnClients:v11 coalescedByIdentifier:v10];
}

- (void)conversationManager:(id)a3 remoteScreenShareEndedWithReason:(id)a4
{
  v5 = a4;
  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v6 = [(CSDConversationManagerXPCServer *)self clientManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F0A58;
  v9[3] = &unk_10061E3D8;
  v10 = v5;
  v7 = v5;
  v8 = NSStringFromSelector("remoteScreenShareEndedWithReason:");
  [v6 performBlockOnClients:v9 coalescedByIdentifier:v8];
}

- (void)conversationManager:(id)a3 sharePlayAvailableChanged:(BOOL)a4
{
  v5 = [(CSDConversationManagerXPCServer *)self clientManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F0B10;
  v7[3] = &unk_10061E4D0;
  v8 = a4;
  v6 = NSStringFromSelector("sharePlayAvailableChanged:");
  [v5 performBlockOnClients:v7 coalescedByIdentifier:v6];
}

- (void)conversationManager:(id)a3 screenSharingAvailableChanged:(BOOL)a4
{
  v5 = [(CSDConversationManagerXPCServer *)self clientManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F0BC8;
  v7[3] = &unk_10061E4D0;
  v8 = a4;
  v6 = NSStringFromSelector("screenSharingAvailableChanged:");
  [v5 performBlockOnClients:v7 coalescedByIdentifier:v6];
}

- (void)conversationManager:(id)a3 activeParticipant:(id)a4 addedHighlightToConversation:(id)a5 highlightIdentifier:(id)a6 oldHighlightIdentifier:(id)a7 isFirstAdd:(BOOL)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v17);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v18 = [(CSDConversationManagerXPCServer *)self clientManager];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001F0D48;
  v24[3] = &unk_10061E4F8;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = a8;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = NSStringFromSelector("activeParticipant:addedHighlightToConversation:highlightIdentifier:oldHighlightIdentifier:isFirstAdd:");
  [v18 performBlockOnClients:v24 coalescedByIdentifier:v23];
}

- (void)conversationManager:(id)a3 activeParticipant:(id)a4 removedHighlightFrom:(id)a5 highlightIdentifier:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v12);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v13 = [(CSDConversationManagerXPCServer *)self clientManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001F0EA0;
  v18[3] = &unk_10061E440;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = NSStringFromSelector("activeParticipant:removedHighlightFromConversation:highlightIdentifier:");
  [v13 performBlockOnClients:v18 coalescedByIdentifier:v17];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 collaborationStateChanged:(int64_t)a5 highlightIdentifier:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v11);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v12 = [(CSDConversationManagerXPCServer *)self clientManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001F0FD8;
  v16[3] = &unk_10061E488;
  v18 = v10;
  v19 = a5;
  v17 = v9;
  v13 = v10;
  v14 = v9;
  v15 = NSStringFromSelector("conversation:collaborationStateChanged:highlightIdentifier:");
  [v12 performBlockOnClients:v16 coalescedByIdentifier:v15];
}

- (void)conversationManager:(id)a3 addedCollaborationDictionary:(id)a4 forConversation:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDConversationManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v9);

  [(CSDConversationManagerXPCServer *)self notifyClientsToConnectIfNecessary];
  v10 = [(CSDConversationManagerXPCServer *)self clientManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F1100;
  v14[3] = &unk_10061E3B0;
  v15 = v7;
  v16 = v8;
  v11 = v8;
  v12 = v7;
  v13 = NSStringFromSelector("addedCollaborationDictionary:forConversation:");
  [v10 performBlockOnClients:v14 coalescedByIdentifier:v13];
}

- (void)updateRemoteControlStatus:(int64_t)a3 onConversationWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDConversationManagerXPCServer *)self conversationManager];
  [v7 updateRemoteControlStatus:a3 onConversationWithUUID:v6];
}

@end