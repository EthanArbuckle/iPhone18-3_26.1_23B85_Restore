@interface CSDRelayConversationController
- (CSDRelayConversationController)initWithQueue:(id)a3 messenger:(id)a4 callCenter:(id)a5 featureFlags:(id)a6;
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 avModeChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)conversationManager:(id)a3 conversationUpdatedMessagesGroupUUID:(id)a4;
- (void)conversationManager:(id)a3 remoteMembersChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)mediaController:(id)a3 participantMediaPrioritiesChangedForConversation:(id)a4;
@end

@implementation CSDRelayConversationController

- (CSDRelayConversationController)initWithQueue:(id)a3 messenger:(id)a4 callCenter:(id)a5 featureFlags:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = CSDRelayConversationController;
  v15 = [(CSDRelayConversationController *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_messagingController, a4);
    objc_storeStrong(&v16->_queue, a3);
    objc_storeStrong(&v16->_callCenter, a5);
    objc_storeStrong(&v16->_featureFlags, a6);
    v17 = [v13 conversationManager];
    v18 = [(CSDRelayConversationController *)v16 queue];
    [v17 addDelegate:v16 queue:v18];

    v19 = [v13 conversationManager];
    v20 = [v19 mediaController];
    [v20 addDelegate:v16];
  }

  return v16;
}

- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4
{
  v5 = a4;
  v6 = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDRelayConversationController *)self featureFlags];
  v8 = [v7 gftOnWatch];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController added active conversation %@", &v11, 0xCu);
    }

    v10 = [(CSDRelayConversationController *)self messagingController];
    [v10 sendConversationToClientForConversation:v5 withConversationMessageType:0];
  }
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v5 = a4;
  v6 = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDRelayConversationController *)self featureFlags];
  v8 = [v7 gftOnWatch];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController removed active conversation %@", &v11, 0xCu);
    }

    v10 = [(CSDRelayConversationController *)self messagingController];
    [v10 sendConversationToClientForConversation:v5 withConversationMessageType:2];
  }
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v7 = a4;
  v8 = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDRelayConversationController *)self featureFlags];
  v10 = [v9 gftOnWatch];

  if (v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController state changed for conversation %@", &v13, 0xCu);
    }

    if (a5)
    {
      v12 = [(CSDRelayConversationController *)self messagingController];
      [v12 sendConversationToClientForConversation:v7 withConversationMessageType:1];
    }
  }
}

- (void)conversationManager:(id)a3 conversationUpdatedMessagesGroupUUID:(id)a4
{
  v5 = a4;
  v6 = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDRelayConversationController *)self featureFlags];
  v8 = [v7 gftOnWatch];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController updated messages group UUID for conversation %@", &v11, 0xCu);
    }

    v10 = [(CSDRelayConversationController *)self messagingController];
    [v10 sendConversationToClientForConversation:v5 withConversationMessageType:1];
  }
}

- (void)conversationManager:(id)a3 remoteMembersChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v7 = a4;
  v8 = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDRelayConversationController *)self featureFlags];
  v10 = [v9 gftOnWatch];

  if (a5 && v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController remote members changed for conversation %@", &v13, 0xCu);
    }

    v12 = [(CSDRelayConversationController *)self messagingController];
    [v12 sendConversationToClientForConversation:v7 withConversationMessageType:1];
  }
}

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v7 = a4;
  v8 = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDRelayConversationController *)self featureFlags];
  v10 = [v9 gftOnWatch];

  if (a5 && v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController activeRemoteParticipants changed for conversation %@", &v13, 0xCu);
    }

    v12 = [(CSDRelayConversationController *)self messagingController];
    [v12 sendConversationToClientForConversation:v7 withConversationMessageType:1];
  }
}

- (void)conversationManager:(id)a3 avModeChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v7 = a4;
  v8 = [(CSDRelayConversationController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDRelayConversationController *)self featureFlags];
  v10 = [v9 gftOnWatch];

  if (a5 && v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CSDRelayConversationController avMode changed for conversation %@", &v13, 0xCu);
    }

    v12 = [(CSDRelayConversationController *)self messagingController];
    [v12 sendConversationToClientForConversation:v7 withConversationMessageType:1];
  }
}

- (void)mediaController:(id)a3 participantMediaPrioritiesChangedForConversation:(id)a4
{
  v5 = a4;
  v6 = [(CSDRelayConversationController *)self featureFlags];
  v7 = [v6 gftOnWatch];

  if (v7 && [v5 hostedOnCurrentDevice] && (objc_msgSend(v5, "endpointOnCurrentDevice") & 1) == 0)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Prominence changed for %@", buf, 0xCu);
    }

    v9 = [(CSDRelayConversationController *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001EA2E0;
    v10[3] = &unk_100619D88;
    v10[4] = self;
    v11 = v5;
    dispatch_async(v9, v10);
  }
}

@end