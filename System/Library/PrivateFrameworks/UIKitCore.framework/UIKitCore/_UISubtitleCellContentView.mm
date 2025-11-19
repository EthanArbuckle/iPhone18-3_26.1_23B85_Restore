@interface _UISubtitleCellContentView
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (BOOL)becomeFirstResponder;
- (CGRect)_primaryTextLayoutFrame;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSLayoutRect)_primaryTextLayoutRect;
- (NSString)description;
- (UIImageView)imageView;
- (UILabel)subtitleLabel;
- (UILabel)textLabel;
- (_UISubtitleCellContentView)initWithCoder:(id)a3;
- (_UISubtitleCellContentView)initWithConfiguration:(id)a3;
- (_UISubtitleCellContentViewConfiguration)configuration;
- (double)_preferredMaxLayoutWidth;
- (void)_applyConfiguration:(id *)a1;
- (void)_computeSizesForAvailableSpace:(double)a3;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setConfiguration:(id)a3;
@end

@implementation _UISubtitleCellContentView

- (_UISubtitleCellContentView)initWithConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UISubtitleCellContentView.m" lineNumber:443 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
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
    v12 = v5;
    [UIView performWithoutAnimation:v10];
  }

  return v7;
}

- (_UISubtitleCellContentView)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (!v5)
  {

    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = _UISubtitleCellContentView;
  v6 = [(UIView *)&v12 initWithCoder:v4];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UISubtitleCellContentView;
  v4 = a3;
  [(UIView *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
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

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UISubtitleCellContentView.m" lineNumber:496 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  animatingToConfiguration = self->_animatingToConfiguration;
  if ([(_UIContentViewEditingController *)self->_editingController isDisplayingEditedText]|| ![(_UISubtitleCellContentViewConfiguration *)self->_configuration _isEqualToConfigurationQuick:v5]|| animatingToConfiguration && ([(_UISubtitleCellContentViewConfiguration *)self->_animatingToConfiguration _isEqualToConfigurationQuick:v5]& 1) == 0)
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

- (void)_applyConfiguration:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v26 = v4;
    if (!v4)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:sel__applyConfiguration_ object:a1 file:@"_UISubtitleCellContentView.m" lineNumber:552 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
    }

    objc_storeStrong(a1 + 55, a2);
    v5 = [v26 axesPreservingSuperviewLayoutMargins];
    if ((v5 & 2) != 0)
    {
      v6 = (v5 << 63 >> 63) & 0xA | 5;
    }

    else
    {
      v6 = (v5 << 63 >> 63) & 0xA;
    }

    [a1 setEdgesPreservingSuperviewLayoutMargins:v6];
    [v26 directionalLayoutMargins];
    [a1 setDirectionalLayoutMargins:?];
    v7 = [v26 imageView];
    v8 = a1;
    v9 = a1[56];
    v10 = v9;
    if (v7 && (v7[2] || v7[6]))
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
        v11 = a1[56];
        a1[56] = v10;

        [v8 addSubview:v10];
      }

      [v7 applyToImageView:v10];
    }

    else if (v9 && ![(UIView *)v9 isHidden])
    {
      [(UIImageView *)v10 setHidden:1];
    }

    v12 = [v26 textLabel];
    _UIUpdateLabelUsingConfiguration(v8, v8 + 57, v12);

    v13 = [v26 subtitleLabel];
    _UIUpdateLabelUsingConfiguration(v8, v8 + 58, v13);

    v14 = [v26 _textLabelEditingConfiguration];
    if (v14)
    {
      v15 = v8[54];

      if (!v15)
      {
        v16 = [_UIContentViewEditingController alloc];
        v17 = [v8 textLabel];
        v18 = [(_UIContentViewEditingController *)v16 initWithContentView:v8 editableLabel:v17];
        v19 = v8[54];
        v8[54] = v18;
      }
    }

    v20 = v8[54];
    v21 = [v26 textLabel];
    v22 = [v26 _textLabelEditingConfiguration];
    [v20 updateLabelProperties:v21 editingConfiguration:v22];

    v23 = [v26 _textLabelEditingConfiguration];

    if (!v23)
    {
      v24 = v8[54];
      v8[54] = 0;
    }

    v8[53] = 0x7FEFFFFFFFFFFFFFLL;
    [v8 invalidateIntrinsicContentSize];
    [v8 setNeedsLayout];
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
    v5 = [(_UISubtitleCellContentView *)self textLabel];
    if (!v5 || (-[_UISubtitleCellContentView textLabel](self, "textLabel"), v2 = objc_claimAutoreleasedReturnValue(), [v2 numberOfLines] == 1))
    {
      v6 = [(_UISubtitleCellContentView *)self subtitleLabel];
      if (v6)
      {
        v7 = v6;
        v8 = [(_UISubtitleCellContentView *)self subtitleLabel];
        v3 = [v8 numberOfLines] != 1;

        if (!v5)
        {
LABEL_9:

          return v3;
        }
      }

      else
      {
        v3 = 0;
        if (!v5)
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

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

  [(_UISubtitleCellContentView *)self _intrinsicSizeWithinSize:a3.width, a3.height];
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

  [(_UISubtitleCellContentView *)self _intrinsicSizeWithinSize:a3.width, v9];
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

- (void)_computeSizesForAvailableSpace:(double)a3
{
  if (!a2)
  {
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  *a1 = 0;
  v7 = MEMORY[0x1E695F060];
  v8 = *MEMORY[0x1E695F060];
  *(a1 + 8) = *MEMORY[0x1E695F060];
  *(a1 + 24) = v8;
  *(a1 + 40) = 0;
  *(a1 + 48) = v8;
  *(a1 + 64) = v8;
  *(a1 + 80) = v8;
  *(a1 + 96) = v8;
  v61 = v8;
  *(a1 + 112) = 0;
  v9 = [a2 traitCollection];
  v10 = [a2 imageView];
  v11 = [a2[55] imageView];
  [v11 maximumSize];
  v65.f64[0] = v12;
  v65.f64[1] = v13;

  v14 = 0;
  if (_UIContentViewShouldUseAccessibilityLargeTextLayout(v9))
  {
    v15 = [a2[55] textLabel];
    ShouldUseAccessibilityTextWrappingLayout = _UIContentViewShouldUseAccessibilityTextWrappingLayout(v15, v10, &v65);

    if (ShouldUseAccessibilityTextWrappingLayout)
    {
      v14 = 2;
      *a1 = 2;
      if (!v10)
      {
        v63 = *(a1 + 8);
        goto LABEL_26;
      }

      v17 = 1;
      goto LABEL_9;
    }

    v14 = 1;
    *a1 = 1;
  }

  if (!v10)
  {
    goto LABEL_24;
  }

  v17 = 0;
LABEL_9:
  [v10 _intrinsicSizeWithinSize:{a3, a4}];
  v60 = v18;
  v62 = v19;
  v20 = [v10 image];
  v21 = [a2[55] imageView];
  [v21 reservedLayoutSize];
  v23 = _UIContentViewImageViewLayoutHeight(v20, v9, v62, v22, v65.f64[1]);
  *(a1 + 32) = v23;

  [a2 directionalLayoutMargins];
  v26 = a4 + v24 + v25;
  v27.f64[0] = a3;
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

  *(a1 + 8) = v29;
  v63 = v29.f64[0];
  if (v17)
  {
    *(a1 + 40) = 0;
LABEL_26:
    [a2[55] imageToTextPadding];
    v40 = v63 + v41;
    v14 = 2;
    goto LABEL_27;
  }

  v32 = [v10 image];
  v33 = [a2[55] imageView];
  [v33 reservedLayoutSize];
  v35 = a2[55];
  if (v35)
  {
    v36 = v35[6] == 1;
  }

  else
  {
    v36 = 0;
  }

  v37 = _UIContentViewImageViewHorizontalCenteringOffset(v32, v9, v36, v63, v34);
  *(a1 + 40) = v37;

  v38 = v63 + v37 + v37;
  *(a1 + 24) = v38;
  [a2[55] imageToTextPadding];
  a3 = a3 - (v38 + v39);
LABEL_24:
  v40 = 0.0;
LABEL_27:
  v42 = [a2 textLabel];
  v43 = [a2[55] textLabel];
  _UIContentViewUpdateLabelAttributesForAccessibilityLayout(v42, v43, v14, v40);

  v44 = [a2 subtitleLabel];
  v45 = [a2[55] subtitleLabel];
  _UIContentViewUpdateLabelAttributesForAccessibilityLayout(v44, v45, v14, 0.0);

  *(a1 + 112) = v40;
  if (v42)
  {
    [v42 _intrinsicSizeWithinSize:{a3, a4}];
    v48 = fmax(v7[1], fmin(v47, a4));
    *(a1 + 48) = fmax(*v7, fmin(v46, a3));
    *(a1 + 56) = v48;
    *(a1 + 80) = *(a1 + 48);
  }

  if (v44)
  {
    v49 = *(a1 + 88);
    [a2[55] textToSubtitlePadding];
    v51 = a4 - (v49 + v50);
    [v44 _intrinsicSizeWithinSize:{a3, v51}];
    v53 = fmax(*v7, fmin(v52, a3));
    v55 = fmax(v7[1], fmin(v54, v51));
    *(a1 + 64) = v53;
    *(a1 + 72) = v55;
    if (*(a1 + 80) >= v53)
    {
      v53 = *(a1 + 80);
    }

    *(a1 + 80) = v53;
    [a2[55] textToSubtitlePadding];
    *(a1 + 88) = v49 + v55 + v56;
  }

  v57 = [a2[54] textInputView];

  if (v57)
  {
    if (!v42 || [v42 isHidden])
    {
      v59 = [MEMORY[0x1E696AAA8] currentHandler];
      [v59 handleFailureInMethod:sel__computeSizesForAvailableSpace_ object:a2 file:@"_UISubtitleCellContentView.m" lineNumber:708 description:@"The text label should exist if there is a text input view"];
    }

    v58 = *(a1 + 56);
    *(a1 + 96) = a3 - v40;
    *(a1 + 104) = v58;
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self && (animatingToConfiguration = self->_animatingToConfiguration) != 0 && (configuration = self->_configuration, configuration != animatingToConfiguration))
  {
    v8 = configuration;
    [(_UISubtitleCellContentView *)&self->super.super.super.isa _applyConfiguration:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UIView *)self traitCollection];
  v10 = _UITableConstantsForTraitCollection(v9);
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

  v24 = [(_UISubtitleCellContentView *)self textLabel];
  v25 = [v24 font];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v28 = [(_UISubtitleCellContentViewConfiguration *)self->_configuration textLabel];
    v27 = [v28 font];
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

  [v10 minimumContentViewHeightForFont:v27 traitCollection:v9 isSidebarStyle:v30];
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

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = _UISubtitleCellContentView;
  [(UIView *)&v4 _layoutMarginsDidChangeFromOldMargins:a3.top, a3.left, a3.bottom, a3.right];
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
  v23 = [(_UISubtitleCellContentView *)self imageView];
  v24 = *&v132[0];
  v121 = v6;
  v113 = v15;
  v114 = v13;
  if (!v23 || *&v132[0] == 2)
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
    [v23 setFrame:?];
    [(_UISubtitleCellContentViewConfiguration *)self->_configuration imageToTextPadding];
    v19 = v25 + v38;
    v6 = v121;
    v39 = 8;
  }

  v140.origin.x = UIRectCenteredYInRectScale(0.0, 0.0, *&v136, *(&v136 + 1), 0.0, v17, 0.0, v22, v9);
  MinY = CGRectGetMinY(v140);
  v41 = [(_UISubtitleCellContentView *)self textLabel];
  v42 = MinY;
  if (v41)
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
    [v41 setFrame:?];
    v141.origin.x = v47;
    v141.origin.y = v49;
    v141.size.width = v51;
    v141.size.height = v53;
    MaxY = CGRectGetMaxY(v141);
    [(_UISubtitleCellContentViewConfiguration *)self->_configuration textToSubtitlePadding];
    v42 = MaxY + v55;
    if (v24)
    {
      [v23 frame];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      LineOfLabel = _UIContentViewRectForVerticalCenteringWithFirstLineOfLabel(v41);
      if (v24 == 2)
      {
        v68 = v67;
        v69 = v66;
        v70 = v65;
        v71 = LineOfLabel;
        [(UIView *)self bringSubviewToFront:v23];
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

      [v23 setFrame:{UIRectIntegralWithScale(v77, v76, v79, v81, v9)}];
    }

    v6 = v121;
    v13 = v116;
    v15 = v117;
    MinY = v115;
  }

  if (v23)
  {
    v87 = [(_UISubtitleCellContentViewConfiguration *)self->_configuration imageView];
    [v87 cornerRadius];
    _UIApplyCornerRadiusToView(v23, v88);
  }

  v89 = [(_UISubtitleCellContentView *)self subtitleLabel];
  if (v89)
  {
    v126 = v124;
    v127 = v125;
    v128 = v13;
    v129 = v15;
    v130 = v39;
    v131 = v19;
    v90 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:v42, *&v135];
    [v89 setFrame:{UIRectIntegralWithScale(v90, v91, v92, v93, v9)}];
  }

  v94 = [(_UIContentViewEditingController *)self->_editingController textInputView];

  if (v94)
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
    v107 = [(_UIContentViewEditingController *)self->_editingController textInputView];
    v108 = v102;
    v6 = v100;
    [v107 setFrame:{v99, v108, v104, v106}];
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
  v2 = [(_UISubtitleCellContentView *)self textLabel];
  v3 = [v2 _layoutRect];

  return v3;
}

- (CGRect)_primaryTextLayoutFrame
{
  v2 = [(_UISubtitleCellContentView *)self textLabel];
  v3 = v2;
  if (v2)
  {
    [v2 frame];
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