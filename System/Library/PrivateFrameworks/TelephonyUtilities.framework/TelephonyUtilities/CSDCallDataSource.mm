@interface CSDCallDataSource
+ (Class)callClass;
- (BOOL)shouldRegisterCall:(id)call;
- (BOOL)shouldTrackCall:(id)call;
- (CSDCallDataSource)initWithCallStateController:(id)controller queue:(id)queue;
- (CSDCallStateController)callStateController;
- (NSArray)calls;
- (id)callWithUniqueProxyIdentifier:(id)identifier;
- (void)_postClientNotificationName:(id)name forCall:(id)call userInfo:(id)info;
- (void)answerCall:(id)call withRequest:(id)request whileDisconnectingCalls:(id)calls andHoldingCalls:(id)holdingCalls;
- (void)disconnectCall:(id)call whileUngroupingCall:(id)ungroupingCall;
- (void)groupCalls:(id)calls withCalls:(id)withCalls;
- (void)handleBytesOfDataUsedChanged:(int64_t)changed forCallWithUniqueProxyIdentifier:(id)identifier callHistoryIdentifier:(id)historyIdentifier;
- (void)handleCallStatusChanged:(id)changed;
- (void)holdCalls:(id)calls whileUnholdingCalls:(id)unholdingCalls;
- (void)registerCall:(id)call;
- (void)startTrackingCall:(id)call;
- (void)stopTrackingCall:(id)call;
- (void)ungroupCall:(id)call fromOtherCallsInGroup:(id)group;
@end

@implementation CSDCallDataSource

- (NSArray)calls
{
  currentCallSet = [(CSDCallDataSource *)self currentCallSet];
  array = [currentCallSet array];
  v4 = [array copy];

  return v4;
}

- (CSDCallStateController)callStateController
{
  WeakRetained = objc_loadWeakRetained(&self->_callStateController);

  return WeakRetained;
}

- (CSDCallDataSource)initWithCallStateController:(id)controller queue:(id)queue
{
  controllerCopy = controller;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = CSDCallDataSource;
  v8 = [(CSDCallDataSource *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    objc_storeWeak(&v9->_callStateController, controllerCopy);
    v10 = +[NSMapTable strongToWeakObjectsMapTable];
    uniqueProxyIdentifierToCallTable = v9->_uniqueProxyIdentifierToCallTable;
    v9->_uniqueProxyIdentifierToCallTable = v10;

    v12 = dispatch_semaphore_create(1);
    uniqueProxyIdentifierToCallTableSemaphore = v9->_uniqueProxyIdentifierToCallTableSemaphore;
    v9->_uniqueProxyIdentifierToCallTableSemaphore = v12;

    v14 = +[NSMutableOrderedSet orderedSet];
    currentCallSet = v9->_currentCallSet;
    v9->_currentCallSet = v14;
  }

  return v9;
}

+ (Class)callClass
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDCallDataSource.m" lineNumber:52 description:@"All CSDCallDataSource subclasses must override +callClass"];

  return 0;
}

- (id)callWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uniqueProxyIdentifierToCallTableSemaphore = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_wait(uniqueProxyIdentifierToCallTableSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  uniqueProxyIdentifierToCallTable = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTable];
  v7 = [uniqueProxyIdentifierToCallTable objectForKey:identifierCopy];

  uniqueProxyIdentifierToCallTableSemaphore2 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_signal(uniqueProxyIdentifierToCallTableSemaphore2);

  return v7;
}

- (BOOL)shouldTrackCall:(id)call
{
  callCopy = call;
  if ([callCopy status] == 6 || !objc_msgSend(callCopy, "status"))
  {
    isKindOfClass = 0;
  }

  else
  {
    [objc_opt_class() callClass];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)shouldRegisterCall:(id)call
{
  callCopy = call;
  currentCallSet = [(CSDCallDataSource *)self currentCallSet];
  v6 = ([currentCallSet containsObject:callCopy] & 1) != 0 || -[CSDCallDataSource shouldTrackCall:](self, "shouldTrackCall:", callCopy) || objc_msgSend(callCopy, "disconnectedReason") == 21;

  return v6;
}

- (void)registerCall:(id)call
{
  callCopy = call;
  if ([(CSDCallDataSource *)self shouldTrackCall:?])
  {
    callStateController = [(CSDCallDataSource *)self callStateController];
    [callStateController setCallDelegatesIfNeeded:callCopy];

    currentCallSet = [(CSDCallDataSource *)self currentCallSet];
    v6 = [currentCallSet containsObject:callCopy];

    if ((v6 & 1) == 0)
    {
      [(CSDCallDataSource *)self startTrackingCall:callCopy];
    }
  }

  else
  {
    currentCallSet2 = [(CSDCallDataSource *)self currentCallSet];
    v8 = [currentCallSet2 containsObject:callCopy];

    if (v8)
    {
      [(CSDCallDataSource *)self stopTrackingCall:callCopy];
    }
  }
}

- (void)startTrackingCall:(id)call
{
  callCopy = call;
  currentCallSet = [(CSDCallDataSource *)self currentCallSet];
  [currentCallSet addObject:callCopy];

  uniqueProxyIdentifierToCallTableSemaphore = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_wait(uniqueProxyIdentifierToCallTableSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  uniqueProxyIdentifierToCallTable = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTable];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  [uniqueProxyIdentifierToCallTable setObject:callCopy forKey:uniqueProxyIdentifier];

  uniqueProxyIdentifierToCallTableSemaphore2 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_signal(uniqueProxyIdentifierToCallTableSemaphore2);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = callCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Started tracking call: %@", &v11, 0xCu);
  }
}

