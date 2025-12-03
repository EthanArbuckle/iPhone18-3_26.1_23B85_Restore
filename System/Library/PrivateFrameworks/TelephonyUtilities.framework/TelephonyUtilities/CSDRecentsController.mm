@interface CSDRecentsController
- (BOOL)_canAddCallToCallHistory:(id)history;
- (CSDRecentsController)init;
- (CSDRecentsController)initWithCallCenterObserver:(id)observer transactionManager:(id)manager queue:(id)queue chManager:(id)chManager reminderManager:(id)reminderManager providerManager:(id)providerManager;
- (CSDRecentsController)initWithQueue:(id)queue chManager:(id)manager providerManager:(id)providerManager;
- (CSDUserNotificationDelegate)delegate;
- (id)_callHistoryTransactionObjectWithIdentifier:(id)identifier;
- (void)_addCallToCallHistory:(id)history;
- (void)_addPendingCallToCallHistory:(id)history;
- (void)_addRecentCallToCallHistory:(id)history;
- (void)_callConnected:(id)connected;
- (void)_callHistoryChanged:(id)changed;
- (void)_endTransactionForObjectAfterCallHistoryDatabaseChanges:(id)changes;
- (void)_handleCallHistoryChanged;
- (void)_markReadRecentCallsMatchingHandle:(id)handle;
- (void)callCenterObserver:(id)observer callChanged:(id)changed;
- (void)clearNotificationsIfNecessary;
- (void)dealloc;
- (void)providersChangedForProviderManager:(id)manager withValidKeychain:(BOOL)keychain;
- (void)reportRecentCallForConversation:(id)conversation withStartDate:(id)date avMode:(unint64_t)mode;
- (void)updateBytesOfDataUsed:(int64_t)used forCallWithUniqueProxyIdentifier:(id)identifier callHistoryIdentifier:(id)historyIdentifier;
@end

@implementation CSDRecentsController

