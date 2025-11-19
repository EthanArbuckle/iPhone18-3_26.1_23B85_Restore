@interface CSDUserActivityCommunicator
- (CSDUserActivity)currentlyBroadcastedActivity;
- (CSDUserActivityCommunicator)init;
- (CSDUserActivityCommunicatorDelegate)delegate;
- (id)queuedActivitiesOfType:(unsigned int)a3;
- (void)_broadcastActivity:(id)a3 withTimeout:(double)a4 shouldPrioritize:(BOOL)a5;
- (void)_stopBroadcastingActivity:(id)a3;
- (void)_stopListeningForBestAppSuggestionIfAppropriate;
- (void)_updateCurrentlyBroadcastedActivity;
- (void)bestAppSuggestionChanged:(id)a3;
- (void)broadcastActivity:(id)a3 withTimeout:(double)a4 shouldPrioritize:(BOOL)a5;
- (void)listenForActivityType:(unsigned int)a3 dynamicIdentifier:(id)a4;
- (void)stopBroadcastingActivity:(id)a3;
- (void)stopListeningForActivityType:(unsigned int)a3 dynamicIdentifier:(id)a4;
- (void)stopListeningForActivityType:(unsigned int)a3 matchingDynamicIdentifierSubstring:(id)a4;
@end

@implementation CSDUserActivityCommunicator

- (void)_updateCurrentlyBroadcastedActivity
{
  v3 = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(v3);

  currentlyBroadcastedActivity = self->_currentlyBroadcastedActivity;
  v5 = [(CSDUserActivityCommunicator *)self activityQueue];
  v6 = [v5 firstObject];

  if (currentlyBroadcastedActivity != v6)
  {
    v7 = [(CSDUserActivityCommunicator *)self activityQueue];
    v8 = [v7 firstObject];
    v9 = self->_currentlyBroadcastedActivity;
    self->_currentlyBroadcastedActivity = v8;

    v10 = [(CSDUserActivity *)self->_currentlyBroadcastedActivity userActivity];
    [v10 becomeCurrent];

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_currentlyBroadcastedActivity;
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated currently broadcasted activity to %@", &v13, 0xCu);
    }
  }
}

- (void)_stopListeningForBestAppSuggestionIfAppropriate
{
  v3 = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(v3);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if (+[CSDUserActivity activityTypeRequiresBestAppSuggestionListener:](CSDUserActivity, "activityTypeRequiresBestAppSuggestionListener:", [v10 intValue]))
      {
        v11 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = [v12 count];

        if (v13)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Stopped listening for best app suggestions", v15, 2u);
    }

    v5 = [(CSDUserActivityCommunicator *)self bestAppSuggestionManager];
    [v5 stopListeningForBestAppSuggestions];
  }
}

- (CSDUserActivityCommunicator)init
{
  v9.receiver = self;
  v9.super_class = CSDUserActivityCommunicator;
  v2 = [(CSDUserActivityCommunicator *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.useractivitycommunicator", 0);
    [(CSDUserActivityCommunicator *)v2 setQueue:v3];

    v4 = +[NSMutableOrderedSet orderedSet];
    [(CSDUserActivityCommunicator *)v2 setActivityQueue:v4];

    v5 = +[NSMutableDictionary dictionary];
    [(CSDUserActivityCommunicator *)v2 setListeningIdentifiersByActivityType:v5];

    v6 = objc_alloc_init(UABestAppSuggestionManager);
    [(CSDUserActivityCommunicator *)v2 setBestAppSuggestionManager:v6];

    v7 = [(CSDUserActivityCommunicator *)v2 bestAppSuggestionManager];
    [v7 setDelegate:v2];
  }

  return v2;
}

- (CSDUserActivity)currentlyBroadcastedActivity
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000286C4;
  v11 = sub_1000328EC;
  v12 = 0;
  v3 = [(CSDUserActivityCommunicator *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B67D4;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)queuedActivitiesOfType:(unsigned int)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286C4;
  v14 = sub_1000328EC;
  v15 = +[NSMutableSet set];
  v5 = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6924;
  block[3] = &unk_10061D9B8;
  v9 = a3;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)broadcastActivity:(id)a3 withTimeout:(double)a4 shouldPrioritize:(BOOL)a5
{
  v8 = a3;
  v9 = [(CSDUserActivityCommunicator *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B6B60;
  v11[3] = &unk_10061D9E0;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(v9, v11);
}

- (void)stopBroadcastingActivity:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityCommunicator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B6C28;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)listenForActivityType:(unsigned int)a3 dynamicIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6CF0;
  block[3] = &unk_10061CF48;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)stopListeningForActivityType:(unsigned int)a3 dynamicIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6DBC;
  block[3] = &unk_10061CF48;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)stopListeningForActivityType:(unsigned int)a3 matchingDynamicIdentifierSubstring:(id)a4
{
  v6 = a4;
  v7 = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6E88;
  block[3] = &unk_10061CF48;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)_broadcastActivity:(id)a3 withTimeout:(double)a4 shouldPrioritize:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100004778();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v11)
    {
      *buf = 138412546;
      v22 = v8;
      v23 = 2048;
      v24 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Queueing activity at beginning of queue: %@ (timeout: %f)", buf, 0x16u);
    }

    v12 = [(CSDUserActivityCommunicator *)self activityQueue];
    [v12 insertObject:v8 atIndex:0];
  }

  else
  {
    if (v11)
    {
      *buf = 138412546;
      v22 = v8;
      v23 = 2048;
      v24 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Queueing activity at end of queue: %@ (timeout: %f)", buf, 0x16u);
    }

    v12 = [(CSDUserActivityCommunicator *)self activityQueue];
    [v12 addObject:v8];
  }

  if (a4 >= 0.0)
  {
    v13 = dispatch_time(0, (a4 * 1000000000.0));
    v14 = [(CSDUserActivityCommunicator *)self queue];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1001B70B4;
    v18 = &unk_100619D88;
    v19 = self;
    v20 = v8;
    dispatch_after(v13, v14, &v15);
  }

  [(CSDUserActivityCommunicator *)self _updateCurrentlyBroadcastedActivity:v15];
}

- (void)_stopBroadcastingActivity:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dequeueing activity: %@", &v9, 0xCu);
  }

  v7 = [(CSDUserActivityCommunicator *)self activityQueue];
  [v7 removeObject:v4];

  v8 = [v4 userActivity];
  [v8 invalidate];

  [(CSDUserActivityCommunicator *)self _updateCurrentlyBroadcastedActivity];
}

- (void)bestAppSuggestionChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityCommunicator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B7E1C;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (CSDUserActivityCommunicatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end