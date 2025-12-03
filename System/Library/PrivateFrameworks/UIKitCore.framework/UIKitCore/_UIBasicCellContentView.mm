@interface _UIBasicCellContentView
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (BOOL)becomeFirstResponder;
- (CGRect)_primaryTextLayoutFrame;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSLayoutRect)_primaryTextLayoutRect;
- (NSString)description;
- (UIImageView)imageView;
- (UILabel)textLabel;
- (_UIBasicCellContentView)initWithCoder:(id)coder;
- (_UIBasicCellContentView)initWithConfiguration:(id)configuration;
- (_UIBasicCellContentViewConfiguration)configuration;
- (double)_preferredMaxLayoutWidth;
- (void)_applyConfiguration:(id *)configuration;
- (void)_computeSizesForAvailableSpace:(double)space;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)margins;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
@end

@implementation _UIBasicCellContentView

- (_UIBasicCellContentView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBasicCellContentView.m" lineNumber:449 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  v13.receiver = self;
  v13.super_class = _UIBasicCellContentView;
  v6 = [(UIView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49___UIBasicCellContentView_initWithConfiguration___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v11 = v6;
    v12 = configurationCopy;
    [UIView performWithoutAnimation:v10];
  }

  return v7;
}

- (_UIBasicCellContentView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (!v5)
  {

    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = _UIBasicCellContentView;
  v6 = [(UIView *)&v12 initWithCoder:coderCopy];
  if (!v6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41___UIBasicCellContentView_initWithCoder___block_invoke;
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
  v5.super_class = _UIBasicCellContentView;
  coderCopy = coder;
  [(UIView *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = _UIBasicCellContentView;
  v3 = [(UIView *)&v6 description];
  v4 = [v3 mutableCopy];

  if ([v4 length])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
    [v4 appendFormat:@"; configuration = %@>", self->_configuration];
  }

  return v4;
}

- (_UIBasicCellContentViewConfiguration)configuration
{
  animatingToConfiguration = self->_animatingToConfiguration;
  if (!animatingToConfiguration)
  {
    animatingToConfiguration = self->_configuration;
  }

  v3 = [(_UIBasicCellContentViewConfiguration *)animatingToConfiguration copy];

  return v3;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBasicCellContentView.m" lineNumber:502 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  animatingToConfiguration = self->_animatingToConfiguration;
  if ([(_UIContentViewEditingController *)self->_editingController isDisplayingEditedText]|| ![(_UIBasicCellContentViewConfiguration *)self->_configuration _isEqualToConfigurationQuick:configurationCopy]|| animatingToConfiguration && ([(_UIBasicCellContentViewConfiguration *)self->_animatingToConfiguration _isEqualToConfigurationQuick:configurationCopy]& 1) == 0)
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
        v15[2] = __44___UIBasicCellContentView_setConfiguration___block_invoke;
        v15[3] = &unk_1E70F5DE0;
        objc_copyWeak(&v16, &location);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __44___UIBasicCellContentView_setConfiguration___block_invoke_2;
        v13[3] = &unk_1E70F5A28;
        objc_copyWeak(&v14, &location);
        v8 = [_UIContentViewAnimationStateUpdatingLayer layerForView:self withUpdateHandler:v15 completionHandler:v13];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __44___UIBasicCellContentView_setConfiguration___block_invoke_3;
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

      [(_UIBasicCellContentView *)&self->super.super.super.isa _applyConfiguration:v7];
    }
  }
}

- (void)_applyConfiguration:(id *)configuration
{
  v4 = a2;
  if (configuration)
  {
    v28 = v4;
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__applyConfiguration_ object:configuration file:@"_UIBasicCellContentView.m" lineNumber:558 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
    }

    objc_storeStrong(configuration + 55, a2);
    axesPreservingSuperviewLayoutMargins = [v28 axesPreservingSuperviewLayoutMargins];
    if ((axesPreservingSuperviewLayoutMargins & 2) != 0)
    {
      v6 = (axesPreservingSuperviewLayoutMargins << 63 >> 63) & 0xA | 5;
    }

    else
    {
      v6 = (axesPreservingSuperviewLayoutMargins << 63 >> 63) & 0xA;
    }

    [configuration setEdgesPreservingSuperviewLayoutMargins:v6];
    [v28 directionalLayoutMargins];
    [configuration setDirectionalLayoutMargins:?];
    imageView = [v28 imageView];
    configurationCopy = configuration;
    v9 = configuration[56];
    v10 = v9;
    if (imageView && (imageView[2] || imageView[6]))
    {
      if (v9)
      {
        if ([(UIView *)v9 isHidden])
        {
          [(UIImageView *)v10 setHidden:0];
        }
      }

      else
      {
        v10 = objc_alloc_init(UIImageView);
        v11 = configuration[56];
        configuration[56] = v10;

        [configurationCopy addSubview:v10];
      }

      [imageView applyToImageView:v10];
    }

    else if (v9 && ![(UIView *)v9 isHidden])
    {
      [(UIImageView *)v10 setHidden:1];
    }

    textLabel = [v28 textLabel];
    v13 = configurationCopy;
    v14 = configurationCopy[57];
    if ([textLabel _hasText])
    {
      if (v14)
      {
        if ([(UIView *)v14 isHidden])
        {
          [(UIView *)v14 setHidden:0];
        }
      }

      else
      {
        v14 = objc_alloc_init(UILabel);
        v15 = configurationCopy[57];
        configurationCopy[57] = v14;

        [v13 addSubview:v14];
      }

      [textLabel applyToLabel:v14];
    }

    else if (v14 && ![(UIView *)v14 isHidden])
    {
      [(UIView *)v14 setHidden:1];
    }

    _textLabelEditingConfiguration = [v28 _textLabelEditingConfiguration];
    if (_textLabelEditingConfiguration)
    {
      v17 = v13[54];

      if (!v17)
      {
        v18 = [_UIContentViewEditingController alloc];
        textLabel2 = [v13 textLabel];
        v20 = [(_UIContentViewEditingController *)v18 initWithContentView:v13 editableLabel:textLabel2];
        v21 = v13[54];
        v13[54] = v20;
      }
    }

    v22 = v13[54];
    textLabel3 = [v28 textLabel];
    _textLabelEditingConfiguration2 = [v28 _textLabelEditingConfiguration];
    [v22 updateLabelProperties:textLabel3 editingConfiguration:_textLabelEditingConfiguration2];

    _textLabelEditingConfiguration3 = [v28 _textLabelEditingConfiguration];

    if (!_textLabelEditingConfiguration3)
    {
      v26 = v13[54];
      v13[54] = 0;
    }

    v13[53] = 0x7FEFFFFFFFFFFFFFLL;
    [v13 invalidateIntrinsicContentSize];
    [v13 setNeedsLayout];
    v4 = v28;
  }
}

- (UIImageView)imageView
{
  if ([(UIView *)self->_imageView isHidden])
  {
    imageView = 0;
  }

  else
  {
    imageView = self->_imageView;
  }

  return imageView;
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

  textLabel = [(_UIBasicCellContentView *)self textLabel];
  if (textLabel)
  {
    textLabel2 = [(_UIBasicCellContentView *)self textLabel];
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
  v2.super_class = _UIBasicCellContentView;
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
  v9.super_class = _UIBasicCellContentView;
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

  [(_UIBasicCellContentView *)self _intrinsicSizeWithinSize:fits.width, fits.height];
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

  [(_UIBasicCellContentView *)self _intrinsicSizeWithinSize:size.width, v9];
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

- (void)_computeSizesForAvailableSpace:(double)space
{
  if (!a2)
  {
    *(self + 80) = 0;
    *(self + 48) = 0u;
    *(self + 64) = 0u;
    *(self + 16) = 0u;
    *(self + 32) = 0u;
    *self = 0u;
    return;
  }

  *self = 0;
  v7 = MEMORY[0x1E695F060];
  v8 = *MEMORY[0x1E695F060];
  *(self + 8) = *MEMORY[0x1E695F060];
  *(self + 24) = v8;
  *(self + 40) = 0;
  *(self + 48) = v8;
  *(self + 64) = v8;
  v52 = v8;
  *(self + 80) = 0;
  traitCollection = [a2 traitCollection];
  imageView = [a2 imageView];
  imageView2 = [a2[55] imageView];
  [imageView2 maximumSize];
  v56.f64[0] = v12;
  v56.f64[1] = v13;

  v14 = 0;
  if (_UIContentViewShouldUseAccessibilityLargeTextLayout(traitCollection))
  {
    textLabel = [a2[55] textLabel];
    ShouldUseAccessibilityTextWrappingLayout = _UIContentViewShouldUseAccessibilityTextWrappingLayout(textLabel, imageView, &v56);

    if (ShouldUseAccessibilityTextWrappingLayout)
    {
      v14 = 2;
      *self = 2;
      if (!imageView)
      {
        v54 = *(self + 8);
        goto LABEL_26;
      }

      v17 = 1;
      goto LABEL_9;
    }

    v14 = 1;
    *self = 1;
  }

  if (!imageView)
  {
    goto LABEL_24;
  }

  v17 = 0;
LABEL_9:
  [imageView _intrinsicSizeWithinSize:{space, a4}];
  v51 = v18;
  v53 = v19;
  image = [imageView image];
  imageView3 = [a2[55] imageView];
  [imageView3 reservedLayoutSize];
  v23 = _UIContentViewImageViewLayoutHeight(image, traitCollection, v53, v22, v56.f64[1]);
  *(self + 32) = v23;

  [a2 directionalLayoutMargins];
  v26 = a4 + v24 + v25;
  v27.f64[0] = space;
  if (v23 >= v53)
  {
    v26 = a4;
  }

  v27.f64[1] = v26;
  v28.f64[0] = v51;
  v28.f64[1] = v53;
  v29 = vmaxnmq_f64(v52, vminnmq_f64(v28, vbslq_s8(vcgtzq_f64(v56), vbslq_s8(vcgtq_f64(v56, v27), v27, v56), v27)));
  v30 = v51 != v29.f64[0];
  if (v53 != v29.f64[1])
  {
    v30 = 1;
  }

  if (v51 > 0.0 && v30 && v53 > 0.0)
  {
    v29.f64[0] = v29.f64[0] / v51;
    v31 = v29.f64[1] / v53;
    if (v29.f64[0] < v29.f64[1] / v53)
    {
      v31 = v29.f64[0];
    }

    v29 = vmulq_n_f64(v28, v31);
  }

  *(self + 8) = v29;
  v54 = v29.f64[0];
  if (v17)
  {
    *(self + 40) = 0;
LABEL_26:
    [a2[55] imageToTextPadding];
    v40 = v54 + v41;
    v14 = 2;
    goto LABEL_27;
  }

  image2 = [imageView image];
  imageView4 = [a2[55] imageView];
  [imageView4 reservedLayoutSize];
  v35 = a2[55];
  if (v35)
  {
    v36 = (v35[5] - 1) < 2;
  }

  else
  {
    v36 = 0;
  }

  v37 = _UIContentViewImageViewHorizontalCenteringOffset(image2, traitCollection, v36, v54, v34);
  *(self + 40) = v37;

  v38 = v54 + v37 + v37;
  *(self + 24) = v38;
  [a2[55] imageToTextPadding];
  space = space - (v38 + v39);
LABEL_24:
  v40 = 0.0;
LABEL_27:
  textLabel2 = [a2 textLabel];
  textLabel3 = [a2[55] textLabel];
  _UIContentViewUpdateLabelAttributesForAccessibilityLayout(textLabel2, textLabel3, v14, v40);

  *(self + 80) = v40;
  if (textLabel2)
  {
    [textLabel2 _intrinsicSizeWithinSize:{space, a4}];
    v46 = fmax(v7[1], fmin(v45, a4));
    *(self + 48) = fmax(*v7, fmin(v44, space));
    *(self + 56) = v46;
  }

  textInputView = [a2[54] textInputView];

  if (textInputView)
  {
    textLabel4 = [a2 textLabel];

    if (!textLabel4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__computeSizesForAvailableSpace_ object:a2 file:@"_UIBasicCellContentView.m" lineNumber:694 description:@"The text label should exist if there is a text input view"];
    }

    v49 = *(self + 56);
    *(self + 64) = space - v40;
    *(self + 72) = v49;
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self && (animatingToConfiguration = self->_animatingToConfiguration) != 0 && (configuration = self->_configuration, configuration != animatingToConfiguration))
  {
    v8 = configuration;
    [(_UIBasicCellContentView *)&self->super.super.super.isa _applyConfiguration:?];
  }

  else
  {
    v8 = 0;
  }

  traitCollection = [(UIView *)self traitCollection];
  v10 = _UITableConstantsForTraitCollection(traitCollection);
  if (width >= self->_preferredMaxLayoutWidth)
  {
    preferredMaxLayoutWidth = self->_preferredMaxLayoutWidth;
  }

  else
  {
    preferredMaxLayoutWidth = width;
  }

  [(UIView *)self directionalLayoutMargins];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  [(_UIBasicCellContentView *)&v37 _computeSizesForAvailableSpace:preferredMaxLayoutWidth - v14 - v18, height - v12 - v16];
  v20 = v19 + v15 + *&v40;
  v21 = v17 + v13 + *(&v40 + 1);
  if (v37 != 2)
  {
    v22 = v20 + *(&v38 + 1);
    if (*(&v38 + 1) > 0.0 && v20 > 0.0)
    {
      [(_UIBasicCellContentViewConfiguration *)self->_configuration imageToTextPadding];
      v22 = v22 + v23;
    }

    if (v17 + v13 + *&v39 >= v21)
    {
      v21 = v17 + v13 + *&v39;
    }

    v20 = v22;
  }

  textLabel = [(_UIBasicCellContentView *)self textLabel];
  font = [textLabel font];
  v26 = font;
  if (font)
  {
    font2 = font;
  }

  else
  {
    textLabel2 = [(_UIBasicCellContentViewConfiguration *)self->_configuration textLabel];
    font2 = [textLabel2 font];
  }

  v29 = self->_configuration;
  if (v29)
  {
    v30 = (v29->_defaultStyle - 1) < 2;
  }

  else
  {
    v30 = 0;
  }

  [v10 minimumContentViewHeightForFont:font2 traitCollection:traitCollection isSidebarStyle:v30];
  v32 = v31;
  if (v8)
  {
    [(_UIBasicCellContentView *)&self->super.super.super.isa _applyConfiguration:v8];
  }

  if (preferredMaxLayoutWidth >= v20)
  {
    v33 = v20;
  }

  else
  {
    v33 = preferredMaxLayoutWidth;
  }

  if (v32 >= v21)
  {
    v34 = v32;
  }

  else
  {
    v34 = v21;
  }

  if (height >= v34)
  {
    height = v34;
  }

  v35 = v33;
  v36 = height;
  result.height = v36;
  result.width = v35;
  return result;
}

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)margins
{
  v4.receiver = self;
  v4.super_class = _UIBasicCellContentView;
  [(UIView *)&v4 _layoutMarginsDidChangeFromOldMargins:margins.top, margins.left, margins.bottom, margins.right];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v127.receiver = self;
  v127.super_class = _UIBasicCellContentView;
  [(UIView *)&v127 layoutSubviews];
  [(_UIBasicCellContentView *)self _primaryTextLayoutFrame];
  v108 = v4;
  v109 = v3;
  v106 = v6;
  v107 = v5;
  [(UIView *)self _currentScreenScale];
  v8 = v7;
  [(UIView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIView *)self directionalLayoutMargins];
  v18 = v17;
  v20 = v19;
  v126 = 0.0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0u;
  memset(v122, 0, sizeof(v122));
  v112 = v16 - v17 - v22;
  [(_UIBasicCellContentView *)v122 _computeSizesForAvailableSpace:v14 - v19 - v21, v112];
  imageView = [(_UIBasicCellContentView *)self imageView];
  v24 = *&v122[0];
  v25 = 2;
  v110 = v12;
  v111 = v10;
  v26 = v16;
  if (imageView)
  {
    v114 = v12;
    v115 = v14;
    v113 = v10;
    if (*&v122[0] != 2)
    {
      v27 = *(&v123 + 1);
      v116 = v111;
      v117 = v12;
      v118 = v14;
      v119 = v16;
      v120 = 2;
      v121 = v20 + *(&v123 + 1);
      v28 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *(v122 + 1)];
      v32 = UIRectCenteredYInRectScale(v28, v29, v30, v31, 0.0, v18, 0.0, v112, v8);
      v36 = UIRectIntegralWithScale(v32, v33, v34, v35, v8);
      v26 = v37;
      v113 = v36;
      v114 = v38;
      v115 = v39;
      [imageView setFrame:?];
      [(_UIBasicCellContentViewConfiguration *)self->_configuration imageToTextPadding];
      v20 = v27 + v40;
      v25 = 8;
    }
  }

  else
  {
    v114 = v12;
    v115 = v14;
    v113 = v10;
  }

  textLabel = [(_UIBasicCellContentView *)self textLabel];
  if (textLabel)
  {
    v116 = v113;
    v117 = v114;
    v118 = v115;
    v119 = v26;
    v120 = v25;
    v121 = v20;
    v42 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *&v124];
    v46 = UIRectCenteredYInRectScale(v42, v43, v44, v45, 0.0, v18, 0.0, v112, v8);
    [textLabel setFrame:{UIRectIntegralWithScale(v46, v47, v48, v49, v8)}];
    if (v24)
    {
      v104 = v26;
      v105 = v18;
      [imageView frame];
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      LineOfLabel = _UIContentViewRectForVerticalCenteringWithFirstLineOfLabel(textLabel);
      if (v24 == 2)
      {
        v62 = v61;
        v63 = v60;
        v64 = v59;
        v65 = LineOfLabel;
        [(UIView *)self bringSubviewToFront:imageView];
        v116 = v113;
        v117 = v114;
        v118 = v115;
        v119 = v104;
        v120 = v25;
        v121 = v20;
        v66 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *(v122 + 1)];
        v71 = UIRectCenteredYInRectScale(v66, v67, v68, v69, v65, v64, v63, v62, v8);
        v73 = v72;
        v75 = v74;
      }

      else
      {
        v71 = UIRectCenteredYInRectScale(v51, v53, v55, v57, LineOfLabel, v59, v60, v61, v8);
        v77 = v76;
        v73 = v78;
        v75 = v79;
        v128.origin.y = v110;
        v128.origin.x = v111;
        v128.size.width = v14;
        v128.size.height = v16;
        v80 = v105 * 0.5 + CGRectGetMinY(v128);
        if (v77 >= v80)
        {
          v70 = v77;
        }

        else
        {
          v70 = v80;
        }
      }

      [imageView setFrame:{UIRectIntegralWithScale(v71, v70, v73, v75, v8)}];
      v26 = v104;
      v18 = v105;
    }
  }

  if (imageView)
  {
    imageView2 = [(_UIBasicCellContentViewConfiguration *)self->_configuration imageView];
    [imageView2 cornerRadius];
    _UIApplyCornerRadiusToView(imageView, v82);
  }

  textInputView = [(_UIContentViewEditingController *)self->_editingController textInputView];

  if (textInputView)
  {
    v116 = v113;
    v117 = v114;
    v118 = v115;
    v119 = v26;
    v120 = v25;
    v121 = v20 + v126;
    v84 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *&v125];
    v88 = UIRectCenteredYInRectScale(v84, v85, v86, v87, 0.0, v18, 0.0, v112, v8);
    v92 = UIRectIntegralWithScale(v88, v89, v90, v91, v8);
    v94 = v93;
    v96 = v95;
    v98 = v97;
    textInputView2 = [(_UIContentViewEditingController *)self->_editingController textInputView];
    [textInputView2 setFrame:{v92, v94, v96, v98}];
  }

  if (self->_primaryTextFrameDidChangeHandler)
  {
    [(_UIBasicCellContentView *)self _primaryTextLayoutFrame];
    v130.origin.x = v100;
    v130.origin.y = v101;
    v130.size.width = v102;
    v130.size.height = v103;
    v129.origin.y = v108;
    v129.origin.x = v109;
    v129.size.height = v106;
    v129.size.width = v107;
    if (!CGRectEqualToRect(v129, v130))
    {
      (*(self->_primaryTextFrameDidChangeHandler + 2))();
    }
  }
}

- (BOOL)becomeFirstResponder
{
  editingController = self->_editingController;
  if (editingController)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47___UIBasicCellContentView_becomeFirstResponder__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    return [(_UIContentViewEditingController *)editingController makeTextInputFirstResponderWithInitialLayoutBlock:v5];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _UIBasicCellContentView;
    return [(UIView *)&v4 becomeFirstResponder];
  }
}

- (NSLayoutRect)_primaryTextLayoutRect
{
  textLabel = [(_UIBasicCellContentView *)self textLabel];
  _layoutRect = [textLabel _layoutRect];

  return _layoutRect;
}

- (CGRect)_primaryTextLayoutFrame
{
  textLabel = [(_UIBasicCellContentView *)self textLabel];
  v3 = textLabel;
  if (textLabel)
  {
    [textLabel frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end