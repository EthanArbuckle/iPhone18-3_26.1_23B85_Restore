@interface UIAlertControllerVisualStyleAlertModernTV
- (CGSize)contentShadowOffset;
- (UIEdgeInsets)contentInsetsForContainerView:(id)view;
- (double)_labelHorizontalInsets;
- (double)_minimumAlertWidthWithContentView:(id)view withCandidateSizes:(id)sizes preferredSizeForContentContainers:(CGSize)containers;
- (double)_minimumAlertWidthWithTitleLabel:(id)label withCandidateSizes:(id)sizes;
- (double)actionWidthForMinimumActionWidth:(double)width availableWidth:(double)availableWidth;
- (double)contentCornerRadius;
- (double)marginAboveMessageLabelFirstBaseline;
- (double)marginBelowLastLabelLastBaseline;
- (double)marginBelowMessageLabelLastBaseline;
- (double)minimumWidthFittingContentView:(id)view titleLabel:(id)label minimumWidthForAllActions:(double)actions preferredSizeForContentContainers:(CGSize)containers;
- (id)contentBackdropView;
- (id)dimmingViewForAlertController:(id)controller;
- (id)messageCompositingFilter;
- (int64_t)permittedActionLayoutDirection;
- (void)animateAlertControllerView:(id)view ofAlertController:(id)controller forPresentation:(BOOL)presentation inContainerView:(id)containerView descendantOfContainerView:(id)ofContainerView duration:(double)duration completionBlock:(id)block;
@end

@implementation UIAlertControllerVisualStyleAlertModernTV