- (CSDRecentsController)init
{
  [(CSDRecentsController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CSDRecentsController)initWithQueue:(id)queue chManager:(id)manager providerManager:(id)providerManager
{
  providerManagerCopy = providerManager;
  managerCopy = manager;
  queueCopy = queue;
  v11 = objc_alloc_init(CSDCallCenterObserver);
  v12 = [CSDTransactionManager sharedInstanceWithQueue:queueCopy];
  v13 = [[CSDRecentCallReminderManager alloc] initWithRecentsManager:managerCopy];
  v14 = [(CSDRecentsController *)self initWithCallCenterObserver:v11 transactionManager:v12 queue:queueCopy chManager:managerCopy reminderManager:v13 providerManager:providerManagerCopy];

  return v14;
}

- (CSDRecentsController)initWithCallCenterObserver:(id)observer transactionManager:(id)manager queue:(id)queue chManager:(id)chManager reminderManager:(id)reminderManager providerManager:(id)providerManager
{
  observerCopy = observer;
  managerCopy = manager;
  queueCopy = queue;
  chManagerCopy = chManager;
  reminderManagerCopy = reminderManager;
  providerManagerCopy = providerManager;
  v39.receiver = self;
  v39.super_class = CSDRecentsController;
  v18 = [(CSDRecentsController *)&v39 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v19->_callCenterObserver, observer);
    [(CSDCallCenterObserver *)v19->_callCenterObserver setTriggers:1, chManagerCopy, managerCopy, observerCopy];
    [(CSDCallCenterObserver *)v19->_callCenterObserver setDelegate:v19];
    objc_storeStrong(&v19->_transactionManager, manager);
    objc_storeStrong(&v19->_recentsManager, chManager);
    objc_storeStrong(&v19->_reminderManager, reminderManager);
    objc_storeStrong(&v19->_callProviderManager, providerManager);
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

    [(CSDCallProviderManager *)v19->_callProviderManager addDelegate:v19 queue:queueCopy];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B074C;
    block[3] = &unk_100619D38;
    v38 = v19;
    dispatch_async(queueCopy, block);
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

- (void)_callHistoryChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDRecentsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B0874;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)_callConnected:(id)connected
{
  connectedCopy = connected;
  queue = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [connectedCopy object];

  isScreening = [object isScreening];
  v8 = sub_100004778();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!isScreening)
  {
    if (v9)
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Call connected. Marking all calls as read.", v13, 2u);
    }

    handle = [object handle];
    if ([handle type] == 2)
    {
      value = [handle value];
      isoCountryCode = [object isoCountryCode];
      v8 = [CHHandle normalizedPhoneNumberHandleForValue:value isoCountryCode:isoCountryCode];

      if (!v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = [CHHandle handleWithTUHandle:handle];
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
  queue = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDRecentsController *)self delegate];
  if (delegate)
  {
    v9 = delegate;
    recentsManager = [(CSDRecentsController *)self recentsManager];
    v6 = [CHRecentCall predicateForCallsWithStatusRead:0];
    v7 = [recentsManager callsWithPredicate:v6 limit:0 offset:0 batchSize:0];

    v8 = [v7 valueForKey:@"callerId"];
    [v9 clearReadNotificationsIgnoringHandleIds:v8];

    delegate = v9;
  }
}

- (void)updateBytesOfDataUsed:(int64_t)used forCallWithUniqueProxyIdentifier:(id)identifier callHistoryIdentifier:(id)historyIdentifier
{
  identifierCopy = identifier;
  historyIdentifierCopy = historyIdentifier;
  queue = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218498;
    usedCopy = used;
    v21 = 2112;
    v22 = identifierCopy;
    v23 = 2112;
    v24 = historyIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "bytesOfDataUsed: %ld uniqueProxyIdentifier: %@ callHistoryIdentifier: %@", &v19, 0x20u);
  }

  cachedCalls = [(CSDRecentsController *)self cachedCalls];
  v13 = [cachedCalls objectForKeyedSubscript:identifierCopy];

  v14 = sub_100004778();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v19 = 138412290;
      usedCopy = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Call still exists so updating its bytes of data used: %@", &v19, 0xCu);
    }

    [v13 setBytesOfDataUsed:used];
  }

  else
  {
    if (v15)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No call still exists so updating bytes of data used via CHManager", &v19, 2u);
    }

    recentsManager = [(CSDRecentsController *)self recentsManager];
    v17 = [NSNumber numberWithInteger:used];
    [recentsManager updateBytesOfDataUsedFor:historyIdentifierCopy with:v17];

    v18 = [(CSDRecentsController *)self _callHistoryTransactionObjectWithIdentifier:historyIdentifierCopy];
    [(CSDRecentsController *)self _endTransactionForObjectAfterCallHistoryDatabaseChanges:v18];
  }
}

