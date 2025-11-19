@interface PKDashboardViewControllerFooterContainer
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardViewControllerFooterContainer)initWithFrame:(CGRect)a3;
- (double)layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (int64_t)preferredBackdropStyle;
- (void)_updateBackdropViewStyle;
- (void)layoutSubviews;
- (void)setBackdropOpaque:(BOOL)a3;
- (void)setCurrentFooter:(id)a3;
- (void)setMinimumFooterHeight:(double)a3;
- (void)setNextFooter:(id)a3;
- (void)setTransitionProgress:(double)a3;
@end

@implementation PKDashboardViewControllerFooterContainer

- (PKDashboardViewControllerFooterContainer)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = PKDashboardViewControllerFooterContainer;
  v3 = [(PKDashboardViewControllerFooterContainer *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    if (!_UISolariumFeatureFlagEnabled())
    {
      v3->_backdropStyle = [(PKDashboardViewControllerFooterContainer *)v3 preferredBackdropStyle];
      v4 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:v3->_backdropStyle];
      backdropView = v3->_backdropView;
      v3->_backdropView = v4;
    }

    if (v3->_backdropView)
    {
      [(PKDashboardViewControllerFooterContainer *)v3 addSubview:?];
      [(_UIBackdropView *)v3->_backdropView setUserInteractionEnabled:1];
      v6 = [(_UIBackdropView *)v3->_backdropView contentView];
      [v6 setUserInteractionEnabled:1];

      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      topSeparatorView = v3->_topSeparatorView;
      v3->_topSeparatorView = v7;

      v9 = v3->_topSeparatorView;
      v10 = [MEMORY[0x1E69DC888] systemFillColor];
      [(UIView *)v9 setBackgroundColor:v10];

      v11 = [(_UIBackdropView *)v3->_backdropView contentView];
      [v11 addSubview:v3->_topSeparatorView];

      v12 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
      v13 = [(PKDashboardViewControllerFooterContainer *)v3 registerForTraitChanges:v12 withHandler:&__block_literal_global_168];
    }

    else
    {
      v12 = [MEMORY[0x1E69DC888] clearColor];
      [(PKDashboardViewControllerFooterContainer *)v3 setBackgroundColor:v12];
    }

    v3->_minimumFooterHeight = 86.0;
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (_UISolariumFeatureFlagEnabled())
  {
    v5 = 28.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(PKDashboardViewControllerFooterContainer *)self layoutWithBounds:1 isTemplateLayout:?];
  v7 = v6 + v5;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardViewControllerFooterContainer;
  [(PKDashboardViewControllerFooterContainer *)&v3 layoutSubviews];
  [(PKDashboardViewControllerFooterContainer *)self bounds];
  [(PKDashboardViewControllerFooterContainer *)self layoutWithBounds:0 isTemplateLayout:?];
}

- (double)layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  v6 = *(MEMORY[0x1E69DDCE0] + 8);
  x = a3.origin.x;
  y = a3.origin.y;
  v7 = a3.origin.x + v6;
  v8 = a3.origin.y + 0.0;
  height = a3.size.height;
  width = a3.size.width;
  v9 = a3.size.width - (v6 + *(MEMORY[0x1E69DDCE0] + 24));
  v10 = a3.size.height - (*(MEMORY[0x1E69DDCE0] + 16) + 0.0);
  [(PKHorizontalScrollingFooterViewComparator *)self->_currentFooter sizeThatFits:v9, v10];
  v12 = v11;
  v14 = v13;
  [(PKHorizontalScrollingFooterViewComparator *)self->_nextFooter sizeThatFits:v9, v10];
  v16 = v15;
  v18 = fmax(self->_minimumFooterHeight, fmax(v14, v17));
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v18;
  if (self->_currentFooter)
  {
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v22 = v18;
    if (v12 < v9)
    {
      PKSizeAlignedInRect();
    }
  }

  v39 = v22;
  v40 = v21;
  if (self->_nextFooter && v16 < v9)
  {
    v23 = v20;
    v24 = v19;
    PKSizeAlignedInRect();
    v26 = v25;
    v28 = v27;
    v37 = v30;
    v38 = v29;
  }

  else
  {
    v23 = v20;
    v24 = v19;
    v26 = v7;
    v28 = v8;
    v37 = v18;
    v38 = v9;
  }

  v45.origin.x = v7;
  v45.origin.y = v8;
  v45.size.width = v9;
  v45.size.height = v18;
  MaxY = CGRectGetMaxY(v45);
  if (!a4)
  {
    backdropView = self->_backdropView;
    if (backdropView)
    {
      [(_UIBackdropView *)backdropView setFrame:x, y, width, height];
    }

    topSeparatorView = self->_topSeparatorView;
    if (topSeparatorView)
    {
      [(UIView *)topSeparatorView setFrame:0.0, 0.0, width, PKUIPixelLength() * 3.0];
    }

    currentFooter = self->_currentFooter;
    if (currentFooter)
    {
      [(PKHorizontalScrollingFooterViewComparator *)currentFooter setFrame:v24, v23, v40, v39];
    }

    nextFooter = self->_nextFooter;
    if (nextFooter)
    {
      [(PKHorizontalScrollingFooterViewComparator *)nextFooter setFrame:v26, v28, v38, v37];
    }
  }

  return MaxY;
}

