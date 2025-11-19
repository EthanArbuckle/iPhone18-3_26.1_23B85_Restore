@interface _ValueBox
- (BOOL)isEqual:(id)a3;
- (_TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox)init;
- (int64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation _ValueBox

- (void)encodeWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_188DC7B68(a3);
  swift_unknownObjectRelease();
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1890955A0();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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