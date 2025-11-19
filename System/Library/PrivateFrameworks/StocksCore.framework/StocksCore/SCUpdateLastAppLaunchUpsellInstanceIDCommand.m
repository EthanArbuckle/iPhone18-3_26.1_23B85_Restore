@interface SCUpdateLastAppLaunchUpsellInstanceIDCommand
- (SCUpdateLastAppLaunchUpsellInstanceIDCommand)init;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCUpdateLastAppLaunchUpsellInstanceIDCommand

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID);
  v5 = *&self->lastAppLaunchUpsellInstanceID[OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID];
  v6 = a3;
  v9 = self;
  v7 = sub_1DACB92F4();
  v8 = sub_1DACB92F4();
  [v6 encodeObject:v7 forKey:v8];
}

- (SCUpdateLastAppLaunchUpsellInstanceIDCommand)init
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
  v11[4] = sub_1DABD3858;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DAA74E58;
  v11[3] = &block_descriptor_20;
  v9 = _Block_copy(v11);
  v10 = v5;

  [a3 createOrUpdateRecordWithName:v6 recordType:v7 modifyBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

@end