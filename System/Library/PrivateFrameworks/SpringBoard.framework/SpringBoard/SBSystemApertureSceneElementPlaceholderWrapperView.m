@interface SBSystemApertureSceneElementPlaceholderWrapperView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBSystemApertureSceneElementPlaceholderWrapperView)initWithContentView:(id)a3;
- (SBSystemApertureSceneElementPlaceholderWrapperViewDelegate)delegate;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
@end

@implementation SBSystemApertureSceneElementPlaceholderWrapperView

- (SBSystemApertureSceneElementPlaceholderWrapperView)initWithContentView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSystemApertureSceneElementPlaceholderWrapperView;
  v6 = [(SBSystemApertureSceneElementPlaceholderWrapperView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, a3);
    if (v7->_contentView)
    {
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)v7 addSubview:?];
    }
  }

  return v7;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v8 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    if (self->_contentView)
    {
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)self addSubview:?];
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)self invalidateIntrinsicContentSize];
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)self setNeedsLayout];
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)self layoutIfNeeded];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained placeholderWrapperViewDidChangeContentView:self];

    v5 = v8;
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
  v4 = [(SBSystemApertureSceneElementPlaceholderWrapperView *)self layer];
  [v4 setAllowsHitTesting:0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_contentView sizeThatFits:a3.width, a3.height];
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