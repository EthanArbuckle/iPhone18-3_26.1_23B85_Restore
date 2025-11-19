@interface _UIBasicHeaderFooterContentView
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSString)description;
- (UILabel)textLabel;
- (_UIBasicHeaderFooterContentView)initWithCoder:(id)a3;
- (_UIBasicHeaderFooterContentView)initWithConfiguration:(id)a3;
- (_UIBasicHeaderFooterContentViewConfiguration)configuration;
- (double)_computeSizesForAvailableSpace:(double)a3;
- (double)_preferredMaxLayoutWidth;
- (void)_applyConfiguration:(id *)a1;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setConfiguration:(id)a3;
@end

@implementation _UIBasicHeaderFooterContentView

- (_UIBasicHeaderFooterContentView)initWithConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIBasicHeaderFooterContentView.m" lineNumber:370 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  v13.receiver = self;
  v13.super_class = _UIBasicHeaderFooterContentView;
  v6 = [(UIView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57___UIBasicHeaderFooterContentView_initWithConfiguration___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v11 = v6;
    v12 = v5;
    [UIView performWithoutAnimation:v10];
  }

  return v7;
}

- (_UIBasicHeaderFooterContentView)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (!v5)
  {

    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = _UIBasicHeaderFooterContentView;
  v6 = [(UIView *)&v12 initWithCoder:v4];
  if (!v6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49___UIBasicHeaderFooterContentView_initWithCoder___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v7 = v6;
  v10 = v7;
  v11 = v5;
  [UIView performWithoutAnimation:v9];

LABEL_6:
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIBasicHeaderFooterContentView;
  v4 = a3;
  [(UIView *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = _UIBasicHeaderFooterContentView;
  v3 = [(UIView *)&v6 description];
  v4 = [v3 mutableCopy];

  if ([v4 length])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
    [v4 appendFormat:@"; configuration = %@>", self->_configuration];
  }

  return v4;
}

- (_UIBasicHeaderFooterContentViewConfiguration)configuration
{
  animatingToConfiguration = self->_animatingToConfiguration;
  if (!animatingToConfiguration)
  {
    animatingToConfiguration = self->_configuration;
  }

  v3 = [(_UIBasicHeaderFooterContentViewConfiguration *)animatingToConfiguration copy];

  return v3;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIBasicHeaderFooterContentView.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  animatingToConfiguration = self->_animatingToConfiguration;
  if (![(_UIBasicHeaderFooterContentViewConfiguration *)self->_configuration _isEqualToConfigurationQuick:v5]|| animatingToConfiguration && ([(_UIBasicHeaderFooterContentViewConfiguration *)self->_animatingToConfiguration _isEqualToConfigurationQuick:v5]& 1) == 0)
  {
    v7 = [v5 copy];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      objc_storeStrong(&self->_animatingToConfiguration, v7);
      if (!animatingToConfiguration)
      {
        objc_storeStrong(&self->_animatingFromConfiguration, self->_configuration);
        objc_initWeak(&location, self);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __52___UIBasicHeaderFooterContentView_setConfiguration___block_invoke;
        v15[3] = &unk_1E70F5DE0;
        objc_copyWeak(&v16, &location);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __52___UIBasicHeaderFooterContentView_setConfiguration___block_invoke_2;
        v13[3] = &unk_1E70F5A28;
        objc_copyWeak(&v14, &location);
        v8 = [_UIContentViewAnimationStateUpdatingLayer layerForView:self withUpdateHandler:v15 completionHandler:v13];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __52___UIBasicHeaderFooterContentView_setConfiguration___block_invoke_3;
        v11[3] = &unk_1E70F6AF8;
        v9 = v8;
        v12 = v9;
        [UIView _addCompletionWithPosition:v11];

        objc_destroyWeak(&v14);
        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      if (animatingToConfiguration)
      {
        objc_storeStrong(&self->_animatingFromConfiguration, v7);
        objc_storeStrong(&self->_animatingToConfiguration, v7);
      }

      [(_UIBasicHeaderFooterContentView *)&self->super.super.super.isa _applyConfiguration:v7];
    }
  }
}

- (void)_applyConfiguration:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v12 = v4;
    if (!v4)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel__applyConfiguration_ object:a1 file:@"_UIBasicHeaderFooterContentView.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
    }

    objc_storeStrong(a1 + 54, a2);
    v5 = [v12 axesPreservingSuperviewLayoutMargins];
    if ((v5 & 2) != 0)
    {
      v6 = (v5 << 63 >> 63) & 0xA | 5;
    }

    else
    {
      v6 = (v5 << 63 >> 63) & 0xA;
    }

    [a1 setEdgesPreservingSuperviewLayoutMargins:v6];
    [v12 directionalLayoutMargins];
    [a1 setDirectionalLayoutMargins:?];
    v7 = [v12 textLabel];
    v8 = a1;
    v9 = a1[55];
    if ([v7 _hasText])
    {
      if (v9)
      {
        if ([(UIView *)v9 isHidden])
        {
          [(UIView *)v9 setHidden:0];
        }
      }

      else
      {
        v9 = objc_alloc_init(UILabel);
        v10 = a1[55];
        a1[55] = v9;

        [v8 addSubview:v9];
      }

      [v7 applyToLabel:v9];
    }

    else if (v9 && ![(UIView *)v9 isHidden])
    {
      [(UIView *)v9 setHidden:1];
    }

    v8[53] = 0x7FEFFFFFFFFFFFFFLL;
    [v8 invalidateIntrinsicContentSize];
    [v8 setNeedsLayout];
    v4 = v12;
  }
}

