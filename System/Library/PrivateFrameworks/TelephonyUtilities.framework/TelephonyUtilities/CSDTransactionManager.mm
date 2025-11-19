@interface CSDTransactionManager
+ (id)sharedInstanceWithQueue:(id)a3;
- (CSDTransactionManager)initWithQueue:(id)a3;
- (void)_reevaluateTransactionForConversation:(id)a3;
- (void)beginTransactionIfNecessaryForObject:(id)a3 withReason:(id)a4;
- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 avModeChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)dealloc;
- (void)endTransactionIfNecessaryForObject:(id)a3;
- (void)handleCallStatusChanged:(id)a3;
- (void)handleSessionStateChanged:(id)a3;
@end

@implementation CSDTransactionManager

+ (id)sharedInstanceWithQueue:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100067A5C;
  v9[3] = &unk_100619D60;
  v10 = a3;
  v11 = a1;
  v4 = qword_1006ACAB8;
  v5 = v10;
  if (v4 != -1)
  {
    dispatch_once(&qword_1006ACAB8, v9);
  }

  v6 = qword_1006ACAB0;
  v7 = qword_1006ACAB0;

  return v6;
}

- (CSDTransactionManager)initWithQueue:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CSDTransactionManager;
  v5 = [(CSDTransactionManager *)&v32 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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
    v18 = [v17 _allCalls];

    v19 = [v18 countByEnumeratingWithState:&v26 objects:v33 count:16];
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
            objc_enumerationMutation(v18);
          }

          [(CSDTransactionManager *)v16 beginTransactionIfNecessaryForObject:*(*(&v26 + 1) + 8 * v22) withReason:@"TUCallCenter_allCalls"];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v20);
    }

    v23 = +[TUCallCenter sharedInstance];
    v24 = [v23 conversationManager];

    [v24 addDelegate:v16 queue:v4];
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

- (void)beginTransactionIfNecessaryForObject:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDTransactionManager *)self queue];
  dispatch_assert_queue_V2(v8);

  if (v6)
  {
    v9 = [(CSDTransactionManager *)self openTransactions];
    v10 = [v9 objectForKey:v6];

    if (!v10)
    {
      v11 = [@"com.apple.calls.callservicesd." stringByAppendingFormat:@"%@:%@", v7, v6];
      [v11 UTF8String];
      v12 = os_transaction_create();

      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(CSDTransactionManager *)self openTransactions];
        *buf = 138412802;
        v17 = v6;
        v18 = 2048;
        v19 = [v14 count];
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Beginning transaction for %@. Transaction count is now %lu. Added transaction: %@", buf, 0x20u);
      }

      v15 = [(CSDTransactionManager *)self openTransactions];
      [v15 setObject:v12 forKey:v6];
    }
  }
}

- (void)endTransactionIfNecessaryForObject:(id)a3
{
  v4 = a3;
  v5 = [(CSDTransactionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [(CSDTransactionManager *)self openTransactions];
    v7 = [v6 objectForKey:v4];

    if (v7)
    {
      v8 = [(CSDTransactionManager *)self openTransactions];
      v9 = [v8 objectForKey:v4];

      v10 = [(CSDTransactionManager *)self openTransactions];
      [v10 removeObjectForKey:v4];

      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(CSDTransactionManager *)self openTransactions];
        v13 = 138412802;
        v14 = v4;
        v15 = 2048;
        v16 = [v12 count];
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ending transaction for %@. Transaction count is now %lu. Ended transaction: %@", &v13, 0x20u);
      }
    }
  }
}

- (void)handleCallStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDTransactionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 object];

  if ([v6 status] == 6)
  {
    [(CSDTransactionManager *)self endTransactionIfNecessaryForObject:v6];
  }

  else
  {
    [(CSDTransactionManager *)self beginTransactionIfNecessaryForObject:v6 withReason:@"handleCallStatusChanged"];
  }
}

- (void)handleSessionStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDTransactionManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000682A0;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_reevaluateTransactionForConversation:(id)a3
{
  v4 = a3;
  v5 = [(CSDTransactionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 conversationManager];
  v8 = [v7 activeConversationWithUUID:v4];

  if ([v8 isContinuitySession] && !objc_msgSend(v8, "avMode") && (v10 = objc_msgSend(v8, "state"), v8) && v10 == 3)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beginning transaction if needed for laguna conversation: %@", &v12, 0xCu);
    }

    [(CSDTransactionManager *)self beginTransactionIfNecessaryForObject:v4 withReason:@"Active Conversation"];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ending transaction for conversation: %@", &v12, 0xCu);
    }

    [(CSDTransactionManager *)self endTransactionIfNecessaryForObject:v4];
  }
}

- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4
{
  v5 = [a4 UUID];
  [(CSDTransactionManager *)self _reevaluateTransactionForConversation:v5];
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v5 = [a4 UUID];
  [(CSDTransactionManager *)self _reevaluateTransactionForConversation:v5];
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v5 = [a4 UUID];
  [(CSDTransactionManager *)self _reevaluateTransactionForConversation:v5];
}

- (void)conversationManager:(id)a3 avModeChangedForConversation:(id)a4
{
  v5 = [a4 UUID];
  [(CSDTransactionManager *)self _reevaluateTransactionForConversation:v5];
}

@end