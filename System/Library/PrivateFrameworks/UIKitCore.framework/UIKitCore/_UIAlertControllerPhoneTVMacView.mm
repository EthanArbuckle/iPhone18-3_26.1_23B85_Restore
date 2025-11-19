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
- (BOOL)_shouldAllowPassthroughToLayersBehindUsForTouches:(id)a3;
- (BOOL)_shouldHaveCancelActionInMainActionButtonSequenceView;
- (BOOL)_titleAndMessageLabelUseVibrancy;
- (BOOL)cancelActionIsDiscrete;
- (BOOL)hasDiscreteHorizontalCancelAction;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (BOOL)showsCancelAction;
- (CGSize)_contentViewControllerSize;
- (CGSize)_itemSizeForHorizontalLayout:(BOOL)a3;
- (CGSize)_itemSizeForHorizontalLayout:(BOOL)a3 visualStyleRequiresActionRepresentationToFitItemSize:(BOOL *)a4;
- (CGSize)_layoutSize;
- (CGSize)_mainActionButtonSequenceViewSizeForHorizontalLayout:(BOOL)a3 itemSize:(CGSize)a4;
- (CGSize)_minimumSizeForAllActions;
- (CGSize)_sizeForLayoutWidthDetermination;
- (UIEdgeInsets)_contentInsets;
- (_UIAlertControllerPhoneTVMacView)initWithFrame:(CGRect)a3;
- (double)_availableWidthForHorizontalLayout:(BOOL)a3;
- (double)_idealLayoutWidth;
- (double)_labelHorizontalInsets;
- (double)_layoutWidthForHorizontalLayout:(BOOL)a3;
- (double)_marginBetweenInterfaceActionGroups;
- (double)_maximumWidthUsingAccessibilityWidthIfActionsAreTruncated:(double)a3;
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
- (id)_interfaceActionForAlertAction:(id)a3 inActionGroupView:(id)a4;
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
- (void)_applyISEngineLayoutValuesToBoundsOnly:(BOOL)a3;
- (void)_applyKeyboardAlignmentViewsConstraints;
- (void)_applyMessageConstraints;
- (void)_applySeparatedContentViewControllerContainerViewContraints;
- (void)_applyTextFieldViewControllerContainerViewConstraints;
- (void)_applyTitleAndMessageLabelVibrantContainerViewConstraints;
- (void)_applyTitleConstraints;
- (void)_applyViewConstraints;
- (void)_associateActionsWithActionViews;
- (void)_configureActionGroupViewToAllowHorizontalLayout:(BOOL)a3;
- (void)_contentSizeChanged;
- (void)_disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator:(id)a3;
- (void)_ensureActionViewRepresentationsHaveMetrics;
- (void)_layoutAndPositionInParentIfNeeded;
- (void)_performBatchActionChangesWithBlock:(id)a3;
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
- (void)_setActionsReversed:(BOOL)a3;
- (void)_setAttributedDetailMessage:(id)a3;
- (void)_setAttributedMessage:(id)a3;
- (void)_setAttributedTitle:(id)a3;
- (void)_setMessage:(id)a3;
- (void)_setTitle:(id)a3;
- (void)_setVisualStyle:(id)a3;
- (void)_setupHorizontalConstraintsForLabelView:(id)a3;
- (void)_sizeOfContentViewControllerChanged;
- (void)_sizeOfHeaderContentViewControllerChanged;
- (void)_sizeOfTextFieldViewControllerChanged;
- (void)_textFieldsChanged;
- (void)_updateActionViewHeight;
- (void)_updateActionViewVisualStyle:(id)a3;
- (void)_updateActionsGroupPresentationStyles;
- (void)_updateBackdropView:(BOOL)a3;
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
- (void)_updateStyleForIdiomChange:(BOOL)a3;
- (void)_updateTextAlignmentAfterLayout;
- (void)_updateTintColor;
- (void)_updateTitleLabelContents;
- (void)_updateTitleLabelFontSize;
- (void)_willMoveToWindow:(id)a3;
- (void)beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:(id)a3;
- (void)configureForDismissAlongsideTransitionCoordinator:(id)a3;
- (void)configureForPresentAlongsideTransitionCoordinator:(id)a3;
- (void)dealloc;
- (void)deselectAllActions;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)interfaceAction:(id)a3 invokeActionHandler:(id)a4 completion:(id)a5;
- (void)setActionScrubbingEnabled:(BOOL)a3;
- (void)setAlertController:(id)a3;
- (void)setAlignsToKeyboard:(BOOL)a3;
- (void)setCancelActionIsDiscrete:(BOOL)a3;
- (void)setHasDimmingView:(BOOL)a3;
- (void)setPresentationContextPrefersCancelActionShown:(BOOL)a3;
- (void)setPresentedAsPopover:(BOOL)a3;
- (void)setShouldHaveBackdropView:(BOOL)a3;
- (void)setSpringLoaded:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateConstraints;
- (void)updateObservations:(id)a3;
@end

@implementation _UIAlertControllerPhoneTVMacView

- (_UIAlertControllerPhoneTVMacView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIAlertControllerPhoneTVMacView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIContentSizeCategoryDidChangeNotification";
  v6[1] = @"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

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

- (void)updateObservations:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  if (a3)
  {
    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(UIView *)self registerForTraitChanges:v6 withAction:sel__contentSizeChanged];
    contentSizeCategoryTraitRegistration = self->_contentSizeCategoryTraitRegistration;
    self->_contentSizeCategoryTraitRegistration = v7;

    [v5 addObserver:self selector:sel__accessibilityColorsChanged name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];
  }

  else
  {
    [(UIView *)self unregisterForTraitChanges:self->_contentSizeCategoryTraitRegistration];
    v9 = self->_contentSizeCategoryTraitRegistration;
    self->_contentSizeCategoryTraitRegistration = 0;

    [v5 removeObserver:self name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];
  }
}

- (void)setAlertController:(id)a3
{
  obj = a3;
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
  v3 = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewController];
  if (v3)
  {
    separatedHeaderContentViewControllerContainerView = self->_separatedHeaderContentViewControllerContainerView;

    if (!separatedHeaderContentViewControllerContainerView)
    {
      v5 = objc_alloc_init(UIView);
      v6 = self->_separatedHeaderContentViewControllerContainerView;
      self->_separatedHeaderContentViewControllerContainerView = v5;

      [(UIView *)self->_separatedHeaderContentViewControllerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_separatedHeaderContentViewControllerContainerView setClipsToBounds:1];
      v7 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionGroup];
      v8 = [v7 _visualStyle];
      [v8 contentCornerRadius];
      v10 = v9;

      v11 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView layer];
      [v11 setCornerRadius:v10];

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
    v6 = [(_UIAlertControllerPhoneTVMacView *)self _vibrancyEffectForTitleAndMessageLabel];
    v3 = [[UIVisualEffectView alloc] initWithEffect:v6];
    titleAndMessageLabelVibrantContainerView = self->_titleAndMessageLabelVibrantContainerView;
    self->_titleAndMessageLabelVibrantContainerView = v3;

    v5 = [(UIVisualEffectView *)self->_titleAndMessageLabelVibrantContainerView contentView];
    [v5 setClipsToBounds:0];

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
      v12 = [(UIVisualEffectView *)self->_titleAndMessageLabelVibrantContainerView contentView];
      [v12 addSubview:self->_titleLabel];
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
      v12 = [(UIVisualEffectView *)self->_titleAndMessageLabelVibrantContainerView contentView];
      [v12 addSubview:self->_messageLabel];
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
    v5 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v6 = [(_UIAlertControllerInterfaceActionGroupView *)v4 initWithAlertController:v5 actionGroup:v3 actionHandlerInvocationDelegate:self];
    mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
    self->_mainInterfaceActionsGroupView = v6;

    [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView setSpringLoaded:[(_UIAlertControllerPhoneTVMacView *)self isSpringLoaded]];
    [(UIView *)self->_mainInterfaceActionsGroupView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_contentView addSubview:self->_mainInterfaceActionsGroupView];
  }

  v8 = [(_UIAlertControllerPhoneTVMacView *)self actionScrubbingEnabled];
  v9 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionSelectionController];
  [v9 setScrubbingEnabled:v8];

  [(UIView *)self->_mainInterfaceActionsGroupView setSemanticContentAttribute:3];

  [(_UIAlertControllerPhoneTVMacView *)self _updateActionsGroupPresentationStyles];
}

- (void)_prepareDiscreteCancelActionGroupView
{
  if (!self->_discreteCancelActionGroupView)
  {
    v3 = [UIInterfaceActionGroup actionGroupWithActionsBySection:MEMORY[0x1E695E0F0]];
    v4 = [_UIAlertControllerInterfaceActionGroupView alloc];
    v5 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v6 = [(_UIAlertControllerInterfaceActionGroupView *)v4 initWithAlertController:v5 actionGroup:v3 actionHandlerInvocationDelegate:self];
    discreteCancelActionGroupView = self->_discreteCancelActionGroupView;
    self->_discreteCancelActionGroupView = v6;

    v8 = [(UIView *)self->_mainInterfaceActionsGroupView focusGroupIdentifier];
    [(UIView *)self->_discreteCancelActionGroupView setFocusGroupIdentifier:v8];

    [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView setSpringLoaded:[(_UIAlertControllerPhoneTVMacView *)self isSpringLoaded]];
    [(UIView *)self->_discreteCancelActionGroupView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(UIView *)self->_discreteCancelActionGroupView widthAnchor];
    v10 = [v9 constraintEqualToConstant:0.0];
    [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewWidthConstraint:v10];

    v11 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewWidthConstraint];
    LODWORD(v12) = 1148829696;
    [v11 setPriority:v12];

    v13 = self->_discreteCancelActionGroupView;
    v14 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewWidthConstraint];
    [(UIView *)v13 addConstraint:v14];

    v15 = [(UIView *)self->_discreteCancelActionGroupView heightAnchor];
    v16 = [v15 constraintEqualToConstant:0.0];
    [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewHeightConstraint:v16];

    v17 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewHeightConstraint];
    LODWORD(v18) = 1144750080;
    [v17 setPriority:v18];

    v19 = self->_discreteCancelActionGroupView;
    v20 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewHeightConstraint];
    [(UIView *)v19 addConstraint:v20];
  }

  v21 = [(_UIAlertControllerPhoneTVMacView *)self actionScrubbingEnabled];
  v22 = [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView actionSelectionController];
  [v22 setScrubbingEnabled:v21];
}

- (void)setActionScrubbingEnabled:(BOOL)a3
{
  v3 = a3;
  self->_actionScrubbingEnabled = a3;
  v5 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionSelectionController];
  [v5 setScrubbingEnabled:v3];

  v6 = [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView actionSelectionController];
  [v6 setScrubbingEnabled:v3];
}

- (void)_updateActionsGroupPresentationStyles
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v4 = [v3 _resolvedStyle];
  if (v4 == 1000)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4 == 0;
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
    v9 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v8 = [v9 _dismissGestureRecognizer];
    [(UIView *)v7 addGestureRecognizer:v8];
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
  v3 = [(UIView *)self->_contentView centerXAnchor];
  v4 = [(UIView *)self centerXAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  [(UIView *)self addConstraint:v5];

  if (+[UIAlertController _shouldUsePresentationController])
  {
    v6 = [(UIView *)self->_contentView centerYAnchor];
    v7 = [(UIView *)self centerYAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [(UIView *)self addConstraint:v8];
  }

  v9 = [(UIView *)self->_mainInterfaceActionsGroupView widthAnchor];
  v10 = [(UIView *)self->_contentView widthAnchor];
  v28 = [v9 constraintEqualToAnchor:v10];

  LODWORD(v11) = 1148829696;
  [v28 setPriority:v11];
  [(UIView *)self->_contentView addConstraint:v28];
  [(_UIAlertControllerPhoneTVMacView *)self setActionGroupEqualsContentViewWidthConstraint:v28];
  contentView = self->_contentView;
  v13 = [(UIView *)contentView heightAnchor];
  v14 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v14 minimumContentHeight];
  v15 = [v13 constraintGreaterThanOrEqualToConstant:?];
  [(UIView *)contentView addConstraint:v15];

  v16 = [(UIView *)self->_contentViewControllerContainerView widthAnchor];
  v17 = [v16 constraintLessThanOrEqualToConstant:0.0];
  [(_UIAlertControllerPhoneTVMacView *)self setContentScrollViewMaximumWidthConstraint:v17];

  v18 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumWidthConstraint];
  LODWORD(v19) = 1148846080;
  [v18 setPriority:v19];

  v20 = [(UIView *)self->_contentView heightAnchor];
  v21 = [v20 constraintLessThanOrEqualToConstant:0.0];
  [(_UIAlertControllerPhoneTVMacView *)self setContentViewMaxHeightConstraint:v21];

  v22 = [(UIView *)self->_contentViewTopItemsView heightAnchor];
  v23 = [v22 constraintLessThanOrEqualToConstant:0.0];
  [(_UIAlertControllerPhoneTVMacView *)self setContentScrollViewMaximumHeightConstraint:v23];

  v24 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
  LODWORD(v25) = 1148846080;
  [v24 setPriority:v25];

  contentViewTopItemsView = self->_contentViewTopItemsView;
  v27 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
  [(UIView *)contentViewTopItemsView addConstraint:v27];
}

