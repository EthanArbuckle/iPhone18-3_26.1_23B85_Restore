@interface GroupScheduleXPCValueContainer
- (_TtC12ShazamEvents30GroupScheduleXPCValueContainer)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GroupScheduleXPCValueContainer

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1E10069C4(coderCopy, &OBJC_IVAR____TtC12ShazamEvents30GroupScheduleXPCValueContainer_value, &qword_1ECE89568, &qword_1E10B26C0, &qword_1ECE89570);
}

- (_TtC12ShazamEvents30GroupScheduleXPCValueContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end