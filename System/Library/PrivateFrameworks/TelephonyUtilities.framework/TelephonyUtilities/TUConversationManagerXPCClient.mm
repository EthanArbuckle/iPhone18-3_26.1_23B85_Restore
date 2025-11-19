@interface TUConversationManagerXPCClient
+ (NSSet)conversationManagerAllowedClasses;
+ (NSXPCInterface)conversationManagerClientXPCInterface;
+ (NSXPCInterface)conversationManagerServerXPCInterface;
+ (TUConversationManagerXPCServer)asynchronousServer;
+ (TUConversationManagerXPCServer)synchronousServer;
- (BOOL)autoSharePlayEnabled;
- (BOOL)isScreenSharingAvailable;
- (BOOL)isSharePlayAvailable;
- (BOOL)shouldConnectToHost;
- (NSDictionary)activityAuthorizedBundleIdentifiers;
- (NSDictionary)advertisementsOnSystem;
- (NSDictionary)conversationsByGroupUUID;
- (NSDictionary)incomingPendingConversationsByGroupUUID;
- (NSDictionary)pseudonymsByCallUUID;
- (NSSet)activatedConversationLinks;
- (NSXPCConnection)xpcConnection;
- (TUConversationManagerDataSourceDelegate)delegate;
- (TUConversationManagerXPCClient)init;
- (TUConversationMediaControllerDataSourceDelegate)mediaDelegate;
- (TUConversationReactionsControllerDataSourceDelegate)reactionsDelegate;
- (id)asynchronousServerWithErrorHandler:(id)a3;
- (id)synchronousServerWithErrorHandler:(id)a3;
- (void)_invokeCompletionHandler:(id)a3;
- (void)_requestInitialStateIfNecessary;
- (void)_requestInitialStateWithCompletionHandler:(id)a3;
- (void)activateConversationNoticeWithActionURL:(id)a3 bundleIdentifier:(id)a4;
- (void)activateLink:(id)a3 completionHandler:(id)a4;
- (void)activeParticipant:(id)a3 removedHighlightFromConversation:(id)a4 highlightIdentifier:(id)a5;
- (void)addCollaborationIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6;
- (void)addDisclosedCollaborationInitiator:(id)a3 toConversationUUID:(id)a4;
- (void)addInvitedMemberHandles:(id)a3 toConversationLink:(id)a4 completionHandler:(id)a5;
- (void)addRemoteMembers:(id)a3 otherInvitedHandles:(id)a4 invitationPreferences:(id)a5 toConversation:(id)a6;
- (void)addScreenSharingType:(unint64_t)a3 forConversation:(id)a4;
- (void)addedCollaborationDictionary:(id)a3 forConversation:(id)a4;
- (void)approvePendingMember:(id)a3 forConversation:(id)a4;
- (void)buzzMember:(id)a3 destinationID:(id)a4 invitationContext:(id)a5 conversation:(id)a6;
- (void)cancelOrDenyScreenShareRequest:(id)a3 forConversation:(id)a4;
- (void)checkLinkValidity:(id)a3 completionHandler:(id)a4;
- (void)conversation:(id)a3 addedMembersLocally:(id)a4;
- (void)conversation:(id)a3 appLaunchState:(unint64_t)a4 forActivitySession:(id)a5;
- (void)conversation:(id)a3 buzzedMember:(id)a4;
- (void)conversation:(id)a3 collaborationStateChanged:(int64_t)a4 highlightIdentifier:(id)a5;
- (void)conversation:(id)a3 didChangeSceneAssociationForActivitySession:(id)a4;
- (void)conversation:(id)a3 didChangeStateForActivitySession:(id)a4;
- (void)conversation:(id)a3 participant:(id)a4 addedNotice:(id)a5;
- (void)conversation:(id)a3 participant:(id)a4 didReact:(id)a5;
- (void)conversation:(id)a3 participantDidStopReacting:(id)a4;
- (void)conversation:(id)a3 receivedActivitySessionEvent:(id)a4;
- (void)conversation:(id)a3 screenSharingChangedForParticipant:(id)a4;
- (void)conversationUpdateMessagesGroupPhoto:(id)a3;
- (void)conversationUpdatedMessagesGroupPhoto:(id)a3;
- (void)createActivitySession:(id)a3 onConversation:(id)a4 options:(unint64_t)a5;
- (void)dealloc;
- (void)didChangeConversationAdvertisement:(id)a3;
- (void)endActivitySession:(id)a3 onConversation:(id)a4;
- (void)fetchUpcomingNoticeWithCompletionHandler:(id)a3;
- (void)generateLinkForConversation:(id)a3 completionHandler:(id)a4;
- (void)generateLinkWithInvitedMemberHandles:(id)a3 linkLifetimeScope:(int64_t)a4 completionHandler:(id)a5;
- (void)getInactiveLinkWithCompletionHandler:(id)a3;
- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)a3;
- (void)getMessagesGroupDetailsForConversationUUID:(id)a3 completionHandler:(id)a4;
- (void)getMessagesGroupDetailsForMessagesGroupUUID:(id)a3 completionHandler:(id)a4;
- (void)getNeedsDisclosureOfCollaborationInitiator:(id)a3 forConversationUUID:(id)a4 completionHandler:(id)a5;
- (void)handleServerDisconnect;
- (void)invalidate;
- (void)invalidateLink:(id)a3 deleteReason:(int64_t)a4 completionHandler:(id)a5;
- (void)joinConversationWithRequest:(id)a3;
- (void)kickMember:(id)a3 conversation:(id)a4;
- (void)leaveActivitySession:(id)a3 onConversation:(id)a4;
- (void)leaveConversationWithUUID:(id)a3;
- (void)markCollaborationWithIdentifierOpened:(id)a3 forConversationUUID:(id)a4;
- (void)mediaPrioritiesChangedForConversation:(id)a3;
- (void)prepareConversationWithUUID:(id)a3 withHandoffContext:(id)a4;
- (void)presentDismissalAlertForActivitySession:(id)a3 onConversation:(id)a4;
- (void)receivedTrackedPendingMember:(id)a3 forConversationLink:(id)a4;
- (void)refreshActiveConversations;
- (void)registerMessagesGroupUUIDForConversationUUID:(id)a3;
- (void)registerWithCompletionHandler:(id)a3;
- (void)rejectPendingMember:(id)a3 forConversation:(id)a4;
- (void)remoteScreenShareAttributesChanged:(id)a3 isLocallySharing:(BOOL)a4;
- (void)remoteScreenShareEndedWithReason:(id)a3;
- (void)removeCollaborationIdentifier:(id)a3 forConversationUUID:(id)a4;
- (void)removeConversationNoticeWithUUID:(id)a3;
- (void)renewLink:(id)a3 expirationDate:(id)a4 reason:(unint64_t)a5 completionHandler:(id)a6;
- (void)requestParticipantToShareScreen:(id)a3 forConversation:(id)a4;
- (void)screenSharingAvailableChanged:(BOOL)a3;
- (void)setGridDisplayMode:(unint64_t)a3 conversation:(id)a4;
- (void)setLinkName:(id)a3 forConversationLink:(id)a4 completionHandler:(id)a5;
- (void)setLocalParticipantAudioVideoMode:(unint64_t)a3 forConversationUUID:(id)a4;
- (void)setLocalParticipantCluster:(id)a3 forConversation:(id)a4;
- (void)setXpcConnection:(id)a3;
- (void)sharePlayAvailableChanged:(BOOL)a3;
- (void)startTrackingCollaborationWithIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6 completionHandler:(id)a7;
- (void)updateActivatedConversationLinks:(id)a3;
- (void)updateActivityAuthorizedBundleIdentifierState:(id)a3;
- (void)updateConversationWithUUID:(id)a3 participantPresentationContexts:(id)a4;
- (void)updateConversationsByGroupUUID:(id)a3;
- (void)updateExternalParticipants:(id)a3;
- (void)updateIncomingPendingConversationsByGroupUUID:(id)a3;
- (void)updateLocalParticipantToAVLessWithPresentationMode:(unint64_t)a3 forConversationUUID:(id)a4;
- (void)updateMessagesGroupName:(id)a3 onConversation:(id)a4;
- (void)updateRemoteControlStatus:(int64_t)a3 onConversation:(id)a4;
@end

@implementation TUConversationManagerXPCClient