- (void)_prepareDimmingViewConstraints
{
  v64 = _NSDictionaryOfVariableBindings(&cfstr_DimmingviewSel.isa, self->_dimmingView, self, self->_contentView, 0);
  if (!self->_dimmingViewConstraints)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [(UIView *)self->_dimmingView centerXAnchor];
    v5 = [(UIView *)self centerXAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];
    [v3 addObject:v6];

    v7 = [(UIView *)self->_dimmingView centerYAnchor];
    v8 = [(UIView *)self centerYAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v3 addObject:v9];

    v10 = [(UIView *)self->_dimmingView widthAnchor];
    v11 = [(UIView *)self widthAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v3 addObject:v12];

    v13 = [(UIView *)self->_dimmingView heightAnchor];
    v14 = [(UIView *)self heightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v3 addObject:v15];

    v17 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v3, v16);
    dimmingViewConstraints = self->_dimmingViewConstraints;
    self->_dimmingViewConstraints = v17;
  }

  if (!self->_dimmingViewConstraintsForActionSheetStyle)
  {
    v19 = [MEMORY[0x1E695DF70] array];
    v20 = [MEMORY[0x1E695DF70] array];
    v21 = [MEMORY[0x1E695DF70] array];
    v22 = [(UIView *)self->_contentView topAnchor];
    v23 = [(UIView *)self topAnchor];
    v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];

    v25 = [(UIView *)self->_contentView bottomAnchor];
    v26 = [(UIView *)self bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v19 addObject:v24];
    [v19 addObject:v27];
    [v20 addObject:v24];
    [v21 addObject:v27];
    v29 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v19, v28);
    dimmingViewConstraintsForActionSheetStyle = self->_dimmingViewConstraintsForActionSheetStyle;
    self->_dimmingViewConstraintsForActionSheetStyle = v29;

    v32 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v20, v31);
    dimmingViewForegroundViewTopConstraints = self->_dimmingViewForegroundViewTopConstraints;
    self->_dimmingViewForegroundViewTopConstraints = v32;

    v35 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v21, v34);
    dimmingViewForegroundViewBottomConstraints = self->_dimmingViewForegroundViewBottomConstraints;
    self->_dimmingViewForegroundViewBottomConstraints = v35;
  }

  if (!self->_dimmingViewConstraintsForAlertStyle)
  {
    v37 = [MEMORY[0x1E695DF70] array];
    v38 = [(UIView *)self->_contentView centerYAnchor];
    v39 = [(UIView *)self centerYAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    LODWORD(v41) = 1144750080;
    [v40 setPriority:v41];
    [v37 addObject:v40];
    v42 = [(UIView *)self->_contentView topAnchor];
    v43 = [(UIView *)self topAnchor];
    v44 = [v42 constraintGreaterThanOrEqualToAnchor:v43];
    [v37 addObject:v44];

    v45 = [(UIView *)self->_contentView bottomAnchor];
    v46 = [(UIView *)self bottomAnchor];
    v47 = [v45 constraintLessThanOrEqualToAnchor:v46];
    [v37 addObject:v47];

    v49 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v37, v48);
    dimmingViewConstraintsForAlertStyle = self->_dimmingViewConstraintsForAlertStyle;
    self->_dimmingViewConstraintsForAlertStyle = v49;
  }

  if (!self->_noDimmingViewConstraints)
  {
    v51 = [MEMORY[0x1E695DF70] array];
    v52 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:[self(>=_contentView)]" options:0 metrics:0 views:v64];
    [v51 addObjectsFromArray:v52];

    v53 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:[self(==_contentView)]" options:0 metrics:0 views:v64];
    [v51 addObjectsFromArray:v53];

    if (!+[UIAlertController _shouldUsePresentationController])
    {
      v54 = [(UIView *)self->_contentView centerYAnchor];
      v55 = [(UIView *)self centerYAnchor];
      v56 = [v54 constraintEqualToAnchor:v55];
      [v51 addObject:v56];
    }

    v57 = [(UIView *)self widthAnchor];
    v58 = [(UIView *)self->_contentView widthAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    LODWORD(v60) = 1111752704;
    [v59 setPriority:v60];
    [v51 addObject:v59];
    v62 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v51, v61);
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
    v23 = [MEMORY[0x1E695DF70] array];
    v3 = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView leftAnchor];
    v4 = [(UIView *)self leftAnchor];
    v5 = [v3 constraintEqualToAnchor:v4];

    v6 = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView rightAnchor];
    v7 = [(UIView *)self rightAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    v9 = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView topAnchor];
    v10 = [(UIView *)self topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    v12 = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView bottomAnchor];
    v13 = [(UIView *)self->_keyboardLayoutAlignmentView topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    v15 = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView bottomAnchor];
    v16 = [(UIView *)self bottomAnchor];
    v17 = [v15 constraintLessThanOrEqualToAnchor:v16];

    [v23 addObject:v5];
    [v23 addObject:v8];
    [v23 addObject:v11];
    [v23 addObject:v14];
    [v23 addObject:v17];
    v18 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v19 = [v18 _resolvedStyle];

    if (v19 == 1)
    {
      v20 = [(UIView *)self->_contentView centerYAnchor];
      v21 = [(UIView *)self->_keyboardLayoutAlignmentAvailableSpaceView centerYAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];

      [v23 addObject:v22];
    }

    [(UIView *)self addConstraints:v23];
  }
}

- (void)_applySeparatedContentViewControllerContainerViewContraints
{
  v3 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView centerXAnchor];
  v4 = [(UIView *)self->_contentView centerXAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  [v5 setActive:1];

  v8 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView widthAnchor];
  v6 = [(UIView *)self->_contentView widthAnchor];
  v7 = [v8 constraintLessThanOrEqualToAnchor:v6];
  [v7 setActive:1];
}

- (void)_applyHeaderContentViewControllerContainerViewConstraints
{
  v3 = [(UIView *)self->_headerContentViewControllerContainerView centerXAnchor];
  v4 = [(UIView *)self->_contentView centerXAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  [v5 setActive:1];

  v6 = [(UIView *)self->_headerContentViewControllerContainerView widthAnchor];
  v7 = [(UIView *)self->_contentView widthAnchor];
  v8 = [v6 constraintLessThanOrEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [(UIView *)self->_contentView widthAnchor];
  v10 = [(UIView *)self->_headerContentViewControllerContainerView widthAnchor];
  v12 = [v9 constraintEqualToAnchor:v10];

  LODWORD(v11) = 1144733696;
  [v12 setPriority:v11];
  [v12 setActive:1];
}

- (void)_setupHorizontalConstraintsForLabelView:(id)a3
{
  v4 = a3;
  v5 = [v4 centerXAnchor];
  v6 = [(UIView *)self->_contentViewTopItemsView centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v11 = [v4 widthAnchor];

  v8 = [(UIView *)self->_contentViewTopItemsView widthAnchor];
  [(_UIAlertControllerPhoneTVMacView *)self _labelHorizontalInsets];
  v10 = [v11 constraintEqualToAnchor:v8 multiplier:1.0 constant:v9 * -2.0];
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
      v4 = [(UIView *)self->_detailMessageLabel centerXAnchor];
      v5 = [(UIView *)self->_contentView centerXAnchor];
      v6 = [v4 constraintEqualToAnchor:v5];
      [v6 setActive:1];

      v10 = [(UIView *)self->_detailMessageLabel widthAnchor];
      v7 = [(UIView *)self->_contentView widthAnchor];
      [(_UIAlertControllerPhoneTVMacView *)self _labelHorizontalInsets];
      v9 = [v10 constraintEqualToAnchor:v7 multiplier:1.0 constant:v8 * -2.0];
      [v9 setActive:1];
    }
  }
}

- (void)_applyContentViewControllerContainerViewConstraints
{
  contentView = self->_contentView;
  v4 = [(UIView *)self->_contentViewControllerContainerView centerXAnchor];
  v5 = [(UIView *)self->_contentView centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [(UIView *)contentView addConstraint:v6];

  v7 = self->_contentView;
  v8 = [(UIView *)self->_contentViewControllerContainerView widthAnchor];
  v9 = [(UIView *)self->_contentView widthAnchor];
  v10 = [v8 constraintLessThanOrEqualToAnchor:v9];
  [(UIView *)v7 addConstraint:v10];

  v11 = self->_contentView;
  v13 = [(UIView *)self->_contentViewControllerContainerView widthAnchor];
  v12 = [v13 constraintGreaterThanOrEqualToConstant:0.0];
  [(UIView *)v11 addConstraint:v12];
}

- (void)_applyContentViewControllerLayoutGuideConstraints
{
  contentView = self->_contentView;
  v4 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionSequenceViewLayoutGuide];
  v5 = [v4 leadingAnchor];
  v6 = [(UILayoutGuide *)self->_contentViewControllerLayoutGuide leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [(UIView *)contentView addConstraint:v7];

  v8 = self->_contentView;
  v9 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionSequenceViewLayoutGuide];
  v10 = [v9 trailingAnchor];
  v11 = [(UILayoutGuide *)self->_contentViewControllerLayoutGuide trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [(UIView *)v8 addConstraint:v12];

  v13 = self->_contentView;
  v14 = [(UIView *)self->_contentViewControllerContainerView topAnchor];
  v15 = [(UILayoutGuide *)self->_contentViewControllerLayoutGuide topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [(UIView *)v13 addConstraint:v16];

  v17 = self->_contentView;
  v20 = [(UIView *)self->_contentViewControllerContainerView bottomAnchor];
  v18 = [(UILayoutGuide *)self->_contentViewControllerLayoutGuide bottomAnchor];
  v19 = [v20 constraintEqualToAnchor:v18];
  [(UIView *)v17 addConstraint:v19];
}

- (void)_applyTextFieldViewControllerContainerViewConstraints
{
  v3 = [(UIView *)self->_textFieldViewControllerContainerView widthAnchor];
  v4 = [(UIView *)self->_contentViewTopItemsView widthAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  textFieldViewControllerContainerViewWidthConstraint = self->_textFieldViewControllerContainerViewWidthConstraint;
  self->_textFieldViewControllerContainerViewWidthConstraint = v5;

  v7 = [(UIView *)self->_textFieldViewControllerContainerView heightAnchor];
  v8 = [v7 constraintEqualToConstant:0.0];
  textFieldViewControllerContainerViewHeightConstraint = self->_textFieldViewControllerContainerViewHeightConstraint;
  self->_textFieldViewControllerContainerViewHeightConstraint = v8;

  contentView = self->_contentView;
  v11 = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewWidthConstraint];
  [(UIView *)contentView addConstraint:v11];

  v12 = self->_contentView;
  v13 = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewHeightConstraint];
  [(UIView *)v12 addConstraint:v13];

  v14 = self->_contentView;
  v17 = [(UIView *)self->_textFieldViewControllerContainerView centerXAnchor];
  v15 = [(UIView *)self->_contentView centerXAnchor];
  v16 = [v17 constraintEqualToAnchor:v15];
  [(UIView *)v14 addConstraint:v16];
}

- (BOOL)_buttonsAreTopMost
{
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTitle]|| [(_UIAlertControllerPhoneTVMacView *)self _hasMessage])
  {
    return 0;
  }

  v4 = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];
  v3 = v4 == 0;

  return v3;
}

- (CGSize)_sizeForLayoutWidthDetermination
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self presentedAsPopover];
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    if ((_UISolariumEnabled() & v3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v15 = 0x407E000000000000;
    v13 = 0x4074000000000000;
    goto LABEL_12;
  }

  if (v3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v7 = [v6 _existingPresentationControllerImmediate:0 effective:1];
  v8 = [v7 containerView];

  [(_UIAlertControllerPhoneTVMacView *)self _layoutSize];
  if (v10 == *MEMORY[0x1E695F060] && v9 == *(MEMORY[0x1E695F060] + 8))
  {
    [v8 bounds];
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
  v7 = [(UIView *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v4 < v6 || v8 == 3)
  {
    v6 = v4;
  }

  v10 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v10 minimumWidth];
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
  v3 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  if ([v3 _resolvedStyle])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(_UIAlertControllerPhoneTVMacView *)self actions];
    v4 = [v5 count] > 2;
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
  v5 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
  [v5 setActive:0];

  [(_UIAlertControllerPhoneTVMacView *)self _contentViewControllerSize];
  v7 = v6;
  v9 = v8;
  v10 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];
  [v10 preferredContentSize];
  v12 = v11;
  v14 = v13;

  if (v7 < v12)
  {
    v7 = v12;
  }

  v15 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v15 minimumWidthFittingContentView:self->_contentViewTopItemsView titleLabel:self->_titleLabel minimumWidthForAllActions:v4 preferredSizeForContentContainers:{v7, v9 + v14}];
  v17 = v16;

  v18 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
  [v18 setActive:1];

  return v17;
}

- (double)_availableWidthForHorizontalLayout:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v6 = [v5 definesWidthByContentFitting];

  v7 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v7 maximumWidth];
  v9 = v8;

  if (v6)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _minimumWidthFittingAlertContents];
  }

  else if (v9 <= 0.0)
  {
    if (v3 && [(_UIAlertControllerPhoneTVMacView *)self _horizontalLayoutCanUseFullWidth])
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
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v4 = [(UIView *)self superview];
  [v3 contentInsetsForContainerView:v4];
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

- (double)_layoutWidthForHorizontalLayout:(BOOL)a3
{
  v3 = a3;
  [(_UIAlertControllerPhoneTVMacView *)self _contentViewControllerSize];
  v6 = v5;
  v7 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v8 = [v7 _shouldFitWidthToContentViewControllerWidth];

  if (v8)
  {
    return v6;
  }

  [(_UIAlertControllerPhoneTVMacView *)self _availableWidthForHorizontalLayout:v3];
  return result;
}

- (double)_idealLayoutWidth
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v4 = ([v3 permittedActionLayoutDirection] >> 1) & 1;

  [(_UIAlertControllerPhoneTVMacView *)self _availableWidthForHorizontalLayout:v4];
  return result;
}

