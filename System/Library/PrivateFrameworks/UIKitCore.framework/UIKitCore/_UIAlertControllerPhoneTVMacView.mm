@interface _UIAlertControllerPhoneTVMacView
+ (void)initialize;
- (BOOL)_buttonsAreTopMost;
- (BOOL)_canLayOutActionsHorizontally;
- (BOOL)_hasAttributedMessage;
- (BOOL)_hasAttributedTitle;
- (BOOL)_hasDetailMessage;
- (BOOL)_hasDiscreteCancelAction;
- (BOOL)_hasMessage;
- (BOOL)_hasTextFields;
- (BOOL)_hasTitle;
- (BOOL)_horizontalLayoutCanUseFullWidth;
- (BOOL)_shouldAllowPassthroughToLayersBehindUsForTouches:(id)touches;
- (BOOL)_shouldHaveCancelActionInMainActionButtonSequenceView;
- (BOOL)_titleAndMessageLabelUseVibrancy;
- (BOOL)cancelActionIsDiscrete;
- (BOOL)hasDiscreteHorizontalCancelAction;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (BOOL)showsCancelAction;
- (CGSize)_contentViewControllerSize;
- (CGSize)_itemSizeForHorizontalLayout:(BOOL)layout;
- (CGSize)_itemSizeForHorizontalLayout:(BOOL)layout visualStyleRequiresActionRepresentationToFitItemSize:(BOOL *)size;
- (CGSize)_layoutSize;
- (CGSize)_mainActionButtonSequenceViewSizeForHorizontalLayout:(BOOL)layout itemSize:(CGSize)size;
- (CGSize)_minimumSizeForAllActions;
- (CGSize)_sizeForLayoutWidthDetermination;
- (UIEdgeInsets)_contentInsets;
- (_UIAlertControllerPhoneTVMacView)initWithFrame:(CGRect)frame;
- (double)_availableWidthForHorizontalLayout:(BOOL)layout;
- (double)_idealLayoutWidth;
- (double)_labelHorizontalInsets;
- (double)_layoutWidthForHorizontalLayout:(BOOL)layout;
- (double)_marginBetweenInterfaceActionGroups;
- (double)_maximumWidthUsingAccessibilityWidthIfActionsAreTruncated:(double)truncated;
- (double)_minimumWidthFittingAlertContents;
- (double)_spaceRequiredForActionSectionsSpacing;
- (double)_verticalLayoutWidth;
- (id)__cancelActionView;
- (id)_attributedDetailMessage;
- (id)_attributedMessage;
- (id)_attributedTitle;
- (id)_discreteCancelActionView;
- (id)_focusedAction;
- (id)_indexesOfActionSectionSeparators;
- (id)_interfaceActionForAlertAction:(id)action inActionGroupView:(id)view;
- (id)_preferredActionView;
- (id)_presentableAlertActions;
- (id)_textFieldViewController;
- (id)_unlocalizedOrderedPresentableAlertActionViewRepresentations;
- (id)_unlocalizedOrderedPresentableAlertActions;
- (id)_vibrancyEffectForTitleAndMessageLabel;
- (id)actions;
- (id)alertController;
- (id)cancelAction;
- (id)contentViewController;
- (id)headerContentViewController;
- (id)message;
- (id)preferredFocusedView;
- (id)separatedHeaderContentViewController;
- (id)textFields;
- (id)title;
- (int64_t)_numberOfActionsForMainActionButtonSequenceView;
- (void)_actionLayoutDirectionChanged;
- (void)_actionsChanged;
- (void)_addContentViewControllerToViewHierarchyIfNecessary;
- (void)_addHeaderContentViewControllerToViewHierarchyIfNecessary;
- (void)_addSeparatedHeaderContentViewControllerToViewHierarchyIfNecessary;
- (void)_applyContentViewControllerContainerViewConstraints;
- (void)_applyContentViewControllerLayoutGuideConstraints;
- (void)_applyDetailMessageConstraints;
- (void)_applyHeaderContentViewControllerContainerViewConstraints;
- (void)_applyISEngineLayoutValuesToBoundsOnly:(BOOL)only;
- (void)_applyKeyboardAlignmentViewsConstraints;
- (void)_applyMessageConstraints;
- (void)_applySeparatedContentViewControllerContainerViewContraints;
- (void)_applyTextFieldViewControllerContainerViewConstraints;
- (void)_applyTitleAndMessageLabelVibrantContainerViewConstraints;
- (void)_applyTitleConstraints;
- (void)_applyViewConstraints;
- (void)_associateActionsWithActionViews;
- (void)_configureActionGroupViewToAllowHorizontalLayout:(BOOL)layout;
- (void)_contentSizeChanged;
- (void)_disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator:(id)coordinator;
- (void)_ensureActionViewRepresentationsHaveMetrics;
- (void)_layoutAndPositionInParentIfNeeded;
- (void)_performBatchActionChangesWithBlock:(id)block;
- (void)_prepareContentView;
- (void)_prepareContentViewControllerContainerView;
- (void)_prepareContentViewControllerLayoutGuide;
- (void)_prepareContentViewTopItemsView;
- (void)_prepareDetailMessageLabel;
- (void)_prepareDimmingView;
- (void)_prepareDimmingViewConstraints;
- (void)_prepareDiscreteCancelActionGroupView;
- (void)_prepareForWindowDealloc;
- (void)_prepareForWindowHostingSceneRemoval;
- (void)_prepareHeaderContentViewControllerContainerView;
- (void)_prepareKeyboardLayoutAlignmentViews;
- (void)_prepareMainInterfaceActionsGroupView;
- (void)_prepareMesssageLabel;
- (void)_prepareSeparateContentViewControllerContainerView;
- (void)_prepareTextFieldViewControllerContainerView;
- (void)_prepareTitleAndMessageLabelVibrantContainer;
- (void)_prepareTitleLabel;
- (void)_prepareViewsAndAddConstraints;
- (void)_recomputeActionMetrics;
- (void)_recomputeAlertControllerWidth;
- (void)_reevaluateSuperviewSizingConstraints;
- (void)_reloadInterfaceActionViewRepresentations;
- (void)_reloadInterfaceActionsGroupViewPreferredAction;
- (void)_removeContentViewControllerViewFromHierarchy;
- (void)_removeHeaderContentViewControllerViewFromHierarchy;
- (void)_removeSeparatedHeaderContentViewControllerFromHierarchy;
- (void)_scrollInitialActionToVisibleForPresentation;
- (void)_setActionsReversed:(BOOL)reversed;
- (void)_setAttributedDetailMessage:(id)message;
- (void)_setAttributedMessage:(id)message;
- (void)_setAttributedTitle:(id)title;
- (void)_setMessage:(id)message;
- (void)_setTitle:(id)title;
- (void)_setVisualStyle:(id)style;
- (void)_setupHorizontalConstraintsForLabelView:(id)view;
- (void)_sizeOfContentViewControllerChanged;
- (void)_sizeOfHeaderContentViewControllerChanged;
- (void)_sizeOfTextFieldViewControllerChanged;
- (void)_textFieldsChanged;
- (void)_updateActionViewHeight;
- (void)_updateActionViewVisualStyle:(id)style;
- (void)_updateActionsGroupPresentationStyles;
- (void)_updateBackdropView:(BOOL)view;
- (void)_updateCancelActionBeingDiscrete;
- (void)_updateConstraintConstants;
- (void)_updateConstraintSpacingForExternalOffset;
- (void)_updateContentView;
- (void)_updateDetailLabelContents;
- (void)_updateDetailLabelFontSize;
- (void)_updateForPropertyChangeIfNeeded;
- (void)_updateGlassBackground;
- (void)_updateInsets;
- (void)_updateLabelFontSizes;
- (void)_updateLabelProperties;
- (void)_updateLabelTextColor;
- (void)_updateMainGroupViewProperties;
- (void)_updateMainScrollableHeaderViewHasRealContent;
- (void)_updateMessageLabelContents;
- (void)_updateMessageLabelFontSize;
- (void)_updatePreferredAction;
- (void)_updateStyleForIdiomChange:(BOOL)change;
- (void)_updateTextAlignmentAfterLayout;
- (void)_updateTintColor;
- (void)_updateTitleLabelContents;
- (void)_updateTitleLabelFontSize;
- (void)_willMoveToWindow:(id)window;
- (void)beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:(id)recognizer;
- (void)configureForDismissAlongsideTransitionCoordinator:(id)coordinator;
- (void)configureForPresentAlongsideTransitionCoordinator:(id)coordinator;
- (void)dealloc;
- (void)deselectAllActions;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)interfaceAction:(id)action invokeActionHandler:(id)handler completion:(id)completion;
- (void)setActionScrubbingEnabled:(BOOL)enabled;
- (void)setAlertController:(id)controller;
- (void)setAlignsToKeyboard:(BOOL)keyboard;
- (void)setCancelActionIsDiscrete:(BOOL)discrete;
- (void)setHasDimmingView:(BOOL)view;
- (void)setPresentationContextPrefersCancelActionShown:(BOOL)shown;
- (void)setPresentedAsPopover:(BOOL)popover;
- (void)setShouldHaveBackdropView:(BOOL)view;
- (void)setSpringLoaded:(BOOL)loaded;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateConstraints;
- (void)updateObservations:(id)observations;
@end

@implementation _UIAlertControllerPhoneTVMacView

- (_UIAlertControllerPhoneTVMacView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIAlertControllerPhoneTVMacView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    *&v3->_alertControllerViewFlags &= ~0x200u;
    if (_UIAppUseModernRotationAndPresentationBehaviors())
    {
      [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else
    {
      [(UIView *)v4 _setHostsLayoutEngine:1];
      [(UIView *)v4 setAutoresizingMask:18];
    }

    [(_UIAlertControllerPhoneTVMacView *)v4 _setLayoutSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v4->_presentationContextPrefersCancelActionShown = 1;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionViews = v4->_actionViews;
    v4->_actionViews = v5;

    v4->_actionScrubbingEnabled = 1;
    [(UIView *)v4 setPreservesSuperviewLayoutMargins:0];
  }

  return v4;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIContentSizeCategoryDidChangeNotification";
  v6[1] = @"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewVisualStyle:0];
  v5.receiver = self;
  v5.super_class = _UIAlertControllerPhoneTVMacView;
  [(UIView *)&v5 dealloc];
}

+ (void)initialize
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v3 = [(UIView *)_UIAlertControllerPhoneTVMacView appearanceWhenContainedInInstancesOfClasses:v2];

  v16 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v5 = [(UIView *)_UIAlertControllerPhoneTVMacView appearanceWhenContainedInInstancesOfClasses:v4];

  __46___UIAlertControllerPhoneTVMacView_initialize__block_invoke(v3);
  __46___UIAlertControllerPhoneTVMacView_initialize__block_invoke(v5);
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v7 = [(UIView *)_UIAlertControllerPhoneTVMacView appearanceWhenContainedInInstancesOfClasses:v6];

  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v9 = [(UIView *)_UIAlertControllerPhoneTVMacView appearanceWhenContainedInInstancesOfClasses:v8];

  __46___UIAlertControllerPhoneTVMacView_initialize__block_invoke_2(v7);
  __46___UIAlertControllerPhoneTVMacView_initialize__block_invoke_2(v9);
  v13 = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v11 = [(UIView *)_UIAlertControllerPhoneTVMacView appearanceWhenContainedInInstancesOfClasses:v10];

  v12 = v11;
  [v12 setPresentationContextPrefersCancelActionShown:1];
  [v12 setPresentedAsPopover:0];
  [v12 setShouldHaveBackdropView:1];
}

- (void)updateObservations:(id)observations
{
  v10[1] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if (observations)
  {
    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(UIView *)self registerForTraitChanges:v6 withAction:sel__contentSizeChanged];
    contentSizeCategoryTraitRegistration = self->_contentSizeCategoryTraitRegistration;
    self->_contentSizeCategoryTraitRegistration = v7;

    [defaultCenter addObserver:self selector:sel__accessibilityColorsChanged name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];
  }

  else
  {
    [(UIView *)self unregisterForTraitChanges:self->_contentSizeCategoryTraitRegistration];
    v9 = self->_contentSizeCategoryTraitRegistration;
    self->_contentSizeCategoryTraitRegistration = 0;

    [defaultCenter removeObserver:self name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];
  }
}

- (void)setAlertController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_alertController, obj);
    v5 = obj;
    if (obj)
    {
      [(_UIAlertControllerPhoneTVMacView *)self _prepareViewsAndAddConstraints];
      v5 = obj;
    }
  }

  [(_UIAlertControllerPhoneTVMacView *)self updateObservations:v5];
}

- (id)alertController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  return WeakRetained;
}

- (void)_prepareViewsAndAddConstraints
{
  [(_UIAlertControllerPhoneTVMacView *)self _prepareContentView];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareMainInterfaceActionsGroupView];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareDiscreteCancelActionGroupView];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareContentViewTopItemsView];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareSeparateContentViewControllerContainerView];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareHeaderContentViewControllerContainerView];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareTitleLabel];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareMesssageLabel];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareDetailMessageLabel];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareContentViewControllerContainerView];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareContentViewControllerLayoutGuide];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareTextFieldViewControllerContainerView];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareDimmingView];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareKeyboardLayoutAlignmentViews];
  [(_UIAlertControllerPhoneTVMacView *)self _applyViewConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyHeaderContentViewControllerContainerViewConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applySeparatedContentViewControllerContainerViewContraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyContentViewControllerContainerViewConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyContentViewControllerLayoutGuideConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyTextFieldViewControllerContainerViewConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _prepareDimmingViewConstraints];

  [(_UIAlertControllerPhoneTVMacView *)self _propertiesChanged];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _UIAlertControllerPhoneTVMacView;
  [(UIView *)&v3 updateConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyTitleAndMessageLabelVibrantContainerViewConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyTitleConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyMessageConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyDetailMessageConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _updateConstraintSpacingForExternalOffset];
  [(_UIAlertControllerPhoneTVMacView *)self _updateForPropertyChangeIfNeeded];
}

- (void)_prepareContentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->_contentView;
    self->_contentView = v4;

    [(UIView *)self addSubview:self->_contentView];
    contentView = self->_contentView;
  }

  [(UIView *)contentView setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_prepareContentViewTopItemsView
{
  if (!self->_contentViewTopItemsView)
  {
    v3 = objc_alloc_init(_UIAlertControllerLayoutObservingContainerView);
    contentViewTopItemsView = self->_contentViewTopItemsView;
    self->_contentViewTopItemsView = v3;

    if (_UISolariumEnabled())
    {
      objc_initWeak(&location, self);
      v5 = MEMORY[0x1E69E9820];
      v6 = 3221225472;
      v7 = __67___UIAlertControllerPhoneTVMacView__prepareContentViewTopItemsView__block_invoke;
      v8 = &unk_1E70F5A28;
      objc_copyWeak(&v9, &location);
      [(_UIAlertControllerLayoutObservingContainerView *)self->_contentViewTopItemsView setPostLayoutBlock:&v5];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }

    [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView insertArrangedHeaderView:self->_contentViewTopItemsView atIndex:0 scrollable:1, v5, v6, v7, v8];
  }
}

- (void)_prepareHeaderContentViewControllerContainerView
{
  if (!self->_headerContentViewControllerContainerView)
  {
    v3 = objc_alloc_init(UIView);
    headerContentViewControllerContainerView = self->_headerContentViewControllerContainerView;
    self->_headerContentViewControllerContainerView = v3;

    [(UIView *)self->_headerContentViewControllerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_headerContentViewControllerContainerView setClipsToBounds:1];
    LODWORD(v5) = 1144750080;
    [(UIView *)self->_headerContentViewControllerContainerView setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1144750080;
    [(UIView *)self->_headerContentViewControllerContainerView setContentHuggingPriority:1 forAxis:v6];
    LODWORD(v7) = 1144750080;
    [(UIView *)self->_headerContentViewControllerContainerView setContentCompressionResistancePriority:0 forAxis:v7];
    LODWORD(v8) = 1144750080;
    [(UIView *)self->_headerContentViewControllerContainerView setContentCompressionResistancePriority:1 forAxis:v8];
    contentViewTopItemsView = self->_contentViewTopItemsView;
    v10 = self->_headerContentViewControllerContainerView;

    [(UIView *)contentViewTopItemsView addSubview:v10];
  }
}

- (void)_prepareSeparateContentViewControllerContainerView
{
  separatedHeaderContentViewController = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewController];
  if (separatedHeaderContentViewController)
  {
    separatedHeaderContentViewControllerContainerView = self->_separatedHeaderContentViewControllerContainerView;

    if (!separatedHeaderContentViewControllerContainerView)
    {
      v5 = objc_alloc_init(UIView);
      v6 = self->_separatedHeaderContentViewControllerContainerView;
      self->_separatedHeaderContentViewControllerContainerView = v5;

      [(UIView *)self->_separatedHeaderContentViewControllerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_separatedHeaderContentViewControllerContainerView setClipsToBounds:1];
      actionGroup = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionGroup];
      _visualStyle = [actionGroup _visualStyle];
      [_visualStyle contentCornerRadius];
      v10 = v9;

      layer = [(UIView *)self->_separatedHeaderContentViewControllerContainerView layer];
      [layer setCornerRadius:v10];

      [(UIView *)self->_separatedHeaderContentViewControllerContainerView setOpaque:0];
      v12 = self->_separatedHeaderContentViewControllerContainerView;
      v13 = +[UIColor clearColor];
      [(UIView *)v12 setBackgroundColor:v13];

      contentView = self->_contentView;
      v15 = self->_separatedHeaderContentViewControllerContainerView;

      [(UIView *)contentView addSubview:v15];
    }
  }
}

- (void)_prepareTitleAndMessageLabelVibrantContainer
{
  if (!self->_titleAndMessageLabelVibrantContainerView && [(_UIAlertControllerPhoneTVMacView *)self _titleAndMessageLabelUseVibrancy])
  {
    _vibrancyEffectForTitleAndMessageLabel = [(_UIAlertControllerPhoneTVMacView *)self _vibrancyEffectForTitleAndMessageLabel];
    v3 = [[UIVisualEffectView alloc] initWithEffect:_vibrancyEffectForTitleAndMessageLabel];
    titleAndMessageLabelVibrantContainerView = self->_titleAndMessageLabelVibrantContainerView;
    self->_titleAndMessageLabelVibrantContainerView = v3;

    contentView = [(UIVisualEffectView *)self->_titleAndMessageLabelVibrantContainerView contentView];
    [contentView setClipsToBounds:0];

    [(UIVisualEffectView *)self->_titleAndMessageLabelVibrantContainerView _setAllowsGroupFiltering:0];
    [(UIView *)self->_titleAndMessageLabelVibrantContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_contentViewTopItemsView addSubview:self->_titleAndMessageLabelVibrantContainerView];
  }
}

