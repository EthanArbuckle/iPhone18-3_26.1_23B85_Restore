@interface _UIConcentricCornerMaskingSupport
- (_TtC5UIKit33_UIConcentricCornerMaskingSupport)init;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
@end

@implementation _UIConcentricCornerMaskingSupport

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_invalidationBlock);
  if (v4)
  {
    v5 = self;
    v4();
  }
}

- (_TtC5UIKit33_UIConcentricCornerMaskingSupport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end