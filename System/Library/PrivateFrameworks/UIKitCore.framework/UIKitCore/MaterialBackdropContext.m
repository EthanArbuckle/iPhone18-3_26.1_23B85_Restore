@interface MaterialBackdropContext
- (BOOL)isEqual:(id)a3;
- (_TtC5UIKit23MaterialBackdropContext)init;
@end

@implementation MaterialBackdropContext

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

  v6 = sub_188E690F0(v8);

  sub_188A3F5FC(v8, &qword_1EA934050);
  return v6 & 1;
}

- (_TtC5UIKit23MaterialBackdropContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end