- (void)_prepareTitleLabel
{
  if (!self->_titleLabel && [(_UIAlertControllerPhoneTVMacView *)self _hasTitle])
  {
    v3 = objc_alloc_init(UILabel);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v3;

    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v5 = self->_titleLabel;
    v6 = +[UIColor clearColor];
    [(UIView *)v5 setBackgroundColor:v6];

    LODWORD(v7) = 1053609165;
    [(UILabel *)self->_titleLabel _setHyphenationFactor:v7];
    [(UILabel *)&self->_titleLabel->super.super.super.isa _setHyphenationFactorIgnoredIfURLsDetected:?];
    [(UIView *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [(UIView *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(UIView *)self->_titleLabel setContentHuggingPriority:1 forAxis:v9];
    [(_UIAlertControllerPhoneTVMacView *)self _updateTitleLabelContents];
    [(_UIAlertControllerPhoneTVMacView *)self _updateLabelTextColor];
    [(_UIAlertControllerPhoneTVMacView *)self _updateLabelProperties];
    [(_UIAlertControllerPhoneTVMacView *)self _updateTitleLabelFontSize];
    if ([(_UIAlertControllerPhoneTVMacView *)self _titleAndMessageLabelUseVibrancy])
    {
      [(_UIAlertControllerPhoneTVMacView *)self _prepareTitleAndMessageLabelVibrantContainer];
      contentView = [(UIVisualEffectView *)self->_titleAndMessageLabelVibrantContainerView contentView];
      [contentView addSubview:self->_titleLabel];
    }

    else
    {
      contentViewTopItemsView = self->_contentViewTopItemsView;
      v11 = self->_titleLabel;

      [(UIView *)contentViewTopItemsView addSubview:v11];
    }
  }
}

- (void)_prepareMesssageLabel
{
  if (!self->_messageLabel && [(_UIAlertControllerPhoneTVMacView *)self _hasMessage])
  {
    v3 = objc_alloc_init(UILabel);
    messageLabel = self->_messageLabel;
    self->_messageLabel = v3;

    [(UILabel *)self->_messageLabel setNumberOfLines:0];
    [(UILabel *)self->_messageLabel setTextAlignment:1];
    v5 = self->_messageLabel;
    v6 = +[UIColor clearColor];
    [(UIView *)v5 setBackgroundColor:v6];

    LODWORD(v7) = 1053609165;
    [(UILabel *)self->_messageLabel _setHyphenationFactor:v7];
    [(UILabel *)&self->_messageLabel->super.super.super.isa _setHyphenationFactorIgnoredIfURLsDetected:?];
    [(UIView *)self->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [(UIView *)self->_messageLabel setContentCompressionResistancePriority:1 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(UIView *)self->_messageLabel setContentHuggingPriority:1 forAxis:v9];
    [(_UIAlertControllerPhoneTVMacView *)self _updateMessageLabelContents];
    [(_UIAlertControllerPhoneTVMacView *)self _updateLabelTextColor];
    [(_UIAlertControllerPhoneTVMacView *)self _updateLabelProperties];
    [(_UIAlertControllerPhoneTVMacView *)self _updateMessageLabelFontSize];
    if ([(_UIAlertControllerPhoneTVMacView *)self _titleAndMessageLabelUseVibrancy])
    {
      [(_UIAlertControllerPhoneTVMacView *)self _prepareTitleAndMessageLabelVibrantContainer];
      contentView = [(UIVisualEffectView *)self->_titleAndMessageLabelVibrantContainerView contentView];
      [contentView addSubview:self->_messageLabel];
    }

    else
    {
      contentViewTopItemsView = self->_contentViewTopItemsView;
      v11 = self->_messageLabel;

      [(UIView *)contentViewTopItemsView addSubview:v11];
    }
  }
}

- (void)_prepareDetailMessageLabel
{
  if (!self->_detailMessageLabel && [(_UIAlertControllerPhoneTVMacView *)self _hasDetailMessage])
  {
    v3 = objc_alloc_init(UILabel);
    detailMessageLabel = self->_detailMessageLabel;
    self->_detailMessageLabel = v3;

    [(UILabel *)self->_detailMessageLabel setNumberOfLines:0];
    [(UILabel *)self->_detailMessageLabel setTextAlignment:1];
    [(UIView *)self->_detailMessageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_detailMessageLabel;
    v6 = +[UIColor clearColor];
    [(UIView *)v5 setBackgroundColor:v6];

    [(_UIAlertControllerPhoneTVMacView *)self _updateDetailLabelContents];
    [(_UIAlertControllerPhoneTVMacView *)self _updateDetailLabelFontSize];
    contentView = self->_contentView;
    v8 = self->_detailMessageLabel;

    [(UIView *)contentView addSubview:v8];
  }
}

- (void)_prepareContentViewControllerContainerView
{
  if (!self->_contentViewControllerContainerView)
  {
    v3 = objc_alloc_init(UIView);
    contentViewControllerContainerView = self->_contentViewControllerContainerView;
    self->_contentViewControllerContainerView = v3;

    [(UIView *)self->_contentViewControllerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_contentViewControllerContainerView setClipsToBounds:1];
    contentViewTopItemsView = self->_contentViewTopItemsView;
    v6 = self->_contentViewControllerContainerView;

    [(UIView *)contentViewTopItemsView addSubview:v6];
  }
}

- (void)_prepareContentViewControllerLayoutGuide
{
  if (!self->_contentViewControllerLayoutGuide)
  {
    v3 = objc_alloc_init(UILayoutGuide);
    contentViewControllerLayoutGuide = self->_contentViewControllerLayoutGuide;
    self->_contentViewControllerLayoutGuide = v3;

    contentView = self->_contentView;
    v6 = self->_contentViewControllerLayoutGuide;

    [(UIView *)contentView addLayoutGuide:v6];
  }
}

- (void)_prepareTextFieldViewControllerContainerView
{
  if (!self->_textFieldViewControllerContainerView)
  {
    v3 = objc_alloc_init(UIView);
    textFieldViewControllerContainerView = self->_textFieldViewControllerContainerView;
    self->_textFieldViewControllerContainerView = v3;

    [(UIView *)self->_textFieldViewControllerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_textFieldViewControllerContainerView setClipsToBounds:1];
    contentViewTopItemsView = self->_contentViewTopItemsView;
    v6 = self->_textFieldViewControllerContainerView;

    [(UIView *)contentViewTopItemsView addSubview:v6];
  }
}

- (void)_prepareMainInterfaceActionsGroupView
{
  if (!self->_mainInterfaceActionsGroupView)
  {
    v3 = [UIInterfaceActionGroup actionGroupWithActionsBySection:MEMORY[0x1E695E0F0]];
    v4 = [_UIAlertControllerInterfaceActionGroupView alloc];
    alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v6 = [(_UIAlertControllerInterfaceActionGroupView *)v4 initWithAlertController:alertController actionGroup:v3 actionHandlerInvocationDelegate:self];
    mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
    self->_mainInterfaceActionsGroupView = v6;

    [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView setSpringLoaded:[(_UIAlertControllerPhoneTVMacView *)self isSpringLoaded]];
    [(UIView *)self->_mainInterfaceActionsGroupView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_contentView addSubview:self->_mainInterfaceActionsGroupView];
  }

  actionScrubbingEnabled = [(_UIAlertControllerPhoneTVMacView *)self actionScrubbingEnabled];
  actionSelectionController = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionSelectionController];
  [actionSelectionController setScrubbingEnabled:actionScrubbingEnabled];

  [(UIView *)self->_mainInterfaceActionsGroupView setSemanticContentAttribute:3];

  [(_UIAlertControllerPhoneTVMacView *)self _updateActionsGroupPresentationStyles];
}

- (void)_prepareDiscreteCancelActionGroupView
{
  if (!self->_discreteCancelActionGroupView)
  {
    v3 = [UIInterfaceActionGroup actionGroupWithActionsBySection:MEMORY[0x1E695E0F0]];
    v4 = [_UIAlertControllerInterfaceActionGroupView alloc];
    alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v6 = [(_UIAlertControllerInterfaceActionGroupView *)v4 initWithAlertController:alertController actionGroup:v3 actionHandlerInvocationDelegate:self];
    discreteCancelActionGroupView = self->_discreteCancelActionGroupView;
    self->_discreteCancelActionGroupView = v6;

    focusGroupIdentifier = [(UIView *)self->_mainInterfaceActionsGroupView focusGroupIdentifier];
    [(UIView *)self->_discreteCancelActionGroupView setFocusGroupIdentifier:focusGroupIdentifier];

    [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView setSpringLoaded:[(_UIAlertControllerPhoneTVMacView *)self isSpringLoaded]];
    [(UIView *)self->_discreteCancelActionGroupView setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [(UIView *)self->_discreteCancelActionGroupView widthAnchor];
    v10 = [widthAnchor constraintEqualToConstant:0.0];
    [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewWidthConstraint:v10];

    discreteCancelActionViewWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewWidthConstraint];
    LODWORD(v12) = 1148829696;
    [discreteCancelActionViewWidthConstraint setPriority:v12];

    v13 = self->_discreteCancelActionGroupView;
    discreteCancelActionViewWidthConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewWidthConstraint];
    [(UIView *)v13 addConstraint:discreteCancelActionViewWidthConstraint2];

    heightAnchor = [(UIView *)self->_discreteCancelActionGroupView heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:0.0];
    [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewHeightConstraint:v16];

    discreteCancelActionViewHeightConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewHeightConstraint];
    LODWORD(v18) = 1144750080;
    [discreteCancelActionViewHeightConstraint setPriority:v18];

    v19 = self->_discreteCancelActionGroupView;
    discreteCancelActionViewHeightConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewHeightConstraint];
    [(UIView *)v19 addConstraint:discreteCancelActionViewHeightConstraint2];
  }

  actionScrubbingEnabled = [(_UIAlertControllerPhoneTVMacView *)self actionScrubbingEnabled];
  actionSelectionController = [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView actionSelectionController];
  [actionSelectionController setScrubbingEnabled:actionScrubbingEnabled];
}

- (void)setActionScrubbingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_actionScrubbingEnabled = enabled;
  actionSelectionController = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionSelectionController];
  [actionSelectionController setScrubbingEnabled:enabledCopy];

  actionSelectionController2 = [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView actionSelectionController];
  [actionSelectionController2 setScrubbingEnabled:enabledCopy];
}

- (void)_updateActionsGroupPresentationStyles
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _resolvedStyle = [alertController _resolvedStyle];
  if (_resolvedStyle == 1000)
  {
    v5 = 2;
  }

  else
  {
    v5 = _resolvedStyle == 0;
  }

  [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView setPresentationStyle:v5];
  discreteCancelActionGroupView = self->_discreteCancelActionGroupView;

  [(UIInterfaceActionGroupView *)discreteCancelActionGroupView setPresentationStyle:v5];
}

- (void)_prepareDimmingView
{
  if (!self->_dimmingView)
  {
    v3 = objc_alloc_init(UIView);
    dimmingView = self->_dimmingView;
    self->_dimmingView = v3;

    [(UIView *)self->_dimmingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_dimmingView;
    v6 = +[UIColor _alertControllerDimmingViewColor];
    [(UIView *)v5 setBackgroundColor:v6];

    v7 = self->_dimmingView;
    alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    _dismissGestureRecognizer = [alertController _dismissGestureRecognizer];
    [(UIView *)v7 addGestureRecognizer:_dismissGestureRecognizer];
  }
}

- (void)_prepareKeyboardLayoutAlignmentViews
{
  if (!self->_keyboardLayoutAlignmentView && !+[UIAlertController _shouldUsePresentationController])
  {
    v3 = objc_alloc_init(_UIKeyboardLayoutAlignmentView);
    keyboardLayoutAlignmentView = self->_keyboardLayoutAlignmentView;
    self->_keyboardLayoutAlignmentView = v3;

    v5 = objc_alloc_init(UIView);
    keyboardLayoutAlignmentAvailableSpaceView = self->_keyboardLayoutAlignmentAvailableSpaceView;
    self->_keyboardLayoutAlignmentAvailableSpaceView = v5;

    [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView setUserInteractionEnabled:0];
    v7 = self->_keyboardLayoutAlignmentAvailableSpaceView;

    [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)_applyViewConstraints
{
  centerXAnchor = [(UIView *)self->_contentView centerXAnchor];
  centerXAnchor2 = [(UIView *)self centerXAnchor];
  v5 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(UIView *)self addConstraint:v5];

  if (+[UIAlertController _shouldUsePresentationController])
  {
    centerYAnchor = [(UIView *)self->_contentView centerYAnchor];
    centerYAnchor2 = [(UIView *)self centerYAnchor];
    v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    [(UIView *)self addConstraint:v8];
  }

  widthAnchor = [(UIView *)self->_mainInterfaceActionsGroupView widthAnchor];
  widthAnchor2 = [(UIView *)self->_contentView widthAnchor];
  v28 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

  LODWORD(v11) = 1148829696;
  [v28 setPriority:v11];
  [(UIView *)self->_contentView addConstraint:v28];
  [(_UIAlertControllerPhoneTVMacView *)self setActionGroupEqualsContentViewWidthConstraint:v28];
  contentView = self->_contentView;
  heightAnchor = [(UIView *)contentView heightAnchor];
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle minimumContentHeight];
  v15 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
  [(UIView *)contentView addConstraint:v15];

  widthAnchor3 = [(UIView *)self->_contentViewControllerContainerView widthAnchor];
  v17 = [widthAnchor3 constraintLessThanOrEqualToConstant:0.0];
  [(_UIAlertControllerPhoneTVMacView *)self setContentScrollViewMaximumWidthConstraint:v17];

  contentScrollViewMaximumWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumWidthConstraint];
  LODWORD(v19) = 1148846080;
  [contentScrollViewMaximumWidthConstraint setPriority:v19];

  heightAnchor2 = [(UIView *)self->_contentView heightAnchor];
  v21 = [heightAnchor2 constraintLessThanOrEqualToConstant:0.0];
  [(_UIAlertControllerPhoneTVMacView *)self setContentViewMaxHeightConstraint:v21];

  heightAnchor3 = [(UIView *)self->_contentViewTopItemsView heightAnchor];
  v23 = [heightAnchor3 constraintLessThanOrEqualToConstant:0.0];
  [(_UIAlertControllerPhoneTVMacView *)self setContentScrollViewMaximumHeightConstraint:v23];

  contentScrollViewMaximumHeightConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
  LODWORD(v25) = 1148846080;
  [contentScrollViewMaximumHeightConstraint setPriority:v25];

  contentViewTopItemsView = self->_contentViewTopItemsView;
  contentScrollViewMaximumHeightConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
  [(UIView *)contentViewTopItemsView addConstraint:contentScrollViewMaximumHeightConstraint2];
}

- (void)_prepareDimmingViewConstraints
{
  v64 = _NSDictionaryOfVariableBindings(&cfstr_DimmingviewSel.isa, self->_dimmingView, self, self->_contentView, 0);
  if (!self->_dimmingViewConstraints)
  {
    array = [MEMORY[0x1E695DF70] array];
    centerXAnchor = [(UIView *)self->_dimmingView centerXAnchor];
    centerXAnchor2 = [(UIView *)self centerXAnchor];
    v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v6];

    centerYAnchor = [(UIView *)self->_dimmingView centerYAnchor];
    centerYAnchor2 = [(UIView *)self centerYAnchor];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v9];

    widthAnchor = [(UIView *)self->_dimmingView widthAnchor];
    widthAnchor2 = [(UIView *)self widthAnchor];
    v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [array addObject:v12];

    heightAnchor = [(UIView *)self->_dimmingView heightAnchor];
    heightAnchor2 = [(UIView *)self heightAnchor];
    v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [array addObject:v15];

    v17 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array, v16);
    dimmingViewConstraints = self->_dimmingViewConstraints;
    self->_dimmingViewConstraints = v17;
  }

  if (!self->_dimmingViewConstraintsForActionSheetStyle)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    topAnchor = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v24 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];

    bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
    bottomAnchor2 = [(UIView *)self bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    [array2 addObject:v24];
    [array2 addObject:v27];
    [array3 addObject:v24];
    [array4 addObject:v27];
    v29 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array2, v28);
    dimmingViewConstraintsForActionSheetStyle = self->_dimmingViewConstraintsForActionSheetStyle;
    self->_dimmingViewConstraintsForActionSheetStyle = v29;

    v32 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array3, v31);
    dimmingViewForegroundViewTopConstraints = self->_dimmingViewForegroundViewTopConstraints;
    self->_dimmingViewForegroundViewTopConstraints = v32;

    v35 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array4, v34);
    dimmingViewForegroundViewBottomConstraints = self->_dimmingViewForegroundViewBottomConstraints;
    self->_dimmingViewForegroundViewBottomConstraints = v35;
  }

  if (!self->_dimmingViewConstraintsForAlertStyle)
  {
    array5 = [MEMORY[0x1E695DF70] array];
    centerYAnchor3 = [(UIView *)self->_contentView centerYAnchor];
    centerYAnchor4 = [(UIView *)self centerYAnchor];
    v40 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

    LODWORD(v41) = 1144750080;
    [v40 setPriority:v41];
    [array5 addObject:v40];
    topAnchor3 = [(UIView *)self->_contentView topAnchor];
    topAnchor4 = [(UIView *)self topAnchor];
    v44 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    [array5 addObject:v44];

    bottomAnchor3 = [(UIView *)self->_contentView bottomAnchor];
    bottomAnchor4 = [(UIView *)self bottomAnchor];
    v47 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
    [array5 addObject:v47];

    v49 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array5, v48);
    dimmingViewConstraintsForAlertStyle = self->_dimmingViewConstraintsForAlertStyle;
    self->_dimmingViewConstraintsForAlertStyle = v49;
  }

  if (!self->_noDimmingViewConstraints)
  {
    array6 = [MEMORY[0x1E695DF70] array];
    v52 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:[self(>=_contentView)]" options:0 metrics:0 views:v64];
    [array6 addObjectsFromArray:v52];

    v53 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:[self(==_contentView)]" options:0 metrics:0 views:v64];
    [array6 addObjectsFromArray:v53];

    if (!+[UIAlertController _shouldUsePresentationController])
    {
      centerYAnchor5 = [(UIView *)self->_contentView centerYAnchor];
      centerYAnchor6 = [(UIView *)self centerYAnchor];
      v56 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
      [array6 addObject:v56];
    }

    widthAnchor3 = [(UIView *)self widthAnchor];
    widthAnchor4 = [(UIView *)self->_contentView widthAnchor];
    v59 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];

    LODWORD(v60) = 1111752704;
    [v59 setPriority:v60];
    [array6 addObject:v59];
    v62 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array6, v61);
    noDimmingViewConstraints = self->_noDimmingViewConstraints;
    self->_noDimmingViewConstraints = v62;
  }

  if (+[UIAlertController _shouldUsePresentationController])
  {
    [MEMORY[0x1E69977A0] activateConstraints:self->_noDimmingViewConstraints];
  }
}

- (void)_applyKeyboardAlignmentViewsConstraints
{
  if (!+[UIAlertController _shouldUsePresentationController])
  {
    array = [MEMORY[0x1E695DF70] array];
    leftAnchor = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView leftAnchor];
    leftAnchor2 = [(UIView *)self leftAnchor];
    v5 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

    rightAnchor = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView rightAnchor];
    rightAnchor2 = [(UIView *)self rightAnchor];
    v8 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

    topAnchor = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];

    bottomAnchor = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView bottomAnchor];
    topAnchor3 = [(UIView *)self->_keyboardLayoutAlignmentView topAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:topAnchor3];

    bottomAnchor2 = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView bottomAnchor];
    bottomAnchor3 = [(UIView *)self bottomAnchor];
    v17 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];

    [array addObject:v5];
    [array addObject:v8];
    [array addObject:v11];
    [array addObject:v14];
    [array addObject:v17];
    alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    _resolvedStyle = [alertController _resolvedStyle];

    if (_resolvedStyle == 1)
    {
      centerYAnchor = [(UIView *)self->_contentView centerYAnchor];
      centerYAnchor2 = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView centerYAnchor];
      v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

      [array addObject:v22];
    }

    [(UIView *)self addConstraints:array];
  }
}

- (void)_applySeparatedContentViewControllerContainerViewContraints
{
  centerXAnchor = [(UIView *)self->_separatedHeaderContentViewControllerContainerView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
  v5 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v5 setActive:1];

  widthAnchor = [(UIView *)self->_separatedHeaderContentViewControllerContainerView widthAnchor];
  widthAnchor2 = [(UIView *)self->_contentView widthAnchor];
  v7 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  [v7 setActive:1];
}

- (void)_applyHeaderContentViewControllerContainerViewConstraints
{
  centerXAnchor = [(UIView *)self->_headerContentViewControllerContainerView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
  v5 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v5 setActive:1];

  widthAnchor = [(UIView *)self->_headerContentViewControllerContainerView widthAnchor];
  widthAnchor2 = [(UIView *)self->_contentView widthAnchor];
  v8 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  [v8 setActive:1];

  widthAnchor3 = [(UIView *)self->_contentView widthAnchor];
  widthAnchor4 = [(UIView *)self->_headerContentViewControllerContainerView widthAnchor];
  v12 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];

  LODWORD(v11) = 1144733696;
  [v12 setPriority:v11];
  [v12 setActive:1];
}

- (void)_setupHorizontalConstraintsForLabelView:(id)view
{
  viewCopy = view;
  centerXAnchor = [viewCopy centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_contentViewTopItemsView centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v7 setActive:1];

  widthAnchor = [viewCopy widthAnchor];

  widthAnchor2 = [(UIView *)self->_contentViewTopItemsView widthAnchor];
  [(_UIAlertControllerPhoneTVMacView *)self _labelHorizontalInsets];
  v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0 constant:v9 * -2.0];
  [v10 setActive:1];
}

- (void)_applyTitleAndMessageLabelVibrantContainerViewConstraints
{
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTitle]|| [(_UIAlertControllerPhoneTVMacView *)self _hasMessage])
  {
    if (self->_titleAndMessageLabelVibrantContainerView)
    {
      alertControllerViewFlags = self->_alertControllerViewFlags;
      if ((alertControllerViewFlags & 1) == 0)
      {
        *&self->_alertControllerViewFlags = alertControllerViewFlags | 1;
        titleAndMessageLabelVibrantContainerView = self->_titleAndMessageLabelVibrantContainerView;

        [(_UIAlertControllerPhoneTVMacView *)self _setupHorizontalConstraintsForLabelView:titleAndMessageLabelVibrantContainerView];
      }
    }
  }
}

