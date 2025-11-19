@interface AssertionOptions
- (_TtC16SessionAssertion16AssertionOptions)init;
- (_TtC16SessionAssertion16AssertionOptions)initWithInvalidateOnSessionRequest:(BOOL)a3;
@end

@implementation AssertionOptions

- (_TtC16SessionAssertion16AssertionOptions)initWithInvalidateOnSessionRequest:(BOOL)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC16SessionAssertion16AssertionOptions_invalidateOnSessionRequest) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AssertionOptions();
  return [(AssertionOptions *)&v4 init];
}

- (_TtC16SessionAssertion16AssertionOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end