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
  v2 = self;
  PushCoordinator.registerICloud()();
}

- (void)unregister
{
  v2 = self;
  PushCoordinator.unregister()();
}

@end