- (void)_applyTitleConstraints
{
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTitle])
  {
    alertControllerViewFlags = self->_alertControllerViewFlags;
    if ((alertControllerViewFlags & 2) == 0)
    {
      *&self->_alertControllerViewFlags = alertControllerViewFlags | 2;
      titleLabel = self->_titleLabel;

      [(_UIAlertControllerPhoneTVMacView *)self _setupHorizontalConstraintsForLabelView:titleLabel];
    }
  }
}

- (void)_applyMessageConstraints
{
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasMessage])
  {
    alertControllerViewFlags = self->_alertControllerViewFlags;
    if ((alertControllerViewFlags & 4) == 0)
    {
      *&self->_alertControllerViewFlags = alertControllerViewFlags | 4;
      messageLabel = self->_messageLabel;

      [(_UIAlertControllerPhoneTVMacView *)self _setupHorizontalConstraintsForLabelView:messageLabel];
    }
  }
}

- (void)_applyDetailMessageConstraints
{
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDetailMessage])
  {
    alertControllerViewFlags = self->_alertControllerViewFlags;
    if ((alertControllerViewFlags & 8) == 0)
    {
      *&self->_alertControllerViewFlags = alertControllerViewFlags | 8;
      centerXAnchor = [(UIView *)self->_detailMessageLabel centerXAnchor];
      centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
      v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v6 setActive:1];

      widthAnchor = [(UIView *)self->_detailMessageLabel widthAnchor];
      widthAnchor2 = [(UIView *)self->_contentView widthAnchor];
      [(_UIAlertControllerPhoneTVMacView *)self _labelHorizontalInsets];
      v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0 constant:v8 * -2.0];
      [v9 setActive:1];
    }
  }
}

- (void)_applyContentViewControllerContainerViewConstraints
{
  contentView = self->_contentView;
  centerXAnchor = [(UIView *)self->_contentViewControllerContainerView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(UIView *)contentView addConstraint:v6];

  v7 = self->_contentView;
  widthAnchor = [(UIView *)self->_contentViewControllerContainerView widthAnchor];
  widthAnchor2 = [(UIView *)self->_contentView widthAnchor];
  v10 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  [(UIView *)v7 addConstraint:v10];

  v11 = self->_contentView;
  widthAnchor3 = [(UIView *)self->_contentViewControllerContainerView widthAnchor];
  v12 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:0.0];
  [(UIView *)v11 addConstraint:v12];
}

- (void)_applyContentViewControllerLayoutGuideConstraints
{
  contentView = self->_contentView;
  actionSequenceViewLayoutGuide = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionSequenceViewLayoutGuide];
  leadingAnchor = [actionSequenceViewLayoutGuide leadingAnchor];
  leadingAnchor2 = [(UILayoutGuide *)self->_contentViewControllerLayoutGuide leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(UIView *)contentView addConstraint:v7];

  v8 = self->_contentView;
  actionSequenceViewLayoutGuide2 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionSequenceViewLayoutGuide];
  trailingAnchor = [actionSequenceViewLayoutGuide2 trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_contentViewControllerLayoutGuide trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(UIView *)v8 addConstraint:v12];

  v13 = self->_contentView;
  topAnchor = [(UIView *)self->_contentViewControllerContainerView topAnchor];
  topAnchor2 = [(UILayoutGuide *)self->_contentViewControllerLayoutGuide topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(UIView *)v13 addConstraint:v16];

  v17 = self->_contentView;
  bottomAnchor = [(UIView *)self->_contentViewControllerContainerView bottomAnchor];
  bottomAnchor2 = [(UILayoutGuide *)self->_contentViewControllerLayoutGuide bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(UIView *)v17 addConstraint:v19];
}

- (void)_applyTextFieldViewControllerContainerViewConstraints
{
  widthAnchor = [(UIView *)self->_textFieldViewControllerContainerView widthAnchor];
  widthAnchor2 = [(UIView *)self->_contentViewTopItemsView widthAnchor];
  v5 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  textFieldViewControllerContainerViewWidthConstraint = self->_textFieldViewControllerContainerViewWidthConstraint;
  self->_textFieldViewControllerContainerViewWidthConstraint = v5;

  heightAnchor = [(UIView *)self->_textFieldViewControllerContainerView heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:0.0];
  textFieldViewControllerContainerViewHeightConstraint = self->_textFieldViewControllerContainerViewHeightConstraint;
  self->_textFieldViewControllerContainerViewHeightConstraint = v8;

  contentView = self->_contentView;
  textFieldViewControllerContainerViewWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewWidthConstraint];
  [(UIView *)contentView addConstraint:textFieldViewControllerContainerViewWidthConstraint];

  v12 = self->_contentView;
  textFieldViewControllerContainerViewHeightConstraint = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewHeightConstraint];
  [(UIView *)v12 addConstraint:textFieldViewControllerContainerViewHeightConstraint];

  v14 = self->_contentView;
  centerXAnchor = [(UIView *)self->_textFieldViewControllerContainerView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(UIView *)v14 addConstraint:v16];
}

- (BOOL)_buttonsAreTopMost
{
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTitle]|| [(_UIAlertControllerPhoneTVMacView *)self _hasMessage])
  {
    return 0;
  }

  contentViewController = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];
  v3 = contentViewController == 0;

  return v3;
}

- (CGSize)_sizeForLayoutWidthDetermination
{
  presentedAsPopover = [(_UIAlertControllerPhoneTVMacView *)self presentedAsPopover];
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    if ((_UISolariumEnabled() & presentedAsPopover & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v15 = 0x407E000000000000;
    v13 = 0x4074000000000000;
    goto LABEL_12;
  }

  if (presentedAsPopover)
  {
    goto LABEL_9;
  }

LABEL_3:
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v7 = [alertController _existingPresentationControllerImmediate:0 effective:1];
  containerView = [v7 containerView];

  [(_UIAlertControllerPhoneTVMacView *)self _layoutSize];
  if (v10 == *MEMORY[0x1E695F060] && v9 == *(MEMORY[0x1E695F060] + 8))
  {
    [containerView bounds];
    v13 = v16;
    v15 = v17;
  }

  else
  {
    [(_UIAlertControllerPhoneTVMacView *)self _layoutSize];
    v13 = v12;
    v15 = v14;
  }

LABEL_12:
  v18 = *&v13;
  v19 = *&v15;
  result.height = v19;
  result.width = v18;
  return result;
}

- (double)_verticalLayoutWidth
{
  [(_UIAlertControllerPhoneTVMacView *)self _sizeForLayoutWidthDetermination];
  v4 = v3;
  v6 = v5;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (v4 < v6 || userInterfaceIdiom == 3)
  {
    v6 = v4;
  }

  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle minimumWidth];
  v12 = v11;

  if (v12 > 0.0)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _minimumSizeForAllActions];
    if (v13 < v12)
    {
      v13 = v12;
    }

    if (v13 >= v4)
    {
      return v4;
    }

    else
    {
      return v13;
    }
  }

  return v6;
}

- (BOOL)_horizontalLayoutCanUseFullWidth
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  if ([alertController _resolvedStyle])
  {
    v4 = 0;
  }

  else
  {
    actions = [(_UIAlertControllerPhoneTVMacView *)self actions];
    v4 = [actions count] > 2;
  }

  return v4;
}

- (double)_minimumWidthFittingAlertContents
{
  [(_UIAlertControllerPhoneTVMacView *)self _minimumSizeForAllActions];
  v4 = v3;
  [(_UIAlertControllerPhoneTVMacView *)self _applyTitleAndMessageLabelVibrantContainerViewConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyTitleConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyMessageConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _applyDetailMessageConstraints];
  [(_UIAlertControllerPhoneTVMacView *)self _updateConstraintSpacingForExternalOffset];
  [(_UIAlertControllerPhoneTVMacView *)self _updateForPropertyChangeIfNeeded];
  contentScrollViewMaximumHeightConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
  [contentScrollViewMaximumHeightConstraint setActive:0];

  [(_UIAlertControllerPhoneTVMacView *)self _contentViewControllerSize];
  v7 = v6;
  v9 = v8;
  headerContentViewController = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];
  [headerContentViewController preferredContentSize];
  v12 = v11;
  v14 = v13;

  if (v7 < v12)
  {
    v7 = v12;
  }

  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle minimumWidthFittingContentView:self->_contentViewTopItemsView titleLabel:self->_titleLabel minimumWidthForAllActions:v4 preferredSizeForContentContainers:{v7, v9 + v14}];
  v17 = v16;

  contentScrollViewMaximumHeightConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
  [contentScrollViewMaximumHeightConstraint2 setActive:1];

  return v17;
}

- (double)_availableWidthForHorizontalLayout:(BOOL)layout
{
  layoutCopy = layout;
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  definesWidthByContentFitting = [_visualStyle definesWidthByContentFitting];

  _visualStyle2 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle2 maximumWidth];
  v9 = v8;

  if (definesWidthByContentFitting)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _minimumWidthFittingAlertContents];
  }

  else if (v9 <= 0.0)
  {
    if (layoutCopy && [(_UIAlertControllerPhoneTVMacView *)self _horizontalLayoutCanUseFullWidth])
    {
      [(_UIAlertControllerPhoneTVMacView *)self _sizeForLayoutWidthDetermination];
    }

    else
    {
      [(_UIAlertControllerPhoneTVMacView *)self _verticalLayoutWidth];
    }

    v12 = v11;
    [(_UIAlertControllerPhoneTVMacView *)self _contentInsets];
    result = v12 - (v13 + v14);
  }

  else
  {
    [(_UIAlertControllerPhoneTVMacView *)self _maximumWidthUsingAccessibilityWidthIfActionsAreTruncated:v9];
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (UIEdgeInsets)_contentInsets
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  superview = [(UIView *)self superview];
  [_visualStyle contentInsetsForContainerView:superview];
  v6 = v5;
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

- (double)_layoutWidthForHorizontalLayout:(BOOL)layout
{
  layoutCopy = layout;
  [(_UIAlertControllerPhoneTVMacView *)self _contentViewControllerSize];
  v6 = v5;
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _shouldFitWidthToContentViewControllerWidth = [alertController _shouldFitWidthToContentViewControllerWidth];

  if (_shouldFitWidthToContentViewControllerWidth)
  {
    return v6;
  }

  [(_UIAlertControllerPhoneTVMacView *)self _availableWidthForHorizontalLayout:layoutCopy];
  return result;
}

- (double)_idealLayoutWidth
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v4 = ([_visualStyle permittedActionLayoutDirection] >> 1) & 1;

  [(_UIAlertControllerPhoneTVMacView *)self _availableWidthForHorizontalLayout:v4];
  return result;
}

- (CGSize)_itemSizeForHorizontalLayout:(BOOL)layout visualStyleRequiresActionRepresentationToFitItemSize:(BOOL *)size
{
  layoutCopy = layout;
  [(_UIAlertControllerPhoneTVMacView *)self _minimumSizeForAllActions];
  v8 = v7;
  v10 = v9;
  [(_UIAlertControllerPhoneTVMacView *)self _idealLayoutWidth];
  v12 = v11;
  if (!layoutCopy)
  {
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    [_visualStyle actionWidthForMinimumActionWidth:v8 availableWidth:v12];
    v26 = v28;

    if (v26 <= 0.0)
    {
      [(_UIAlertControllerPhoneTVMacView *)self _contentInsets];
      v30 = v29;
      v32 = v31;
      [(_UIAlertControllerPhoneTVMacView *)self _verticalLayoutWidth];
      v25 = 0;
      v26 = v33 - (v30 + v32);
      if (!size)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v25 = 1;
      if (!size)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    *size = v25;
    goto LABEL_13;
  }

  _numberOfActionsForMainActionButtonSequenceView = [(_UIAlertControllerPhoneTVMacView *)self _numberOfActionsForMainActionButtonSequenceView];
  _visualStyle2 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle2 actionSequenceEdgeInsets];
  v16 = v15;
  _visualStyle3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle3 actionSequenceEdgeInsets];
  v19 = v12 - (v16 + v18);

  _visualStyle4 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle4 actionSpacingForHorizontalLayout:1];
  v22 = (_numberOfActionsForMainActionButtonSequenceView - 1);
  if (v22 < 0.0)
  {
    v22 = 0.0;
  }

  v23 = v19 - v22 * v21;

  if ([(_UIAlertControllerPhoneTVMacView *)self hasDiscreteHorizontalCancelAction])
  {
    ++_numberOfActionsForMainActionButtonSequenceView;
    [(_UIAlertControllerPhoneTVMacView *)self _contentInsets];
    v23 = v23 - v24;
  }

  v25 = 0;
  v26 = v23 / _numberOfActionsForMainActionButtonSequenceView;
  if (size)
  {
    goto LABEL_12;
  }

LABEL_13:
  v34 = v26;
  v35 = v10;
  result.height = v35;
  result.width = v34;
  return result;
}

- (CGSize)_itemSizeForHorizontalLayout:(BOOL)layout
{
  [(_UIAlertControllerPhoneTVMacView *)self _itemSizeForHorizontalLayout:layout visualStyleRequiresActionRepresentationToFitItemSize:0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_mainActionButtonSequenceViewSizeForHorizontalLayout:(BOOL)layout itemSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  _numberOfActionsForMainActionButtonSequenceView = [(_UIAlertControllerPhoneTVMacView *)self _numberOfActionsForMainActionButtonSequenceView];
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle actionSequenceEdgeInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v13 + v17;
  v19 = v11 + v15;
  [(_UIAlertControllerPhoneTVMacView *)self _spaceRequiredForActionSectionsSpacing];
  v21 = v20;
  _visualStyle2 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle2 actionSpacingForHorizontalLayout:layoutCopy];
  v24 = (_numberOfActionsForMainActionButtonSequenceView - 1);
  if (v24 < 0.0)
  {
    v24 = 0.0;
  }

  v25 = v24 * v23;

  v26 = width + v18;
  if (layoutCopy)
  {
    v26 = v21 + width * _numberOfActionsForMainActionButtonSequenceView + v18 + v25;
    v27 = height + v19;
  }

  else
  {
    v27 = v21 + height * _numberOfActionsForMainActionButtonSequenceView + v19 + v25;
  }

  result.height = v27;
  result.width = v26;
  return result;
}

- (BOOL)_canLayOutActionsHorizontally
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  permittedActionLayoutDirection = [_visualStyle permittedActionLayoutDirection];

  result = (permittedActionLayoutDirection & 2) != 0 && ([(_UIAlertControllerPhoneTVMacView *)self _itemSizeForHorizontalLayout:1], v6 = v5, [(_UIAlertControllerPhoneTVMacView *)self _minimumSizeForAllActions], v6 >= v7) && [(_UIAlertControllerPhoneTVMacView *)self _numberOfActionsForMainActionButtonSequenceView]> 0;
  return result;
}

- (id)_discreteCancelActionView
{
  if ([(_UIAlertControllerPhoneTVMacView *)self cancelActionIsDiscrete])
  {
    __cancelActionView = [(_UIAlertControllerPhoneTVMacView *)self __cancelActionView];
  }

  else
  {
    __cancelActionView = 0;
  }

  return __cancelActionView;
}

- (BOOL)_hasDiscreteCancelAction
{
  cancelAction = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
  v4 = cancelAction && [(_UIAlertControllerPhoneTVMacView *)self showsCancelAction]&& [(_UIAlertControllerPhoneTVMacView *)self cancelActionIsDiscrete];

  return v4;
}

- (void)_updateConstraintSpacingForExternalOffset
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _resolvedStyle = [alertController _resolvedStyle];

  if (!_resolvedStyle)
  {
    [(_UIAlertControllerPhoneTVMacView *)self offset];
    v6 = v5;
    v7 = -v5;
    v8 = 0.0;
    if ([(_UIAlertControllerPhoneTVMacView *)self _hasDiscreteCancelAction]&& ![(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally])
    {
      [(_UIAlertControllerPhoneTVMacView *)self _marginBetweenInterfaceActionGroups];
      v7 = v6 * -0.5;
      v8 = v6 * -0.5 + v9;
    }

    discreteCancelActionViewTopConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewTopConstraint];
    [discreteCancelActionViewTopConstraint setConstant:v8];

    contentViewBottomConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];
    [contentViewBottomConstraint setConstant:v7];
  }
}

- (void)_recomputeAlertControllerWidth
{
  window = [(UIView *)self window];

  if (window)
  {
    _canLayOutActionsHorizontally = [(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally];
    foregroundViewWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self foregroundViewWidthConstraint];

    if (!foregroundViewWidthConstraint)
    {
      widthAnchor = [(UIView *)self->_contentView widthAnchor];
      [(_UIAlertControllerPhoneTVMacView *)self _layoutWidthForHorizontalLayout:_canLayOutActionsHorizontally];
      v7 = [widthAnchor constraintEqualToConstant:?];
      [(_UIAlertControllerPhoneTVMacView *)self setForegroundViewWidthConstraint:v7];

      contentView = self->_contentView;
      foregroundViewWidthConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self foregroundViewWidthConstraint];
      [(UIView *)contentView addConstraint:foregroundViewWidthConstraint2];
    }

    foregroundViewWidthConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self foregroundViewWidthConstraint];
    [(_UIAlertControllerPhoneTVMacView *)self _layoutWidthForHorizontalLayout:_canLayOutActionsHorizontally];
    [foregroundViewWidthConstraint3 setConstant:?];
  }
}

- (void)_configureActionGroupViewToAllowHorizontalLayout:(BOOL)layout
{
  if (layout)
  {
    v3 = &unk_1EFE2BDA0;
  }

  else
  {
    v3 = &unk_1EFE2BDB8;
  }

  [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView setAllowedActionLayoutAxisByPriority:v3];
}

