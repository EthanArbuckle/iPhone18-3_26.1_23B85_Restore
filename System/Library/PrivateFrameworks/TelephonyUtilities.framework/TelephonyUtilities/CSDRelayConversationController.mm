@interface CSDRelayConversationController
- (CSDRelayConversationController)initWithQueue:(id)queue messenger:(id)messenger callCenter:(id)center featureFlags:(id)flags;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)conversationManager:(id)manager conversationUpdatedMessagesGroupUUID:(id)d;
- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)mediaController:(id)controller participantMediaPrioritiesChangedForConversation:(id)conversation;
@end

@implementation CSDRelayConversationController

- (CSDRelayConversationController)initWithQueue:(id)queue messenger:(id)messenger callCenter:(id)center featureFlags:(id)flags
{
  queueCopy = queue;
  messengerCopy = messenger;
  centerCopy = center;
  flagsCopy = flags;
  v22.receiver = self;
  v22.super_class = CSDRelayConversationController;
  v15 = [(CSDRelayConversationController *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_messagingController, messenger);
    objc_storeStrong(&v16->_queue, queue);
    objc_storeStrong(&v16->_callCenter, center);
    objc_storeStrong(&v16->_featureFlags, flags);
    conversationManager = [centerCopy conversationManager];
    queue = [(CSDRelayConversationController *)v16 queue];
    [conversationManager addDelegate:v16 queue:queue];

    conversationManager2 = [centerCopy conversationManager];
    mediaController = [conversationManager2 mediaController];
    [mediaController addDelegate:v16];
  }

  return v16;
}

- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayConversationController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (gftOnWatch)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController added active conversation %@", &v11, 0xCu);
    }

    messagingController = [(CSDRelayConversationController *)self messagingController];
    [messagingController sendConversationToClientForConversation:conversationCopy withConversationMessageType:0];
  }
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayConversationController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (gftOnWatch)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController removed active conversation %@", &v11, 0xCu);
    }

    messagingController = [(CSDRelayConversationController *)self messagingController];
    [messagingController sendConversationToClientForConversation:conversationCopy withConversationMessageType:2];
  }
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  conversationCopy = conversation;
  queue = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayConversationController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (gftOnWatch)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController state changed for conversation %@", &v13, 0xCu);
    }

    if (oldConversation)
    {
      messagingController = [(CSDRelayConversationController *)self messagingController];
      [messagingController sendConversationToClientForConversation:conversationCopy withConversationMessageType:1];
    }
  }
}

- (void)conversationManager:(id)manager conversationUpdatedMessagesGroupUUID:(id)d
{
  dCopy = d;
  queue = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayConversationController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (gftOnWatch)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController updated messages group UUID for conversation %@", &v11, 0xCu);
    }

    messagingController = [(CSDRelayConversationController *)self messagingController];
    [messagingController sendConversationToClientForConversation:dCopy withConversationMessageType:1];
  }
}

- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  conversationCopy = conversation;
  queue = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayConversationController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (oldConversation && gftOnWatch)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController remote members changed for conversation %@", &v13, 0xCu);
    }

    messagingController = [(CSDRelayConversationController *)self messagingController];
    [messagingController sendConversationToClientForConversation:conversationCopy withConversationMessageType:1];
  }
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  conversationCopy = conversation;
  queue = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayConversationController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (oldConversation && gftOnWatch)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController activeRemoteParticipants changed for conversation %@", &v13, 0xCu);
    }

    messagingController = [(CSDRelayConversationController *)self messagingController];
    [messagingController sendConversationToClientForConversation:conversationCopy withConversationMessageType:1];
  }
}

- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  conversationCopy = conversation;
  queue = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayConversationController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (oldConversation && gftOnWatch)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController avMode changed for conversation %@", &v13, 0xCu);
    }

    messagingController = [(CSDRelayConversationController *)self messagingController];
    [messagingController sendConversationToClientForConversation:conversationCopy withConversationMessageType:1];
  }
}

- (void)mediaController:(id)controller participantMediaPrioritiesChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  featureFlags = [(CSDRelayConversationController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (gftOnWatch && [conversationCopy hostedOnCurrentDevice] && (objc_msgSend(conversationCopy, "endpointOnCurrentDevice") & 1) == 0)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Prominence changed for %@", buf, 0xCu);
    }

    queue = [(CSDRelayConversationController *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001EA2E0;
    v10[3] = &unk_100619D88;
    v10[4] = self;
    v11 = conversationCopy;
    dispatch_async(queue, v10);
  }
}

@end