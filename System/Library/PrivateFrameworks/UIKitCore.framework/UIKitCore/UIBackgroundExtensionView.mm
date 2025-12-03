@interface UIBackgroundExtensionView
- (BOOL)automaticallyPlacesContentView;
- (UIBackgroundExtensionView)initWithCoder:(id)coder;
- (UIView)contentView;
- (void)endContentViewObservation;
- (void)layoutSubviews;
- (void)observeContentViewIfNeeded;
- (void)setAutomaticallyPlacesContentView:(BOOL)view;
- (void)setContentView:(id)view;
- (void)updateEffectsView;
@end

@implementation UIBackgroundExtensionView

- (UIView)contentView
{
  v3 = OBJC_IVAR___UIBackgroundExtensionView_contentView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentView:(id)view
{
  v5 = OBJC_IVAR___UIBackgroundExtensionView_contentView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = view;
  viewCopy = view;
  selfCopy = self;
  sub_1890ED1E4(v6);
}

- (BOOL)automaticallyPlacesContentView
{
  v3 = OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAutomaticallyPlacesContentView:(BOOL)view
{
  viewCopy = view;
  v5 = OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = viewCopy;
  if (v6 != viewCopy)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (UIBackgroundExtensionView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1890ED7B8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  UIBackgroundExtensionView.layoutSubviews()();
}

- (void)observeContentViewIfNeeded
{
  v2 = OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry;
  if ((*(&self->super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry) & 1) == 0)
  {
    selfCopy = self;
    contentView = [(UIBackgroundExtensionView *)selfCopy contentView];
    if (contentView)
    {
      v5 = contentView;
      [(UIView *)contentView _addGeometryChangeObserver:selfCopy];
    }

    *(&self->super.super.super.isa + v2) = 1;
  }
}

- (void)endContentViewObservation
{
  v2 = OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry;
  if (*(&self->super.super.super.isa + OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry) == 1)
  {
    selfCopy = self;
    contentView = [(UIBackgroundExtensionView *)selfCopy contentView];
    if (contentView)
    {
      v5 = contentView;
      [(UIView *)contentView _removeGeometryChangeObserver:selfCopy];
    }

    *(&self->super.super.super.isa + v2) = 0;
  }
}

@end