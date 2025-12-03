@interface PKDashboardCollectionViewCell
+ (double)defaultHorizontalInset;
- (NSDirectionalEdgeInsets)separatorInsets;
- (PKDashboardCollectionViewCell)initWithFrame:(CGRect)frame;
- (double)horizontalInset;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomSeparatorVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMaskType:(unint64_t)type;
- (void)setSeparatorInsets:(NSDirectionalEdgeInsets)insets;
- (void)setShowsBottomSeparator:(BOOL)separator;
- (void)setWantsCustomAppearance:(BOOL)appearance;
- (void)updateMask;
@end

@implementation PKDashboardCollectionViewCell

+ (double)defaultHorizontalInset
{
  v2 = PKUIGetMinScreenWidthType();
  result = 16.0;
  v4 = 20.0;
  if (v2 >= 8)
  {
    v5 = 20.0;
  }

  else
  {
    v5 = 16.0;
  }

  if (v2 != 4)
  {
    v4 = 16.0;
  }

  if (v2 > 4)
  {
    v4 = v5;
  }

  if (v2)
  {
    return v4;
  }

  return result;
}

- (PKDashboardCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PKDashboardCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(PKDashboardCollectionViewCell *)v3 setBackgroundView:v4];

    backgroundView = [(PKDashboardCollectionViewCell *)v3 backgroundView];
    defaultBackgroundColor = [objc_opt_class() defaultBackgroundColor];
    [backgroundView setBackgroundColor:defaultBackgroundColor];

    v3->_bottomSeparatorVisible = 1;
    [(PKDashboardCollectionViewCell *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9678]];
    v7 = _UISolariumFeatureFlagEnabled();
    v8 = 0.0;
    *&v3->_separatorInsets.top = xmmword_1BE0D82B0;
    if (v7)
    {
      v8 = 16.0;
    }

    v3->_separatorInsets.bottom = 0.0;
    v3->_separatorInsets.trailing = v8;
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PKDashboardCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v13 layoutSubviews];
  superview = [(UIView *)self->_separatorView superview];

  if (superview)
  {
    contentView = [(PKDashboardCollectionViewCell *)self contentView];
    [contentView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(UIView *)self->_separatorView setFrame:v6 + self->_separatorInsets.leading, v8 + v12 - PKUIPixelLength(), v10 - self->_separatorInsets.leading - self->_separatorInsets.trailing];
  }

  [(PKDashboardCollectionViewCell *)self updateMask];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = PKDashboardCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v7 prepareForReuse];
  self->_customHorizontalInset = 0;
  self->_bottomSeparatorVisible = 1;
  separatorView = self->_separatorView;
  if (separatorView)
  {
    [(PKDashboardCollectionViewCell *)self _bottomSeparatorAlpha];
    [(UIView *)separatorView setAlpha:?];
  }

  wantsCustomAppearance = self->_wantsCustomAppearance;
  backgroundView = [(PKDashboardCollectionViewCell *)self backgroundView];
  if (wantsCustomAppearance)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [objc_opt_class() defaultBackgroundColor];
  }
  v6 = ;
  [backgroundView setBackgroundColor:v6];
}

- (double)horizontalInset
{
  if (self->_customHorizontalInset)
  {
    return self->_horizontalInset;
  }

  v4 = objc_opt_class();

  [v4 defaultHorizontalInset];
  return result;
}