- (void)stopTrackingCall:(id)call
{
  callCopy = call;
  currentCallSet = [(CSDCallDataSource *)self currentCallSet];
  [currentCallSet removeObject:callCopy];

  uniqueProxyIdentifierToCallTableSemaphore = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_wait(uniqueProxyIdentifierToCallTableSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  uniqueProxyIdentifierToCallTable = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTable];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  [uniqueProxyIdentifierToCallTable removeObjectForKey:uniqueProxyIdentifier];

  uniqueProxyIdentifierToCallTableSemaphore2 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_signal(uniqueProxyIdentifierToCallTableSemaphore2);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = callCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stopped tracking call: %@", &v11, 0xCu);
  }
}

- (void)answerCall:(id)call withRequest:(id)request whileDisconnectingCalls:(id)calls andHoldingCalls:(id)holdingCalls
{
  callCopy = call;
  requestCopy = request;
  callsCopy = calls;
  holdingCallsCopy = holdingCalls;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v35 = callCopy;
    v36 = 2112;
    v37 = callsCopy;
    v38 = 2112;
    v39 = holdingCallsCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asked to answer call %@ while disconnecting calls %@ and holding calls %@", buf, 0x20u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = holdingCallsCopy;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v28 + 1) + 8 * v18) hold];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v16);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = callsCopy;
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v24 + 1) + 8 * v23) disconnect];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v21);
  }

  [callCopy answerWithRequest:requestCopy];
}

- (void)holdCalls:(id)calls whileUnholdingCalls:(id)unholdingCalls
{
  callsCopy = calls;
  unholdingCallsCopy = unholdingCalls;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = callsCopy;
    v30 = 2112;
    v31 = unholdingCallsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to hold calls %@ while unholding calls %@", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = callsCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v22 + 1) + 8 * v12) hold];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = unholdingCallsCopy;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17) unhold];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)groupCalls:(id)calls withCalls:(id)withCalls
{
  callsCopy = calls;
  withCallsCopy = withCalls;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = callsCopy;
    v33 = 2112;
    v34 = withCallsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to group calls %@ with calls %@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = callsCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        firstObject = [withCallsCopy firstObject];
        [v13 groupWithOtherCall:firstObject];

        if ([v13 isOnHold])
        {
          [v13 unhold];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = withCallsCopy;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v21 + 1) + 8 * j);
        if ([v20 isOnHold])
        {
          [v20 unhold];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }
}

- (void)ungroupCall:(id)call fromOtherCallsInGroup:(id)group
{
  callCopy = call;
  groupCopy = group;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = callCopy;
    v22 = 2112;
    v23 = groupCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to ungroup call %@ from other calls in group %@", buf, 0x16u);
  }

  [callCopy ungroup];
  if ([callCopy isOnHold])
  {
    [callCopy unhold];
  }

  if ([groupCopy count] == 1)
  {
    firstObject = [groupCopy firstObject];
    [firstObject ungroup];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = groupCopy;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if (([v14 isOnHold] & 1) == 0)
        {
          [v14 hold];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)disconnectCall:(id)call whileUngroupingCall:(id)ungroupingCall
{
  callCopy = call;
  ungroupingCallCopy = ungroupingCall;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = callCopy;
    v15 = 2112;
    v16 = ungroupingCallCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to disconnect call %@ while ungrouping call %@", buf, 0x16u);
  }

  v12 = callCopy;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v11 = ungroupingCallCopy;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [(CSDCallDataSource *)self disconnectCalls:v9 withReason:0 whileHoldingCalls:&__NSArray0__struct andUnholdingCalls:&__NSArray0__struct andUngroupingCalls:v10];
}

- (void)handleCallStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleCallStatusChanged %@", &v6, 0xCu);
  }

  if ([changedCopy status] == 6)
  {
    [changedCopy updateForDisconnection];
  }

  [changedCopy propertiesChanged];
  [(CSDCallDataSource *)self registerCall:changedCopy];
}

- (void)handleBytesOfDataUsedChanged:(int64_t)changed forCallWithUniqueProxyIdentifier:(id)identifier callHistoryIdentifier:(id)historyIdentifier
{
  historyIdentifierCopy = historyIdentifier;
  identifierCopy = identifier;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218242;
    changedCopy = changed;
    v15 = 2112;
    v16 = historyIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "bytesOfDataUsed: %ld callHistoryIdentifier: %@", &v13, 0x16u);
  }

  callStateController = [(CSDCallDataSource *)self callStateController];
  recentsController = [callStateController recentsController];

  [recentsController updateBytesOfDataUsed:changed forCallWithUniqueProxyIdentifier:identifierCopy callHistoryIdentifier:historyIdentifierCopy];
}

- (void)_postClientNotificationName:(id)name forCall:(id)call userInfo:(id)info
{
  infoCopy = info;
  callCopy = call;
  nameCopy = name;
  callStateController = [(CSDCallDataSource *)self callStateController];
  [callStateController sendClientsNotificationName:nameCopy forCall:callCopy userInfo:infoCopy];
}

@end