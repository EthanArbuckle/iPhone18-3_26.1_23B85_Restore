@interface UIAlertControllerVisualStyleAlert
- (UIEdgeInsets)contentInsetsForContainerView:(id)a3;
- (UIEdgeInsets)textFieldContentInset;
- (double)_topItemsViewBottomMargin;
- (double)accessibilityWidth;
- (double)marginAboveMessageLabelFirstBaseline;
- (double)marginAboveTitleLabelFirstBaseline;
- (double)marginBelowLastLabelLastBaseline;
- (double)marginBelowMessageLabelLastBaseline;
- (double)marginBelowTitleLabelLastBaseline;
- (double)maximumWidth;
- (id)messageLabelColor;
- (id)messageLabelFont;
- (id)textFieldContainingViewWithTextField:(id)a3 position:(int64_t)a4;
- (id)titleLabelFont;
- (int64_t)permittedActionLayoutDirection;
- (void)animateAlertControllerView:(id)a3 ofAlertController:(id)a4 forPresentation:(BOOL)a5 inContainerView:(id)a6 descendantOfContainerView:(id)a7 duration:(double)a8 completionBlock:(id)a9;
@end

@implementation UIAlertControllerVisualStyleAlert

- (id)titleLabelFont
{
  v3 = @"UICTFontTextStyleHeadline";
  if (_UISolariumEnabled())
  {
    v4 = [(UIAlertControllerVisualStyle *)self descriptor];
    v5 = [v4 hasMessage];

    if ((v5 & 1) == 0)
    {
      v6 = @"UICTFontTextStyleBody";

      v3 = v6;
    }
  }

  v7 = [(UIAlertControllerVisualStyle *)self traitCollection];
  v8 = _traitCollectionByFlooringContentSizeCategoryToLarge(v7);
  v9 = [off_1E70ECC18 preferredFontForTextStyle:v3 compatibleWithTraitCollection:v8];

  return v9;
}

- (double)marginAboveTitleLabelFirstBaseline
{
  if (!_UISolariumEnabled())
  {
    return 36.0;
  }

  v3 = [(UIAlertControllerVisualStyle *)self descriptor];
  if ([v3 hasContentViewController])
  {
    v4 = 0;
  }

  else
  {
    v6 = [(UIAlertControllerVisualStyle *)self descriptor];
    if ([v6 hasTextfields])
    {
      v4 = 0;
    }

    else
    {
      v7 = [(UIAlertControllerVisualStyle *)self descriptor];
      v4 = [v7 hasMessage] ^ 1;
    }
  }

  v8 = [(UIAlertControllerVisualStyle *)self descriptor];
  v9 = [v8 numberOfActions];

  v10 = 18.0;
  if (!v9)
  {
    if (v4)
    {
      [(UIAlertControllerVisualStyle *)self _labelHorizontalInsets];
      v10 = v11;
    }
  }

  v12 = [(UIAlertControllerVisualStyleAlert *)self titleLabelFont];
  [v12 lineHeight];
  v14 = v13;

  return v10 + v14;
}

- (double)marginBelowTitleLabelLastBaseline
{
  if (!_UISolariumEnabled())
  {
    return 24.0;
  }

  v3 = [(UIAlertControllerVisualStyle *)self descriptor];
  v4 = [v3 hasMessage];

  if (v4)
  {

    [(UIAlertControllerVisualStyleAlert *)self _topItemsViewBottomMargin];
  }

  else
  {

    [(UIAlertControllerVisualStyleAlert *)self marginBelowLastLabelLastBaseline];
  }

  return result;
}

