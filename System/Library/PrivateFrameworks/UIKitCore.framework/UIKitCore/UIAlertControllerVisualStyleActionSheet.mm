@interface UIAlertControllerVisualStyleActionSheet
+ (void)positionContentsOfAlertController:(id)controller alertContentView:(id)view availableSpaceView:(id)spaceView visualStyle:(id)style updatableConstraints:(id)constraints;
- (BOOL)hideCancelAction:(id)action inAlertController:(id)controller;
- (UIEdgeInsets)contentInsetsForContainerView:(id)view;
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
- (void)animateAlertControllerView:(id)view ofAlertController:(id)controller forPresentation:(BOOL)presentation inContainerView:(id)containerView descendantOfContainerView:(id)ofContainerView duration:(double)duration completionBlock:(id)block;
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
    descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
    hasMessage = [descriptor hasMessage];
    v5 = &UIFontTextStyleHeadline;
    if (!hasMessage)
    {
      v5 = &UIFontTextStyleBody;
    }

    v6 = *v5;

    traitCollection = [(UIAlertControllerVisualStyle *)self traitCollection];
    v8 = _traitCollectionByFlooringContentSizeCategoryToLarge(traitCollection);
    v9 = [off_1E70ECC18 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v8];
  }

  else
  {
    traitCollection = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote" addingSymbolicTraits:2 options:2];
    descriptor2 = [(UIAlertControllerVisualStyle *)self descriptor];
    hasMessage2 = [descriptor2 hasMessage];

    if ((hasMessage2 & 1) == 0)
    {
      v12 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote" addingSymbolicTraits:64 options:2];

      traitCollection = v12;
    }

    v9 = [off_1E70ECC18 fontWithDescriptor:traitCollection size:0.0];
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
    descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
    if ([descriptor hasTitle])
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
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  hasTitle = [descriptor hasTitle];
  v6 = hasTitle;
  if (v3)
  {
    v7 = &UIFontTextStyleSubheadline;
    if (!hasTitle)
    {
      v7 = &UIFontTextStyleBody;
    }

    v8 = *v7;

    traitCollection = [(UIAlertControllerVisualStyle *)self traitCollection];
    v10 = _traitCollectionByFlooringContentSizeCategoryToLarge(traitCollection);
    titleLabelFont = [off_1E70ECC18 preferredFontForTextStyle:v8 compatibleWithTraitCollection:v10];
  }

  else
  {

    if (v6)
    {
      v12 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote" addingSymbolicTraits:0 options:2];
      titleLabelFont = [off_1E70ECC18 fontWithDescriptor:v12 size:0.0];
    }

    else
    {
      titleLabelFont = [(UIAlertControllerVisualStyleActionSheet *)self titleLabelFont];
    }
  }

  return titleLabelFont;
}

