@interface UIBackgroundExtensionView
- (BOOL)automaticallyPlacesContentView;
- (UIBackgroundExtensionView)initWithCoder:(id)a3;
- (UIView)contentView;
- (void)endContentViewObservation;
- (void)layoutSubviews;
- (void)observeContentViewIfNeeded;
- (void)setAutomaticallyPlacesContentView:(BOOL)a3;
- (void)setContentView:(id)a3;
- (void)updateEffectsView;
@end

@implementation UIBackgroundExtensionView

- (UIView)contentView
{
  v3 = OBJC_IVAR___UIBackgroundExtensionView_contentView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentView:(id)a3
{
  v5 = OBJC_IVAR___UIBackgroundExtensionView_contentView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;
  sub_1890ED1E4(v6);
}

- (BOOL)automaticallyPlacesContentView
{
  v3 = OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAutomaticallyPlacesContentView:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = v3;
  if (v6 != v3)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (UIBackgroundExtensionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView_contentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView_effectsView) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)updateEffectsView
{
  v2 = self;
  sub_1890ED7B8();
}

- (void)layoutSubviews
{
  v2 = self;
  UIBackgroundExtensionView.layoutSubviews()();
}

- (void)observeContentViewIfNeeded
{
  v2 = OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry;
  if ((*(&self->super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry) & 1) == 0)
  {
    v6 = self;
    v4 = [(UIBackgroundExtensionView *)v6 contentView];
    if (v4)
    {
      v5 = v4;
      [(UIView *)v4 _addGeometryChangeObserver:v6];
    }

    *(&self->super.super.super.isa + v2) = 1;
  }
}

- (void)endContentViewObservation
{
  v2 = OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry;
  if (*(&self->super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry) == 1)
  {
    v6 = self;
    v4 = [(UIBackgroundExtensionView *)v6 contentView];
    if (v4)
    {
      v5 = v4;
      [(UIView *)v4 _removeGeometryChangeObserver:v6];
    }

    *(&self->super.super.super.isa + v2) = 0;
  }
}

@end