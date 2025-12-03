@interface EventXPCValueContainer
- (_TtC12ShazamEvents22EventXPCValueContainer)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EventXPCValueContainer

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1E10069C4(coderCopy, &OBJC_IVAR____TtC12ShazamEvents22EventXPCValueContainer_value, &qword_1ECE89580, &qword_1E10B26C8, &qword_1ECE89588);
}

- (_TtC12ShazamEvents22EventXPCValueContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end