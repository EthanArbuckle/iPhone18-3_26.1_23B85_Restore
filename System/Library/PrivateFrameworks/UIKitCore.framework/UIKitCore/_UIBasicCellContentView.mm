@interface _UIBasicCellContentView
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (BOOL)becomeFirstResponder;
- (CGRect)_primaryTextLayoutFrame;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSLayoutRect)_primaryTextLayoutRect;
- (NSString)description;
- (UIImageView)imageView;
- (UILabel)textLabel;
- (_UIBasicCellContentView)initWithCoder:(id)a3;
- (_UIBasicCellContentView)initWithConfiguration:(id)a3;
- (_UIBasicCellContentViewConfiguration)configuration;
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

@implementation _UIBasicCellContentView

- (_UIBasicCellContentView)initWithConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIBasicCellContentView.m" lineNumber:449 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
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
    v12 = v5;
    [UIView performWithoutAnimation:v10];
  }

  return v7;
}

- (_UIBasicCellContentView)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (!v5)
  {

    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = _UIBasicCellContentView;
  v6 = [(UIView *)&v12 initWithCoder:v4];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIBasicCellContentView;
  v4 = a3;
  [(UIView *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
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

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIBasicCellContentView.m" lineNumber:502 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  animatingToConfiguration = self->_animatingToConfiguration;
  if ([(_UIContentViewEditingController *)self->_editingController isDisplayingEditedText]|| ![(_UIBasicCellContentViewConfiguration *)self->_configuration _isEqualToConfigurationQuick:v5]|| animatingToConfiguration && ([(_UIBasicCellContentViewConfiguration *)self->_animatingToConfiguration _isEqualToConfigurationQuick:v5]& 1) == 0)
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

- (void)_applyConfiguration:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v28 = v4;
    if (!v4)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:sel__applyConfiguration_ object:a1 file:@"_UIBasicCellContentView.m" lineNumber:558 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
    }

    objc_storeStrong(a1 + 55, a2);
    v5 = [v28 axesPreservingSuperviewLayoutMargins];
    if ((v5 & 2) != 0)
    {
      v6 = (v5 << 63 >> 63) & 0xA | 5;
    }

    else
    {
      v6 = (v5 << 63 >> 63) & 0xA;
    }

    [a1 setEdgesPreservingSuperviewLayoutMargins:v6];
    [v28 directionalLayoutMargins];
    [a1 setDirectionalLayoutMargins:?];
    v7 = [v28 imageView];
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

    v12 = [v28 textLabel];
    v13 = v8;
    v14 = v8[57];
    if ([v12 _hasText])
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
        v15 = v8[57];
        v8[57] = v14;

        [v13 addSubview:v14];
      }

      [v12 applyToLabel:v14];
    }

    else if (v14 && ![(UIView *)v14 isHidden])
    {
      [(UIView *)v14 setHidden:1];
    }

    v16 = [v28 _textLabelEditingConfiguration];
    if (v16)
    {
      v17 = v13[54];

      if (!v17)
      {
        v18 = [_UIContentViewEditingController alloc];
        v19 = [v13 textLabel];
        v20 = [(_UIContentViewEditingController *)v18 initWithContentView:v13 editableLabel:v19];
        v21 = v13[54];
        v13[54] = v20;
      }
    }

    v22 = v13[54];
    v23 = [v28 textLabel];
    v24 = [v28 _textLabelEditingConfiguration];
    [v22 updateLabelProperties:v23 editingConfiguration:v24];

    v25 = [v28 _textLabelEditingConfiguration];

    if (!v25)
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

  v4 = [(_UIBasicCellContentView *)self textLabel];
  if (v4)
  {
    v5 = [(_UIBasicCellContentView *)self textLabel];
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
  v2.super_class = _UIBasicCellContentView;
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

  [(_UIBasicCellContentView *)self _intrinsicSizeWithinSize:a3.width, a3.height];
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

  [(_UIBasicCellContentView *)self _intrinsicSizeWithinSize:a3.width, v9];
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
    *(a1 + 80) = 0;
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
  v52 = v8;
  *(a1 + 80) = 0;
  v9 = [a2 traitCollection];
  v10 = [a2 imageView];
  v11 = [a2[55] imageView];
  [v11 maximumSize];
  v56.f64[0] = v12;
  v56.f64[1] = v13;

  v14 = 0;
  if (_UIContentViewShouldUseAccessibilityLargeTextLayout(v9))
  {
    v15 = [a2[55] textLabel];
    ShouldUseAccessibilityTextWrappingLayout = _UIContentViewShouldUseAccessibilityTextWrappingLayout(v15, v10, &v56);

    if (ShouldUseAccessibilityTextWrappingLayout)
    {
      v14 = 2;
      *a1 = 2;
      if (!v10)
      {
        v54 = *(a1 + 8);
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
  v51 = v18;
  v53 = v19;
  v20 = [v10 image];
  v21 = [a2[55] imageView];
  [v21 reservedLayoutSize];
  v23 = _UIContentViewImageViewLayoutHeight(v20, v9, v53, v22, v56.f64[1]);
  *(a1 + 32) = v23;

  [a2 directionalLayoutMargins];
  v26 = a4 + v24 + v25;
  v27.f64[0] = a3;
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

  *(a1 + 8) = v29;
  v54 = v29.f64[0];
  if (v17)
  {
    *(a1 + 40) = 0;
LABEL_26:
    [a2[55] imageToTextPadding];
    v40 = v54 + v41;
    v14 = 2;
    goto LABEL_27;
  }

  v32 = [v10 image];
  v33 = [a2[55] imageView];
  [v33 reservedLayoutSize];
  v35 = a2[55];
  if (v35)
  {
    v36 = (v35[5] - 1) < 2;
  }

  else
  {
    v36 = 0;
  }

  v37 = _UIContentViewImageViewHorizontalCenteringOffset(v32, v9, v36, v54, v34);
  *(a1 + 40) = v37;

  v38 = v54 + v37 + v37;
  *(a1 + 24) = v38;
  [a2[55] imageToTextPadding];
  a3 = a3 - (v38 + v39);
LABEL_24:
  v40 = 0.0;
LABEL_27:
  v42 = [a2 textLabel];
  v43 = [a2[55] textLabel];
  _UIContentViewUpdateLabelAttributesForAccessibilityLayout(v42, v43, v14, v40);

  *(a1 + 80) = v40;
  if (v42)
  {
    [v42 _intrinsicSizeWithinSize:{a3, a4}];
    v46 = fmax(v7[1], fmin(v45, a4));
    *(a1 + 48) = fmax(*v7, fmin(v44, a3));
    *(a1 + 56) = v46;
  }

  v47 = [a2[54] textInputView];

  if (v47)
  {
    v48 = [a2 textLabel];

    if (!v48)
    {
      v50 = [MEMORY[0x1E696AAA8] currentHandler];
      [v50 handleFailureInMethod:sel__computeSizesForAvailableSpace_ object:a2 file:@"_UIBasicCellContentView.m" lineNumber:694 description:@"The text label should exist if there is a text input view"];
    }

    v49 = *(a1 + 56);
    *(a1 + 64) = a3 - v40;
    *(a1 + 72) = v49;
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self && (animatingToConfiguration = self->_animatingToConfiguration) != 0 && (configuration = self->_configuration, configuration != animatingToConfiguration))
  {
    v8 = configuration;
    [(_UIBasicCellContentView *)&self->super.super.super.isa _applyConfiguration:?];
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

  v24 = [(_UIBasicCellContentView *)self textLabel];
  v25 = [v24 font];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v28 = [(_UIBasicCellContentViewConfiguration *)self->_configuration textLabel];
    v27 = [v28 font];
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

  [v10 minimumContentViewHeightForFont:v27 traitCollection:v9 isSidebarStyle:v30];
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

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = _UIBasicCellContentView;
  [(UIView *)&v4 _layoutMarginsDidChangeFromOldMargins:a3.top, a3.left, a3.bottom, a3.right];
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
  v23 = [(_UIBasicCellContentView *)self imageView];
  v24 = *&v122[0];
  v25 = 2;
  v110 = v12;
  v111 = v10;
  v26 = v16;
  if (v23)
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
      [v23 setFrame:?];
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

  v41 = [(_UIBasicCellContentView *)self textLabel];
  if (v41)
  {
    v116 = v113;
    v117 = v114;
    v118 = v115;
    v119 = v26;
    v120 = v25;
    v121 = v20;
    v42 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *&v124];
    v46 = UIRectCenteredYInRectScale(v42, v43, v44, v45, 0.0, v18, 0.0, v112, v8);
    [v41 setFrame:{UIRectIntegralWithScale(v46, v47, v48, v49, v8)}];
    if (v24)
    {
      v104 = v26;
      v105 = v18;
      [v23 frame];
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      LineOfLabel = _UIContentViewRectForVerticalCenteringWithFirstLineOfLabel(v41);
      if (v24 == 2)
      {
        v62 = v61;
        v63 = v60;
        v64 = v59;
        v65 = LineOfLabel;
        [(UIView *)self bringSubviewToFront:v23];
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

      [v23 setFrame:{UIRectIntegralWithScale(v71, v70, v73, v75, v8)}];
      v26 = v104;
      v18 = v105;
    }
  }

  if (v23)
  {
    v81 = [(_UIBasicCellContentViewConfiguration *)self->_configuration imageView];
    [v81 cornerRadius];
    _UIApplyCornerRadiusToView(v23, v82);
  }

  v83 = [(_UIContentViewEditingController *)self->_editingController textInputView];

  if (v83)
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
    v99 = [(_UIContentViewEditingController *)self->_editingController textInputView];
    [v99 setFrame:{v92, v94, v96, v98}];
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
  v2 = [(_UIBasicCellContentView *)self textLabel];
  v3 = [v2 _layoutRect];

  return v3;
}

- (CGRect)_primaryTextLayoutFrame
{
  v2 = [(_UIBasicCellContentView *)self textLabel];
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