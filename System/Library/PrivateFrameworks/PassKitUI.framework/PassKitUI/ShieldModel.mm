@interface ShieldModel
- (_TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel)init;
- (void)appProtectionCoordinatorDidFailAccess:(id)access;
- (void)appProtectionCoordinatorDidGainAccess:(id)access;
- (void)dealloc;
@end

@implementation ShieldModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel_coordinator);
  selfCopy = self;
  v6 = v4;
  sub_1BE04BE44();

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(ShieldModel *)&v7 dealloc];
}

- (void)appProtectionCoordinatorDidGainAccess:(id)access
{
  accessCopy = access;
  selfCopy = self;
  sub_1BD654844();
}

- (void)appProtectionCoordinatorDidFailAccess:(id)access
{
  accessCopy = access;
  selfCopy = self;
  sub_1BD654A2C();
}

- (_TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end