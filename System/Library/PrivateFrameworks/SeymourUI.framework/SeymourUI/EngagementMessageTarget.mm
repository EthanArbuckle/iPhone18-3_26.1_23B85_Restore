@interface EngagementMessageTarget
- (NSString)targetIdentifier;
- (_TtC9SeymourUI23EngagementMessageTarget)init;
- (void)messageCoordinator:(id)a3 didUpdatePriorityMessage:(id)a4 forTarget:(id)a5;
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

- (void)messageCoordinator:(id)a3 didUpdatePriorityMessage:(id)a4 forTarget:(id)a5
{
  v8 = sub_20C13C954();
  v10 = v9;
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_20BAF0C14(a4, v8, v10);
}

@end