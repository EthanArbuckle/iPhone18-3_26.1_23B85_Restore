@interface CSDRecentsController
- (BOOL)_canAddCallToCallHistory:(id)a3;
- (CSDRecentsController)init;
- (CSDRecentsController)initWithCallCenterObserver:(id)a3 transactionManager:(id)a4 queue:(id)a5 chManager:(id)a6 reminderManager:(id)a7 providerManager:(id)a8;
- (CSDRecentsController)initWithQueue:(id)a3 chManager:(id)a4 providerManager:(id)a5;
- (CSDUserNotificationDelegate)delegate;
- (id)_callHistoryTransactionObjectWithIdentifier:(id)a3;
- (void)_addCallToCallHistory:(id)a3;
- (void)_addPendingCallToCallHistory:(id)a3;
- (void)_addRecentCallToCallHistory:(id)a3;
- (void)_callConnected:(id)a3;
- (void)_callHistoryChanged:(id)a3;
- (void)_endTransactionForObjectAfterCallHistoryDatabaseChanges:(id)a3;
- (void)_handleCallHistoryChanged;
- (void)_markReadRecentCallsMatchingHandle:(id)a3;
- (void)callCenterObserver:(id)a3 callChanged:(id)a4;
- (void)clearNotificationsIfNecessary;
- (void)dealloc;
- (void)providersChangedForProviderManager:(id)a3 withValidKeychain:(BOOL)a4;
- (void)reportRecentCallForConversation:(id)a3 withStartDate:(id)a4 avMode:(unint64_t)a5;
- (void)updateBytesOfDataUsed:(int64_t)a3 forCallWithUniqueProxyIdentifier:(id)a4 callHistoryIdentifier:(id)a5;
@end

@implementation CSDRecentsController

- (CSDRecentsController)init
{
  [(CSDRecentsController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CSDRecentsController)initWithQueue:(id)a3 chManager:(id)a4 providerManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(CSDCallCenterObserver);
  v12 = [CSDTransactionManager sharedInstanceWithQueue:v10];
  v13 = [[CSDRecentCallReminderManager alloc] initWithRecentsManager:v9];
  v14 = [(CSDRecentsController *)self initWithCallCenterObserver:v11 transactionManager:v12 queue:v10 chManager:v9 reminderManager:v13 providerManager:v8];

  return v14;
}

- (CSDRecentsController)initWithCallCenterObserver:(id)a3 transactionManager:(id)a4 queue:(id)a5 chManager:(id)a6 reminderManager:(id)a7 providerManager:(id)a8
{
  v36 = a3;
  v35 = a4;
  v15 = a5;
  v34 = a6;
  v16 = a7;
  v17 = a8;
  v39.receiver = self;
  v39.super_class = CSDRecentsController;
  v18 = [(CSDRecentsController *)&v39 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a5);
    objc_storeStrong(&v19->_callCenterObserver, a3);
    [(CSDCallCenterObserver *)v19->_callCenterObserver setTriggers:1, v34, v35, v36];
    [(CSDCallCenterObserver *)v19->_callCenterObserver setDelegate:v19];
    objc_storeStrong(&v19->_transactionManager, a4);
    objc_storeStrong(&v19->_recentsManager, a6);
    objc_storeStrong(&v19->_reminderManager, a7);
    objc_storeStrong(&v19->_callProviderManager, a8);
    v20 = +[NSMutableArray array];
    transactionObjectsAwaitingCallHistory = v19->_transactionObjectsAwaitingCallHistory;
    v19->_transactionObjectsAwaitingCallHistory = v20;

    v22 = +[NSMutableDictionary dictionary];
    cachedCalls = v19->_cachedCalls;
    v19->_cachedCalls = v22;

    v24 = +[NSMutableDictionary dictionary];
    cachedCallUUIDsToConversationAVMode = v19->_cachedCallUUIDsToConversationAVMode;
    v19->_cachedCallUUIDsToConversationAVMode = v24;

    v26 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v19->_featureFlags;
    v19->_featureFlags = v26;

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v19 selector:"_callHistoryChanged:" name:kCallHistoryDatabaseChangedNotification object:0];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v19 selector:"_addPendingCallToCallHistory:" name:@"CSDIDSPendingMessageDidReceiveCancelNotification" object:0];

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v19 selector:"_callConnected:" name:TUCallCenterCallConnectedNotification object:0];

    v31 = objc_alloc_init(CSDIncomingCallFilter);
    incomingCallFilter = v19->_incomingCallFilter;
    v19->_incomingCallFilter = v31;

    [(CSDCallProviderManager *)v19->_callProviderManager addDelegate:v19 queue:v15];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B074C;
    block[3] = &unk_100619D38;
    v38 = v19;
    dispatch_async(v15, block);
  }

  return v19;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDRecentsController;
  [(CSDRecentsController *)&v4 dealloc];
}

