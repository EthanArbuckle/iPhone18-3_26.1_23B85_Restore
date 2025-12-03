@interface _UINavigationItemView
- (CGRect)_labelFrame;
- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)style;
- (CGSize)_titleSize;
- (_UINavigationItemView)initWithNavigationItem:(id)item;
- (double)_titleYAdjustmentCustomization;
- (id)_currentTextColorForBarStyle:(int64_t)style;
- (id)_currentTextShadowColorForBarStyle:(int64_t)style;
- (id)_defaultFont;
- (id)description;
- (id)navigationItem;
- (id)title;
- (void)_cleanUpCrossView;
- (void)_crossFadeHiddingButton:(BOOL)button;
- (void)_prepareCrossViewsForNewSize:(CGSize)size;
- (void)_setFont:(id)font;
- (void)_updateLabel;
- (void)_updateLabelColor;
- (void)_updateLabelContents;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setTitleAutoresizesToFit:(BOOL)fit;
@end

@implementation _UINavigationItemView

- (_UINavigationItemView)initWithNavigationItem:(id)item
{
  v21[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [(UIView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_item, itemCopy);
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
    _defaultFont = [(_UINavigationItemView *)v6 _defaultFont];
    [(_UINavigationItemView *)v6 _setFont:_defaultFont];

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
  _navigationBar = [WeakRetained _navigationBar];
  [WeakRetained _fontScaleAdjustment];
  v4 = [_navigationBar _defaultTitleFontWithScaleAdjustment:?];

  return v4;
}

- (id)_currentTextColorForBarStyle:(int64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  _navigationBar = [WeakRetained _navigationBar];

  _appearanceStorage = [_navigationBar _appearanceStorage];
  textAttributes = [_appearanceStorage textAttributes];
  v7 = [textAttributes objectForKey:*off_1E70EC920];

  if (v7)
  {
    _titleTextColor = v7;
  }

  else
  {
    _titleTextColor = [_navigationBar _titleTextColor];
  }

  v9 = _titleTextColor;

  return v9;
}

- (id)_currentTextShadowColorForBarStyle:(int64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  _navigationBar = [WeakRetained _navigationBar];

  _appearanceStorage = [_navigationBar _appearanceStorage];
  textAttributes = [_appearanceStorage textAttributes];
  v7 = [textAttributes objectForKey:*off_1E70EC9B0];

  shadowColor = [v7 shadowColor];
  v9 = shadowColor;
  if (shadowColor)
  {
    buttonItemShadowColor = shadowColor;
  }

  else
  {
    buttonItemShadowColor = [_navigationBar buttonItemShadowColor];
  }

  v11 = buttonItemShadowColor;

  return v11;
}

- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  _navigationBar = [WeakRetained _navigationBar];
  _appearanceStorage = [_navigationBar _appearanceStorage];
  textAttributes = [_appearanceStorage textAttributes];
  v7 = [textAttributes objectForKey:*off_1E70EC9B0];

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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_titleSize = *MEMORY[0x1E695F060];
  [(UIView *)self setNeedsLayout];
  v8.receiver = self;
  v8.super_class = _UINavigationItemView;
  [(UIView *)&v8 setFrame:x, y, width, height];
}

- (void)_updateLabelColor
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  _navigationBar = [WeakRetained _navigationBar];

  barStyle = [_navigationBar barStyle];
  label = self->_label;
  v6 = [(_UINavigationItemView *)self _currentTextColorForBarStyle:barStyle];
  [(UILabel *)label setTextColor:v6];
}

- (void)_updateLabelContents
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  _navigationBar = [WeakRetained _navigationBar];

  barStyle = [_navigationBar barStyle];
  title = [(_UINavigationItemView *)self title];
  [(_UINavigationItemView *)self _updateLabelColor];
  label = self->_label;
  [(_UINavigationItemView *)self _currentTextShadowOffsetForBarStyle:barStyle];
  [(UILabel *)label setShadowOffset:?];
  v7 = self->_label;
  v8 = [(_UINavigationItemView *)self _currentTextShadowColorForBarStyle:barStyle];
  [(UILabel *)v7 setShadowColor:v8];

  if (!self->_customFontSet)
  {
    _defaultFont = [(_UINavigationItemView *)self _defaultFont];
    [(_UINavigationItemView *)self _setFont:_defaultFont];
  }

  [(UILabel *)self->_label setText:title];
}

