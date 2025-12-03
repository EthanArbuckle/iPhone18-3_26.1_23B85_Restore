@interface EngagementMessageTarget
- (NSString)targetIdentifier;
- (_TtC9SeymourUI23EngagementMessageTarget)init;
- (void)messageCoordinator:(id)coordinator didUpdatePriorityMessage:(id)message forTarget:(id)target;
@end

@implementation EngagementMessageTarget

- (_TtC9SeymourUI23EngagementMessageTarget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)targetIdentifier
{

  v2 = sub_20C13C914();

  return v2;
}

- (void)messageCoordinator:(id)coordinator didUpdatePriorityMessage:(id)message forTarget:(id)target
{
  v8 = sub_20C13C954();
  v10 = v9;
  coordinatorCopy = coordinator;
  messageCopy = message;
  selfCopy = self;
  sub_20BAF0C14(message, v8, v10);
}

@end