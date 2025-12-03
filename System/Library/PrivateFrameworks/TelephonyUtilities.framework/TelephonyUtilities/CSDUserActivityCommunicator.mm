@interface CSDUserActivityCommunicator
- (CSDUserActivity)currentlyBroadcastedActivity;
- (CSDUserActivityCommunicator)init;
- (CSDUserActivityCommunicatorDelegate)delegate;
- (id)queuedActivitiesOfType:(unsigned int)type;
- (void)_broadcastActivity:(id)activity withTimeout:(double)timeout shouldPrioritize:(BOOL)prioritize;
- (void)_stopBroadcastingActivity:(id)activity;
- (void)_stopListeningForBestAppSuggestionIfAppropriate;
- (void)_updateCurrentlyBroadcastedActivity;
- (void)bestAppSuggestionChanged:(id)changed;
- (void)broadcastActivity:(id)activity withTimeout:(double)timeout shouldPrioritize:(BOOL)prioritize;
- (void)listenForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
- (void)stopBroadcastingActivity:(id)activity;
- (void)stopListeningForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
- (void)stopListeningForActivityType:(unsigned int)type matchingDynamicIdentifierSubstring:(id)substring;
@end

@implementation CSDUserActivityCommunicator

- (void)_updateCurrentlyBroadcastedActivity
{
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  currentlyBroadcastedActivity = self->_currentlyBroadcastedActivity;
  activityQueue = [(CSDUserActivityCommunicator *)self activityQueue];
  firstObject = [activityQueue firstObject];

  if (currentlyBroadcastedActivity != firstObject)
  {
    activityQueue2 = [(CSDUserActivityCommunicator *)self activityQueue];
    firstObject2 = [activityQueue2 firstObject];
    v9 = self->_currentlyBroadcastedActivity;
    self->_currentlyBroadcastedActivity = firstObject2;

    userActivity = [(CSDUserActivity *)self->_currentlyBroadcastedActivity userActivity];
    [userActivity becomeCurrent];

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
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  listeningIdentifiersByActivityType = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
  allKeys = [listeningIdentifiersByActivityType allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(allKeys);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if (+[CSDUserActivity activityTypeRequiresBestAppSuggestionListener:](CSDUserActivity, "activityTypeRequiresBestAppSuggestionListener:", [v10 intValue]))
      {
        listeningIdentifiersByActivityType2 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
        v12 = [listeningIdentifiersByActivityType2 objectForKeyedSubscript:v10];
        v13 = [v12 count];

        if (v13)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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

    allKeys = [(CSDUserActivityCommunicator *)self bestAppSuggestionManager];
    [allKeys stopListeningForBestAppSuggestions];
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

    bestAppSuggestionManager = [(CSDUserActivityCommunicator *)v2 bestAppSuggestionManager];
    [bestAppSuggestionManager setDelegate:v2];
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
  queue = [(CSDUserActivityCommunicator *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B67D4;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)queuedActivitiesOfType:(unsigned int)type
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286C4;
  v14 = sub_1000328EC;
  v15 = +[NSMutableSet set];
  queue = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6924;
  block[3] = &unk_10061D9B8;
  typeCopy = type;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(queue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)broadcastActivity:(id)activity withTimeout:(double)timeout shouldPrioritize:(BOOL)prioritize
{
  activityCopy = activity;
  queue = [(CSDUserActivityCommunicator *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B6B60;
  v11[3] = &unk_10061D9E0;
  v11[4] = self;
  v12 = activityCopy;
  timeoutCopy = timeout;
  prioritizeCopy = prioritize;
  v10 = activityCopy;
  dispatch_async(queue, v11);
}

- (void)stopBroadcastingActivity:(id)activity
{
  activityCopy = activity;
  queue = [(CSDUserActivityCommunicator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B6C28;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = activityCopy;
  v6 = activityCopy;
  dispatch_async(queue, v7);
}

- (void)listenForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6CF0;
  block[3] = &unk_10061CF48;
  typeCopy = type;
  block[4] = self;
  v10 = identifierCopy;
  v8 = identifierCopy;
  dispatch_sync(queue, block);
}

- (void)stopListeningForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6DBC;
  block[3] = &unk_10061CF48;
  typeCopy = type;
  block[4] = self;
  v10 = identifierCopy;
  v8 = identifierCopy;
  dispatch_sync(queue, block);
}

- (void)stopListeningForActivityType:(unsigned int)type matchingDynamicIdentifierSubstring:(id)substring
{
  substringCopy = substring;
  queue = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6E88;
  block[3] = &unk_10061CF48;
  typeCopy = type;
  block[4] = self;
  v10 = substringCopy;
  v8 = substringCopy;
  dispatch_sync(queue, block);
}

- (void)_broadcastActivity:(id)activity withTimeout:(double)timeout shouldPrioritize:(BOOL)prioritize
{
  prioritizeCopy = prioritize;
  activityCopy = activity;
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (prioritizeCopy)
  {
    if (v11)
    {
      *buf = 138412546;
      v22 = activityCopy;
      v23 = 2048;
      timeoutCopy2 = timeout;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Queueing activity at beginning of queue: %@ (timeout: %f)", buf, 0x16u);
    }

    activityQueue = [(CSDUserActivityCommunicator *)self activityQueue];
    [activityQueue insertObject:activityCopy atIndex:0];
  }

  else
  {
    if (v11)
    {
      *buf = 138412546;
      v22 = activityCopy;
      v23 = 2048;
      timeoutCopy2 = timeout;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Queueing activity at end of queue: %@ (timeout: %f)", buf, 0x16u);
    }

    activityQueue = [(CSDUserActivityCommunicator *)self activityQueue];
    [activityQueue addObject:activityCopy];
  }

  if (timeout >= 0.0)
  {
    v13 = dispatch_time(0, (timeout * 1000000000.0));
    queue2 = [(CSDUserActivityCommunicator *)self queue];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1001B70B4;
    v18 = &unk_100619D88;
    selfCopy = self;
    v20 = activityCopy;
    dispatch_after(v13, queue2, &v15);
  }

  [(CSDUserActivityCommunicator *)self _updateCurrentlyBroadcastedActivity:v15];
}

- (void)_stopBroadcastingActivity:(id)activity
{
  activityCopy = activity;
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = activityCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dequeueing activity: %@", &v9, 0xCu);
  }

  activityQueue = [(CSDUserActivityCommunicator *)self activityQueue];
  [activityQueue removeObject:activityCopy];

  userActivity = [activityCopy userActivity];
  [userActivity invalidate];

  [(CSDUserActivityCommunicator *)self _updateCurrentlyBroadcastedActivity];
}

- (void)bestAppSuggestionChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityCommunicator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B7E1C;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (CSDUserActivityCommunicatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end