- (double)_titleYAdjustmentCustomization
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  _navigationBar = [WeakRetained _navigationBar];

  _appearanceStorage = [_navigationBar _appearanceStorage];
  [_appearanceStorage titleVerticalAdjustmentForBarMetrics:{objc_msgSend(_navigationBar, "_activeBarMetrics")}];
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
  _navigationBar = [WeakRetained _navigationBar];

  _contentView = [_navigationBar _contentView];
  _currentVisualStyle = [_navigationBar _currentVisualStyle];
  [_currentVisualStyle navigationItemBaselineOffset];
  v14 = v13;
  [_contentView frame];
  v15 = CGRectGetHeight(v27) - v14;
  [(UILabel *)self->_label _baselineOffsetFromBottom];
  [(UIView *)self convertPoint:_contentView fromView:v4, v15 + v16 - v8];
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
  title = [WeakRetained title];

  return title;
}

- (void)setTitleAutoresizesToFit:(BOOL)fit
{
  [(UILabel *)self->_label setAdjustsFontSizeToFitWidth:fit];

  [(UIView *)self setNeedsLayout];
}

- (void)_setFont:(id)font
{
  label = self->_label;
  fontCopy = font;
  [(UILabel *)label setFont:fontCopy];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  _navigationBar = [WeakRetained _navigationBar];

  barStyle = [_navigationBar barStyle];
  _currentVisualStyle = [_navigationBar _currentVisualStyle];
  v9 = _currentVisualStyle;
  v10 = self->_label;
  if (barStyle)
  {
    [_currentVisualStyle _legacyButtonFontSize];
  }

  else
  {
    [_currentVisualStyle buttonFontSize];
  }

  v12 = v11;
  [fontCopy pointSize];
  v14 = v13;

  [(UILabel *)v10 setMinimumScaleFactor:v12 / v14];
}

- (void)setFont:(id)font
{
  self->_customFontSet = font != 0;
  if (font)
  {

    [(_UINavigationItemView *)self _setFont:?];
  }

  else
  {
    _defaultFont = [(_UINavigationItemView *)self _defaultFont];
    [(_UINavigationItemView *)self _setFont:_defaultFont];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = _UINavigationItemView;
  v4 = [(UIView *)&v10 description];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  title = [(_UINavigationItemView *)self title];
  if (title)
  {
    title2 = [(_UINavigationItemView *)self title];
    v8 = [v3 stringWithFormat:@"<%@: item=%@ title=%@>", v4, WeakRetained, title2];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"<%@: item=%@ title=%@>", v4, WeakRetained, @"<nil>"];
  }

  return v8;
}

- (void)_prepareCrossViewsForNewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_isCrossFading)
  {
    [(_UINavigationItemView *)self _cleanUpCrossView];
  }

  [(UIView *)self bounds];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v6, v7, 0.0);
  layer = [(UIView *)self layer];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  [layer renderInContext:v10];

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
  navigationItem = [(_UINavigationItemView *)self navigationItem];
  v16 = [(_UINavigationItemView *)v14 initWithNavigationItem:navigationItem];

  [(_UINavigationItemView *)v16 setFrame:0.0, 0.0, width, height];
  _UIGraphicsBeginImageContextWithOptions(0, 0, width, height, 0.0);
  layer2 = [(UIView *)v16 layer];
  v18 = GetContextStack(0);
  if (*v18 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18[3 * (*v18 - 1) + 1];
  }

  [layer2 renderInContext:v19];

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

- (void)_crossFadeHiddingButton:(BOOL)button
{
  v3 = 0.0;
  if (button)
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