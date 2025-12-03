@interface SBSystemApertureSceneElementPlaceholderWrapperView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBSystemApertureSceneElementPlaceholderWrapperView)initWithContentView:(id)view;
- (SBSystemApertureSceneElementPlaceholderWrapperViewDelegate)delegate;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
@end

@implementation SBSystemApertureSceneElementPlaceholderWrapperView

- (SBSystemApertureSceneElementPlaceholderWrapperView)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SBSystemApertureSceneElementPlaceholderWrapperView;
  v6 = [(SBSystemApertureSceneElementPlaceholderWrapperView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, view);
    if (v7->_contentView)
    {
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)v7 addSubview:?];
    }
  }

  return v7;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    if (self->_contentView)
    {
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)self addSubview:?];
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)self invalidateIntrinsicContentSize];
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)self setNeedsLayout];
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)self layoutIfNeeded];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained placeholderWrapperViewDidChangeContentView:self];

    viewCopy = v8;
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBSystemApertureSceneElementPlaceholderWrapperView;
  [(SBSystemApertureSceneElementPlaceholderWrapperView *)&v5 layoutSubviews];
  contentView = self->_contentView;
  [(SBSystemApertureSceneElementPlaceholderWrapperView *)self bounds];
  [(UIView *)contentView setFrame:?];
  [(SBSystemApertureSceneElementPlaceholderWrapperView *)self setUserInteractionEnabled:0];
  layer = [(SBSystemApertureSceneElementPlaceholderWrapperView *)self layer];
  [layer setAllowsHitTesting:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self->_contentView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_contentView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (SBSystemApertureSceneElementPlaceholderWrapperViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end