- (void)_callHistoryChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDRecentsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B0874;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_callConnected:(id)a3
{
  v4 = a3;
  v5 = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 object];

  v7 = [v6 isScreening];
  v8 = sub_100004778();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v9)
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Call connected. Marking all calls as read.", v13, 2u);
    }

    v10 = [v6 handle];
    if ([v10 type] == 2)
    {
      v11 = [v10 value];
      v12 = [v6 isoCountryCode];
      v8 = [CHHandle normalizedPhoneNumberHandleForValue:v11 isoCountryCode:v12];

      if (!v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = [CHHandle handleWithTUHandle:v10];
      if (!v8)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    [(CSDRecentsController *)self _markReadRecentCallsMatchingHandle:v8];
    goto LABEL_11;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Call is being screened, ignoring to mark all calls as read", buf, 2u);
  }

LABEL_12:
}

- (void)clearNotificationsIfNecessary
{
  v3 = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDRecentsController *)self delegate];
  if (v4)
  {
    v9 = v4;
    v5 = [(CSDRecentsController *)self recentsManager];
    v6 = [CHRecentCall predicateForCallsWithStatusRead:0];
    v7 = [v5 callsWithPredicate:v6 limit:0 offset:0 batchSize:0];

    v8 = [v7 valueForKey:@"callerId"];
    [v9 clearReadNotificationsIgnoringHandleIds:v8];

    v4 = v9;
  }
}

- (void)updateBytesOfDataUsed:(int64_t)a3 forCallWithUniqueProxyIdentifier:(id)a4 callHistoryIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218498;
    v20 = a3;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "bytesOfDataUsed: %ld uniqueProxyIdentifier: %@ callHistoryIdentifier: %@", &v19, 0x20u);
  }

  v12 = [(CSDRecentsController *)self cachedCalls];
  v13 = [v12 objectForKeyedSubscript:v8];

  v14 = sub_100004778();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v19 = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Call still exists so updating its bytes of data used: %@", &v19, 0xCu);
    }

    [v13 setBytesOfDataUsed:a3];
  }

  else
  {
    if (v15)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No call still exists so updating bytes of data used via CHManager", &v19, 2u);
    }

    v16 = [(CSDRecentsController *)self recentsManager];
    v17 = [NSNumber numberWithInteger:a3];
    [v16 updateBytesOfDataUsedFor:v9 with:v17];

    v18 = [(CSDRecentsController *)self _callHistoryTransactionObjectWithIdentifier:v9];
    [(CSDRecentsController *)self _endTransactionForObjectAfterCallHistoryDatabaseChanges:v18];
  }
}