- (TUConversationManagerXPCClient)init
{
  v19.receiver = self;
  v19.super_class = TUConversationManagerXPCClient;
  v2 = [(TUConversationManagerXPCClient *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_create("com.apple.telephonyutilities.conversationmanagerxpcclient", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    conversationsByGroupUUID = v3->_conversationsByGroupUUID;
    v7 = MEMORY[0x1E695E0F8];
    v3->_conversationsByGroupUUID = MEMORY[0x1E695E0F8];

    advertisementsOnSystem = v3->_advertisementsOnSystem;
    v3->_advertisementsOnSystem = v7;

    objc_initWeak(&location, v3);
    v9 = v3->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __38__TUConversationManagerXPCClient_init__block_invoke;
    handler[3] = &unk_1E7424C60;
    objc_copyWeak(&v17, &location);
    notify_register_dispatch("CSDConversationManagerClientsShouldConnectNotification", &v3->_shouldConnectToken, v9, handler);
    v10 = v3->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__TUConversationManagerXPCClient_init__block_invoke_3;
    v14[3] = &unk_1E7424C60;
    objc_copyWeak(&v15, &location);
    notify_register_dispatch("com.apple.telephonyutilities.callservicesdaemon.connectionrequest", &v3->_daemonLaunchToken, v10, v14);
    WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_7);
    [WeakRetained registerClient:v3];

    v12 = objc_loadWeakRetained(&sSynchronousServer_7);
    [v12 registerClient:v3];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __58__TUConversationManagerXPCClient_conversationsByGroupUUID__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _requestInitialStateIfNecessary];
  v2 = *(*(a1 + 32) + 64);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (NSDictionary)conversationsByGroupUUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v3 = [(TUConversationManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__TUConversationManagerXPCClient_conversationsByGroupUUID__block_invoke;
  v6[3] = &unk_1E7425C58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_requestInitialStateIfNecessary
{
  v3 = [(TUConversationManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(v3);

  if (![(TUConversationManagerXPCClient *)self hasRequestedInitialState])
  {

    [(TUConversationManagerXPCClient *)self _requestInitialStateWithCompletionHandler:0];
  }
}

- (BOOL)shouldConnectToHost
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(TUConversationManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(v3);

  if (self->_shouldConnectToHost)
  {
    shouldConnectToHost = 1;
  }

  else
  {
    state64 = 0;
    state = notify_get_state([(TUConversationManagerXPCClient *)self shouldConnectToken], &state64);
    if (state)
    {
      v6 = state;
      v7 = TUDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = v6;
        _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Bad state received when trying to get host conversation status: %lu", buf, 0xCu);
      }

      shouldConnectToHost = self->_shouldConnectToHost;
    }

    else
    {
      shouldConnectToHost = state64 != 0;
      self->_shouldConnectToHost = state64 != 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return shouldConnectToHost;
}

- (NSXPCConnection)xpcConnection
{
  os_unfair_lock_lock(&self->_accessorLock);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.telephonyutilities.callservicesdaemon.conversationmanager" options:0];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    v6 = [objc_opt_class() conversationManagerServerXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

    v7 = [objc_opt_class() conversationManagerClientXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__TUConversationManagerXPCClient_xpcConnection__block_invoke;
    v12[3] = &unk_1E7424998;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__TUConversationManagerXPCClient_xpcConnection__block_invoke_2;
    v10[3] = &unk_1E7424998;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v10];
    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  v8 = xpcConnection;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v8;
}

+ (NSXPCInterface)conversationManagerServerXPCInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TUConversationManagerXPCClient_conversationManagerServerXPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (conversationManagerServerXPCInterface_onceToken != -1)
  {
    dispatch_once(&conversationManagerServerXPCInterface_onceToken, block);
  }

  v2 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;

  return v2;
}

void __71__TUConversationManagerXPCClient_conversationManagerServerXPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A0A340];
  v3 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  conversationManagerServerXPCInterface_conversationManagerXPCInterface = v2;

  v4 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v5 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v4 setClasses:v5 forSelector:sel_conversationsByGroupUUID_ argumentIndex:0 ofReply:1];

  v6 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v7 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v6 setClasses:v7 forSelector:sel_advertisementsOnSystem_ argumentIndex:0 ofReply:1];

  v8 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v9 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v8 setClasses:v9 forSelector:sel_incomingPendingConversationsByGroupUUID_ argumentIndex:0 ofReply:1];

  v10 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v11 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v10 setClasses:v11 forSelector:sel_pseudonymsByCallUUID_ argumentIndex:0 ofReply:1];

  v12 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v13 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v12 setClasses:v13 forSelector:sel_activatedConversationLinks_ argumentIndex:0 ofReply:1];

  v14 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v15 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v14 setClasses:v15 forSelector:sel_activityAuthorizedBundleIdentifierState_ argumentIndex:0 ofReply:1];

  v16 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v17 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v16 setClasses:v17 forSelector:sel_updateExternalParticipants_ argumentIndex:0 ofReply:0];

  v18 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v19 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v18 setClasses:v19 forSelector:sel_addRemoteMembers_otherInvitedHandles_invitationPreferences_toConversationWithUUID_ argumentIndex:0 ofReply:0];

  v20 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v21 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v20 setClasses:v21 forSelector:sel_addRemoteMembers_otherInvitedHandles_invitationPreferences_toConversationWithUUID_ argumentIndex:1 ofReply:0];

  v22 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v23 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v22 setClasses:v23 forSelector:sel_addRemoteMembers_otherInvitedHandles_invitationPreferences_toConversationWithUUID_ argumentIndex:2 ofReply:0];

  v24 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v25 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v24 setClasses:v25 forSelector:sel_prepareConversationWithUUID_withHandoffContext_ argumentIndex:1 ofReply:0];

  v26 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v27 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v26 setClasses:v27 forSelector:sel_setSharePlayHandedOff_onConversationWithUUID_ argumentIndex:1 ofReply:0];

  v28 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v29 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v28 setClasses:v29 forSelector:sel_updateConversationWithUUID_participantPresentationContexts_ argumentIndex:1 ofReply:0];

  v30 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v31 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v30 setClasses:v31 forSelector:sel_getLatestRemoteScreenShareAttributesWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v32 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v33 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v32 setClasses:v33 forSelector:sel_getActiveLinksWithCreatedOnly_completionHandler_ argumentIndex:0 ofReply:1];

  v34 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v35 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v34 setClasses:v35 forSelector:sel_generateLinkForConversationUUID_completionHandler_ argumentIndex:0 ofReply:1];

  v36 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v37 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v36 setClasses:v37 forSelector:sel_requestParticipantToShareScreen_forConversationUUID_ argumentIndex:0 ofReply:0];

  v38 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v39 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v38 setClasses:v39 forSelector:sel_cancelOrDenyScreenShareRequest_forConversationUUID_ argumentIndex:0 ofReply:0];

  v40 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v41 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v40 setClasses:v41 forSelector:sel_setScreenEnabled_withScreenShareAttributes_forConversationWithUUID_ argumentIndex:0 ofReply:0];

  v42 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v43 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v42 setClasses:v43 forSelector:sel_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler_ argumentIndex:0 ofReply:0];

  v44 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v45 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v44 setClasses:v45 forSelector:sel_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler_ argumentIndex:0 ofReply:1];

  v46 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v47 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v46 setClasses:v47 forSelector:sel_addInvitedMemberHandles_toConversationLink_completionHandler_ argumentIndex:0 ofReply:0];

  v48 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v49 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v48 setClasses:v49 forSelector:sel_addInvitedMemberHandles_toConversationLink_completionHandler_ argumentIndex:1 ofReply:0];

  v50 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v51 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v50 setClasses:v51 forSelector:sel_addInvitedMemberHandles_toConversationLink_completionHandler_ argumentIndex:0 ofReply:1];

  v52 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v53 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v52 setClasses:v53 forSelector:sel_fetchUpcomingNoticeWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v54 = conversationManagerServerXPCInterface_conversationManagerXPCInterface;
  v55 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v54 setClasses:v55 forSelector:sel_setDownlinkMuted_forParticipants_inConversationWithUUID_completionHandler_ argumentIndex:1 ofReply:0];
}

+ (NSSet)conversationManagerAllowedClasses
{
  v27 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v27 setWithObjects:{v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (NSXPCInterface)conversationManagerClientXPCInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TUConversationManagerXPCClient_conversationManagerClientXPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (conversationManagerClientXPCInterface_onceToken != -1)
  {
    dispatch_once(&conversationManagerClientXPCInterface_onceToken, block);
  }

  v2 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;

  return v2;
}

void __71__TUConversationManagerXPCClient_conversationManagerClientXPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09F6588];
  v3 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  conversationManagerClientXPCInterface_conversationManagerClientXPCInterface = v2;

  v4 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v5 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v4 setClasses:v5 forSelector:sel_updateConversationsByGroupUUID_ argumentIndex:0 ofReply:0];

  v6 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v7 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v6 setClasses:v7 forSelector:sel_updateIncomingPendingConversationsByGroupUUID_ argumentIndex:0 ofReply:0];

  v8 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v9 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v8 setClasses:v9 forSelector:sel_updateActivatedConversationLinks_ argumentIndex:0 ofReply:0];

  v10 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v11 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v10 setClasses:v11 forSelector:sel_conversation_addedMembersLocally_ argumentIndex:0 ofReply:0];

  v12 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v13 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v12 setClasses:v13 forSelector:sel_conversation_addedMembersLocally_ argumentIndex:1 ofReply:0];

  v14 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v15 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v14 setClasses:v15 forSelector:sel_conversation_buzzedMember_ argumentIndex:0 ofReply:0];

  v16 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v17 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v16 setClasses:v17 forSelector:sel_conversation_buzzedMember_ argumentIndex:1 ofReply:0];

  v18 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v19 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v18 setClasses:v19 forSelector:sel_updateActivityAuthorizedBundleIdentifierState_ argumentIndex:0 ofReply:0];

  v20 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v21 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v20 setClasses:v21 forSelector:sel_receivedTrackedPendingMember_forConversationLink_ argumentIndex:0 ofReply:0];

  v22 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v23 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v22 setClasses:v23 forSelector:sel_receivedTrackedPendingMember_forConversationLink_ argumentIndex:1 ofReply:0];

  v24 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v25 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v24 setClasses:v25 forSelector:sel_didChangeConversationAdvertisement_ argumentIndex:0 ofReply:0];

  v26 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v27 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v26 setClasses:v27 forSelector:sel_remoteScreenShareAttributesChanged_isLocallySharing_ argumentIndex:0 ofReply:0];

  v28 = conversationManagerClientXPCInterface_conversationManagerClientXPCInterface;
  v29 = [*(a1 + 32) conversationManagerAllowedClasses];
  [v28 setClasses:v29 forSelector:sel_remoteScreenShareEndedWithReason_ argumentIndex:0 ofReply:0];
}

