@interface AnyTextAnimation
- (NSString)name;
- (_TtC20TextAnimationSupport16AnyTextAnimation)init;
@end

@implementation AnyTextAnimation

- (_TtC20TextAnimationSupport16AnyTextAnimation)init
{
  v3 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  swift_beginAccess();
  add64 = _atomic_fetch_add64();
  swift_endAccess();
  *(&self->super.isa + v3) = add64;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AnyTextAnimation();
  return [(AnyTextAnimation *)&v6 init];
}

- (NSString)name
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end