- (void)_actionLayoutDirectionChanged
{
  v73[2] = *MEMORY[0x1E69E9840];
  _canLayOutActionsHorizontally = [(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally];
  [(_UIAlertControllerPhoneTVMacView *)self _recomputeAlertControllerWidth];
  [(_UIAlertControllerPhoneTVMacView *)self _configureActionGroupViewToAllowHorizontalLayout:_canLayOutActionsHorizontally];
  v72 = 0;
  [(_UIAlertControllerPhoneTVMacView *)self _itemSizeForHorizontalLayout:_canLayOutActionsHorizontally visualStyleRequiresActionRepresentationToFitItemSize:&v72];
  v5 = v4;
  [(_UIAlertControllerPhoneTVMacView *)self _mainActionButtonSequenceViewSizeForHorizontalLayout:_canLayOutActionsHorizontally itemSize:?];
  v7 = v6;
  v9 = v8;
  mainActionButtonSequenceViewWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewWidthConstraint];

  if (!mainActionButtonSequenceViewWidthConstraint)
  {
    widthAnchor = [(UIView *)self->_mainInterfaceActionsGroupView widthAnchor];
    v12 = [widthAnchor constraintEqualToConstant:0.0];
    [(_UIAlertControllerPhoneTVMacView *)self setMainActionButtonSequenceViewWidthConstraint:v12];

    mainActionButtonSequenceViewWidthConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewWidthConstraint];
    LODWORD(v14) = 1148813312;
    [mainActionButtonSequenceViewWidthConstraint2 setPriority:v14];

    mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
    mainActionButtonSequenceViewWidthConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewWidthConstraint];
    [(UIView *)mainInterfaceActionsGroupView addConstraint:mainActionButtonSequenceViewWidthConstraint3];
  }

  mainActionButtonSequenceViewWidthConstraint4 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewWidthConstraint];
  [mainActionButtonSequenceViewWidthConstraint4 setConstant:v7];

  mainActionButtonSequenceViewHeightConstraint = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHeightConstraint];

  if (!mainActionButtonSequenceViewHeightConstraint)
  {
    heightAnchor = [(UIView *)self->_mainInterfaceActionsGroupView heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:0.0];
    [(_UIAlertControllerPhoneTVMacView *)self setMainActionButtonSequenceViewHeightConstraint:v20];

    mainActionButtonSequenceViewHeightConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHeightConstraint];
    LODWORD(v22) = 1132003328;
    [mainActionButtonSequenceViewHeightConstraint2 setPriority:v22];

    v23 = self->_mainInterfaceActionsGroupView;
    mainActionButtonSequenceViewHeightConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHeightConstraint];
    [(UIView *)v23 addConstraint:mainActionButtonSequenceViewHeightConstraint3];
  }

  mainActionButtonSequenceViewHeightConstraint4 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHeightConstraint];
  [mainActionButtonSequenceViewHeightConstraint4 setConstant:v9];

  if (_canLayOutActionsHorizontally)
  {
    v26 = 5;
  }

  else
  {
    v26 = 9;
  }

  mainActionButtonSequenceViewHorizontalAlignmentConstraint = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHorizontalAlignmentConstraint];
  if (mainActionButtonSequenceViewHorizontalAlignmentConstraint)
  {
    v28 = mainActionButtonSequenceViewHorizontalAlignmentConstraint;
    mainActionButtonSequenceViewHorizontalAlignmentConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHorizontalAlignmentConstraint];
    firstAttribute = [mainActionButtonSequenceViewHorizontalAlignmentConstraint2 firstAttribute];

    if (firstAttribute != v26)
    {
      contentView = self->_contentView;
      mainActionButtonSequenceViewHorizontalAlignmentConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHorizontalAlignmentConstraint];
      [(UIView *)contentView removeConstraint:mainActionButtonSequenceViewHorizontalAlignmentConstraint3];

      [(_UIAlertControllerPhoneTVMacView *)self setMainActionButtonSequenceViewHorizontalAlignmentConstraint:0];
    }
  }

  mainActionButtonSequenceViewHorizontalAlignmentConstraint4 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHorizontalAlignmentConstraint];

  if (!mainActionButtonSequenceViewHorizontalAlignmentConstraint4)
  {
    v34 = [MEMORY[0x1E69977A0] constraintWithItem:self->_mainInterfaceActionsGroupView attribute:v26 relatedBy:0 toItem:self->_contentView attribute:v26];
    [(_UIAlertControllerPhoneTVMacView *)self setMainActionButtonSequenceViewHorizontalAlignmentConstraint:v34];

    v35 = self->_contentView;
    mainActionButtonSequenceViewHorizontalAlignmentConstraint5 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHorizontalAlignmentConstraint];
    [(UIView *)v35 addConstraint:mainActionButtonSequenceViewHorizontalAlignmentConstraint5];
  }

  discreteActionGroupViewHorizontalLayoutTrailingConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteActionGroupViewHorizontalLayoutTrailingConstraint];

  if (!discreteActionGroupViewHorizontalLayoutTrailingConstraint)
  {
    trailingAnchor = [(UIView *)self->_discreteCancelActionGroupView trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_contentView trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(_UIAlertControllerPhoneTVMacView *)self setDiscreteActionGroupViewHorizontalLayoutTrailingConstraint:v40];
  }

  _discreteCancelActionView = [(_UIAlertControllerPhoneTVMacView *)self _discreteCancelActionView];

  discreteActionGroupViewHorizontalLayoutTrailingConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self discreteActionGroupViewHorizontalLayoutTrailingConstraint];
  [discreteActionGroupViewHorizontalLayoutTrailingConstraint2 setActive:(_discreteCancelActionView != 0) & _canLayOutActionsHorizontally];

  actionGroupEqualsContentViewWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self actionGroupEqualsContentViewWidthConstraint];
  [actionGroupEqualsContentViewWidthConstraint setActive:_canLayOutActionsHorizontally ^ 1];

  if (_discreteCancelActionView)
  {
    _canLayOutActionsHorizontally2 = [(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally];
    v45 = MEMORY[0x1E69977A0];
    v46 = MEMORY[0x1E695DEC8];
    discreteCancelActionViewTopConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewTopConstraint];
    discreteCancelActionViewLeadingConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewLeadingConstraint];
    v49 = [v46 arrayWithObjects:{discreteCancelActionViewTopConstraint, discreteCancelActionViewLeadingConstraint, 0}];
    [v45 deactivateConstraints:v49];

    topAnchor = [(UIView *)self->_discreteCancelActionGroupView topAnchor];
    v51 = self->_mainInterfaceActionsGroupView;
    if (_canLayOutActionsHorizontally2)
    {
      topAnchor2 = [(UIView *)v51 topAnchor];
      v53 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewTopConstraint:v53];

      leadingAnchor = [(UIView *)self->_discreteCancelActionGroupView leadingAnchor];
      trailingAnchor3 = [(UIView *)self->_mainInterfaceActionsGroupView trailingAnchor];
      [(_UIAlertControllerPhoneTVMacView *)self _marginBetweenInterfaceActionGroups];
      v56 = [leadingAnchor constraintEqualToAnchor:trailingAnchor3 constant:?];
      v7 = v5;
    }

    else
    {
      bottomAnchor = [(UIView *)v51 bottomAnchor];
      [(_UIAlertControllerPhoneTVMacView *)self _marginBetweenInterfaceActionGroups];
      v58 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
      [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewTopConstraint:v58];

      leadingAnchor = [(UIView *)self->_discreteCancelActionGroupView leadingAnchor];
      trailingAnchor3 = [(UIView *)self->_mainInterfaceActionsGroupView leadingAnchor];
      v56 = [leadingAnchor constraintEqualToAnchor:trailingAnchor3 constant:0.0];
    }

    [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewLeadingConstraint:v56];

    [(_UIAlertControllerPhoneTVMacView *)self _updateConstraintSpacingForExternalOffset];
    v59 = MEMORY[0x1E69977A0];
    discreteCancelActionViewTopConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewTopConstraint];
    v73[0] = discreteCancelActionViewTopConstraint2;
    discreteCancelActionViewLeadingConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewLeadingConstraint];
    v73[1] = discreteCancelActionViewLeadingConstraint2;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
    [v59 activateConstraints:v62];

    _discreteCancelActionView2 = [(_UIAlertControllerPhoneTVMacView *)self _discreteCancelActionView];
    action = [_discreteCancelActionView2 action];
    _contentViewController = [action _contentViewController];

    if (_contentViewController)
    {
      [_contentViewController preferredContentSize];
      v67 = v66;
    }

    else
    {
      _discreteCancelActionView3 = [(_UIAlertControllerPhoneTVMacView *)self _discreteCancelActionView];
      [_discreteCancelActionView3 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v67 = v69;
    }

    discreteCancelActionViewWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewWidthConstraint];
    [discreteCancelActionViewWidthConstraint setConstant:v7];

    discreteCancelActionViewHeightConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewHeightConstraint];
    [discreteCancelActionViewHeightConstraint setConstant:v67];
  }

  if (!v72)
  {
    v5 = 0.0;
  }

  [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView setRequiredActionRepresentationWidth:v5];
  [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView setRequiredActionRepresentationWidth:v5];
  [(UIView *)self setNeedsLayout];
}

- (void)_updateMainScrollableHeaderViewHasRealContent
{
  mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _buttonsAreTopMost]^ 1;

  [(_UIAlertControllerInterfaceActionGroupView *)mainInterfaceActionsGroupView setScrollableHeaderViewHasRealContent:v3];
}

- (void)_updateForPropertyChangeIfNeeded
{
  v107[2] = *MEMORY[0x1E69E9840];
  if ((*&self->_alertControllerViewFlags & 0x800) == 0)
  {
    return;
  }

  *&self->_alertControllerViewFlags &= ~0x800u;
  array = [MEMORY[0x1E695DF70] array];
  [(_UIAlertControllerPhoneTVMacView *)self _updateMainScrollableHeaderViewHasRealContent];
  headerContentViewControllerContainerViewTopAlignmentConstraint = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewControllerContainerViewTopAlignmentConstraint];

  if (headerContentViewControllerContainerViewTopAlignmentConstraint)
  {
    headerContentViewControllerContainerViewTopAlignmentConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewControllerContainerViewTopAlignmentConstraint];
    [array addObject:headerContentViewControllerContainerViewTopAlignmentConstraint2];
  }

  titleAndMessageLabelVibrantContainerViewVerticalConstraints = [(_UIAlertControllerPhoneTVMacView *)self titleAndMessageLabelVibrantContainerViewVerticalConstraints];

  if (titleAndMessageLabelVibrantContainerViewVerticalConstraints)
  {
    titleAndMessageLabelVibrantContainerViewVerticalConstraints2 = [(_UIAlertControllerPhoneTVMacView *)self titleAndMessageLabelVibrantContainerViewVerticalConstraints];
    [array addObjectsFromArray:titleAndMessageLabelVibrantContainerViewVerticalConstraints2];
  }

  titleLabelTopAlignmentConstraints = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];

  if (titleLabelTopAlignmentConstraints)
  {
    titleLabelTopAlignmentConstraints2 = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];
    constraints = [titleLabelTopAlignmentConstraints2 constraints];
    [array addObjectsFromArray:constraints];
  }

  messageLabelTopAlignmentConstraints = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];

  if (messageLabelTopAlignmentConstraints)
  {
    messageLabelTopAlignmentConstraints2 = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];
    constraints2 = [messageLabelTopAlignmentConstraints2 constraints];
    [array addObjectsFromArray:constraints2];
  }

  contentViewControllerContainerViewTopAlignmentConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewTopAlignmentConstraint];

  if (contentViewControllerContainerViewTopAlignmentConstraint)
  {
    contentViewControllerContainerViewTopAlignmentConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewTopAlignmentConstraint];
    [array addObject:contentViewControllerContainerViewTopAlignmentConstraint2];
  }

  textFieldViewControllerContainerViewTopAlignmentConstraints = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewTopAlignmentConstraints];

  if (textFieldViewControllerContainerViewTopAlignmentConstraints)
  {
    textFieldViewControllerContainerViewTopAlignmentConstraints2 = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewTopAlignmentConstraints];
    constraints3 = [textFieldViewControllerContainerViewTopAlignmentConstraints2 constraints];
    [array addObjectsFromArray:constraints3];
  }

  detailMessageLabelTopAlignmentConstraint = [(_UIAlertControllerPhoneTVMacView *)self detailMessageLabelTopAlignmentConstraint];

  if (detailMessageLabelTopAlignmentConstraint)
  {
    detailMessageLabelTopAlignmentConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self detailMessageLabelTopAlignmentConstraint];
    [array addObject:detailMessageLabelTopAlignmentConstraint2];
  }

  contentViewTopConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewTopConstraint];

  if (contentViewTopConstraint)
  {
    contentViewTopConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewTopConstraint];
    [array addObject:contentViewTopConstraint2];
  }

  contentViewBottomConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];

  if (contentViewBottomConstraint)
  {
    contentViewBottomConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];
    [array addObject:contentViewBottomConstraint2];
  }

  contentScrollViewBottomConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewBottomConstraint];

  if (contentScrollViewBottomConstraint)
  {
    contentScrollViewBottomConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewBottomConstraint];
    [array addObject:contentScrollViewBottomConstraint2];
  }

  [MEMORY[0x1E69977A0] deactivateConstraints:array];
  v26 = self->_contentViewTopItemsView;
  array2 = [MEMORY[0x1E695DF70] array];
  headerContentViewController = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];

  if (headerContentViewController)
  {
    v29 = [MEMORY[0x1E69977A0] constraintWithItem:self->_headerContentViewControllerContainerView attribute:3 relatedBy:0 toItem:v26 attribute:3];
    [(_UIAlertControllerPhoneTVMacView *)self setHeaderContentViewControllerContainerViewTopAlignmentConstraint:v29];

    headerContentViewControllerContainerViewTopAlignmentConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewControllerContainerViewTopAlignmentConstraint];
    [array2 addObject:headerContentViewControllerContainerViewTopAlignmentConstraint3];

    v31 = self->_headerContentViewControllerContainerView;
    v32 = 4;
    v26 = v31;
  }

  else
  {
    v32 = 3;
  }

  _hasTitle = [(_UIAlertControllerPhoneTVMacView *)self _hasTitle];
  _hasMessage = [(_UIAlertControllerPhoneTVMacView *)self _hasMessage];
  v35 = _hasMessage;
  v105 = array2;
  if ((_hasTitle || _hasMessage) && self->_titleAndMessageLabelVibrantContainerView)
  {
    v36 = 13;
    if (_hasTitle)
    {
      v37 = 12;
    }

    else
    {
      v37 = 13;
    }

    v38 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIAlertControllerPhoneTVMacView__alertControllerViewFlags[v37]);
    if (!_hasMessage)
    {
      v36 = 12;
    }

    v103 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIAlertControllerPhoneTVMacView__alertControllerViewFlags[v36]);
    v104 = v38;
    topAnchor = [v104 topAnchor];
    topAnchor2 = [(UIView *)self->_titleAndMessageLabelVibrantContainerView topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v107[0] = v39;
    bottomAnchor = [v103 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_titleAndMessageLabelVibrantContainerView bottomAnchor];
    v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v107[1] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:2];
    [(_UIAlertControllerPhoneTVMacView *)self setTitleAndMessageLabelVibrantContainerViewVerticalConstraints:v43];

    array2 = v105;
    titleAndMessageLabelVibrantContainerViewVerticalConstraints3 = [(_UIAlertControllerPhoneTVMacView *)self titleAndMessageLabelVibrantContainerViewVerticalConstraints];

    [v105 addObjectsFromArray:titleAndMessageLabelVibrantContainerViewVerticalConstraints3];
  }

  if (!_hasTitle)
  {
    if (!v35)
    {
      goto LABEL_36;
    }

LABEL_38:
    v51 = 0x1E6997000uLL;
    v52 = [MEMORY[0x1E69977A0] constraintWithItem:self->_messageLabel attribute:12 relatedBy:0 toItem:v26 attribute:v32];
    if (_hasTitle)
    {
      v53 = 746;
    }

    else
    {
      v53 = 748;
    }

    v54 = [_UIFlexibleConstantConstraintSet constraintSetWithCollapsableConstantPreferredEqualityConstraint:v52 equalityPriority:v53];
    [(_UIAlertControllerPhoneTVMacView *)self setMessageLabelTopAlignmentConstraints:v54];

    messageLabelTopAlignmentConstraints3 = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];
    constraints4 = [messageLabelTopAlignmentConstraints3 constraints];
    v50 = v105;
    [v105 addObjectsFromArray:constraints4];

    v57 = self->_messageLabel;
    v32 = 11;
    v26 = v57;
    goto LABEL_42;
  }

  v45 = [MEMORY[0x1E69977A0] constraintWithItem:self->_titleLabel attribute:12 relatedBy:0 toItem:v26 attribute:v32];
  v46 = [_UIFlexibleConstantConstraintSet constraintSetWithCollapsableConstantPreferredEqualityConstraint:v45 equalityPriority:748];
  [(_UIAlertControllerPhoneTVMacView *)self setTitleLabelTopAlignmentConstraints:v46];

  titleLabelTopAlignmentConstraints3 = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];
  constraints5 = [titleLabelTopAlignmentConstraints3 constraints];
  [array2 addObjectsFromArray:constraints5];

  v49 = self->_titleLabel;
  v32 = 11;
  v26 = v49;
  if (v35)
  {
    goto LABEL_38;
  }

LABEL_36:
  v50 = v105;
  v51 = 0x1E6997000;
LABEL_42:
  contentViewController = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];

  if (contentViewController)
  {
    v59 = [*(v51 + 1952) constraintWithItem:self->_contentViewControllerContainerView attribute:3 relatedBy:0 toItem:v26 attribute:v32];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerContainerViewTopAlignmentConstraint:v59];

    contentViewControllerContainerViewTopAlignmentConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewTopAlignmentConstraint];
    [v50 addObject:contentViewControllerContainerViewTopAlignmentConstraint3];

    v61 = self->_contentViewControllerContainerView;
    v32 = 4;
    v26 = v61;
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTextFields])
  {
    v62 = [*(v51 + 1952) constraintWithItem:self->_textFieldViewControllerContainerView attribute:3 relatedBy:0 toItem:v26 attribute:v32];
    v63 = [_UIFlexibleConstantConstraintSet constraintSetWithCollapsableConstantPreferredEqualityConstraint:v62 equalityPriority:745];
    [(_UIAlertControllerPhoneTVMacView *)self setTextFieldViewControllerContainerViewTopAlignmentConstraints:v63];

    textFieldViewControllerContainerViewTopAlignmentConstraints3 = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewTopAlignmentConstraints];
    constraints6 = [textFieldViewControllerContainerViewTopAlignmentConstraints3 constraints];
    [v50 addObjectsFromArray:constraints6];

    v66 = self->_textFieldViewControllerContainerView;
    v32 = 4;
    v26 = v66;
  }

  v67 = [*(v51 + 1952) constraintWithItem:self->_contentViewTopItemsView attribute:4 relatedBy:0 toItem:v26 attribute:v32];
  [(_UIAlertControllerPhoneTVMacView *)self setContentScrollViewBottomConstraint:v67];

  contentScrollViewBottomConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewBottomConstraint];
  [v50 addObject:contentScrollViewBottomConstraint3];

  separatedHeaderContentViewController = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewController];
  v70 = 10;
  if (!separatedHeaderContentViewController)
  {
    v70 = 8;
  }

  v71 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIAlertControllerPhoneTVMacView__alertControllerViewFlags[v70]);

  hasDiscreteHorizontalCancelAction = [(_UIAlertControllerPhoneTVMacView *)self hasDiscreteHorizontalCancelAction];
  v73 = 18;
  if (!hasDiscreteHorizontalCancelAction)
  {
    v73 = 8;
  }

  v74 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIAlertControllerPhoneTVMacView__alertControllerViewFlags[v73]);
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDetailMessage])
  {
    firstBaselineAnchor = [(UIView *)self->_detailMessageLabel firstBaselineAnchor];
    bottomAnchor3 = [(UIView *)self->_mainInterfaceActionsGroupView bottomAnchor];
    v77 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor3];
    [(_UIAlertControllerPhoneTVMacView *)self setDetailMessageLabelTopAlignmentConstraint:v77];

    detailMessageLabelTopAlignmentConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self detailMessageLabelTopAlignmentConstraint];
    [v50 addObject:detailMessageLabelTopAlignmentConstraint3];

    v79 = self->_detailMessageLabel;
    v74 = v79;
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDiscreteCancelAction])
  {
    v80 = self->_discreteCancelActionGroupView;

    v74 = v80;
  }

  topAnchor3 = [(UIView *)self->_contentView topAnchor];
  topAnchor4 = [v71 topAnchor];
  v83 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [(_UIAlertControllerPhoneTVMacView *)self setContentViewTopConstraint:v83];

  contentViewTopConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self contentViewTopConstraint];
  [v50 addObject:contentViewTopConstraint3];

  separatedHeaderContentViewController2 = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewController];

  if (separatedHeaderContentViewController2)
  {
    v86 = [MEMORY[0x1E69977A0] constraintWithItem:v71 attribute:7 relatedBy:0 toItem:self->_contentView attribute:7];
    [(_UIAlertControllerPhoneTVMacView *)self setSeparatedHeaderContentViewControllerContainerViewWidthConstraint:v86];

    separatedHeaderContentViewControllerContainerViewWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewControllerContainerViewWidthConstraint];
    [v50 addObject:separatedHeaderContentViewControllerContainerViewWidthConstraint];

    v88 = [MEMORY[0x1E69977A0] constraintWithItem:v71 attribute:4 relatedBy:0 toItem:self->_mainInterfaceActionsGroupView attribute:3];
    [(_UIAlertControllerPhoneTVMacView *)self setSeparatedHeaderContentViewControllerContainerViewBottomConstraint:v88];

    separatedHeaderContentViewControllerContainerViewBottomConstraint = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewControllerContainerViewBottomConstraint];
    v90 = 0.0;
    if ((*&self->_alertControllerViewFlags & 0x10) == 0)
    {
      [(_UIAlertControllerPhoneTVMacView *)self _marginBetweenInterfaceActionGroups];
      v90 = v91;
    }

    [separatedHeaderContentViewControllerContainerViewBottomConstraint constant];
    [separatedHeaderContentViewControllerContainerViewBottomConstraint setConstant:v92 - v90];

    separatedHeaderContentViewControllerContainerViewBottomConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewControllerContainerViewBottomConstraint];
    [v50 addObject:separatedHeaderContentViewControllerContainerViewBottomConstraint2];
  }

  bottomAnchor4 = [(UIView *)self->_contentView bottomAnchor];
  bottomAnchor5 = [v74 bottomAnchor];
  v96 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [(_UIAlertControllerPhoneTVMacView *)self setContentViewBottomConstraint:v96];

  contentViewBottomConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];
  [v50 addObject:contentViewBottomConstraint3];

  [(_UIAlertControllerPhoneTVMacView *)self _updateConstraintConstants];
  v98 = MEMORY[0x1E69977A0];
  v100 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v50, v99);
  [v98 activateConstraints:v100];
}

- (void)_performBatchActionChangesWithBlock:(id)block
{
  blockCopy = block;
  actions = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v6 = [actions count];

  ++self->_batchActionChangesInProgressCount;
  blockCopy[2](blockCopy);

  --self->_batchActionChangesInProgressCount;
  actions2 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v8 = [actions2 count];

  [(_UIAlertControllerPhoneTVMacView *)self _propertiesChanged];
  if ((*&self->_alertControllerViewFlags & 0x400) != 0 || v6 != v8)
  {

    [(_UIAlertControllerPhoneTVMacView *)self _actionsChanged];
  }
}