- (void)refreshActiveConversations
{
  v2 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_50_1];
  [v2 refreshActiveConversations];
}

- (BOOL)isSharePlayAvailable
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(TUConversationManagerXPCClient *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__TUConversationManagerXPCClient_isSharePlayAvailable__block_invoke;
  v5[3] = &unk_1E7425C58;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __54__TUConversationManagerXPCClient_isSharePlayAvailable__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldConnectToHost];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 sharePlayAvailable];

    if (!v4)
    {
      v5 = *(a1 + 32);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__TUConversationManagerXPCClient_isSharePlayAvailable__block_invoke_2;
      v10[3] = &unk_1E7425828;
      v10[4] = v5;
      v6 = [v5 synchronousServerWithErrorHandler:v10];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__TUConversationManagerXPCClient_isSharePlayAvailable__block_invoke_18;
      v9[3] = &unk_1E7427B58;
      v9[4] = *(a1 + 32);
      [v6 getSharePlayAvailableWithCompletionHandler:v9];
    }
  }

  else
  {
    [v3 setSharePlayAvailable:MEMORY[0x1E695E118]];
  }

  v7 = [*(a1 + 32) sharePlayAvailable];
  if (v7)
  {
    v8 = [*(a1 + 32) sharePlayAvailable];
    *(*(*(a1 + 40) + 8) + 24) = [v8 BOOLValue];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

+ (TUConversationManagerXPCServer)asynchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_7);

  return WeakRetained;
}

+ (TUConversationManagerXPCServer)synchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_7);

  return WeakRetained;
}

void __38__TUConversationManagerXPCClient_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained hasRequestedInitialState] && (objc_msgSend(v2, "hasInitialState") & 1) == 0)
  {
    v3 = [v2 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__TUConversationManagerXPCClient_init__block_invoke_2;
    block[3] = &unk_1E7424950;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __38__TUConversationManagerXPCClient_init__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "CSDConversationManagerClientsShouldConnectNotification";
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection", buf, 0xCu);
  }

  *(*(a1 + 32) + 11) = 1;
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__TUConversationManagerXPCClient_init__block_invoke_2;
  v5[3] = &unk_1E7424950;
  v6 = v3;
  [v6 _requestInitialStateWithCompletionHandler:v5];

  v4 = *MEMORY[0x1E69E9840];
}

{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__TUConversationManagerXPCClient_init__block_invoke_2_3;
  block[3] = &unk_1E7424950;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void __38__TUConversationManagerXPCClient_init__block_invoke_2_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 conversationsChangedForDataSource:*(a1 + 32) conversationsByGroupUUID:*(*(a1 + 32) + 64) oldConversationsByGroupUUID:MEMORY[0x1E695E0F8]];
}

void __38__TUConversationManagerXPCClient_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[11] == 1 && [WeakRetained hasRequestedInitialState] && objc_msgSend(v2, "hasInitialState"))
  {
    [v2 setHasInitialState:0];
    v3 = [v2 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__TUConversationManagerXPCClient_init__block_invoke_4;
    block[3] = &unk_1E7424950;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __38__TUConversationManagerXPCClient_init__block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) hasInitialState] & 1) == 0)
  {
    v2 = TUDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "com.apple.telephonyutilities.callservicesdaemon.connectionrequest";
      _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection if necessary", buf, 0xCu);
    }

    [*(a1 + 32) setXpcConnection:0];
    *(*(a1 + 32) + 11) = 0;
    v3 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__TUConversationManagerXPCClient_init__block_invoke_7;
    v5[3] = &unk_1E7424950;
    v6 = v3;
    [v6 _requestInitialStateWithCompletionHandler:v5];
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __38__TUConversationManagerXPCClient_init__block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__TUConversationManagerXPCClient_init__block_invoke_2_8;
  block[3] = &unk_1E7424950;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void __38__TUConversationManagerXPCClient_init__block_invoke_2_8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 conversationsChangedForDataSource:*(a1 + 32) conversationsByGroupUUID:*(*(a1 + 32) + 64) oldConversationsByGroupUUID:MEMORY[0x1E695E0F8]];
}

- (void)dealloc
{
  notify_cancel(self->_shouldConnectToken);
  notify_cancel(self->_daemonLaunchToken);
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = TUConversationManagerXPCClient;
  [(TUConversationManagerXPCClient *)&v3 dealloc];
}

- (NSDictionary)advertisementsOnSystem
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v3 = [(TUConversationManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__TUConversationManagerXPCClient_advertisementsOnSystem__block_invoke;
  v6[3] = &unk_1E7425C58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__TUConversationManagerXPCClient_advertisementsOnSystem__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__TUConversationManagerXPCClient_advertisementsOnSystem__block_invoke_2;
  v5[3] = &unk_1E7425828;
  v5[4] = v2;
  v3 = [v2 synchronousServerWithErrorHandler:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__TUConversationManagerXPCClient_advertisementsOnSystem__block_invoke_12;
  v4[3] = &unk_1E7426570;
  v4[4] = *(a1 + 40);
  [v3 advertisementsOnSystem:v4];
}

void __56__TUConversationManagerXPCClient_advertisementsOnSystem__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__TUConversationManagerXPCClient_advertisementsOnSystem__block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  *(v5 + 72) = MEMORY[0x1E695E0F8];

  [*(a1 + 32) setHasInitialState:0];
}

- (NSDictionary)incomingPendingConversationsByGroupUUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__TUConversationManagerXPCClient_incomingPendingConversationsByGroupUUID__block_invoke;
  v6[3] = &unk_1E74249C0;
  v6[4] = &v7;
  v2 = [(TUConversationManagerXPCClient *)self synchronousServerWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__TUConversationManagerXPCClient_incomingPendingConversationsByGroupUUID__block_invoke_14;
  v5[3] = &unk_1E7426570;
  v5[4] = &v7;
  [v2 incomingPendingConversationsByGroupUUID:v5];

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __73__TUConversationManagerXPCClient_incomingPendingConversationsByGroupUUID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__TUConversationManagerXPCClient_incomingPendingConversationsByGroupUUID__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x1E695E0F8];
}

- (NSDictionary)pseudonymsByCallUUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__TUConversationManagerXPCClient_pseudonymsByCallUUID__block_invoke;
  v6[3] = &unk_1E74249C0;
  v6[4] = &v7;
  v2 = [(TUConversationManagerXPCClient *)self synchronousServerWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__TUConversationManagerXPCClient_pseudonymsByCallUUID__block_invoke_15;
  v5[3] = &unk_1E7426570;
  v5[4] = &v7;
  [v2 pseudonymsByCallUUID:v5];

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __54__TUConversationManagerXPCClient_pseudonymsByCallUUID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__TUConversationManagerXPCClient_pseudonymsByCallUUID__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x1E695E0F8];
}

- (NSSet)activatedConversationLinks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__TUConversationManagerXPCClient_activatedConversationLinks__block_invoke;
  v6[3] = &unk_1E74249C0;
  v6[4] = &v7;
  v2 = [(TUConversationManagerXPCClient *)self synchronousServerWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__TUConversationManagerXPCClient_activatedConversationLinks__block_invoke_16;
  v5[3] = &unk_1E7425BC8;
  v5[4] = &v7;
  [v2 activatedConversationLinks:v5];

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __60__TUConversationManagerXPCClient_activatedConversationLinks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__TUConversationManagerXPCClient_activatedConversationLinks__block_invoke_cold_1();
  }

  v5 = [MEMORY[0x1E695DEC8] array];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (NSDictionary)activityAuthorizedBundleIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v3 = [(TUConversationManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__TUConversationManagerXPCClient_activityAuthorizedBundleIdentifiers__block_invoke;
  v6[3] = &unk_1E7425C58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __69__TUConversationManagerXPCClient_activityAuthorizedBundleIdentifiers__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _requestInitialStateIfNecessary];
  v2 = *(*(a1 + 32) + 80);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (BOOL)autoSharePlayEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(TUConversationManagerXPCClient *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__TUConversationManagerXPCClient_autoSharePlayEnabled__block_invoke;
  v5[3] = &unk_1E7425C58;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __54__TUConversationManagerXPCClient_autoSharePlayEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _requestInitialStateIfNecessary];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8);
  return result;
}

void __54__TUConversationManagerXPCClient_isSharePlayAvailable__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__TUConversationManagerXPCClient_isSharePlayAvailable__block_invoke_2_cold_1();
  }

  [*(a1 + 32) setSharePlayAvailable:0];
}