- (void)reportRecentCallForConversation:(id)conversation withStartDate:(id)date avMode:(unint64_t)mode
{
  conversationCopy = conversation;
  dateCopy = date;
  queue = [(CSDRecentsController *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B0E9C;
  v13[3] = &unk_10061BDD0;
  v14 = conversationCopy;
  v15 = dateCopy;
  selfCopy = self;
  modeCopy = mode;
  v11 = dateCopy;
  v12 = conversationCopy;
  dispatch_async(queue, v13);
}

- (void)_addCallToCallHistory:(id)history
{
  historyCopy = history;
  queue = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [[CHRecentCall alloc] initWithCall:historyCopy];
  if ([v6 mediaType] == 2)
  {
    cachedCallUUIDsToConversationAVMode = [(CSDRecentsController *)self cachedCallUUIDsToConversationAVMode];
    uniqueProxyIdentifier = [historyCopy uniqueProxyIdentifier];
    v9 = [cachedCallUUIDsToConversationAVMode objectForKeyedSubscript:uniqueProxyIdentifier];
    intValue = [v9 intValue];

    if (intValue == 1)
    {
      [v6 setMediaType:1];
    }
  }

  if ([v6 mediaType])
  {
    if ([historyCopy isOneToOneFaceTimeMyself])
    {
      remoteParticipantHandles = [v6 remoteParticipantHandles];
      v12 = [remoteParticipantHandles count];

      if (!v12)
      {
        v13 = [NSSet alloc];
        initiator = [v6 initiator];
        v15 = [v13 initWithObjects:{initiator, 0}];
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

- (void)_addPendingCallToCallHistory:(id)history
{
  userInfo = [history userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"CSDIDSPendingCallKey"];
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

- (void)_addRecentCallToCallHistory:(id)history
{
  historyCopy = history;
  recentsManager = [(CSDRecentsController *)self recentsManager];
  [recentsManager addToCallHistory:historyCopy];

  reminderManager = [(CSDRecentsController *)self reminderManager];
  [reminderManager markRemindersAsCompleteFor:historyCopy];
}

- (void)_handleCallHistoryChanged
{
  queue = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDRecentsController *)self clearNotificationsIfNecessary];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  transactionObjectsAwaitingCallHistory = [(CSDRecentsController *)self transactionObjectsAwaitingCallHistory];
  v5 = [transactionObjectsAwaitingCallHistory countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(transactionObjectsAwaitingCallHistory);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        transactionManager = [(CSDRecentsController *)self transactionManager];
        [transactionManager endTransactionIfNecessaryForObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [transactionObjectsAwaitingCallHistory countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  transactionObjectsAwaitingCallHistory2 = [(CSDRecentsController *)self transactionObjectsAwaitingCallHistory];
  [transactionObjectsAwaitingCallHistory2 removeAllObjects];
}

- (BOOL)_canAddCallToCallHistory:(id)history
{
  historyCopy = history;
  queue = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([historyCopy supportsRecents])
  {
    provider = [historyCopy provider];
    if (![provider supportsRecents] || (objc_msgSend(historyCopy, "isVoicemail") & 1) != 0 || objc_msgSend(historyCopy, "disconnectedReason") == 17)
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

- (id)_callHistoryTransactionObjectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"%@:%@", objc_opt_class(), identifierCopy];

  return identifierCopy;
}

- (void)_endTransactionForObjectAfterCallHistoryDatabaseChanges:(id)changes
{
  changesCopy = changes;
  queue = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = changesCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding transaction object to transactionObjectsAwaitingCallHistory: %@", buf, 0xCu);
  }

  transactionObjectsAwaitingCallHistory = [(CSDRecentsController *)self transactionObjectsAwaitingCallHistory];
  [transactionObjectsAwaitingCallHistory addObject:changesCopy];

  v8 = dispatch_time(0, 10000000000);
  queue2 = [(CSDRecentsController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B16E0;
  v11[3] = &unk_100619D88;
  v11[4] = self;
  v12 = changesCopy;
  v10 = changesCopy;
  dispatch_after(v8, queue2, v11);
}

- (void)_markReadRecentCallsMatchingHandle:(id)handle
{
  handleCopy = handle;
  queue = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [CHRecentCall predicateForCallsWithStatusRead:0];
  v15[0] = v6;
  v7 = [CHRecentCall predicateForCallsWithRemoteParticipantCount:1];
  v15[1] = v7;
  v8 = [CHRecentCall predicateForCallsWithRemoteParticipantHandle:handleCopy];

  v15[2] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:3];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  recentsManager = [(CSDRecentsController *)self recentsManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B198C;
  v13[3] = &unk_10061C850;
  v14 = v10;
  v12 = v10;
  [recentsManager setRead:1 forCallsWithPredicate:v12 completion:v13];
}

- (void)providersChangedForProviderManager:(id)manager withValidKeychain:(BOOL)keychain
{
  managerCopy = manager;
  v7 = sub_100004778();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (keychain)
  {
    if (v8)
    {
      *buf = 138412546;
      selfCopy = self;
      v38 = 2112;
      v39 = managerCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling providersChangedForProviderManager %@, with keychainIsValid: YES and remoteClient: YES", buf, 0x16u);
    }

    selfCopy2 = self;

    v28 = managerCopy;
    v27 = [managerCopy providersByIdentifierForRemoteClients:1];
    allValues = [v27 allValues];
    v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [allValues count]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = allValues;
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

          identifier = [*(*(&v31 + 1) + 8 * v17) identifier];
          v19 = [identifier isEqualToString:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];
          v20 = v16;
          if ((v19 & 1) == 0)
          {
            if ([identifier isEqualToString:@"com.apple.coretelephony"])
            {
              v20 = v15;
            }

            else
            {
              v20 = identifier;
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
      allObjects = [v10 allObjects];
      v22 = [CHRecentCall predicateForCallsWithAnyServiceProviders:allObjects];
      v23 = [NSCompoundPredicate notPredicateWithSubpredicate:v22];

      recentsManager = [(CSDRecentsController *)selfCopy2 recentsManager];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1001B1D90;
      v29[3] = &unk_10061C850;
      v30 = v23;
      v25 = v23;
      [recentsManager deleteCallsWithPredicate:v25 completion:v29];
    }

    v7 = v27;
    managerCopy = v28;
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring providers changed callbck because keychainIsValid was false", buf, 2u);
  }
}

- (void)callCenterObserver:(id)observer callChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDRecentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = changedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "call: %@", &v24, 0xCu);
  }

  uniqueProxyIdentifier = [changedCopy uniqueProxyIdentifier];
  v9 = [(CSDRecentsController *)self _callHistoryTransactionObjectWithIdentifier:uniqueProxyIdentifier];

  status = [changedCopy status];
  cachedCalls = [(CSDRecentsController *)self cachedCalls];
  uniqueProxyIdentifier2 = [changedCopy uniqueProxyIdentifier];
  if (status != 6)
  {
    [cachedCalls setObject:changedCopy forKeyedSubscript:uniqueProxyIdentifier2];

    if ([changedCopy isConversation])
    {
      remoteParticipantHandles = [changedCopy remoteParticipantHandles];
      if ([remoteParticipantHandles count] < 2)
      {
LABEL_11:

        goto LABEL_12;
      }

      cachedCallUUIDsToConversationAVMode = [(CSDRecentsController *)self cachedCallUUIDsToConversationAVMode];
      uniqueProxyIdentifier3 = [changedCopy uniqueProxyIdentifier];
      v16 = [cachedCallUUIDsToConversationAVMode objectForKeyedSubscript:uniqueProxyIdentifier3];

      if (!v16)
      {
        v17 = +[TUCallCenter sharedInstance];
        remoteParticipantHandles = [v17 activeConversationForCall:changedCopy];

        if (remoteParticipantHandles)
        {
          v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [remoteParticipantHandles resolvedAudioVideoMode]);
          cachedCallUUIDsToConversationAVMode2 = [(CSDRecentsController *)self cachedCallUUIDsToConversationAVMode];
          uniqueProxyIdentifier4 = [changedCopy uniqueProxyIdentifier];
          [cachedCallUUIDsToConversationAVMode2 setObject:v18 forKeyedSubscript:uniqueProxyIdentifier4];
        }

        goto LABEL_11;
      }
    }

LABEL_12:
    transactionManager = [(CSDRecentsController *)self transactionManager];
    uniqueProxyIdentifier5 = [changedCopy uniqueProxyIdentifier];
    [transactionManager beginTransactionIfNecessaryForObject:v9 withReason:uniqueProxyIdentifier5];
    goto LABEL_15;
  }

  [cachedCalls setObject:0 forKeyedSubscript:uniqueProxyIdentifier2];

  if ([(CSDRecentsController *)self _canAddCallToCallHistory:changedCopy])
  {
    [(CSDRecentsController *)self _addCallToCallHistory:changedCopy];
    [(CSDRecentsController *)self _endTransactionForObjectAfterCallHistoryDatabaseChanges:v9];
  }

  else
  {
    transactionManager2 = [(CSDRecentsController *)self transactionManager];
    [transactionManager2 endTransactionIfNecessaryForObject:v9];
  }

  transactionManager = [(CSDRecentsController *)self cachedCallUUIDsToConversationAVMode];
  uniqueProxyIdentifier5 = [changedCopy uniqueProxyIdentifier];
  [transactionManager setObject:0 forKeyedSubscript:uniqueProxyIdentifier5];
LABEL_15:
}

- (CSDUserNotificationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end