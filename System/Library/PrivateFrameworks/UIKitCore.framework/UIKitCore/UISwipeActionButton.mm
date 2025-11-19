@interface UISwipeActionButton
- (BOOL)_heightDemandsCompactLayout;
- (CGRect)_allowableContentRectForContentRect:(CGRect)a3;
- (UISwipeActionButton)initWithFrame:(CGRect)a3;
- (_UISwipeActionButtonDelegate)swipeActionButtonDelegate;
- (double)_horizontalPaddingForCurrentIdiom;
- (double)_maxFontSizeForCurrentIdiom;
- (double)_minFontSizeForCurrentIdiom;
- (double)_minScaleFactorForFont:(id)a3;
- (double)_titleFontWeightForCurrentIdiom;
- (double)defaultButtonWidth;
- (id)titleFont;
- (id)titleFontOfSize:(double)a3;
- (int64_t)_numberOfLinesForTitle:(id)a3;
- (unint64_t)_defaultLayoutForHeight:(double)a3;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)setBackgroundColor:(id)a3;
- (void)setDefaultBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
@end

@implementation UISwipeActionButton

- (UISwipeActionButton)initWithFrame:(CGRect)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = UISwipeActionButton;
  v3 = [(UIButton *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 traitCollection];
    v6 = +[UISwipeActionVisualStyleProvider visualStyleForIdiom:](UISwipeActionVisualStyleProvider, "visualStyleForIdiom:", [v5 userInterfaceIdiom]);
    [(UISwipeActionButton *)v4 setVisualStyle:v6];

    [(UIButton *)v4 setAdjustsImageWhenHighlighted:0];
    [(UIView *)v4 setTintAdjustmentMode:1];
    [(UIView *)v4 setAutoresizingMask:18];
    v7 = [(UISwipeActionButton *)v4 visualStyle];
    v8 = [v7 defaultTintColor];
    [(UIButton *)v4 setTintColor:v8];

    [(UIView *)v4 setClipsToBounds:1];
    v9 = [(UISwipeActionButton *)v4 titleFont];
    v10 = [(UIButton *)v4 titleLabel];
    [v10 setFont:v9];

    v11 = [(UIButton *)v4 titleLabel];
    [v11 setAdjustsFontSizeToFitWidth:1];

    v12 = [(UIButton *)v4 titleLabel];
    v13 = [v12 font];
    [(UISwipeActionButton *)v4 _minScaleFactorForFont:v13];
    v15 = v14;
    v16 = [(UIButton *)v4 titleLabel];
    [v16 setMinimumScaleFactor:v15];

    v17 = [(UIButton *)v4 titleLabel];
    [v17 setLineBreakMode:4];

    v18 = [(UIButton *)v4 imageView];
    [v18 setContentMode:4];

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

- (CGRect)_allowableContentRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v14 = [(UISwipeActionButton *)self visualStyle];
  [v14 defaultContentHeightForView:self];
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

- (unint64_t)_defaultLayoutForHeight:(double)a3
{
  if (a3 >= 50.0)
  {
    return a3 < 90.0;
  }

  else
  {
    return 2;
  }
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AB08];
  v7 = a3;
  v8 = [v6 whitespaceAndNewlineCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  v15.receiver = self;
  v15.super_class = UISwipeActionButton;
  [(UIButton *)&v15 setTitle:v9 forState:a4];
  v10 = [(UIButton *)self titleLabel];
  v11 = [(UISwipeActionButton *)self visualStyle];
  v12 = [v11 maxLines];

  v13 = [(UISwipeActionButton *)self _numberOfLinesForTitle:v9];
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  [v10 setNumberOfLines:v14];
}

- (int64_t)_numberOfLinesForTitle:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(UISwipeActionButton *)self titleFont];
  [(UIView *)self frame];
  [(UISwipeActionButton *)self _allowableContentRectForContentRect:?];
  v7 = v6;
  v9 = v8;
  v23 = *off_1E70EC918;
  v24[0] = v5;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [v4 boundingRectWithSize:1 options:v10 attributes:0 context:{v7, v9}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  Height = CGRectGetHeight(v25);
  [v5 lineHeight];
  v21 = vcvtpd_s64_f64(Height / v20);

  return v21;
}

- (void)setBackgroundColor:(id)a3
{
  v7 = a3;
  v4 = +[UIColor clearColor];
  v5 = [v7 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(UISwipeActionButton *)self backgroundView];
    [v6 setBackgroundColor:v7];
  }
}

- (void)setDefaultBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_defaultBackgroundColor, a3);
  v5 = a3;
  [(UISwipeActionButton *)self setBackgroundColor:self->_defaultBackgroundColor];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UISwipeActionButton;
  [(UIButton *)&v6 setHighlighted:?];
  v5 = 1;
  if (!v3)
  {
    v5 = 0;
  }

  [(UISwipeActionButton *)self setBackgroundColor:*(&self->super.super.super.super.super.isa + OBJC_IVAR___UISwipeActionButton__defaultBackgroundColor[v5])];
}

- (double)defaultButtonWidth
{
  v2 = [(UISwipeActionButton *)self visualStyle];
  [v2 defaultButtonWidth];
  v4 = v3;

  return v4;
}

- (id)titleFontOfSize:(double)a3
{
  [(UISwipeActionButton *)self _titleFontWeightForCurrentIdiom];

  return [off_1E70ECC18 systemFontOfSize:a3 weight:v4];
}

- (id)titleFont
{
  [(UISwipeActionButton *)self _maxFontSizeForCurrentIdiom];
  v4 = v3;
  v5 = [UIApp preferredContentSizeCategory];
  v6 = v5;
  v7 = @"_UICTContentSizeCategoryUnspecified";
  if (v5)
  {
    v7 = v5;
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

- (double)_minScaleFactorForFont:(id)a3
{
  [a3 pointSize];
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
  v2 = [(UISwipeActionButton *)self visualStyle];
  [v2 minFontSize];
  v4 = v3;

  return v4;
}

- (double)_maxFontSizeForCurrentIdiom
{
  v2 = [(UISwipeActionButton *)self visualStyle];
  [v2 maxFontSize];
  v4 = v3;

  return v4;
}

- (double)_horizontalPaddingForCurrentIdiom
{
  v2 = [(UISwipeActionButton *)self visualStyle];
  [v2 horizontalPadding];
  v4 = v3;

  return v4;
}

- (double)_titleFontWeightForCurrentIdiom
{
  v2 = [(UISwipeActionButton *)self visualStyle];
  [v2 titleFontWeight];
  v4 = v3;

  return v4;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v10.receiver = self;
  v10.super_class = UISwipeActionButton;
  [(UIControl *)&v10 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:v8];
  WeakRetained = objc_loadWeakRetained(&self->_swipeActionButtonDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained swipeActionButton:self willDisplayContextMenuWithAnimator:v8];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v10.receiver = self;
  v10.super_class = UISwipeActionButton;
  [(UIControl *)&v10 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:v8];
  WeakRetained = objc_loadWeakRetained(&self->_swipeActionButtonDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained swipeActionButton:self willDismissContextMenuWithAnimator:v8];
  }
}

- (_UISwipeActionButtonDelegate)swipeActionButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_swipeActionButtonDelegate);

  return WeakRetained;
}

@end