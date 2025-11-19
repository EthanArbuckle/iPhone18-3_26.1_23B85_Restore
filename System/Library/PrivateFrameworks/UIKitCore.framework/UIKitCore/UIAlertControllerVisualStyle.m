@interface UIAlertControllerVisualStyle
+ (void)positionContentsOfAlertController:(id)a3 alertContentView:(id)a4 availableSpaceView:(id)a5 visualStyle:(id)a6 updatableConstraints:(id)a7;
- (BOOL)isEqual:(id)a3;
- (CGSize)collectionViewOutsetSize;
- (CGSize)contentShadowOffset;
- (CGSize)minimumActionContentSize;
- (UIAlertControllerVisualStyle)init;
- (UIEdgeInsets)actionImageMarginForAction;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentInsetsForContainerView:(id)a3;
- (UIEdgeInsets)textFieldContentInset;
- (UIWindow)window;
- (double)_labelHorizontalInsets;
- (double)_scaledMarginAboveDetailMessageFirstBaseline;
- (double)_scaledMarginAboveMessageLabelFirstBaseline;
- (double)_scaledMarginAboveTitleLabelFirstBaselineInAlertControllerView:(id)a3 titleText:(id)a4;
- (double)_scaledMarginBelowDetailMessage;
- (double)_scaledMarginBelowLastLabelLastBaseline;
- (double)_scaledMarginBelowMessageLabelLastBaseline;
- (double)_scaledMarginBelowTitleLabelLastBaseline;
- (double)_scaledMessageSafeBaselineHeightInAlertControllerView:(id)a3;
- (double)_scaledSafeBaselineHeightForLabelFont:(id)a3 inAlertControllerView:(id)a4;
- (double)_scaledTitleLabelSafeBaselineHeightInAlertControllerView:(id)a3;
- (double)accessibilityWidth;
- (double)actionSpacingForHorizontalLayout:(BOOL)a3;
- (double)actionWidthForMinimumActionWidth:(double)a3 availableWidth:(double)a4;
- (double)contentCornerRadius;
- (double)contentHorizontalMargin;
- (double)contentVerticalMargin;
- (double)maximumHeightForDisplayOnScreen:(id)a3;
- (double)textFieldCornerRadius;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultActionFont;
- (id)dimmingViewForAlertController:(id)a3;
- (id)preferredActionFont;
- (id)regularActionFont;
- (id)titleLabelFont;
- (void)_reloadInterfaceActionVisualStyle;
- (void)configureAttributesForImageView:(id)a3 imageProperty:(id)a4 actionViewState:(id)a5;
- (void)configureAttributesForTitleLabel:(id)a3 classificationLabel:(id)a4 actionViewState:(id)a5;
- (void)setDescriptor:(id)a3;
- (void)setForcedInterfaceIdiom:(int64_t)a3;
- (void)setTraitCollection:(id)a3;
@end

@implementation UIAlertControllerVisualStyle

