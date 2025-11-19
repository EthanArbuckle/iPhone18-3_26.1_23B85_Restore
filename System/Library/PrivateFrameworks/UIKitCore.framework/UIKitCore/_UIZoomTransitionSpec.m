@interface _UIZoomTransitionSpec
+ (id)settingsControllerModule;
- (CATransform3D)recededContentTransformFor:(SEL)a3;
- (CGSize)platterShadowOffset;
- (void)setCancelInteractive:(id)a3;
- (void)setDefaultValues;
- (void)setZoomIn:(id)a3;
- (void)setZoomInShowcase:(id)a3;
- (void)setZoomOut:(id)a3;
- (void)setZoomOutInteractive:(id)a3;
@end

@implementation _UIZoomTransitionSpec

- (void)setZoomIn:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomIn);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomIn) = a3;
  v3 = a3;
}

- (void)setZoomInShowcase:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomInShowcase);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomInShowcase) = a3;
  v3 = a3;
}

- (void)setZoomOut:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomOut);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomOut) = a3;
  v3 = a3;
}

- (void)setZoomOutInteractive:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomOutInteractive);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomOutInteractive) = a3;
  v3 = a3;
}

- (void)setCancelInteractive:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_cancelInteractive);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_cancelInteractive) = a3;
  v3 = a3;
}

- (CGSize)platterShadowOffset
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_platterShadowXOffset);
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_platterShadowYOffset);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CATransform3D)recededContentTransformFor:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_recededBackgroundScaleDownPoints);
  v10 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_recededBackgroundMinScale);
  v11 = self;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = CGRectGetWidth(v24) - v9;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v13 = v12 / CGRectGetWidth(v25);
  if (v13 <= v10)
  {
    v13 = v10;
  }

  CATransform3DMakeScale(&v23, v13, v13, 1.0);
  v21 = *&v23.m13;
  v22 = *&v23.m11;
  v19 = *&v23.m23;
  v20 = *&v23.m21;
  v17 = *&v23.m33;
  v18 = *&v23.m31;
  v15 = *&v23.m43;
  v16 = *&v23.m41;

  *&retstr->m11 = v22;
  *&retstr->m13 = v21;
  *&retstr->m21 = v20;
  *&retstr->m23 = v19;
  *&retstr->m31 = v18;
  *&retstr->m33 = v17;
  *&retstr->m41 = v16;
  *&retstr->m43 = v15;
  return result;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_188FDF76C();
}

+ (id)settingsControllerModule
{
  sub_188FE06DC();

  return v2;
}

@end