@interface UIAlertControllerVisualStyleActionSheet
+ (void)positionContentsOfAlertController:(id)a3 alertContentView:(id)a4 availableSpaceView:(id)a5 visualStyle:(id)a6 updatableConstraints:(id)a7;
- (BOOL)hideCancelAction:(id)a3 inAlertController:(id)a4;
- (UIEdgeInsets)contentInsetsForContainerView:(id)a3;
- (double)_topItemsViewBottomMargin;
- (double)marginAboveMessageLabelFirstBaseline;
- (double)marginAboveTitleLabelFirstBaseline;
- (double)marginBelowLastLabelLastBaseline;
- (double)marginBelowMessageLabelLastBaseline;
- (double)marginBelowTitleLabelLastBaseline;
- (double)maximumWidth;
- (id)messageLabelColor;
- (id)messageLabelFont;
- (id)titleLabelColor;
- (id)titleLabelFont;
- (id)vibrancyEffectForTitleAndMessageLabel;
- (int64_t)permittedActionLayoutDirection;
- (void)animateAlertControllerView:(id)a3 ofAlertController:(id)a4 forPresentation:(BOOL)a5 inContainerView:(id)a6 descendantOfContainerView:(id)a7 duration:(double)a8 completionBlock:(id)a9;
@end

@implementation UIAlertControllerVisualStyleActionSheet

- (id)vibrancyEffectForTitleAndMessageLabel
{
  if (_UISolariumEnabled())
  {
    v2 = 0;
  }

  else
  {
    v3 = vibrancyEffectForTitleAndMessageLabel__cachedVibrancyEffect;
    if (!vibrancyEffectForTitleAndMessageLabel__cachedVibrancyEffect)
    {
      v4 = [UIBlurEffect effectWithStyle:1200];
      v5 = [UIVibrancyEffect _effectForBlurEffect:v4 vibrancyStyle:102];
      v6 = vibrancyEffectForTitleAndMessageLabel__cachedVibrancyEffect;
      vibrancyEffectForTitleAndMessageLabel__cachedVibrancyEffect = v5;

      v3 = vibrancyEffectForTitleAndMessageLabel__cachedVibrancyEffect;
    }

    v2 = v3;
  }

  return v2;
}

- (id)titleLabelFont
{
  if (_UISolariumEnabled())
  {
    v3 = [(UIAlertControllerVisualStyle *)self descriptor];
    v4 = [v3 hasMessage];
    v5 = &UIFontTextStyleHeadline;
    if (!v4)
    {
      v5 = &UIFontTextStyleBody;
    }

    v6 = *v5;

    v7 = [(UIAlertControllerVisualStyle *)self traitCollection];
    v8 = _traitCollectionByFlooringContentSizeCategoryToLarge(v7);
    v9 = [off_1E70ECC18 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v8];
  }

  else
  {
    v7 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote" addingSymbolicTraits:2 options:2];
    v10 = [(UIAlertControllerVisualStyle *)self descriptor];
    v11 = [v10 hasMessage];

    if ((v11 & 1) == 0)
    {
      v12 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote" addingSymbolicTraits:64 options:2];

      v7 = v12;
    }

    v9 = [off_1E70ECC18 fontWithDescriptor:v7 size:0.0];
  }

  return v9;
}

- (id)titleLabelColor
{
  if (_UISolariumEnabled())
  {
    +[UIColor labelColor];
  }

  else
  {
    _titleAndMessageLabelTextColor();
  }
  v2 = ;

  return v2;
}

- (double)marginAboveTitleLabelFirstBaseline
{
  v3 = 27.0;
  if (_UISolariumEnabled())
  {
    v4 = [(UIAlertControllerVisualStyle *)self descriptor];
    if ([v4 hasTitle])
    {
      [(UIAlertControllerVisualStyleActionSheet *)self titleLabelFont];
    }

    else
    {
      [(UIAlertControllerVisualStyleActionSheet *)self messageLabelFont];
    }
    v5 = ;

    [v5 lineHeight];
    v3 = v6 + 18.0;
  }

  return v3;
}