void __54__TUConversationManagerXPCClient_isSharePlayAvailable__block_invoke_18(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 32) setSharePlayAvailable:v3];
}

- (BOOL)isScreenSharingAvailable
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(TUConversationManagerXPCClient *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__TUConversationManagerXPCClient_isScreenSharingAvailable__block_invoke;
  v5[3] = &unk_1E7425C58;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __58__TUConversationManagerXPCClient_isScreenSharingAvailable__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldConnectToHost];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 screenSharingAvailable];

    if (!v4)
    {
      v5 = *(a1 + 32);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __58__TUConversationManagerXPCClient_isScreenSharingAvailable__block_invoke_2;
      v10[3] = &unk_1E7425828;
      v10[4] = v5;
      v6 = [v5 synchronousServerWithErrorHandler:v10];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__TUConversationManagerXPCClient_isScreenSharingAvailable__block_invoke_21;
      v9[3] = &unk_1E7427B58;
      v9[4] = *(a1 + 32);
      [v6 getScreenSharingAvailableWithCompletionHandler:v9];
    }
  }

  else
  {
    [v3 setScreenSharingAvailable:MEMORY[0x1E695E118]];
  }

  v7 = [*(a1 + 32) screenSharingAvailable];
  if (v7)
  {
    v8 = [*(a1 + 32) screenSharingAvailable];
    *(*(*(a1 + 40) + 8) + 24) = [v8 BOOLValue];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __58__TUConversationManagerXPCClient_isScreenSharingAvailable__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__TUConversationManagerXPCClient_isScreenSharingAvailable__block_invoke_2_cold_1();
  }

  [*(a1 + 32) setScreenSharingAvailable:0];
}

void __58__TUConversationManagerXPCClient_isScreenSharingAvailable__block_invoke_21(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 32) setScreenSharingAvailable:v3];
}

- (void)addRemoteMembers:(id)a3 otherInvitedHandles:(id)a4 invitationPreferences:(id)a5 toConversation:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_60];
  v14 = [v10 UUID];

  [v15 addRemoteMembers:v13 otherInvitedHandles:v12 invitationPreferences:v11 toConversationWithUUID:v14];
}

void __108__TUConversationManagerXPCClient_addRemoteMembers_otherInvitedHandles_invitationPreferences_toConversation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __108__TUConversationManagerXPCClient_addRemoteMembers_otherInvitedHandles_invitationPreferences_toConversation___block_invoke_cold_1();
  }
}

- (void)prepareConversationWithUUID:(id)a3 withHandoffContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_23_1];
  [v8 prepareConversationWithUUID:v7 withHandoffContext:v6];
}

void __81__TUConversationManagerXPCClient_prepareConversationWithUUID_withHandoffContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __81__TUConversationManagerXPCClient_prepareConversationWithUUID_withHandoffContext___block_invoke_cold_1();
  }
}

void __79__TUConversationManagerXPCClient_setSharePlayHandedOff_onConversationWithUUID___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __79__TUConversationManagerXPCClient_setSharePlayHandedOff_onConversationWithUUID___block_invoke_cold_1(a1);
  }
}

- (void)updateMessagesGroupName:(id)a3 onConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_25];
  v8 = [v6 UUID];

  [v9 updateMessagesGroupName:v7 onConversationWithUUID:v8];
}

void __73__TUConversationManagerXPCClient_updateMessagesGroupName_onConversation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__TUConversationManagerXPCClient_updateMessagesGroupName_onConversation___block_invoke_cold_1();
  }
}

- (void)setGridDisplayMode:(unint64_t)a3 conversation:(id)a4
{
  v6 = a4;
  v8 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_27_0];
  v7 = [v6 UUID];

  [v8 setGridDisplayMode:a3 forConversationWithUUID:v7];
}

void __66__TUConversationManagerXPCClient_setGridDisplayMode_conversation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __66__TUConversationManagerXPCClient_setGridDisplayMode_conversation___block_invoke_cold_1();
  }
}

- (void)conversationUpdateMessagesGroupPhoto:(id)a3
{
  v4 = a3;
  v6 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_29];
  v5 = [v4 UUID];

  [v6 updateMessagesGroupPhotoOnConversationWithUUID:v5];
}

void __71__TUConversationManagerXPCClient_conversationUpdateMessagesGroupPhoto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__TUConversationManagerXPCClient_conversationUpdateMessagesGroupPhoto___block_invoke_cold_1();
  }
}

- (void)createActivitySession:(id)a3 onConversation:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v11 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_31_0];
  v10 = [v8 UUID];

  [v11 createActivitySession:v9 onConversationWithUUID:v10 options:a5];
}

void __79__TUConversationManagerXPCClient_createActivitySession_onConversation_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __79__TUConversationManagerXPCClient_createActivitySession_onConversation_options___block_invoke_cold_1();
  }
}

- (void)leaveActivitySession:(id)a3 onConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_33_0];
  v8 = [v6 UUID];

  [v9 leaveActivitySession:v7 onConversationWithUUID:v8];
}

void __70__TUConversationManagerXPCClient_leaveActivitySession_onConversation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__TUConversationManagerXPCClient_leaveActivitySession_onConversation___block_invoke_cold_1();
  }
}

- (void)endActivitySession:(id)a3 onConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_35_0];
  v8 = [v6 UUID];

  [v9 endActivitySession:v7 onConversationWithUUID:v8];
}

void __68__TUConversationManagerXPCClient_endActivitySession_onConversation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__TUConversationManagerXPCClient_endActivitySession_onConversation___block_invoke_cold_1();
  }
}

void __91__TUConversationManagerXPCClient_setUsingAirplay_onActivitySession_onConversationWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91__TUConversationManagerXPCClient_setUsingAirplay_onActivitySession_onConversationWithUUID___block_invoke_cold_1();
  }
}

- (void)presentDismissalAlertForActivitySession:(id)a3 onConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __89__TUConversationManagerXPCClient_presentDismissalAlertForActivitySession_onConversation___block_invoke;
  v16 = &unk_1E7427DD0;
  v17 = v6;
  v18 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&v13];
  v11 = [v9 UUID];
  v12 = [v8 UUID];
  [v10 presentDismissalAlertForActivitySessionWithUUID:v11 onConversationWithUUID:v12];
}

void __89__TUConversationManagerXPCClient_presentDismissalAlertForActivitySession_onConversation___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__TUConversationManagerXPCClient_presentDismissalAlertForActivitySession_onConversation___block_invoke_cold_1(a1);
  }
}

void __79__TUConversationManagerXPCClient_setActivityAuthorization_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__TUConversationManagerXPCClient_setActivityAuthorization_forBundleIdentifier___block_invoke_cold_1(a1);
  }
}

void __58__TUConversationManagerXPCClient_setAutoSharePlayEnabled___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__TUConversationManagerXPCClient_setAutoSharePlayEnabled___block_invoke_cold_1();
  }
}

- (void)joinConversationWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_41_1];
  [v5 joinConversationWithRequest:v4];
}

void __62__TUConversationManagerXPCClient_joinConversationWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62__TUConversationManagerXPCClient_joinConversationWithRequest___block_invoke_cold_1();
  }
}

- (void)leaveConversationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_43_0];
  [v5 leaveConversationWithUUID:v4];
}

void __60__TUConversationManagerXPCClient_leaveConversationWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__TUConversationManagerXPCClient_leaveConversationWithUUID___block_invoke_cold_1();
  }
}

void __129__TUConversationManagerXPCClient_launchApplicationForActivitySessionUUID_authorizedExternally_forceBackground_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __129__TUConversationManagerXPCClient_launchApplicationForActivitySessionUUID_authorizedExternally_forceBackground_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __129__TUConversationManagerXPCClient_launchApplicationForActivitySessionUUID_authorizedExternally_forceBackground_completionHandler___block_invoke_44(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "LaunchApplication error: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)buzzMember:(id)a3 destinationID:(id)a4 invitationContext:(id)a5 conversation:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_46];
  v14 = [v10 UUID];

  [v15 buzzMember:v13 destinationID:v12 invitationContext:v11 conversationUUID:v14];
}

void __90__TUConversationManagerXPCClient_buzzMember_destinationID_invitationContext_conversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error buzzing member: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)kickMember:(id)a3 conversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_48_1];
  v8 = [v6 UUID];

  [v9 kickMember:v7 conversationUUID:v8];
}

void __58__TUConversationManagerXPCClient_kickMember_conversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error kicking member: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __87__TUConversationManagerXPCClient_setDownlinkMuted_forRemoteParticipantsInConversation___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8[0] = 67109634;
    v8[1] = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error setting downlink muted: (%d) for remote participants in conversation: %@ with error: %@", v8, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __100__TUConversationManagerXPCClient_setDownlinkMuted_forParticipants_inConversation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) UUID];
    v10[0] = 67109890;
    v10[1] = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error setting downlink audio muted to (%d) remote participants=%@ for conversationUUID=%@ with error: %@", v10, 0x26u);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addScreenSharingType:(unint64_t)a3 forConversation:(id)a4
{
  v6 = a4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __71__TUConversationManagerXPCClient_addScreenSharingType_forConversation___block_invoke;
  v13 = &unk_1E7427E20;
  v14 = v6;
  v15 = a3;
  v7 = v6;
  v8 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&v10];
  v9 = [v7 UUID];
  [v8 addScreenSharingType:a3 forConversationUUID:v9];
}