- (id)messageLabelFont
{
  v3 = _UISolariumEnabled();
  v4 = [(UIAlertControllerVisualStyle *)self descriptor];
  v5 = [v4 hasTitle];
  v6 = v5;
  if (v3)
  {
    v7 = &UIFontTextStyleSubheadline;
    if (!v5)
    {
      v7 = &UIFontTextStyleBody;
    }

    v8 = *v7;

    v9 = [(UIAlertControllerVisualStyle *)self traitCollection];
    v10 = _traitCollectionByFlooringContentSizeCategoryToLarge(v9);
    v11 = [off_1E70ECC18 preferredFontForTextStyle:v8 compatibleWithTraitCollection:v10];
  }

  else
  {

    if (v6)
    {
      v12 = [(UIAlertControllerVisualStyle *)self traitCollection];
      v13 = _traitCollectionByFlooringContentSizeCategoryToLarge(v12);
      v14 = [off_1E70ECC20 _preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote" addingSymbolicTraits:0x8000 compatibleWithTraitCollection:v13];

      v11 = [off_1E70ECC18 fontWithDescriptor:v14 size:0.0];
    }

    else
    {
      v11 = [(UIAlertControllerVisualStyleAlert *)self titleLabelFont];
    }
  }

  return v11;
}

- (id)messageLabelColor
{
  if (_UISolariumEnabled() && (-[UIAlertControllerVisualStyle descriptor](self, "descriptor"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 hasTitle], v3, v4))
  {
    v5 = +[UIColor secondaryLabelColor];
  }

  else
  {
    v5 = [(UIAlertControllerVisualStyleAlert *)self titleLabelColor];
  }

  return v5;
}

- (double)marginAboveMessageLabelFirstBaseline
{
  v3 = [(UIAlertControllerVisualStyleAlert *)self messageLabelFont];
  [v3 lineHeight];
  v5 = v4;

  v6 = [(UIAlertControllerVisualStyle *)self descriptor];
  v7 = [v6 hasTitle];

  if (v7)
  {
    v8 = 20.0;
    if (!_UISolariumEnabled())
    {
      return v8;
    }

    [(UIAlertControllerVisualStyleAlert *)self _topItemsViewBottomMargin];
    return v5 + v9;
  }

  v10 = [(UIAlertControllerVisualStyle *)self descriptor];
  if ([v10 hasContentViewController])
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v12 = [(UIAlertControllerVisualStyle *)self descriptor];
    v11 = [v12 hasTextfields] ^ 1;
  }

  if (_UISolariumEnabled())
  {
    v13 = [(UIAlertControllerVisualStyle *)self descriptor];
    v14 = ([v13 numberOfActions] == 0) & v11;

    if (v14 == 1)
    {
      [(UIAlertControllerVisualStyle *)self _labelHorizontalInsets];
      return v5 + v9;
    }
  }

  [(UIAlertControllerVisualStyleAlert *)self marginAboveTitleLabelFirstBaseline];
  return result;
}

- (double)marginBelowMessageLabelLastBaseline
{
  if (!_UISolariumEnabled())
  {
    return 24.0;
  }

  [(UIAlertControllerVisualStyleAlert *)self marginBelowLastLabelLastBaseline];
  return result;
}

- (double)marginBelowLastLabelLastBaseline
{
  v3 = 24.0;
  if (!_UISolariumEnabled())
  {
    return v3;
  }

  v4 = [(UIAlertControllerVisualStyle *)self descriptor];
  if ([v4 hasContentViewController])
  {

    return 20.0;
  }

  v5 = [(UIAlertControllerVisualStyle *)self descriptor];
  v6 = [v5 hasTextfields];

  v3 = 20.0;
  if (v6)
  {
    return v3;
  }

  v8 = [(UIAlertControllerVisualStyle *)self descriptor];
  v9 = [v8 numberOfActions];

  if (v9)
  {

    [(UIAlertControllerVisualStyleAlert *)self _topItemsViewBottomMargin];
  }

  else
  {

    [(UIAlertControllerVisualStyle *)self _labelHorizontalInsets];
  }

  return result;
}

- (double)_topItemsViewBottomMargin
{
  v2 = _UISolariumEnabled();
  result = 0.0;
  if (v2)
  {
    return 8.0;
  }

  return result;
}

- (double)maximumWidth
{
  v3 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  if (IsAccessibilityCategory)
  {
    v5 = [(UIAlertControllerVisualStyle *)self window];
    v6 = _accessibilityMaximumWidthWhenUsingAccessibilitySizes(v5);

    return v6;
  }

  else
  {
    if (_UISolariumEnabled())
    {
      v8 = 320.0;
    }

    else
    {
      v8 = 270.0;
    }

    v9 = [(UIAlertControllerVisualStyleAlert *)self shouldCenterVertically];
    result = 0.0;
    if (v9)
    {
      return v8;
    }
  }

  return result;
}

