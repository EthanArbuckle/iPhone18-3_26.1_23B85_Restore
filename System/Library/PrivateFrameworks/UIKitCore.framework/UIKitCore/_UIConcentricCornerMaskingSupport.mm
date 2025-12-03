@interface _UIConcentricCornerMaskingSupport
- (_TtC5UIKit33_UIConcentricCornerMaskingSupport)init;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
@end

@implementation _UIConcentricCornerMaskingSupport

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_invalidationBlock);
  if (v4)
  {
    selfCopy = self;
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