- (void)setSeparatorInsets:(NSDirectionalEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.leading;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_separatorInsets.top), vceqq_f64(v4, *&self->_separatorInsets.bottom)))) & 1) == 0)
  {
    self->_separatorInsets = insets;
    [(PKDashboardCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setMaskType:(unint64_t)type
{
  if (self->_maskType != type)
  {
    self->_maskType = type;
    [(PKDashboardCollectionViewCell *)self updateMask];
  }
}

- (void)updateMask
{
  [(PKDashboardCollectionViewCell *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  maskType = self->_maskType;
  if (self->_previousMaskType == maskType)
  {
    v14.origin.x = v3;
    v14.origin.y = v4;
    v14.size.width = v5;
    v14.size.height = v6;
    if (CGRectEqualToRect(self->_previousMaskBounds, v14))
    {
      return;
    }

    maskType = self->_maskType;
  }

  self->_previousMaskBounds.origin.x = v7;
  self->_previousMaskBounds.origin.y = v8;
  self->_previousMaskBounds.size.width = v9;
  self->_previousMaskBounds.size.height = v10;
  self->_previousMaskType = maskType;
  if (!self->_wantsListBehavior)
  {
    v12 = self->_maskType;

    [(UIView *)self pkui_setMaskType:v12];
  }
}

- (void)setShowsBottomSeparator:(BOOL)separator
{
  if (self->_showsBottomSeparator == !separator)
  {
    self->_showsBottomSeparator = separator;
    separatorView = self->_separatorView;
    if (separator)
    {
      if (!separatorView)
      {
        v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v6 = self->_separatorView;
        self->_separatorView = v5;

        v7 = self->_separatorView;
        separatorColor = [MEMORY[0x1E69DC888] separatorColor];
        [(UIView *)v7 setBackgroundColor:separatorColor];

        [(UIView *)self->_separatorView setAutoresizingMask:2];
        v9 = self->_separatorView;
        [(PKDashboardCollectionViewCell *)self _bottomSeparatorAlpha];
        [(UIView *)v9 setAlpha:?];
      }

      contentView = [(PKDashboardCollectionViewCell *)self contentView];
      [contentView addSubview:self->_separatorView];

      [(PKDashboardCollectionViewCell *)self setNeedsLayout];
    }

    else
    {

      [(UIView *)separatorView removeFromSuperview];
    }
  }
}

- (void)setBottomSeparatorVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_bottomSeparatorVisible == !visible)
  {
    self->_bottomSeparatorVisible = visible;
    separatorView = self->_separatorView;
    if (separatorView)
    {
      if (animated)
      {
        superview = [(UIView *)separatorView superview];

        [(PKDashboardCollectionViewCell *)self _bottomSeparatorAlpha];
        if (superview)
        {
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __68__PKDashboardCollectionViewCell_setBottomSeparatorVisible_animated___block_invoke;
          v9[3] = &unk_1E80119C8;
          v9[4] = self;
          v9[5] = v7;
          [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v9 completion:0];
          return;
        }
      }

      else
      {
        [(PKDashboardCollectionViewCell *)self _bottomSeparatorAlpha];
      }

      v8 = self->_separatorView;

      [(UIView *)v8 setAlpha:?];
    }
  }
}

- (void)setWantsCustomAppearance:(BOOL)appearance
{
  if (self->_wantsCustomAppearance == !appearance)
  {
    appearanceCopy = appearance;
    self->_wantsCustomAppearance = appearance;
    backgroundView = [(PKDashboardCollectionViewCell *)self backgroundView];
    if (appearanceCopy)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [objc_opt_class() defaultBackgroundColor];
    }
    v5 = ;
    [backgroundView setBackgroundColor:v5];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v11.receiver = self;
  v11.super_class = PKDashboardCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v11 setHighlighted:?];
  if (!self->_wantsCustomAppearance || self->_wantsDefaultHighlightBehavior)
  {
    v5 = MEMORY[0x1E69DD250];
    if (highlightedCopy)
    {
      v6 = v10;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v7 = __48__PKDashboardCollectionViewCell_setHighlighted___block_invoke;
    }

    else
    {
      v6 = &v8;
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v7 = __48__PKDashboardCollectionViewCell_setHighlighted___block_invoke_2;
    }

    v6[2] = v7;
    v6[3] = &unk_1E8010970;
    v6[4] = self;
    [v5 _animateUsingDefaultTimingWithOptions:0 animations:v8 completion:v9];
  }
}

void __48__PKDashboardCollectionViewCell_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  v1 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  [v2 setBackgroundColor:v1];
}

void __48__PKDashboardCollectionViewCell_setHighlighted___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  v1 = [objc_opt_class() defaultBackgroundColor];
  [v2 setBackgroundColor:v1];
}

- (NSDirectionalEdgeInsets)separatorInsets
{
  top = self->_separatorInsets.top;
  leading = self->_separatorInsets.leading;
  bottom = self->_separatorInsets.bottom;
  trailing = self->_separatorInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end