- (double)marginBelowTitleLabelLastBaseline
{
  v2 = _UISolariumEnabled();
  result = 17.0;
  if (v2)
  {
    return 6.0;
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
      v12 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote" addingSymbolicTraits:0 options:2];
      v11 = [off_1E70ECC18 fontWithDescriptor:v12 size:0.0];
    }

    else
    {
      v11 = [(UIAlertControllerVisualStyleActionSheet *)self titleLabelFont];
    }
  }

  return v11;
}

- (id)messageLabelColor
{
  if (_UISolariumEnabled())
  {
    v3 = [(UIAlertControllerVisualStyle *)self descriptor];
    if ([v3 hasTitle])
    {
      +[UIColor secondaryLabelColor];
    }

    else
    {
      [(UIAlertControllerVisualStyleActionSheet *)self titleLabelColor];
    }
    v4 = ;
  }

  else
  {
    v4 = _titleAndMessageLabelTextColor();
  }

  return v4;
}

- (double)marginAboveMessageLabelFirstBaseline
{
  v3 = [(UIAlertControllerVisualStyle *)self descriptor];
  v4 = [v3 hasTitle];

  if (v4)
  {
    v5 = 22.0;
    if (_UISolariumEnabled())
    {
      v6 = [(UIAlertControllerVisualStyleActionSheet *)self messageLabelFont];
      [v6 lineHeight];
      v8 = v7;

      return v8 + 8.0;
    }

    return v5;
  }

  else
  {

    [(UIAlertControllerVisualStyleActionSheet *)self marginAboveTitleLabelFirstBaseline];
  }

  return result;
}

- (double)marginBelowMessageLabelLastBaseline
{
  v3 = [(UIAlertControllerVisualStyle *)self descriptor];
  v4 = [v3 hasTitle];

  if (v4)
  {
    v5 = 28.0;
    if (_UISolariumEnabled())
    {
      v6 = [(UIAlertControllerVisualStyle *)self descriptor];
      v5 = 20.0;
      if (([v6 hasContentViewController] & 1) == 0)
      {
        [(UIAlertControllerVisualStyleActionSheet *)self _topItemsViewBottomMargin];
        v5 = v7;
      }
    }

    return v5;
  }

  else
  {

    [(UIAlertControllerVisualStyleActionSheet *)self marginBelowTitleLabelLastBaseline];
  }

  return result;
}

