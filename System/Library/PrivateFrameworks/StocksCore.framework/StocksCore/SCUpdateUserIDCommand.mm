@interface SCUpdateUserIDCommand
- (SCUpdateUserIDCommand)init;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCUpdateUserIDCommand

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___SCUpdateUserIDCommand_userID);
  v5 = *&self->userID[OBJC_IVAR___SCUpdateUserIDCommand_userID];
  coderCopy = coder;
  selfCopy = self;
  v8 = sub_1DACB92F4();
  v9 = sub_1DACB92F4();
  [coderCopy encodeObject:v8 forKey:v9];

  v10 = *(&selfCopy->super.isa + OBJC_IVAR___SCUpdateUserIDCommand_overwrite);
  v11 = sub_1DACB92F4();
  [coderCopy encodeBool:v10 forKey:v11];
}

- (SCUpdateUserIDCommand)init
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
  v11[4] = sub_1DAC2BD08;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DAA74E58;
  v11[3] = &block_descriptor_32;
  v9 = _Block_copy(v11);
  v10 = selfCopy;

  [zone createOrUpdateRecordWithName:v6 recordType:v7 modifyBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

@end