- (id)messageCompositingFilter
{
  traitCollection = [(UIAlertControllerVisualStyle *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v4 = MEMORY[0x1E6979CF8];
  if (userInterfaceStyle != 2)
  {
    v4 = MEMORY[0x1E6979CE8];
  }

  v5 = *v4;

  return v5;
}

- (double)marginBelowLastLabelLastBaseline
{
  titleLabelFont = [(UIAlertControllerVisualStyleAlertModernTV *)self titleLabelFont];
  CTFontGetLanguageAwareOutsets();

  titleLabelFont2 = [(UIAlertControllerVisualStyleAlertModernTV *)self titleLabelFont];
  [titleLabelFont2 descender];
  v6 = 0.0 - v5;

  return v6;
}

- (double)marginBelowMessageLabelLastBaseline
{
  messageLabelFont = [(UIAlertControllerVisualStyleAlertModernTV *)self messageLabelFont];
  CTFontGetLanguageAwareOutsets();

  messageLabelFont2 = [(UIAlertControllerVisualStyleAlertModernTV *)self messageLabelFont];
  [messageLabelFont2 descender];
  v6 = 0.0 - v5;

  return v6;
}

- (double)marginAboveMessageLabelFirstBaseline
{
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  hasTitle = [descriptor hasTitle];

  if (hasTitle)
  {
    return 49.0;
  }

  [(UIAlertControllerVisualStyleAlertModernTV *)self marginAboveTitleLabelFirstBaseline];
  return result;
}

- (double)minimumWidthFittingContentView:(id)view titleLabel:(id)label minimumWidthForAllActions:(double)actions preferredSizeForContentContainers:(CGSize)containers
{
  height = containers.height;
  width = containers.width;
  v41[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  labelCopy = label;
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  if ([descriptor numberOfVisibleActions] != 2)
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
  if (actions + actions + v15 + v17 + v18 > 588.0)
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

  [(UIAlertControllerVisualStyleAlertModernTV *)self _minimumAlertWidthWithTitleLabel:labelCopy withCandidateSizes:v30];
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
    [(UIAlertControllerVisualStyleAlertModernTV *)self _minimumAlertWidthWithContentView:viewCopy withCandidateSizes:v35 preferredSizeForContentContainers:width, height];
    v33 = v36;
  }

  return v33;
}

- (double)_minimumAlertWidthWithTitleLabel:(id)label withCandidateSizes:(id)sizes
{
  v30 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  sizesCopy = sizes;
  v8 = sizesCopy;
  v9 = 0.0;
  if (labelCopy && [sizesCopy count])
  {
    numberOfLines = [labelCopy numberOfLines];
    [labelCopy setNumberOfLines:0];
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
        text = [labelCopy text];
        attributedText = [labelCopy attributedText];
        _UIComputedSizeForLabel(labelCopy, text, attributedText, 0, &v24, 0, 0, v18, 1.79769313e308);

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

    [labelCopy setNumberOfLines:numberOfLines];
    if (fabs(v9) < 2.22044605e-16)
    {
      [(UIAlertControllerVisualStyleAlertModernTV *)self alertWidthExtraLarge];
      v9 = v22;
    }
  }

  return v9;
}

- (double)_minimumAlertWidthWithContentView:(id)view withCandidateSizes:(id)sizes preferredSizeForContentContainers:(CGSize)containers
{
  height = containers.height;
  width = containers.width;
  v34 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  sizesCopy = sizes;
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  [(UIAlertControllerVisualStyleAlertModernTV *)self maximumContentHeight];
  v13 = v12;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = sizesCopy;
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
        [viewCopy systemLayoutSizeFittingSize:v19 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v21, v22}];
        v24 = v23;
        if (([descriptor hasTitle] & 1) != 0 || objc_msgSend(descriptor, "hasMessage"))
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

- (double)actionWidthForMinimumActionWidth:(double)width availableWidth:(double)availableWidth
{
  [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
  v6 = v5 + v5;
  v7 = 640.0 - v6;
  result = availableWidth - v6;
  if (v7 < result)
  {
    return v7;
  }

  return result;
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)view
{
  v3 = _UIActionSheetPresentationControllerContentInsetsAdjustedForSafeAreaWithStandardContentInsets(view, 60.0, 80.0, 60.0, 80.0);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (int64_t)permittedActionLayoutDirection
{
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  numberOfVisibleActions = [descriptor numberOfVisibleActions];

  if (numberOfVisibleActions == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)dimmingViewForAlertController:(id)controller
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

- (void)animateAlertControllerView:(id)view ofAlertController:(id)controller forPresentation:(BOOL)presentation inContainerView:(id)containerView descendantOfContainerView:(id)ofContainerView duration:(double)duration completionBlock:(id)block
{
  presentationCopy = presentation;
  viewCopy = view;
  blockCopy = block;
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  v52 = *MEMORY[0x1E695EFD0];
  v53 = v16;
  v54 = *(MEMORY[0x1E695EFD0] + 32);
  v49 = v52;
  v50 = v16;
  v51 = v54;
  controllerCopy = controller;
  [(UIAlertControllerVisualStyleAlertModernTV *)self alertAnimationInitialScale];
  v19 = &v49;
  if (presentationCopy)
  {
    v19 = &v52;
    v20 = 0.357142857;
  }

  else
  {
    v20 = 0.5;
  }

  if (presentationCopy)
  {
    v21 = 0.476190476;
  }

  else
  {
    v21 = 0.5;
  }

  if (presentationCopy)
  {
    v22 = 0.523809524;
  }

  else
  {
    v22 = 0.0;
  }

  if (presentationCopy)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.0;
  }

  if (presentationCopy)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 1.0;
  }

  CGAffineTransformMakeScale(v19, v18, v18);
  _dimmingView = [controllerCopy _dimmingView];

  v48[0] = v52;
  v48[1] = v53;
  v48[2] = v54;
  [viewCopy setTransform:v48];
  [viewCopy setAlpha:v24];
  _preferredActionView = [viewCopy _preferredActionView];
  v27 = [[_UIAlertControllerVisualStyleAlertTVCustomCurveFactory alloc] initWithCustomCurve:0];
  v28 = [[_UIAlertControllerVisualStyleAlertTVCustomCurveFactory alloc] initWithCustomCurve:1];
  [_dimmingView setAlpha:v24];
  v44 = blockCopy;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __173__UIAlertControllerVisualStyleAlertModernTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke;
  v45[3] = &unk_1E70F32F0;
  v46 = _dimmingView;
  v47 = v23;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __173__UIAlertControllerVisualStyleAlertModernTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2;
  v43[3] = &unk_1E70F3608;
  v29 = blockCopy;
  v30 = _dimmingView;
  [UIView _animateWithDuration:393216 delay:v27 options:v45 factory:v43 animations:duration completion:0.0];
  [(UIAlertControllerVisualStyleAlertModernTV *)self alertAnimationHasDelay];
  if (v31 == 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v22 * duration;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __173__UIAlertControllerVisualStyleAlertModernTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3;
  v38[3] = &unk_1E70F3DC8;
  v33 = viewCopy;
  v39 = v33;
  v40 = v49;
  v41 = v50;
  v42 = v51;
  [UIView _animateWithDuration:393216 delay:v28 options:v38 factory:0 animations:v21 * duration completion:v32];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __173__UIAlertControllerVisualStyleAlertModernTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_4;
  v35[3] = &unk_1E70F32F0;
  v36 = v33;
  v37 = v23;
  v34 = v33;
  [UIView _animateWithDuration:393216 delay:v27 options:v35 factory:0 animations:v20 * duration completion:v32];
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
  associatedAlertBackgroundViewClass = [objc_opt_class() associatedAlertBackgroundViewClass];

  [associatedAlertBackgroundViewClass contentCornerRadius];
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