- (double)marginBelowLastLabelLastBaseline
{
  if (!_UISolariumEnabled())
  {
    return 17.0;
  }

  v3 = [(UIAlertControllerVisualStyle *)self descriptor];
  v4 = [v3 hasMessage];

  if (v4)
  {

    [(UIAlertControllerVisualStyleActionSheet *)self _topItemsViewBottomMargin];
  }

  else
  {

    [(UIAlertControllerVisualStyleActionSheet *)self marginBelowMessageLabelLastBaseline];
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
  v3 = 0.0;
  if (_UISolariumEnabled())
  {
    v4 = [(UIAlertControllerVisualStyle *)self descriptor];
    v5 = [v4 isPad];

    if (v5)
    {
      return 0.0;
    }

    else
    {
      return 240.0;
    }
  }

  return v3;
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)a3
{
  v3 = a3;
  v4 = _UISolariumEnabled();
  v5 = 8.0;
  if (v4)
  {
    v5 = 16.0;
  }

  v6 = _UIActionSheetPresentationControllerContentInsetsAdjustedForSafeAreaWithStandardContentInsets(v3, v5, v5, v5, v5);
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

+ (void)positionContentsOfAlertController:(id)a3 alertContentView:(id)a4 availableSpaceView:(id)a5 visualStyle:(id)a6 updatableConstraints:(id)a7
{
  v29[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v13 = a6;
  v14 = [v12 constraintForKey:@"UIAlertControllerVisualStyleActionSheet.centerX"];
  if (!v14)
  {
    v15 = [v10 centerXAnchor];
    v16 = [v11 centerXAnchor];
    v14 = [v15 constraintEqualToAnchor:v16];

    [v12 addConstraint:v14 forKey:@"UIAlertControllerVisualStyleActionSheet.centerX"];
  }

  v17 = [v12 constraintForKey:@"UIAlertControllerVisualStyleActionSheet.bottom"];
  if (!v17)
  {
    v18 = [v10 bottomAnchor];
    v19 = [v11 bottomAnchor];
    v17 = [v18 constraintEqualToAnchor:v19 constant:0.0];

    [v12 addConstraint:v17 forKey:@"UIAlertControllerVisualStyleActionSheet.bottom"];
  }

  v20 = [v10 superview];
  [v13 contentInsetsForContainerView:v20];
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v17 setConstant:-v24];
  [v14 setConstant:(v22 - v26) * 0.5];
  v27 = MEMORY[0x1E69977A0];
  v29[0] = v14;
  v29[1] = v17;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  [v27 activateConstraints:v28];
}

- (void)animateAlertControllerView:(id)a3 ofAlertController:(id)a4 forPresentation:(BOOL)a5 inContainerView:(id)a6 descendantOfContainerView:(id)a7 duration:(double)a8 completionBlock:(id)a9
{
  v14 = a3;
  v15 = a9;
  v16 = a6;
  v17 = a4;
  [v14 center];
  v19 = v18;
  v21 = v20;
  [v14 center];
  v23 = v22;
  [v16 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v14 superview];
  [v32 convertRect:v16 fromView:{v25, v27, v29, v31}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v64.origin.x = v34;
  v64.origin.y = v36;
  v64.size.width = v38;
  v64.size.height = v40;
  MaxY = CGRectGetMaxY(v64);
  [v14 frame];
  v43 = MaxY + v42 * 0.5;
  if (a5)
  {
    v44 = MaxY + v42 * 0.5;
  }

  else
  {
    v44 = v21;
  }

  if (a5)
  {
    v45 = v23;
  }

  else
  {
    v45 = v19;
  }

  if (a5)
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 0.0;
  }

  if (a5)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = 1.0;
  }

  if (!a5)
  {
    v21 = v43;
    v19 = v23;
  }

  [v14 setCenter:{v45, v44}];
  v48 = [v17 _dimmingView];

  [v48 setAlpha:v47];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __171__UIAlertControllerVisualStyleActionSheet_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke;
  aBlock[3] = &unk_1E71226C8;
  v61 = v19;
  v62 = v21;
  v59 = v14;
  v60 = v48;
  v63 = v46;
  v49 = v48;
  v50 = v14;
  v51 = _Block_copy(aBlock);
  v55 = v15;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __171__UIAlertControllerVisualStyleActionSheet_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2;
  v56[3] = &unk_1E70F0F78;
  v57 = v51;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __171__UIAlertControllerVisualStyleActionSheet_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3;
  v54[3] = &unk_1E70F3608;
  v52 = v15;
  v53 = v51;
  [UIView animateWithDuration:6 delay:v56 usingSpringWithDamping:v54 initialSpringVelocity:a8 options:0.0 animations:600.0 completion:0.0];
}

uint64_t __171__UIAlertControllerVisualStyleActionSheet_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);

  return [v2 setAlpha:v3];
}

uint64_t __171__UIAlertControllerVisualStyleActionSheet_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048620 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

- (int64_t)permittedActionLayoutDirection
{
  v3 = [(UIAlertControllerVisualStyle *)self descriptor];
  if ([v3 hasTitle])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(UIAlertControllerVisualStyle *)self descriptor];
    if ([v5 hasMessage])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(UIAlertControllerVisualStyle *)self descriptor];
      v7 = [v6 hasContentViewController];

      v4 = v7 ^ 1;
    }
  }

  v8 = [(UIAlertControllerVisualStyle *)self traitCollection];
  v9 = [v8 verticalSizeClass];

  if ((v4 & (v9 == 1)) != 0)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (BOOL)hideCancelAction:(id)a3 inAlertController:(id)a4
{
  v4 = a4;
  if (_UISolariumEnabled())
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 _isPresentedAsPopover];
  }

  return v5;
}

@end