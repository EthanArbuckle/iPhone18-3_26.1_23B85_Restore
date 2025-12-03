@interface ProvisioningPasscodeUpgradeFlowSection
- (_TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection)init;
- (void)dealloc;
- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state;
@end

@implementation ProvisioningPasscodeUpgradeFlowSection

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_1BD25C6C8();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(ProvisioningPasscodeUpgradeFlowSection *)&v5 dealloc];
}

- (_TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BD25DB54(*&state & 0x101);
  swift_unknownObjectRelease();
}

@end