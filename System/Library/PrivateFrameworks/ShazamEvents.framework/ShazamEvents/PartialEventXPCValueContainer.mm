@interface PartialEventXPCValueContainer
- (_TtC12ShazamEvents29PartialEventXPCValueContainer)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PartialEventXPCValueContainer

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1E10069C4(coderCopy, &OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value, &qword_1ECE89528, &unk_1E10B26A8, &qword_1ECE89530);
}

- (_TtC12ShazamEvents29PartialEventXPCValueContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end