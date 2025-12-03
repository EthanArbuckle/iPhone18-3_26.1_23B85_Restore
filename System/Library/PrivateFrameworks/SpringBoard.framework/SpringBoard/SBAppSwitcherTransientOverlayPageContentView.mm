@interface SBAppSwitcherTransientOverlayPageContentView
- (SBAppSwitcherTransientOverlayPageContentView)initWithFrame:(CGRect)frame appLayout:(id)layout;
- (SBAppSwitcherTransientOverlayPageContentViewDelegate)delegate;
- (unint64_t)maskedCorners;
- (void)layoutSubviews;
- (void)setActive:(BOOL)active;
- (void)setContentView:(id)view;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setOrientation:(int64_t)orientation;
@end

@implementation SBAppSwitcherTransientOverlayPageContentView

- (SBAppSwitcherTransientOverlayPageContentView)initWithFrame:(CGRect)frame appLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = SBAppSwitcherTransientOverlayPageContentView;
  height = [(SBAppSwitcherTransientOverlayPageContentView *)&v17 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [layoutCopy copy];
    appLayout = height->_appLayout;
    height->_appLayout = v11;

    v13 = objc_alloc(MEMORY[0x277CF0D78]);
    [(SBAppSwitcherTransientOverlayPageContentView *)height bounds];
    v14 = [v13 initWithFrame:?];
    contentWrapperView = height->_contentWrapperView;
    height->_contentWrapperView = v14;

    [(BSUIOrientationTransformWrapperView *)height->_contentWrapperView setClipsToBounds:1];
    [(SBAppSwitcherTransientOverlayPageContentView *)height addSubview:height->_contentWrapperView];
  }

  return height;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBAppSwitcherTransientOverlayPageContentView;
  [(SBAppSwitcherTransientOverlayPageContentView *)&v3 layoutSubviews];
  [(SBAppSwitcherTransientOverlayPageContentView *)self bounds];
  [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setFrame:?];
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setContainerOrientation:?];
    delegate = [(SBAppSwitcherTransientOverlayPageContentView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate appSwitcherTransientOverlayPageContentViewDidChangeContainerOrientation:self];
    }
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    delegate = [(SBAppSwitcherTransientOverlayPageContentView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate appSwitcherTransientOverlayPageContentViewDidChangeActive:self];
    }
  }
}

- (void)setMaskedCorners:(unint64_t)corners
{
  layer = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView layer];
  [layer setMaskedCorners:corners];
}

- (unint64_t)maskedCorners
{
  layer = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView layer];
  maskedCorners = [layer maskedCorners];

  return maskedCorners;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  v7 = viewCopy;
  if (contentView != viewCopy)
  {
    if ([(UIView *)contentView isDescendantOfView:self])
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
    if (self->_contentView)
    {
      [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView addContentView:?];
      [(SBAppSwitcherTransientOverlayPageContentView *)self setNeedsLayout];
    }
  }
}

- (SBAppSwitcherTransientOverlayPageContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end