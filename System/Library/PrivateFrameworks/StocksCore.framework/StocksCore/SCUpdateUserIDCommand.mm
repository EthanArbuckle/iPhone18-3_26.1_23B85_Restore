@interface SCUpdateUserIDCommand
- (SCUpdateUserIDCommand)init;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCUpdateUserIDCommand

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SCUpdateUserIDCommand_userID);
  v5 = *&self->userID[OBJC_IVAR___SCUpdateUserIDCommand_userID];
  v6 = a3;
  v7 = self;
  v8 = sub_1DACB92F4();
  v9 = sub_1DACB92F4();
  [v6 encodeObject:v8 forKey:v9];

  v10 = *(&v7->super.isa + OBJC_IVAR___SCUpdateUserIDCommand_overwrite);
  v11 = sub_1DACB92F4();
  [v6 encodeBool:v10 forKey:v11];
}

- (SCUpdateUserIDCommand)init
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
  v11[4] = sub_1DAC2BD08;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DAA74E58;
  v11[3] = &block_descriptor_32;
  v9 = _Block_copy(v11);
  v10 = v5;

  [a3 createOrUpdateRecordWithName:v6 recordType:v7 modifyBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

@end