- (CGSize)_itemSizeForHorizontalLayout:(BOOL)a3 visualStyleRequiresActionRepresentationToFitItemSize:(BOOL *)a4
{
  v5 = a3;
  [(_UIAlertControllerPhoneTVMacView *)self _minimumSizeForAllActions];
  v8 = v7;
  v10 = v9;
  [(_UIAlertControllerPhoneTVMacView *)self _idealLayoutWidth];
  v12 = v11;
  if (!v5)
  {
    v27 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    [v27 actionWidthForMinimumActionWidth:v8 availableWidth:v12];
    v26 = v28;

    if (v26 <= 0.0)
    {
      [(_UIAlertControllerPhoneTVMacView *)self _contentInsets];
      v30 = v29;
      v32 = v31;
      [(_UIAlertControllerPhoneTVMacView *)self _verticalLayoutWidth];
      v25 = 0;
      v26 = v33 - (v30 + v32);
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v25 = 1;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    *a4 = v25;
    goto LABEL_13;
  }

  v13 = [(_UIAlertControllerPhoneTVMacView *)self _numberOfActionsForMainActionButtonSequenceView];
  v14 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v14 actionSequenceEdgeInsets];
  v16 = v15;
  v17 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v17 actionSequenceEdgeInsets];
  v19 = v12 - (v16 + v18);

  v20 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v20 actionSpacingForHorizontalLayout:1];
  v22 = (v13 - 1);
  if (v22 < 0.0)
  {
    v22 = 0.0;
  }

  v23 = v19 - v22 * v21;

  if ([(_UIAlertControllerPhoneTVMacView *)self hasDiscreteHorizontalCancelAction])
  {
    ++v13;
    [(_UIAlertControllerPhoneTVMacView *)self _contentInsets];
    v23 = v23 - v24;
  }

  v25 = 0;
  v26 = v23 / v13;
  if (a4)
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

- (CGSize)_itemSizeForHorizontalLayout:(BOOL)a3
{
  [(_UIAlertControllerPhoneTVMacView *)self _itemSizeForHorizontalLayout:a3 visualStyleRequiresActionRepresentationToFitItemSize:0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_mainActionButtonSequenceViewSizeForHorizontalLayout:(BOOL)a3 itemSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v8 = [(_UIAlertControllerPhoneTVMacView *)self _numberOfActionsForMainActionButtonSequenceView];
  v9 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v9 actionSequenceEdgeInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v13 + v17;
  v19 = v11 + v15;
  [(_UIAlertControllerPhoneTVMacView *)self _spaceRequiredForActionSectionsSpacing];
  v21 = v20;
  v22 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v22 actionSpacingForHorizontalLayout:v6];
  v24 = (v8 - 1);
  if (v24 < 0.0)
  {
    v24 = 0.0;
  }

  v25 = v24 * v23;

  v26 = width + v18;
  if (v6)
  {
    v26 = v21 + width * v8 + v18 + v25;
    v27 = height + v19;
  }

  else
  {
    v27 = v21 + height * v8 + v19 + v25;
  }

  result.height = v27;
  result.width = v26;
  return result;
}

- (BOOL)_canLayOutActionsHorizontally
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v4 = [v3 permittedActionLayoutDirection];

  result = (v4 & 2) != 0 && ([(_UIAlertControllerPhoneTVMacView *)self _itemSizeForHorizontalLayout:1], v6 = v5, [(_UIAlertControllerPhoneTVMacView *)self _minimumSizeForAllActions], v6 >= v7) && [(_UIAlertControllerPhoneTVMacView *)self _numberOfActionsForMainActionButtonSequenceView]> 0;
  return result;
}

- (id)_discreteCancelActionView
{
  if ([(_UIAlertControllerPhoneTVMacView *)self cancelActionIsDiscrete])
  {
    v3 = [(_UIAlertControllerPhoneTVMacView *)self __cancelActionView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_hasDiscreteCancelAction
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
  v4 = v3 && [(_UIAlertControllerPhoneTVMacView *)self showsCancelAction]&& [(_UIAlertControllerPhoneTVMacView *)self cancelActionIsDiscrete];

  return v4;
}

- (void)_updateConstraintSpacingForExternalOffset
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v4 = [v3 _resolvedStyle];

  if (!v4)
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

    v10 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewTopConstraint];
    [v10 setConstant:v8];

    v11 = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];
    [v11 setConstant:v7];
  }
}

