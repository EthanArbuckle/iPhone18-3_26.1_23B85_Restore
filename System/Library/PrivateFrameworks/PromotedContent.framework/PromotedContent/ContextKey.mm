@interface ContextKey
- (BOOL)isEqual:(id)equal;
- (_TtC15PromotedContent10ContextKey)init;
@end

@implementation ContextKey

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C1B952F8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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