void __71__TUConversationManagerXPCClient_addScreenSharingType_forConversation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__TUConversationManagerXPCClient_addScreenSharingType_forConversation___block_invoke_cold_1(a1);
  }
}

- (void)getLatestRemoteScreenShareAttributesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__TUConversationManagerXPCClient_getLatestRemoteScreenShareAttributesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7424A10;
  v8 = v4;
  v5 = v4;
  v6 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v7];
  [v6 getLatestRemoteScreenShareAttributesWithCompletionHandler:v5];
}

void __92__TUConversationManagerXPCClient_getLatestRemoteScreenShareAttributesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get latest remote screen share attributes with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)registerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__TUConversationManagerXPCClient_registerWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __64__TUConversationManagerXPCClient_registerWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasRequestedInitialState];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {

    return [v3 _invokeCompletionHandler:v4];
  }

  else
  {

    return [v3 _requestInitialStateWithCompletionHandler:v4];
  }
}

void __60__TUConversationManagerXPCClient_refreshActiveConversations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__TUConversationManagerXPCClient_refreshActiveConversations__block_invoke_cold_1();
  }
}

void __82__TUConversationManagerXPCClient_getActiveLinksWithCreatedOnly_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error in retrieving active links: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)generateLinkForConversation:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__TUConversationManagerXPCClient_generateLinkForConversation_completionHandler___block_invoke;
  v11[3] = &unk_1E7424A10;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v11];
  v10 = [v8 UUID];

  [v9 generateLinkForConversationUUID:v10 completionHandler:v7];
}

void __80__TUConversationManagerXPCClient_generateLinkForConversation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error in generating link (for conversation): %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)generateLinkWithInvitedMemberHandles:(id)a3 linkLifetimeScope:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__TUConversationManagerXPCClient_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke;
  v12[3] = &unk_1E7424A10;
  v13 = v8;
  v9 = v8;
  v10 = a3;
  v11 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v12];
  [v11 generateLinkWithInvitedMemberHandles:v10 linkLifetimeScope:a4 completionHandler:v9];
}

void __107__TUConversationManagerXPCClient_generateLinkWithInvitedMemberHandles_linkLifetimeScope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error in generating link (with invited member handles): %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addInvitedMemberHandles:(id)a3 toConversationLink:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__TUConversationManagerXPCClient_addInvitedMemberHandles_toConversationLink_completionHandler___block_invoke;
  v13[3] = &unk_1E7424A10;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v13];
  [v12 addInvitedMemberHandles:v11 toConversationLink:v10 completionHandler:v9];
}

void __95__TUConversationManagerXPCClient_addInvitedMemberHandles_toConversationLink_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error in adding invited members to link: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)invalidateLink:(id)a3 deleteReason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__TUConversationManagerXPCClient_invalidateLink_deleteReason_completionHandler___block_invoke;
  v12[3] = &unk_1E7424A10;
  v13 = v8;
  v9 = v8;
  v10 = a3;
  v11 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v12];
  [v11 invalidateLink:v10 deleteReason:a4 completionHandler:v9];
}

void __80__TUConversationManagerXPCClient_invalidateLink_deleteReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error in invalidating link: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)renewLink:(id)a3 expirationDate:(id)a4 reason:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__TUConversationManagerXPCClient_renewLink_expirationDate_reason_completionHandler___block_invoke;
  v15[3] = &unk_1E7424A10;
  v16 = v10;
  v11 = v10;
  v12 = a4;
  v13 = a3;
  v14 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v15];
  [v14 renewLink:v13 expirationDate:v12 reason:a5 completionHandler:v11];
}

void __84__TUConversationManagerXPCClient_renewLink_expirationDate_reason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error in renewing link to new expiration date: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)checkLinkValidity:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__TUConversationManagerXPCClient_checkLinkValidity_completionHandler___block_invoke;
  v10[3] = &unk_1E7424A10;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v10];
  [v9 checkLinkValidity:v8 completionHandler:v7];
}

void __70__TUConversationManagerXPCClient_checkLinkValidity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error in checking the validity of the link: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getInactiveLinkWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__TUConversationManagerXPCClient_getInactiveLinkWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7424A10;
  v8 = v4;
  v5 = v4;
  v6 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v7];
  [v6 getInactiveLinkWithCompletionHandler:v5];
}

void __71__TUConversationManagerXPCClient_getInactiveLinkWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error in obtaining an inactive pre-prepared link: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activateLink:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__TUConversationManagerXPCClient_activateLink_completionHandler___block_invoke;
  v10[3] = &unk_1E7424A10;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v10];
  [v9 activateLink:v8 completionHandler:v7];
}

void __65__TUConversationManagerXPCClient_activateLink_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error in activating a pre-prepared link: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setLinkName:(id)a3 forConversationLink:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__TUConversationManagerXPCClient_setLinkName_forConversationLink_completionHandler___block_invoke;
  v13[3] = &unk_1E7424A10;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v13];
  [v12 setLinkName:v11 forConversationLink:v10 completionHandler:v9];
}

void __84__TUConversationManagerXPCClient_setLinkName_forConversationLink_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error in setting link name: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateExternalParticipants:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_52_1];
  [v5 updateExternalParticipants:v4];
}

void __61__TUConversationManagerXPCClient_updateExternalParticipants___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error in updating external participants: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __73__TUConversationManagerXPCClient_scheduleConversationLinkCheckInInitial___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error in scheduling a sync for activated conversation links: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __75__TUConversationManagerXPCClient_linkSyncStateIncludeLinks_WithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error in getting link sync state: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)approvePendingMember:(id)a3 forConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_58_0];
  v8 = [v6 UUID];

  [v9 approvePendingMember:v7 forConversationUUID:v8];
}

void __71__TUConversationManagerXPCClient_approvePendingMember_forConversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error in approving pending member waiting to be let-in: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)requestParticipantToShareScreen:(id)a3 forConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_60_1];
  v8 = [v6 UUID];

  [v9 requestParticipantToShareScreen:v7 forConversationUUID:v8];
}

void __82__TUConversationManagerXPCClient_requestParticipantToShareScreen_forConversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error in generating screen share request with requested Participant: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)cancelOrDenyScreenShareRequest:(id)a3 forConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_62_2];
  v8 = [v6 UUID];

  [v9 cancelOrDenyScreenShareRequest:v7 forConversationUUID:v8];
}

void __81__TUConversationManagerXPCClient_cancelOrDenyScreenShareRequest_forConversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "cancelling screen share request failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __101__TUConversationManagerXPCClient_setScreenEnabled_withScreenShareAttributes_forConversationWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error: %@ in setting screen enabled for conversationWithUUID: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)rejectPendingMember:(id)a3 forConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_64_0];
  v8 = [v6 UUID];

  [v9 rejectPendingMember:v7 forConversationUUID:v8];
}

void __70__TUConversationManagerXPCClient_rejectPendingMember_forConversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error in rejecting pending member waiting to be let-in: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __75__TUConversationManagerXPCClient_setIgnoreLetMeInRequests_forConversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error in setting ignore let me in requests: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setLocalParticipantCluster:(id)a3 forConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_68_1];
  v8 = [v6 UUID];

  [v9 setLocalParticipantCluster:v7 forConversationUUID:v8];
}

void __77__TUConversationManagerXPCClient_setLocalParticipantCluster_forConversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error in setting local participant cluster: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)fetchUpcomingNoticeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__TUConversationManagerXPCClient_fetchUpcomingNoticeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7424A10;
  v8 = v4;
  v5 = v4;
  v6 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v7];
  [v6 fetchUpcomingNoticeWithCompletionHandler:v5];
}

void __75__TUConversationManagerXPCClient_fetchUpcomingNoticeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__TUConversationManagerXPCClient_fetchUpcomingNoticeWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)activateConversationNoticeWithActionURL:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __91__TUConversationManagerXPCClient_activateConversationNoticeWithActionURL_bundleIdentifier___block_invoke;
  v14 = &unk_1E7427DD0;
  v15 = v6;
  v16 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&v11];
  [v10 activateConversationNoticeWithActionURL:v9 bundleIdentifier:{v8, v11, v12, v13, v14}];
}

void __91__TUConversationManagerXPCClient_activateConversationNoticeWithActionURL_bundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __91__TUConversationManagerXPCClient_activateConversationNoticeWithActionURL_bundleIdentifier___block_invoke_cold_1(a1);
  }
}

- (void)removeConversationNoticeWithUUID:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__TUConversationManagerXPCClient_removeConversationNoticeWithUUID___block_invoke;
  v7[3] = &unk_1E7425828;
  v8 = v4;
  v5 = v4;
  v6 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v7];
  [v6 removeConversationNoticeWithUUID:v5];
}

void __67__TUConversationManagerXPCClient_removeConversationNoticeWithUUID___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __67__TUConversationManagerXPCClient_removeConversationNoticeWithUUID___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_accessorLock);
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_7);
  [WeakRetained unregisterClient:self];

  v4 = objc_loadWeakRetained(&sSynchronousServer_7);
  [v4 unregisterClient:self];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)updateConversationWithUUID:(id)a3 participantPresentationContexts:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_70_0];
  [v8 updateConversationWithUUID:v7 participantPresentationContexts:v6];
}

