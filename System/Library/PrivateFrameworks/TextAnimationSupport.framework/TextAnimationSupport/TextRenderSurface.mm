@interface TextRenderSurface
- (CGRect)adjustedLayoutFragmentFrame:(CGRect)a3;
- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface)init;
@end

@implementation TextRenderSurface

- (CGRect)adjustedLayoutFragmentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_yDisplacement;
  swift_beginAccess();
  v9 = (*(&self->super.isa + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer) + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_currentDisplacement);
  v10 = y + *(&self->super.isa + v8) + *v9;
  v11 = height + v9[2];
  v12 = x;
  v13 = width;
  result.size.height = v11;
  result.size.width = v13;
  result.origin.y = v10;
  result.origin.x = v12;
  return result;
}

- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end