@interface _UIValueCellContentView
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (CGRect)_primaryTextLayoutFrame;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSLayoutRect)_primaryTextLayoutRect;
- (NSString)description;
- (UIImageView)imageView;
- (UILabel)textLabel;
- (UILabel)valueLabel;
- (_UIValueCellContentView)initWithCoder:(id)a3;
- (_UIValueCellContentView)initWithConfiguration:(id)a3;
- (_UIValueCellContentViewConfiguration)configuration;
- (double)_intrinsicSizeForLabel:(BOOL *)a3 inAvailableSpace:(double)a4 outRequiresMultipleLines:(double)a5;
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

@implementation _UIValueCellContentView

- (_UIValueCellContentView)initWithConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIValueCellContentView.m" lineNumber:439 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  v13.receiver = self;
  v13.super_class = _UIValueCellContentView;
  v6 = [(UIView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49___UIValueCellContentView_initWithConfiguration___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v11 = v6;
    v12 = v5;
    [UIView performWithoutAnimation:v10];
  }

  return v7;
}

- (_UIValueCellContentView)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (!v5)
  {

    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = _UIValueCellContentView;
  v6 = [(UIView *)&v12 initWithCoder:v4];
  if (!v6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41___UIValueCellContentView_initWithCoder___block_invoke;
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
  v5.super_class = _UIValueCellContentView;
  v4 = a3;
  [(UIView *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = _UIValueCellContentView;
  v3 = [(UIView *)&v6 description];
  v4 = [v3 mutableCopy];

  if ([v4 length])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
    [v4 appendFormat:@"; configuration = %@>", self->_configuration];
  }

  return v4;
}

- (_UIValueCellContentViewConfiguration)configuration
{
  animatingToConfiguration = self->_animatingToConfiguration;
  if (!animatingToConfiguration)
  {
    animatingToConfiguration = self->_configuration;
  }

  v3 = [(_UIValueCellContentViewConfiguration *)animatingToConfiguration copy];

  return v3;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIValueCellContentView.m" lineNumber:492 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  animatingToConfiguration = self->_animatingToConfiguration;
  if (![(_UIValueCellContentViewConfiguration *)self->_configuration _isEqualToConfigurationQuick:v5]|| animatingToConfiguration && ([(_UIValueCellContentViewConfiguration *)self->_animatingToConfiguration _isEqualToConfigurationQuick:v5]& 1) == 0)
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
        v15[2] = __44___UIValueCellContentView_setConfiguration___block_invoke;
        v15[3] = &unk_1E70F5DE0;
        objc_copyWeak(&v16, &location);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __44___UIValueCellContentView_setConfiguration___block_invoke_2;
        v13[3] = &unk_1E70F5A28;
        objc_copyWeak(&v14, &location);
        v8 = [_UIContentViewAnimationStateUpdatingLayer layerForView:self withUpdateHandler:v15 completionHandler:v13];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __44___UIValueCellContentView_setConfiguration___block_invoke_3;
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

      [(_UIValueCellContentView *)&self->super.super.super.isa _applyConfiguration:v7];
    }
  }
}

- (void)_applyConfiguration:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v15 = v4;
    if (!v4)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:sel__applyConfiguration_ object:a1 file:@"_UIValueCellContentView.m" lineNumber:548 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
    }

    objc_storeStrong(a1 + 54, a2);
    v5 = [v15 axesPreservingSuperviewLayoutMargins];
    if ((v5 & 2) != 0)
    {
      v6 = (v5 << 63 >> 63) & 0xA | 5;
    }

    else
    {
      v6 = (v5 << 63 >> 63) & 0xA;
    }

    [a1 setEdgesPreservingSuperviewLayoutMargins:v6];
    [v15 directionalLayoutMargins];
    [a1 setDirectionalLayoutMargins:?];
    v7 = [v15 imageView];
    v8 = a1;
    v9 = a1[55];
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
        v11 = a1[55];
        a1[55] = v10;

        [v8 addSubview:v10];
      }

      [v7 applyToImageView:v10];
    }

    else if (v9 && ![(UIView *)v9 isHidden])
    {
      [(UIImageView *)v10 setHidden:1];
    }

    v12 = [v15 textLabel];
    _UIUpdateLabelUsingConfiguration(v8, v8 + 56, v12);

    v13 = [v15 valueLabel];
    _UIUpdateLabelUsingConfiguration(v8, v8 + 57, v13);

    v8[53] = 0x7FEFFFFFFFFFFFFFLL;
    [v8 invalidateIntrinsicContentSize];
    [v8 setNeedsLayout];
    v4 = v15;
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

