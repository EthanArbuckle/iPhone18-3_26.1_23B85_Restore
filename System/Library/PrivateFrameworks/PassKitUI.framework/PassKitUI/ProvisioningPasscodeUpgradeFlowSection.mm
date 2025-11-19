@interface ProvisioningPasscodeUpgradeFlowSection
- (_TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection)init;
- (void)dealloc;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
@end

@implementation ProvisioningPasscodeUpgradeFlowSection

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_1BD25C6C8();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(ProvisioningPasscodeUpgradeFlowSection *)&v5 dealloc];
}

- (_TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1BD25DB54(*&a4 & 0x101);
  swift_unknownObjectRelease();
}

@end