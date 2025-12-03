@interface PushCoordinator
+ (_TtC3asd15PushCoordinator)shared;
- (void)registerICloud;
- (void)unregister;
@end

@implementation PushCoordinator

+ (_TtC3asd15PushCoordinator)shared
{
  v2 = static PushCoordinator.shared.getter();

  return v2;
}

- (void)registerICloud
{
  selfCopy = self;
  PushCoordinator.registerICloud()();
}

- (void)unregister
{
  selfCopy = self;
  PushCoordinator.unregister()();
}

@end