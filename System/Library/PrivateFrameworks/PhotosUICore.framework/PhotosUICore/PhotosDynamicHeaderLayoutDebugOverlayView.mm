@interface PhotosDynamicHeaderLayoutDebugOverlayView
- (CGRect)clippingRect;
- (NSCopying)userData;
- (void)becomeReusable;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
@end

@implementation PhotosDynamicHeaderLayoutDebugOverlayView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A41FD9B4();
}

- (NSCopying)userData
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setUserData:(id)data
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_userData) = data;
  swift_unknownObjectRetain_n();
  self;
  swift_unknownObjectRelease();
  sub_1A41FE0BC();
}

- (CGRect)clippingRect
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_clippingRect);
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_clippingRect);
  v4 = *(&self->super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_clippingRect);
  v5 = *(&self->super._cachedTraitCollection + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_clippingRect);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)becomeReusable
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_userData) = 0;
  self;
  swift_unknownObjectRelease();
  sub_1A41FE0BC();
}

@end