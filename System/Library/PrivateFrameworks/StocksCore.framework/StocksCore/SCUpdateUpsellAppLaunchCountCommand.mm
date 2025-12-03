@interface SCUpdateUpsellAppLaunchCountCommand
- (SCUpdateUpsellAppLaunchCountCommand)init;
- (SCUpdateUpsellAppLaunchCountCommand)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCUpdateUpsellAppLaunchCountCommand

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___SCUpdateUpsellAppLaunchCountCommand_upsellAppLaunchCount);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_1DACB92F4();
  [coderCopy encodeInt64:v4 forKey:v6];
}

- (SCUpdateUpsellAppLaunchCountCommand)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  coderCopy = coder;
  v7 = sub_1DACB92F4();
  decodeInt64ForKey_ = [coderCopy decodeInt64ForKey_];

  *(&self->super.isa + OBJC_IVAR___SCUpdateUpsellAppLaunchCountCommand_upsellAppLaunchCount) = decodeInt64ForKey_;
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

- (void)executeWithZone:(id)zone
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1DACB92F4();
  v7 = sub_1DACB92F4();
  v8 = swift_allocObject();
  *(v8 + 16) = selfCopy;
  v11[4] = sub_1DAB07B6C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DAA74E58;
  v11[3] = &block_descriptor;
  v9 = _Block_copy(v11);
  v10 = selfCopy;

  [zone createOrUpdateRecordWithName:v6 recordType:v7 modifyBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

@end