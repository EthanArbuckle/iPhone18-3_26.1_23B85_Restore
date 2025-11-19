@interface BankConnectEntryPointFlowItem
- (_TtC9PassKitUI29BankConnectEntryPointFlowItem)init;
- (void)didCompleteFlowItem;
@end

@implementation BankConnectEntryPointFlowItem

- (_TtC9PassKitUI29BankConnectEntryPointFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didCompleteFlowItem
{
  v3 = self + OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = self;
    sub_1BD8659A4(v6, &off_1F3BCE0F0, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

@end