@interface SBAppSwitcherTransientOverlayPageContentView
- (SBAppSwitcherTransientOverlayPageContentView)initWithFrame:(CGRect)a3 appLayout:(id)a4;
- (SBAppSwitcherTransientOverlayPageContentViewDelegate)delegate;
- (unint64_t)maskedCorners;
- (void)layoutSubviews;
- (void)setActive:(BOOL)a3;
- (void)setContentView:(id)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setOrientation:(int64_t)a3;
@end

@implementation SBAppSwitcherTransientOverlayPageContentView

- (SBAppSwitcherTransientOverlayPageContentView)initWithFrame:(CGRect)a3 appLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = SBAppSwitcherTransientOverlayPageContentView;
  v10 = [(SBAppSwitcherTransientOverlayPageContentView *)&v17 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [v9 copy];
    appLayout = v10->_appLayout;
    v10->_appLayout = v11;

    v13 = objc_alloc(MEMORY[0x277CF0D78]);
    [(SBAppSwitcherTransientOverlayPageContentView *)v10 bounds];
    v14 = [v13 initWithFrame:?];
    contentWrapperView = v10->_contentWrapperView;
    v10->_contentWrapperView = v14;

    [(BSUIOrientationTransformWrapperView *)v10->_contentWrapperView setClipsToBounds:1];
    [(SBAppSwitcherTransientOverlayPageContentView *)v10 addSubview:v10->_contentWrapperView];
  }

  return v10;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBAppSwitcherTransientOverlayPageContentView;
  [(SBAppSwitcherTransientOverlayPageContentView *)&v3 layoutSubviews];
  [(SBAppSwitcherTransientOverlayPageContentView *)self bounds];
  [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setFrame:?];
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setContainerOrientation:?];
    v5 = [(SBAppSwitcherTransientOverlayPageContentView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 appSwitcherTransientOverlayPageContentViewDidChangeContainerOrientation:self];
    }
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    v5 = [(SBAppSwitcherTransientOverlayPageContentView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 appSwitcherTransientOverlayPageContentViewDidChangeActive:self];
    }
  }
}

- (void)setMaskedCorners:(unint64_t)a3
{
  v4 = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView layer];
  [v4 setMaskedCorners:a3];
}

- (unint64_t)maskedCorners
{
  v2 = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView layer];
  v3 = [v2 maskedCorners];

  return v3;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  v7 = v5;
  if (contentView != v5)
  {
    if ([(UIView *)contentView isDescendantOfView:self])
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, a3);
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