- (void)_actionsChanged
{
  alertControllerViewFlags = self->_alertControllerViewFlags;
  *&self->_alertControllerViewFlags = alertControllerViewFlags & 0xFBFF;
  if (self->_batchActionChangesInProgressCount < 1)
  {
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewVisualStyle:0];
    [(_UIAlertControllerPhoneTVMacView *)self _associateActionsWithActionViews];
    [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewVisualStyle:_visualStyle];
    [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewHeight];
    *&self->_alertControllerViewFlags &= ~0x200u;
    [(_UIAlertControllerPhoneTVMacView *)self _reloadInterfaceActionViewRepresentations];
    [(_UIAlertControllerPhoneTVMacView *)self _updatePreferredAction];
    if (_visualStyle)
    {
      [(_UIAlertControllerPhoneTVMacView *)self _actionLayoutDirectionChanged];
    }
  }

  else
  {
    *&self->_alertControllerViewFlags = alertControllerViewFlags | 0x400;
  }
}

- (void)_associateActionsWithActionViews
{
  v68 = *MEMORY[0x1E69E9840];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  actions = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v5 = [actions count];
  v6 = v5 - [(NSMutableArray *)self->_actionViews count];
  if (v6 >= 1)
  {
    do
    {
      v7 = [[_UIAlertControllerActionView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
      [(NSMutableArray *)self->_actionViews addObject:v7];

      --v6;
    }

    while (v6);
  }

  strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  array = [MEMORY[0x1E695DF70] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = self->_actionViews;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v61;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v60 + 1) + 8 * i);
        action = [v14 action];

        if (action)
        {
          action2 = [v14 action];
          [strongToStrongObjectsMapTable2 setObject:v14 forKey:action2];
        }

        else
        {
          [array addObject:v14];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v11);
  }

  v17 = [actions mutableCopy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v18 = actions;
  v19 = [v18 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v57;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v57 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v56 + 1) + 8 * j);
        v24 = [strongToStrongObjectsMapTable2 objectForKey:v23];
        if (v24)
        {
          [strongToStrongObjectsMapTable2 removeObjectForKey:v23];
          [v17 removeObject:v23];
          [strongToStrongObjectsMapTable setObject:v24 forKey:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v20);
  }

  v45 = v18;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v17;
  v25 = [obj countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v53;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v53 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v52 + 1) + 8 * k);
        firstObject = [array firstObject];
        if (firstObject)
        {
          nextObject = firstObject;
          [array removeObjectAtIndex:0];
        }

        else
        {
          objectEnumerator = [strongToStrongObjectsMapTable2 objectEnumerator];
          nextObject = [objectEnumerator nextObject];

          action3 = [nextObject action];
          v34 = [(_UIAlertControllerPhoneTVMacView *)self _interfaceActionRepresentationForAlertAlertAction:action3];
          [v34 invalidate];

          action4 = [nextObject action];
          [strongToStrongObjectsMapTable2 removeObjectForKey:action4];
        }

        alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
        [nextObject setAlertController:alertController];

        [nextObject setAction:v29];
        [strongToStrongObjectsMapTable setObject:nextObject forKey:v29];
      }

      v26 = [obj countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v26);
  }

  v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v45, "count")}];
  actionViews = self->_actionViews;
  self->_actionViews = v37;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  actions2 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v40 = [actions2 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v49;
    do
    {
      for (m = 0; m != v41; ++m)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(actions2);
        }

        v44 = [strongToStrongObjectsMapTable objectForKey:{*(*(&v48 + 1) + 8 * m), v45}];
        [(NSMutableArray *)self->_actionViews addObject:v44];
      }

      v41 = [actions2 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v41);
  }
}

- (void)_textFieldsChanged
{
  textFields = [(_UIAlertControllerPhoneTVMacView *)self textFields];
  v4 = [textFields count];

  if (v4)
  {
    _textFieldViewController = [(_UIAlertControllerPhoneTVMacView *)self _textFieldViewController];
    parentViewController = [_textFieldViewController parentViewController];
    alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];

    if (parentViewController != alertController)
    {
      alertController2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
      [alertController2 _willParentTextFieldViewController];

      textFieldViewControllerContainerView = self->_textFieldViewControllerContainerView;
      view = [_textFieldViewController view];
      [(UIView *)textFieldViewControllerContainerView addSubview:view];

      alertController3 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
      [alertController3 _didParentTextFieldViewController];
    }

    array = [MEMORY[0x1E695DF70] array];
    view2 = [_textFieldViewController view];
    leftAnchor = [view2 leftAnchor];
    leftAnchor2 = [(UIView *)self->_textFieldViewControllerContainerView leftAnchor];
    v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [array addObject:v15];

    view3 = [_textFieldViewController view];
    rightAnchor = [view3 rightAnchor];
    rightAnchor2 = [(UIView *)self->_textFieldViewControllerContainerView rightAnchor];
    v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [array addObject:v19];

    view4 = [_textFieldViewController view];
    topAnchor = [view4 topAnchor];
    topAnchor2 = [(UIView *)self->_textFieldViewControllerContainerView topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v23];

    view5 = [_textFieldViewController view];
    bottomAnchor = [view5 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_textFieldViewControllerContainerView bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v27];

    [MEMORY[0x1E69977A0] activateConstraints:array];
    [(_UIAlertControllerPhoneTVMacView *)self _sizeOfTextFieldViewControllerChanged];
  }
}

- (id)_interfaceActionForAlertAction:(id)action inActionGroupView:(id)view
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  actionGroup = [view actionGroup];
  actions = [actionGroup actions];

  v8 = [actions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(actions);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        underlyingAlertAction = [v11 underlyingAlertAction];
        v13 = [underlyingAlertAction isEqual:actionCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [actions countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)_reloadInterfaceActionViewRepresentations
{
  v14[1] = *MEMORY[0x1E69E9840];
  _unlocalizedOrderedPresentableAlertActionViewRepresentations = [(_UIAlertControllerPhoneTVMacView *)self _unlocalizedOrderedPresentableAlertActionViewRepresentations];
  _indexesOfActionSectionSeparators = [(_UIAlertControllerPhoneTVMacView *)self _indexesOfActionSectionSeparators];
  v5 = _newInterfaceActionSectionsForAlertActionViewRepresentations(_unlocalizedOrderedPresentableAlertActionViewRepresentations, _indexesOfActionSectionSeparators);

  mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
  v7 = [UIInterfaceActionGroup actionGroupWithActionsBySection:v5];
  [(UIInterfaceActionGroupView *)mainInterfaceActionsGroupView setActionGroup:v7];

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDiscreteCancelAction])
  {
    _discreteCancelActionView = [(_UIAlertControllerPhoneTVMacView *)self _discreteCancelActionView];
    v14[0] = _discreteCancelActionView;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    indexSet = [MEMORY[0x1E696AC90] indexSet];
    v11 = _newInterfaceActionSectionsForAlertActionViewRepresentations(v9, indexSet);

    discreteCancelActionGroupView = self->_discreteCancelActionGroupView;
    v13 = [UIInterfaceActionGroup actionGroupWithActionsBySection:v11];
    [(UIInterfaceActionGroupView *)discreteCancelActionGroupView setActionGroup:v13];
  }

  [(_UIAlertControllerPhoneTVMacView *)self _ensureActionViewRepresentationsHaveMetrics];
  [(_UIAlertControllerPhoneTVMacView *)self _reloadInterfaceActionsGroupViewPreferredAction];
}

- (void)_reloadInterfaceActionsGroupViewPreferredAction
{
  _effectivePreferredAction = [(_UIAlertControllerPhoneTVMacView *)self _effectivePreferredAction];
  v8 = [(_UIAlertControllerPhoneTVMacView *)self _interfaceActionForAlertAction:_effectivePreferredAction inActionGroupView:self->_mainInterfaceActionsGroupView];

  actionGroup = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionGroup];
  [actionGroup setPreferredAction:v8];

  _effectivePreferredAction2 = [(_UIAlertControllerPhoneTVMacView *)self _effectivePreferredAction];
  v6 = [(_UIAlertControllerPhoneTVMacView *)self _interfaceActionForAlertAction:_effectivePreferredAction2 inActionGroupView:self->_discreteCancelActionGroupView];

  actionGroup2 = [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView actionGroup];
  [actionGroup2 setPreferredAction:v6];
}

- (void)_scrollInitialActionToVisibleForPresentation
{
  actionGroup = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionGroup];
  preferredAction = [actionGroup preferredAction];

  if (!preferredAction)
  {
    mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
    alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    preferredAction2 = [alertController preferredAction];
    v7 = [(_UIAlertControllerPhoneTVMacView *)self _interfaceActionForAlertAction:preferredAction2 inActionGroupView:self->_mainInterfaceActionsGroupView];
    [(UIInterfaceActionGroupView *)mainInterfaceActionsGroupView scrollToCenterForInterfaceAction:v7];
  }
}

- (void)interfaceAction:(id)action invokeActionHandler:(id)handler completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  v10 = objc_opt_class();
  if (v10 != objc_opt_class())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIAlertControllerPhoneTVMacView.m" lineNumber:1660 description:{@"unexpected class %@ for interface action", objc_opt_class()}];
  }

  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  underlyingAlertAction = [actionCopy underlyingAlertAction];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83___UIAlertControllerPhoneTVMacView_interfaceAction_invokeActionHandler_completion___block_invoke;
  v15[3] = &unk_1E70F3608;
  v16 = completionCopy;
  v13 = completionCopy;
  [alertController _dismissWithAction:underlyingAlertAction dismissCompletion:v15];
}

- (BOOL)_shouldHaveCancelActionInMainActionButtonSequenceView
{
  if ([(_UIAlertControllerPhoneTVMacView *)self showsCancelAction])
  {
    cancelAction = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    if (cancelAction)
    {
      v4 = ![(_UIAlertControllerPhoneTVMacView *)self cancelActionIsDiscrete];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_unlocalizedOrderedPresentableAlertActionViewRepresentations
{
  array = [MEMORY[0x1E695DF70] array];
  actions = [(_UIAlertControllerPhoneTVMacView *)self actions];
  _unlocalizedOrderedPresentableAlertActions = [(_UIAlertControllerPhoneTVMacView *)self _unlocalizedOrderedPresentableAlertActions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96___UIAlertControllerPhoneTVMacView__unlocalizedOrderedPresentableAlertActionViewRepresentations__block_invoke;
  v11[3] = &unk_1E7107108;
  v12 = actions;
  selfCopy = self;
  v6 = array;
  v14 = v6;
  v7 = actions;
  [_unlocalizedOrderedPresentableAlertActions enumerateObjectsUsingBlock:v11];
  v8 = v14;
  v9 = v6;

  return v6;
}

- (id)_unlocalizedOrderedPresentableAlertActions
{
  array = [MEMORY[0x1E695DF70] array];
  _canLayOutActionsHorizontally = [(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally];
  _shouldHaveCancelActionInMainActionButtonSequenceView = [(_UIAlertControllerPhoneTVMacView *)self _shouldHaveCancelActionInMainActionButtonSequenceView];
  _actionsReversed = [(_UIAlertControllerPhoneTVMacView *)self _actionsReversed];
  _presentableAlertActions = [(_UIAlertControllerPhoneTVMacView *)self _presentableAlertActions];
  if (!_actionsReversed)
  {
    [array addObjectsFromArray:_presentableAlertActions];

    if (!_shouldHaveCancelActionInMainActionButtonSequenceView)
    {
      goto LABEL_9;
    }

LABEL_5:
    cancelAction = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    [array removeObject:cancelAction];
    if (_canLayOutActionsHorizontally)
    {
      [array insertObject:cancelAction atIndex:0];
    }

    else
    {
      [array addObject:cancelAction];
    }

    goto LABEL_9;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78___UIAlertControllerPhoneTVMacView__unlocalizedOrderedPresentableAlertActions__block_invoke;
  v10[3] = &unk_1E70F48F8;
  v11 = array;
  [_presentableAlertActions enumerateObjectsUsingBlock:v10];

  if (_shouldHaveCancelActionInMainActionButtonSequenceView)
  {
    goto LABEL_5;
  }

LABEL_9:

  return array;
}

- (id)_presentableAlertActions
{
  array = [MEMORY[0x1E695DF70] array];
  _shouldHaveCancelActionInMainActionButtonSequenceView = [(_UIAlertControllerPhoneTVMacView *)self _shouldHaveCancelActionInMainActionButtonSequenceView];
  actions = [(_UIAlertControllerPhoneTVMacView *)self actions];
  [array addObjectsFromArray:actions];

  if (!_shouldHaveCancelActionInMainActionButtonSequenceView)
  {
    cancelAction = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    [array removeObject:cancelAction];
  }

  return array;
}

- (int64_t)_numberOfActionsForMainActionButtonSequenceView
{
  actions = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v4 = [actions count];

  if (![(_UIAlertControllerPhoneTVMacView *)self _shouldHaveCancelActionInMainActionButtonSequenceView])
  {
    cancelAction = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    v6 = cancelAction != 0;

    v4 -= v6;
  }

  return v4;
}

- (void)_updatePreferredAction
{
  v23 = *MEMORY[0x1E69E9840];
  actions = [(_UIAlertControllerPhoneTVMacView *)self actions];
  cancelAction = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  preferredAction = [alertController preferredAction];
  alertController2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _resolvedStyle = [alertController2 _resolvedStyle];
  alertController3 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _visualStyle = [alertController3 _visualStyle];
  v11 = _UIAlertControllerEffectivePreferredActionGivenActions(actions, cancelAction, preferredAction, _resolvedStyle, _visualStyle);

  v12 = self->_effectivePreferredAction;
  if (v12 != v11 || ![(UIAlertAction *)v11 _isPreferred])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = actions;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v18 + 1) + 8 * v17++) _setIsPreferred:{0, v18}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }

    objc_storeStrong(&self->_effectivePreferredAction, v11);
    [(UIAlertAction *)self->_effectivePreferredAction _setIsPreferred:1];
    [(_UIAlertControllerPhoneTVMacView *)self _reloadInterfaceActionsGroupViewPreferredAction];
    [(UIView *)self setNeedsFocusUpdate];
  }
}

- (BOOL)hasDiscreteHorizontalCancelAction
{
  _hasDiscreteCancelAction = [(_UIAlertControllerPhoneTVMacView *)self _hasDiscreteCancelAction];
  if (_hasDiscreteCancelAction)
  {
    _hasDiscreteCancelAction = [(_UIAlertControllerPhoneTVMacView *)self _buttonsAreTopMost];
    if (_hasDiscreteCancelAction)
    {
      LOBYTE(_hasDiscreteCancelAction) = [(_UIAlertControllerPhoneTVMacView *)self _numberOfActionsForMainActionButtonSequenceView]> 0;
    }
  }

  return _hasDiscreteCancelAction;
}

- (double)_marginBetweenInterfaceActionGroups
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle _spacingBetweenDismissButtonAndContent];
  v4 = v3;

  return v4;
}

- (CGSize)_contentViewControllerSize
{
  contentViewController = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];
  [contentViewController preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)_labelHorizontalInsets
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle _labelHorizontalInsets];
  v4 = v3;

  return v4;
}

- (CGSize)_minimumSizeForAllActions
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*&self->_alertControllerViewFlags & 0x200) == 0)
  {
    discreteCancelActionViewWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewWidthConstraint];
    [discreteCancelActionViewWidthConstraint setActive:0];

    discreteCancelActionViewHeightConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewHeightConstraint];
    [discreteCancelActionViewHeightConstraint setActive:0];

    [(_UIAlertControllerPhoneTVMacView *)self _ensureActionViewRepresentationsHaveMetrics];
    p_largestActionDimension = &self->_largestActionDimension;
    v6 = MEMORY[0x1E695F060];
    self->_largestActionDimension = *MEMORY[0x1E695F060];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = self->_actionViews;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      v11 = *v6;
      v12 = v6[1];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          action = [v14 action];
          _contentViewController = [action _contentViewController];

          if (_contentViewController)
          {
            [_contentViewController preferredContentSize];
          }

          else
          {
            [v14 systemLayoutSizeFittingSize:{v11, v12}];
          }

          if (v17 > p_largestActionDimension->width)
          {
            p_largestActionDimension->width = v17;
          }

          if (v18 > self->_largestActionDimension.height)
          {
            self->_largestActionDimension.height = v18;
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    discreteCancelActionViewWidthConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewWidthConstraint];
    [discreteCancelActionViewWidthConstraint2 setActive:1];

    discreteCancelActionViewHeightConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewHeightConstraint];
    [discreteCancelActionViewHeightConstraint2 setActive:1];

    *&self->_alertControllerViewFlags |= 0x200u;
  }

  width = self->_largestActionDimension.width;
  height = self->_largestActionDimension.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:(id)recognizer
{
  v6[1] = *MEMORY[0x1E69E9840];
  [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:recognizer];
  mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
  v6[0] = self->_discreteCancelActionGroupView;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(UIInterfaceActionGroupView *)mainInterfaceActionsGroupView setSimultaneouslyPresentedGroupViews:v5];
}

- (void)setSpringLoaded:(BOOL)loaded
{
  if (self->_springLoaded != loaded)
  {
    loadedCopy = loaded;
    self->_springLoaded = loaded;
    [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView setSpringLoaded:?];
    discreteCancelActionGroupView = self->_discreteCancelActionGroupView;

    [(UIInterfaceActionGroupView *)discreteCancelActionGroupView setSpringLoaded:loadedCopy];
  }
}

