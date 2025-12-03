@interface UIAlertControllerVisualStyle
+ (void)positionContentsOfAlertController:(id)controller alertContentView:(id)view availableSpaceView:(id)spaceView visualStyle:(id)style updatableConstraints:(id)constraints;
- (BOOL)isEqual:(id)equal;
- (CGSize)collectionViewOutsetSize;
- (CGSize)contentShadowOffset;
- (CGSize)minimumActionContentSize;
- (UIAlertControllerVisualStyle)init;
- (UIEdgeInsets)actionImageMarginForAction;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentInsetsForContainerView:(id)view;
- (UIEdgeInsets)textFieldContentInset;
- (UIWindow)window;
- (double)_labelHorizontalInsets;
- (double)_scaledMarginAboveDetailMessageFirstBaseline;
- (double)_scaledMarginAboveMessageLabelFirstBaseline;
- (double)_scaledMarginAboveTitleLabelFirstBaselineInAlertControllerView:(id)view titleText:(id)text;
- (double)_scaledMarginBelowDetailMessage;
- (double)_scaledMarginBelowLastLabelLastBaseline;
- (double)_scaledMarginBelowMessageLabelLastBaseline;
- (double)_scaledMarginBelowTitleLabelLastBaseline;
- (double)_scaledMessageSafeBaselineHeightInAlertControllerView:(id)view;
- (double)_scaledSafeBaselineHeightForLabelFont:(id)font inAlertControllerView:(id)view;
- (double)_scaledTitleLabelSafeBaselineHeightInAlertControllerView:(id)view;
- (double)accessibilityWidth;
- (double)actionSpacingForHorizontalLayout:(BOOL)layout;
- (double)actionWidthForMinimumActionWidth:(double)width availableWidth:(double)availableWidth;
- (double)contentCornerRadius;
- (double)contentHorizontalMargin;
- (double)contentVerticalMargin;
- (double)maximumHeightForDisplayOnScreen:(id)screen;
- (double)textFieldCornerRadius;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultActionFont;
- (id)dimmingViewForAlertController:(id)controller;
- (id)preferredActionFont;
- (id)regularActionFont;
- (id)titleLabelFont;
- (void)_reloadInterfaceActionVisualStyle;
- (void)configureAttributesForImageView:(id)view imageProperty:(id)property actionViewState:(id)state;
- (void)configureAttributesForTitleLabel:(id)label classificationLabel:(id)classificationLabel actionViewState:(id)state;
- (void)setDescriptor:(id)descriptor;
- (void)setForcedInterfaceIdiom:(int64_t)idiom;
- (void)setTraitCollection:(id)collection;
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
    mainScreen = [objc_opt_self() mainScreen];
    traitCollection = [mainScreen traitCollection];
    traitCollection = v3->_traitCollection;
    v3->_traitCollection = traitCollection;

    [(UIAlertControllerVisualStyle *)v3 _reloadInterfaceActionVisualStyle];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    traitCollection = [(UIAlertControllerVisualStyle *)self traitCollection];
    traitCollection2 = [v7 traitCollection];
    if ([traitCollection isEqual:traitCollection2])
    {
      descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
      descriptor2 = [v7 descriptor];
      v6 = [descriptor isEqual:descriptor2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  v7 = [descriptor copyWithZone:zone];
  v8 = v5[1];
  v5[1] = v7;

  traitCollection = [(UIAlertControllerVisualStyle *)self traitCollection];
  v10 = [traitCollection copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  return v5;
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (![(UITraitCollection *)self->_traitCollection isEqual:?])
  {
    objc_storeStrong(&self->_traitCollection, collection);
    [(UIAlertControllerVisualStyle *)self _reloadInterfaceActionVisualStyle];
  }
}

- (void)setDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (![(UIAlertControllerDescriptor *)self->_descriptor isEqual:?])
  {
    objc_storeStrong(&self->_descriptor, descriptor);
    [(UIAlertControllerVisualStyle *)self _reloadInterfaceActionVisualStyle];
  }
}

- (void)setForcedInterfaceIdiom:(int64_t)idiom
{
  if (self->_forcedInterfaceIdiom != idiom)
  {
    self->_forcedInterfaceIdiom = idiom;
    [(UIAlertControllerVisualStyle *)self _reloadInterfaceActionVisualStyle];
  }
}

- (void)_reloadInterfaceActionVisualStyle
{
  traitCollection = [(UIAlertControllerVisualStyle *)self traitCollection];
  v4 = traitCollection;
  forcedInterfaceIdiom = self->_forcedInterfaceIdiom;
  if (forcedInterfaceIdiom != -1)
  {
    v6 = [traitCollection _traitCollectionByReplacingNSIntegerValue:forcedInterfaceIdiom forTraitToken:0x1EFE32398];

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
  traitCollection = [(UIAlertControllerVisualStyle *)self traitCollection];
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline" compatibleWithTraitCollection:traitCollection];

  return v3;
}

- (double)accessibilityWidth
{
  if (!_UISolariumEnabled())
  {
    return 0.0;
  }

  window = [(UIAlertControllerVisualStyle *)self window];
  v4 = _accessibilityMaximumWidthWhenUsingAccessibilitySizes(window);

  return v4;
}

- (double)actionWidthForMinimumActionWidth:(double)width availableWidth:(double)availableWidth
{
  if (_UISolariumEnabled())
  {
    return 0.0;
  }

  [(UIAlertControllerVisualStyle *)self maximumWidth];
  return result;
}

- (double)maximumHeightForDisplayOnScreen:(id)screen
{
  [screen _applicationFrame];

  return CGRectGetHeight(*&v3);
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)view
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

+ (void)positionContentsOfAlertController:(id)controller alertContentView:(id)view availableSpaceView:(id)spaceView visualStyle:(id)style updatableConstraints:(id)constraints
{
  viewCopy = view;
  spaceViewCopy = spaceView;
  v10 = MEMORY[0x1E695DF70];
  styleCopy = style;
  array = [v10 array];
  centerXAnchor = [viewCopy centerXAnchor];
  safeAreaLayoutGuide = [spaceViewCopy safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v16];

  LODWORD(centerXAnchor) = [styleCopy shouldCenterVertically];
  if (centerXAnchor)
  {
    centerYAnchor = [viewCopy centerYAnchor];
    safeAreaLayoutGuide2 = [spaceViewCopy safeAreaLayoutGuide];
    centerYAnchor2 = [safeAreaLayoutGuide2 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v20];
  }

  [MEMORY[0x1E69977A0] activateConstraints:array];
}

- (id)defaultActionFont
{
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  v3 = [UIInterfaceActionViewState _nullViewStateForActionType:0];
  v4 = [interfaceActionVisualStyle actionTitleLabelFontForViewState:v3];

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

- (id)dimmingViewForAlertController:(id)controller
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
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [interfaceActionVisualStyle actionSequenceEdgeInsets];
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
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  defaultConcreteActionTitleLabelRegularFont = [interfaceActionVisualStyle defaultConcreteActionTitleLabelRegularFont];

  return defaultConcreteActionTitleLabelRegularFont;
}

- (id)preferredActionFont
{
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  defaultConcreteActionTitleLabelPreferredFont = [interfaceActionVisualStyle defaultConcreteActionTitleLabelPreferredFont];

  return defaultConcreteActionTitleLabelPreferredFont;
}

- (CGSize)minimumActionContentSize
{
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [interfaceActionVisualStyle minimumActionContentSize];
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
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [interfaceActionVisualStyle contentMargin];
  v4 = v3;

  return v4;
}

- (double)contentVerticalMargin
{
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [interfaceActionVisualStyle contentMargin];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)actionImageMarginForAction
{
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [interfaceActionVisualStyle verticalImageContentSpacing];
  v5 = v4;

  interfaceActionVisualStyle2 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [interfaceActionVisualStyle2 horizontalImageContentSpacing];
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

- (void)configureAttributesForTitleLabel:(id)label classificationLabel:(id)classificationLabel actionViewState:(id)state
{
  stateCopy = state;
  classificationLabelCopy = classificationLabel;
  labelCopy = label;
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [interfaceActionVisualStyle configureAttributesForTitleLabel:labelCopy classificationLabel:classificationLabelCopy actionViewState:stateCopy];
}

- (void)configureAttributesForImageView:(id)view imageProperty:(id)property actionViewState:(id)state
{
  stateCopy = state;
  propertyCopy = property;
  viewCopy = view;
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [interfaceActionVisualStyle configureAttributesForImageView:viewCopy imageProperty:propertyCopy actionViewState:stateCopy];
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

- (double)_scaledMarginAboveTitleLabelFirstBaselineInAlertControllerView:(id)view titleText:(id)text
{
  viewCopy = view;
  textCopy = text;
  titleLabelFont = [(UIAlertControllerVisualStyle *)self titleLabelFont];
  [(UIAlertControllerVisualStyle *)self marginAboveTitleLabelFirstBaseline];
  [titleLabelFont _scaledValueForValue:?];
  v10 = v9;

  v11 = textCopy;
  if ([v11 length])
  {
    v12 = +[UILabel _tooBigChars];
    v13 = [v11 rangeOfCharacterFromSet:v12];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIAlertControllerVisualStyle *)self _scaledTitleLabelSafeBaselineHeightInAlertControllerView:viewCopy];
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

- (double)_scaledSafeBaselineHeightForLabelFont:(id)font inAlertControllerView:(id)view
{
  viewCopy = view;
  fontCopy = font;
  CTFontGetLanguageAwareOutsets();
  [fontCopy ascender];

  UICeilToViewScale(viewCopy);
  v8 = v7;

  return v8;
}

- (double)_scaledTitleLabelSafeBaselineHeightInAlertControllerView:(id)view
{
  viewCopy = view;
  titleLabelFont = [(UIAlertControllerVisualStyle *)self titleLabelFont];
  [(UIAlertControllerVisualStyle *)self _scaledSafeBaselineHeightForLabelFont:titleLabelFont inAlertControllerView:viewCopy];
  v7 = v6;

  return v7;
}

- (double)_scaledMessageSafeBaselineHeightInAlertControllerView:(id)view
{
  viewCopy = view;
  messageLabelFont = [(UIAlertControllerVisualStyle *)self messageLabelFont];
  [(UIAlertControllerVisualStyle *)self _scaledSafeBaselineHeightForLabelFont:messageLabelFont inAlertControllerView:viewCopy];
  v7 = v6;

  return v7;
}

- (double)_scaledMarginBelowTitleLabelLastBaseline
{
  titleLabelFont = [(UIAlertControllerVisualStyle *)self titleLabelFont];
  [(UIAlertControllerVisualStyle *)self marginBelowTitleLabelLastBaseline];
  [titleLabelFont _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_scaledMarginAboveMessageLabelFirstBaseline
{
  messageLabelFont = [(UIAlertControllerVisualStyle *)self messageLabelFont];
  [(UIAlertControllerVisualStyle *)self marginAboveMessageLabelFirstBaseline];
  [messageLabelFont _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_scaledMarginBelowMessageLabelLastBaseline
{
  messageLabelFont = [(UIAlertControllerVisualStyle *)self messageLabelFont];
  [(UIAlertControllerVisualStyle *)self marginBelowMessageLabelLastBaseline];
  [messageLabelFont _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_scaledMarginBelowLastLabelLastBaseline
{
  titleLabelFont = [(UIAlertControllerVisualStyle *)self titleLabelFont];
  [(UIAlertControllerVisualStyle *)self marginBelowLastLabelLastBaseline];
  [titleLabelFont _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_scaledMarginAboveDetailMessageFirstBaseline
{
  _detailMessageFont = [(UIAlertControllerVisualStyle *)self _detailMessageFont];
  [(UIAlertControllerVisualStyle *)self _marginAboveDetailMessageFirstBaseline];
  [_detailMessageFont _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_scaledMarginBelowDetailMessage
{
  _detailMessageFont = [(UIAlertControllerVisualStyle *)self _detailMessageFont];
  [(UIAlertControllerVisualStyle *)self _marginBelowDetailMessage];
  [_detailMessageFont _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)actionSpacingForHorizontalLayout:(BOOL)layout
{
  layoutCopy = layout;
  interfaceActionVisualStyle = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  groupViewState = [interfaceActionVisualStyle groupViewState];

  v7 = [groupViewState copyWithVerticalLayoutAxis:!layoutCopy];
  interfaceActionVisualStyle2 = [(UIAlertControllerVisualStyle *)self interfaceActionVisualStyle];
  [interfaceActionVisualStyle2 actionSpacingForGroupViewState:v7];
  v10 = v9;

  return v10;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end