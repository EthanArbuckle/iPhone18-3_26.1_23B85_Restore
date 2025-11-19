@interface SUIdleTracker
- (BOOL)idle;
- (SUIdleTracker)initWithName:(id)a3 queue:(id)a4 timeoutSeconds:(int64_t)a5 timeoutAction:(id)a6;
- (id)track;
- (id)trackWithName:(id)a3;
- (int64_t)count;
@end

@implementation SUIdleTracker

- (SUIdleTracker)initWithName:(id)a3 queue:(id)a4 timeoutSeconds:(int64_t)a5 timeoutAction:(id)a6
{
  v7 = _Block_copy(a6);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  v8 = a4;
  IdleTracker.init(name:queue:timeoutSeconds:timeoutAction:)();
  return result;
}

- (BOOL)idle
{
  v2 = self;
  v3 = IdleTracker.idle.getter();

  return v3 & 1;
}

- (int64_t)count
{
  v2 = self;
  v3 = IdleTracker.count.getter();

  return v3;
}

- (id)track
{
  v2 = self;
  v3 = IdleTracker.track()();

  return v3;
}

- (id)trackWithName:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = IdleTracker.track(name:)();

  return v6;
}

@end