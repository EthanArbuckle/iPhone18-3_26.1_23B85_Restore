@interface SCUpdateUpsellAppLaunchCountCommand
- (SCUpdateUpsellAppLaunchCountCommand)init;
- (SCUpdateUpsellAppLaunchCountCommand)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCUpdateUpsellAppLaunchCountCommand

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SCUpdateUpsellAppLaunchCountCommand_upsellAppLaunchCount);
  v5 = a3;
  v7 = self;
  v6 = sub_1DACB92F4();
  [v5 encodeInt64:v4 forKey:v6];
}

- (SCUpdateUpsellAppLaunchCountCommand)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  v7 = sub_1DACB92F4();
  v8 = [v6 decodeInt64ForKey_];

  *(&self->super.isa + OBJC_IVAR___SCUpdateUpsellAppLaunchCountCommand_upsellAppLaunchCount) = v8;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(SCUpdateUpsellAppLaunchCountCommand *)&v11 init];

  return v9;
}

- (SCUpdateUpsellAppLaunchCountCommand)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)executeWithZone:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1DACB92F4();
  v7 = sub_1DACB92F4();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v11[4] = sub_1DAB07B6C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DAA74E58;
  v11[3] = &block_descriptor;
  v9 = _Block_copy(v11);
  v10 = v5;

  [a3 createOrUpdateRecordWithName:v6 recordType:v7 modifyBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

@end