- (void)setBackdropOpaque:(BOOL)a3
{
  if (self->_isBackdropOpaque != a3)
  {
    self->_isBackdropOpaque = a3;
    [(PKDashboardViewControllerFooterContainer *)self _updateBackdropViewStyle];
  }
}

- (int64_t)preferredBackdropStyle
{
  v2 = [(PKDashboardViewControllerFooterContainer *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    return 2030;
  }

  else
  {
    return 2010;
  }
}

- (void)_updateBackdropViewStyle
{
  if (self->_isBackdropOpaque)
  {
    v3 = -2;
  }

  else
  {
    v3 = [(PKDashboardViewControllerFooterContainer *)self preferredBackdropStyle];
  }

  if (self->_backdropStyle != v3)
  {
    self->_backdropStyle = v3;
    backdropView = self->_backdropView;

    [(_UIBackdropView *)backdropView transitionToPrivateStyle:?];
  }
}

- (void)setTransitionProgress:(double)a3
{
  currentFooter = self->_currentFooter;
  if (currentFooter && (p_nextFooter = &self->_nextFooter, self->_nextFooter) && (v7 = [(PKHorizontalScrollingFooterViewComparator *)currentFooter isEqualToFooter:?], currentFooter = self->_currentFooter, v7))
  {
    [(PKHorizontalScrollingFooterViewComparator *)currentFooter setAlpha:1.0];
    a3 = 0.0;
  }

  else
  {
    [(PKHorizontalScrollingFooterViewComparator *)currentFooter setAlpha:1.0 - a3];
    p_nextFooter = &self->_nextFooter;
  }

  v8 = *p_nextFooter;

  [(PKHorizontalScrollingFooterViewComparator *)v8 setAlpha:a3];
}

- (void)setCurrentFooter:(id)a3
{
  v5 = a3;
  currentFooter = self->_currentFooter;
  v11 = v5;
  if (currentFooter)
  {
    v7 = currentFooter == v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(PKHorizontalScrollingFooterViewComparator *)currentFooter removeFromSuperview];
  }

  objc_storeStrong(&self->_currentFooter, a3);
  backdropView = self->_backdropView;
  if (backdropView)
  {
    v9 = [(_UIBackdropView *)backdropView contentView];
  }

  else
  {
    v9 = self;
  }

  v10 = v9;
  [(PKDashboardViewControllerFooterContainer *)v9 addSubview:self->_currentFooter];
  [(PKDashboardViewControllerFooterContainer *)v10 bringSubviewToFront:self->_currentFooter];
  [(PKDashboardViewControllerFooterContainer *)self setNeedsLayout];
}

- (void)setNextFooter:(id)a3
{
  v5 = a3;
  nextFooter = self->_nextFooter;
  v11 = v5;
  if (nextFooter)
  {
    v7 = nextFooter == v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(PKHorizontalScrollingFooterViewComparator *)nextFooter removeFromSuperview];
  }

  objc_storeStrong(&self->_nextFooter, a3);
  backdropView = self->_backdropView;
  if (backdropView)
  {
    v9 = [(_UIBackdropView *)backdropView contentView];
  }

  else
  {
    v9 = self;
  }

  v10 = v9;
  [(PKDashboardViewControllerFooterContainer *)v9 addSubview:self->_nextFooter];
  [(PKDashboardViewControllerFooterContainer *)v10 bringSubviewToFront:self->_currentFooter];
  [(PKDashboardViewControllerFooterContainer *)self setNeedsLayout];
}

- (void)setMinimumFooterHeight:(double)a3
{
  if (self->_minimumFooterHeight != a3)
  {
    self->_minimumFooterHeight = a3;
    [(PKDashboardViewControllerFooterContainer *)self setNeedsLayout];
  }
}

@end