- (void)_recomputeAlertControllerWidth
{
  v3 = [(UIView *)self window];

  if (v3)
  {
    v4 = [(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally];
    v5 = [(_UIAlertControllerPhoneTVMacView *)self foregroundViewWidthConstraint];

    if (!v5)
    {
      v6 = [(UIView *)self->_contentView widthAnchor];
      [(_UIAlertControllerPhoneTVMacView *)self _layoutWidthForHorizontalLayout:v4];
      v7 = [v6 constraintEqualToConstant:?];
      [(_UIAlertControllerPhoneTVMacView *)self setForegroundViewWidthConstraint:v7];

      contentView = self->_contentView;
      v9 = [(_UIAlertControllerPhoneTVMacView *)self foregroundViewWidthConstraint];
      [(UIView *)contentView addConstraint:v9];
    }

    v10 = [(_UIAlertControllerPhoneTVMacView *)self foregroundViewWidthConstraint];
    [(_UIAlertControllerPhoneTVMacView *)self _layoutWidthForHorizontalLayout:v4];
    [v10 setConstant:?];
  }
}

- (void)_configureActionGroupViewToAllowHorizontalLayout:(BOOL)a3
{
  if (a3)
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
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally];
  [(_UIAlertControllerPhoneTVMacView *)self _recomputeAlertControllerWidth];
  [(_UIAlertControllerPhoneTVMacView *)self _configureActionGroupViewToAllowHorizontalLayout:v3];
  v72 = 0;
  [(_UIAlertControllerPhoneTVMacView *)self _itemSizeForHorizontalLayout:v3 visualStyleRequiresActionRepresentationToFitItemSize:&v72];
  v5 = v4;
  [(_UIAlertControllerPhoneTVMacView *)self _mainActionButtonSequenceViewSizeForHorizontalLayout:v3 itemSize:?];
  v7 = v6;
  v9 = v8;
  v10 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewWidthConstraint];

  if (!v10)
  {
    v11 = [(UIView *)self->_mainInterfaceActionsGroupView widthAnchor];
    v12 = [v11 constraintEqualToConstant:0.0];
    [(_UIAlertControllerPhoneTVMacView *)self setMainActionButtonSequenceViewWidthConstraint:v12];

    v13 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewWidthConstraint];
    LODWORD(v14) = 1148813312;
    [v13 setPriority:v14];

    mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
    v16 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewWidthConstraint];
    [(UIView *)mainInterfaceActionsGroupView addConstraint:v16];
  }

  v17 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewWidthConstraint];
  [v17 setConstant:v7];

  v18 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHeightConstraint];

  if (!v18)
  {
    v19 = [(UIView *)self->_mainInterfaceActionsGroupView heightAnchor];
    v20 = [v19 constraintEqualToConstant:0.0];
    [(_UIAlertControllerPhoneTVMacView *)self setMainActionButtonSequenceViewHeightConstraint:v20];

    v21 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHeightConstraint];
    LODWORD(v22) = 1132003328;
    [v21 setPriority:v22];

    v23 = self->_mainInterfaceActionsGroupView;
    v24 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHeightConstraint];
    [(UIView *)v23 addConstraint:v24];
  }

  v25 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHeightConstraint];
  [v25 setConstant:v9];

  if (v3)
  {
    v26 = 5;
  }

  else
  {
    v26 = 9;
  }

  v27 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHorizontalAlignmentConstraint];
  if (v27)
  {
    v28 = v27;
    v29 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHorizontalAlignmentConstraint];
    v30 = [v29 firstAttribute];

    if (v30 != v26)
    {
      contentView = self->_contentView;
      v32 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHorizontalAlignmentConstraint];
      [(UIView *)contentView removeConstraint:v32];

      [(_UIAlertControllerPhoneTVMacView *)self setMainActionButtonSequenceViewHorizontalAlignmentConstraint:0];
    }
  }

  v33 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHorizontalAlignmentConstraint];

  if (!v33)
  {
    v34 = [MEMORY[0x1E69977A0] constraintWithItem:self->_mainInterfaceActionsGroupView attribute:v26 relatedBy:0 toItem:self->_contentView attribute:v26];
    [(_UIAlertControllerPhoneTVMacView *)self setMainActionButtonSequenceViewHorizontalAlignmentConstraint:v34];

    v35 = self->_contentView;
    v36 = [(_UIAlertControllerPhoneTVMacView *)self mainActionButtonSequenceViewHorizontalAlignmentConstraint];
    [(UIView *)v35 addConstraint:v36];
  }

  v37 = [(_UIAlertControllerPhoneTVMacView *)self discreteActionGroupViewHorizontalLayoutTrailingConstraint];

  if (!v37)
  {
    v38 = [(UIView *)self->_discreteCancelActionGroupView trailingAnchor];
    v39 = [(UIView *)self->_contentView trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [(_UIAlertControllerPhoneTVMacView *)self setDiscreteActionGroupViewHorizontalLayoutTrailingConstraint:v40];
  }

  v41 = [(_UIAlertControllerPhoneTVMacView *)self _discreteCancelActionView];

  v42 = [(_UIAlertControllerPhoneTVMacView *)self discreteActionGroupViewHorizontalLayoutTrailingConstraint];
  [v42 setActive:(v41 != 0) & v3];

  v43 = [(_UIAlertControllerPhoneTVMacView *)self actionGroupEqualsContentViewWidthConstraint];
  [v43 setActive:v3 ^ 1];

  if (v41)
  {
    v44 = [(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally];
    v45 = MEMORY[0x1E69977A0];
    v46 = MEMORY[0x1E695DEC8];
    v47 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewTopConstraint];
    v48 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewLeadingConstraint];
    v49 = [v46 arrayWithObjects:{v47, v48, 0}];
    [v45 deactivateConstraints:v49];

    v50 = [(UIView *)self->_discreteCancelActionGroupView topAnchor];
    v51 = self->_mainInterfaceActionsGroupView;
    if (v44)
    {
      v52 = [(UIView *)v51 topAnchor];
      v53 = [v50 constraintEqualToAnchor:v52 constant:0.0];
      [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewTopConstraint:v53];

      v54 = [(UIView *)self->_discreteCancelActionGroupView leadingAnchor];
      v55 = [(UIView *)self->_mainInterfaceActionsGroupView trailingAnchor];
      [(_UIAlertControllerPhoneTVMacView *)self _marginBetweenInterfaceActionGroups];
      v56 = [v54 constraintEqualToAnchor:v55 constant:?];
      v7 = v5;
    }

    else
    {
      v57 = [(UIView *)v51 bottomAnchor];
      [(_UIAlertControllerPhoneTVMacView *)self _marginBetweenInterfaceActionGroups];
      v58 = [v50 constraintEqualToAnchor:v57 constant:?];
      [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewTopConstraint:v58];

      v54 = [(UIView *)self->_discreteCancelActionGroupView leadingAnchor];
      v55 = [(UIView *)self->_mainInterfaceActionsGroupView leadingAnchor];
      v56 = [v54 constraintEqualToAnchor:v55 constant:0.0];
    }

    [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewLeadingConstraint:v56];

    [(_UIAlertControllerPhoneTVMacView *)self _updateConstraintSpacingForExternalOffset];
    v59 = MEMORY[0x1E69977A0];
    v60 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewTopConstraint];
    v73[0] = v60;
    v61 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewLeadingConstraint];
    v73[1] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
    [v59 activateConstraints:v62];

    v63 = [(_UIAlertControllerPhoneTVMacView *)self _discreteCancelActionView];
    v64 = [v63 action];
    v65 = [v64 _contentViewController];

    if (v65)
    {
      [v65 preferredContentSize];
      v67 = v66;
    }

    else
    {
      v68 = [(_UIAlertControllerPhoneTVMacView *)self _discreteCancelActionView];
      [v68 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v67 = v69;
    }

    v70 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewWidthConstraint];
    [v70 setConstant:v7];

    v71 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewHeightConstraint];
    [v71 setConstant:v67];
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
  v106 = [MEMORY[0x1E695DF70] array];
  [(_UIAlertControllerPhoneTVMacView *)self _updateMainScrollableHeaderViewHasRealContent];
  v3 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewControllerContainerViewTopAlignmentConstraint];

  if (v3)
  {
    v4 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewControllerContainerViewTopAlignmentConstraint];
    [v106 addObject:v4];
  }

  v5 = [(_UIAlertControllerPhoneTVMacView *)self titleAndMessageLabelVibrantContainerViewVerticalConstraints];

  if (v5)
  {
    v6 = [(_UIAlertControllerPhoneTVMacView *)self titleAndMessageLabelVibrantContainerViewVerticalConstraints];
    [v106 addObjectsFromArray:v6];
  }

  v7 = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];

  if (v7)
  {
    v8 = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];
    v9 = [v8 constraints];
    [v106 addObjectsFromArray:v9];
  }

  v10 = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];

  if (v10)
  {
    v11 = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];
    v12 = [v11 constraints];
    [v106 addObjectsFromArray:v12];
  }

  v13 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewTopAlignmentConstraint];

  if (v13)
  {
    v14 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewTopAlignmentConstraint];
    [v106 addObject:v14];
  }

  v15 = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewTopAlignmentConstraints];

  if (v15)
  {
    v16 = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewTopAlignmentConstraints];
    v17 = [v16 constraints];
    [v106 addObjectsFromArray:v17];
  }

  v18 = [(_UIAlertControllerPhoneTVMacView *)self detailMessageLabelTopAlignmentConstraint];

  if (v18)
  {
    v19 = [(_UIAlertControllerPhoneTVMacView *)self detailMessageLabelTopAlignmentConstraint];
    [v106 addObject:v19];
  }

  v20 = [(_UIAlertControllerPhoneTVMacView *)self contentViewTopConstraint];

  if (v20)
  {
    v21 = [(_UIAlertControllerPhoneTVMacView *)self contentViewTopConstraint];
    [v106 addObject:v21];
  }

  v22 = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];

  if (v22)
  {
    v23 = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];
    [v106 addObject:v23];
  }

  v24 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewBottomConstraint];

  if (v24)
  {
    v25 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewBottomConstraint];
    [v106 addObject:v25];
  }

  [MEMORY[0x1E69977A0] deactivateConstraints:v106];
  v26 = self->_contentViewTopItemsView;
  v27 = [MEMORY[0x1E695DF70] array];
  v28 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];

  if (v28)
  {
    v29 = [MEMORY[0x1E69977A0] constraintWithItem:self->_headerContentViewControllerContainerView attribute:3 relatedBy:0 toItem:v26 attribute:3];
    [(_UIAlertControllerPhoneTVMacView *)self setHeaderContentViewControllerContainerViewTopAlignmentConstraint:v29];

    v30 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewControllerContainerViewTopAlignmentConstraint];
    [v27 addObject:v30];

    v31 = self->_headerContentViewControllerContainerView;
    v32 = 4;
    v26 = v31;
  }

  else
  {
    v32 = 3;
  }

  v33 = [(_UIAlertControllerPhoneTVMacView *)self _hasTitle];
  v34 = [(_UIAlertControllerPhoneTVMacView *)self _hasMessage];
  v35 = v34;
  v105 = v27;
  if ((v33 || v34) && self->_titleAndMessageLabelVibrantContainerView)
  {
    v36 = 13;
    if (v33)
    {
      v37 = 12;
    }

    else
    {
      v37 = 13;
    }

    v38 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIAlertControllerPhoneTVMacView__alertControllerViewFlags[v37]);
    if (!v34)
    {
      v36 = 12;
    }

    v103 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIAlertControllerPhoneTVMacView__alertControllerViewFlags[v36]);
    v104 = v38;
    v102 = [v104 topAnchor];
    v101 = [(UIView *)self->_titleAndMessageLabelVibrantContainerView topAnchor];
    v39 = [v102 constraintEqualToAnchor:v101];
    v107[0] = v39;
    v40 = [v103 bottomAnchor];
    v41 = [(UIView *)self->_titleAndMessageLabelVibrantContainerView bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v107[1] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:2];
    [(_UIAlertControllerPhoneTVMacView *)self setTitleAndMessageLabelVibrantContainerViewVerticalConstraints:v43];

    v27 = v105;
    v44 = [(_UIAlertControllerPhoneTVMacView *)self titleAndMessageLabelVibrantContainerViewVerticalConstraints];

    [v105 addObjectsFromArray:v44];
  }

  if (!v33)
  {
    if (!v35)
    {
      goto LABEL_36;
    }

LABEL_38:
    v51 = 0x1E6997000uLL;
    v52 = [MEMORY[0x1E69977A0] constraintWithItem:self->_messageLabel attribute:12 relatedBy:0 toItem:v26 attribute:v32];
    if (v33)
    {
      v53 = 746;
    }

    else
    {
      v53 = 748;
    }

    v54 = [_UIFlexibleConstantConstraintSet constraintSetWithCollapsableConstantPreferredEqualityConstraint:v52 equalityPriority:v53];
    [(_UIAlertControllerPhoneTVMacView *)self setMessageLabelTopAlignmentConstraints:v54];

    v55 = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];
    v56 = [v55 constraints];
    v50 = v105;
    [v105 addObjectsFromArray:v56];

    v57 = self->_messageLabel;
    v32 = 11;
    v26 = v57;
    goto LABEL_42;
  }

  v45 = [MEMORY[0x1E69977A0] constraintWithItem:self->_titleLabel attribute:12 relatedBy:0 toItem:v26 attribute:v32];
  v46 = [_UIFlexibleConstantConstraintSet constraintSetWithCollapsableConstantPreferredEqualityConstraint:v45 equalityPriority:748];
  [(_UIAlertControllerPhoneTVMacView *)self setTitleLabelTopAlignmentConstraints:v46];

  v47 = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];
  v48 = [v47 constraints];
  [v27 addObjectsFromArray:v48];

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
  v58 = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];

  if (v58)
  {
    v59 = [*(v51 + 1952) constraintWithItem:self->_contentViewControllerContainerView attribute:3 relatedBy:0 toItem:v26 attribute:v32];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerContainerViewTopAlignmentConstraint:v59];

    v60 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewTopAlignmentConstraint];
    [v50 addObject:v60];

    v61 = self->_contentViewControllerContainerView;
    v32 = 4;
    v26 = v61;
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTextFields])
  {
    v62 = [*(v51 + 1952) constraintWithItem:self->_textFieldViewControllerContainerView attribute:3 relatedBy:0 toItem:v26 attribute:v32];
    v63 = [_UIFlexibleConstantConstraintSet constraintSetWithCollapsableConstantPreferredEqualityConstraint:v62 equalityPriority:745];
    [(_UIAlertControllerPhoneTVMacView *)self setTextFieldViewControllerContainerViewTopAlignmentConstraints:v63];

    v64 = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewTopAlignmentConstraints];
    v65 = [v64 constraints];
    [v50 addObjectsFromArray:v65];

    v66 = self->_textFieldViewControllerContainerView;
    v32 = 4;
    v26 = v66;
  }

  v67 = [*(v51 + 1952) constraintWithItem:self->_contentViewTopItemsView attribute:4 relatedBy:0 toItem:v26 attribute:v32];
  [(_UIAlertControllerPhoneTVMacView *)self setContentScrollViewBottomConstraint:v67];

  v68 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewBottomConstraint];
  [v50 addObject:v68];

  v69 = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewController];
  v70 = 10;
  if (!v69)
  {
    v70 = 8;
  }

  v71 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIAlertControllerPhoneTVMacView__alertControllerViewFlags[v70]);

  v72 = [(_UIAlertControllerPhoneTVMacView *)self hasDiscreteHorizontalCancelAction];
  v73 = 18;
  if (!v72)
  {
    v73 = 8;
  }

  v74 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIAlertControllerPhoneTVMacView__alertControllerViewFlags[v73]);
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDetailMessage])
  {
    v75 = [(UIView *)self->_detailMessageLabel firstBaselineAnchor];
    v76 = [(UIView *)self->_mainInterfaceActionsGroupView bottomAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];
    [(_UIAlertControllerPhoneTVMacView *)self setDetailMessageLabelTopAlignmentConstraint:v77];

    v78 = [(_UIAlertControllerPhoneTVMacView *)self detailMessageLabelTopAlignmentConstraint];
    [v50 addObject:v78];

    v79 = self->_detailMessageLabel;
    v74 = v79;
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDiscreteCancelAction])
  {
    v80 = self->_discreteCancelActionGroupView;

    v74 = v80;
  }

  v81 = [(UIView *)self->_contentView topAnchor];
  v82 = [v71 topAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];
  [(_UIAlertControllerPhoneTVMacView *)self setContentViewTopConstraint:v83];

  v84 = [(_UIAlertControllerPhoneTVMacView *)self contentViewTopConstraint];
  [v50 addObject:v84];

  v85 = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewController];

  if (v85)
  {
    v86 = [MEMORY[0x1E69977A0] constraintWithItem:v71 attribute:7 relatedBy:0 toItem:self->_contentView attribute:7];
    [(_UIAlertControllerPhoneTVMacView *)self setSeparatedHeaderContentViewControllerContainerViewWidthConstraint:v86];

    v87 = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewControllerContainerViewWidthConstraint];
    [v50 addObject:v87];

    v88 = [MEMORY[0x1E69977A0] constraintWithItem:v71 attribute:4 relatedBy:0 toItem:self->_mainInterfaceActionsGroupView attribute:3];
    [(_UIAlertControllerPhoneTVMacView *)self setSeparatedHeaderContentViewControllerContainerViewBottomConstraint:v88];

    v89 = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewControllerContainerViewBottomConstraint];
    v90 = 0.0;
    if ((*&self->_alertControllerViewFlags & 0x10) == 0)
    {
      [(_UIAlertControllerPhoneTVMacView *)self _marginBetweenInterfaceActionGroups];
      v90 = v91;
    }

    [v89 constant];
    [v89 setConstant:v92 - v90];

    v93 = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewControllerContainerViewBottomConstraint];
    [v50 addObject:v93];
  }

  v94 = [(UIView *)self->_contentView bottomAnchor];
  v95 = [v74 bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];
  [(_UIAlertControllerPhoneTVMacView *)self setContentViewBottomConstraint:v96];

  v97 = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];
  [v50 addObject:v97];

  [(_UIAlertControllerPhoneTVMacView *)self _updateConstraintConstants];
  v98 = MEMORY[0x1E69977A0];
  v100 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v50, v99);
  [v98 activateConstraints:v100];
}

- (void)_performBatchActionChangesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v6 = [v5 count];

  ++self->_batchActionChangesInProgressCount;
  v4[2](v4);

  --self->_batchActionChangesInProgressCount;
  v7 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v8 = [v7 count];

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
    v4 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewVisualStyle:0];
    [(_UIAlertControllerPhoneTVMacView *)self _associateActionsWithActionViews];
    [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewVisualStyle:v4];
    [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewHeight];
    *&self->_alertControllerViewFlags &= ~0x200u;
    [(_UIAlertControllerPhoneTVMacView *)self _reloadInterfaceActionViewRepresentations];
    [(_UIAlertControllerPhoneTVMacView *)self _updatePreferredAction];
    if (v4)
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
  v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v4 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v5 = [v4 count];
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

  v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v47 = [MEMORY[0x1E695DF70] array];
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
        v15 = [v14 action];

        if (v15)
        {
          v16 = [v14 action];
          [v8 setObject:v14 forKey:v16];
        }

        else
        {
          [v47 addObject:v14];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v11);
  }

  v17 = [v4 mutableCopy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v18 = v4;
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
        v24 = [v8 objectForKey:v23];
        if (v24)
        {
          [v8 removeObjectForKey:v23];
          [v17 removeObject:v23];
          [v3 setObject:v24 forKey:v23];
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
        v30 = [v47 firstObject];
        if (v30)
        {
          v31 = v30;
          [v47 removeObjectAtIndex:0];
        }

        else
        {
          v32 = [v8 objectEnumerator];
          v31 = [v32 nextObject];

          v33 = [v31 action];
          v34 = [(_UIAlertControllerPhoneTVMacView *)self _interfaceActionRepresentationForAlertAlertAction:v33];
          [v34 invalidate];

          v35 = [v31 action];
          [v8 removeObjectForKey:v35];
        }

        v36 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
        [v31 setAlertController:v36];

        [v31 setAction:v29];
        [v3 setObject:v31 forKey:v29];
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
  v39 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v40 = [v39 countByEnumeratingWithState:&v48 objects:v64 count:16];
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
          objc_enumerationMutation(v39);
        }

        v44 = [v3 objectForKey:{*(*(&v48 + 1) + 8 * m), v45}];
        [(NSMutableArray *)self->_actionViews addObject:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v41);
  }
}

- (void)_textFieldsChanged
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self textFields];
  v4 = [v3 count];

  if (v4)
  {
    v28 = [(_UIAlertControllerPhoneTVMacView *)self _textFieldViewController];
    v5 = [v28 parentViewController];
    v6 = [(_UIAlertControllerPhoneTVMacView *)self alertController];

    if (v5 != v6)
    {
      v7 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
      [v7 _willParentTextFieldViewController];

      textFieldViewControllerContainerView = self->_textFieldViewControllerContainerView;
      v9 = [v28 view];
      [(UIView *)textFieldViewControllerContainerView addSubview:v9];

      v10 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
      [v10 _didParentTextFieldViewController];
    }

    v11 = [MEMORY[0x1E695DF70] array];
    v12 = [v28 view];
    v13 = [v12 leftAnchor];
    v14 = [(UIView *)self->_textFieldViewControllerContainerView leftAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v11 addObject:v15];

    v16 = [v28 view];
    v17 = [v16 rightAnchor];
    v18 = [(UIView *)self->_textFieldViewControllerContainerView rightAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v11 addObject:v19];

    v20 = [v28 view];
    v21 = [v20 topAnchor];
    v22 = [(UIView *)self->_textFieldViewControllerContainerView topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v11 addObject:v23];

    v24 = [v28 view];
    v25 = [v24 bottomAnchor];
    v26 = [(UIView *)self->_textFieldViewControllerContainerView bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v11 addObject:v27];

    [MEMORY[0x1E69977A0] activateConstraints:v11];
    [(_UIAlertControllerPhoneTVMacView *)self _sizeOfTextFieldViewControllerChanged];
  }
}

