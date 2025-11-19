@interface UIAlertControllerVisualStyleAlertModernTV
- (CGSize)contentShadowOffset;
- (UIEdgeInsets)contentInsetsForContainerView:(id)a3;
- (double)_labelHorizontalInsets;
- (double)_minimumAlertWidthWithContentView:(id)a3 withCandidateSizes:(id)a4 preferredSizeForContentContainers:(CGSize)a5;
- (double)_minimumAlertWidthWithTitleLabel:(id)a3 withCandidateSizes:(id)a4;
- (double)actionWidthForMinimumActionWidth:(double)a3 availableWidth:(double)a4;
- (double)contentCornerRadius;
- (double)marginAboveMessageLabelFirstBaseline;
- (double)marginBelowLastLabelLastBaseline;
- (double)marginBelowMessageLabelLastBaseline;
- (double)minimumWidthFittingContentView:(id)a3 titleLabel:(id)a4 minimumWidthForAllActions:(double)a5 preferredSizeForContentContainers:(CGSize)a6;
- (id)contentBackdropView;
- (id)dimmingViewForAlertController:(id)a3;
- (id)messageCompositingFilter;
- (int64_t)permittedActionLayoutDirection;
- (void)animateAlertControllerView:(id)a3 ofAlertController:(id)a4 forPresentation:(BOOL)a5 inContainerView:(id)a6 descendantOfContainerView:(id)a7 duration:(double)a8 completionBlock:(id)a9;
@end

@implementation UIAlertControllerVisualStyleAlertModernTV

- (id)messageCompositingFilter
{
  v2 = [(UIAlertControllerVisualStyle *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = MEMORY[0x1E6979CF8];
  if (v3 != 2)
  {
    v4 = MEMORY[0x1E6979CE8];
  }

  v5 = *v4;

  return v5;
}

- (double)marginBelowLastLabelLastBaseline
{
  v3 = [(UIAlertControllerVisualStyleAlertModernTV *)self titleLabelFont];
  CTFontGetLanguageAwareOutsets();

  v4 = [(UIAlertControllerVisualStyleAlertModernTV *)self titleLabelFont];
  [v4 descender];
  v6 = 0.0 - v5;

  return v6;
}

- (double)marginBelowMessageLabelLastBaseline
{
  v3 = [(UIAlertControllerVisualStyleAlertModernTV *)self messageLabelFont];
  CTFontGetLanguageAwareOutsets();

  v4 = [(UIAlertControllerVisualStyleAlertModernTV *)self messageLabelFont];
  [v4 descender];
  v6 = 0.0 - v5;

  return v6;
}

- (double)marginAboveMessageLabelFirstBaseline
{
  v3 = [(UIAlertControllerVisualStyle *)self descriptor];
  v4 = [v3 hasTitle];

  if (v4)
  {
    return 49.0;
  }

  [(UIAlertControllerVisualStyleAlertModernTV *)self marginAboveTitleLabelFirstBaseline];
  return result;
}

- (double)minimumWidthFittingContentView:(id)a3 titleLabel:(id)a4 minimumWidthForAllActions:(double)a5 preferredSizeForContentContainers:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v41[3] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = [(UIAlertControllerVisualStyle *)self descriptor];
  if ([v13 numberOfVisibleActions] != 2)
  {
    v27 = MEMORY[0x1E696AD98];
    [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthDefault];
    v20 = [v27 numberWithDouble:?];
    v39[0] = v20;
    v28 = MEMORY[0x1E696AD98];
    [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthSideBySide];
    v22 = [v28 numberWithDouble:?];
    v39[1] = v22;
    v29 = MEMORY[0x1E696AD98];
    [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthLarge];
    v24 = [v29 numberWithDouble:?];
    v39[2] = v24;
    v25 = MEMORY[0x1E695DEC8];
    v26 = v39;
    goto LABEL_5;
  }

  [(UIAlertControllerVisualStyle *)self actionSpacingForHorizontalLayout:1];
  v15 = v14;
  [(UIAlertControllerVisualStyle *)self actionSequenceEdgeInsets];
  v17 = v16;
  [(UIAlertControllerVisualStyle *)self actionSequenceEdgeInsets];
  v19 = MEMORY[0x1E696AD98];
  if (a5 + a5 + v15 + v17 + v18 > 588.0)
  {
    [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthDefault];
    v20 = [v19 numberWithDouble:?];
    v41[0] = v20;
    v21 = MEMORY[0x1E696AD98];
    [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthSideBySide];
    v22 = [v21 numberWithDouble:?];
    v41[1] = v22;
    v23 = MEMORY[0x1E696AD98];
    [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthLarge];
    v24 = [v23 numberWithDouble:?];
    v41[2] = v24;
    v25 = MEMORY[0x1E695DEC8];
    v26 = v41;
LABEL_5:
    v30 = [v25 arrayWithObjects:v26 count:3];

    goto LABEL_7;
  }

  [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthSideBySide];
  v20 = [v19 numberWithDouble:?];
  v40[0] = v20;
  v31 = MEMORY[0x1E696AD98];
  [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthLarge];
  v22 = [v31 numberWithDouble:?];
  v40[1] = v22;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
LABEL_7:

  [(UIAlertControllerVisualStyleAlertModernTV *)self _minimumAlertWidthWithTitleLabel:v12 withCandidateSizes:v30];
  v33 = v32;

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __147__UIAlertControllerVisualStyleAlertModernTV_minimumWidthFittingContentView_titleLabel_minimumWidthForAllActions_preferredSizeForContentContainers___block_invoke;
  v38[3] = &__block_descriptor_40_e35_B24__0__NSNumber_8__NSDictionary_16l;
  *&v38[4] = v33;
  v34 = [MEMORY[0x1E696AE18] predicateWithBlock:v38];
  v35 = [v30 filteredArrayUsingPredicate:v34];

  if ([v35 count])
  {
    [(UIAlertControllerVisualStyleAlertModernTV *)self _minimumAlertWidthWithContentView:v11 withCandidateSizes:v35 preferredSizeForContentContainers:width, height];
    v33 = v36;
  }

  return v33;
}

- (double)_minimumAlertWidthWithTitleLabel:(id)a3 withCandidateSizes:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0.0;
  if (v6 && [v7 count])
  {
    v10 = [v6 numberOfLines];
    [v6 setNumberOfLines:0];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v25 + 1) + 8 * v15) floatValue];
        v9 = v16;
        [(UIAlertControllerVisualStyleAlertModernTV *)self _labelHorizontalInsets];
        v18 = v9 - (v17 + v17);
        v24 = 0;
        v19 = [v6 text];
        v20 = [v6 attributedText];
        _UIComputedSizeForLabel(v6, v19, v20, 0, &v24, 0, 0, v18, 1.79769313e308);

        v21 = v24;
        if (v21 <= [(UIAlertControllerVisualStyleAlertModernTV *)self maximumNumberOfLinesInTitleLabel])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v13)
          {
            goto LABEL_5;
          }

          v9 = 0.0;
          break;
        }
      }
    }

    [v6 setNumberOfLines:v10];
    if (fabs(v9) < 2.22044605e-16)
    {
      [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthExtraLarge];
      v9 = v22;
    }
  }

  return v9;
}

