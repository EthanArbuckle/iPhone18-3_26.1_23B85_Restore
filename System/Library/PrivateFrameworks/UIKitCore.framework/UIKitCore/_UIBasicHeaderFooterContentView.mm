@interface _UIBasicHeaderFooterContentView
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSString)description;
- (UILabel)textLabel;
- (_UIBasicHeaderFooterContentView)initWithCoder:(id)coder;
- (_UIBasicHeaderFooterContentView)initWithConfiguration:(id)configuration;
- (_UIBasicHeaderFooterContentViewConfiguration)configuration;
- (double)_computeSizesForAvailableSpace:(double)space;
- (double)_preferredMaxLayoutWidth;
- (void)_applyConfiguration:(id *)configuration;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)margins;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
@end

@implementation _UIBasicHeaderFooterContentView

- (_UIBasicHeaderFooterContentView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBasicHeaderFooterContentView.m" lineNumber:370 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
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
    v12 = configurationCopy;
    [UIView performWithoutAnimation:v10];
  }

  return v7;
}

- (_UIBasicHeaderFooterContentView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (!v5)
  {

    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = _UIBasicHeaderFooterContentView;
  v6 = [(UIView *)&v12 initWithCoder:coderCopy];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIBasicHeaderFooterContentView;
  coderCopy = coder;
  [(UIView *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
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

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBasicHeaderFooterContentView.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  animatingToConfiguration = self->_animatingToConfiguration;
  if (![(_UIBasicHeaderFooterContentViewConfiguration *)self->_configuration _isEqualToConfigurationQuick:configurationCopy]|| animatingToConfiguration && ([(_UIBasicHeaderFooterContentViewConfiguration *)self->_animatingToConfiguration _isEqualToConfigurationQuick:configurationCopy]& 1) == 0)
  {
    v7 = [configurationCopy copy];
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

- (void)_applyConfiguration:(id *)configuration
{
  v4 = a2;
  if (configuration)
  {
    v12 = v4;
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__applyConfiguration_ object:configuration file:@"_UIBasicHeaderFooterContentView.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
    }

    objc_storeStrong(configuration + 54, a2);
    axesPreservingSuperviewLayoutMargins = [v12 axesPreservingSuperviewLayoutMargins];
    if ((axesPreservingSuperviewLayoutMargins & 2) != 0)
    {
      v6 = (axesPreservingSuperviewLayoutMargins << 63 >> 63) & 0xA | 5;
    }

    else
    {
      v6 = (axesPreservingSuperviewLayoutMargins << 63 >> 63) & 0xA;
    }

    [configuration setEdgesPreservingSuperviewLayoutMargins:v6];
    [v12 directionalLayoutMargins];
    [configuration setDirectionalLayoutMargins:?];
    textLabel = [v12 textLabel];
    configurationCopy = configuration;
    v9 = configuration[55];
    if ([textLabel _hasText])
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
        v10 = configuration[55];
        configuration[55] = v9;

        [configurationCopy addSubview:v9];
      }

      [textLabel applyToLabel:v9];
    }

    else if (v9 && ![(UIView *)v9 isHidden])
    {
      [(UIView *)v9 setHidden:1];
    }

    configurationCopy[53] = 0x7FEFFFFFFFFFFFFFLL;
    [configurationCopy invalidateIntrinsicContentSize];
    [configurationCopy setNeedsLayout];
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

  textLabel = [(_UIBasicHeaderFooterContentView *)self textLabel];
  if (textLabel)
  {
    textLabel2 = [(_UIBasicHeaderFooterContentView *)self textLabel];
    v2 = [textLabel2 numberOfLines] != 1;
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

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (fits.width <= 0.0)
  {
    fits.width = 1.79769313e308;
  }

  if (fits.height <= 0.0)
  {
    fits.height = 1.79769313e308;
  }

  [(_UIBasicHeaderFooterContentView *)self _intrinsicSizeWithinSize:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v9 = 1.79769313e308;
  if (size.width <= 0.0)
  {
    size.width = 1.79769313e308;
  }

  if (height > 0.0)
  {
    v9 = height;
  }

  [(_UIBasicHeaderFooterContentView *)self _intrinsicSizeWithinSize:size.width, v9];
  if (priority >= 1000.0)
  {
    v10 = width;
  }

  if (fittingPriority >= 1000.0)
  {
    v11 = height;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (double)_computeSizesForAvailableSpace:(double)space
{
  if (!self)
  {
    return 0.0;
  }

  v5 = *MEMORY[0x1E695F060];
  textLabel = [self textLabel];
  v7 = textLabel;
  if (textLabel)
  {
    [textLabel _intrinsicSizeWithinSize:{a2, space}];
    v5 = fmax(v5, fmin(v8, a2));
  }

  return v5;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)margins
{
  v4.receiver = self;
  v4.super_class = _UIBasicHeaderFooterContentView;
  [(UIView *)&v4 _layoutMarginsDidChangeFromOldMargins:margins.top, margins.left, margins.bottom, margins.right];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = _UIBasicHeaderFooterContentView;
  [(UIView *)&v31 layoutSubviews];
  textLabel = [(_UIBasicHeaderFooterContentView *)self textLabel];
  if (textLabel)
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
    [textLabel setFrame:{UIRectIntegralWithScale(v26, v27, v28, v29, v5)}];
  }
}

@end