- (id)_interfaceActionForAlertAction:(id)a3 inActionGroupView:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a4 actionGroup];
  v7 = [v6 actions];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 underlyingAlertAction];
        v13 = [v12 isEqual:v5];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _unlocalizedOrderedPresentableAlertActionViewRepresentations];
  v4 = [(_UIAlertControllerPhoneTVMacView *)self _indexesOfActionSectionSeparators];
  v5 = _newInterfaceActionSectionsForAlertActionViewRepresentations(v3, v4);

  mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
  v7 = [UIInterfaceActionGroup actionGroupWithActionsBySection:v5];
  [(UIInterfaceActionGroupView *)mainInterfaceActionsGroupView setActionGroup:v7];

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDiscreteCancelAction])
  {
    v8 = [(_UIAlertControllerPhoneTVMacView *)self _discreteCancelActionView];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10 = [MEMORY[0x1E696AC90] indexSet];
    v11 = _newInterfaceActionSectionsForAlertActionViewRepresentations(v9, v10);

    discreteCancelActionGroupView = self->_discreteCancelActionGroupView;
    v13 = [UIInterfaceActionGroup actionGroupWithActionsBySection:v11];
    [(UIInterfaceActionGroupView *)discreteCancelActionGroupView setActionGroup:v13];
  }

  [(_UIAlertControllerPhoneTVMacView *)self _ensureActionViewRepresentationsHaveMetrics];
  [(_UIAlertControllerPhoneTVMacView *)self _reloadInterfaceActionsGroupViewPreferredAction];
}

- (void)_reloadInterfaceActionsGroupViewPreferredAction
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _effectivePreferredAction];
  v8 = [(_UIAlertControllerPhoneTVMacView *)self _interfaceActionForAlertAction:v3 inActionGroupView:self->_mainInterfaceActionsGroupView];

  v4 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionGroup];
  [v4 setPreferredAction:v8];

  v5 = [(_UIAlertControllerPhoneTVMacView *)self _effectivePreferredAction];
  v6 = [(_UIAlertControllerPhoneTVMacView *)self _interfaceActionForAlertAction:v5 inActionGroupView:self->_discreteCancelActionGroupView];

  v7 = [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView actionGroup];
  [v7 setPreferredAction:v6];
}

- (void)_scrollInitialActionToVisibleForPresentation
{
  v3 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionGroup];
  v4 = [v3 preferredAction];

  if (!v4)
  {
    mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
    v8 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v6 = [v8 preferredAction];
    v7 = [(_UIAlertControllerPhoneTVMacView *)self _interfaceActionForAlertAction:v6 inActionGroupView:self->_mainInterfaceActionsGroupView];
    [(UIInterfaceActionGroupView *)mainInterfaceActionsGroupView scrollToCenterForInterfaceAction:v7];
  }
}

- (void)interfaceAction:(id)a3 invokeActionHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_class();
  if (v10 != objc_opt_class())
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIAlertControllerPhoneTVMacView.m" lineNumber:1660 description:{@"unexpected class %@ for interface action", objc_opt_class()}];
  }

  v11 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v12 = [v8 underlyingAlertAction];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83___UIAlertControllerPhoneTVMacView_interfaceAction_invokeActionHandler_completion___block_invoke;
  v15[3] = &unk_1E70F3608;
  v16 = v9;
  v13 = v9;
  [v11 _dismissWithAction:v12 dismissCompletion:v15];
}

- (BOOL)_shouldHaveCancelActionInMainActionButtonSequenceView
{
  if ([(_UIAlertControllerPhoneTVMacView *)self showsCancelAction])
  {
    v3 = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    if (v3)
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v5 = [(_UIAlertControllerPhoneTVMacView *)self _unlocalizedOrderedPresentableAlertActions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96___UIAlertControllerPhoneTVMacView__unlocalizedOrderedPresentableAlertActionViewRepresentations__block_invoke;
  v11[3] = &unk_1E7107108;
  v12 = v4;
  v13 = self;
  v6 = v3;
  v14 = v6;
  v7 = v4;
  [v5 enumerateObjectsUsingBlock:v11];
  v8 = v14;
  v9 = v6;

  return v6;
}

- (id)_unlocalizedOrderedPresentableAlertActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally];
  v5 = [(_UIAlertControllerPhoneTVMacView *)self _shouldHaveCancelActionInMainActionButtonSequenceView];
  v6 = [(_UIAlertControllerPhoneTVMacView *)self _actionsReversed];
  v7 = [(_UIAlertControllerPhoneTVMacView *)self _presentableAlertActions];
  if (!v6)
  {
    [v3 addObjectsFromArray:v7];

    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_5:
    v8 = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    [v3 removeObject:v8];
    if (v4)
    {
      [v3 insertObject:v8 atIndex:0];
    }

    else
    {
      [v3 addObject:v8];
    }

    goto LABEL_9;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78___UIAlertControllerPhoneTVMacView__unlocalizedOrderedPresentableAlertActions__block_invoke;
  v10[3] = &unk_1E70F48F8;
  v11 = v3;
  [v7 enumerateObjectsUsingBlock:v10];

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_9:

  return v3;
}

- (id)_presentableAlertActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_UIAlertControllerPhoneTVMacView *)self _shouldHaveCancelActionInMainActionButtonSequenceView];
  v5 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  [v3 addObjectsFromArray:v5];

  if (!v4)
  {
    v6 = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    [v3 removeObject:v6];
  }

  return v3;
}

- (int64_t)_numberOfActionsForMainActionButtonSequenceView
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v4 = [v3 count];

  if (![(_UIAlertControllerPhoneTVMacView *)self _shouldHaveCancelActionInMainActionButtonSequenceView])
  {
    v5 = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    v6 = v5 != 0;

    v4 -= v6;
  }

  return v4;
}

- (void)_updatePreferredAction
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v4 = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
  v5 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v6 = [v5 preferredAction];
  v7 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v8 = [v7 _resolvedStyle];
  v9 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v10 = [v9 _visualStyle];
  v11 = _UIAlertControllerEffectivePreferredActionGivenActions(v3, v4, v6, v8, v10);

  v12 = self->_effectivePreferredAction;
  if (v12 != v11 || ![(UIAlertAction *)v11 _isPreferred])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v3;
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
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _hasDiscreteCancelAction];
  if (v3)
  {
    v3 = [(_UIAlertControllerPhoneTVMacView *)self _buttonsAreTopMost];
    if (v3)
    {
      LOBYTE(v3) = [(_UIAlertControllerPhoneTVMacView *)self _numberOfActionsForMainActionButtonSequenceView]> 0;
    }
  }

  return v3;
}

- (double)_marginBetweenInterfaceActionGroups
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v2 _spacingBetweenDismissButtonAndContent];
  v4 = v3;

  return v4;
}

- (CGSize)_contentViewControllerSize
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];
  [v2 preferredContentSize];
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
  v2 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v2 _labelHorizontalInsets];
  v4 = v3;

  return v4;
}

- (CGSize)_minimumSizeForAllActions
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*&self->_alertControllerViewFlags & 0x200) == 0)
  {
    v3 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewWidthConstraint];
    [v3 setActive:0];

    v4 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewHeightConstraint];
    [v4 setActive:0];

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
          v15 = [v14 action];
          v16 = [v15 _contentViewController];

          if (v16)
          {
            [v16 preferredContentSize];
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

    v19 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewWidthConstraint];
    [v19 setActive:1];

    v20 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewHeightConstraint];
    [v20 setActive:1];

    *&self->_alertControllerViewFlags |= 0x200u;
  }

  width = self->_largestActionDimension.width;
  height = self->_largestActionDimension.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:a3];
  mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
  v6[0] = self->_discreteCancelActionGroupView;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(UIInterfaceActionGroupView *)mainInterfaceActionsGroupView setSimultaneouslyPresentedGroupViews:v5];
}

- (void)setSpringLoaded:(BOOL)a3
{
  if (self->_springLoaded != a3)
  {
    v4 = a3;
    self->_springLoaded = a3;
    [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView setSpringLoaded:?];
    discreteCancelActionGroupView = self->_discreteCancelActionGroupView;

    [(UIInterfaceActionGroupView *)discreteCancelActionGroupView setSpringLoaded:v4];
  }
}

- (BOOL)_shouldAllowPassthroughToLayersBehindUsForTouches:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86___UIAlertControllerPhoneTVMacView__shouldAllowPassthroughToLayersBehindUsForTouches___block_invoke;
  v6[3] = &unk_1E70F3A88;
  v6[4] = self;
  v3 = [a3 objectsPassingTest:v6];
  v4 = [v3 count] == 0;

  return v4;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_UIAlertControllerPhoneTVMacView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:v6])
  {
    v8.receiver = self;
    v8.super_class = _UIAlertControllerPhoneTVMacView;
    [(UIResponder *)&v8 touchesBegan:v6 withEvent:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_UIAlertControllerPhoneTVMacView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:v6])
  {
    v8.receiver = self;
    v8.super_class = _UIAlertControllerPhoneTVMacView;
    [(UIResponder *)&v8 touchesMoved:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_UIAlertControllerPhoneTVMacView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:v6])
  {
    v8.receiver = self;
    v8.super_class = _UIAlertControllerPhoneTVMacView;
    [(UIResponder *)&v8 touchesEnded:v6 withEvent:v7];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_UIAlertControllerPhoneTVMacView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:v6])
  {
    v8.receiver = self;
    v8.super_class = _UIAlertControllerPhoneTVMacView;
    [(UIResponder *)&v8 touchesCancelled:v6 withEvent:v7];
  }
}

- (void)_setVisualStyle:(id)a3
{
  v4 = a3;
  v14 = [(_UIAlertControllerPhoneTVMacView *)self _unlocalizedOrderedPresentableAlertActions];
  v5 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v6 = [v5 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  v8 = [(UIAlertControllerVisualStyle *)v4 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v7 == v9)
  {
    v10 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  visualStyle = self->_visualStyle;
  self->_visualStyle = v4;

  [(_UIAlertControllerPhoneTVMacView *)self _updateStyleForIdiomChange:v11];
  [(_UIAlertControllerPhoneTVMacView *)self _updateActionsGroupPresentationStyles];
  v13 = [(_UIAlertControllerPhoneTVMacView *)self _unlocalizedOrderedPresentableAlertActions];
  if (([v14 isEqual:v13] & 1) == 0)
  {
    [(_UIAlertControllerPhoneTVMacView *)self _reloadInterfaceActionViewRepresentations];
  }

  [(_UIAlertControllerPhoneTVMacView *)self _updateGlassBackground];
  [(_UIAlertControllerPhoneTVMacView *)self _updateBackdropView:[(_UIAlertControllerPhoneTVMacView *)self shouldHaveBackdropView]];
  [(_UIAlertControllerPhoneTVMacView *)self _updateCancelActionBeingDiscrete];
}

- (void)_updateStyleForIdiomChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  *&self->_alertControllerViewFlags &= ~0x200u;
  [(_UIAlertControllerPhoneTVMacView *)self _updateLabelFontSizes];
  [(_UIAlertControllerPhoneTVMacView *)self _updateLabelTextColor];
  [(_UIAlertControllerPhoneTVMacView *)self _updateLabelProperties];
  [(_UIAlertControllerPhoneTVMacView *)self _updateMainGroupViewProperties];
  [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewVisualStyle:v5];
  [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewHeight];
  if (v3)
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
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _hasAttributedTitle];
  titleLabel = self->_titleLabel;
  if (v3)
  {
    v5 = [(_UIAlertControllerPhoneTVMacView *)self _attributedTitle];
    [(UILabel *)titleLabel setAttributedText:?];
  }

  else
  {
    v5 = [(_UIAlertControllerPhoneTVMacView *)self title];
    [(UILabel *)titleLabel setText:?];
  }
}

- (void)_updateDetailLabelContents
{
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDetailMessage])
  {
    detailMessageLabel = self->_detailMessageLabel;
    v4 = [(_UIAlertControllerPhoneTVMacView *)self _attributedDetailMessage];
    [(UILabel *)detailMessageLabel setAttributedText:v4];
  }
}

- (void)_updateMessageLabelContents
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _hasAttributedMessage];
  messageLabel = self->_messageLabel;
  if (v3)
  {
    v5 = [(_UIAlertControllerPhoneTVMacView *)self _attributedMessage];
    [(UILabel *)messageLabel setAttributedText:?];
  }

  else
  {
    v5 = [(_UIAlertControllerPhoneTVMacView *)self message];
    [(UILabel *)messageLabel setText:?];
  }
}

- (void)_updateTitleLabelFontSize
{
  if (![(_UIAlertControllerPhoneTVMacView *)self _hasAttributedTitle])
  {
    titleLabel = self->_titleLabel;
    v5 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v4 = [v5 titleLabelFont];
    [(UILabel *)titleLabel setFont:v4];
  }
}

- (void)_updateDetailLabelFontSize
{
  detailMessageLabel = self->_detailMessageLabel;
  v4 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v3 = [v4 _detailMessageFont];
  [(UILabel *)detailMessageLabel setFont:v3];
}

