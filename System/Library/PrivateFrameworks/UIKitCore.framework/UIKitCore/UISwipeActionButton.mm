@interface UISwipeActionButton
- (BOOL)_heightDemandsCompactLayout;
- (CGRect)_allowableContentRectForContentRect:(CGRect)rect;
- (UISwipeActionButton)initWithFrame:(CGRect)frame;
- (_UISwipeActionButtonDelegate)swipeActionButtonDelegate;
- (double)_horizontalPaddingForCurrentIdiom;
- (double)_maxFontSizeForCurrentIdiom;
- (double)_minFontSizeForCurrentIdiom;
- (double)_minScaleFactorForFont:(id)font;
- (double)_titleFontWeightForCurrentIdiom;
- (double)defaultButtonWidth;
- (id)titleFont;
- (id)titleFontOfSize:(double)size;
- (int64_t)_numberOfLinesForTitle:(id)title;
- (unint64_t)_defaultLayoutForHeight:(double)height;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)setBackgroundColor:(id)color;
- (void)setDefaultBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTitle:(id)title forState:(unint64_t)state;
@end

@implementation UISwipeActionButton

- (UISwipeActionButton)initWithFrame:(CGRect)frame
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = UISwipeActionButton;
  v3 = [(UIButton *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    traitCollection = [(UIView *)v3 traitCollection];
    v6 = +[UISwipeActionVisualStyleProvider visualStyleForIdiom:](UISwipeActionVisualStyleProvider, "visualStyleForIdiom:", [traitCollection userInterfaceIdiom]);
    [(UISwipeActionButton *)v4 setVisualStyle:v6];

    [(UIButton *)v4 setAdjustsImageWhenHighlighted:0];
    [(UIView *)v4 setTintAdjustmentMode:1];
    [(UIView *)v4 setAutoresizingMask:18];
    visualStyle = [(UISwipeActionButton *)v4 visualStyle];
    defaultTintColor = [visualStyle defaultTintColor];
    [(UIButton *)v4 setTintColor:defaultTintColor];

    [(UIView *)v4 setClipsToBounds:1];
    titleFont = [(UISwipeActionButton *)v4 titleFont];
    titleLabel = [(UIButton *)v4 titleLabel];
    [titleLabel setFont:titleFont];

    titleLabel2 = [(UIButton *)v4 titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    titleLabel3 = [(UIButton *)v4 titleLabel];
    font = [titleLabel3 font];
    [(UISwipeActionButton *)v4 _minScaleFactorForFont:font];
    v15 = v14;
    titleLabel4 = [(UIButton *)v4 titleLabel];
    [titleLabel4 setMinimumScaleFactor:v15];

    titleLabel5 = [(UIButton *)v4 titleLabel];
    [titleLabel5 setLineBreakMode:4];

    imageView = [(UIButton *)v4 imageView];
    [imageView setContentMode:4];

    if (dyld_program_sdk_at_least())
    {
      v23[0] = objc_opt_class();
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v20 = [(UIView *)v4 registerForTraitChanges:v19 withHandler:&__block_literal_global_550];
    }
  }

  return v4;
}

void __37__UISwipeActionButton_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 titleFont];
  v4 = [v2 titleLabel];
  [v4 setFont:v3];

  v8 = [v2 titleFont];
  [v2 _minScaleFactorForFont:v8];
  v6 = v5;
  v7 = [v2 titleLabel];

  [v7 setMinimumScaleFactor:v6];
}

- (CGRect)_allowableContentRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(UISwipeActionButton *)self _horizontalPaddingForCurrentIdiom];
  v9 = v8;
  [(UISwipeActionButton *)self buttonWidth];
  v11 = v10;
  if ([(UIControl *)self contentHorizontalAlignment]== UIControlContentHorizontalAlignmentRight)
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    CGRectGetWidth(v23);
  }

  UIRoundToViewScale(self);
  v22 = v12;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v13 = CGRectGetHeight(v24);
  visualStyle = [(UISwipeActionButton *)self visualStyle];
  [visualStyle defaultContentHeightForView:self];
  v16 = v15;

  if (v13 < v16)
  {
    v16 = v13;
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  CGRectGetHeight(v25);
  UIRoundToViewScale(self);
  v18 = v17;
  v19 = v11 - (v9 + v9);
  v20 = v22;
  v21 = v16;
  result.size.height = v21;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v20;
  return result;
}

- (BOOL)_heightDemandsCompactLayout
{
  [(UIView *)self frame];
  [(UISwipeActionButton *)self _defaultLayoutForHeight:v3];
  return 0;
}