- (double)_minimumAlertWidthWithContentView:(id)a3 withCandidateSizes:(id)a4 preferredSizeForContentContainers:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [(UIAlertControllerVisualStyle *)self descriptor];
  [(UIAlertControllerVisualStyleAlertModernTV *)self maximumContentHeight];
  v13 = v12;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v29 + 1) + 8 * i) floatValue];
        v20 = v19;
        LODWORD(v21) = 1148846080;
        LODWORD(v22) = 1112014848;
        [v9 systemLayoutSizeFittingSize:v19 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v21, v22}];
        v24 = v23;
        if (([v11 hasTitle] & 1) != 0 || objc_msgSend(v11, "hasMessage"))
        {
          v24 = height + v24;
        }

        if (v24 < v13)
        {
          [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthExtraLarge];
          v25 = fmax(v20, fmin(width, v26));
          goto LABEL_14;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0.0;
LABEL_14:

  if (fabs(v25) < 2.22044605e-16)
  {
    [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthExtraLarge];
    v25 = v27;
  }

  return v25;
}

- (double)actionWidthForMinimumActionWidth:(double)a3 availableWidth:(double)a4
{
  [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
  v6 = v5 + v5;
  v7 = 640.0 - v6;
  result = a4 - v6;
  if (v7 < result)
  {
    return v7;
  }

  return result;
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)a3
{
  v3 = _UIActionSheetPresentationControllerContentInsetsAdjustedForSafeAreaWithStandardContentInsets(a3, 60.0, 80.0, 60.0, 80.0);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (int64_t)permittedActionLayoutDirection
{
  v2 = [(UIAlertControllerVisualStyle *)self descriptor];
  v3 = [v2 numberOfVisibleActions];

  if (v3 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)dimmingViewForAlertController:(id)a3
{
  if (_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_944, @"TVAlert_BackgroundDimWhite"))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *&qword_1ED48B330;
  }

  if (_UIInternalPreferenceUsesDefault_1(algn_1ED48B338, @"TVAlert_BackgroundDimAlpha"))
  {
    v4 = 0.45;
  }

  else
  {
    v4 = *&qword_1ED48B340;
  }

  v5 = [UIView alloc];
  v6 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [UIColor colorWithWhite:v3 alpha:v4];
  [(UIView *)v6 setBackgroundColor:v7];

  return v6;
}

- (void)animateAlertControllerView:(id)a3 ofAlertController:(id)a4 forPresentation:(BOOL)a5 inContainerView:(id)a6 descendantOfContainerView:(id)a7 duration:(double)a8 completionBlock:(id)a9
{
  v11 = a5;
  v14 = a3;
  v15 = a9;
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  v52 = *MEMORY[0x1E695EFD0];
  v53 = v16;
  v54 = *(MEMORY[0x1E695EFD0] + 32);
  v49 = v52;
  v50 = v16;
  v51 = v54;
  v17 = a4;
  [(UIAlertControllerVisualStyleAlertModernTV *)self alertAnimationInitialScale];
  v19 = &v49;
  if (v11)
  {
    v19 = &v52;
    v20 = 0.357142857;
  }

  else
  {
    v20 = 0.5;
  }

  if (v11)
  {
    v21 = 0.476190476;
  }

  else
  {
    v21 = 0.5;
  }

  if (v11)
  {
    v22 = 0.523809524;
  }

  else
  {
    v22 = 0.0;
  }

  if (v11)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.0;
  }

  if (v11)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 1.0;
  }

  CGAffineTransformMakeScale(v19, v18, v18);
  v25 = [v17 _dimmingView];

  v48[0] = v52;
  v48[1] = v53;
  v48[2] = v54;
  [v14 setTransform:v48];
  [v14 setAlpha:v24];
  v26 = [v14 _preferredActionView];
  v27 = [[_UIAlertControllerVisualStyleAlertTVCustomCurveFactory alloc] initWithCustomCurve:0];
  v28 = [[_UIAlertControllerVisualStyleAlertTVCustomCurveFactory alloc] initWithCustomCurve:1];
  [v25 setAlpha:v24];
  v44 = v15;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __173__UIAlertControllerVisualStyleAlertModernTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke;
  v45[3] = &unk_1E70F32F0;
  v46 = v25;
  v47 = v23;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __173__UIAlertControllerVisualStyleAlertModernTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2;
  v43[3] = &unk_1E70F3608;
  v29 = v15;
  v30 = v25;
  [UIView _animateWithDuration:393216 delay:v27 options:v45 factory:v43 animations:a8 completion:0.0];
  [(UIAlertControllerVisualStyleAlertModernTV *)self alertAnimationHasDelay];
  if (v31 == 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v22 * a8;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __173__UIAlertControllerVisualStyleAlertModernTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3;
  v38[3] = &unk_1E70F3DC8;
  v33 = v14;
  v39 = v33;
  v40 = v49;
  v41 = v50;
  v42 = v51;
  [UIView _animateWithDuration:393216 delay:v28 options:v38 factory:0 animations:v21 * a8 completion:v32];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __173__UIAlertControllerVisualStyleAlertModernTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_4;
  v35[3] = &unk_1E70F32F0;
  v36 = v33;
  v37 = v23;
  v34 = v33;
  [UIView _animateWithDuration:393216 delay:v27 options:v35 factory:0 animations:v20 * a8 completion:v32];
}

uint64_t __173__UIAlertControllerVisualStyleAlertModernTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (id)contentBackdropView
{
  v3 = objc_alloc_init([objc_opt_class() associatedAlertBackgroundViewClass]);
  [(UIAlertControllerVisualStyleAlertModernTV *)self contentCornerRadius];
  [v3 setCornerRadius:?];

  return v3;
}

- (double)contentCornerRadius
{
  v2 = [objc_opt_class() associatedAlertBackgroundViewClass];

  [v2 contentCornerRadius];
  return result;
}

- (CGSize)contentShadowOffset
{
  v2 = 0.0;
  v3 = 4.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)_labelHorizontalInsets
{
  [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
  v4 = v3;
  [(UIAlertControllerVisualStyleAlertModernTV *)self _titleAndMessageHorizontalInset];
  return v4 + v5;
}

@end