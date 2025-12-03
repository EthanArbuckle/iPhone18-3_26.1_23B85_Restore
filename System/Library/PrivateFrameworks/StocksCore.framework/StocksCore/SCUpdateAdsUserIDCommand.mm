@interface SCUpdateAdsUserIDCommand
- (SCUpdateAdsUserIDCommand)init;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCUpdateAdsUserIDCommand

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1DAB8BD74(coderCopy);
}

- (SCUpdateAdsUserIDCommand)init
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
  v11[4] = sub_1DAB8C744;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DAA74E58;
  v11[3] = &block_descriptor_12;
  v9 = _Block_copy(v11);
  v10 = selfCopy;

  [zone createOrUpdateRecordWithName:v6 recordType:v7 modifyBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

@end