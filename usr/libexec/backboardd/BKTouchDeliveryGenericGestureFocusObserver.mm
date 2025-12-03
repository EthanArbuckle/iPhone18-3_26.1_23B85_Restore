@interface BKTouchDeliveryGenericGestureFocusObserver
+ (id)sharedInstance;
- (BKTouchDeliveryGenericGestureFocusObserver)initWithHIDSystem:(id)system;
- (BOOL)destinationPIDMatchesHapticFeedbackRequestPID:(int)d;
- (id)destinationsForEvent:(__IOHIDEvent *)event fromSender:(id)sender overrideSenderDescriptor:(id)descriptor;
- (id)eventDestinationForDisplayUUID:(id)d;
- (void)postEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)setEventDestination:(id)destination forDisplayUUID:(id)d;
@end

@implementation BKTouchDeliveryGenericGestureFocusObserver

- (void)postEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  v6 = [(BKTouchDeliveryGenericGestureFocusObserver *)self destinationsForEvent:event fromSender:sender];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BKTouchDeliveryGenericGestureFocusObserver *)self postEvent:event toDestination:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)destinationsForEvent:(__IOHIDEvent *)event fromSender:(id)sender overrideSenderDescriptor:(id)descriptor
{
  senderCopy = sender;
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  displayUUID = [senderCopy displayUUID];
  v11 = [displayUUID length];
  v12 = BKSDisplayUUIDMainKey;
  if (v11)
  {
    v12 = displayUUID;
  }

  v13 = v12;

  v14 = [(NSMutableDictionary *)self->_lock_destinationPerDisplayUUID objectForKey:v13];
  if (IOHIDEventGetType() == 39 && v14)
  {
    v15 = [NSSet setWithObject:v14];
  }

  else
  {
    v15 = [(BKHIDSystemInterface *)self->_HIDSystem destinationsForEvent:event fromSender:senderCopy overrideSenderDescriptor:descriptorCopy];
  }

  v16 = v15;
  os_unfair_lock_unlock(&self->_lock);

  return v16;
}

- (BOOL)destinationPIDMatchesHapticFeedbackRequestPID:(int)d
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  os_unfair_lock_lock(&self->_lock);
  lock_destinationPerDisplayUUID = selfCopy->_lock_destinationPerDisplayUUID;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100059C58;
  v7[3] = &unk_1000FBB10;
  dCopy = d;
  v7[4] = &v9;
  [(NSMutableDictionary *)lock_destinationPerDisplayUUID enumerateKeysAndObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&selfCopy->_lock);
  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

- (void)setEventDestination:(id)destination forDisplayUUID:(id)d
{
  destinationCopy = destination;
  dCopy = d;
  v8 = [dCopy length];
  v9 = BKSDisplayUUIDMainKey;
  if (v8)
  {
    v9 = dCopy;
  }

  v10 = v9;

  v11 = BKLogTouchEvents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = destinationCopy;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "set focus-follows-touch destination:%{public}@ for display:%{public}@", &v12, 0x16u);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_lock_destinationPerDisplayUUID setObject:destinationCopy forKey:v10];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)eventDestinationForDisplayUUID:(id)d
{
  dCopy = d;
  v5 = [dCopy length];
  v6 = BKSDisplayUUIDMainKey;
  if (v5)
  {
    v6 = dCopy;
  }

  v7 = v6;

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_lock_destinationPerDisplayUUID objectForKey:v7];
  v9 = [v8 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (BKTouchDeliveryGenericGestureFocusObserver)initWithHIDSystem:(id)system
{
  systemCopy = system;
  v11.receiver = self;
  v11.super_class = BKTouchDeliveryGenericGestureFocusObserver;
  v6 = [(BKTouchDeliveryGenericGestureFocusObserver *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_HIDSystem, system);
    v8 = objc_opt_new();
    lock_destinationPerDisplayUUID = v7->_lock_destinationPerDisplayUUID;
    v7->_lock_destinationPerDisplayUUID = v8;
  }

  return v7;
}

+ (id)sharedInstance
{
  if (qword_100125FE0 != -1)
  {
    dispatch_once(&qword_100125FE0, &stru_1000FBAE8);
  }

  v3 = qword_100125FE8;

  return v3;
}

@end