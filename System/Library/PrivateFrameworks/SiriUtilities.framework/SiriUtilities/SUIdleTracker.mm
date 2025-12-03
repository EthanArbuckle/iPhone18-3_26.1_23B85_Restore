@interface SUIdleTracker
- (BOOL)idle;
- (SUIdleTracker)initWithName:(id)name queue:(id)queue timeoutSeconds:(int64_t)seconds timeoutAction:(id)action;
- (id)track;
- (id)trackWithName:(id)name;
- (int64_t)count;
@end

@implementation SUIdleTracker

- (SUIdleTracker)initWithName:(id)name queue:(id)queue timeoutSeconds:(int64_t)seconds timeoutAction:(id)action
{
  v7 = _Block_copy(action);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  queueCopy = queue;
  IdleTracker.init(name:queue:timeoutSeconds:timeoutAction:)();
  return result;
}

- (BOOL)idle
{
  selfCopy = self;
  v3 = IdleTracker.idle.getter();

  return v3 & 1;
}

- (int64_t)count
{
  selfCopy = self;
  v3 = IdleTracker.count.getter();

  return v3;
}

- (id)track
{
  selfCopy = self;
  v3 = IdleTracker.track()();

  return v3;
}

- (id)trackWithName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  v6 = IdleTracker.track(name:)();

  return v6;
}

@end