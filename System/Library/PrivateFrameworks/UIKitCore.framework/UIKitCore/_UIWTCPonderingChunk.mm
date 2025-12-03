@interface _UIWTCPonderingChunk
- (BOOL)isEqual:(id)equal;
- (_TtC5UIKit20_UIWTCPonderingChunk)init;
@end

@implementation _UIWTCPonderingChunk

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_189041138(v8);

  sub_188A3F5FC(v8, &qword_1EA934050);
  return v6;
}

- (_TtC5UIKit20_UIWTCPonderingChunk)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end