@interface CSDTransactionManager
+ (id)sharedInstanceWithQueue:(id)queue;
- (CSDTransactionManager)initWithQueue:(id)queue;
- (void)_reevaluateTransactionForConversation:(id)conversation;
- (void)beginTransactionIfNecessaryForObject:(id)object withReason:(id)reason;
- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)dealloc;
- (void)endTransactionIfNecessaryForObject:(id)object;
- (void)handleCallStatusChanged:(id)changed;
- (void)handleSessionStateChanged:(id)changed;
@end

@implementation CSDTransactionManager

+ (id)sharedInstanceWithQueue:(id)queue
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100067A5C;
  v9[3] = &unk_100619D60;
  queueCopy = queue;
  selfCopy = self;
  v4 = qword_1006ACAB8;
  v5 = queueCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_1006ACAB8, v9);
  }

  v6 = qword_1006ACAB0;
  v7 = qword_1006ACAB0;

  return v6;
}

- (CSDTransactionManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v32.receiver = self;
  v32.super_class = CSDTransactionManager;
  v5 = [(CSDTransactionManager *)&v32 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = queueCopy;
      queue = v5->_queue;
      v5->_queue = v6;
    }

    else
    {
      v8 = &_dispatch_main_q;
      queue = v5->_queue;
      v5->_queue = &_dispatch_main_q;
    }

    v9 = +[NSMapTable strongToStrongObjectsMapTable];
    openTransactions = v5->_openTransactions;
    v5->_openTransactions = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v5 selector:"handleCallStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v5 selector:"handleCallStatusChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v5 selector:"handleSessionStateChanged:" name:@"CSDIDSDualSessionStateChangedNotification" object:0];

    [(CSDTransactionManager *)v5 beginTransactionIfNecessaryForObject:v5 withReason:@"CSDTransactionManager"];
    v14 = dispatch_time(0, 10000000000);
    v15 = v5->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067DBC;
    block[3] = &unk_100619D38;
    v16 = v5;
    v31 = v16;
    dispatch_after(v14, v15, block);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = +[TUCallCenter sharedInstance];
    _allCalls = [v17 _allCalls];

    v19 = [_allCalls countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        v22 = 0;
        do
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(_allCalls);
          }

          [(CSDTransactionManager *)v16 beginTransactionIfNecessaryForObject:*(*(&v26 + 1) + 8 * v22) withReason:@"TUCallCenter_allCalls"];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [_allCalls countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v20);
    }

    v23 = +[TUCallCenter sharedInstance];
    conversationManager = [v23 conversationManager];

    [conversationManager addDelegate:v16 queue:queueCopy];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDTransactionManager;
  [(CSDTransactionManager *)&v4 dealloc];
}

- (void)beginTransactionIfNecessaryForObject:(id)object withReason:(id)reason
{
  objectCopy = object;
  reasonCopy = reason;
  queue = [(CSDTransactionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (objectCopy)
  {
    openTransactions = [(CSDTransactionManager *)self openTransactions];
    v10 = [openTransactions objectForKey:objectCopy];

    if (!v10)
    {
      objectCopy = [@"com.apple.calls.callservicesd." stringByAppendingFormat:@"%@:%@", reasonCopy, objectCopy];
      [objectCopy UTF8String];
      v12 = os_transaction_create();

      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        openTransactions2 = [(CSDTransactionManager *)self openTransactions];
        *buf = 138412802;
        v17 = objectCopy;
        v18 = 2048;
        v19 = [openTransactions2 count];
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Beginning transaction for %@. Transaction count is now %lu. Added transaction: %@", buf, 0x20u);
      }

      openTransactions3 = [(CSDTransactionManager *)self openTransactions];
      [openTransactions3 setObject:v12 forKey:objectCopy];
    }
  }
}

- (void)endTransactionIfNecessaryForObject:(id)object
{
  objectCopy = object;
  queue = [(CSDTransactionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (objectCopy)
  {
    openTransactions = [(CSDTransactionManager *)self openTransactions];
    v7 = [openTransactions objectForKey:objectCopy];

    if (v7)
    {
      openTransactions2 = [(CSDTransactionManager *)self openTransactions];
      v9 = [openTransactions2 objectForKey:objectCopy];

      openTransactions3 = [(CSDTransactionManager *)self openTransactions];
      [openTransactions3 removeObjectForKey:objectCopy];

      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        openTransactions4 = [(CSDTransactionManager *)self openTransactions];
        v13 = 138412802;
        v14 = objectCopy;
        v15 = 2048;
        v16 = [openTransactions4 count];
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ending transaction for %@. Transaction count is now %lu. Ended transaction: %@", &v13, 0x20u);
      }
    }
  }
}

- (void)handleCallStatusChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDTransactionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [changedCopy object];

  if ([object status] == 6)
  {
    [(CSDTransactionManager *)self endTransactionIfNecessaryForObject:object];
  }

  else
  {
    [(CSDTransactionManager *)self beginTransactionIfNecessaryForObject:object withReason:@"handleCallStatusChanged"];
  }
}

- (void)handleSessionStateChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDTransactionManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000682A0;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)_reevaluateTransactionForConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDTransactionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[TUCallCenter sharedInstance];
  conversationManager = [v6 conversationManager];
  v8 = [conversationManager activeConversationWithUUID:conversationCopy];

  if ([v8 isContinuitySession] && !objc_msgSend(v8, "avMode") && (v10 = objc_msgSend(v8, "state"), v8) && v10 == 3)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beginning transaction if needed for laguna conversation: %@", &v12, 0xCu);
    }

    [(CSDTransactionManager *)self beginTransactionIfNecessaryForObject:conversationCopy withReason:@"Active Conversation"];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ending transaction for conversation: %@", &v12, 0xCu);
    }

    [(CSDTransactionManager *)self endTransactionIfNecessaryForObject:conversationCopy];
  }
}

- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation
{
  uUID = [conversation UUID];
  [(CSDTransactionManager *)self _reevaluateTransactionForConversation:uUID];
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  uUID = [conversation UUID];
  [(CSDTransactionManager *)self _reevaluateTransactionForConversation:uUID];
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  uUID = [conversation UUID];
  [(CSDTransactionManager *)self _reevaluateTransactionForConversation:uUID];
}

- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation
{
  uUID = [conversation UUID];
  [(CSDTransactionManager *)self _reevaluateTransactionForConversation:uUID];
}

@end