- (BOOL)_shouldAllowPassthroughToLayersBehindUsForTouches:(id)touches
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86___UIAlertControllerPhoneTVMacView__shouldAllowPassthroughToLayersBehindUsForTouches___block_invoke;
  v6[3] = &unk_1E70F3A88;
  v6[4] = self;
  v3 = [touches objectsPassingTest:v6];
  v4 = [v3 count] == 0;

  return v4;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(_UIAlertControllerPhoneTVMacView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:beganCopy])
  {
    v8.receiver = self;
    v8.super_class = _UIAlertControllerPhoneTVMacView;
    [(UIResponder *)&v8 touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if ([(_UIAlertControllerPhoneTVMacView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:movedCopy])
  {
    v8.receiver = self;
    v8.super_class = _UIAlertControllerPhoneTVMacView;
    [(UIResponder *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(_UIAlertControllerPhoneTVMacView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:endedCopy])
  {
    v8.receiver = self;
    v8.super_class = _UIAlertControllerPhoneTVMacView;
    [(UIResponder *)&v8 touchesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if ([(_UIAlertControllerPhoneTVMacView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:cancelledCopy])
  {
    v8.receiver = self;
    v8.super_class = _UIAlertControllerPhoneTVMacView;
    [(UIResponder *)&v8 touchesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)_setVisualStyle:(id)style
{
  styleCopy = style;
  _unlocalizedOrderedPresentableAlertActions = [(_UIAlertControllerPhoneTVMacView *)self _unlocalizedOrderedPresentableAlertActions];
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  traitCollection = [_visualStyle traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  traitCollection2 = [(UIAlertControllerVisualStyle *)styleCopy traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom == userInterfaceIdiom2)
  {
    _visualStyle2 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v11 = _visualStyle2 == 0;
  }

  else
  {
    v11 = 1;
  }

  visualStyle = self->_visualStyle;
  self->_visualStyle = styleCopy;

  [(_UIAlertControllerPhoneTVMacView *)self _updateStyleForIdiomChange:v11];
  [(_UIAlertControllerPhoneTVMacView *)self _updateActionsGroupPresentationStyles];
  _unlocalizedOrderedPresentableAlertActions2 = [(_UIAlertControllerPhoneTVMacView *)self _unlocalizedOrderedPresentableAlertActions];
  if (([_unlocalizedOrderedPresentableAlertActions isEqual:_unlocalizedOrderedPresentableAlertActions2] & 1) == 0)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _reloadInterfaceActionViewRepresentations];
  }

  [(_UIAlertControllerPhoneTVMacView *)self _updateGlassBackground];
  [(_UIAlertControllerPhoneTVMacView *)self _updateBackdropView:[(_UIAlertControllerPhoneTVMacView *)self shouldHaveBackdropView]];
  [(_UIAlertControllerPhoneTVMacView *)self _updateCancelActionBeingDiscrete];
}

- (void)_updateStyleForIdiomChange:(BOOL)change
{
  changeCopy = change;
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  *&self->_alertControllerViewFlags &= ~0x200u;
  [(_UIAlertControllerPhoneTVMacView *)self _updateLabelFontSizes];
  [(_UIAlertControllerPhoneTVMacView *)self _updateLabelTextColor];
  [(_UIAlertControllerPhoneTVMacView *)self _updateLabelProperties];
  [(_UIAlertControllerPhoneTVMacView *)self _updateMainGroupViewProperties];
  [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewVisualStyle:_visualStyle];
  [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewHeight];
  if (changeCopy)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _propertiesChanged];
  }

  [(_UIAlertControllerPhoneTVMacView *)self _updateInsets];
  [(_UIAlertControllerPhoneTVMacView *)self _updateContentView];
  [(_UIAlertControllerPhoneTVMacView *)self _updateConstraintConstants];
  [(_UIAlertControllerPhoneTVMacView *)self _updatePreferredAction];
  [(_UIAlertControllerPhoneTVMacView *)self _updateTintColor];
  [(_UIAlertControllerPhoneTVMacView *)self _actionLayoutDirectionChanged];
}

- (void)_updateTitleLabelContents
{
  _hasAttributedTitle = [(_UIAlertControllerPhoneTVMacView *)self _hasAttributedTitle];
  titleLabel = self->_titleLabel;
  if (_hasAttributedTitle)
  {
    _attributedTitle = [(_UIAlertControllerPhoneTVMacView *)self _attributedTitle];
    [(UILabel *)titleLabel setAttributedText:?];
  }

  else
  {
    _attributedTitle = [(_UIAlertControllerPhoneTVMacView *)self title];
    [(UILabel *)titleLabel setText:?];
  }
}

- (void)_updateDetailLabelContents
{
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDetailMessage])
  {
    detailMessageLabel = self->_detailMessageLabel;
    _attributedDetailMessage = [(_UIAlertControllerPhoneTVMacView *)self _attributedDetailMessage];
    [(UILabel *)detailMessageLabel setAttributedText:_attributedDetailMessage];
  }
}

- (void)_updateMessageLabelContents
{
  _hasAttributedMessage = [(_UIAlertControllerPhoneTVMacView *)self _hasAttributedMessage];
  messageLabel = self->_messageLabel;
  if (_hasAttributedMessage)
  {
    _attributedMessage = [(_UIAlertControllerPhoneTVMacView *)self _attributedMessage];
    [(UILabel *)messageLabel setAttributedText:?];
  }

  else
  {
    _attributedMessage = [(_UIAlertControllerPhoneTVMacView *)self message];
    [(UILabel *)messageLabel setText:?];
  }
}

- (void)_updateTitleLabelFontSize
{
  if (![(_UIAlertControllerPhoneTVMacView *)self _hasAttributedTitle])
  {
    titleLabel = self->_titleLabel;
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    titleLabelFont = [_visualStyle titleLabelFont];
    [(UILabel *)titleLabel setFont:titleLabelFont];
  }
}

- (void)_updateDetailLabelFontSize
{
  detailMessageLabel = self->_detailMessageLabel;
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  _detailMessageFont = [_visualStyle _detailMessageFont];
  [(UILabel *)detailMessageLabel setFont:_detailMessageFont];
}

- (void)_updateMessageLabelFontSize
{
  if (![(_UIAlertControllerPhoneTVMacView *)self _hasAttributedMessage])
  {
    messageLabel = self->_messageLabel;
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    messageLabelFont = [_visualStyle messageLabelFont];
    [(UILabel *)messageLabel setFont:messageLabelFont];
  }
}

- (void)_updateLabelFontSizes
{
  [(_UIAlertControllerPhoneTVMacView *)self _updateTitleLabelFontSize];
  [(_UIAlertControllerPhoneTVMacView *)self _updateMessageLabelFontSize];

  [(_UIAlertControllerPhoneTVMacView *)self _updateDetailLabelFontSize];
}

- (void)_updateLabelTextColor
{
  if (![(_UIAlertControllerPhoneTVMacView *)self _hasAttributedTitle])
  {
    titleLabel = self->_titleLabel;
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    titleLabelColor = [_visualStyle titleLabelColor];
    [(UILabel *)titleLabel setTextColor:titleLabelColor];
  }

  if (![(_UIAlertControllerPhoneTVMacView *)self _hasAttributedMessage])
  {
    messageLabel = self->_messageLabel;
    _visualStyle2 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    messageLabelColor = [_visualStyle2 messageLabelColor];
    [(UILabel *)messageLabel setTextColor:messageLabelColor];

    _visualStyle3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    messageCompositingFilter = [_visualStyle3 messageCompositingFilter];

    _titleAndMessageLabelUseVibrancy = [(_UIAlertControllerPhoneTVMacView *)self _titleAndMessageLabelUseVibrancy];
    if (messageCompositingFilter)
    {
      v11 = _titleAndMessageLabelUseVibrancy;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      layer = [(UIView *)self->_messageLabel layer];
      [layer setCompositingFilter:messageCompositingFilter];
    }

    layer2 = [(UIView *)self->_contentViewTopItemsView layer];
    [layer2 setAllowsGroupBlending:v11];

    layer3 = [(UIView *)self->_contentViewTopItemsView layer];
    [layer3 setAllowsGroupOpacity:v11];
  }
}

- (void)_updateLabelProperties
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);
  if ([WeakRetained _titleMaximumLineCount] < 0)
  {
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    maximumNumberOfLinesInTitleLabel = [_visualStyle maximumNumberOfLinesInTitleLabel];
  }

  else
  {
    _visualStyle = objc_loadWeakRetained(&self->_alertController);
    maximumNumberOfLinesInTitleLabel = [_visualStyle _titleMaximumLineCount];
  }

  v6 = maximumNumberOfLinesInTitleLabel;

  [(UILabel *)self->_titleLabel setNumberOfLines:v6];
  titleLabel = self->_titleLabel;
  v8 = objc_loadWeakRetained(&self->_alertController);
  -[UILabel setLineBreakMode:](titleLabel, "setLineBreakMode:", [v8 _titleLineBreakMode]);

  messageLabel = self->_messageLabel;
  _visualStyle2 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  -[UILabel setNumberOfLines:](messageLabel, "setNumberOfLines:", [_visualStyle2 maximumNumberOfLinesInMessageLabel]);
}

- (void)_updateInsets
{
  v28 = *MEMORY[0x1E69E9840];
  [(_UIAlertControllerPhoneTVMacView *)self _contentInsets];
  v4 = v3;
  v6 = v5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_dimmingViewForegroundViewTopConstraints;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v22 + 1) + 8 * v11++) setConstant:v4];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_dimmingViewForegroundViewBottomConstraints;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    v16 = -v6;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * v17++) setConstant:{v16, v18}];
      }

      while (v14 != v17);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }
}

- (double)_maximumWidthUsingAccessibilityWidthIfActionsAreTruncated:(double)truncated
{
  [(_UIAlertControllerPhoneTVMacView *)self _minimumSizeForAllActions];
  if (v5 > truncated && ([UIApp _isSpringBoard] & 1) == 0)
  {
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    [_visualStyle accessibilityWidth];
    truncated = v7;
  }

  return truncated;
}

- (void)_updateContentView
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle maximumWidthForTitleAndMessageContentView];
  [(_UIAlertControllerPhoneTVMacView *)self _maximumWidthUsingAccessibilityWidthIfActionsAreTruncated:?];
  v5 = v4;

  contentScrollViewMaximumWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumWidthConstraint];
  v7 = contentScrollViewMaximumWidthConstraint;
  if (v5 == 0.0)
  {
    v8 = 0;
  }

  else
  {
    [contentScrollViewMaximumWidthConstraint setConstant:v5];

    contentScrollViewMaximumWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumWidthConstraint];
    v7 = contentScrollViewMaximumWidthConstraint;
    v8 = 1;
  }

  [contentScrollViewMaximumWidthConstraint setActive:v8];

  _visualStyle2 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [_visualStyle2 maximumContentHeight];
  v11 = v10;

  if (v11 > 0.0)
  {
    contentScrollViewMaximumHeightConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
    [contentScrollViewMaximumHeightConstraint setConstant:v11];
  }

  contentScrollViewMaximumHeightConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
  [contentScrollViewMaximumHeightConstraint2 setActive:v11 > 0.0];

  WeakRetained = objc_loadWeakRetained(&self->_alertController);
  _window = [WeakRetained _window];
  v16 = _window;
  if (_window)
  {
    window = _window;
  }

  else
  {
    window = [(UIView *)self window];
  }

  v62 = window;

  _toWindowOrientation = [v62 _toWindowOrientation];
  if (!_toWindowOrientation)
  {
    _toWindowOrientation = [v62 interfaceOrientation];
  }

  screen = [v62 screen];
  if (!screen)
  {
    goto LABEL_20;
  }

  v20 = __UIStatusBarManagerForWindow(v62);
  isStatusBarHidden = [v20 isStatusBarHidden];

  if (isStatusBarHidden)
  {
    v22 = 1;
  }

  else
  {
    v23 = __UIStatusBarManagerForWindow(v62);
    [v23 defaultStatusBarHeightInOrientation:_toWindowOrientation];
    v25 = v24;

    v22 = v25 == 0.0;
  }

  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    [v62 _referenceFrameFromSceneUsingScreenBounds:v22];
  }

  else
  {
    [screen _applicationFrameForInterfaceOrientation:_toWindowOrientation usingStatusbarHeight:v22 ignoreStatusBar:0.0];
  }

  v27 = v26;
  [(_UIAlertControllerPhoneTVMacView *)self _contentInsets];
  v30 = v27 - (v28 + v29);
  if (v30 > 0.0)
  {
    contentViewMaxHeightConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewMaxHeightConstraint];
    [contentViewMaxHeightConstraint setConstant:v30];

    v32 = 1;
  }

  else
  {
LABEL_20:
    v32 = 0;
  }

  contentViewMaxHeightConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewMaxHeightConstraint];
  [contentViewMaxHeightConstraint2 setActive:v32];

  _visualStyle3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  contentClipsToBounds = [_visualStyle3 contentClipsToBounds];
  contentView = self->_contentView;
  if (contentClipsToBounds)
  {
    [(UIView *)contentView setClipsToBounds:1];
    [_visualStyle3 contentCornerRadius];
    v38 = v37;
    layer = [(UIView *)self->_contentView layer];
    [layer setCornerRadius:v38];

    contentCornerCurve = [_visualStyle3 contentCornerCurve];
    layer2 = [(UIView *)self->_contentView layer];
    [layer2 setCornerCurve:contentCornerCurve];
  }

  else
  {
    [(UIView *)contentView setClipsToBounds:0];
    contentCornerCurve = [(UIView *)self->_contentView layer];
    [contentCornerCurve setCornerRadius:0.0];
  }

  if ([_visualStyle3 contentHasShadow])
  {
    [_visualStyle3 contentShadowRadius];
    v43 = v42;
    layer3 = [(UIView *)self layer];
    [layer3 setShadowRadius:v43];

    contentShadowColor = [_visualStyle3 contentShadowColor];
    cgColor = [contentShadowColor cgColor];
    layer4 = [(UIView *)self layer];
    [layer4 setShadowColor:cgColor];

    [_visualStyle3 contentShadowOffset];
    v49 = v48;
    v51 = v50;
    layer5 = [(UIView *)self layer];
    [layer5 setShadowOffset:{v49, v51}];

    [_visualStyle3 contentShadowOpacity];
    v54 = v53;
  }

  else
  {
    layer6 = [(UIView *)self layer];
    [layer6 setShadowRadius:0.0];

    layer7 = [(UIView *)self layer];
    [layer7 setShadowColor:0];

    v57 = *MEMORY[0x1E695F060];
    v58 = *(MEMORY[0x1E695F060] + 8);
    layer8 = [(UIView *)self layer];
    [layer8 setShadowOffset:{v57, v58}];

    v54 = 0.0;
  }

  layer9 = [(UIView *)self layer];
  *&v61 = v54;
  [layer9 setShadowOpacity:v61];
}

- (void)_updateMainGroupViewProperties
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  -[UIInterfaceActionGroupView setFocusAvoidsNonDefaultActionsIfPossible:](self->_mainInterfaceActionsGroupView, "setFocusAvoidsNonDefaultActionsIfPossible:", [_visualStyle focusAvoidsNonDefaultActionsIfPossible]);
}

- (void)_updateActionViewVisualStyle:(id)style
{
  styleCopy = style;
  actionViews = self->_actionViews;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___UIAlertControllerPhoneTVMacView__updateActionViewVisualStyle___block_invoke;
  v7[3] = &unk_1E7107130;
  v8 = styleCopy;
  v6 = styleCopy;
  [(NSMutableArray *)actionViews enumerateObjectsUsingBlock:v7];
}

- (void)_updateActionViewHeight
{
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    if (_visualStyle)
    {
      [(_UIAlertControllerPhoneTVMacView *)self _idealLayoutWidth];
      v7 = v6;
      actionViews = self->_actionViews;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59___UIAlertControllerPhoneTVMacView__updateActionViewHeight__block_invoke;
      v15[3] = &__block_descriptor_40_e45_v32__0___UIAlertControllerActionView_8Q16_B24l;
      *&v15[4] = v6;
      [(NSMutableArray *)actionViews enumerateObjectsUsingBlock:v15];
      *&self->_alertControllerViewFlags &= ~0x200u;
      _canLayOutActionsHorizontally = [(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally];
      if (!_UISolariumEnabled() || _canLayOutActionsHorizontally)
      {
        [(_UIAlertControllerPhoneTVMacView *)self _itemSizeForHorizontalLayout:_canLayOutActionsHorizontally];
      }

      else
      {
        [_visualStyle actionSequenceEdgeInsets];
        v12 = v7 - (v10 + v11);
      }

      v13 = self->_actionViews;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59___UIAlertControllerPhoneTVMacView__updateActionViewHeight__block_invoke_2;
      v14[3] = &__block_descriptor_40_e45_v32__0___UIAlertControllerActionView_8Q16_B24l;
      *&v14[4] = v12;
      [(NSMutableArray *)v13 enumerateObjectsUsingBlock:v14];
    }
  }
}

- (void)_updateConstraintConstants
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __62___UIAlertControllerPhoneTVMacView__updateConstraintConstants__block_invoke;
  v49[3] = &unk_1E7107178;
  v49[4] = self;
  v49[5] = &v50;
  v4 = _Block_copy(v49);
  headerContentViewController = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];

  if (headerContentViewController)
  {
    headerContentViewControllerContainerViewTopAlignmentConstraint = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewControllerContainerViewTopAlignmentConstraint];
    [headerContentViewControllerContainerViewTopAlignmentConstraint setConstant:0.0];
  }

  v7 = 0.0;
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTitle])
  {
    title = [(_UIAlertControllerPhoneTVMacView *)self title];
    [_visualStyle _scaledMarginAboveTitleLabelFirstBaselineInAlertControllerView:self titleText:title];
    v10 = v9;

    titleLabelTopAlignmentConstraints = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];
    [titleLabelTopAlignmentConstraints setEqualityConstant:v10];

    titleLabelTopAlignmentConstraints2 = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];
    [_visualStyle _scaledTitleLabelSafeBaselineHeightInAlertControllerView:self];
    v14 = v13;
    [_visualStyle _minimumSpacingAboveTopmostLabelSafeAscender];
    v16 = v15;
    titleLabelTopAlignmentConstraints3 = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];
    [titleLabelTopAlignmentConstraints3 equalityConstant];
    v19 = v18;
    v20 = v14 + v16;

    if (v20 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    [titleLabelTopAlignmentConstraints2 setMinConstant:v21];

    [_visualStyle _scaledMarginBelowTitleLabelLastBaseline];
    v7 = v22;
    v4[2](v4, self->_titleLabel, v10);
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasMessage])
  {
    messageLabelTopAlignmentConstraints = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];
    [_visualStyle _scaledMarginAboveMessageLabelFirstBaseline];
    [messageLabelTopAlignmentConstraints setEqualityConstant:?];

    messageLabelTopAlignmentConstraints2 = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];
    [_visualStyle _scaledMessageSafeBaselineHeightInAlertControllerView:self];
    v26 = v25;
    [_visualStyle _minimumSpacingAboveTopmostLabelSafeAscender];
    v28 = v27;
    messageLabelTopAlignmentConstraints3 = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];
    [messageLabelTopAlignmentConstraints3 equalityConstant];
    v31 = v30;
    v32 = v26 + v28;

    if (v32 >= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v32;
    }

    [messageLabelTopAlignmentConstraints2 setMinConstant:v33];

    [_visualStyle _scaledMarginBelowMessageLabelLastBaseline];
    v7 = v34;
    messageLabel = self->_messageLabel;
    [_visualStyle _scaledMarginAboveMessageLabelFirstBaseline];
    (v4[2])(v4, messageLabel);
  }

  contentViewController = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];

  if (contentViewController)
  {
    contentViewControllerContainerViewTopAlignmentConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewTopAlignmentConstraint];
    [contentViewControllerContainerViewTopAlignmentConstraint setConstant:v7];

    v7 = 0.0;
    if (_UISolariumEnabled())
    {
      [_visualStyle _topItemsViewBottomMargin];
      v7 = v38;
    }
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTextFields])
  {
    textFieldViewControllerContainerViewTopAlignmentConstraints = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewTopAlignmentConstraints];
    [textFieldViewControllerContainerViewTopAlignmentConstraints setEqualityConstant:v7];

    textFieldViewControllerContainerViewTopAlignmentConstraints2 = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewTopAlignmentConstraints];
    v41 = textFieldViewControllerContainerViewTopAlignmentConstraints2;
    v42 = 8.0;
    if (v7 <= 8.0)
    {
      v42 = v7;
    }

    [textFieldViewControllerContainerViewTopAlignmentConstraints2 setMinConstant:v42];

    v7 = 0.0;
  }

  [(_UIAlertControllerPhoneTVMacView *)self _updateConstraintSpacingForExternalOffset];
  if ([(_UIAlertControllerPhoneTVMacView *)self _numberOfActionsForMainActionButtonSequenceView]<= 0)
  {
    v7 = v51[3];
  }

  contentScrollViewBottomConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewBottomConstraint];
  [contentScrollViewBottomConstraint setConstant:v7];

  detailMessageLabelTopAlignmentConstraint = [(_UIAlertControllerPhoneTVMacView *)self detailMessageLabelTopAlignmentConstraint];
  [_visualStyle _scaledMarginAboveDetailMessageFirstBaseline];
  [detailMessageLabelTopAlignmentConstraint setConstant:?];

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDetailMessage])
  {
    _visualStyle2 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    [_visualStyle2 _scaledMarginBelowDetailMessage];
    v47 = v46;
    contentViewBottomConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];
    [contentViewBottomConstraint setConstant:v47];
  }

  _Block_object_dispose(&v50, 8);
}

- (void)_updateTintColor
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v6 = [_visualStyle tintColorForAlertController:alertController];

  v5 = v6;
  if (v6)
  {
    [(UIView *)self setTintColor:v6];
    v5 = v6;
  }
}

- (void)_setActionsReversed:(BOOL)reversed
{
  if (self->_actionsReversed != reversed)
  {
    self->_actionsReversed = reversed;
    [(_UIAlertControllerPhoneTVMacView *)self _reloadInterfaceActionViewRepresentations];
  }
}

- (void)deselectAllActions
{
  actionSelectionController = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionSelectionController];
  [actionSelectionController deselectAllActions];

  actionSelectionController2 = [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView actionSelectionController];
  [actionSelectionController2 deselectAllActions];
}

- (void)_contentSizeChanged
{
  [(_UIAlertControllerPhoneTVMacView *)self _updateStyleForIdiomChange:0];

  [(_UIAlertControllerPhoneTVMacView *)self _actionsChanged];
}

- (void)_setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  v9 = titleCopy;
  v6 = text;
  v7 = v6;
  if (v6 == v9)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v9 && v6)
    {
      v8 = [v9 isEqual:v6];
    }
  }

  if (v9)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _prepareTitleLabel];
  }

  [(UILabel *)self->_titleLabel setText:?];
  if ((v8 & 1) == 0)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _propertiesChanged];
  }
}

- (void)_setMessage:(id)message
{
  messageCopy = message;
  text = [(UILabel *)self->_messageLabel text];
  v9 = messageCopy;
  v6 = text;
  v7 = v6;
  if (v6 == v9)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v9 && v6)
    {
      v8 = [v9 isEqual:v6];
    }
  }

  if (v9)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _prepareMesssageLabel];
  }

  [(UILabel *)self->_messageLabel setText:?];
  if ((v8 & 1) == 0)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _propertiesChanged];
  }
}

- (void)_setAttributedTitle:(id)title
{
  titleCopy = title;
  attributedText = [(UILabel *)self->_titleLabel attributedText];
  v9 = titleCopy;
  v6 = attributedText;
  v7 = v6;
  if (v6 == v9)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v9 && v6)
    {
      v8 = [v9 isEqual:v6];
    }
  }

  if (v9)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _prepareTitleLabel];
  }

  [(UILabel *)self->_titleLabel setAttributedText:?];
  if ((v8 & 1) == 0)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _propertiesChanged];
  }
}

