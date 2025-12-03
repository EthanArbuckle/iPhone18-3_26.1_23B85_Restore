@interface CurveObject
- (_TtC3VFX11CurveObject)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CurveObject

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1AF65339C(coderCopy);
}

- (_TtC3VFX11CurveObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end