- (double)accessibilityWidth
{
  v2 = [(UIAlertControllerVisualStyle *)self window];
  v3 = _accessibilityMaximumWidthWhenUsingAccessibilitySizes(v2);

  return v3;
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)a3
{
  v3 = a3;
  v4 = _UISolariumEnabled();
  v5 = 24.0;
  if (!v4)
  {
    v5 = 0.0;
  }

  v6 = _UIActionSheetPresentationControllerContentInsetsAdjustedForSafeAreaWithStandardContentInsets(v3, 8.0, v5, 8.0, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)textFieldContentInset
{
  if (_UISolariumEnabled())
  {
    [(UIAlertControllerVisualStyleAlert *)self textFieldHorizontalMargin];
    v4 = v3;
    [(UIAlertControllerVisualStyleAlert *)self textFieldHorizontalMargin];
    v6 = v5;
    v7 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIAlertControllerVisualStyleAlert;
    [(UIAlertControllerVisualStyle *)&v11 textFieldContentInset];
    v4 = v9;
  }

  v10 = v4;
  result.right = v6;
  result.bottom = v8;
  result.left = v10;
  result.top = v7;
  return result;
}

- (id)textFieldContainingViewWithTextField:(id)a3 position:(int64_t)a4
{
  v54[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  switch(a4)
  {
    case 3:
      v7 = 12;
      break;
    case 2:
      v7 = 0;
      v8 = 0.0;
      v9 = 1;
      goto LABEL_9;
    case 1:
      v7 = 3;
      break;
    default:
      v7 = 15;
      break;
  }

  [(UIAlertControllerVisualStyle *)self textFieldCornerRadius];
  v8 = v10;
  v9 = 0;
LABEL_9:
  v11 = [UIView alloc];
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = [(UIView *)v11 initWithFrame:*MEMORY[0x1E695F058], v13, v14, v15];
  v17 = _UISolariumEnabled();
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = [_UIInterfaceActionVibrantBorderView newWithRoundedCornerPosition:v7 continuousCornerRadius:v8];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v16 addSubview:v18];
  }

  v19 = [[UIView alloc] initWithFrame:v12, v13, v14, v15];
  [(UIView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (_UISolariumEnabled())
  {
    +[UIColor tertiarySystemFillColor];
  }

  else
  {
    +[UIColor systemBackgroundColor];
  }
  v50 = ;
  [(UIView *)v19 setBackgroundColor:v50];
  if ((v9 & 1) == 0)
  {
    [(UIView *)v19 _setContinuousCornerRadius:v8];
    v20 = [(UIView *)v19 layer];
    [v20 setMaskedCorners:v7];
  }

  [(UIView *)v16 addSubview:v19];
  [(UIView *)v19 addSubview:v6];
  v21 = _UISolariumEnabled();
  if ((a4 - 1) < 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v48 = v22;
  if (v22 == 1)
  {
    v23 = [[UIView alloc] initWithFrame:v12, v13, v14, v15];
    [(UIView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = +[UIColor quaternaryLabelColor];
    [(UIView *)v23 setBackgroundColor:v24];

    v49 = v23;
    [(UIView *)v16 addSubview:v23];
  }

  else
  {
    v49 = 0;
  }

  v25 = 0.0;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v6 _currentScreenScale];
    UIRoundToViewScale(v6);
    v25 = v26;
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v25;
  }

  if (_UISolariumEnabled())
  {
    v28 = 15.0;
  }

  else
  {
    v28 = 7.0;
  }

  v29 = _NSDictionaryOfVariableBindings(&cfstr_TextfieldTextf.isa, v6, v19, 0);
  v51 = v18;
  v52 = v6;
  if ((v17 & 1) == 0)
  {
    v30 = _NSDictionaryOfVariableBindings(&cfstr_TextfieldVibra.isa, v6, v18, v19, 0);

    v29 = v30;
  }

  v53[0] = @"textFieldContainerTop";
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
  v54[0] = v31;
  v53[1] = @"borderWidth";
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
  v54[1] = v32;
  v53[2] = @"textFieldInsetH";
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
  v54[2] = v33;
  v53[3] = @"textFieldInsetTop";
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:7.0 - v25];
  v54[3] = v34;
  v54[4] = &unk_1EFE2E9F8;
  v53[4] = @"textFieldInsetBottom";
  v53[5] = @"separatorViewInsetH";
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
  v54[5] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:6];

  if ((v17 & 1) == 0)
  {
    v37 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[vibrantBorder]|" options:0 metrics:v36 views:v29];
    [(UIView *)v16 addConstraints:v37];

    v38 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[vibrantBorder]|" options:0 metrics:v36 views:v29];
    [(UIView *)v16 addConstraints:v38];
  }

  v39 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-(borderWidth)-[textFieldContainer]-(borderWidth)-|" options:0 metrics:v36 views:v29];
  [(UIView *)v16 addConstraints:v39];

  v40 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-(textFieldInsetH)-[textField]-(textFieldInsetH)-|" options:0 metrics:v36 views:v29];
  [(UIView *)v16 addConstraints:v40];

  v41 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|-(textFieldContainerTop)-[textFieldContainer]-(borderWidth)-|" options:0 metrics:v36 views:v29];
  [(UIView *)v16 addConstraints:v41];

  v42 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|-(textFieldInsetTop)-[textField]-(textFieldInsetBottom)-|" options:0 metrics:v36 views:v29];
  [(UIView *)v16 addConstraints:v42];

  if (v48)
  {
    v43 = _NSDictionaryOfVariableBindings(&cfstr_TextfieldTextf_0.isa, v52, v19, v49, 0);
    v44 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-(separatorViewInsetH)-[separatorView]-(separatorViewInsetH)-|" options:0 metrics:v36 views:v43];
    [(UIView *)v16 addConstraints:v44];

    v45 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[textFieldContainer][separatorView]|" options:0 metrics:v36 views:v43];
    [(UIView *)v16 addConstraints:v45];

    v46 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:[separatorView(1)]" options:0 metrics:v36 views:v43];
    [(UIView *)v16 addConstraints:v46];
  }

  return v16;
}

- (int64_t)permittedActionLayoutDirection
{
  v2 = [(UIAlertControllerVisualStyle *)self descriptor];
  v3 = [v2 numberOfActions];

  if (v3 >= 3)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)animateAlertControllerView:(id)a3 ofAlertController:(id)a4 forPresentation:(BOOL)a5 inContainerView:(id)a6 descendantOfContainerView:(id)a7 duration:(double)a8 completionBlock:(id)a9
{
  v12 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  v47 = *MEMORY[0x1E695EFD0];
  v48 = v19;
  v49 = *(MEMORY[0x1E695EFD0] + 32);
  *&v46.a = v47;
  *&v46.c = v19;
  *&v46.tx = v49;
  if (v12 && !_AXSReduceMotionEnabled())
  {
    v21 = 1.2;
    v20 = &v47;
    v22 = 1.2;
  }

  else
  {
    v20 = &v46;
    v21 = 1.0;
    v22 = 1.0;
  }

  CGAffineTransformMakeScale(v20, v21, v22);
  if (v12)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  if (v12)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  v45[0] = v47;
  v45[1] = v48;
  v45[2] = v49;
  [v14 setTransform:v45];
  v26 = [(UIView *)v14 _backing_outermostLayer];
  v25 = v23;
  *&v27 = v25;
  [v26 setOpacity:v27];

  v28 = [v15 _dimmingView];
  [v28 setAlpha:v23];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __165__UIAlertControllerVisualStyleAlert_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke;
  aBlock[3] = &unk_1E711B698;
  v29 = v14;
  v43 = v46;
  v44 = v24;
  v41 = v29;
  v42 = v28;
  v30 = v28;
  v31 = _Block_copy(aBlock);
  v37 = v18;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __165__UIAlertControllerVisualStyleAlert_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2;
  v38[3] = &unk_1E70F0F78;
  v39 = v31;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __165__UIAlertControllerVisualStyleAlert_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3;
  v35[3] = &unk_1E70FE248;
  v36 = v29;
  v32 = v18;
  v33 = v29;
  v34 = v31;
  [UIView animateWithDuration:6 delay:v38 usingSpringWithDamping:v35 initialSpringVelocity:0.404 options:0.0 animations:600.0 completion:0.0];
}

uint64_t __165__UIAlertControllerVisualStyleAlert_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v8[0] = *(a1 + 48);
  v8[1] = v3;
  v8[2] = *(a1 + 80);
  [v2 setTransform:v8];
  v4 = *(a1 + 96);
  v5 = [(UIView *)*(a1 + 32) _backing_outermostLayer];
  *&v6 = v4;
  [v5 setOpacity:v6];

  return [*(a1 + 40) setAlpha:*(a1 + 96)];
}

uint64_t __165__UIAlertControllerVisualStyleAlert_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048620 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __165__UIAlertControllerVisualStyleAlert_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end