- (void)_setAttributedMessage:(id)message
{
  messageCopy = message;
  attributedText = [(UILabel *)self->_messageLabel attributedText];
  v9 = messageCopy;
  v6 = attributedText;
  v7 = v6;
  if (v6 == v9)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v9 && v6)
    {
      v8 = [v9 isEqual:v6];
    }
  }

  if (v9)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _prepareMesssageLabel];
  }

  [(UILabel *)self->_messageLabel setAttributedText:?];
  if ((v8 & 1) == 0)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _propertiesChanged];
  }
}

- (void)_setAttributedDetailMessage:(id)message
{
  messageCopy = message;
  attributedText = [(UILabel *)self->_detailMessageLabel attributedText];
  v9 = messageCopy;
  v6 = attributedText;
  v7 = v6;
  if (v6 == v9)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v9 && v6)
    {
      v8 = [v9 isEqual:v6];
    }
  }

  if (v9)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _prepareDetailMessageLabel];
  }

  [(UILabel *)self->_detailMessageLabel setAttributedText:?];
  if ((v8 & 1) == 0)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _propertiesChanged];
  }
}

- (id)title
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  title = [alertController title];

  return title;
}

- (id)message
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  message = [alertController message];

  return message;
}

- (id)_attributedTitle
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _attributedTitle = [alertController _attributedTitle];

  return _attributedTitle;
}

- (id)_attributedMessage
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _attributedMessage = [alertController _attributedMessage];

  return _attributedMessage;
}

- (id)_attributedDetailMessage
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _attributedDetailMessage = [alertController _attributedDetailMessage];

  return _attributedDetailMessage;
}

- (id)_vibrancyEffectForTitleAndMessageLabel
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v4 = _visualStyle;
  if (_visualStyle)
  {
    _visualStyle2 = _visualStyle;
  }

  else
  {
    alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    _visualStyle2 = [alertController _visualStyle];
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (!_visualStyle2)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Neither _UIAlertControllerPhoneTVMacView or UIAlertController have a visual style yet, which means it impossible to correctly determine the vibrancy effect.", buf, 2u);
      }
    }
  }

  else if (!_visualStyle2)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_vibrancyEffectForTitleAndMessageLabel___s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Neither _UIAlertControllerPhoneTVMacView or UIAlertController have a visual style yet, which means it impossible to correctly determine the vibrancy effect.", v11, 2u);
    }
  }

  vibrancyEffectForTitleAndMessageLabel = [_visualStyle2 vibrancyEffectForTitleAndMessageLabel];

  return vibrancyEffectForTitleAndMessageLabel;
}

- (BOOL)_titleAndMessageLabelUseVibrancy
{
  _vibrancyEffectForTitleAndMessageLabel = [(_UIAlertControllerPhoneTVMacView *)self _vibrancyEffectForTitleAndMessageLabel];
  v3 = _vibrancyEffectForTitleAndMessageLabel != 0;

  return v3;
}

- (BOOL)_hasTitle
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _hasTitle = [alertController _hasTitle];

  return _hasTitle;
}

- (BOOL)_hasAttributedTitle
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _hasAttributedTitle = [alertController _hasAttributedTitle];

  return _hasAttributedTitle;
}

- (BOOL)_hasMessage
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _hasMessage = [alertController _hasMessage];

  return _hasMessage;
}

- (BOOL)_hasAttributedMessage
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _hasAttributedMessage = [alertController _hasAttributedMessage];

  return _hasAttributedMessage;
}

- (BOOL)_hasDetailMessage
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _hasDetailMessage = [alertController _hasDetailMessage];

  return _hasDetailMessage;
}

- (BOOL)_hasTextFields
{
  textFields = [(_UIAlertControllerPhoneTVMacView *)self textFields];
  v3 = [textFields count] != 0;

  return v3;
}

- (id)_textFieldViewController
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _textFieldViewController = [alertController _textFieldViewController];

  return _textFieldViewController;
}

- (id)headerContentViewController
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _headerContentViewController = [alertController _headerContentViewController];

  return _headerContentViewController;
}

- (id)contentViewController
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  contentViewController = [alertController contentViewController];

  return contentViewController;
}

- (id)separatedHeaderContentViewController
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _separatedHeaderContentViewController = [alertController _separatedHeaderContentViewController];

  return _separatedHeaderContentViewController;
}

- (id)actions
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _actions = [alertController _actions];

  return _actions;
}

- (id)cancelAction
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _cancelAction = [alertController _cancelAction];

  return _cancelAction;
}

- (id)_focusedAction
{
  _interfaceActionOfFocusedRepresentationView = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView _interfaceActionOfFocusedRepresentationView];
  if (!_interfaceActionOfFocusedRepresentationView)
  {
    _interfaceActionOfFocusedRepresentationView = [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView _interfaceActionOfFocusedRepresentationView];
  }

  underlyingAlertAction = [_interfaceActionOfFocusedRepresentationView underlyingAlertAction];

  return underlyingAlertAction;
}

- (id)_preferredActionView
{
  mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
  v4 = __UIFocusEnvironmentPreferredFocusedView(self, 0);

  alertControllerActionView = 0;
  if (mainInterfaceActionsGroupView == v4)
  {
    preferredActionRepresentation = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView preferredActionRepresentation];
    action = [preferredActionRepresentation action];

    alertControllerActionView = [action alertControllerActionView];
  }

  return alertControllerActionView;
}

- (id)_indexesOfActionSectionSeparators
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _indexesOfActionSectionSeparators = [alertController _indexesOfActionSectionSeparators];

  return _indexesOfActionSectionSeparators;
}

- (double)_spaceRequiredForActionSectionsSpacing
{
  _indexesOfActionSectionSeparators = [(_UIAlertControllerPhoneTVMacView *)self _indexesOfActionSectionSeparators];
  v4 = [_indexesOfActionSectionSeparators count];

  if (!v4)
  {
    return 0.0;
  }

  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v6 = v4;
  interfaceActionVisualStyle = [_visualStyle interfaceActionVisualStyle];
  [interfaceActionVisualStyle actionSectionSpacing];
  v9 = v8 * v6;

  return v9;
}

- (id)textFields
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  textFields = [alertController textFields];

  return textFields;
}

- (void)setPresentedAsPopover:(BOOL)popover
{
  popoverCopy = popover;
  if ([(_UIAlertControllerPhoneTVMacView *)self presentedAsPopover]!= popover)
  {
    if (popoverCopy)
    {
      v5 = 16;
    }

    else
    {
      v5 = 0;
    }

    *&self->_alertControllerViewFlags = *&self->_alertControllerViewFlags & 0xFFEF | v5;
    if (![(_UIAlertControllerPhoneTVMacView *)self presentedAsPopover])
    {
      [(_UIAlertControllerPhoneTVMacView *)self _setLayoutSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    }

    [(_UIAlertControllerPhoneTVMacView *)self _reevaluateSuperviewSizingConstraints];
    [(_UIAlertControllerPhoneTVMacView *)self _sizeOfContentViewControllerChanged];

    [(_UIAlertControllerPhoneTVMacView *)self _actionLayoutDirectionChanged];
  }
}

- (void)setHasDimmingView:(BOOL)view
{
  viewCopy = view;
  if ([(_UIAlertControllerPhoneTVMacView *)self hasDimmingView]!= view)
  {
    if (viewCopy)
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    *&self->_alertControllerViewFlags = *&self->_alertControllerViewFlags & 0xFFDF | v5;
    [(_UIAlertControllerPhoneTVMacView *)self _reevaluateSuperviewSizingConstraints];
    if ([(_UIAlertControllerPhoneTVMacView *)self hasDimmingView])
    {
      [(UIView *)self insertSubview:self->_dimmingView atIndex:0];
      [(UIView *)self removeConstraints:self->_noDimmingViewConstraints];
      [(UIView *)self addConstraints:self->_dimmingViewConstraints];
      alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
      _resolvedStyle = [alertController _resolvedStyle];

      if (_resolvedStyle)
      {
        v8 = &OBJC_IVAR____UIAlertControllerPhoneTVMacView__dimmingViewConstraintsForActionSheetStyle;
      }

      else
      {
        v8 = &OBJC_IVAR____UIAlertControllerPhoneTVMacView__dimmingViewConstraintsForAlertStyle;
      }

      if (_resolvedStyle)
      {
        v9 = &OBJC_IVAR____UIAlertControllerPhoneTVMacView__dimmingViewConstraintsForAlertStyle;
      }

      else
      {
        v9 = &OBJC_IVAR____UIAlertControllerPhoneTVMacView__dimmingViewConstraintsForActionSheetStyle;
      }
    }

    else
    {
      [(UIView *)self->_dimmingView removeFromSuperview];
      [(UIView *)self removeConstraints:self->_dimmingViewConstraints];
      [(UIView *)self removeConstraints:self->_dimmingViewConstraintsForAlertStyle];
      v9 = &OBJC_IVAR____UIAlertControllerPhoneTVMacView__noDimmingViewConstraints;
      v8 = &OBJC_IVAR____UIAlertControllerPhoneTVMacView__dimmingViewConstraintsForActionSheetStyle;
    }

    [(UIView *)self removeConstraints:*(&self->super.super.super.super.isa + *v8)];
    v10 = *(&self->super.super.super.super.isa + *v9);

    [(UIView *)self addConstraints:v10];
  }
}

- (void)setPresentationContextPrefersCancelActionShown:(BOOL)shown
{
  if (self->_presentationContextPrefersCancelActionShown != shown)
  {
    self->_presentationContextPrefersCancelActionShown = shown;
    [(_UIAlertControllerPhoneTVMacView *)self _propertiesChanged];
    [(_UIAlertControllerPhoneTVMacView *)self _actionLayoutDirectionChanged];
    [(_UIAlertControllerPhoneTVMacView *)self _actionsChanged];

    [(_UIAlertControllerPhoneTVMacView *)self _updateCancelActionBeingDiscrete];
  }
}

- (BOOL)showsCancelAction
{
  if ([(_UIAlertControllerPhoneTVMacView *)self presentationContextPrefersCancelActionShown])
  {
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    cancelAction = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v6 = [_visualStyle hideCancelAction:cancelAction inAlertController:alertController] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)__cancelActionView
{
  actions = [(_UIAlertControllerPhoneTVMacView *)self actions];
  cancelAction = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
  v5 = [actions indexOfObject:cancelAction];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_actionViews objectAtIndex:v5];
  }

  return v6;
}

- (void)_updateCancelActionBeingDiscrete
{
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  if ([alertController _resolvedStyle])
  {
    showsCancelAction = 0;
  }

  else
  {
    cancelAction = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    if (cancelAction)
    {
      showsCancelAction = [(_UIAlertControllerPhoneTVMacView *)self showsCancelAction];
    }

    else
    {
      showsCancelAction = 0;
    }
  }

  [(_UIAlertControllerPhoneTVMacView *)self setCancelActionIsDiscrete:showsCancelAction];
}

- (void)setCancelActionIsDiscrete:(BOOL)discrete
{
  discreteCopy = discrete;
  if ([(_UIAlertControllerPhoneTVMacView *)self cancelActionIsDiscrete]!= discrete)
  {
    if (discreteCopy)
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    *&self->_alertControllerViewFlags = *&self->_alertControllerViewFlags & 0xFFBF | v5;
    if (discreteCopy)
    {
      [(UIView *)self->_contentView addSubview:self->_discreteCancelActionGroupView];
    }

    else
    {
      contentViewBottomConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];
      [contentViewBottomConstraint setActive:0];

      [(_UIAlertControllerPhoneTVMacView *)self setContentViewBottomConstraint:0];
      discreteCancelActionViewTopConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewTopConstraint];
      [discreteCancelActionViewTopConstraint setActive:0];

      [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewTopConstraint:0];
      discreteCancelActionViewLeadingConstraint = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewLeadingConstraint];
      [discreteCancelActionViewLeadingConstraint setActive:0];

      [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewLeadingConstraint:0];
      [(UIView *)self->_discreteCancelActionGroupView removeFromSuperview];
    }

    [(_UIAlertControllerPhoneTVMacView *)self _reloadInterfaceActionViewRepresentations];
    [(_UIAlertControllerPhoneTVMacView *)self _propertiesChanged];

    [(_UIAlertControllerPhoneTVMacView *)self _actionLayoutDirectionChanged];
  }
}

- (BOOL)cancelActionIsDiscrete
{
  if (_UISolariumEnabled())
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    return (*&self->_alertControllerViewFlags >> 6) & 1;
  }

  return v3;
}

- (void)_updateGlassBackground
{
  _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  _shouldApplyGlassToAlertView = [_visualStyle _shouldApplyGlassToAlertView];
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  _isPresentedAsPopover = [alertController _isPresentedAsPopover];

  if (_shouldApplyGlassToAlertView && (_isPresentedAsPopover & 1) == 0)
  {
    v6 = [[_UIViewGlass alloc] initWithVariant:0];
    [(_UIViewGlass *)v6 setFlexible:1];
    [(UIView *)self _setBackground:v6];
    contentCornerCurve = [_visualStyle contentCornerCurve];
    layer = [(UIView *)self layer];
    [layer setCornerCurve:contentCornerCurve];

    [_visualStyle contentCornerRadius];
    v10 = v9;
    layer2 = [(UIView *)self layer];
    [layer2 setCornerRadius:v10];
  }
}

- (void)_updateBackdropView:(BOOL)view
{
  viewCopy = view;
  backdropView = self->_backdropView;
  if (backdropView)
  {
    [(UIView *)backdropView removeFromSuperview];
    v6 = self->_backdropView;
    self->_backdropView = 0;
  }

  if (viewCopy)
  {
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    contentBackdropView = [_visualStyle contentBackdropView];
    v9 = self->_backdropView;
    self->_backdropView = contentBackdropView;

    v10 = self->_backdropView;
    if (v10)
    {
      [(UIView *)self->_contentView insertSubview:v10 atIndex:0];
      [(UIView *)self->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingAnchor = [(UIView *)self->_backdropView leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_contentView leadingAnchor];
      v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v13 setActive:1];

      trailingAnchor = [(UIView *)self->_backdropView trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_contentView trailingAnchor];
      v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v16 setActive:1];

      topAnchor = [(UIView *)self->_backdropView topAnchor];
      topAnchor2 = [(UIView *)self->_contentView topAnchor];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v19 setActive:1];

      bottomAnchor = [(UIView *)self->_backdropView bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_contentView bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v21 setActive:1];
    }
  }
}

- (void)setShouldHaveBackdropView:(BOOL)view
{
  alertControllerViewFlags = self->_alertControllerViewFlags;
  if (((((alertControllerViewFlags & 0x80) == 0) ^ view) & 1) == 0)
  {
    v11 = v4;
    v12 = v3;
    viewCopy = view;
    if (view)
    {
      v10 = 128;
    }

    else
    {
      v10 = 0;
    }

    *&self->_alertControllerViewFlags = alertControllerViewFlags & 0xFF7F | v10;
    [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView _setDrawsBackground:v11, v12, v5];

    [(_UIAlertControllerPhoneTVMacView *)self _updateBackdropView:viewCopy];
  }
}

- (void)setAlignsToKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  if ([(_UIAlertControllerPhoneTVMacView *)self alignsToKeyboard]!= keyboard)
  {
    if (keyboardCopy)
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    *&self->_alertControllerViewFlags = *&self->_alertControllerViewFlags & 0xFEFF | v5;
    if ([(_UIAlertControllerPhoneTVMacView *)self alignsToKeyboard])
    {
      [(UIView *)self insertSubview:self->_keyboardLayoutAlignmentView atIndex:0];
      [(UIView *)self insertSubview:self->_keyboardLayoutAlignmentAvailableSpaceView atIndex:0];

      [(_UIAlertControllerPhoneTVMacView *)self _applyKeyboardAlignmentViewsConstraints];
    }

    else
    {
      [(UIView *)self->_keyboardLayoutAlignmentView removeFromSuperview];
      keyboardLayoutAlignmentAvailableSpaceView = self->_keyboardLayoutAlignmentAvailableSpaceView;

      [(UIView *)keyboardLayoutAlignmentAvailableSpaceView removeFromSuperview];
    }
  }
}

- (void)_addHeaderContentViewControllerToViewHierarchyIfNecessary
{
  v24[4] = *MEMORY[0x1E69E9840];
  headerContentViewController = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];
  view = [headerContentViewController view];

  superview = [view superview];
  headerContentViewControllerContainerView = self->_headerContentViewControllerContainerView;

  if (superview != headerContentViewControllerContainerView)
  {
    [(UIView *)self->_headerContentViewControllerContainerView addSubview:view];
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    shouldRespectContentViewControllerClippingPreference = [_visualStyle shouldRespectContentViewControllerClippingPreference];

    if (shouldRespectContentViewControllerClippingPreference)
    {
      alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
      -[UIView setClipsToBounds:](self->_headerContentViewControllerContainerView, "setClipsToBounds:", [alertController _wantsUnclippedHeaderContentViewControllerContainer] ^ 1);
    }

    v18 = MEMORY[0x1E69977A0];
    leftAnchor = [view leftAnchor];
    leftAnchor2 = [(UIView *)self->_headerContentViewControllerContainerView leftAnchor];
    v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v24[0] = v21;
    rightAnchor = [view rightAnchor];
    rightAnchor2 = [(UIView *)self->_headerContentViewControllerContainerView rightAnchor];
    v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v24[1] = v10;
    topAnchor = [view topAnchor];
    topAnchor2 = [(UIView *)self->_headerContentViewControllerContainerView topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[2] = v13;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_headerContentViewControllerContainerView bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v17];

    [(_UIAlertControllerPhoneTVMacView *)self _sizeOfHeaderContentViewControllerChanged];
  }
}

- (void)_addContentViewControllerToViewHierarchyIfNecessary
{
  contentViewController = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];
  view = [contentViewController view];
  superview = [view superview];
  contentViewControllerContainerView = self->_contentViewControllerContainerView;

  if (superview != contentViewControllerContainerView)
  {
    alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    isBeingPresented = [alertController isBeingPresented];
    contentViewController2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];
    appearanceTransitionsAreDisabled = [contentViewController2 appearanceTransitionsAreDisabled];
    if (isBeingPresented)
    {
      v10 = appearanceTransitionsAreDisabled;
      [contentViewController2 setAppearanceTransitionsAreDisabled:1];
      v11 = self->_contentViewControllerContainerView;
      view2 = [contentViewController2 view];
      [(UIView *)v11 addSubview:view2];

      [contentViewController2 setAppearanceTransitionsAreDisabled:v10];
    }

    else
    {
      v13 = self->_contentViewControllerContainerView;
      view3 = [contentViewController2 view];
      [(UIView *)v13 addSubview:view3];
    }

    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    shouldRespectContentViewControllerClippingPreference = [_visualStyle shouldRespectContentViewControllerClippingPreference];

    if (shouldRespectContentViewControllerClippingPreference)
    {
      -[UIView setClipsToBounds:](self->_contentViewControllerContainerView, "setClipsToBounds:", [alertController _wantsUnclippedContentViewControllerContainer] ^ 1);
    }

    contentView = self->_contentView;
    contentViewControllerViewLeftConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewLeftConstraint];
    [(UIView *)contentView removeConstraint:contentViewControllerViewLeftConstraint];

    v19 = self->_contentView;
    contentViewControllerViewRightConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewRightConstraint];
    [(UIView *)v19 removeConstraint:contentViewControllerViewRightConstraint];

    view4 = [contentViewController2 view];
    leftAnchor = [view4 leftAnchor];
    leftAnchor2 = [(UIView *)self->_contentViewControllerContainerView leftAnchor];
    v24 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewLeftConstraint:v24];

    view5 = [contentViewController2 view];
    rightAnchor = [view5 rightAnchor];
    rightAnchor2 = [(UIView *)self->_contentViewControllerContainerView rightAnchor];
    v28 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewRightConstraint:v28];

    v29 = self->_contentView;
    contentViewControllerViewLeftConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewLeftConstraint];
    [(UIView *)v29 addConstraint:contentViewControllerViewLeftConstraint2];

    v31 = self->_contentView;
    contentViewControllerViewRightConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewRightConstraint];
    [(UIView *)v31 addConstraint:contentViewControllerViewRightConstraint2];

    v33 = self->_contentView;
    contentViewControllerViewTopConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewTopConstraint];
    [(UIView *)v33 removeConstraint:contentViewControllerViewTopConstraint];

    v35 = self->_contentView;
    contentViewControllerViewBottomConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewBottomConstraint];
    [(UIView *)v35 removeConstraint:contentViewControllerViewBottomConstraint];

    view6 = [contentViewController2 view];
    topAnchor = [view6 topAnchor];
    topAnchor2 = [(UIView *)self->_contentViewControllerContainerView topAnchor];
    v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewTopConstraint:v40];

    view7 = [contentViewController2 view];
    bottomAnchor = [view7 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_contentViewControllerContainerView bottomAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewBottomConstraint:v44];

    v45 = self->_contentView;
    contentViewControllerViewTopConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewTopConstraint];
    [(UIView *)v45 addConstraint:contentViewControllerViewTopConstraint2];

    v47 = self->_contentView;
    contentViewControllerViewBottomConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewBottomConstraint];
    [(UIView *)v47 addConstraint:contentViewControllerViewBottomConstraint2];

    [(_UIAlertControllerPhoneTVMacView *)self _sizeOfContentViewControllerChanged];
  }
}

