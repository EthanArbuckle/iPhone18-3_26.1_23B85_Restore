@interface MTDeviceCapacityMonitor
+ (MTDeviceCapacityMonitor)shared;
- (MTDeviceCapacityMonitor)init;
- (NSString)activeNotificationName;
- (int64_t)addCapacityChangeObserverWithOptions:(int64_t)a3 callback:(id)a4;
- (void)capacityLevel:(id)a3;
- (void)removeCapacityChangeObserverWith:(int64_t)a3;
- (void)setActiveNotificationName:(id)a3;
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

- (void)setActiveNotificationName:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1D8CFCC6C(a3);
}

- (NSString)activeNotificationName
{
  v3 = OBJC_IVAR___MTDeviceCapacityMonitor__activeNotificationName;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = self;

  os_unfair_lock_lock((v4 + 24));
  v6 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 24));

  return v6;
}

- (void)capacityLevel:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1D915FA54(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (int64_t)addCapacityChangeObserverWithOptions:(int64_t)a3 callback:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  v8 = sub_1D915FE1C(v4, v7, v6);
  _Block_release(v6);
  _Block_release(v6);

  return v8;
}

- (void)removeCapacityChangeObserverWith:(int64_t)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers);
  v4 = self;

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