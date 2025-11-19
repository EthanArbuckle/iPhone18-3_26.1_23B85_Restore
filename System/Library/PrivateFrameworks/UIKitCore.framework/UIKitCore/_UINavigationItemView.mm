@interface _UINavigationItemView
- (CGRect)_labelFrame;
- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)a3;
- (CGSize)_titleSize;
- (_UINavigationItemView)initWithNavigationItem:(id)a3;
- (double)_titleYAdjustmentCustomization;
- (id)_currentTextColorForBarStyle:(int64_t)a3;
- (id)_currentTextShadowColorForBarStyle:(int64_t)a3;
- (id)_defaultFont;
- (id)description;
- (id)navigationItem;
- (id)title;
- (void)_cleanUpCrossView;
- (void)_crossFadeHiddingButton:(BOOL)a3;
- (void)_prepareCrossViewsForNewSize:(CGSize)a3;
- (void)_setFont:(id)a3;
- (void)_updateLabel;
- (void)_updateLabelColor;
- (void)_updateLabelContents;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setTitleAutoresizesToFit:(BOOL)a3;
@end

@implementation _UINavigationItemView

- (_UINavigationItemView)initWithNavigationItem:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_item, v4);
    __asm { FMOV            V0.2D, #-1.0 }

    v6->_titleSize = _Q0;
    [(UIView *)v6 setOpaque:0];
    [(UIView *)v6 setUserInteractionEnabled:0];
    v12 = objc_alloc_init(UILabel);
    label = v6->_label;
    v6->_label = v12;

    [(UIView *)v6->_label setOpaque:0];
    v14 = v6->_label;
    v15 = +[UIColor clearColor];
    [(UIView *)v14 setBackgroundColor:v15];

    [(UILabel *)v6->_label setLineBreakMode:4];
    v16 = [(_UINavigationItemView *)v6 _defaultFont];
    [(_UINavigationItemView *)v6 _setFont:v16];

    v17 = v6->_label;
    [(_UINavigationItemView *)v6 _labelFrame];
    [(UILabel *)v17 setFrame:?];
    [(UIView *)v6 addSubview:v6->_label];
    v21[0] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v19 = [(UIView *)v6 registerForTraitChanges:v18 withAction:sel__updateLabelColor];
  }

  return v6;
}

- (id)navigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (id)_defaultFont
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v3 = [WeakRetained _navigationBar];
  [WeakRetained _fontScaleAdjustment];
  v4 = [v3 _defaultTitleFontWithScaleAdjustment:?];

  return v4;
}

- (id)_currentTextColorForBarStyle:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v4 = [WeakRetained _navigationBar];

  v5 = [v4 _appearanceStorage];
  v6 = [v5 textAttributes];
  v7 = [v6 objectForKey:*off_1E70EC920];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v4 _titleTextColor];
  }

  v9 = v8;

  return v9;
}

- (id)_currentTextShadowColorForBarStyle:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v4 = [WeakRetained _navigationBar];

  v5 = [v4 _appearanceStorage];
  v6 = [v5 textAttributes];
  v7 = [v6 objectForKey:*off_1E70EC9B0];

  v8 = [v7 shadowColor];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v4 buttonItemShadowColor];
  }

  v11 = v10;

  return v11;
}

- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v4 = [WeakRetained _navigationBar];
  v5 = [v4 _appearanceStorage];
  v6 = [v5 textAttributes];
  v7 = [v6 objectForKey:*off_1E70EC9B0];

  if (v7)
  {
    [v7 shadowOffset];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
    v9 = 0.0;
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_titleSize = *MEMORY[0x1E695F060];
  [(UIView *)self setNeedsLayout];
  v8.receiver = self;
  v8.super_class = _UINavigationItemView;
  [(UIView *)&v8 setFrame:x, y, width, height];
}

- (void)_updateLabelColor
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v7 = [WeakRetained _navigationBar];

  v4 = [v7 barStyle];
  label = self->_label;
  v6 = [(_UINavigationItemView *)self _currentTextColorForBarStyle:v4];
  [(UILabel *)label setTextColor:v6];
}

- (void)_updateLabelContents
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v10 = [WeakRetained _navigationBar];

  v4 = [v10 barStyle];
  v5 = [(_UINavigationItemView *)self title];
  [(_UINavigationItemView *)self _updateLabelColor];
  label = self->_label;
  [(_UINavigationItemView *)self _currentTextShadowOffsetForBarStyle:v4];
  [(UILabel *)label setShadowOffset:?];
  v7 = self->_label;
  v8 = [(_UINavigationItemView *)self _currentTextShadowColorForBarStyle:v4];
  [(UILabel *)v7 setShadowColor:v8];

  if (!self->_customFontSet)
  {
    v9 = [(_UINavigationItemView *)self _defaultFont];
    [(_UINavigationItemView *)self _setFont:v9];
  }

  [(UILabel *)self->_label setText:v5];
}

- (double)_titleYAdjustmentCustomization
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v3 = [WeakRetained _navigationBar];

  v4 = [v3 _appearanceStorage];
  [v4 titleVerticalAdjustmentForBarMetrics:{objc_msgSend(v3, "_activeBarMetrics")}];
  v6 = v5;

  return v6;
}