- (void)_updateMessageLabelFontSize
{
  if (![(_UIAlertControllerPhoneTVMacView *)self _hasAttributedMessage])
  {
    messageLabel = self->_messageLabel;
    v5 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v4 = [v5 messageLabelFont];
    [(UILabel *)messageLabel setFont:v4];
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
    v4 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v5 = [v4 titleLabelColor];
    [(UILabel *)titleLabel setTextColor:v5];
  }

  if (![(_UIAlertControllerPhoneTVMacView *)self _hasAttributedMessage])
  {
    messageLabel = self->_messageLabel;
    v7 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v8 = [v7 messageLabelColor];
    [(UILabel *)messageLabel setTextColor:v8];

    v9 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v15 = [v9 messageCompositingFilter];

    v10 = [(_UIAlertControllerPhoneTVMacView *)self _titleAndMessageLabelUseVibrancy];
    if (v15)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      v12 = [(UIView *)self->_messageLabel layer];
      [v12 setCompositingFilter:v15];
    }

    v13 = [(UIView *)self->_contentViewTopItemsView layer];
    [v13 setAllowsGroupBlending:v11];

    v14 = [(UIView *)self->_contentViewTopItemsView layer];
    [v14 setAllowsGroupOpacity:v11];
  }
}

- (void)_updateLabelProperties
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);
  if ([WeakRetained _titleMaximumLineCount] < 0)
  {
    v4 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v5 = [v4 maximumNumberOfLinesInTitleLabel];
  }

  else
  {
    v4 = objc_loadWeakRetained(&self->_alertController);
    v5 = [v4 _titleMaximumLineCount];
  }

  v6 = v5;

  [(UILabel *)self->_titleLabel setNumberOfLines:v6];
  titleLabel = self->_titleLabel;
  v8 = objc_loadWeakRetained(&self->_alertController);
  -[UILabel setLineBreakMode:](titleLabel, "setLineBreakMode:", [v8 _titleLineBreakMode]);

  messageLabel = self->_messageLabel;
  v10 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  -[UILabel setNumberOfLines:](messageLabel, "setNumberOfLines:", [v10 maximumNumberOfLinesInMessageLabel]);
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

- (double)_maximumWidthUsingAccessibilityWidthIfActionsAreTruncated:(double)a3
{
  [(_UIAlertControllerPhoneTVMacView *)self _minimumSizeForAllActions];
  if (v5 > a3 && ([UIApp _isSpringBoard] & 1) == 0)
  {
    v6 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    [v6 accessibilityWidth];
    a3 = v7;
  }

  return a3;
}

- (void)_updateContentView
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v3 maximumWidthForTitleAndMessageContentView];
  [(_UIAlertControllerPhoneTVMacView *)self _maximumWidthUsingAccessibilityWidthIfActionsAreTruncated:?];
  v5 = v4;

  v6 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumWidthConstraint];
  v7 = v6;
  if (v5 == 0.0)
  {
    v8 = 0;
  }

  else
  {
    [v6 setConstant:v5];

    v6 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumWidthConstraint];
    v7 = v6;
    v8 = 1;
  }

  [v6 setActive:v8];

  v9 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  [v9 maximumContentHeight];
  v11 = v10;

  if (v11 > 0.0)
  {
    v12 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
    [v12 setConstant:v11];
  }

  v13 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewMaximumHeightConstraint];
  [v13 setActive:v11 > 0.0];

  WeakRetained = objc_loadWeakRetained(&self->_alertController);
  v15 = [WeakRetained _window];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [(UIView *)self window];
  }

  v62 = v17;

  v18 = [v62 _toWindowOrientation];
  if (!v18)
  {
    v18 = [v62 interfaceOrientation];
  }

  v19 = [v62 screen];
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = __UIStatusBarManagerForWindow(v62);
  v21 = [v20 isStatusBarHidden];

  if (v21)
  {
    v22 = 1;
  }

  else
  {
    v23 = __UIStatusBarManagerForWindow(v62);
    [v23 defaultStatusBarHeightInOrientation:v18];
    v25 = v24;

    v22 = v25 == 0.0;
  }

  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    [v62 _referenceFrameFromSceneUsingScreenBounds:v22];
  }

  else
  {
    [v19 _applicationFrameForInterfaceOrientation:v18 usingStatusbarHeight:v22 ignoreStatusBar:0.0];
  }

  v27 = v26;
  [(_UIAlertControllerPhoneTVMacView *)self _contentInsets];
  v30 = v27 - (v28 + v29);
  if (v30 > 0.0)
  {
    v31 = [(_UIAlertControllerPhoneTVMacView *)self contentViewMaxHeightConstraint];
    [v31 setConstant:v30];

    v32 = 1;
  }

  else
  {
LABEL_20:
    v32 = 0;
  }

  v33 = [(_UIAlertControllerPhoneTVMacView *)self contentViewMaxHeightConstraint];
  [v33 setActive:v32];

  v34 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v35 = [v34 contentClipsToBounds];
  contentView = self->_contentView;
  if (v35)
  {
    [(UIView *)contentView setClipsToBounds:1];
    [v34 contentCornerRadius];
    v38 = v37;
    v39 = [(UIView *)self->_contentView layer];
    [v39 setCornerRadius:v38];

    v40 = [v34 contentCornerCurve];
    v41 = [(UIView *)self->_contentView layer];
    [v41 setCornerCurve:v40];
  }

  else
  {
    [(UIView *)contentView setClipsToBounds:0];
    v40 = [(UIView *)self->_contentView layer];
    [v40 setCornerRadius:0.0];
  }

  if ([v34 contentHasShadow])
  {
    [v34 contentShadowRadius];
    v43 = v42;
    v44 = [(UIView *)self layer];
    [v44 setShadowRadius:v43];

    v45 = [v34 contentShadowColor];
    v46 = [v45 cgColor];
    v47 = [(UIView *)self layer];
    [v47 setShadowColor:v46];

    [v34 contentShadowOffset];
    v49 = v48;
    v51 = v50;
    v52 = [(UIView *)self layer];
    [v52 setShadowOffset:{v49, v51}];

    [v34 contentShadowOpacity];
    v54 = v53;
  }

  else
  {
    v55 = [(UIView *)self layer];
    [v55 setShadowRadius:0.0];

    v56 = [(UIView *)self layer];
    [v56 setShadowColor:0];

    v57 = *MEMORY[0x1E695F060];
    v58 = *(MEMORY[0x1E695F060] + 8);
    v59 = [(UIView *)self layer];
    [v59 setShadowOffset:{v57, v58}];

    v54 = 0.0;
  }

  v60 = [(UIView *)self layer];
  *&v61 = v54;
  [v60 setShadowOpacity:v61];
}

- (void)_updateMainGroupViewProperties
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  -[UIInterfaceActionGroupView setFocusAvoidsNonDefaultActionsIfPossible:](self->_mainInterfaceActionsGroupView, "setFocusAvoidsNonDefaultActionsIfPossible:", [v3 focusAvoidsNonDefaultActionsIfPossible]);
}

- (void)_updateActionViewVisualStyle:(id)a3
{
  v4 = a3;
  actionViews = self->_actionViews;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___UIAlertControllerPhoneTVMacView__updateActionViewVisualStyle___block_invoke;
  v7[3] = &unk_1E7107130;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)actionViews enumerateObjectsUsingBlock:v7];
}

- (void)_updateActionViewHeight
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v5 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    if (v5)
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
      v9 = [(_UIAlertControllerPhoneTVMacView *)self _canLayOutActionsHorizontally];
      if (!_UISolariumEnabled() || v9)
      {
        [(_UIAlertControllerPhoneTVMacView *)self _itemSizeForHorizontalLayout:v9];
      }

      else
      {
        [v5 actionSequenceEdgeInsets];
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
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
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
  v5 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];

  if (v5)
  {
    v6 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewControllerContainerViewTopAlignmentConstraint];
    [v6 setConstant:0.0];
  }

  v7 = 0.0;
  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTitle])
  {
    v8 = [(_UIAlertControllerPhoneTVMacView *)self title];
    [v3 _scaledMarginAboveTitleLabelFirstBaselineInAlertControllerView:self titleText:v8];
    v10 = v9;

    v11 = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];
    [v11 setEqualityConstant:v10];

    v12 = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];
    [v3 _scaledTitleLabelSafeBaselineHeightInAlertControllerView:self];
    v14 = v13;
    [v3 _minimumSpacingAboveTopmostLabelSafeAscender];
    v16 = v15;
    v17 = [(_UIAlertControllerPhoneTVMacView *)self titleLabelTopAlignmentConstraints];
    [v17 equalityConstant];
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

    [v12 setMinConstant:v21];

    [v3 _scaledMarginBelowTitleLabelLastBaseline];
    v7 = v22;
    v4[2](v4, self->_titleLabel, v10);
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasMessage])
  {
    v23 = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];
    [v3 _scaledMarginAboveMessageLabelFirstBaseline];
    [v23 setEqualityConstant:?];

    v24 = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];
    [v3 _scaledMessageSafeBaselineHeightInAlertControllerView:self];
    v26 = v25;
    [v3 _minimumSpacingAboveTopmostLabelSafeAscender];
    v28 = v27;
    v29 = [(_UIAlertControllerPhoneTVMacView *)self messageLabelTopAlignmentConstraints];
    [v29 equalityConstant];
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

    [v24 setMinConstant:v33];

    [v3 _scaledMarginBelowMessageLabelLastBaseline];
    v7 = v34;
    messageLabel = self->_messageLabel;
    [v3 _scaledMarginAboveMessageLabelFirstBaseline];
    (v4[2])(v4, messageLabel);
  }

  v36 = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];

  if (v36)
  {
    v37 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewTopAlignmentConstraint];
    [v37 setConstant:v7];

    v7 = 0.0;
    if (_UISolariumEnabled())
    {
      [v3 _topItemsViewBottomMargin];
      v7 = v38;
    }
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTextFields])
  {
    v39 = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewTopAlignmentConstraints];
    [v39 setEqualityConstant:v7];

    v40 = [(_UIAlertControllerPhoneTVMacView *)self textFieldViewControllerContainerViewTopAlignmentConstraints];
    v41 = v40;
    v42 = 8.0;
    if (v7 <= 8.0)
    {
      v42 = v7;
    }

    [v40 setMinConstant:v42];

    v7 = 0.0;
  }

  [(_UIAlertControllerPhoneTVMacView *)self _updateConstraintSpacingForExternalOffset];
  if ([(_UIAlertControllerPhoneTVMacView *)self _numberOfActionsForMainActionButtonSequenceView]<= 0)
  {
    v7 = v51[3];
  }

  v43 = [(_UIAlertControllerPhoneTVMacView *)self contentScrollViewBottomConstraint];
  [v43 setConstant:v7];

  v44 = [(_UIAlertControllerPhoneTVMacView *)self detailMessageLabelTopAlignmentConstraint];
  [v3 _scaledMarginAboveDetailMessageFirstBaseline];
  [v44 setConstant:?];

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDetailMessage])
  {
    v45 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    [v45 _scaledMarginBelowDetailMessage];
    v47 = v46;
    v48 = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];
    [v48 setConstant:v47];
  }

  _Block_object_dispose(&v50, 8);
}

- (void)_updateTintColor
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v4 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v6 = [v3 tintColorForAlertController:v4];

  v5 = v6;
  if (v6)
  {
    [(UIView *)self setTintColor:v6];
    v5 = v6;
  }
}

- (void)_setActionsReversed:(BOOL)a3
{
  if (self->_actionsReversed != a3)
  {
    self->_actionsReversed = a3;
    [(_UIAlertControllerPhoneTVMacView *)self _reloadInterfaceActionViewRepresentations];
  }
}

- (void)deselectAllActions
{
  v3 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionSelectionController];
  [v3 deselectAllActions];

  v4 = [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView actionSelectionController];
  [v4 deselectAllActions];
}

- (void)_contentSizeChanged
{
  [(_UIAlertControllerPhoneTVMacView *)self _updateStyleForIdiomChange:0];

  [(_UIAlertControllerPhoneTVMacView *)self _actionsChanged];
}

- (void)_setTitle:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self->_titleLabel text];
  v9 = v4;
  v6 = v5;
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

- (void)_setMessage:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self->_messageLabel text];
  v9 = v4;
  v6 = v5;
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

- (void)_setAttributedTitle:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self->_titleLabel attributedText];
  v9 = v4;
  v6 = v5;
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

- (void)_setAttributedMessage:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self->_messageLabel attributedText];
  v9 = v4;
  v6 = v5;
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

- (void)_setAttributedDetailMessage:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self->_detailMessageLabel attributedText];
  v9 = v4;
  v6 = v5;
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
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 title];

  return v3;
}

- (id)message
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 message];

  return v3;
}

- (id)_attributedTitle
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _attributedTitle];

  return v3;
}

- (id)_attributedMessage
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _attributedMessage];

  return v3;
}

- (id)_attributedDetailMessage
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _attributedDetailMessage];

  return v3;
}

- (id)_vibrancyEffectForTitleAndMessageLabel
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v5 = [v6 _visualStyle];
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (!v5)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Neither _UIAlertControllerPhoneTVMacView or UIAlertController have a visual style yet, which means it impossible to correctly determine the vibrancy effect.", buf, 2u);
      }
    }
  }

  else if (!v5)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_vibrancyEffectForTitleAndMessageLabel___s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Neither _UIAlertControllerPhoneTVMacView or UIAlertController have a visual style yet, which means it impossible to correctly determine the vibrancy effect.", v11, 2u);
    }
  }

  v7 = [v5 vibrancyEffectForTitleAndMessageLabel];

  return v7;
}

- (BOOL)_titleAndMessageLabelUseVibrancy
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self _vibrancyEffectForTitleAndMessageLabel];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_hasTitle
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _hasTitle];

  return v3;
}

- (BOOL)_hasAttributedTitle
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _hasAttributedTitle];

  return v3;
}