- (UILabel)valueLabel
{
  if ([(UIView *)self->_valueLabel isHidden])
  {
    valueLabel = 0;
  }

  else
  {
    valueLabel = self->_valueLabel;
  }

  return valueLabel;
}

- (BOOL)_needsDoubleUpdateConstraintsPass
{
  result = 0;
  if ((*(&self->super._viewFlags + 6) & 0x10) != 0)
  {
    v4 = [(_UIValueCellContentView *)self textLabel];
    if (v4)
    {
      v5 = v4;
      v6 = [(_UIValueCellContentView *)self valueLabel];

      if (v6)
      {
        return 1;
      }
    }

    v7 = [(_UIValueCellContentView *)self textLabel];
    if (v7)
    {
      v8 = v7;
      v9 = [(_UIValueCellContentView *)self textLabel];
      v10 = [v9 numberOfLines];

      if (v10 != 1)
      {
        return 1;
      }
    }

    v11 = [(_UIValueCellContentView *)self valueLabel];
    if (v11)
    {
      v12 = v11;
      v13 = [(_UIValueCellContentView *)self valueLabel];
      v14 = [v13 numberOfLines];

      if (v14 != 1)
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)_prepareForFirstIntrinsicContentSizeCalculation
{
  self->_preferredMaxLayoutWidth = 1.79769313e308;
  v2.receiver = self;
  v2.super_class = _UIValueCellContentView;
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
  v9.super_class = _UIValueCellContentView;
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

  [(_UIValueCellContentView *)self _intrinsicSizeWithinSize:a3.width, a3.height];
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

  [(_UIValueCellContentView *)self _intrinsicSizeWithinSize:a3.width, v9];
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

- (double)_intrinsicSizeForLabel:(BOOL *)a3 inAvailableSpace:(double)a4 outRequiresMultipleLines:(double)a5
{
  v9 = a2;
  v10 = [v9 numberOfLines];
  [v9 bounds];
  if (a3)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __92___UIValueCellContentView__intrinsicSizeForLabel_inAvailableSpace_outRequiresMultipleLines___block_invoke;
    v37[3] = &unk_1E70F38C0;
    v39 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v27 = v14;
    v18 = v9;
    v38 = v18;
    v40 = a4;
    v41 = a5;
    [UIView performWithoutAnimation:v37];

    [v18 _intrinsicSizeWithinSize:{a4, a5}];
    v20 = v19;
    *a3 = [v18 _measuredNumberOfLines] > 1;
    v21 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __92___UIValueCellContentView__intrinsicSizeForLabel_inAvailableSpace_outRequiresMultipleLines___block_invoke_2;
    v28[3] = &unk_1E7103308;
    v22 = v18;
    v30 = a1;
    v31 = v10;
    v36 = v21;
    v29 = v22;
    v32 = v15;
    v33 = v16;
    v34 = v17;
    v35 = v27;
    [UIView performWithoutAnimation:v28];
    if (v10 == 1)
    {
      [v22 _intrinsicSizeWithinSize:{a4, a5}];
      v20 = v23;
    }
  }

  else
  {
    [v9 _intrinsicSizeWithinSize:{a4, a5}];
    v20 = v24;
  }

  v25 = fmax(*MEMORY[0x1E695F060], fmin(v20, a4));

  return v25;
}

- (void)_computeSizesForAvailableSpace:(double)a3
{
  if (a2)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0;
    v7 = MEMORY[0x1E695F060];
    v8 = *MEMORY[0x1E695F060];
    *(a1 + 8) = *MEMORY[0x1E695F060];
    *(a1 + 24) = v8;
    *(a1 + 56) = v8;
    *(a1 + 72) = v8;
    v65 = v8;
    *(a1 + 88) = v8;
    v9 = [a2 traitCollection];
    v10 = [a2 imageView];
    v11 = [a2[54] imageView];
    [v11 maximumSize];
    v70.f64[0] = v12;
    v70.f64[1] = v13;

    v14 = 0;
    if (_UIContentViewShouldUseAccessibilityLargeTextLayout(v9))
    {
      v15 = [a2[54] textLabel];
      ShouldUseAccessibilityTextWrappingLayout = _UIContentViewShouldUseAccessibilityTextWrappingLayout(v15, v10, &v70);

      if (ShouldUseAccessibilityTextWrappingLayout)
      {
        v14 = 2;
        *a1 = 2;
        if (!v10)
        {
          v67 = *(a1 + 8);
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
    v64 = v18;
    v66 = v19;
    v20 = [v10 image];
    v21 = [a2[54] imageView];
    [v21 reservedLayoutSize];
    v23 = _UIContentViewImageViewLayoutHeight(v20, v9, v66, v22, v70.f64[1]);
    *(a1 + 32) = v23;

    [a2 directionalLayoutMargins];
    v26 = a4 + v24 + v25;
    v27.f64[0] = a3;
    if (v23 >= v66)
    {
      v26 = a4;
    }

    v27.f64[1] = v26;
    v28.f64[0] = v64;
    v28.f64[1] = v66;
    v29 = vmaxnmq_f64(v65, vminnmq_f64(v28, vbslq_s8(vcgtzq_f64(v70), vbslq_s8(vcgtq_f64(v70, v27), v27, v70), v27)));
    v30 = v64 != v29.f64[0];
    if (v66 != v29.f64[1])
    {
      v30 = 1;
    }

    if (v64 > 0.0 && v30 && v66 > 0.0)
    {
      v29.f64[0] = v29.f64[0] / v64;
      v31 = v29.f64[1] / v66;
      if (v29.f64[0] < v29.f64[1] / v66)
      {
        v31 = v29.f64[0];
      }

      v29 = vmulq_n_f64(v28, v31);
    }

    *(a1 + 8) = v29;
    v67 = v29.f64[0];
    if (v17)
    {
      *(a1 + 40) = 0;
LABEL_26:
      [a2[54] imageToTextPadding];
      v40 = v67 + v41;
      v14 = 2;
LABEL_27:
      v42 = [a2 textLabel];
      v43 = [a2[54] textLabel];
      _UIContentViewUpdateLabelAttributesForAccessibilityLayout(v42, v43, v14, v40);

      v44 = [a2 valueLabel];
      v45 = [a2[54] valueLabel];
      _UIContentViewUpdateLabelAttributesForAccessibilityLayout(v44, v45, v14, 0.0);

      if (v42)
      {
        v69 = 0;
        v47 = [(_UIValueCellContentView *)a2 _intrinsicSizeForLabel:v42 inAvailableSpace:&v69 outRequiresMultipleLines:a3, a4];
        *(a1 + 56) = v47;
        *(a1 + 64) = v46;
        *(a1 + 88) = *(a1 + 56);
        v48 = v14 != 0 || v69;
        *(a1 + 48) = v48;
        if (v44)
        {
          if (v48)
          {
LABEL_44:
            v58 = a4 - v46;
            [a2[54] textToValuePadding];
            v60 = [(_UIValueCellContentView *)a2 _intrinsicSizeForLabel:v44 inAvailableSpace:0 outRequiresMultipleLines:a3, v58 - v59];
            v62 = v61;
            *(a1 + 72) = v60;
            *(a1 + 80) = v61;
            if (*(a1 + 88) >= v60)
            {
              v60 = *(a1 + 88);
            }

            *(a1 + 88) = v60;
            [a2[54] textToValuePadding];
            *(a1 + 96) = *(a1 + 96) + v62 + v63;
            goto LABEL_47;
          }

LABEL_33:
          [a2[54] textToValuePadding];
          v50 = a3 - v47 - v49;
          if (v50 >= 0.0)
          {
            v69 = 0;
            *(a1 + 72) = [(_UIValueCellContentView *)a2 _intrinsicSizeForLabel:v44 inAvailableSpace:&v69 outRequiresMultipleLines:v50, a4];
            *(a1 + 80) = v55;
            v46 = *(a1 + 64);
            v56 = v47 != *v7;
            if (v46 != v7[1])
            {
              v56 = 1;
            }

            v57 = v56 && v69;
            *(a1 + 48) = v57;
            if (v57 == 1)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v46 = *(a1 + 64);
            v51 = v47 != *v7;
            if (v46 != v7[1])
            {
              v51 = 1;
            }

            *(a1 + 48) = v51;
            if (v51)
            {
              goto LABEL_44;
            }
          }

          [a2[54] textToValuePadding];
          v53 = *(a1 + 88) + v52 + *(a1 + 72);
          if (*(a1 + 96) >= *(a1 + 80))
          {
            v54 = *(a1 + 96);
          }

          else
          {
            v54 = *(a1 + 80);
          }

          *(a1 + 88) = v53;
          *(a1 + 96) = v54;
        }
      }

      else if (v44)
      {
        v47 = *(a1 + 56);
        goto LABEL_33;
      }

LABEL_47:

      return;
    }

    v32 = [v10 image];
    v33 = [a2[54] imageView];
    [v33 reservedLayoutSize];
    v35 = a2[54];
    if (v35)
    {
      v36 = v35[4] == 1;
    }

    else
    {
      v36 = 0;
    }

    v37 = _UIContentViewImageViewHorizontalCenteringOffset(v32, v9, v36, v67, v34);
    *(a1 + 40) = v37;

    v38 = v67 + v37 + v37;
    *(a1 + 24) = v38;
    [a2[54] imageToTextPadding];
    a3 = a3 - (v38 + v39);
LABEL_24:
    v40 = 0.0;
    goto LABEL_27;
  }

  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self && (animatingToConfiguration = self->_animatingToConfiguration) != 0 && (configuration = self->_configuration, configuration != animatingToConfiguration))
  {
    v8 = configuration;
    [(_UIValueCellContentView *)&self->super.super.super.isa _applyConfiguration:?];
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
  v43 = 0.0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  [(_UIValueCellContentView *)&v37 _computeSizesForAvailableSpace:preferredMaxLayoutWidth - v14 - v18, height - v12 - v16];
  v20 = v19 + v15 + *(&v42 + 1);
  v21 = v17 + v13 + v43;
  if (v37 != 2)
  {
    v22 = v20 + *(&v38 + 1);
    if (*(&v38 + 1) > 0.0 && v20 > 0.0)
    {
      [(_UIValueCellContentViewConfiguration *)self->_configuration imageToTextPadding];
      v22 = v22 + v23;
    }

    if (v17 + v13 + *&v39 >= v21)
    {
      v21 = v17 + v13 + *&v39;
    }

    v20 = v22;
  }

  v24 = [(_UIValueCellContentView *)self textLabel];
  v25 = [v24 font];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v28 = [(_UIValueCellContentViewConfiguration *)self->_configuration textLabel];
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
    [(_UIValueCellContentView *)&self->super.super.super.isa _applyConfiguration:v8];
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
  v4.super_class = _UIValueCellContentView;
  [(UIView *)&v4 _layoutMarginsDidChangeFromOldMargins:a3.top, a3.left, a3.bottom, a3.right];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v147.receiver = self;
  v147.super_class = _UIValueCellContentView;
  [(UIView *)&v147 layoutSubviews];
  [(_UIValueCellContentView *)self _primaryTextLayoutFrame];
  v4 = v3;
  v124 = v6;
  v125 = v5;
  rect1 = v7;
  [(UIView *)self _currentScreenScale];
  v9 = v8;
  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIView *)self directionalLayoutMargins];
  v19 = v18;
  v129 = v17;
  v130 = v15;
  v128 = v20;
  v22 = v17 - v20 - v21;
  v146 = 0.0;
  v144 = 0u;
  v145 = 0u;
  v120 = v23;
  v142 = 0u;
  v143 = 0u;
  memset(v141, 0, sizeof(v141));
  [(_UIValueCellContentView *)v141 _computeSizesForAvailableSpace:v15 - v18 - v23, v22];
  v24 = [(_UIValueCellContentView *)self imageView];
  v25 = *&v141[0];
  v121 = v13;
  v122 = v11;
  if (!v24 || *&v141[0] == 2)
  {
    v40 = 2;
    v133 = v15;
    v134 = v17;
    v131 = v11;
    v132 = v13;
    v28 = v128;
  }

  else
  {
    v26 = *(&v142 + 1);
    v135 = v11;
    v136 = v13;
    v137 = v15;
    v138 = v129;
    v139 = 2;
    v140 = v19 + *(&v142 + 1);
    v27 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *(v141 + 1)];
    v28 = v128;
    v32 = UIRectCenteredYInRectScale(v27, v29, v30, v31, 0.0, v128, 0.0, v22, v9);
    v131 = UIRectIntegralWithScale(v32, v33, v34, v35, v9);
    v132 = v36;
    v133 = v37;
    v134 = v38;
    [v24 setFrame:?];
    [(_UIValueCellContentViewConfiguration *)self->_configuration imageToTextPadding];
    v19 = v26 + v39;
    v40 = 8;
  }

  v148.origin.x = UIRectCenteredYInRectScale(0.0, 0.0, *(&v145 + 1), v146, 0.0, v28, 0.0, v22, v9);
  x = v148.origin.x;
  y = v148.origin.y;
  width = v148.size.width;
  height = v148.size.height;
  MinY = CGRectGetMinY(v148);
  v46 = [(_UIValueCellContentView *)self textLabel];
  v47 = [(_UIValueCellContentView *)self valueLabel];
  if (v46)
  {
    v48 = v143;
    v127 = v4;
    if ((v143 & 1) == 0)
    {
      [v46 _firstBaselineOffsetFromTop];
      v49 = v19;
      v51 = v50;
      [v47 _firstBaselineOffsetFromTop];
      v53 = v51 < v52;
      v19 = v49;
      if (v53)
      {
        [v47 _firstBaselineOffsetFromTop];
        v55 = v54;
        [v46 _firstBaselineOffsetFromTop];
        v57 = v55 - v56;
        v19 = v49;
        MinY = MinY + v57;
      }
    }

    v135 = v131;
    v136 = v132;
    v137 = v133;
    v138 = v134;
    v139 = v40;
    v119 = v19;
    v140 = v19;
    v58 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:MinY, *(&v143 + 1)];
    v126 = v9;
    v62 = UIRectIntegralWithScale(v58, v59, v60, v61, v9);
    v64 = v63;
    v66 = v65;
    v68 = v67;
    [v46 setFrame:?];
    if (v48)
    {
      v149.origin.x = v62;
      v149.origin.y = v64;
      v149.size.width = v66;
      v149.size.height = v68;
      MaxY = CGRectGetMaxY(v149);
      [(_UIValueCellContentViewConfiguration *)self->_configuration textToValuePadding];
      MinY = MaxY + v70;
      v9 = v126;
      v4 = v127;
      v19 = v119;
      if (!v25)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    v150.origin.x = x;
    v150.origin.y = y;
    v150.size.width = width;
    v150.size.height = height;
    MinY = CGRectGetMinY(v150);
    [v46 _firstBaselineOffsetFromTop];
    v72 = v71;
    [v47 _firstBaselineOffsetFromTop];
    if (v72 > v73)
    {
      [v46 _firstBaselineOffsetFromTop];
      v75 = v74;
      [v47 _firstBaselineOffsetFromTop];
      MinY = MinY + v75 - v76;
    }

    v40 = 8;
    v19 = -v120 - *(&v144 + 1);
    v133 = v130;
    v134 = v129;
    v131 = v122;
    v132 = v121;
    v9 = v126;
    v4 = v127;
    if (v25)
    {
LABEL_16:
      v77 = v19;
      [v24 frame];
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      LineOfLabel = _UIContentViewRectForVerticalCenteringWithFirstLineOfLabel(v46);
      v90 = v86;
      if (v25 == 2)
      {
        v91 = v88;
        v92 = v87;
        [(UIView *)self bringSubviewToFront:v24];
        v135 = v131;
        v136 = v132;
        v137 = v133;
        v138 = v134;
        v139 = v40;
        v19 = v77;
        v140 = v77;
        v93 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *(v141 + 1)];
        v9 = v126;
        v98 = UIRectCenteredYInRectScale(v93, v94, v95, v96, LineOfLabel, v90, v92, v91, v126);
        v100 = v99;
        v102 = v101;
      }

      else
      {
        v103 = v79;
        v9 = v126;
        v98 = UIRectCenteredYInRectScale(v103, v81, v83, v85, LineOfLabel, v86, v87, v88, v126);
        v105 = v104;
        v100 = v106;
        v102 = v107;
        v151.origin.y = v121;
        v151.origin.x = v122;
        v151.size.height = v129;
        v151.size.width = v130;
        v108 = v128 * 0.5 + CGRectGetMinY(v151);
        if (v105 >= v108)
        {
          v97 = v105;
        }

        else
        {
          v97 = v108;
        }

        v19 = v77;
      }

      [v24 setFrame:{UIRectIntegralWithScale(v98, v97, v100, v102, v9)}];
      v4 = v127;
    }
  }

LABEL_23:
  if (v24)
  {
    v109 = [(_UIValueCellContentViewConfiguration *)self->_configuration imageView];
    [v109 cornerRadius];
    _UIApplyCornerRadiusToView(v24, v110);
  }

  if (v47)
  {
    v135 = v131;
    v136 = v132;
    v137 = v133;
    v138 = v134;
    v139 = v40;
    v140 = v19;
    v111 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:MinY, *(&v144 + 1)];
    [v47 setFrame:{UIRectIntegralWithScale(v111, v112, v113, v114, v9)}];
  }

  if (self)
  {
    if (self->_primaryTextFrameDidChangeHandler)
    {
      [(_UIValueCellContentView *)self _primaryTextLayoutFrame];
      v153.origin.x = v115;
      v153.origin.y = v116;
      v153.size.width = v117;
      v153.size.height = v118;
      v152.origin.x = v4;
      v152.size.width = v124;
      v152.origin.y = v125;
      v152.size.height = rect1;
      if (!CGRectEqualToRect(v152, v153))
      {
        (*(self->_primaryTextFrameDidChangeHandler + 2))();
      }
    }
  }
}

- (NSLayoutRect)_primaryTextLayoutRect
{
  v2 = [(_UIValueCellContentView *)self textLabel];
  v3 = [v2 _layoutRect];

  return v3;
}

- (CGRect)_primaryTextLayoutFrame
{
  v2 = [(_UIValueCellContentView *)self textLabel];
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