void __93__TUConversationManagerXPCClient_updateConversationWithUUID_participantPresentationContexts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __93__TUConversationManagerXPCClient_updateConversationWithUUID_participantPresentationContexts___block_invoke_cold_1();
  }
}

void __68__TUConversationManagerXPCClient_setSupportsMessagesGroupProviding___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__TUConversationManagerXPCClient_setSupportsMessagesGroupProviding___block_invoke_cold_1();
  }
}

- (void)getMessagesGroupDetailsForConversationUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_74];
  [v8 getMessagesGroupDetailsForConversationUUID:v7 completionHandler:v6];
}

void __95__TUConversationManagerXPCClient_getMessagesGroupDetailsForConversationUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __95__TUConversationManagerXPCClient_getMessagesGroupDetailsForConversationUUID_completionHandler___block_invoke_cold_1();
  }
}

- (void)updateRemoteControlStatus:(int64_t)a3 onConversation:(id)a4
{
  v6 = a4;
  v8 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_76_1];
  v7 = [v6 UUID];

  [v8 updateRemoteControlStatus:a3 onConversationWithUUID:v7];
}

void __75__TUConversationManagerXPCClient_updateRemoteControlStatus_onConversation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__TUConversationManagerXPCClient_updateRemoteControlStatus_onConversation___block_invoke_cold_1();
  }
}

- (void)_requestInitialStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(v5);

  [(TUConversationManagerXPCClient *)self setHasRequestedInitialState:1];
  v6 = [(TUConversationManagerXPCClient *)self shouldConnectToHost];
  v7 = TUDefaultLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Host has no conversations", buf, 2u);
    }

    goto LABEL_10;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Requesting initial conversation manager state", buf, 2u);
  }

  [(TUConversationManagerXPCClient *)self setHasInitialState:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke;
  v21[3] = &unk_1E7425828;
  v21[4] = self;
  v9 = [(TUConversationManagerXPCClient *)self synchronousServerWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_77;
  v20[3] = &unk_1E74248C0;
  v20[4] = self;
  [v9 conversationsByGroupUUID:v20];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_2;
  v19[3] = &unk_1E7425828;
  v19[4] = self;
  v10 = [(TUConversationManagerXPCClient *)self synchronousServerWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_78;
  v18[3] = &unk_1E74248C0;
  v18[4] = self;
  [v10 activityAuthorizedBundleIdentifierState:v18];

  v11 = [(TUConversationManagerXPCClient *)self sharePlayAvailable];

  if (v11)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_2_83;
    v17[3] = &unk_1E7425828;
    v17[4] = self;
    v12 = [(TUConversationManagerXPCClient *)self synchronousServerWithErrorHandler:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_84;
    v16[3] = &unk_1E7427B58;
    v16[4] = self;
    [v12 getSharePlayAvailableWithCompletionHandler:v16];
  }

  v13 = [(TUConversationManagerXPCClient *)self screenSharingAvailable];

  if (v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_3;
    v15[3] = &unk_1E7425828;
    v15[4] = self;
    v7 = [(TUConversationManagerXPCClient *)self synchronousServerWithErrorHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_86;
    v14[3] = &unk_1E7427B58;
    v14[4] = self;
    [v7 getScreenSharingAvailableWithCompletionHandler:v14];
LABEL_10:
  }

  [(TUConversationManagerXPCClient *)self _invokeCompletionHandler:v4];
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = MEMORY[0x1E695E0F8];

  [*(a1 + 32) setHasInitialState:0];
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = MEMORY[0x1E695E0F8];

  [*(a1 + 32) setHasInitialState:0];
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bk"];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = [v3 objectForKeyedSubscript:@"gk"];

  *(*(a1 + 32) + 8) = [v7 BOOLValue];
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_2_83(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__TUConversationManagerXPCClient_isSharePlayAvailable__block_invoke_2_cold_1();
  }

  [*(a1 + 32) setSharePlayAvailable:0];
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_84(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 32) setSharePlayAvailable:v4];

  v5 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_2_85;
  v6[3] = &unk_1E7425000;
  v6[4] = *(a1 + 32);
  v7 = v2;
  dispatch_async(v5, v6);
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_2_85(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sharePlayAvailableChanged:*(a1 + 40)];
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__TUConversationManagerXPCClient_isScreenSharingAvailable__block_invoke_2_cold_1();
  }

  [*(a1 + 32) setScreenSharingAvailable:0];
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_86(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 32) setScreenSharingAvailable:v4];

  v5 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_2_87;
  v6[3] = &unk_1E7425000;
  v6[4] = *(a1 + 32);
  v7 = v2;
  dispatch_async(v5, v6);
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_2_87(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 screenSharingAvailableChanged:*(a1 + 40)];
}

- (void)_invokeCompletionHandler:(id)a3
{
  if (a3)
  {
    v4 = dispatch_get_global_queue(21, 0);
    dispatch_async(v4, a3);
  }
}

- (void)handleServerDisconnect
{
  v3 = [(TUConversationManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Server did disconnect", v12, 2u);
  }

  conversationsByGroupUUID = self->_conversationsByGroupUUID;
  v6 = MEMORY[0x1E695E0F8];
  self->_conversationsByGroupUUID = MEMORY[0x1E695E0F8];
  v7 = conversationsByGroupUUID;

  advertisementsOnSystem = self->_advertisementsOnSystem;
  self->_advertisementsOnSystem = v6;

  self->_hasInitialState = 0;
  sharePlayAvailable = self->_sharePlayAvailable;
  self->_sharePlayAvailable = 0;

  screenSharingAvailable = self->_screenSharingAvailable;
  self->_screenSharingAvailable = 0;

  v11 = [(TUConversationManagerXPCClient *)self delegate];
  [v11 serverDisconnectedForDataSource:self oldConversationsByGroupUUID:v7];
}

void __47__TUConversationManagerXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = TUDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated.", buf, 2u);
    }

    [WeakRetained setXpcConnection:0];
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__TUConversationManagerXPCClient_xpcConnection__block_invoke_92;
    block[3] = &unk_1E7424950;
    block[4] = WeakRetained;
    dispatch_async(v3, block);
  }
}

void __47__TUConversationManagerXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = TUDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted.", buf, 2u);
    }

    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__TUConversationManagerXPCClient_xpcConnection__block_invoke_93;
    block[3] = &unk_1E7424950;
    block[4] = WeakRetained;
    dispatch_async(v3, block);
  }
}

- (void)setXpcConnection:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_xpcConnection != v5)
  {
    objc_storeStrong(&self->_xpcConnection, a3);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)asynchronousServerWithErrorHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_7);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    v8 = [(TUConversationManagerXPCClient *)self xpcConnection];
    v7 = [v8 remoteObjectProxyWithErrorHandler:v4];
  }

  return v7;
}

- (id)synchronousServerWithErrorHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_7);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    v8 = [(TUConversationManagerXPCClient *)self xpcConnection];
    v7 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  return v7;
}

- (void)updateConversationsByGroupUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__TUConversationManagerXPCClient_updateConversationsByGroupUUID___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__TUConversationManagerXPCClient_updateConversationsByGroupUUID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) allKeys];
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "conversationsByGroupUUID keys: %@", &v11, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 64);
  v6 = *(a1 + 32);
  v7 = *(v4 + 64);
  *(v4 + 64) = v6;
  v8 = v5;

  v9 = [*(a1 + 40) delegate];
  [v9 conversationsChangedForDataSource:*(a1 + 40) conversationsByGroupUUID:*(a1 + 32) oldConversationsByGroupUUID:v8];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateIncomingPendingConversationsByGroupUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self delegate];
  [v5 conversationsChangedForDataSource:self updatedIncomingPendingConversationsByGroupUUID:v4];
}

- (void)activeParticipant:(id)a3 removedHighlightFromConversation:(id)a4 highlightIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TUConversationManagerXPCClient *)self delegate];
  [v11 activeParticipant:v10 removedHighlightFromConversation:v9 highlightIdentifier:v8];
}

- (void)conversation:(id)a3 collaborationStateChanged:(int64_t)a4 highlightIdentifier:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(TUConversationManagerXPCClient *)self delegate];
  [v10 conversation:v9 collaborationStateChanged:a4 highlightIdentifier:v8];
}

- (void)addedCollaborationDictionary:(id)a3 forConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUConversationManagerXPCClient *)self delegate];
  [v8 addedCollaborationDictionary:v7 forConversation:v6];
}