- (BOOL)_hasMessage
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _hasMessage];

  return v3;
}

- (BOOL)_hasAttributedMessage
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _hasAttributedMessage];

  return v3;
}

- (BOOL)_hasDetailMessage
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _hasDetailMessage];

  return v3;
}

- (BOOL)_hasTextFields
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self textFields];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_textFieldViewController
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _textFieldViewController];

  return v3;
}

- (id)headerContentViewController
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _headerContentViewController];

  return v3;
}

- (id)contentViewController
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 contentViewController];

  return v3;
}

- (id)separatedHeaderContentViewController
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _separatedHeaderContentViewController];

  return v3;
}

- (id)actions
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _actions];

  return v3;
}

- (id)cancelAction
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _cancelAction];

  return v3;
}

- (id)_focusedAction
{
  v3 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView _interfaceActionOfFocusedRepresentationView];
  if (!v3)
  {
    v3 = [(UIInterfaceActionGroupView *)self->_discreteCancelActionGroupView _interfaceActionOfFocusedRepresentationView];
  }

  v4 = [v3 underlyingAlertAction];

  return v4;
}

- (id)_preferredActionView
{
  mainInterfaceActionsGroupView = self->_mainInterfaceActionsGroupView;
  v4 = __UIFocusEnvironmentPreferredFocusedView(self, 0);

  v5 = 0;
  if (mainInterfaceActionsGroupView == v4)
  {
    v6 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView preferredActionRepresentation];
    v7 = [v6 action];

    v5 = [v7 alertControllerActionView];
  }

  return v5;
}

- (id)_indexesOfActionSectionSeparators
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 _indexesOfActionSectionSeparators];

  return v3;
}

- (double)_spaceRequiredForActionSectionsSpacing
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self _indexesOfActionSectionSeparators];
  v4 = [v3 count];

  if (!v4)
  {
    return 0.0;
  }

  v5 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v6 = v4;
  v7 = [v5 interfaceActionVisualStyle];
  [v7 actionSectionSpacing];
  v9 = v8 * v6;

  return v9;
}

- (id)textFields
{
  v2 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v3 = [v2 textFields];

  return v3;
}

- (void)setPresentedAsPopover:(BOOL)a3
{
  v3 = a3;
  if ([(_UIAlertControllerPhoneTVMacView *)self presentedAsPopover]!= a3)
  {
    if (v3)
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

- (void)setHasDimmingView:(BOOL)a3
{
  v3 = a3;
  if ([(_UIAlertControllerPhoneTVMacView *)self hasDimmingView]!= a3)
  {
    if (v3)
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
      v6 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
      v7 = [v6 _resolvedStyle];

      if (v7)
      {
        v8 = &OBJC_IVAR____UIAlertControllerPhoneTVMacView__dimmingViewConstraintsForActionSheetStyle;
      }

      else
      {
        v8 = &OBJC_IVAR____UIAlertControllerPhoneTVMacView__dimmingViewConstraintsForAlertStyle;
      }

      if (v7)
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

- (void)setPresentationContextPrefersCancelActionShown:(BOOL)a3
{
  if (self->_presentationContextPrefersCancelActionShown != a3)
  {
    self->_presentationContextPrefersCancelActionShown = a3;
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
    v3 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v4 = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    v5 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v6 = [v3 hideCancelAction:v4 inAlertController:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)__cancelActionView
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self actions];
  v4 = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
  v5 = [v3 indexOfObject:v4];

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
  v3 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  if ([v3 _resolvedStyle])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(_UIAlertControllerPhoneTVMacView *)self cancelAction];
    if (v5)
    {
      v4 = [(_UIAlertControllerPhoneTVMacView *)self showsCancelAction];
    }

    else
    {
      v4 = 0;
    }
  }

  [(_UIAlertControllerPhoneTVMacView *)self setCancelActionIsDiscrete:v4];
}

- (void)setCancelActionIsDiscrete:(BOOL)a3
{
  v3 = a3;
  if ([(_UIAlertControllerPhoneTVMacView *)self cancelActionIsDiscrete]!= a3)
  {
    if (v3)
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    *&self->_alertControllerViewFlags = *&self->_alertControllerViewFlags & 0xFFBF | v5;
    if (v3)
    {
      [(UIView *)self->_contentView addSubview:self->_discreteCancelActionGroupView];
    }

    else
    {
      v6 = [(_UIAlertControllerPhoneTVMacView *)self contentViewBottomConstraint];
      [v6 setActive:0];

      [(_UIAlertControllerPhoneTVMacView *)self setContentViewBottomConstraint:0];
      v7 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewTopConstraint];
      [v7 setActive:0];

      [(_UIAlertControllerPhoneTVMacView *)self setDiscreteCancelActionViewTopConstraint:0];
      v8 = [(_UIAlertControllerPhoneTVMacView *)self discreteCancelActionViewLeadingConstraint];
      [v8 setActive:0];

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
  v12 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
  v3 = [v12 _shouldApplyGlassToAlertView];
  v4 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v5 = [v4 _isPresentedAsPopover];

  if (v3 && (v5 & 1) == 0)
  {
    v6 = [[_UIViewGlass alloc] initWithVariant:0];
    [(_UIViewGlass *)v6 setFlexible:1];
    [(UIView *)self _setBackground:v6];
    v7 = [v12 contentCornerCurve];
    v8 = [(UIView *)self layer];
    [v8 setCornerCurve:v7];

    [v12 contentCornerRadius];
    v10 = v9;
    v11 = [(UIView *)self layer];
    [v11 setCornerRadius:v10];
  }
}

- (void)_updateBackdropView:(BOOL)a3
{
  v3 = a3;
  backdropView = self->_backdropView;
  if (backdropView)
  {
    [(UIView *)backdropView removeFromSuperview];
    v6 = self->_backdropView;
    self->_backdropView = 0;
  }

  if (v3)
  {
    v7 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v8 = [v7 contentBackdropView];
    v9 = self->_backdropView;
    self->_backdropView = v8;

    v10 = self->_backdropView;
    if (v10)
    {
      [(UIView *)self->_contentView insertSubview:v10 atIndex:0];
      [(UIView *)self->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = [(UIView *)self->_backdropView leadingAnchor];
      v12 = [(UIView *)self->_contentView leadingAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      [v13 setActive:1];

      v14 = [(UIView *)self->_backdropView trailingAnchor];
      v15 = [(UIView *)self->_contentView trailingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      [v16 setActive:1];

      v17 = [(UIView *)self->_backdropView topAnchor];
      v18 = [(UIView *)self->_contentView topAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      [v19 setActive:1];

      v22 = [(UIView *)self->_backdropView bottomAnchor];
      v20 = [(UIView *)self->_contentView bottomAnchor];
      v21 = [v22 constraintEqualToAnchor:v20];
      [v21 setActive:1];
    }
  }
}

- (void)setShouldHaveBackdropView:(BOOL)a3
{
  alertControllerViewFlags = self->_alertControllerViewFlags;
  if (((((alertControllerViewFlags & 0x80) == 0) ^ a3) & 1) == 0)
  {
    v11 = v4;
    v12 = v3;
    v8 = a3;
    if (a3)
    {
      v10 = 128;
    }

    else
    {
      v10 = 0;
    }

    *&self->_alertControllerViewFlags = alertControllerViewFlags & 0xFF7F | v10;
    [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView _setDrawsBackground:v11, v12, v5];

    [(_UIAlertControllerPhoneTVMacView *)self _updateBackdropView:v8];
  }
}

- (void)setAlignsToKeyboard:(BOOL)a3
{
  v3 = a3;
  if ([(_UIAlertControllerPhoneTVMacView *)self alignsToKeyboard]!= a3)
  {
    if (v3)
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
  v3 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];
  v4 = [v3 view];

  v5 = [v4 superview];
  headerContentViewControllerContainerView = self->_headerContentViewControllerContainerView;

  if (v5 != headerContentViewControllerContainerView)
  {
    [(UIView *)self->_headerContentViewControllerContainerView addSubview:v4];
    v7 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v8 = [v7 shouldRespectContentViewControllerClippingPreference];

    if (v8)
    {
      v9 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
      -[UIView setClipsToBounds:](self->_headerContentViewControllerContainerView, "setClipsToBounds:", [v9 _wantsUnclippedHeaderContentViewControllerContainer] ^ 1);
    }

    v18 = MEMORY[0x1E69977A0];
    v23 = [v4 leftAnchor];
    v22 = [(UIView *)self->_headerContentViewControllerContainerView leftAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v24[0] = v21;
    v20 = [v4 rightAnchor];
    v19 = [(UIView *)self->_headerContentViewControllerContainerView rightAnchor];
    v10 = [v20 constraintEqualToAnchor:v19];
    v24[1] = v10;
    v11 = [v4 topAnchor];
    v12 = [(UIView *)self->_headerContentViewControllerContainerView topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v24[2] = v13;
    v14 = [v4 bottomAnchor];
    v15 = [(UIView *)self->_headerContentViewControllerContainerView bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v24[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v17];

    [(_UIAlertControllerPhoneTVMacView *)self _sizeOfHeaderContentViewControllerChanged];
  }
}

- (void)_addContentViewControllerToViewHierarchyIfNecessary
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];
  v4 = [v3 view];
  v5 = [v4 superview];
  contentViewControllerContainerView = self->_contentViewControllerContainerView;

  if (v5 != contentViewControllerContainerView)
  {
    v49 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
    v7 = [v49 isBeingPresented];
    v8 = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];
    v9 = [v8 appearanceTransitionsAreDisabled];
    if (v7)
    {
      v10 = v9;
      [v8 setAppearanceTransitionsAreDisabled:1];
      v11 = self->_contentViewControllerContainerView;
      v12 = [v8 view];
      [(UIView *)v11 addSubview:v12];

      [v8 setAppearanceTransitionsAreDisabled:v10];
    }

    else
    {
      v13 = self->_contentViewControllerContainerView;
      v14 = [v8 view];
      [(UIView *)v13 addSubview:v14];
    }

    v15 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    v16 = [v15 shouldRespectContentViewControllerClippingPreference];

    if (v16)
    {
      -[UIView setClipsToBounds:](self->_contentViewControllerContainerView, "setClipsToBounds:", [v49 _wantsUnclippedContentViewControllerContainer] ^ 1);
    }

    contentView = self->_contentView;
    v18 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewLeftConstraint];
    [(UIView *)contentView removeConstraint:v18];

    v19 = self->_contentView;
    v20 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewRightConstraint];
    [(UIView *)v19 removeConstraint:v20];

    v21 = [v8 view];
    v22 = [v21 leftAnchor];
    v23 = [(UIView *)self->_contentViewControllerContainerView leftAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewLeftConstraint:v24];

    v25 = [v8 view];
    v26 = [v25 rightAnchor];
    v27 = [(UIView *)self->_contentViewControllerContainerView rightAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewRightConstraint:v28];

    v29 = self->_contentView;
    v30 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewLeftConstraint];
    [(UIView *)v29 addConstraint:v30];

    v31 = self->_contentView;
    v32 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewRightConstraint];
    [(UIView *)v31 addConstraint:v32];

    v33 = self->_contentView;
    v34 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewTopConstraint];
    [(UIView *)v33 removeConstraint:v34];

    v35 = self->_contentView;
    v36 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewBottomConstraint];
    [(UIView *)v35 removeConstraint:v36];

    v37 = [v8 view];
    v38 = [v37 topAnchor];
    v39 = [(UIView *)self->_contentViewControllerContainerView topAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewTopConstraint:v40];

    v41 = [v8 view];
    v42 = [v41 bottomAnchor];
    v43 = [(UIView *)self->_contentViewControllerContainerView bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewBottomConstraint:v44];

    v45 = self->_contentView;
    v46 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewTopConstraint];
    [(UIView *)v45 addConstraint:v46];

    v47 = self->_contentView;
    v48 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerViewBottomConstraint];
    [(UIView *)v47 addConstraint:v48];

    [(_UIAlertControllerPhoneTVMacView *)self _sizeOfContentViewControllerChanged];
  }
}

- (void)_addSeparatedHeaderContentViewControllerToViewHierarchyIfNecessary
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewController];
  v4 = [v3 view];

  v5 = [v4 superview];
  separatedHeaderContentViewControllerContainerView = self->_separatedHeaderContentViewControllerContainerView;

  if (v5 != separatedHeaderContentViewControllerContainerView)
  {
    [(UIView *)self->_separatedHeaderContentViewControllerContainerView addSubview:v4];
    v16 = MEMORY[0x1E69977A0];
    v20 = [v4 leftAnchor];
    v19 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView leftAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v21[0] = v18;
    v17 = [v4 rightAnchor];
    v7 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView rightAnchor];
    v8 = [v17 constraintEqualToAnchor:v7];
    v21[1] = v8;
    v9 = [v4 topAnchor];
    v10 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v21[2] = v11;
    v12 = [v4 bottomAnchor];
    v13 = [(UIView *)self->_separatedHeaderContentViewControllerContainerView bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v21[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
    [v16 activateConstraints:v15];
  }
}

- (void)_removeHeaderContentViewControllerViewFromHierarchy
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];
  v2 = [v3 view];
  [v2 removeFromSuperview];
}

- (void)_removeContentViewControllerViewFromHierarchy
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewLeftConstraint:0];
  [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewRightConstraint:0];
  [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewTopConstraint:0];

  [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerViewBottomConstraint:0];
}

