@interface _ValueBox
- (BOOL)isEqual:(id)equal;
- (_TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox)init;
- (int64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation _ValueBox

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188DC7B68(coder);
  swift_unknownObjectRelease();
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1890955A0();

  return v3;
}

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

  v6 = sub_1890958EC(v8);

  sub_188A3F5FC(v8, &qword_1EA934050);
  return v6;
}

- (_TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end