- (UIAlertControllerVisualStyle)init
{
  v8.receiver = self;
  v8.super_class = UIAlertControllerVisualStyle;
  v2 = [(UIAlertControllerVisualStyle *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_forcedInterfaceIdiom = -1;
    v4 = [objc_opt_self() mainScreen];
    v5 = [v4 traitCollection];
    traitCollection = v3->_traitCollection;
    v3->_traitCollection = v5;

    [(UIAlertControllerVisualStyle *)v3 _reloadInterfaceActionVisualStyle];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = [(UIAlertControllerVisualStyle *)self traitCollection];
    v9 = [v7 traitCollection];
    if ([v8 isEqual:v9])
    {
      v10 = [(UIAlertControllerVisualStyle *)self descriptor];
      v11 = [v7 descriptor];
      v6 = [v10 isEqual:v11];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(UIAlertControllerVisualStyle *)self descriptor];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[1];
  v5[1] = v7;

  v9 = [(UIAlertControllerVisualStyle *)self traitCollection];
  v10 = [v9 copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  return v5;
}

- (void)setTraitCollection:(id)a3
{
  v5 = a3;
  if (![(UITraitCollection *)self->_traitCollection isEqual:?])
  {
    objc_storeStrong(&self->_traitCollection, a3);
    [(UIAlertControllerVisualStyle *)self _reloadInterfaceActionVisualStyle];
  }
}

- (void)setDescriptor:(id)a3
{
  v5 = a3;
  if (![(UIAlertControllerDescriptor *)self->_descriptor isEqual:?])
  {
    objc_storeStrong(&self->_descriptor, a3);
    [(UIAlertControllerVisualStyle *)self _reloadInterfaceActionVisualStyle];
  }
}

- (void)setForcedInterfaceIdiom:(int64_t)a3
{
  if (self->_forcedInterfaceIdiom != a3)
  {
    self->_forcedInterfaceIdiom = a3;
    [(UIAlertControllerVisualStyle *)self _reloadInterfaceActionVisualStyle];
  }
}

- (void)_reloadInterfaceActionVisualStyle
{
  v3 = [(UIAlertControllerVisualStyle *)self traitCollection];
  v4 = v3;
  forcedInterfaceIdiom = self->_forcedInterfaceIdiom;
  if (forcedInterfaceIdiom != -1)
  {
    v6 = [v3 _traitCollectionByReplacingNSIntegerValue:forcedInterfaceIdiom forTraitToken:0x1EFE32398];

    v4 = v6;
  }

  v7 = -[objc_class idiomSpecificStyleForTraitCollection:presentationStyle:](-[UIAlertControllerVisualStyle interfaceActionVisualStyleClassForManagingConcreteVisualStyle](self, "interfaceActionVisualStyleClassForManagingConcreteVisualStyle"), "idiomSpecificStyleForTraitCollection:presentationStyle:", v4, [objc_opt_class() interfaceActionPresentationStyle]);
  interfaceActionVisualStyle = self->_interfaceActionVisualStyle;
  self->_interfaceActionVisualStyle = v7;

  objc_initWeak(&location, self);
  v9 = self->_interfaceActionVisualStyle;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__UIAlertControllerVisualStyle__reloadInterfaceActionVisualStyle__block_invoke;
  v10[3] = &unk_1E70F3AD8;
  objc_copyWeak(&v11, &location);
  [(UIInterfaceActionVisualStyle *)v9 setFontForViewStateBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __65__UIAlertControllerVisualStyle__reloadInterfaceActionVisualStyle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v3 isPreferred])
    {
      [WeakRetained preferredActionFont];
    }

    else
    {
      [WeakRetained regularActionFont];
    }
    v5 = ;
  }

  else
  {
    v5 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
  }

  v6 = v5;

  return v6;
}

- (id)titleLabelFont
{
  v2 = [(UIAlertControllerVisualStyle *)self traitCollection];
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline" compatibleWithTraitCollection:v2];

  return v3;
}

- (double)accessibilityWidth
{
  if (!_UISolariumEnabled())
  {
    return 0.0;
  }

  v3 = [(UIAlertControllerVisualStyle *)self window];
  v4 = _accessibilityMaximumWidthWhenUsingAccessibilitySizes(v3);

  return v4;
}

- (double)actionWidthForMinimumActionWidth:(double)a3 availableWidth:(double)a4
{
  if (_UISolariumEnabled())
  {
    return 0.0;
  }

  [(UIAlertControllerVisualStyle *)self maximumWidth];
  return result;
}

- (double)maximumHeightForDisplayOnScreen:(id)a3
{
  [a3 _applicationFrame];

  return CGRectGetHeight(*&v3);
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

+ (void)positionContentsOfAlertController:(id)a3 alertContentView:(id)a4 availableSpaceView:(id)a5 visualStyle:(id)a6 updatableConstraints:(id)a7
{
  v21 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF70];
  v11 = a6;
  v12 = [v10 array];
  v13 = [v21 centerXAnchor];
  v14 = [v9 safeAreaLayoutGuide];
  v15 = [v14 centerXAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v12 addObject:v16];

  LODWORD(v13) = [v11 shouldCenterVertically];
  if (v13)
  {
    v17 = [v21 centerYAnchor];
    v18 = [v9 safeAreaLayoutGuide];
    v19 = [v18 centerYAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [v12 addObject:v20];
  }

  [MEMORY[0x1E69977A0] activateConstraints:v12];
}

- (id)defaultActionFont
{
  v2 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  v3 = [UIInterfaceActionViewState _nullViewStateForActionType:0];
  v4 = [v2 actionTitleLabelFontForViewState:v3];

  return v4;
}

- (CGSize)collectionViewOutsetSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)textFieldContentInset
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)textFieldCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 7.0;
  if (v2)
  {
    return 24.0;
  }

  return result;
}

- (id)dimmingViewForAlertController:(id)a3
{
  v3 = [UIView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor _alertControllerDimmingViewColor];
  [(UIView *)v4 setBackgroundColor:v5];

  return v4;
}

