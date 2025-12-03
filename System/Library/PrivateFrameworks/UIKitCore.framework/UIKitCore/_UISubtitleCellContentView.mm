@interface _UISubtitleCellContentView
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (BOOL)becomeFirstResponder;
- (CGRect)_primaryTextLayoutFrame;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSLayoutRect)_primaryTextLayoutRect;
- (NSString)description;
- (UIImageView)imageView;
- (UILabel)subtitleLabel;
- (UILabel)textLabel;
- (_UISubtitleCellContentView)initWithCoder:(id)coder;
- (_UISubtitleCellContentView)initWithConfiguration:(id)configuration;
- (_UISubtitleCellContentViewConfiguration)configuration;
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

@implementation _UISubtitleCellContentView

- (_UISubtitleCellContentView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISubtitleCellContentView.m" lineNumber:443 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  v13.receiver = self;
  v13.super_class = _UISubtitleCellContentView;
  v6 = [(UIView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52___UISubtitleCellContentView_initWithConfiguration___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v11 = v6;
    v12 = configurationCopy;
    [UIView performWithoutAnimation:v10];
  }

  return v7;
}

- (_UISubtitleCellContentView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (!v5)
  {

    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = _UISubtitleCellContentView;
  v6 = [(UIView *)&v12 initWithCoder:coderCopy];
  if (!v6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44___UISubtitleCellContentView_initWithCoder___block_invoke;
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
  v5.super_class = _UISubtitleCellContentView;
  coderCopy = coder;
  [(UIView *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = _UISubtitleCellContentView;
  v3 = [(UIView *)&v6 description];
  v4 = [v3 mutableCopy];

  if ([v4 length])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
    [v4 appendFormat:@"; configuration = %@>", self->_configuration];
  }

  return v4;
}

- (_UISubtitleCellContentViewConfiguration)configuration
{
  animatingToConfiguration = self->_animatingToConfiguration;
  if (!animatingToConfiguration)
  {
    animatingToConfiguration = self->_configuration;
  }

  v3 = [(_UISubtitleCellContentViewConfiguration *)animatingToConfiguration copy];

  return v3;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISubtitleCellContentView.m" lineNumber:496 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  animatingToConfiguration = self->_animatingToConfiguration;
  if ([(_UIContentViewEditingController *)self->_editingController isDisplayingEditedText]|| ![(_UISubtitleCellContentViewConfiguration *)self->_configuration _isEqualToConfigurationQuick:configurationCopy]|| animatingToConfiguration && ([(_UISubtitleCellContentViewConfiguration *)self->_animatingToConfiguration _isEqualToConfigurationQuick:configurationCopy]& 1) == 0)
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
        v15[2] = __47___UISubtitleCellContentView_setConfiguration___block_invoke;
        v15[3] = &unk_1E70F5DE0;
        objc_copyWeak(&v16, &location);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __47___UISubtitleCellContentView_setConfiguration___block_invoke_2;
        v13[3] = &unk_1E70F5A28;
        objc_copyWeak(&v14, &location);
        v8 = [_UIContentViewAnimationStateUpdatingLayer layerForView:self withUpdateHandler:v15 completionHandler:v13];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __47___UISubtitleCellContentView_setConfiguration___block_invoke_3;
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

      [(_UISubtitleCellContentView *)&self->super.super.super.isa _applyConfiguration:v7];
    }
  }
}

- (void)_applyConfiguration:(id *)configuration
{
  v4 = a2;
  if (configuration)
  {
    v26 = v4;
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__applyConfiguration_ object:configuration file:@"_UISubtitleCellContentView.m" lineNumber:552 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
    }

    objc_storeStrong(configuration + 55, a2);
    axesPreservingSuperviewLayoutMargins = [v26 axesPreservingSuperviewLayoutMargins];
    if ((axesPreservingSuperviewLayoutMargins & 2) != 0)
    {
      v6 = (axesPreservingSuperviewLayoutMargins << 63 >> 63) & 0xA | 5;
    }

    else
    {
      v6 = (axesPreservingSuperviewLayoutMargins << 63 >> 63) & 0xA;
    }

    [configuration setEdgesPreservingSuperviewLayoutMargins:v6];
    [v26 directionalLayoutMargins];
    [configuration setDirectionalLayoutMargins:?];
    imageView = [v26 imageView];
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

    textLabel = [v26 textLabel];
    _UIUpdateLabelUsingConfiguration(configurationCopy, configurationCopy + 57, textLabel);

    subtitleLabel = [v26 subtitleLabel];
    _UIUpdateLabelUsingConfiguration(configurationCopy, configurationCopy + 58, subtitleLabel);

    _textLabelEditingConfiguration = [v26 _textLabelEditingConfiguration];
    if (_textLabelEditingConfiguration)
    {
      v15 = configurationCopy[54];

      if (!v15)
      {
        v16 = [_UIContentViewEditingController alloc];
        textLabel2 = [configurationCopy textLabel];
        v18 = [(_UIContentViewEditingController *)v16 initWithContentView:configurationCopy editableLabel:textLabel2];
        v19 = configurationCopy[54];
        configurationCopy[54] = v18;
      }
    }

    v20 = configurationCopy[54];
    textLabel3 = [v26 textLabel];
    _textLabelEditingConfiguration2 = [v26 _textLabelEditingConfiguration];
    [v20 updateLabelProperties:textLabel3 editingConfiguration:_textLabelEditingConfiguration2];

    _textLabelEditingConfiguration3 = [v26 _textLabelEditingConfiguration];

    if (!_textLabelEditingConfiguration3)
    {
      v24 = configurationCopy[54];
      configurationCopy[54] = 0;
    }

    configurationCopy[53] = 0x7FEFFFFFFFFFFFFFLL;
    [configurationCopy invalidateIntrinsicContentSize];
    [configurationCopy setNeedsLayout];
    v4 = v26;
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

- (UILabel)subtitleLabel
{
  if ([(UIView *)self->_subtitleLabel isHidden])
  {
    subtitleLabel = 0;
  }

  else
  {
    subtitleLabel = self->_subtitleLabel;
  }

  return subtitleLabel;
}

- (BOOL)_needsDoubleUpdateConstraintsPass
{
  if ((*(&self->super._viewFlags + 6) & 0x10) != 0)
  {
    textLabel = [(_UISubtitleCellContentView *)self textLabel];
    if (!textLabel || (-[_UISubtitleCellContentView textLabel](self, "textLabel"), v2 = objc_claimAutoreleasedReturnValue(), [v2 numberOfLines] == 1))
    {
      subtitleLabel = [(_UISubtitleCellContentView *)self subtitleLabel];
      if (subtitleLabel)
      {
        v7 = subtitleLabel;
        subtitleLabel2 = [(_UISubtitleCellContentView *)self subtitleLabel];
        v3 = [subtitleLabel2 numberOfLines] != 1;

        if (!textLabel)
        {
LABEL_9:

          return v3;
        }
      }

      else
      {
        v3 = 0;
        if (!textLabel)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_9;
  }

  return 0;
}

- (void)_prepareForFirstIntrinsicContentSizeCalculation
{
  self->_preferredMaxLayoutWidth = 1.79769313e308;
  v2.receiver = self;
  v2.super_class = _UISubtitleCellContentView;
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
  v9.super_class = _UISubtitleCellContentView;
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

  [(_UISubtitleCellContentView *)self _intrinsicSizeWithinSize:fits.width, fits.height];
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

  [(_UISubtitleCellContentView *)self _intrinsicSizeWithinSize:size.width, v9];
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
    *(self + 112) = 0;
    *(self + 80) = 0u;
    *(self + 96) = 0u;
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
  *(self + 80) = v8;
  *(self + 96) = v8;
  v61 = v8;
  *(self + 112) = 0;
  traitCollection = [a2 traitCollection];
  imageView = [a2 imageView];
  imageView2 = [a2[55] imageView];
  [imageView2 maximumSize];
  v65.f64[0] = v12;
  v65.f64[1] = v13;

  v14 = 0;
  if (_UIContentViewShouldUseAccessibilityLargeTextLayout(traitCollection))
  {
    textLabel = [a2[55] textLabel];
    ShouldUseAccessibilityTextWrappingLayout = _UIContentViewShouldUseAccessibilityTextWrappingLayout(textLabel, imageView, &v65);

    if (ShouldUseAccessibilityTextWrappingLayout)
    {
      v14 = 2;
      *self = 2;
      if (!imageView)
      {
        v63 = *(self + 8);
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
  v60 = v18;
  v62 = v19;
  image = [imageView image];
  imageView3 = [a2[55] imageView];
  [imageView3 reservedLayoutSize];
  v23 = _UIContentViewImageViewLayoutHeight(image, traitCollection, v62, v22, v65.f64[1]);
  *(self + 32) = v23;

  [a2 directionalLayoutMargins];
  v26 = a4 + v24 + v25;
  v27.f64[0] = space;
  if (v23 >= v62)
  {
    v26 = a4;
  }

  v27.f64[1] = v26;
  v28.f64[0] = v60;
  v28.f64[1] = v62;
  v29 = vmaxnmq_f64(v61, vminnmq_f64(v28, vbslq_s8(vcgtzq_f64(v65), vbslq_s8(vcgtq_f64(v65, v27), v27, v65), v27)));
  v30 = v60 != v29.f64[0];
  if (v62 != v29.f64[1])
  {
    v30 = 1;
  }

  if (v60 > 0.0 && v30 && v62 > 0.0)
  {
    v29.f64[0] = v29.f64[0] / v60;
    v31 = v29.f64[1] / v62;
    if (v29.f64[0] < v29.f64[1] / v62)
    {
      v31 = v29.f64[0];
    }

    v29 = vmulq_n_f64(v28, v31);
  }

  *(self + 8) = v29;
  v63 = v29.f64[0];
  if (v17)
  {
    *(self + 40) = 0;
LABEL_26:
    [a2[55] imageToTextPadding];
    v40 = v63 + v41;
    v14 = 2;
    goto LABEL_27;
  }

  image2 = [imageView image];
  imageView4 = [a2[55] imageView];
  [imageView4 reservedLayoutSize];
  v35 = a2[55];
  if (v35)
  {
    v36 = v35[6] == 1;
  }

  else
  {
    v36 = 0;
  }

  v37 = _UIContentViewImageViewHorizontalCenteringOffset(image2, traitCollection, v36, v63, v34);
  *(self + 40) = v37;

  v38 = v63 + v37 + v37;
  *(self + 24) = v38;
  [a2[55] imageToTextPadding];
  space = space - (v38 + v39);
LABEL_24:
  v40 = 0.0;
LABEL_27:
  textLabel2 = [a2 textLabel];
  textLabel3 = [a2[55] textLabel];
  _UIContentViewUpdateLabelAttributesForAccessibilityLayout(textLabel2, textLabel3, v14, v40);

  subtitleLabel = [a2 subtitleLabel];
  subtitleLabel2 = [a2[55] subtitleLabel];
  _UIContentViewUpdateLabelAttributesForAccessibilityLayout(subtitleLabel, subtitleLabel2, v14, 0.0);

  *(self + 112) = v40;
  if (textLabel2)
  {
    [textLabel2 _intrinsicSizeWithinSize:{space, a4}];
    v48 = fmax(v7[1], fmin(v47, a4));
    *(self + 48) = fmax(*v7, fmin(v46, space));
    *(self + 56) = v48;
    *(self + 80) = *(self + 48);
  }

  if (subtitleLabel)
  {
    v49 = *(self + 88);
    [a2[55] textToSubtitlePadding];
    v51 = a4 - (v49 + v50);
    [subtitleLabel _intrinsicSizeWithinSize:{space, v51}];
    v53 = fmax(*v7, fmin(v52, space));
    v55 = fmax(v7[1], fmin(v54, v51));
    *(self + 64) = v53;
    *(self + 72) = v55;
    if (*(self + 80) >= v53)
    {
      v53 = *(self + 80);
    }

    *(self + 80) = v53;
    [a2[55] textToSubtitlePadding];
    *(self + 88) = v49 + v55 + v56;
  }

  textInputView = [a2[54] textInputView];

  if (textInputView)
  {
    if (!textLabel2 || [textLabel2 isHidden])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__computeSizesForAvailableSpace_ object:a2 file:@"_UISubtitleCellContentView.m" lineNumber:708 description:@"The text label should exist if there is a text input view"];
    }

    v58 = *(self + 56);
    *(self + 96) = space - v40;
    *(self + 104) = v58;
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self && (animatingToConfiguration = self->_animatingToConfiguration) != 0 && (configuration = self->_configuration, configuration != animatingToConfiguration))
  {
    v8 = configuration;
    [(_UISubtitleCellContentView *)&self->super.super.super.isa _applyConfiguration:?];
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
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  [(_UISubtitleCellContentView *)&v37 _computeSizesForAvailableSpace:preferredMaxLayoutWidth - v14 - v18, height - v12 - v16];
  v20 = v19 + v15 + *&v42;
  v21 = v17 + v13 + *(&v42 + 1);
  if (v37 != 2)
  {
    v22 = v20 + *(&v38 + 1);
    if (*(&v38 + 1) > 0.0 && v20 > 0.0)
    {
      [(_UISubtitleCellContentViewConfiguration *)self->_configuration imageToTextPadding];
      v22 = v22 + v23;
    }

    if (v17 + v13 + *&v39 >= v21)
    {
      v21 = v17 + v13 + *&v39;
    }

    v20 = v22;
  }

  textLabel = [(_UISubtitleCellContentView *)self textLabel];
  font = [textLabel font];
  v26 = font;
  if (font)
  {
    font2 = font;
  }

  else
  {
    textLabel2 = [(_UISubtitleCellContentViewConfiguration *)self->_configuration textLabel];
    font2 = [textLabel2 font];
  }

  v29 = self->_configuration;
  if (v29)
  {
    v30 = v29->_defaultStyle == 1;
  }

  else
  {
    v30 = 0;
  }

  [v10 minimumContentViewHeightForFont:font2 traitCollection:traitCollection isSidebarStyle:v30];
  v32 = v31;
  if (v8)
  {
    [(_UISubtitleCellContentView *)&self->super.super.super.isa _applyConfiguration:v8];
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
  v4.super_class = _UISubtitleCellContentView;
  [(UIView *)&v4 _layoutMarginsDidChangeFromOldMargins:margins.top, margins.left, margins.bottom, margins.right];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v139.receiver = self;
  v139.super_class = _UISubtitleCellContentView;
  [(UIView *)&v139 layoutSubviews];
  [(_UISubtitleCellContentView *)self _primaryTextLayoutFrame];
  v119 = v4;
  v120 = v3;
  v6 = v5;
  rect1 = v7;
  [(UIView *)self _currentScreenScale];
  v9 = v8;
  [(UIView *)self bounds];
  v122 = v11;
  v123 = v10;
  v13 = v12;
  v15 = v14;
  [(UIView *)self directionalLayoutMargins];
  v17 = v16;
  v19 = v18;
  v138 = 0.0;
  v22 = v15 - v16 - v21;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v133 = 0u;
  memset(v132, 0, sizeof(v132));
  [(_UISubtitleCellContentView *)v132 _computeSizesForAvailableSpace:v13 - v18 - v20, v22];
  imageView = [(_UISubtitleCellContentView *)self imageView];
  v24 = *&v132[0];
  v121 = v6;
  v113 = v15;
  v114 = v13;
  if (!imageView || *&v132[0] == 2)
  {
    v39 = 2;
    v124 = v123;
    v125 = v122;
  }

  else
  {
    v25 = *(&v133 + 1);
    v126 = v123;
    v127 = v122;
    v128 = v13;
    v129 = v15;
    v130 = 2;
    v131 = v19 + *(&v133 + 1);
    v26 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *(v132 + 1)];
    v30 = UIRectCenteredYInRectScale(v26, v27, v28, v29, 0.0, v17, 0.0, v22, v9);
    v34 = UIRectIntegralWithScale(v30, v31, v32, v33, v9);
    v13 = v35;
    v15 = v36;
    v124 = v34;
    v125 = v37;
    [imageView setFrame:?];
    [(_UISubtitleCellContentViewConfiguration *)self->_configuration imageToTextPadding];
    v19 = v25 + v38;
    v6 = v121;
    v39 = 8;
  }

  v140.origin.x = UIRectCenteredYInRectScale(0.0, 0.0, *&v136, *(&v136 + 1), 0.0, v17, 0.0, v22, v9);
  MinY = CGRectGetMinY(v140);
  textLabel = [(_UISubtitleCellContentView *)self textLabel];
  v42 = MinY;
  if (textLabel)
  {
    v126 = v124;
    v127 = v125;
    v116 = v13;
    v117 = v15;
    v128 = v13;
    v129 = v15;
    v130 = v39;
    v131 = v19;
    v115 = MinY;
    v43 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:MinY, *&v134];
    v47 = UIRectIntegralWithScale(v43, v44, v45, v46, v9);
    v49 = v48;
    v51 = v50;
    v53 = v52;
    [textLabel setFrame:?];
    v141.origin.x = v47;
    v141.origin.y = v49;
    v141.size.width = v51;
    v141.size.height = v53;
    MaxY = CGRectGetMaxY(v141);
    [(_UISubtitleCellContentViewConfiguration *)self->_configuration textToSubtitlePadding];
    v42 = MaxY + v55;
    if (v24)
    {
      [imageView frame];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      LineOfLabel = _UIContentViewRectForVerticalCenteringWithFirstLineOfLabel(textLabel);
      if (v24 == 2)
      {
        v68 = v67;
        v69 = v66;
        v70 = v65;
        v71 = LineOfLabel;
        [(UIView *)self bringSubviewToFront:imageView];
        v126 = v124;
        v127 = v125;
        v128 = v116;
        v129 = v117;
        v130 = v39;
        v131 = v19;
        v72 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *(v132 + 1)];
        v77 = UIRectCenteredYInRectScale(v72, v73, v74, v75, v71, v70, v69, v68, v9);
        v79 = v78;
        v81 = v80;
      }

      else
      {
        v77 = UIRectCenteredYInRectScale(v57, v59, v61, v63, LineOfLabel, v65, v66, v67, v9);
        v83 = v82;
        v79 = v84;
        v81 = v85;
        v142.origin.y = v122;
        v142.origin.x = v123;
        v142.size.height = v113;
        v142.size.width = v114;
        v86 = v17 * 0.5 + CGRectGetMinY(v142);
        if (v83 >= v86)
        {
          v76 = v83;
        }

        else
        {
          v76 = v86;
        }
      }

      [imageView setFrame:{UIRectIntegralWithScale(v77, v76, v79, v81, v9)}];
    }

    v6 = v121;
    v13 = v116;
    v15 = v117;
    MinY = v115;
  }

  if (imageView)
  {
    imageView2 = [(_UISubtitleCellContentViewConfiguration *)self->_configuration imageView];
    [imageView2 cornerRadius];
    _UIApplyCornerRadiusToView(imageView, v88);
  }

  subtitleLabel = [(_UISubtitleCellContentView *)self subtitleLabel];
  if (subtitleLabel)
  {
    v126 = v124;
    v127 = v125;
    v128 = v13;
    v129 = v15;
    v130 = v39;
    v131 = v19;
    v90 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:v42, *&v135];
    [subtitleLabel setFrame:{UIRectIntegralWithScale(v90, v91, v92, v93, v9)}];
  }

  textInputView = [(_UIContentViewEditingController *)self->_editingController textInputView];

  if (textInputView)
  {
    v126 = v124;
    v127 = v125;
    v128 = v13;
    v129 = v15;
    v130 = v39;
    v131 = v19 + v138;
    v95 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:MinY, *&v137];
    v99 = UIRectIntegralWithScale(v95, v96, v97, v98, v9);
    v100 = v6;
    v102 = v101;
    v104 = v103;
    v106 = v105;
    textInputView2 = [(_UIContentViewEditingController *)self->_editingController textInputView];
    v108 = v102;
    v6 = v100;
    [textInputView2 setFrame:{v99, v108, v104, v106}];
  }

  if (self->_primaryTextFrameDidChangeHandler)
  {
    [(_UISubtitleCellContentView *)self _primaryTextLayoutFrame];
    v144.origin.x = v109;
    v144.origin.y = v110;
    v144.size.width = v111;
    v144.size.height = v112;
    v143.size.width = v119;
    v143.origin.x = v120;
    v143.origin.y = v6;
    v143.size.height = rect1;
    if (!CGRectEqualToRect(v143, v144))
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
    v5[2] = __50___UISubtitleCellContentView_becomeFirstResponder__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    return [(_UIContentViewEditingController *)editingController makeTextInputFirstResponderWithInitialLayoutBlock:v5];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _UISubtitleCellContentView;
    return [(UIView *)&v4 becomeFirstResponder];
  }
}

- (NSLayoutRect)_primaryTextLayoutRect
{
  textLabel = [(_UISubtitleCellContentView *)self textLabel];
  _layoutRect = [textLabel _layoutRect];

  return _layoutRect;
}

- (CGRect)_primaryTextLayoutFrame
{
  textLabel = [(_UISubtitleCellContentView *)self textLabel];
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