- (void)conversationUpdatedMessagesGroupPhoto:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__TUConversationManagerXPCClient_conversationUpdatedMessagesGroupPhoto___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __72__TUConversationManagerXPCClient_conversationUpdatedMessagesGroupPhoto___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UUID];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "conversationUpdatedMessagesGroupPhoto: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 conversationUpdatedMessagesGroupPhoto:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateActivatedConversationLinks:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__TUConversationManagerXPCClient_updateActivatedConversationLinks___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__TUConversationManagerXPCClient_updateActivatedConversationLinks___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "updateActivatedConversationLinks: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 conversationManagerDataSource:*(a1 + 40) didChangeActivatedConversationLinks:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)receivedTrackedPendingMember:(id)a3 forConversationLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUConversationManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__TUConversationManagerXPCClient_receivedTrackedPendingMember_forConversationLink___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __83__TUConversationManagerXPCClient_receivedTrackedPendingMember_forConversationLink___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "receivedTrackedPendingMember: %@ forConversationLink: %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 48) delegate];
  [v5 receivedTrackedPendingMember:*(a1 + 32) forConversationLink:*(a1 + 40)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)conversation:(id)a3 screenSharingChangedForParticipant:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUConversationManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__TUConversationManagerXPCClient_conversation_screenSharingChangedForParticipant___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __82__TUConversationManagerXPCClient_conversation_screenSharingChangedForParticipant___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "screenSharingChangedForParticipant: %llu", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 conversation:*(a1 + 48) screenSharingChangedForParticipant:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)remoteScreenShareAttributesChanged:(id)a3 isLocallySharing:(BOOL)a4
{
  v6 = a3;
  v7 = [(TUConversationManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__TUConversationManagerXPCClient_remoteScreenShareAttributesChanged_isLocallySharing___block_invoke;
  block[3] = &unk_1E7425B78;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __86__TUConversationManagerXPCClient_remoteScreenShareAttributesChanged_isLocallySharing___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = @"NO";
    if (*(a1 + 48))
    {
      v4 = @"YES";
    }

    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "remoteScreenShareAttributesChanged: %@ isLocallySharing: %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) delegate];
  [v5 remoteScreenShareAttributesChanged:*(a1 + 32) isLocallySharing:*(a1 + 48)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteScreenShareEndedWithReason:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__TUConversationManagerXPCClient_remoteScreenShareEndedWithReason___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__TUConversationManagerXPCClient_remoteScreenShareEndedWithReason___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "remoteScreenShareEndedWithReason: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 remoteScreenShareEndedWithReason:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)sharePlayAvailableChanged:(BOOL)a3
{
  v5 = [(TUConversationManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__TUConversationManagerXPCClient_sharePlayAvailableChanged___block_invoke;
  v6[3] = &unk_1E7425000;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __60__TUConversationManagerXPCClient_sharePlayAvailableChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sharePlayAvailable];
  if (!v2 || (v3 = v2, [*(a1 + 32) sharePlayAvailable], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v6 = *(a1 + 40), v4, v3, v6 != v5))
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v13[0] = 67109120;
      v13[1] = v8;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "sharePlayAvailable changed to: %d", v13, 8u);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    [*(a1 + 32) setSharePlayAvailable:v9];

    v10 = [*(a1 + 32) delegate];
    v11 = [*(a1 + 32) sharePlayAvailable];
    [v10 sharePlayAvailableChanged:{objc_msgSend(v11, "BOOLValue")}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)screenSharingAvailableChanged:(BOOL)a3
{
  v5 = [(TUConversationManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__TUConversationManagerXPCClient_screenSharingAvailableChanged___block_invoke;
  v6[3] = &unk_1E7425000;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __64__TUConversationManagerXPCClient_screenSharingAvailableChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) screenSharingAvailable];
  if (!v2 || (v3 = v2, [*(a1 + 32) screenSharingAvailable], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v6 = *(a1 + 40), v4, v3, v6 != v5))
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v13[0] = 67109120;
      v13[1] = v8;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "screenSharingAvailable changed to: %d", v13, 8u);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    [*(a1 + 32) setScreenSharingAvailable:v9];

    v10 = [*(a1 + 32) delegate];
    v11 = [*(a1 + 32) screenSharingAvailable];
    [v10 screenSharingAvailableChanged:{objc_msgSend(v11, "BOOLValue")}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)mediaPrioritiesChangedForConversation:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__TUConversationManagerXPCClient_mediaPrioritiesChangedForConversation___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __72__TUConversationManagerXPCClient_mediaPrioritiesChangedForConversation___block_invoke(uint64_t a1)
{
  v14 = [*(*(a1 + 32) + 64) mutableCopy];
  v2 = [*(a1 + 40) groupUUID];
  v3 = [v14 objectForKeyedSubscript:v2];
  v4 = [v3 copy];

  [v4 updateParticipantMediaPrioritiesWithConversation:*(a1 + 40)];
  v5 = [*(a1 + 40) groupUUID];
  [v14 setObject:v4 forKeyedSubscript:v5];

  v6 = [v14 copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = v6;

  v9 = [*(a1 + 32) mediaDelegate];
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 64);
  v12 = [v10 groupUUID];
  v13 = [v11 objectForKeyedSubscript:v12];
  [v9 mediaPrioritiesChangeForConversation:v13];
}

- (void)conversation:(id)a3 participant:(id)a4 didReact:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TUConversationManagerXPCClient *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__TUConversationManagerXPCClient_conversation_participant_didReact___block_invoke;
  v15[3] = &unk_1E7425188;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __68__TUConversationManagerXPCClient_conversation_participant_didReact___block_invoke(uint64_t a1)
{
  v8 = [*(*(a1 + 32) + 64) mutableCopy];
  v2 = *(a1 + 40);
  v3 = [v2 groupUUID];
  [v8 setObject:v2 forKeyedSubscript:v3];

  v4 = [v8 copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = v4;

  v7 = [*(a1 + 32) reactionsDelegate];
  [v7 conversation:*(a1 + 40) participant:*(a1 + 48) didReact:*(a1 + 56)];
}

- (void)conversation:(id)a3 participantDidStopReacting:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUConversationManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TUConversationManagerXPCClient_conversation_participantDidStopReacting___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __74__TUConversationManagerXPCClient_conversation_participantDidStopReacting___block_invoke(uint64_t a1)
{
  v8 = [*(*(a1 + 32) + 64) mutableCopy];
  v2 = *(a1 + 40);
  v3 = [v2 groupUUID];
  [v8 setObject:v2 forKeyedSubscript:v3];

  v4 = [v8 copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = v4;

  v7 = [*(a1 + 32) reactionsDelegate];
  [v7 conversation:*(a1 + 40) participantDidStopReacting:*(a1 + 48)];
}

- (void)conversation:(id)a3 participant:(id)a4 addedNotice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TUConversationManagerXPCClient *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__TUConversationManagerXPCClient_conversation_participant_addedNotice___block_invoke;
  v15[3] = &unk_1E7425188;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __71__TUConversationManagerXPCClient_conversation_participant_addedNotice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 conversation:*(a1 + 40) participant:*(a1 + 48) addedNotice:*(a1 + 56)];
}

- (void)conversation:(id)a3 didChangeStateForActivitySession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUConversationManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__TUConversationManagerXPCClient_conversation_didChangeStateForActivitySession___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __80__TUConversationManagerXPCClient_conversation_didChangeStateForActivitySession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 conversation:*(a1 + 40) didChangeStateForActivitySession:*(a1 + 48)];
}

- (void)didChangeConversationAdvertisement:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__TUConversationManagerXPCClient_didChangeConversationAdvertisement___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __69__TUConversationManagerXPCClient_didChangeConversationAdvertisement___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Conversation Advertisements changed to: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 didChangeConversationAdvertisement:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)conversation:(id)a3 didChangeSceneAssociationForActivitySession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUConversationManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__TUConversationManagerXPCClient_conversation_didChangeSceneAssociationForActivitySession___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __91__TUConversationManagerXPCClient_conversation_didChangeSceneAssociationForActivitySession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 conversation:*(a1 + 40) didChangeSceneAssociationForActivitySession:*(a1 + 48)];
}

- (void)conversation:(id)a3 receivedActivitySessionEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUConversationManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__TUConversationManagerXPCClient_conversation_receivedActivitySessionEvent___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __76__TUConversationManagerXPCClient_conversation_receivedActivitySessionEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 conversation:*(a1 + 40) receivedActivitySessionEvent:*(a1 + 48)];
}

- (void)getMessagesGroupDetailsForMessagesGroupUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUConversationManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__TUConversationManagerXPCClient_getMessagesGroupDetailsForMessagesGroupUUID_completionHandler___block_invoke;
  block[3] = &unk_1E7426458;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __96__TUConversationManagerXPCClient_getMessagesGroupDetailsForMessagesGroupUUID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 conversationManagerDataSource:*(a1 + 32) messagesGroupDetailsForMessagesGroupId:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)conversation:(id)a3 addedMembersLocally:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUConversationManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__TUConversationManagerXPCClient_conversation_addedMembersLocally___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __67__TUConversationManagerXPCClient_conversation_addedMembersLocally___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "addedMembersLocally: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 conversation:*(a1 + 48) addedMembersLocally:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)conversation:(id)a3 buzzedMember:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUConversationManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TUConversationManagerXPCClient_conversation_buzzedMember___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __60__TUConversationManagerXPCClient_conversation_buzzedMember___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "buzzedMember: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 conversation:*(a1 + 48) buzzedMember:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)conversation:(id)a3 appLaunchState:(unint64_t)a4 forActivitySession:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    *buf = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "App launch state %@ for %@", buf, 0x16u);
  }

  v12 = [(TUConversationManagerXPCClient *)self queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__TUConversationManagerXPCClient_conversation_appLaunchState_forActivitySession___block_invoke;
  v16[3] = &unk_1E7424D50;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = a4;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, v16);

  v15 = *MEMORY[0x1E69E9840];
}

