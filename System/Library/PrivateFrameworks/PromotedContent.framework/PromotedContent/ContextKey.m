@interface ContextKey
- (BOOL)isEqual:(id)a3;
- (_TtC15PromotedContent10ContextKey)init;
@end

@implementation ContextKey

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C1B952F8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1C1B366AC(v8);

  sub_1C1AF4F4C(v8);
  return v6;
}

- (_TtC15PromotedContent10ContextKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end