- (void)reportRecentCallForConversation:(id)a3 withStartDate:(id)a4 avMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CSDRecentsController *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B0E9C;
  v13[3] = &unk_10061BDD0;
  v14 = v8;
  v15 = v9;
  v16 = self;
  v17 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_addCallToCallHistory:(id)a3
{
  v4 = a3;
  v5 = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [[CHRecentCall alloc] initWithCall:v4];
  if ([v6 mediaType] == 2)
  {
    v7 = [(CSDRecentsController *)self cachedCallUUIDsToConversationAVMode];
    v8 = [v4 uniqueProxyIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v9 intValue];

    if (v10 == 1)
    {
      [v6 setMediaType:1];
    }
  }

  if ([v6 mediaType])
  {
    if ([v4 isOneToOneFaceTimeMyself])
    {
      v11 = [v6 remoteParticipantHandles];
      v12 = [v11 count];

      if (!v12)
      {
        v13 = [NSSet alloc];
        v14 = [v6 initiator];
        v15 = [v13 initWithObjects:{v14, 0}];
        [v6 setRemoteParticipantHandles:v15];
      }
    }
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Writing recent call to history: %@", buf, 0xCu);
  }

  [(CSDRecentsController *)self _addRecentCallToCallHistory:v6];
}

- (void)_addPendingCallToCallHistory:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CSDIDSPendingCallKey"];
  v6 = [[CHRecentCall alloc] initWithCall:v5];
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Writing recent pending call to history: %@", &v8, 0xCu);
  }

  [(CSDRecentsController *)self _addRecentCallToCallHistory:v6];
}

- (void)_addRecentCallToCallHistory:(id)a3
{
  v4 = a3;
  v5 = [(CSDRecentsController *)self recentsManager];
  [v5 addToCallHistory:v4];

  v6 = [(CSDRecentsController *)self reminderManager];
  [v6 markRemindersAsCompleteFor:v4];
}

- (void)_handleCallHistoryChanged
{
  v3 = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(v3);

  [(CSDRecentsController *)self clearNotificationsIfNecessary];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CSDRecentsController *)self transactionObjectsAwaitingCallHistory];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(CSDRecentsController *)self transactionManager];
        [v10 endTransactionIfNecessaryForObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = [(CSDRecentsController *)self transactionObjectsAwaitingCallHistory];
  [v11 removeAllObjects];
}

- (BOOL)_canAddCallToCallHistory:(id)a3
{
  v4 = a3;
  v5 = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([v4 supportsRecents])
  {
    v6 = [v4 provider];
    if (![v6 supportsRecents] || (objc_msgSend(v4, "isVoicemail") & 1) != 0 || objc_msgSend(v4, "disconnectedReason") == 17)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = TUSimulatedModeEnabled() ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)_callHistoryTransactionObjectWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%@:%@", objc_opt_class(), v3];

  return v4;
}

- (void)_endTransactionForObjectAfterCallHistoryDatabaseChanges:(id)a3
{
  v4 = a3;
  v5 = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding transaction object to transactionObjectsAwaitingCallHistory: %@", buf, 0xCu);
  }

  v7 = [(CSDRecentsController *)self transactionObjectsAwaitingCallHistory];
  [v7 addObject:v4];

  v8 = dispatch_time(0, 10000000000);
  v9 = [(CSDRecentsController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B16E0;
  v11[3] = &unk_100619D88;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_after(v8, v9, v11);
}

- (void)_markReadRecentCallsMatchingHandle:(id)a3
{
  v4 = a3;
  v5 = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [CHRecentCall predicateForCallsWithStatusRead:0];
  v15[0] = v6;
  v7 = [CHRecentCall predicateForCallsWithRemoteParticipantCount:1];
  v15[1] = v7;
  v8 = [CHRecentCall predicateForCallsWithRemoteParticipantHandle:v4];

  v15[2] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:3];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  v11 = [(CSDRecentsController *)self recentsManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B198C;
  v13[3] = &unk_10061C850;
  v14 = v10;
  v12 = v10;
  [v11 setRead:1 forCallsWithPredicate:v12 completion:v13];
}

- (void)providersChangedForProviderManager:(id)a3 withValidKeychain:(BOOL)a4
{
  v6 = a3;
  v7 = sub_100004778();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v8)
    {
      *buf = 138412546;
      v37 = self;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling providersChangedForProviderManager %@, with keychainIsValid: YES and remoteClient: YES", buf, 0x16u);
    }

    v26 = self;

    v28 = v6;
    v27 = [v6 providersByIdentifierForRemoteClients:1];
    v9 = [v27 allValues];
    v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v9 count]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      v15 = kCHServiceProviderTelephony;
      v16 = kCHServiceProviderFaceTime;
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v18 = [*(*(&v31 + 1) + 8 * v17) identifier];
          v19 = [v18 isEqualToString:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];
          v20 = v16;
          if ((v19 & 1) == 0)
          {
            if ([v18 isEqualToString:@"com.apple.coretelephony"])
            {
              v20 = v15;
            }

            else
            {
              v20 = v18;
            }
          }

          [v10 addObject:v20];

          v17 = v17 + 1;
        }

        while (v13 != v17);
        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      v21 = [v10 allObjects];
      v22 = [CHRecentCall predicateForCallsWithAnyServiceProviders:v21];
      v23 = [NSCompoundPredicate notPredicateWithSubpredicate:v22];

      v24 = [(CSDRecentsController *)v26 recentsManager];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1001B1D90;
      v29[3] = &unk_10061C850;
      v30 = v23;
      v25 = v23;
      [v24 deleteCallsWithPredicate:v25 completion:v29];
    }

    v7 = v27;
    v6 = v28;
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring providers changed callbck because keychainIsValid was false", buf, 2u);
  }
}