- (id)messageLabelColor
{
  if (_UISolariumEnabled())
  {
    descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
    if ([descriptor hasTitle])
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
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  hasTitle = [descriptor hasTitle];

  if (hasTitle)
  {
    v5 = 22.0;
    if (_UISolariumEnabled())
    {
      messageLabelFont = [(UIAlertControllerVisualStyleActionSheet *)self messageLabelFont];
      [messageLabelFont lineHeight];
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
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  hasTitle = [descriptor hasTitle];

  if (hasTitle)
  {
    v5 = 28.0;
    if (_UISolariumEnabled())
    {
      descriptor2 = [(UIAlertControllerVisualStyle *)self descriptor];
      v5 = 20.0;
      if (([descriptor2 hasContentViewController] & 1) == 0)
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

  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  hasMessage = [descriptor hasMessage];

  if (hasMessage)
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
    descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
    isPad = [descriptor isPad];

    if (isPad)
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

- (UIEdgeInsets)contentInsetsForContainerView:(id)view
{
  viewCopy = view;
  v4 = _UISolariumEnabled();
  v5 = 8.0;
  if (v4)
  {
    v5 = 16.0;
  }

  v6 = _UIActionSheetPresentationControllerContentInsetsAdjustedForSafeAreaWithStandardContentInsets(viewCopy, v5, v5, v5, v5);
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

+ (void)positionContentsOfAlertController:(id)controller alertContentView:(id)view availableSpaceView:(id)spaceView visualStyle:(id)style updatableConstraints:(id)constraints
{
  v29[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  spaceViewCopy = spaceView;
  constraintsCopy = constraints;
  styleCopy = style;
  v14 = [constraintsCopy constraintForKey:@"UIAlertControllerVisualStyleActionSheet.centerX"];
  if (!v14)
  {
    centerXAnchor = [viewCopy centerXAnchor];
    centerXAnchor2 = [spaceViewCopy centerXAnchor];
    v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    [constraintsCopy addConstraint:v14 forKey:@"UIAlertControllerVisualStyleActionSheet.centerX"];
  }

  v17 = [constraintsCopy constraintForKey:@"UIAlertControllerVisualStyleActionSheet.bottom"];
  if (!v17)
  {
    bottomAnchor = [viewCopy bottomAnchor];
    bottomAnchor2 = [spaceViewCopy bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];

    [constraintsCopy addConstraint:v17 forKey:@"UIAlertControllerVisualStyleActionSheet.bottom"];
  }

  superview = [viewCopy superview];
  [styleCopy contentInsetsForContainerView:superview];
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

- (void)animateAlertControllerView:(id)view ofAlertController:(id)controller forPresentation:(BOOL)presentation inContainerView:(id)containerView descendantOfContainerView:(id)ofContainerView duration:(double)duration completionBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  containerViewCopy = containerView;
  controllerCopy = controller;
  [viewCopy center];
  v19 = v18;
  v21 = v20;
  [viewCopy center];
  v23 = v22;
  [containerViewCopy bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  superview = [viewCopy superview];
  [superview convertRect:containerViewCopy fromView:{v25, v27, v29, v31}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v64.origin.x = v34;
  v64.origin.y = v36;
  v64.size.width = v38;
  v64.size.height = v40;
  MaxY = CGRectGetMaxY(v64);
  [viewCopy frame];
  v43 = MaxY + v42 * 0.5;
  if (presentation)
  {
    v44 = MaxY + v42 * 0.5;
  }

  else
  {
    v44 = v21;
  }

  if (presentation)
  {
    v45 = v23;
  }

  else
  {
    v45 = v19;
  }

  if (presentation)
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 0.0;
  }

  if (presentation)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = 1.0;
  }

  if (!presentation)
  {
    v21 = v43;
    v19 = v23;
  }

  [viewCopy setCenter:{v45, v44}];
  _dimmingView = [controllerCopy _dimmingView];

  [_dimmingView setAlpha:v47];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __171__UIAlertControllerVisualStyleActionSheet_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke;
  aBlock[3] = &unk_1E71226C8;
  v61 = v19;
  v62 = v21;
  v59 = viewCopy;
  v60 = _dimmingView;
  v63 = v46;
  v49 = _dimmingView;
  v50 = viewCopy;
  v51 = _Block_copy(aBlock);
  v55 = blockCopy;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __171__UIAlertControllerVisualStyleActionSheet_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2;
  v56[3] = &unk_1E70F0F78;
  v57 = v51;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __171__UIAlertControllerVisualStyleActionSheet_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3;
  v54[3] = &unk_1E70F3608;
  v52 = blockCopy;
  v53 = v51;
  [UIView animateWithDuration:6 delay:v56 usingSpringWithDamping:v54 initialSpringVelocity:duration options:0.0 animations:600.0 completion:0.0];
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
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  if ([descriptor hasTitle])
  {
    v4 = 0;
  }

  else
  {
    descriptor2 = [(UIAlertControllerVisualStyle *)self descriptor];
    if ([descriptor2 hasMessage])
    {
      v4 = 0;
    }

    else
    {
      descriptor3 = [(UIAlertControllerVisualStyle *)self descriptor];
      hasContentViewController = [descriptor3 hasContentViewController];

      v4 = hasContentViewController ^ 1;
    }
  }

  traitCollection = [(UIAlertControllerVisualStyle *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if ((v4 & (verticalSizeClass == 1)) != 0)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (BOOL)hideCancelAction:(id)action inAlertController:(id)controller
{
  controllerCopy = controller;
  if (_UISolariumEnabled())
  {
    _isPresentedAsPopover = 1;
  }

  else
  {
    _isPresentedAsPopover = [controllerCopy _isPresentedAsPopover];
  }

  return _isPresentedAsPopover;
}

@end