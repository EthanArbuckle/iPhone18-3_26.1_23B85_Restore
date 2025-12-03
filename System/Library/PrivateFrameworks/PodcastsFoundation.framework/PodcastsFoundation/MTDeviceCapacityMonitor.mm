@interface MTDeviceCapacityMonitor
+ (MTDeviceCapacityMonitor)shared;
- (MTDeviceCapacityMonitor)init;
- (NSString)activeNotificationName;
- (int64_t)addCapacityChangeObserverWithOptions:(int64_t)options callback:(id)callback;
- (void)capacityLevel:(id)level;
- (void)removeCapacityChangeObserverWith:(int64_t)with;
- (void)setActiveNotificationName:(id)name;
@end

@implementation MTDeviceCapacityMonitor

+ (MTDeviceCapacityMonitor)shared
{
  if (qword_1EDCD3800 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCD3810;

  return v3;
}

- (void)setActiveNotificationName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  sub_1D8CFCC6C(name);
}

- (NSString)activeNotificationName
{
  v3 = OBJC_IVAR___MTDeviceCapacityMonitor__activeNotificationName;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;

  os_unfair_lock_lock((v4 + 24));
  v6 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 24));

  return v6;
}

- (void)capacityLevel:(id)level
{
  v4 = _Block_copy(level);
  _Block_copy(v4);
  selfCopy = self;
  sub_1D915FA54(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (int64_t)addCapacityChangeObserverWithOptions:(int64_t)options callback:(id)callback
{
  optionsCopy = options;
  v6 = _Block_copy(callback);
  _Block_copy(v6);
  selfCopy = self;
  v8 = sub_1D915FE1C(optionsCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);

  return v8;
}

- (void)removeCapacityChangeObserverWith:(int64_t)with
{
  v3 = *(&self->super.isa + OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers);
  selfCopy = self;

  os_unfair_lock_lock(v3 + 6);
  sub_1D91600FC(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
}

- (MTDeviceCapacityMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end