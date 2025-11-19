@interface DisplayLinkManager
- (_TtC23SetupAssistantSupportUI18DisplayLinkManager)init;
- (void)frameWithDisplayLink:(id)a3;
@end

@implementation DisplayLinkManager

- (void)frameWithDisplayLink:(id)a3
{
  v4 = a3;
  v11 = self;
  [v4 targetTimestamp];
  v6 = v5;
  [v4 timestamp];
  v8 = *(&v11->super.isa + OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_frameUpdateBlock);
  if (v8)
  {
    v9 = v6 - v7;

    v8(v10, v9);

    sub_265A56D6C(v8);
  }

  else
  {
  }
}

- (_TtC23SetupAssistantSupportUI18DisplayLinkManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end