- (unint64_t)_defaultLayoutForHeight:(double)height
{
  if (height >= 50.0)
  {
    return height < 90.0;
  }

  else
  {
    return 2;
  }
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  v6 = MEMORY[0x1E696AB08];
  titleCopy = title;
  whitespaceAndNewlineCharacterSet = [v6 whitespaceAndNewlineCharacterSet];
  v9 = [titleCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v15.receiver = self;
  v15.super_class = UISwipeActionButton;
  [(UIButton *)&v15 setTitle:v9 forState:state];
  titleLabel = [(UIButton *)self titleLabel];
  visualStyle = [(UISwipeActionButton *)self visualStyle];
  maxLines = [visualStyle maxLines];

  v13 = [(UISwipeActionButton *)self _numberOfLinesForTitle:v9];
  if (maxLines >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = maxLines;
  }

  [titleLabel setNumberOfLines:v14];
}

- (int64_t)_numberOfLinesForTitle:(id)title
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!title)
  {
    return 1;
  }

  titleCopy = title;
  titleFont = [(UISwipeActionButton *)self titleFont];
  [(UIView *)self frame];
  [(UISwipeActionButton *)self _allowableContentRectForContentRect:?];
  v7 = v6;
  v9 = v8;
  v23 = *off_1E70EC918;
  v24[0] = titleFont;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [titleCopy boundingRectWithSize:1 options:v10 attributes:0 context:{v7, v9}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  Height = CGRectGetHeight(v25);
  [titleFont lineHeight];
  v21 = vcvtpd_s64_f64(Height / v20);

  return v21;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v4 = +[UIColor clearColor];
  v5 = [colorCopy isEqual:v4];

  if ((v5 & 1) == 0)
  {
    backgroundView = [(UISwipeActionButton *)self backgroundView];
    [backgroundView setBackgroundColor:colorCopy];
  }
}

- (void)setDefaultBackgroundColor:(id)color
{
  objc_storeStrong(&self->_defaultBackgroundColor, color);
  colorCopy = color;
  [(UISwipeActionButton *)self setBackgroundColor:self->_defaultBackgroundColor];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = UISwipeActionButton;
  [(UIButton *)&v6 setHighlighted:?];
  v5 = 1;
  if (!highlightedCopy)
  {
    v5 = 0;
  }

  [(UISwipeActionButton *)self setBackgroundColor:*(&self->super.super.super.super.super.isa + OBJC_IVAR___UISwipeActionButton__defaultBackgroundColor[v5])];
}

- (double)defaultButtonWidth
{
  visualStyle = [(UISwipeActionButton *)self visualStyle];
  [visualStyle defaultButtonWidth];
  v4 = v3;

  return v4;
}

- (id)titleFontOfSize:(double)size
{
  [(UISwipeActionButton *)self _titleFontWeightForCurrentIdiom];

  return [off_1E70ECC18 systemFontOfSize:size weight:v4];
}

- (id)titleFont
{
  [(UISwipeActionButton *)self _maxFontSizeForCurrentIdiom];
  v4 = v3;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  v6 = preferredContentSizeCategory;
  v7 = @"_UICTContentSizeCategoryUnspecified";
  if (preferredContentSizeCategory)
  {
    v7 = preferredContentSizeCategory;
  }

  v8 = v7;

  if (dyld_program_sdk_at_least() && UIContentSizeCategoryCompareToCategory(&v8->isa, &cfstr_Uictcontentsiz_5.isa) == NSOrderedDescending)
  {
    if (UIContentSizeCategoryCompareToCategory(&v8->isa, &cfstr_Uictcontentsiz_11.isa) == NSOrderedDescending)
    {
      v9 = @"UICTContentSizeCategoryAccessibilityXL";

      v8 = v9;
    }

    v10 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v8];
    v11 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:v10];
    [v11 _scaledValueForValue:v4];
    v4 = v12;
  }

  v13 = [(UISwipeActionButton *)self titleFontOfSize:v4];

  return v13;
}

- (double)_minScaleFactorForFont:(id)font
{
  [font pointSize];
  v5 = v4;
  [(UISwipeActionButton *)self _minFontSizeForCurrentIdiom];
  v7 = v6;
  [(UISwipeActionButton *)self _maxFontSizeForCurrentIdiom];
  if (v5 != 0.0)
  {
    v8 = v5;
  }

  return v7 / v8;
}

- (double)_minFontSizeForCurrentIdiom
{
  visualStyle = [(UISwipeActionButton *)self visualStyle];
  [visualStyle minFontSize];
  v4 = v3;

  return v4;
}

- (double)_maxFontSizeForCurrentIdiom
{
  visualStyle = [(UISwipeActionButton *)self visualStyle];
  [visualStyle maxFontSize];
  v4 = v3;

  return v4;
}

- (double)_horizontalPaddingForCurrentIdiom
{
  visualStyle = [(UISwipeActionButton *)self visualStyle];
  [visualStyle horizontalPadding];
  v4 = v3;

  return v4;
}

- (double)_titleFontWeightForCurrentIdiom
{
  visualStyle = [(UISwipeActionButton *)self visualStyle];
  [visualStyle titleFontWeight];
  v4 = v3;

  return v4;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v10.receiver = self;
  v10.super_class = UISwipeActionButton;
  [(UIControl *)&v10 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animatorCopy];
  WeakRetained = objc_loadWeakRetained(&self->_swipeActionButtonDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained swipeActionButton:self willDisplayContextMenuWithAnimator:animatorCopy];
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v10.receiver = self;
  v10.super_class = UISwipeActionButton;
  [(UIControl *)&v10 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animatorCopy];
  WeakRetained = objc_loadWeakRetained(&self->_swipeActionButtonDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained swipeActionButton:self willDismissContextMenuWithAnimator:animatorCopy];
  }
}

- (_UISwipeActionButtonDelegate)swipeActionButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_swipeActionButtonDelegate);

  return WeakRetained;
}

@end