- (void)_addSeparatedHeaderContentViewControllerToViewHierarchyIfNecessary
{
  v21[4] = *MEMORY[0x1E69E9840];
  separatedHeaderContentViewController = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewController];
  view = [separatedHeaderContentViewController view];

  superview = [view superview];
  separatedHeaderContentViewControllerContainerView = self->_separatedHeaderContentViewControllerContainerView;

  if (superview != separatedHeaderContentViewControllerContainerView)
  {
    [(UIView *)self->_separatedHeaderContentViewControllerContainerView addSubview:view];
    v16 = MEMORY[0x1E69977A0];
    leftAnchor = [view leftAnchor];
    leftAnchor2 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView leftAnchor];
    v18 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v21[0] = v18;
    rightAnchor = [view rightAnchor];
    rightAnchor2 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView rightAnchor];
    v8 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v21[1] = v8;
    topAnchor = [view topAnchor];
    topAnchor2 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v21[2] = v11;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v21[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
    [v16 activateConstraints:v15];
  }
}

- (void)_removeHeaderContentViewControllerViewFromHierarchy
{
  headerContentViewController = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];
  view = [headerContentViewController view];
  [view removeFromSuperview];
}

- (void)_removeContentViewControllerViewFromHierarchy
{
  contentViewController = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];
  view = [contentViewController view];
  [view removeFromSuperview];

  [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewLeftConstraint:0];
  [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewRightConstraint:0];
  [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewTopConstraint:0];

  [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewBottomConstraint:0];
}

- (void)_removeSeparatedHeaderContentViewControllerFromHierarchy
{
  separatedHeaderContentViewController = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewController];
  view = [separatedHeaderContentViewController view];
  [view removeFromSuperview];

  [(_UIAlertControllerPhoneTVMacView *)self setSeparatedHeaderContentViewControllerContainerViewWidthConstraint:0];

  [(_UIAlertControllerPhoneTVMacView *)self setSeparatedHeaderContentViewControllerContainerViewBottomConstraint:0];
}

- (void)_sizeOfHeaderContentViewControllerChanged
{
  headerContentViewController = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];

  headerContentViewController2 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];
  [headerContentViewController2 preferredContentSize];
  v6 = v5;
  v8 = v7;

  v10 = v8 > 0.0 && headerContentViewController != 0;
  headerContentViewControllerPreferredWidthConstraint = self->_headerContentViewControllerPreferredWidthConstraint;
  if (headerContentViewController && v6 > 0.0)
  {
    if (headerContentViewControllerPreferredWidthConstraint)
    {
      [(NSLayoutConstraint *)headerContentViewControllerPreferredWidthConstraint setConstant:v6];
    }

    else
    {
      widthAnchor = [(UIView *)self->_headerContentViewControllerContainerView widthAnchor];
      v14 = [widthAnchor constraintEqualToConstant:v6];
      v15 = self->_headerContentViewControllerPreferredWidthConstraint;
      self->_headerContentViewControllerPreferredWidthConstraint = v14;

      LODWORD(v16) = 1144766464;
      [(NSLayoutConstraint *)self->_headerContentViewControllerPreferredWidthConstraint setPriority:v16];
      [(NSLayoutConstraint *)self->_headerContentViewControllerPreferredWidthConstraint setActive:1];
    }
  }

  else
  {
    [(NSLayoutConstraint *)headerContentViewControllerPreferredWidthConstraint setActive:0];
    v12 = self->_headerContentViewControllerPreferredWidthConstraint;
    self->_headerContentViewControllerPreferredWidthConstraint = 0;
  }

  headerContentViewControllerPreferredHeightConstraint = self->_headerContentViewControllerPreferredHeightConstraint;
  if (v10)
  {
    if (headerContentViewControllerPreferredHeightConstraint)
    {
      [(NSLayoutConstraint *)headerContentViewControllerPreferredHeightConstraint setConstant:v8];
    }

    else
    {
      heightAnchor = [(UIView *)self->_headerContentViewControllerContainerView heightAnchor];
      v20 = [heightAnchor constraintEqualToConstant:v8];
      v21 = self->_headerContentViewControllerPreferredHeightConstraint;
      self->_headerContentViewControllerPreferredHeightConstraint = v20;

      LODWORD(v22) = 1144766464;
      [(NSLayoutConstraint *)self->_headerContentViewControllerPreferredHeightConstraint setPriority:v22];
      [(NSLayoutConstraint *)self->_headerContentViewControllerPreferredHeightConstraint setActive:1];
    }
  }

  else
  {
    [(NSLayoutConstraint *)headerContentViewControllerPreferredHeightConstraint setActive:0];
    v18 = self->_headerContentViewControllerPreferredHeightConstraint;
    self->_headerContentViewControllerPreferredHeightConstraint = 0;
  }

  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __77___UIAlertControllerPhoneTVMacView__sizeOfHeaderContentViewControllerChanged__block_invoke;
  v24[3] = &unk_1E70F3590;
  v24[4] = self;
  [alertController _headerContentViewControllerWillTransitionToSize:v24 withAnimations:{v6, v8}];
}

- (void)_sizeOfContentViewControllerChanged
{
  contentViewController = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];

  [(_UIAlertControllerPhoneTVMacView *)self _contentViewControllerSize];
  v6 = v5;
  if (v4 == 0.0)
  {
    goto LABEL_5;
  }

  v7 = v4;
  alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  if (![alertController _resolvedStyle])
  {
    alertControllerViewFlags = self->_alertControllerViewFlags;

    if ((alertControllerViewFlags & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v10 = self->_mainInterfaceActionsGroupView;
    v7 = 0.0;
    goto LABEL_7;
  }

LABEL_6:
  v10 = 0;
LABEL_7:
  v11 = 748.0;
  if (!contentViewController)
  {
    v11 = 751.0;
  }

  v12 = 100.0;
  if (!contentViewController)
  {
    v12 = v6;
  }

  if (v6 == 0.0)
  {
    v13 = v11;
  }

  else
  {
    v13 = 751.0;
  }

  if (v6 == 0.0)
  {
    v6 = v12;
  }

  contentViewControllerContainerViewWidthConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewWidthConstraint];
  v15 = contentViewControllerContainerViewWidthConstraint;
  if (contentViewControllerContainerViewWidthConstraint)
  {
    contentViewControllerContainerViewWidthConstraint = [objc_msgSend(contentViewControllerContainerViewWidthConstraint "secondItem")];
  }

  v16 = contentViewControllerContainerViewWidthConstraint;

  if (v16 != v10)
  {
    contentView = self->_contentView;
    contentViewControllerContainerViewWidthConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewWidthConstraint];
    [(UIView *)contentView removeConstraint:contentViewControllerContainerViewWidthConstraint2];

    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerContainerViewWidthConstraint:0];
  }

  contentViewControllerContainerViewWidthConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewWidthConstraint];

  if (!contentViewControllerContainerViewWidthConstraint3)
  {
    widthAnchor = [(UIView *)self->_contentViewControllerContainerView widthAnchor];
    widthAnchor2 = [(UIView *)v10 widthAnchor];
    v22 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:v7];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerContainerViewWidthConstraint:v22];

    contentViewControllerContainerViewWidthConstraint4 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewWidthConstraint];
    LODWORD(v24) = 1132068864;
    [contentViewControllerContainerViewWidthConstraint4 setPriority:v24];

    v25 = self->_contentView;
    contentViewControllerContainerViewWidthConstraint5 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewWidthConstraint];
    [(UIView *)v25 addConstraint:contentViewControllerContainerViewWidthConstraint5];
  }

  contentViewControllerContainerViewHeightConstraint = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewHeightConstraint];

  if (!contentViewControllerContainerViewHeightConstraint)
  {
    heightAnchor = [(UIView *)self->_contentViewControllerContainerView heightAnchor];
    v29 = [heightAnchor constraintEqualToConstant:v6];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerContainerViewHeightConstraint:v29];

    contentViewControllerContainerViewHeightConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewHeightConstraint];
    *&v31 = v13;
    [contentViewControllerContainerViewHeightConstraint2 setPriority:v31];

    v32 = self->_contentView;
    contentViewControllerContainerViewHeightConstraint3 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewHeightConstraint];
    [(UIView *)v32 addConstraint:contentViewControllerContainerViewHeightConstraint3];
  }

  alertController2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __71___UIAlertControllerPhoneTVMacView__sizeOfContentViewControllerChanged__block_invoke;
  v35[3] = &unk_1E70F6848;
  v35[4] = self;
  *&v35[5] = v7;
  *&v35[6] = v6;
  [alertController2 _contentViewControllerWillTransitionToSize:v35 withAnimations:{v7, v6}];
}

- (void)_layoutAndPositionInParentIfNeeded
{
  ++self->_layoutRequiresPositionUpdateCount;
  [(UIView *)self layoutIfNeeded];
  --self->_layoutRequiresPositionUpdateCount;
}

- (void)_applyISEngineLayoutValuesToBoundsOnly:(BOOL)only
{
  *&only = self->_layoutRequiresPositionUpdateCount < 1 && only;
  v3.receiver = self;
  v3.super_class = _UIAlertControllerPhoneTVMacView;
  [(UIView *)&v3 _applyISEngineLayoutValuesToBoundsOnly:only];
}

- (void)_sizeOfTextFieldViewControllerChanged
{
  textFieldViewControllerContainerViewHeightConstraint = self->_textFieldViewControllerContainerViewHeightConstraint;
  _textFieldViewController = [(_UIAlertControllerPhoneTVMacView *)self _textFieldViewController];
  [_textFieldViewController preferredContentSize];
  [(NSLayoutConstraint *)textFieldViewControllerContainerViewHeightConstraint setConstant:v3];
}

- (void)_recomputeActionMetrics
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_UIAlertControllerActionViewMetrics);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = 648;
  selfCopy = self;
  v4 = self->_actionViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        action = [v11 action];
        _descriptiveText = [action _descriptiveText];

        if (_descriptiveText)
        {
          [v11 currentDescriptiveLabelTextWidth];
          if (v14 > v9)
          {
            v9 = v14;
          }
        }

        action2 = [v11 action];
        title = [action2 title];
        if (title)
        {
          v17 = title;
          action3 = [v11 action];
          _descriptiveText2 = [action3 _descriptiveText];

          if (_descriptiveText2)
          {
            [v11 currentLabelTextWidth];
            if (v20 > v8)
            {
              v8 = v20;
            }
          }
        }

        else
        {
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  [(_UIAlertControllerActionViewMetrics *)v3 setDescriptiveLabelTextWidth:v9];
  [(_UIAlertControllerActionViewMetrics *)v3 setLabelTextWidth:v8];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = selfCopy;
  v22 = *(&selfCopy->super.super.super.super.isa + v27);
  v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v29 + 1) + 8 * j) applyMetrics:{v3, v27, selfCopy, v29}];
      }

      v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v24);
  }

  [(_UIAlertControllerPhoneTVMacView *)v21 setActionViewMetrics:v3];
}

- (void)_updateTextAlignmentAfterLayout
{
  layer = [(UIView *)self->_titleLabel layer];
  if (([layer hasBeenCommitted] & 1) == 0)
  {

    goto LABEL_5;
  }

  layer2 = [(UIView *)self->_messageLabel layer];
  hasBeenCommitted = [layer2 hasBeenCommitted];

  if ((hasBeenCommitted & 1) == 0)
  {
LABEL_5:
    [(UIView *)self layoutIfNeeded];
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasMessage])
  {
    _measuredNumberOfLines = [(UILabel *)self->_messageLabel _measuredNumberOfLines];
  }

  else
  {
    _measuredNumberOfLines = 0;
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTitle])
  {
    _measuredNumberOfLines2 = [(UILabel *)self->_titleLabel _measuredNumberOfLines];
  }

  else
  {
    _measuredNumberOfLines2 = 0;
  }

  if ((_measuredNumberOfLines2 <= 0 || _measuredNumberOfLines <= 0) && _measuredNumberOfLines <= 1 && _measuredNumberOfLines2 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  [(UILabel *)self->_titleLabel setTextAlignment:v11];
  messageLabel = self->_messageLabel;

  [(UILabel *)messageLabel setTextAlignment:v11];
}

- (void)_ensureActionViewRepresentationsHaveMetrics
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_actionViewMetrics)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _recomputeActionMetrics];
  }

  actionViewMetrics = [(_UIAlertControllerPhoneTVMacView *)self actionViewMetrics];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_actionViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) applyMetrics:{actionViewMetrics, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_reevaluateSuperviewSizingConstraints
{
  if (![(UIView *)self translatesAutoresizingMaskIntoConstraints])
  {
    superview = [(UIView *)self superview];
    if (superview)
    {
      centerXConstraint = [(_UIAlertControllerPhoneTVMacView *)self centerXConstraint];
      [superview removeConstraint:centerXConstraint];

      centerYConstraint = [(_UIAlertControllerPhoneTVMacView *)self centerYConstraint];
      [superview removeConstraint:centerYConstraint];

      widthConstraint = [(_UIAlertControllerPhoneTVMacView *)self widthConstraint];
      [superview removeConstraint:widthConstraint];

      heightConstraint = [(_UIAlertControllerPhoneTVMacView *)self heightConstraint];
      [superview removeConstraint:heightConstraint];

      [(_UIAlertControllerPhoneTVMacView *)self setCenterXConstraint:0];
      [(_UIAlertControllerPhoneTVMacView *)self setCenterYConstraint:0];
      [(_UIAlertControllerPhoneTVMacView *)self setWidthConstraint:0];
      [(_UIAlertControllerPhoneTVMacView *)self setHeightConstraint:0];
      alertController = [(_UIAlertControllerPhoneTVMacView *)self alertController];
      _shouldSizeToFillSuperview = [alertController _shouldSizeToFillSuperview];

      if (_shouldSizeToFillSuperview)
      {
        centerXAnchor = [(UIView *)self centerXAnchor];
        centerXAnchor2 = [superview centerXAnchor];
        v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        [(_UIAlertControllerPhoneTVMacView *)self setCenterXConstraint:v11];

        centerYAnchor = [(UIView *)self centerYAnchor];
        centerYAnchor2 = [superview centerYAnchor];
        v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        [(_UIAlertControllerPhoneTVMacView *)self setCenterYConstraint:v14];

        widthAnchor = [(UIView *)self widthAnchor];
        widthAnchor2 = [superview widthAnchor];
        v17 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        [(_UIAlertControllerPhoneTVMacView *)self setWidthConstraint:v17];

        heightAnchor = [(UIView *)self heightAnchor];
        heightAnchor2 = [superview heightAnchor];
        v20 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        [(_UIAlertControllerPhoneTVMacView *)self setHeightConstraint:v20];

        centerXConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self centerXConstraint];
        [superview addConstraint:centerXConstraint2];

        centerYConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self centerYConstraint];
        [superview addConstraint:centerYConstraint2];

        widthConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self widthConstraint];
        [superview addConstraint:widthConstraint2];

        heightConstraint2 = [(_UIAlertControllerPhoneTVMacView *)self heightConstraint];
        [superview addConstraint:heightConstraint2];
      }
    }
  }
}

- (void)didMoveToSuperview
{
  [(_UIAlertControllerPhoneTVMacView *)self setCenterXConstraint:0];
  [(_UIAlertControllerPhoneTVMacView *)self setCenterYConstraint:0];
  [(_UIAlertControllerPhoneTVMacView *)self setWidthConstraint:0];
  [(_UIAlertControllerPhoneTVMacView *)self setHeightConstraint:0];

  [(_UIAlertControllerPhoneTVMacView *)self _reevaluateSuperviewSizingConstraints];
}

- (void)_willMoveToWindow:(id)window
{
  windowCopy = window;
  v7.receiver = self;
  v7.super_class = _UIAlertControllerPhoneTVMacView;
  [(UIView *)&v7 _willMoveToWindow:windowCopy];
  if (windowCopy)
  {
    windowScene = [windowCopy windowScene];
    _UIFocusBehaviorSetOverrideFocusSystemEnabled(1, windowScene, self);
    _UIGameControllerNotifyRelevantSystemUIWillShow(windowScene, self);
  }

  else
  {
    windowScene = [(UIView *)self _window];
    v5WindowScene = [windowScene windowScene];
    _UIFocusBehaviorSetOverrideFocusSystemEnabled(0, v5WindowScene, self);
  }
}

- (void)didMoveToWindow
{
  window = [(UIView *)self window];

  if (window)
  {
    window2 = [(UIView *)self window];
    _visualStyle = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    [_visualStyle setWindow:window2];

    [(_UIAlertControllerPhoneTVMacView *)self _updateContentView];
    [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewHeight];

    [(_UIAlertControllerPhoneTVMacView *)self _actionLayoutDirectionChanged];
  }
}

- (void)_prepareForWindowDealloc
{
  _window = [(UIView *)self _window];
  windowScene = [_window windowScene];
  _UIFocusBehaviorSetOverrideFocusSystemEnabled(0, windowScene, self);

  v5.receiver = self;
  v5.super_class = _UIAlertControllerPhoneTVMacView;
  [(UIView *)&v5 _prepareForWindowDealloc];
}

- (void)_prepareForWindowHostingSceneRemoval
{
  _window = [(UIView *)self _window];
  windowScene = [_window windowScene];
  _UIFocusBehaviorSetOverrideFocusSystemEnabled(0, windowScene, self);

  v5.receiver = self;
  v5.super_class = _UIAlertControllerPhoneTVMacView;
  [(UIView *)&v5 _prepareForWindowHostingSceneRemoval];
}

- (void)_disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (coordinatorCopy)
  {
    shouldHaveBackdropView = [(_UIAlertControllerPhoneTVMacView *)self shouldHaveBackdropView];
    layer = [(UIView *)self layer];
    allowsGroupOpacity = [layer allowsGroupOpacity];

    if (shouldHaveBackdropView)
    {
      layer2 = [(UIView *)self layer];
      [layer2 setAllowsGroupOpacity:0];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __104___UIAlertControllerPhoneTVMacView__disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator___block_invoke;
    v9[3] = &unk_1E71071A0;
    v10 = shouldHaveBackdropView;
    v9[4] = self;
    v11 = allowsGroupOpacity;
    [coordinatorCopy animateAlongsideTransition:0 completion:v9];
  }
}

- (void)configureForPresentAlongsideTransitionCoordinator:(id)coordinator
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86___UIAlertControllerPhoneTVMacView_configureForPresentAlongsideTransitionCoordinator___block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  coordinatorCopy = coordinator;
  [UIView performWithoutAnimation:v5];
  [(_UIAlertControllerPhoneTVMacView *)self _disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator:coordinatorCopy];
  [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView configureForPresentAlongsideTransitionCoordinator:coordinatorCopy];
}

- (void)configureForDismissAlongsideTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  [(_UIAlertControllerPhoneTVMacView *)self _disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator:coordinatorCopy];
  [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView configureForDismissAlongsideTransitionCoordinator:coordinatorCopy];
}

- (id)preferredFocusedView
{
  textFields = [(_UIAlertControllerPhoneTVMacView *)self textFields];
  v4 = [textFields count];

  if (v4)
  {
    _textFieldViewController = [(_UIAlertControllerPhoneTVMacView *)self _textFieldViewController];
    preferredFocusedView = [_textFieldViewController preferredFocusedView];

    goto LABEL_9;
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDiscreteCancelAction])
  {
    discreteCancelActionGroupView = self->_discreteCancelActionGroupView;
  }

  else
  {
    actionGroup = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionGroup];
    actions = [actionGroup actions];
    v10 = [actions count];

    if (!v10)
    {
      v13.receiver = self;
      v13.super_class = _UIAlertControllerPhoneTVMacView;
      preferredFocusedView2 = [(UIView *)&v13 preferredFocusedView];
      goto LABEL_8;
    }

    discreteCancelActionGroupView = self->_mainInterfaceActionsGroupView;
  }

  preferredFocusedView2 = discreteCancelActionGroupView;
LABEL_8:
  preferredFocusedView = preferredFocusedView2;
LABEL_9:

  return preferredFocusedView;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  nextFocusedView = [context nextFocusedView];
  LOBYTE(self) = [(UIView *)self containsView:nextFocusedView];

  return self;
}

- (CGSize)_layoutSize
{
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end