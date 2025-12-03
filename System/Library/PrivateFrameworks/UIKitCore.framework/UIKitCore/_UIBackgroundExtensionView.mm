@interface _UIBackgroundExtensionView
- (_UIBackgroundExtensionView)initWithCoder:(id)coder;
- (_UIBackgroundExtensionView)initWithFrame:(CGRect)frame;
- (void)setDisableBlurEffects:(BOOL)effects;
@end

@implementation _UIBackgroundExtensionView

- (void)setDisableBlurEffects:(BOOL)effects
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects);
  *(&self->super.super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects) = effects;
  if (v3 != effects)
  {
    [(UIBackgroundExtensionView *)self updateEffectsView];
  }
}

- (_UIBackgroundExtensionView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIBackgroundExtensionView;
  coderCopy = coder;
  v4 = [(UIBackgroundExtensionView *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

- (_UIBackgroundExtensionView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UIBackgroundExtensionView;
  return [(UIBackgroundExtensionView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

@end