- (double)contentCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 34.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (CGSize)contentShadowOffset
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)actionSequenceEdgeInsets
{
  v2 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [v2 actionSequenceEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (id)regularActionFont
{
  v2 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  v3 = [v2 defaultConcreteActionTitleLabelRegularFont];

  return v3;
}

- (id)preferredActionFont
{
  v2 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  v3 = [v2 defaultConcreteActionTitleLabelPreferredFont];

  return v3;
}

- (CGSize)minimumActionContentSize
{
  v2 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [v2 minimumActionContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)contentHorizontalMargin
{
  v2 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [v2 contentMargin];
  v4 = v3;

  return v4;
}

- (double)contentVerticalMargin
{
  v2 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [v2 contentMargin];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)actionImageMarginForAction
{
  v3 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [v3 verticalImageContentSpacing];
  v5 = v4;

  v6 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [v6 horizontalImageContentSpacing];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  v11 = v5;
  v12 = v8;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (void)configureAttributesForTitleLabel:(id)a3 classificationLabel:(id)a4 actionViewState:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [v11 configureAttributesForTitleLabel:v10 classificationLabel:v9 actionViewState:v8];
}

- (void)configureAttributesForImageView:(id)a3 imageProperty:(id)a4 actionViewState:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [v11 configureAttributesForImageView:v10 imageProperty:v9 actionViewState:v8];
}

- (double)_labelHorizontalInsets
{
  v2 = _UISolariumEnabled();
  result = 16.0;
  if (v2)
  {
    return 30.0;
  }

  return result;
}

- (double)_scaledMarginAboveTitleLabelFirstBaselineInAlertControllerView:(id)a3 titleText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIAlertControllerVisualStyle *)self titleLabelFont];
  [(UIAlertControllerVisualStyle *)self marginAboveTitleLabelFirstBaseline];
  [v8 _scaledValueForValue:?];
  v10 = v9;

  v11 = v7;
  if ([v11 length])
  {
    v12 = +[UILabel _tooBigChars];
    v13 = [v11 rangeOfCharacterFromSet:v12];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIAlertControllerVisualStyle *)self _scaledTitleLabelSafeBaselineHeightInAlertControllerView:v6];
      if (v10 < v14)
      {
        v10 = v14;
      }
    }
  }

  else
  {
  }

  return v10;
}

- (double)_scaledSafeBaselineHeightForLabelFont:(id)a3 inAlertControllerView:(id)a4
{
  v5 = a4;
  v6 = a3;
  CTFontGetLanguageAwareOutsets();
  [v6 ascender];

  UICeilToViewScale(v5);
  v8 = v7;

  return v8;
}

- (double)_scaledTitleLabelSafeBaselineHeightInAlertControllerView:(id)a3
{
  v4 = a3;
  v5 = [(UIAlertControllerVisualStyle *)self titleLabelFont];
  [(UIAlertControllerVisualStyle *)self _scaledSafeBaselineHeightForLabelFont:v5 inAlertControllerView:v4];
  v7 = v6;

  return v7;
}

- (double)_scaledMessageSafeBaselineHeightInAlertControllerView:(id)a3
{
  v4 = a3;
  v5 = [(UIAlertControllerVisualStyle *)self messageLabelFont];
  [(UIAlertControllerVisualStyle *)self _scaledSafeBaselineHeightForLabelFont:v5 inAlertControllerView:v4];
  v7 = v6;

  return v7;
}

- (double)_scaledMarginBelowTitleLabelLastBaseline
{
  v3 = [(UIAlertControllerVisualStyle *)self titleLabelFont];
  [(UIAlertControllerVisualStyle *)self marginBelowTitleLabelLastBaseline];
  [v3 _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_scaledMarginAboveMessageLabelFirstBaseline
{
  v3 = [(UIAlertControllerVisualStyle *)self messageLabelFont];
  [(UIAlertControllerVisualStyle *)self marginAboveMessageLabelFirstBaseline];
  [v3 _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_scaledMarginBelowMessageLabelLastBaseline
{
  v3 = [(UIAlertControllerVisualStyle *)self messageLabelFont];
  [(UIAlertControllerVisualStyle *)self marginBelowMessageLabelLastBaseline];
  [v3 _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_scaledMarginBelowLastLabelLastBaseline
{
  v3 = [(UIAlertControllerVisualStyle *)self titleLabelFont];
  [(UIAlertControllerVisualStyle *)self marginBelowLastLabelLastBaseline];
  [v3 _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_scaledMarginAboveDetailMessageFirstBaseline
{
  v3 = [(UIAlertControllerVisualStyle *)self _detailMessageFont];
  [(UIAlertControllerVisualStyle *)self _marginAboveDetailMessageFirstBaseline];
  [v3 _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_scaledMarginBelowDetailMessage
{
  v3 = [(UIAlertControllerVisualStyle *)self _detailMessageFont];
  [(UIAlertControllerVisualStyle *)self _marginBelowDetailMessage];
  [v3 _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)actionSpacingForHorizontalLayout:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  v6 = [v5 groupViewState];

  v7 = [v6 copyWithVerticalLayoutAxis:!v3];
  v8 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [v8 actionSpacingForGroupViewState:v7];
  v10 = v9;

  return v10;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end