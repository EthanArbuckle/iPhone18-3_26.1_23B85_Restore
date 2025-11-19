@interface _UIBackgroundExtensionView
- (_UIBackgroundExtensionView)initWithCoder:(id)a3;
- (_UIBackgroundExtensionView)initWithFrame:(CGRect)a3;
- (void)setDisableBlurEffects:(BOOL)a3;
@end

@implementation _UIBackgroundExtensionView

- (void)setDisableBlurEffects:(BOOL)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects);
  *(&self->super.super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects) = a3;
  if (v3 != a3)
  {
    [(UIBackgroundExtensionView *)self updateEffectsView];
  }
}

- (_UIBackgroundExtensionView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIBackgroundExtensionView;
  v3 = a3;
  v4 = [(UIBackgroundExtensionView *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

- (_UIBackgroundExtensionView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UIBackgroundExtensionView;
  return [(UIBackgroundExtensionView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end