- (void)_removeSeparatedHeaderContentViewControllerFromHierarchy
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self separatedHeaderContentViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  [(_UIAlertControllerPhoneTVMacView *)self setSeparatedHeaderContentViewControllerContainerViewWidthConstraint:0];

  [(_UIAlertControllerPhoneTVMacView *)self setSeparatedHeaderContentViewControllerContainerViewBottomConstraint:0];
}

- (void)_sizeOfHeaderContentViewControllerChanged
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];

  v4 = [(_UIAlertControllerPhoneTVMacView *)self headerContentViewController];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  v10 = v8 > 0.0 && v3 != 0;
  headerContentViewControllerPreferredWidthConstraint = self->_headerContentViewControllerPreferredWidthConstraint;
  if (v3 && v6 > 0.0)
  {
    if (headerContentViewControllerPreferredWidthConstraint)
    {
      [(NSLayoutConstraint *)headerContentViewControllerPreferredWidthConstraint setConstant:v6];
    }

    else
    {
      v13 = [(UIView *)self->_headerContentViewControllerContainerView widthAnchor];
      v14 = [v13 constraintEqualToConstant:v6];
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
      v19 = [(UIView *)self->_headerContentViewControllerContainerView heightAnchor];
      v20 = [v19 constraintEqualToConstant:v8];
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

  v23 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __77___UIAlertControllerPhoneTVMacView__sizeOfHeaderContentViewControllerChanged__block_invoke;
  v24[3] = &unk_1E70F3590;
  v24[4] = self;
  [v23 _headerContentViewControllerWillTransitionToSize:v24 withAnimations:{v6, v8}];
}

- (void)_sizeOfContentViewControllerChanged
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self contentViewController];

  [(_UIAlertControllerPhoneTVMacView *)self _contentViewControllerSize];
  v6 = v5;
  if (v4 == 0.0)
  {
    goto LABEL_5;
  }

  v7 = v4;
  v8 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  if (![v8 _resolvedStyle])
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
  if (!v3)
  {
    v11 = 751.0;
  }

  v12 = 100.0;
  if (!v3)
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

  v14 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewWidthConstraint];
  v15 = v14;
  if (v14)
  {
    v14 = [objc_msgSend(v14 "secondItem")];
  }

  v16 = v14;

  if (v16 != v10)
  {
    contentView = self->_contentView;
    v18 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewWidthConstraint];
    [(UIView *)contentView removeConstraint:v18];

    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerContainerViewWidthConstraint:0];
  }

  v19 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewWidthConstraint];

  if (!v19)
  {
    v20 = [(UIView *)self->_contentViewControllerContainerView widthAnchor];
    v21 = [(UIView *)v10 widthAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:v7];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerContainerViewWidthConstraint:v22];

    v23 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewWidthConstraint];
    LODWORD(v24) = 1132068864;
    [v23 setPriority:v24];

    v25 = self->_contentView;
    v26 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewWidthConstraint];
    [(UIView *)v25 addConstraint:v26];
  }

  v27 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewHeightConstraint];

  if (!v27)
  {
    v28 = [(UIView *)self->_contentViewControllerContainerView heightAnchor];
    v29 = [v28 constraintEqualToConstant:v6];
    [(_UIAlertControllerPhoneTVMacView *)self setContentViewControllerContainerViewHeightConstraint:v29];

    v30 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewHeightConstraint];
    *&v31 = v13;
    [v30 setPriority:v31];

    v32 = self->_contentView;
    v33 = [(_UIAlertControllerPhoneTVMacView *)self contentViewControllerContainerViewHeightConstraint];
    [(UIView *)v32 addConstraint:v33];
  }

  v34 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __71___UIAlertControllerPhoneTVMacView__sizeOfContentViewControllerChanged__block_invoke;
  v35[3] = &unk_1E70F6848;
  v35[4] = self;
  *&v35[5] = v7;
  *&v35[6] = v6;
  [v34 _contentViewControllerWillTransitionToSize:v35 withAnimations:{v7, v6}];
}

- (void)_layoutAndPositionInParentIfNeeded
{
  ++self->_layoutRequiresPositionUpdateCount;
  [(UIView *)self layoutIfNeeded];
  --self->_layoutRequiresPositionUpdateCount;
}

- (void)_applyISEngineLayoutValuesToBoundsOnly:(BOOL)a3
{
  *&a3 = self->_layoutRequiresPositionUpdateCount < 1 && a3;
  v3.receiver = self;
  v3.super_class = _UIAlertControllerPhoneTVMacView;
  [(UIView *)&v3 _applyISEngineLayoutValuesToBoundsOnly:a3];
}

- (void)_sizeOfTextFieldViewControllerChanged
{
  textFieldViewControllerContainerViewHeightConstraint = self->_textFieldViewControllerContainerViewHeightConstraint;
  v4 = [(_UIAlertControllerPhoneTVMacView *)self _textFieldViewController];
  [v4 preferredContentSize];
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
  v28 = self;
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
        v12 = [v11 action];
        v13 = [v12 _descriptiveText];

        if (v13)
        {
          [v11 currentDescriptiveLabelTextWidth];
          if (v14 > v9)
          {
            v9 = v14;
          }
        }

        v15 = [v11 action];
        v16 = [v15 title];
        if (v16)
        {
          v17 = v16;
          v18 = [v11 action];
          v19 = [v18 _descriptiveText];

          if (v19)
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
  v21 = v28;
  v22 = *(&v28->super.super.super.super.isa + v27);
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

        [*(*(&v29 + 1) + 8 * j) applyMetrics:{v3, v27, v28, v29}];
      }

      v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v24);
  }

  [(_UIAlertControllerPhoneTVMacView *)v21 setActionViewMetrics:v3];
}

- (void)_updateTextAlignmentAfterLayout
{
  v3 = [(UIView *)self->_titleLabel layer];
  if (([v3 hasBeenCommitted] & 1) == 0)
  {

    goto LABEL_5;
  }

  v4 = [(UIView *)self->_messageLabel layer];
  v5 = [v4 hasBeenCommitted];

  if ((v5 & 1) == 0)
  {
LABEL_5:
    [(UIView *)self layoutIfNeeded];
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasMessage])
  {
    v6 = [(UILabel *)self->_messageLabel _measuredNumberOfLines];
  }

  else
  {
    v6 = 0;
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasTitle])
  {
    v7 = [(UILabel *)self->_titleLabel _measuredNumberOfLines];
  }

  else
  {
    v7 = 0;
  }

  if ((v7 <= 0 || v6 <= 0) && v6 <= 1 && v7 <= 1)
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

  v3 = [(_UIAlertControllerPhoneTVMacView *)self actionViewMetrics];
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

        [*(*(&v9 + 1) + 8 * v8++) applyMetrics:{v3, v9}];
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
    v25 = [(UIView *)self superview];
    if (v25)
    {
      v3 = [(_UIAlertControllerPhoneTVMacView *)self centerXConstraint];
      [v25 removeConstraint:v3];

      v4 = [(_UIAlertControllerPhoneTVMacView *)self centerYConstraint];
      [v25 removeConstraint:v4];

      v5 = [(_UIAlertControllerPhoneTVMacView *)self widthConstraint];
      [v25 removeConstraint:v5];

      v6 = [(_UIAlertControllerPhoneTVMacView *)self heightConstraint];
      [v25 removeConstraint:v6];

      [(_UIAlertControllerPhoneTVMacView *)self setCenterXConstraint:0];
      [(_UIAlertControllerPhoneTVMacView *)self setCenterYConstraint:0];
      [(_UIAlertControllerPhoneTVMacView *)self setWidthConstraint:0];
      [(_UIAlertControllerPhoneTVMacView *)self setHeightConstraint:0];
      v7 = [(_UIAlertControllerPhoneTVMacView *)self alertController];
      v8 = [v7 _shouldSizeToFillSuperview];

      if (v8)
      {
        v9 = [(UIView *)self centerXAnchor];
        v10 = [v25 centerXAnchor];
        v11 = [v9 constraintEqualToAnchor:v10];
        [(_UIAlertControllerPhoneTVMacView *)self setCenterXConstraint:v11];

        v12 = [(UIView *)self centerYAnchor];
        v13 = [v25 centerYAnchor];
        v14 = [v12 constraintEqualToAnchor:v13];
        [(_UIAlertControllerPhoneTVMacView *)self setCenterYConstraint:v14];

        v15 = [(UIView *)self widthAnchor];
        v16 = [v25 widthAnchor];
        v17 = [v15 constraintEqualToAnchor:v16];
        [(_UIAlertControllerPhoneTVMacView *)self setWidthConstraint:v17];

        v18 = [(UIView *)self heightAnchor];
        v19 = [v25 heightAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        [(_UIAlertControllerPhoneTVMacView *)self setHeightConstraint:v20];

        v21 = [(_UIAlertControllerPhoneTVMacView *)self centerXConstraint];
        [v25 addConstraint:v21];

        v22 = [(_UIAlertControllerPhoneTVMacView *)self centerYConstraint];
        [v25 addConstraint:v22];

        v23 = [(_UIAlertControllerPhoneTVMacView *)self widthConstraint];
        [v25 addConstraint:v23];

        v24 = [(_UIAlertControllerPhoneTVMacView *)self heightConstraint];
        [v25 addConstraint:v24];
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

- (void)_willMoveToWindow:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIAlertControllerPhoneTVMacView;
  [(UIView *)&v7 _willMoveToWindow:v4];
  if (v4)
  {
    v5 = [v4 windowScene];
    _UIFocusBehaviorSetOverrideFocusSystemEnabled(1, v5, self);
    _UIGameControllerNotifyRelevantSystemUIWillShow(v5, self);
  }

  else
  {
    v5 = [(UIView *)self _window];
    v6 = [v5 windowScene];
    _UIFocusBehaviorSetOverrideFocusSystemEnabled(0, v6, self);
  }
}

- (void)didMoveToWindow
{
  v3 = [(UIView *)self window];

  if (v3)
  {
    v4 = [(UIView *)self window];
    v5 = [(_UIAlertControllerPhoneTVMacView *)self _visualStyle];
    [v5 setWindow:v4];

    [(_UIAlertControllerPhoneTVMacView *)self _updateContentView];
    [(_UIAlertControllerPhoneTVMacView *)self _updateActionViewHeight];

    [(_UIAlertControllerPhoneTVMacView *)self _actionLayoutDirectionChanged];
  }
}

- (void)_prepareForWindowDealloc
{
  v3 = [(UIView *)self _window];
  v4 = [v3 windowScene];
  _UIFocusBehaviorSetOverrideFocusSystemEnabled(0, v4, self);

  v5.receiver = self;
  v5.super_class = _UIAlertControllerPhoneTVMacView;
  [(UIView *)&v5 _prepareForWindowDealloc];
}

- (void)_prepareForWindowHostingSceneRemoval
{
  v3 = [(UIView *)self _window];
  v4 = [v3 windowScene];
  _UIFocusBehaviorSetOverrideFocusSystemEnabled(0, v4, self);

  v5.receiver = self;
  v5.super_class = _UIAlertControllerPhoneTVMacView;
  [(UIView *)&v5 _prepareForWindowHostingSceneRemoval];
}

- (void)_disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_UIAlertControllerPhoneTVMacView *)self shouldHaveBackdropView];
    v6 = [(UIView *)self layer];
    v7 = [v6 allowsGroupOpacity];

    if (v5)
    {
      v8 = [(UIView *)self layer];
      [v8 setAllowsGroupOpacity:0];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __104___UIAlertControllerPhoneTVMacView__disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator___block_invoke;
    v9[3] = &unk_1E71071A0;
    v10 = v5;
    v9[4] = self;
    v11 = v7;
    [v4 animateAlongsideTransition:0 completion:v9];
  }
}

- (void)configureForPresentAlongsideTransitionCoordinator:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86___UIAlertControllerPhoneTVMacView_configureForPresentAlongsideTransitionCoordinator___block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  v4 = a3;
  [UIView performWithoutAnimation:v5];
  [(_UIAlertControllerPhoneTVMacView *)self _disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator:v4];
  [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView configureForPresentAlongsideTransitionCoordinator:v4];
}

- (void)configureForDismissAlongsideTransitionCoordinator:(id)a3
{
  v4 = a3;
  [(_UIAlertControllerPhoneTVMacView *)self _disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator:v4];
  [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView configureForDismissAlongsideTransitionCoordinator:v4];
}

- (id)preferredFocusedView
{
  v3 = [(_UIAlertControllerPhoneTVMacView *)self textFields];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(_UIAlertControllerPhoneTVMacView *)self _textFieldViewController];
    v6 = [v5 preferredFocusedView];

    goto LABEL_9;
  }

  if ([(_UIAlertControllerPhoneTVMacView *)self _hasDiscreteCancelAction])
  {
    discreteCancelActionGroupView = self->_discreteCancelActionGroupView;
  }

  else
  {
    v8 = [(UIInterfaceActionGroupView *)self->_mainInterfaceActionsGroupView actionGroup];
    v9 = [v8 actions];
    v10 = [v9 count];

    if (!v10)
    {
      v13.receiver = self;
      v13.super_class = _UIAlertControllerPhoneTVMacView;
      v11 = [(UIView *)&v13 preferredFocusedView];
      goto LABEL_8;
    }

    discreteCancelActionGroupView = self->_mainInterfaceActionsGroupView;
  }

  v11 = discreteCancelActionGroupView;
LABEL_8:
  v6 = v11;
LABEL_9:

  return v6;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = [a3 nextFocusedView];
  LOBYTE(self) = [(UIView *)self containsView:v4];

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