- (CGRect)_labelFrame
{
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  [(_UINavigationItemView *)self _titleSize];
  v8 = v7;
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v10 = [WeakRetained _navigationBar];

  v11 = [v10 _contentView];
  v12 = [v10 _currentVisualStyle];
  [v12 navigationItemBaselineOffset];
  v14 = v13;
  [v11 frame];
  v15 = CGRectGetHeight(v27) - v14;
  [(UILabel *)self->_label _baselineOffsetFromBottom];
  [(UIView *)self convertPoint:v11 fromView:v4, v15 + v16 - v8];
  v18 = v17;
  v20 = v19;
  [(_UINavigationItemView *)self _titleYAdjustmentCustomization];
  v22 = v20 + v21;

  v23 = v18;
  v24 = v22;
  v25 = v6;
  v26 = v8;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)_updateLabel
{
  label = self->_label;
  if (self->_isCrossFading)
  {
    v3 = self->_label;

    [(UIView *)v3 removeFromSuperview];
  }

  else
  {
    [(_UINavigationItemView *)self _labelFrame];
    [(UILabel *)label setFrame:?];
    v5 = self->_label;

    [(UIView *)self addSubview:v5];
  }
}

- (CGSize)_titleSize
{
  p_titleSize = &self->_titleSize;
  width = self->_titleSize.width;
  if (width <= 0.0)
  {
    [(_UINavigationItemView *)self _updateLabelContents];
    [(UILabel *)self->_label sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    p_titleSize->width = width;
    p_titleSize->height = height;
  }

  else
  {
    height = self->_titleSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)title
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v3 = [WeakRetained title];

  return v3;
}

- (void)setTitleAutoresizesToFit:(BOOL)a3
{
  [(UILabel *)self->_label setAdjustsFontSizeToFitWidth:a3];

  [(UIView *)self setNeedsLayout];
}

- (void)_setFont:(id)a3
{
  label = self->_label;
  v5 = a3;
  [(UILabel *)label setFont:v5];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v15 = [WeakRetained _navigationBar];

  v7 = [v15 barStyle];
  v8 = [v15 _currentVisualStyle];
  v9 = v8;
  v10 = self->_label;
  if (v7)
  {
    [v8 _legacyButtonFontSize];
  }

  else
  {
    [v8 buttonFontSize];
  }

  v12 = v11;
  [v5 pointSize];
  v14 = v13;

  [(UILabel *)v10 setMinimumScaleFactor:v12 / v14];
}

- (void)setFont:(id)a3
{
  self->_customFontSet = a3 != 0;
  if (a3)
  {

    [(_UINavigationItemView *)self _setFont:?];
  }

  else
  {
    v4 = [(_UINavigationItemView *)self _defaultFont];
    [(_UINavigationItemView *)self _setFont:v4];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = _UINavigationItemView;
  v4 = [(UIView *)&v10 description];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v6 = [(_UINavigationItemView *)self title];
  if (v6)
  {
    v7 = [(_UINavigationItemView *)self title];
    v8 = [v3 stringWithFormat:@"<%@: item=%@ title=%@>", v4, WeakRetained, v7];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"<%@: item=%@ title=%@>", v4, WeakRetained, @"<nil>"];
  }

  return v8;
}

- (void)_prepareCrossViewsForNewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_isCrossFading)
  {
    [(_UINavigationItemView *)self _cleanUpCrossView];
  }

  [(UIView *)self bounds];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v6, v7, 0.0);
  v8 = [(UIView *)self layer];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  [v8 renderInContext:v10];

  v11 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();
  if (v11)
  {
    v12 = [[UIImageView alloc] initWithImage:v11];
    topCrossView = self->_topCrossView;
    self->_topCrossView = &v12->super;

    [(UIView *)self->_topCrossView setAlpha:1.0];
  }

  v14 = [_UINavigationItemView alloc];
  v15 = [(_UINavigationItemView *)self navigationItem];
  v16 = [(_UINavigationItemView *)v14 initWithNavigationItem:v15];

  [(_UINavigationItemView *)v16 setFrame:0.0, 0.0, width, height];
  _UIGraphicsBeginImageContextWithOptions(0, 0, width, height, 0.0);
  v17 = [(UIView *)v16 layer];
  v18 = GetContextStack(0);
  if (*v18 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18[3 * (*v18 - 1) + 1];
  }

  [v17 renderInContext:v19];

  v22 = _UIGraphicsGetImageFromCurrentImageContext(0);

  UIGraphicsEndImageContext();
  if (v22)
  {
    v20 = [[UIImageView alloc] initWithImage:v22];
    bottomCrossView = self->_bottomCrossView;
    self->_bottomCrossView = &v20->super;

    [(UIView *)self->_bottomCrossView setAlpha:0.0];
  }

  if (self->_bottomCrossView)
  {
    [(UIView *)self addSubview:?];
  }

  if (self->_topCrossView)
  {
    [(UIView *)self addSubview:?];
  }

  self->_isCrossFading = 1;
  [(UIView *)self setNeedsLayout];
}

- (void)_crossFadeHiddingButton:(BOOL)a3
{
  v3 = 0.0;
  if (a3)
  {
    v3 = 0.175;
    v4 = 0x10000;
  }

  else
  {
    v4 = 0x20000;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49___UINavigationItemView__crossFadeHiddingButton___block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [UIView animateWithDuration:v4 delay:v5 options:0 animations:0.175 completion:v3];
}

- (void)_cleanUpCrossView
{
  [(UIView *)self->_topCrossView removeFromSuperview];
  topCrossView = self->_topCrossView;
  self->_topCrossView = 0;

  [(UIView *)self->_bottomCrossView removeFromSuperview];
  bottomCrossView = self->_bottomCrossView;
  self->_bottomCrossView = 0;

  self->_isCrossFading = 0;

  [(UIView *)self setNeedsDisplay];
}

@end