void __81__TUConversationManagerXPCClient_conversation_appLaunchState_forActivitySession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 conversationManagerDataSource:*(a1 + 32) conversation:*(a1 + 40) appLaunchState:*(a1 + 56) forActivitySession:*(a1 + 48)];
}

- (void)updateActivityAuthorizedBundleIdentifierState:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__TUConversationManagerXPCClient_updateActivityAuthorizedBundleIdentifierState___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __80__TUConversationManagerXPCClient_updateActivityAuthorizedBundleIdentifierState___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "updateActivityAuthorizedBundleIdentifiers: %@", &v12, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 80);
  v6 = [v4 objectForKeyedSubscript:@"bk"];
  v7 = *(a1 + 40);
  v8 = *(v7 + 80);
  *(v7 + 80) = v6;

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"gk"];
  *(*(a1 + 40) + 8) = [v9 BOOLValue];

  v10 = [*(a1 + 40) delegate];
  [v10 activityAuthorizationsChangedForDataSource:*(a1 + 40) oldActivityAuthorizedBundleIdentifiers:v5];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)updateLocalParticipantToAVLessWithPresentationMode:(unint64_t)a3 forConversationUUID:(id)a4
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __105__TUConversationManagerXPCClient_updateLocalParticipantToAVLessWithPresentationMode_forConversationUUID___block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = a3;
  v6 = a4;
  v7 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v8];
  [v7 updateLocalParticipantToAVLessWithPresentationMode:a3 forConversationUUID:v6];
}

void __105__TUConversationManagerXPCClient_updateLocalParticipantToAVLessWithPresentationMode_forConversationUUID___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Downgrading local participant for presentationMode: %zu failed with error %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setLocalParticipantAudioVideoMode:(unint64_t)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_101_1];
  [v7 setLocalParticipantAudioVideoMode:a3 forConversationUUID:v6];
}

void __88__TUConversationManagerXPCClient_setLocalParticipantAudioVideoMode_forConversationUUID___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Setting audio/video mode failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)registerMessagesGroupUUIDForConversationUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_103];
  [v5 registerMessagesGroupUUIDForConversationUUID:v4];
}

void __79__TUConversationManagerXPCClient_registerMessagesGroupUUIDForConversationUUID___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Registering messagesGroupUUID failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)addCollaborationIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_105_0];
  [v14 addCollaborationIdentifier:v13 collaborationURL:v12 cloudKitAppBundleIDs:v11 forConversationUUID:v10];
}

void __119__TUConversationManagerXPCClient_addCollaborationIdentifier_collaborationURL_cloudKitAppBundleIDs_forConversationUUID___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Setting collaboration identifier failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startTrackingCollaborationWithIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 forConversationUUID:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_107_0];
  [v17 startTrackingCollaborationWithIdentifier:v16 collaborationURL:v15 cloudKitAppBundleIDs:v14 forConversationUUID:v13 completionHandler:v12];
}

void __151__TUConversationManagerXPCClient_startTrackingCollaborationWithIdentifier_collaborationURL_cloudKitAppBundleIDs_forConversationUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Tracking collaboration identifier failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeCollaborationIdentifier:(id)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_109_0];
  [v8 removeCollaborationIdentifier:v7 forConversationUUID:v6];
}

void __84__TUConversationManagerXPCClient_removeCollaborationIdentifier_forConversationUUID___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "removing collaboration identifier failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)markCollaborationWithIdentifierOpened:(id)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_111_2];
  [v8 markCollaborationWithIdentifierOpened:v7 forConversationUUID:v6];
}

void __92__TUConversationManagerXPCClient_markCollaborationWithIdentifierOpened_forConversationUUID___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Sending opened collaboration identifier failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __92__TUConversationManagerXPCClient_addCollaborationDictionary_forConversationWithUUID_fromMe___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Adding collaboration dictionary failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getNeedsDisclosureOfCollaborationInitiator:(id)a3 forConversationUUID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __115__TUConversationManagerXPCClient_getNeedsDisclosureOfCollaborationInitiator_forConversationUUID_completionHandler___block_invoke;
  v13[3] = &unk_1E7424A10;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:v13];
  [v12 getNeedsDisclosureOfCollaborationInitiator:v11 forConversationUUID:v10 completionHandler:v9];
}

void __115__TUConversationManagerXPCClient_getNeedsDisclosureOfCollaborationInitiator_forConversationUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Checking disclosure of collaboration initiator failed with error %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addDisclosedCollaborationInitiator:(id)a3 toConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUConversationManagerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_115_0];
  [v8 addDisclosedCollaborationInitiator:v7 toConversationUUID:v6];
}

void __88__TUConversationManagerXPCClient_addDisclosedCollaborationInitiator_toConversationUUID___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Adding disclosed collaboration initiator failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (TUConversationManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TUConversationMediaControllerDataSourceDelegate)mediaDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaDelegate);

  return WeakRetained;
}

- (TUConversationReactionsControllerDataSourceDelegate)reactionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reactionsDelegate);

  return WeakRetained;
}

void __56__TUConversationManagerXPCClient_advertisementsOnSystem__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error requesting advertisements on system: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__TUConversationManagerXPCClient_incomingPendingConversationsByGroupUUID__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Retrieving incoming pending conversations failed with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__TUConversationManagerXPCClient_pseudonymsByCallUUID__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Retrieving pseudonyms failed with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__TUConversationManagerXPCClient_activatedConversationLinks__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Retrieving activated conversation links failed with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__TUConversationManagerXPCClient_isSharePlayAvailable__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Failed to fetch sharePlayAvailable error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__TUConversationManagerXPCClient_isScreenSharingAvailable__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Failed to fetch screenSharingAvailable error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __108__TUConversationManagerXPCClient_addRemoteMembers_otherInvitedHandles_invitationPreferences_toConversation___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error updating remote members: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __81__TUConversationManagerXPCClient_prepareConversationWithUUID_withHandoffContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error while preparing conversation with handoff: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__TUConversationManagerXPCClient_setSharePlayHandedOff_onConversationWithUUID___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_1956FD000, v3, OS_LOG_TYPE_ERROR, "Error while setting handedoff: %d on conversation with UUID: %@", v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

void __73__TUConversationManagerXPCClient_updateMessagesGroupName_onConversation___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error updating messages group name: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__TUConversationManagerXPCClient_setGridDisplayMode_conversation___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error setting grid display mode: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__TUConversationManagerXPCClient_conversationUpdateMessagesGroupPhoto___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error updating messages group photo: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__TUConversationManagerXPCClient_createActivitySession_onConversation_options___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error updating activity: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__TUConversationManagerXPCClient_leaveActivitySession_onConversation___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error leaving activity: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__TUConversationManagerXPCClient_endActivitySession_onConversation___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error ending activity: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __91__TUConversationManagerXPCClient_setUsingAirplay_onActivitySession_onConversationWithUUID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error letting CSD know airplay state for activity session: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __89__TUConversationManagerXPCClient_presentDismissalAlertForActivitySession_onConversation___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_8();
  v7 = v3;
  _os_log_error_impl(&dword_1956FD000, v4, OS_LOG_TYPE_ERROR, "Error presenting dismissal alert for activitySession: %@ on conversation: %@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __79__TUConversationManagerXPCClient_setActivityAuthorization_forBundleIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  v8 = *MEMORY[0x1E69E9840];
}

void __58__TUConversationManagerXPCClient_setAutoSharePlayEnabled___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error setting auto expanse enabled with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__TUConversationManagerXPCClient_joinConversationWithRequest___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "joinConversationWithRequest error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__TUConversationManagerXPCClient_leaveConversationWithUUID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "leaveConversationWithUUID error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __129__TUConversationManagerXPCClient_launchApplicationForActivitySessionUUID_authorizedExternally_forceBackground_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __71__TUConversationManagerXPCClient_addScreenSharingType_forConversation___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __60__TUConversationManagerXPCClient_refreshActiveConversations__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error requesting refreshActiveConversations: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__TUConversationManagerXPCClient_fetchUpcomingNoticeWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error fetching upcoming notice: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __91__TUConversationManagerXPCClient_activateConversationNoticeWithActionURL_bundleIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_8();
  v7 = v3;
  _os_log_error_impl(&dword_1956FD000, v4, OS_LOG_TYPE_ERROR, "Error in activating notice with actionURL %@ bundleIdentifier %@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __67__TUConversationManagerXPCClient_removeConversationNoticeWithUUID___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "Error in dismissing notice with UUID %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __93__TUConversationManagerXPCClient_updateConversationWithUUID_participantPresentationContexts___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error setting presentation context: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__TUConversationManagerXPCClient_setSupportsMessagesGroupProviding___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error setting messages group providing support: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __95__TUConversationManagerXPCClient_getMessagesGroupDetailsForConversationUUID_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error getting messages group details: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__TUConversationManagerXPCClient_updateRemoteControlStatus_onConversation___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error updating remote control status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error requesting initial state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__TUConversationManagerXPCClient__requestInitialStateWithCompletionHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error requesting initial activityAuthorizedBundleIdentifiers: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end