- (void)callCenterObserver:(id)a3 callChanged:(id)a4
{
  v5 = a4;
  v6 = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "call: %@", &v24, 0xCu);
  }

  v8 = [v5 uniqueProxyIdentifier];
  v9 = [(CSDRecentsController *)self _callHistoryTransactionObjectWithIdentifier:v8];

  v10 = [v5 status];
  v11 = [(CSDRecentsController *)self cachedCalls];
  v12 = [v5 uniqueProxyIdentifier];
  if (v10 != 6)
  {
    [v11 setObject:v5 forKeyedSubscript:v12];

    if ([v5 isConversation])
    {
      v13 = [v5 remoteParticipantHandles];
      if ([v13 count] < 2)
      {
LABEL_11:

        goto LABEL_12;
      }

      v14 = [(CSDRecentsController *)self cachedCallUUIDsToConversationAVMode];
      v15 = [v5 uniqueProxyIdentifier];
      v16 = [v14 objectForKeyedSubscript:v15];

      if (!v16)
      {
        v17 = +[TUCallCenter sharedInstance];
        v13 = [v17 activeConversationForCall:v5];

        if (v13)
        {
          v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 resolvedAudioVideoMode]);
          v19 = [(CSDRecentsController *)self cachedCallUUIDsToConversationAVMode];
          v20 = [v5 uniqueProxyIdentifier];
          [v19 setObject:v18 forKeyedSubscript:v20];
        }

        goto LABEL_11;
      }
    }

LABEL_12:
    v21 = [(CSDRecentsController *)self transactionManager];
    v22 = [v5 uniqueProxyIdentifier];
    [v21 beginTransactionIfNecessaryForObject:v9 withReason:v22];
    goto LABEL_15;
  }

  [v11 setObject:0 forKeyedSubscript:v12];

  if ([(CSDRecentsController *)self _canAddCallToCallHistory:v5])
  {
    [(CSDRecentsController *)self _addCallToCallHistory:v5];
    [(CSDRecentsController *)self _endTransactionForObjectAfterCallHistoryDatabaseChanges:v9];
  }

  else
  {
    v23 = [(CSDRecentsController *)self transactionManager];
    [v23 endTransactionIfNecessaryForObject:v9];
  }

  v21 = [(CSDRecentsController *)self cachedCallUUIDsToConversationAVMode];
  v22 = [v5 uniqueProxyIdentifier];
  [v21 setObject:0 forKeyedSubscript:v22];
LABEL_15:
}

- (CSDUserNotificationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end