- (UILabel)textLabel
{
  if ([(UIView *)self->_textLabel isHidden])
  {
    textLabel = 0;
  }

  else
  {
    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (BOOL)_needsDoubleUpdateConstraintsPass
{
  if ((*(&self->super._viewFlags + 6) & 0x10) == 0)
  {
    return 0;
  }

  v4 = [(_UIBasicHeaderFooterContentView *)self textLabel];
  if (v4)
  {
    v5 = [(_UIBasicHeaderFooterContentView *)self textLabel];
    v2 = [v5 numberOfLines] != 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_prepareForFirstIntrinsicContentSizeCalculation
{
  self->_preferredMaxLayoutWidth = 1.79769313e308;
  v2.receiver = self;
  v2.super_class = _UIBasicHeaderFooterContentView;
  [(UIView *)&v2 _prepareForFirstIntrinsicContentSizeCalculation];
}

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self alignmentRectForFrame:?];
  self->_preferredMaxLayoutWidth = v8;
  v9.receiver = self;
  v9.super_class = _UIBasicHeaderFooterContentView;
  [(UIView *)&v9 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (double)_preferredMaxLayoutWidth
{
  result = 0.0;
  if ((*(&self->super._viewFlags + 6) & 2) == 0)
  {
    return self->_preferredMaxLayoutWidth;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (a3.width <= 0.0)
  {
    a3.width = 1.79769313e308;
  }

  if (a3.height <= 0.0)
  {
    a3.height = 1.79769313e308;
  }

  [(_UIBasicHeaderFooterContentView *)self _intrinsicSizeWithinSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = 1.79769313e308;
  if (a3.width <= 0.0)
  {
    a3.width = 1.79769313e308;
  }

  if (height > 0.0)
  {
    v9 = height;
  }

  [(_UIBasicHeaderFooterContentView *)self _intrinsicSizeWithinSize:a3.width, v9];
  if (a4 >= 1000.0)
  {
    v10 = width;
  }

  if (a5 >= 1000.0)
  {
    v11 = height;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (double)_computeSizesForAvailableSpace:(double)a3
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = *MEMORY[0x1E695F060];
  v6 = [a1 textLabel];
  v7 = v6;
  if (v6)
  {
    [v6 _intrinsicSizeWithinSize:{a2, a3}];
    v5 = fmax(v5, fmin(v8, a2));
  }

  return v5;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self && (animatingToConfiguration = self->_animatingToConfiguration) != 0 && (configuration = self->_configuration, configuration != animatingToConfiguration))
  {
    v8 = configuration;
    [(_UIBasicHeaderFooterContentView *)&self->super.super.super.isa _applyConfiguration:?];
  }

  else
  {
    v8 = 0;
  }

  if (width >= self->_preferredMaxLayoutWidth)
  {
    preferredMaxLayoutWidth = self->_preferredMaxLayoutWidth;
  }

  else
  {
    preferredMaxLayoutWidth = width;
  }

  [(UIView *)self directionalLayoutMargins];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(_UIBasicHeaderFooterContentView *)self _computeSizesForAvailableSpace:height - v10 - v14];
  v20 = v19;
  if (v8)
  {
    [(_UIBasicHeaderFooterContentView *)&self->super.super.super.isa _applyConfiguration:v8];
  }

  if (preferredMaxLayoutWidth >= v17 + v13 + v18)
  {
    v21 = v17 + v13 + v18;
  }

  else
  {
    v21 = preferredMaxLayoutWidth;
  }

  if (height >= v15 + v11 + v20)
  {
    height = v15 + v11 + v20;
  }

  v22 = v21;
  v23 = height;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = _UIBasicHeaderFooterContentView;
  [(UIView *)&v4 _layoutMarginsDidChangeFromOldMargins:a3.top, a3.left, a3.bottom, a3.right];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = _UIBasicHeaderFooterContentView;
  [(UIView *)&v31 layoutSubviews];
  v3 = [(_UIBasicHeaderFooterContentView *)self textLabel];
  if (v3)
  {
    [(UIView *)self _currentScreenScale];
    v5 = v4;
    [(UIView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIView *)self directionalLayoutMargins];
    v15 = v14;
    v17 = v16;
    v20 = v13 - v14 - v19;
    v21 = [(_UIBasicHeaderFooterContentView *)self _computeSizesForAvailableSpace:v20];
    v30[0] = v7;
    v30[1] = v9;
    v30[2] = v11;
    v30[3] = v13;
    *&v30[4] = 2;
    v30[5] = v17;
    v22 = [(UIView *)self _applyDirectionalRelativePosition:v30 toRect:0.0, 0.0, v21];
    v26 = UIRectCenteredYInRectScale(v22, v23, v24, v25, 0.0, v15, 0.0, v20, v5);
    [v3 setFrame:{UIRectIntegralWithScale(v26, v27, v28, v29, v5)}];
  }
}

@end