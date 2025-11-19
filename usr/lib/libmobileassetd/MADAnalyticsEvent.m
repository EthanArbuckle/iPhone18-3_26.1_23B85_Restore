@interface MADAnalyticsEvent
+ (id)eventWithName:(id)a3 payload:(id)a4;
- (MADAnalyticsEvent)initWithCoder:(id)a3;
- (MADAnalyticsEvent)initWithEventName:(id)a3;
- (NSDictionary)eventPayload;
- (id)description;
- (void)_queue_removeEventPayloadEntry:(id)a3;
- (void)_queue_setEventPayloadEntry:(id)a3 value:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)removeEventPayloadEntry:(id)a3;
- (void)setEventPayloadEntry:(id)a3 value:(id)a4;
@end

@implementation MADAnalyticsEvent

+ (id)eventWithName:(id)a3 payload:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MADAnalyticsEvent alloc] initWithEventName:v5];
  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v6 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = [v6 objectForKey:v13];
          [(MADAnalyticsEvent *)v7 setEventPayloadEntry:v13 value:v15];

          objc_autoreleasePoolPop(v14);
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

- (MADAnalyticsEvent)initWithEventName:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = MADAnalyticsEvent;
  v6 = [(MADAnalyticsEvent *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, a3);
    v8 = objc_alloc_init(NSMutableDictionary);
    mutableEventPayload = v7->_mutableEventPayload;
    v7->_mutableEventPayload = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.MAD.CoreAnalyticsEventQueue", v10);
    stateQueue = v7->_stateQueue;
    v7->_stateQueue = v11;

    v13 = +[NSUUID UUID];
    v14 = [v13 UUIDString];
    eventUUID = v7->_eventUUID;
    v7->_eventUUID = v14;
  }

  return v7;
}

- (MADAnalyticsEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAnalyticsEvent *)self initWithEventName:0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventUuid"];
    eventUUID = v5->_eventUUID;
    v5->_eventUUID = v8;

    v10 = [NSSet setWithObjects:objc_opt_class(), 0];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    v14 = [v4 decodeDictionaryWithKeysOfClasses:v10 objectsOfClasses:v13 forKey:@"eventPayload"];
    [(NSMutableDictionary *)v5->_mutableEventPayload addEntriesFromDictionary:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAnalyticsEvent *)self eventName];
  [v4 encodeObject:v5 forKey:@"eventName"];

  v6 = [(MADAnalyticsEvent *)self eventUUID];
  [v4 encodeObject:v6 forKey:@"eventUuid"];

  v7 = [(MADAnalyticsEvent *)self eventPayload];
  [v4 encodeObject:v7 forKey:@"eventPayload"];
}

- (NSDictionary)eventPayload
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __33__MADAnalyticsEvent_eventPayload__block_invoke;
  v6[3] = &unk_4B2AC8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__MADAnalyticsEvent_eventPayload__block_invoke(uint64_t a1)
{
  v2 = [NSDictionary alloc];
  v6 = [*(a1 + 32) mutableEventPayload];
  v3 = [v2 initWithDictionary:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setEventPayloadEntry:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __48__MADAnalyticsEvent_setEventPayloadEntry_value___block_invoke;
    block[3] = &unk_4B2AF0;
    block[4] = self;
    v13 = v6;
    v14 = v7;
    dispatch_sync(stateQueue, block);
  }

  else
  {
    v9 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Event payload data %{public}@ is unsupported type %{public}@. Supported Types: NSString, NSNumber, NSData, NSDate", buf, 0x16u);
    }
  }
}

- (void)removeEventPayloadEntry:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __45__MADAnalyticsEvent_removeEventPayloadEntry___block_invoke;
  v7[3] = &unk_4B2B18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (void)_queue_setEventPayloadEntry:(id)a3 value:(id)a4
{
  stateQueue = self->_stateQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(stateQueue);
  [(NSMutableDictionary *)self->_mutableEventPayload setSafeObject:v7 forKey:v8];
}

- (void)_queue_removeEventPayloadEntry:(id)a3
{
  stateQueue = self->_stateQueue;
  v5 = a3;
  dispatch_assert_queue_V2(stateQueue);
  [(NSMutableDictionary *)self->_mutableEventPayload setObject:0 forKeyedSubscript:v5];
}

- (id)description
{
  v3 = [(MADAnalyticsEvent *)self eventName];
  v4 = [(MADAnalyticsEvent *)self eventUUID];
  v5 = [(MADAnalyticsEvent *)self eventPayload];
  v6 = [NSString stringWithFormat:@"EventName: %@ EventUUID: %@ EventPayload: %@", v3, v4, v5];

  return v6;
}

@end