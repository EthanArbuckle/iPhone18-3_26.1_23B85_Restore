@interface CSDCallDataSource
+ (Class)callClass;
- (BOOL)shouldRegisterCall:(id)a3;
- (BOOL)shouldTrackCall:(id)a3;
- (CSDCallDataSource)initWithCallStateController:(id)a3 queue:(id)a4;
- (CSDCallStateController)callStateController;
- (NSArray)calls;
- (id)callWithUniqueProxyIdentifier:(id)a3;
- (void)_postClientNotificationName:(id)a3 forCall:(id)a4 userInfo:(id)a5;
- (void)answerCall:(id)a3 withRequest:(id)a4 whileDisconnectingCalls:(id)a5 andHoldingCalls:(id)a6;
- (void)disconnectCall:(id)a3 whileUngroupingCall:(id)a4;
- (void)groupCalls:(id)a3 withCalls:(id)a4;
- (void)handleBytesOfDataUsedChanged:(int64_t)a3 forCallWithUniqueProxyIdentifier:(id)a4 callHistoryIdentifier:(id)a5;
- (void)handleCallStatusChanged:(id)a3;
- (void)holdCalls:(id)a3 whileUnholdingCalls:(id)a4;
- (void)registerCall:(id)a3;
- (void)startTrackingCall:(id)a3;
- (void)stopTrackingCall:(id)a3;
- (void)ungroupCall:(id)a3 fromOtherCallsInGroup:(id)a4;
@end

@implementation CSDCallDataSource

- (NSArray)calls
{
  v2 = [(CSDCallDataSource *)self currentCallSet];
  v3 = [v2 array];
  v4 = [v3 copy];

  return v4;
}

- (CSDCallStateController)callStateController
{
  WeakRetained = objc_loadWeakRetained(&self->_callStateController);

  return WeakRetained;
}

- (CSDCallDataSource)initWithCallStateController:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CSDCallDataSource;
  v8 = [(CSDCallDataSource *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a4);
    objc_storeWeak(&v9->_callStateController, v6);
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
  [v4 handleFailureInMethod:a2 object:a1 file:@"CSDCallDataSource.m" lineNumber:52 description:@"All CSDCallDataSource subclasses must override +callClass"];

  return 0;
}

- (id)callWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTable];
  v7 = [v6 objectForKey:v4];

  v8 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_signal(v8);

  return v7;
}

- (BOOL)shouldTrackCall:(id)a3
{
  v3 = a3;
  if ([v3 status] == 6 || !objc_msgSend(v3, "status"))
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

- (BOOL)shouldRegisterCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self currentCallSet];
  v6 = ([v5 containsObject:v4] & 1) != 0 || -[CSDCallDataSource shouldTrackCall:](self, "shouldTrackCall:", v4) || objc_msgSend(v4, "disconnectedReason") == 21;

  return v6;
}

- (void)registerCall:(id)a3
{
  v9 = a3;
  if ([(CSDCallDataSource *)self shouldTrackCall:?])
  {
    v4 = [(CSDCallDataSource *)self callStateController];
    [v4 setCallDelegatesIfNeeded:v9];

    v5 = [(CSDCallDataSource *)self currentCallSet];
    v6 = [v5 containsObject:v9];

    if ((v6 & 1) == 0)
    {
      [(CSDCallDataSource *)self startTrackingCall:v9];
    }
  }

  else
  {
    v7 = [(CSDCallDataSource *)self currentCallSet];
    v8 = [v7 containsObject:v9];

    if (v8)
    {
      [(CSDCallDataSource *)self stopTrackingCall:v9];
    }
  }
}

- (void)startTrackingCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self currentCallSet];
  [v5 addObject:v4];

  v6 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  v7 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTable];
  v8 = [v4 uniqueProxyIdentifier];
  [v7 setObject:v4 forKey:v8];

  v9 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_signal(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Started tracking call: %@", &v11, 0xCu);
  }
}

- (void)stopTrackingCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self currentCallSet];
  [v5 removeObject:v4];

  v6 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  v7 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTable];
  v8 = [v4 uniqueProxyIdentifier];
  [v7 removeObjectForKey:v8];

  v9 = [(CSDCallDataSource *)self uniqueProxyIdentifierToCallTableSemaphore];
  dispatch_semaphore_signal(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stopped tracking call: %@", &v11, 0xCu);
  }
}

- (void)answerCall:(id)a3 withRequest:(id)a4 whileDisconnectingCalls:(id)a5 andHoldingCalls:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v35 = v9;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asked to answer call %@ while disconnecting calls %@ and holding calls %@", buf, 0x20u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v12;
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
  v19 = v11;
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

  [v9 answerWithRequest:v10];
}

- (void)holdCalls:(id)a3 whileUnholdingCalls:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to hold calls %@ while unholding calls %@", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
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
  v13 = v6;
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

- (void)groupCalls:(id)a3 withCalls:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to group calls %@ with calls %@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
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
        v14 = [v6 firstObject];
        [v13 groupWithOtherCall:v14];

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
  v15 = v6;
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

- (void)ungroupCall:(id)a3 fromOtherCallsInGroup:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to ungroup call %@ from other calls in group %@", buf, 0x16u);
  }

  [v5 ungroup];
  if ([v5 isOnHold])
  {
    [v5 unhold];
  }

  if ([v6 count] == 1)
  {
    v8 = [v6 firstObject];
    [v8 ungroup];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v6;
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

- (void)disconnectCall:(id)a3 whileUngroupingCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to disconnect call %@ while ungrouping call %@", buf, 0x16u);
  }

  v12 = v6;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v11 = v7;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [(CSDCallDataSource *)self disconnectCalls:v9 withReason:0 whileHoldingCalls:&__NSArray0__struct andUnholdingCalls:&__NSArray0__struct andUngroupingCalls:v10];
}

- (void)handleCallStatusChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleCallStatusChanged %@", &v6, 0xCu);
  }

  if ([v4 status] == 6)
  {
    [v4 updateForDisconnection];
  }

  [v4 propertiesChanged];
  [(CSDCallDataSource *)self registerCall:v4];
}

- (void)handleBytesOfDataUsedChanged:(int64_t)a3 forCallWithUniqueProxyIdentifier:(id)a4 callHistoryIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218242;
    v14 = a3;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "bytesOfDataUsed: %ld callHistoryIdentifier: %@", &v13, 0x16u);
  }

  v11 = [(CSDCallDataSource *)self callStateController];
  v12 = [v11 recentsController];

  [v12 updateBytesOfDataUsed:a3 forCallWithUniqueProxyIdentifier:v9 callHistoryIdentifier:v8];
}

- (void)_postClientNotificationName:(id)a3 forCall:(id)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CSDCallDataSource *)self callStateController];
  [v11 sendClientsNotificationName:v10 forCall:v9 userInfo:v8];
}

@end