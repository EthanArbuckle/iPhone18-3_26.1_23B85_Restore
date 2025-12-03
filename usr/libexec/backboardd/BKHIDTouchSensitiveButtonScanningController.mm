@interface BKHIDTouchSensitiveButtonScanningController
- (BKHIDTouchSensitiveButtonScanningController)initWithContext:(id)context;
- (BOOL)handlesPersistentPropertiesForSenderDescriptor:(id)descriptor;
- (int64_t)setPersistentProperties:(id)properties forServicesMatchingDescriptor:(id)descriptor;
- (void)matcher:(id)matcher servicesDidMatch:(id)match;
- (void)serviceDidDisappear:(id)disappear;
- (void)setScanningActive:(BOOL)active buttonIdentifier:(int64_t)identifier forPID:(int)d;
@end

@implementation BKHIDTouchSensitiveButtonScanningController

- (int64_t)setPersistentProperties:(id)properties forServicesMatchingDescriptor:(id)descriptor
{
  propertiesCopy = properties;
  descriptorCopy = descriptor;
  [NSSet setWithObject:@"HalfPressThresholdModifier"];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10001BB08;
  v8 = v15 = &unk_1000FB650;
  v16 = v8;
  v17 = &v18;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:&v12];
  if (*(v19 + 24) == 1)
  {
    v9 = sub_1000526D8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = propertiesCopy;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "BKHIDTouchSensitiveButton disallowed persistent properties: %{public}@", buf, 0xCu);
    }

    v10 = 1;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableSet *)self->_lock_services makeObjectsPerformSelector:"asyncSetProperties:" withObject:propertiesCopy, v12, v13, v14, v15];
    os_unfair_lock_unlock(&self->_lock);
    v10 = 2;
  }

  _Block_object_dispose(&v18, 8);
  return v10;
}

- (BOOL)handlesPersistentPropertiesForSenderDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [descriptorCopy primaryPage] == 65280 && objc_msgSend(descriptorCopy, "primaryUsage") == 102;

  return v4;
}

- (void)serviceDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_services removeObject:disappearCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)matcher:(id)matcher servicesDidMatch:(id)match
{
  matchCopy = match;
  os_unfair_lock_lock(&self->_lock);
  lock_services = self->_lock_services;
  if (!lock_services)
  {
    v7 = objc_alloc_init(NSMutableSet);
    v8 = self->_lock_services;
    self->_lock_services = v7;

    lock_services = self->_lock_services;
  }

  [(NSMutableSet *)lock_services addObjectsFromArray:matchCopy];
  v9 = [BKSHIDEventSenderDescriptor build:&stru_1000FA318];
  v10 = +[BKIOHIDServicePersistentPropertyController touchSensitiveButtonServicePersistentPropertyController];
  v11 = [v10 allPersistentPropertiesForServicesMatchingDescriptor:v9];

  if (![v11 count])
  {

    v11 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = matchCopy;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        [v17 addDisappearanceObserver:self queue:{self->_queue, v18}];
        if (v11)
        {
          [v17 setProperties:v11];
        }

        sub_10001B7E0(self, [(NSMutableIndexSet *)self->_lock_activeCameraButtonScanningPIDs count]!= 0, v17);
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setScanningActive:(BOOL)active buttonIdentifier:(int64_t)identifier forPID:(int)d
{
  activeCopy = active;
  os_unfair_lock_lock(&self->_lock);
  v9 = sub_100008528();
  v10 = v9;
  if (identifier == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromBKSHIDTouchSensitiveButtonIdentifier();
      *buf = 67109634;
      identifierCopy = activeCopy;
      v21 = 2114;
      v22 = v11;
      v23 = 1024;
      dCopy = d;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setScanningActive:%{BOOL}u button:%{public}@ pid:%d", buf, 0x18u);
    }

    if (activeCopy && !self->_lock_activeCameraButtonScanningPIDs)
    {
      v12 = objc_alloc_init(NSMutableIndexSet);
      lock_activeCameraButtonScanningPIDs = self->_lock_activeCameraButtonScanningPIDs;
      self->_lock_activeCameraButtonScanningPIDs = v12;

      v14 = objc_alloc_init(NSMutableDictionary);
      lock_pidToProcessDeathWatcher = self->_lock_pidToProcessDeathWatcher;
      self->_lock_pidToProcessDeathWatcher = v14;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001C024;
    v16[3] = &unk_1000FA6C8;
    v18 = activeCopy;
    v16[4] = self;
    dCopy2 = d;
    sub_10001B610(self, v16);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      identifierCopy = identifier;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "setScanningActive: unsupported touch button identifier: %d", buf, 8u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BKHIDTouchSensitiveButtonScanningController)initWithContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = BKHIDTouchSensitiveButtonScanningController;
  v5 = [(BKHIDTouchSensitiveButtonScanningController *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = BSDispatchQueueCreateWithQualityOfService();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [BKIOHIDServiceMatcher alloc];
    serviceMatcherDataProvider = [contextCopy serviceMatcherDataProvider];
    v11 = [v9 initWithUsagePage:65280 usage:102 builtIn:1 dataProvider:serviceMatcherDataProvider];
    serviceMatcher = v6->_serviceMatcher;
    v6->_serviceMatcher = v11;

    [(BKIOHIDServiceMatcher *)v6->_serviceMatcher startObserving:v6 queue:v6->_queue];
    v13 = +[BKIOHIDServicePersistentPropertyController touchSensitiveButtonServicePersistentPropertyController];
    [v13 registerHandler:v6];
  }

  return v6;
}

@end