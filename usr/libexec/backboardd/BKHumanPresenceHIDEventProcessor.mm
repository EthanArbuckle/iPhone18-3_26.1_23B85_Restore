@interface BKHumanPresenceHIDEventProcessor
- (BKHumanPresenceHIDEventProcessor)init;
- (NSString)description;
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
- (void)_setPresence:(BOOL)a3 forDisplayUUID:(id)a4;
- (void)_setProximityInCentimeters:(double)a3 forDisplayUUID:(id)a4;
- (void)dealloc;
- (void)getStatus:(unint64_t *)a3 presence:(BOOL *)a4 proximityInCentimeters:(double *)a5 forDisplayUUID:(id)a6;
- (void)matcher:(id)a3 servicesDidMatch:(id)a4;
- (void)serviceDidDisappear:(id)a3;
@end

@implementation BKHumanPresenceHIDEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v7 = a4;
  v8 = *a3;
  IntegerValue = IOHIDEventGetIntegerValue();
  if (!IntegerValue)
  {
    IOHIDEventGetFloatValue();
    v17 = v16;
    v18 = BKLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v22 = 138543618;
      *&v22[4] = objc_opt_class();
      *&v22[12] = 2048;
      *&v22[14] = v17;
      v19 = *&v22[4];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@: human proximity event %g", v22, 0x16u);
    }

    v20 = [v7 displayUUID];
    v15 = sub_10000A9C8(v20);

    [(BKHumanPresenceHIDEventProcessor *)self _setProximityInCentimeters:v15 forDisplayUUID:v17];
    goto LABEL_9;
  }

  if (IntegerValue == 3)
  {
    IOHIDEventGetFloatValue();
    v11 = v10;
    v12 = BKLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v22 = 138543618;
      *&v22[4] = objc_opt_class();
      *&v22[12] = 2048;
      *&v22[14] = v11;
      v13 = *&v22[4];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@: human presence event %g", v22, 0x16u);
    }

    v14 = [v7 displayUUID];
    v15 = sub_10000A9C8(v14);

    [(BKHumanPresenceHIDEventProcessor *)self _setPresence:v11 > 0.0 forDisplayUUID:v15, *v22, *&v22[16]];
LABEL_9:
  }

  return 0;
}

- (void)getStatus:(unint64_t *)a3 presence:(BOOL *)a4 proximityInCentimeters:(double *)a5 forDisplayUUID:(id)a6
{
  v10 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040290;
  block[3] = &unk_1000FAFD8;
  block[4] = self;
  v14 = v10;
  v15 = a4;
  v16 = a5;
  v17 = a3;
  v12 = v10;
  dispatch_sync(queue, block);
}

- (void)_setPresence:(BOOL)a3 forDisplayUUID:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004041C;
  block[3] = &unk_1000FB5B8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_setProximityInCentimeters:(double)a3 forDisplayUUID:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000405C0;
  block[3] = &unk_1000FCA90;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)serviceDidDisappear:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = BKLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v4;
    v6 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@: removing %{public}@", &v12, 0x16u);
  }

  v7 = [v4 displayUUID];
  v8 = sub_10000A9C8(v7);

  v9 = [(NSMutableDictionary *)self->_queue_displayUUIDToSensorRecords objectForKey:v8];
  [v9 removeService:v4];
  v10 = [v9 services];
  v11 = [v10 count];

  if (!v11)
  {
    [(NSMutableDictionary *)self->_queue_displayUUIDToSensorRecords removeObjectForKey:v8];
  }
}

- (void)matcher:(id)a3 servicesDidMatch:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    *&v8 = 138543618;
    v19 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = BKLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = objc_opt_class();
          *buf = v19;
          v25 = v14;
          v26 = 2114;
          v27 = v12;
          v15 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@: found %{public}@", buf, 0x16u);
        }

        v16 = [v12 displayUUID];
        v17 = sub_10000A9C8(v16);

        v18 = [(NSMutableDictionary *)self->_queue_displayUUIDToSensorRecords objectForKey:v17];
        if (!v18)
        {
          v18 = objc_alloc_init(_BKHIDHumanPresenceSensorRecord);
          [(NSMutableDictionary *)self->_queue_displayUUIDToSensorRecords setObject:v18 forKey:v17];
        }

        [(_BKHIDHumanPresenceSensorRecord *)v18 addService:v12, v19, v20];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_queue_displayUUIDToSensorRecords withName:@"sensors"];
  v5 = [v3 build];

  return v5;
}

- (void)dealloc
{
  [(BKIOHIDServiceMatcher *)self->_proximityServiceMatcher invalidate];
  [(BKIOHIDServiceMatcher *)self->_presenceServiceMatcher invalidate];
  v3.receiver = self;
  v3.super_class = BKHumanPresenceHIDEventProcessor;
  [(BKHumanPresenceHIDEventProcessor *)&v3 dealloc];
}

- (BKHumanPresenceHIDEventProcessor)init
{
  v13.receiver = self;
  v13.super_class = BKHumanPresenceHIDEventProcessor;
  v2 = [(BKHumanPresenceHIDEventProcessor *)&v13 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    queue = v2->_queue;
    v2->_queue = Serial;

    v5 = objc_alloc_init(NSMutableDictionary);
    queue_displayUUIDToSensorRecords = v2->_queue_displayUUIDToSensorRecords;
    v2->_queue_displayUUIDToSensorRecords = v5;

    v7 = +[BKHIDSystemInterface sharedInstance];
    v8 = [[BKIOHIDServiceMatcher alloc] initWithUsagePage:32 usage:17 builtIn:0 dataProvider:v7];
    presenceServiceMatcher = v2->_presenceServiceMatcher;
    v2->_presenceServiceMatcher = v8;

    [(BKIOHIDServiceMatcher *)v2->_presenceServiceMatcher startObserving:v2 queue:v2->_queue];
    v10 = [[BKIOHIDServiceMatcher alloc] initWithUsagePage:32 usage:18 builtIn:0 dataProvider:v7];
    proximityServiceMatcher = v2->_proximityServiceMatcher;
    v2->_proximityServiceMatcher = v10;

    [(BKIOHIDServiceMatcher *)v2->_proximityServiceMatcher startObserving:v2 queue:v2->_queue];
  }

  return v2;
}

@end