@interface UISearchBar
+ (void)_initializeForIdiom:(int64_t)a3;
- (BOOL)_clearButtonActsAsCancel;
- (BOOL)_disableAutomaticKeyboardUI;
- (BOOL)_enableAutomaticKeyboardPressDone;
- (BOOL)_hasDarkUIAppearance;
- (BOOL)_ownsInputAccessoryView;
- (BOOL)_searchBarTextFieldShouldBeginEditing;
- (BOOL)_searchBarTextFieldShouldChangeCharactersInRanges:(id)a3 replacementString:(id)a4;
- (BOOL)_searchBarTextFieldShouldClear;
- (BOOL)_searchBarTextFieldShouldEndEditing;
- (BOOL)_searchBarTextFieldShouldScrollToVisibleWhenBecomingFirstResponder;
- (BOOL)_shouldCombineLandscapeBars;
- (BOOL)_usesLegacyVisualProvider;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canResignFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)isTranslucent;
- (BOOL)resignFirstResponder;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (Class)_classForSearchTextField;
- (NSDictionary)scopeBarButtonTitleTextAttributesForState:(UIControlState)state;
- (NSString)description;
- (NSString)placeholder;
- (NSString)text;
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
- (UIEdgeInsets)_effectiveContentInset;
- (UIEdgeInsets)_scopeBarInsets;
- (UIEdgeInsets)contentInset;
- (UIImage)backgroundImage;
- (UIImage)backgroundImageForBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics;
- (UIImage)scopeBarButtonBackgroundImageForState:(UIControlState)state;
- (UIImage)scopeBarButtonDividerImageForLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState;
- (UIOffset)positionAdjustmentForSearchBarIcon:(UISearchBarIcon)icon;
- (UIOffset)searchFieldBackgroundPositionAdjustment;
- (UIOffset)searchTextPositionAdjustment;
- (UISearchBar)initWithCoder:(NSCoder *)coder;
- (UISearchBar)initWithFrame:(CGRect)frame;
- (UISearchBarTextField)_searchBarTextField;
- (UITextInputAssistantItem)inputAssistantItem;
- (UIView)inputAccessoryView;
- (_UISearchBarSearchContainerLayoutCustomizationDelegate)_searchFieldContainerLayoutCustomizationDelegate;
- (double)_additionalPaddingForCancelButtonAtLeadingEdge;
- (double)_additionalPaddingForSearchFieldAtLeadingEdge;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6;
- (double)_defaultHeight;
- (double)_widthForButtonBarItemLayout;
- (id)_cancelButton;
- (id)_cancelButtonText;
- (id)_containingNavigationPalette;
- (id)_makeShadowView;
- (id)_presentationBackgroundBlurEffectForTraitCollection:(id)a3;
- (id)_searchField;
- (id)_selectedTokens;
- (id)_tokens;
- (id)_traitCollectionOverridesForNavigationBarTraitCollection:(id)a3;
- (id)_uiktest_placeholderLabelColor;
- (id)_viewForChildViews;
- (id)delegate;
- (id)focusGroupIdentifier;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)keyCommands;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (id)textInputTraits;
- (int64_t)_expectedInterfaceOrientation;
- (int64_t)_textInputSource;
- (uint64_t)_allowFlexibleWidth;
- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5;
- (void)_animateTransitionToSearchLayoutState:(int64_t)a3;
- (void)_bookmarkButtonPressed;
- (void)_cancelOperation:(id)a3;
- (void)_cancelTransitionToSearchLayoutState:(int64_t)a3;
- (void)_commonInit;
- (void)_completeTransitionToSearchLayoutState:(int64_t)a3;
- (void)_containerSafeAreaInsetsDidChange:(id)a3;
- (void)_delegateChangedForSearchField:(id)a3;
- (void)_deleteButtonPressed;
- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_dismissScopeBarIfNecessary;
- (void)_driveTransitionToSearchLayoutState:(int64_t)a3;
- (void)_freezeForAnimatedTransitionToSearchLayoutState:(int64_t)a3;
- (void)_growToSearchFieldIfNecessary;
- (void)_identifyBarContainer;
- (void)_identifyBarContainerIsFloating;
- (void)_insertToken:(id)a3 atIndex:(unint64_t)a4;
- (void)_navigationBarSlideTransitionDidEnd;
- (void)_navigationBarSlideTransitionWillBegin;
- (void)_performCancelAction;
- (void)_performNavigationBarTransition:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_prepareForTransitionToSearchLayoutState:(int64_t)a3;
- (void)_presentScopeBarIfNecessary;
- (void)_removeTokenAtIndex:(unint64_t)a3;
- (void)_replaceSearchTextWithToken:(id)a3;
- (void)_resetIfNecessaryForNavigationBarHosting:(BOOL)a3;
- (void)_resultsListButtonPressed;
- (void)_scopeChanged:(id)a3;
- (void)_scopeIndexChanged:(int64_t)a3;
- (void)_searchButtonAction:(id)a3;
- (void)_searchFieldBeginEditing;
- (void)_searchFieldEndEditing;
- (void)_searchFieldReturnPressed;
- (void)_searchFieldTextChanged:(BOOL)a3;
- (void)_selectionChangedForSearchField:(id)a3;
- (void)_setAdditionalPaddingForCancelButtonAtLeadingEdge:(double)a3;
- (void)_setAdditionalPaddingForSearchFieldAtLeadingEdge:(double)a3;
- (void)_setClassForSearchTextField:(Class)a3;
- (void)_setClipsToBounds:(BOOL)a3;
- (void)_setDataSource:(id)a3 navigationItem:(id)a4 titleLocation:(int64_t)a5;
- (void)_setDisableFocus:(BOOL)a3;
- (void)_setForceLegacyVisual:(BOOL)a3;
- (void)_setHostedByNavigationBar:(BOOL)a3;
- (void)_setHostedInlineByNavigationBar:(BOOL)a3;
- (void)_setHostedInlineByToolbar:(BOOL)a3;
- (void)_setRequiresLegacyVisualProvider;
- (void)_setScopeBarHidden:(BOOL)a3;
- (void)_setScopeBarPosition:(unint64_t)a3;
- (void)_setSearchController:(id)a3;
- (void)_setSearchFieldContainerLayoutCustomizationDelegate:(id)a3;
- (void)_setTokenBackgroundColor:(id)a3;
- (void)_setUpVisualProvider;
- (void)_shrinkToButtonIfNecessary;
- (void)_textDidEndEditingInSearchField:(id)a3;
- (void)_updateForNewText:(id)a3 inSearchField:(id)a4;
- (void)_updateInsetsForTableView:(id)a3;
- (void)bringSubviewToFront:(id)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)insertTextSuggestion:(id)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)reloadInputViews;
- (void)safeAreaInsetsDidChange;
- (void)sendSubviewToBack:(id)a3;
- (void)setBackgroundImage:(UIImage *)backgroundImage forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics;
- (void)setBackgroundImage:(id)a3 forBarMetrics:(int64_t)a4;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setDelegate:(id)delegate;
- (void)setFocusGroupIdentifier:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setKeyboardAppearance:(int64_t)a3;
- (void)setNeedsLayout;
- (void)setPlaceholder:(NSString *)placeholder;
- (void)setPositionAdjustment:(UIOffset)adjustment forSearchBarIcon:(UISearchBarIcon)icon;
- (void)setScopeBarButtonBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state;
- (void)setScopeBarButtonDividerImage:(UIImage *)dividerImage forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState;
- (void)setScopeBarButtonTitleTextAttributes:(NSDictionary *)attributes forState:(UIControlState)state;
- (void)setSearchTextPositionAdjustment:(UIOffset)searchTextPositionAdjustment;
- (void)setSelectedScopeButtonIndex:(NSInteger)selectedScopeButtonIndex;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setText:(NSString *)text;
- (void)setTintColor:(UIColor *)tintColor;
- (void)setTranslucent:(BOOL)translucent;
- (void)set_cancelButtonText:(id)a3;
- (void)takeTraitsFrom:(id)a3;
- (void)tappedSearchBar:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation UISearchBar

- (void)_commonInit
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_tappedSearchBar_];
  tapToActivateGestureRecognizer = self->_tapToActivateGestureRecognizer;
  self->_tapToActivateGestureRecognizer = v3;

  [(UIView *)self addGestureRecognizer:self->_tapToActivateGestureRecognizer];
  [(UISearchBar *)self setEnablesReturnKeyAutomatically:1];
  [(UISearchBar *)self setReturnKeyType:6];
  [(UISearchBar *)self setAutocorrectionType:1];
  [(UISearchBar *)self _setUpVisualProvider];
  if ([(UISearchBar *)self _clearButtonActsAsCancel])
  {
    v5 = [(UISearchBar *)self _searchBarTextField];
    [v5 setBecomesFirstResponderOnClearButtonTap:0];
  }

  [(UIView *)self _setSafeAreaCornerAdaptation:3];
}

- (void)_setUpVisualProvider
{
  if (!self->_visualProvider)
  {
    if (_searchBarShouldSeparateLayouts())
    {
      v3 = objc_opt_class();
    }

    else
    {
      v3 = _UISearchBarVisualProviderLegacy;
    }

    v4 = [[v3 alloc] initWithDelegate:self];
    visualProvider = self->_visualProvider;
    self->_visualProvider = v4;

    v6 = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)v6 prepare];
  }
}

- (NSString)text
{
  v2 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  v3 = v2;
  v4 = &stru_1EFB14550;
  if (v2)
  {
    v5 = [v2 text];
    if (v5)
    {
      v4 = v5;
    }
  }

  return v4;
}

- (Class)_classForSearchTextField
{
  classForSearchTextField = self->_classForSearchTextField;
  if (classForSearchTextField)
  {
  }

  else
  {
    classForSearchTextField = objc_opt_class();
  }

  return classForSearchTextField;
}

- (id)_viewForChildViews
{
  v2 = self;
  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchBarClippingView];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (id)textInputTraits
{
  textInputTraits = self->_textInputTraits;
  if (!textInputTraits)
  {
    v4 = objc_alloc_init(UITextInputTraits);
    v5 = self->_textInputTraits;
    self->_textInputTraits = v4;

    [(UITextInputTraits *)self->_textInputTraits setIsSingleLineDocument:1];
    textInputTraits = self->_textInputTraits;
  }

  return textInputTraits;
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = UISearchBar;
  [(UIView *)&v3 setNeedsLayout];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider invalidateLayout];
}

- (UIEdgeInsets)_concreteDefaultLayoutMargins
{
  if (!_UISolariumEnabled() || (-[UIView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 userInterfaceIdiom], v3, v5 = 0.0, v6 = 0.0, v7 = 0.0, v8 = 0.0, v4 != 5))
  {
    v9.receiver = self;
    v9.super_class = UISearchBar;
    [(UIView *)&v9 _concreteDefaultLayoutMargins];
  }

  result.right = v8;
  result.bottom = v7;
  result.left = v5;
  result.top = v6;
  return result;
}

- (int64_t)_expectedInterfaceOrientation
{
  v3 = [(UIView *)self window];
  if (!v3)
  {
    searchController = self->__searchController;
    if (searchController)
    {
      v4 = [(UIViewController *)searchController _window];
      if (v4)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 1;
    goto LABEL_11;
  }

  v4 = v3;
LABEL_3:
  v5 = [v4 _windowInterfaceOrientation];
  if (!v5)
  {
    v5 = [UIApp _sceneInterfaceOrientationFromWindow:v4];
  }

  v6 = v5;
LABEL_11:

  return v6;
}

- (BOOL)_clearButtonActsAsCancel
{
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider usesClearForCancel])
  {
    return 1;
  }

  v4 = [(UIView *)self traitCollection];
  v3 = [v4 userInterfaceIdiom] == 6;

  return v3;
}

- (UISearchBarTextField)_searchBarTextField
{
  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  if (!self->_didAddScribbleInteraction)
  {
    self->_didAddScribbleInteraction = 1;
    v4 = [[UIScribbleInteraction alloc] initWithDelegate:self];
    [(UIScribbleInteraction *)v4 _setDefaultSystemInteraction:1];
    [v3 addInteraction:v4];
  }

  return v3;
}

- (BOOL)_usesLegacyVisualProvider
{
  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider visualProviderType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(_UISearchBarVisualProviderBase *)self->_visualProvider visualProviderType]== 3;
  }

  return v3;
}

- (uint64_t)_allowFlexibleWidth
{
  if (result)
  {
    v1 = result;
    if (!_UISolariumEnabled())
    {
      return 1;
    }

    if (![v1 _isHostedInlineByNavigationBar])
    {
      return 1;
    }

    result = [v1 _navigationBarWantsFlexibleInlineSearch];
    if (result)
    {
      return 1;
    }
  }

  return result;
}

- (void)_identifyBarContainer
{
  [(UISearchBar *)self _identifyBarContainerIsFloating];
  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedByNavigationBar];
  visualProvider = self->_visualProvider;
  if (v3)
  {
    [(_UISearchBarVisualProviderBase *)visualProvider setInNavigationPalette:0];
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setPlacedInNavigationBar:0];
    v5 = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)v5 setPlacedInToolbar:0];
  }

  else
  {
    v6 = [(_UISearchBarVisualProviderBase *)visualProvider isPlacedInNavigationBar];
    v7 = [(_UISearchBarVisualProviderBase *)self->_visualProvider isPlacedInToolbar];
    objc_opt_class();
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setInNavigationPalette:_containedInViewOfClass(self)];
    if ([(_UISearchBarVisualProviderBase *)self->_visualProvider isInNavigationPalette])
    {
      v8 = 0;
    }

    else
    {
      objc_opt_class();
      v8 = _containedInViewOfClass(self);
    }

    [(_UISearchBarVisualProviderBase *)self->_visualProvider setPlacedInNavigationBar:v8];
    if ([(_UISearchBarVisualProviderBase *)self->_visualProvider isInNavigationPalette]|| [(_UISearchBarVisualProviderBase *)self->_visualProvider isPlacedInNavigationBar])
    {
      v9 = 0;
    }

    else
    {
      objc_opt_class();
      v9 = _containedInViewOfClass(self);
    }

    [(_UISearchBarVisualProviderBase *)self->_visualProvider setPlacedInToolbar:v9];
    if (!v6 && [(_UISearchBarVisualProviderBase *)self->_visualProvider isPlacedInNavigationBar]|| !v7 && [(_UISearchBarVisualProviderBase *)self->_visualProvider isPlacedInToolbar])
    {

      [(UISearchBar *)self setNeedsLayout];
    }
  }
}

- (NSString)placeholder
{
  v2 = [(UISearchBar *)self _searchBarTextField];
  v3 = [v2 placeholder];

  return v3;
}

- (CGSize)intrinsicContentSize
{
  [(_UISearchBarVisualProviderBase *)self->_visualProvider intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)didMoveToSuperview
{
  [(UISearchBar *)self _identifyBarContainer];
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider isInNavigationPalette]|| [(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedByNavigationBar])
  {
    if ([(_UISearchBarVisualProviderBase *)self->_visualProvider isInNavigationPalette])
    {
      [(_UISearchBarVisualProviderBase *)self->_visualProvider updateForDrawsBackgroundInPalette];
    }

    v3 = [(UISearchBar *)self _searchBarTextField];
    [v3 _setAnimatesBackgroundCornerRadius:1];

    if (UISearchBarUsesModernAppearance())
    {
      [(UIView *)self setPreservesSuperviewLayoutMargins:1];
    }

    [(UISearchBar *)self _setMaskActive:0];
  }

  else
  {
    v4 = [(UISearchBar *)self _searchBarTextField];
    [v4 _setAnimatesBackgroundCornerRadius:0];
  }

  [(UISearchBar *)self _updateEffectiveContentInset];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider updateScopeBarBackground];
  v5 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [v5 _searchBarSuperviewChanged];

  [(UISearchController *)self->__searchController _searchBarSuperviewChanged];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (BOOL)isFirstResponder
{
  v2 = [(UISearchBar *)self _searchBarTextField];
  v3 = [v2 isEditing];

  return v3;
}

- (void)didMoveToWindow
{
  v3 = [(UIView *)self window];

  if (v3)
  {
    v4 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
    [v4 _updateSearchBarMaskIfNecessary];
  }
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = UISearchBar;
  [(UIView *)&v3 layoutMarginsDidChange];
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider alwaysUsesLayoutMarginsForHorizontalContentInset]|| [(UISearchBar *)self _containedInNavigationPalette])
  {
    [(UISearchBar *)self _updateEffectiveContentInset];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UISearchBar;
  [(UIView *)&v3 layoutSubviews];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider layoutSubviews];
}

- (void)_setSearchController:(id)a3
{
  v8 = a3;
  if (!v8 && self->__searchController && [(UISearchBar *)self _isHostedByNavigationBar])
  {
    [(UIView *)self removeFromSuperview];
  }

  self->__searchController = v8;
  if (![(UISearchBar *)self _usesLegacyVisualProvider])
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider resetLayoutState];
  }

  searchController = self->__searchController;
  if (searchController)
  {
    v5 = (searchController->_controllerFlags >> 5) & 3;
    if (!v5)
    {
      v6 = dyld_program_sdk_at_least();
      v5 = 2;
      if (!v6)
      {
        v5 = 3;
      }
    }

    v7 = v5 == 2;
  }

  else
  {
    v7 = 0;
  }

  [(_UISearchBarVisualProviderBase *)self->_visualProvider setActiveSearchDeferringScopeBar:v7];
}

+ (void)_initializeForIdiom:(int64_t)a3
{
  if ((_initializeForIdiom__didInitializeForCarPlay & 1) == 0)
  {
    v5 = objc_opt_class();
    if (a3 == 3 && v5 == a1)
    {
      _initializeForIdiom__didInitializeForCarPlay = 1;
      v7 = [UITraitCollection traitCollectionWithUserInterfaceIdiom:3];
      v6 = [(UIView *)UISearchBarTextField appearanceForTraitCollection:v7];
      [v6 setBorderStyle:3];
    }
  }
}

- (void)_setRequiresLegacyVisualProvider
{
  if (![(UISearchBar *)self _usesLegacyVisualProvider])
  {
    v5 = self->_visualProvider;
    v3 = [(_UISearchBarVisualProviderBase *)[_UISearchBarVisualProviderLegacy alloc] initWithDelegate:self];
    [(_UISearchBarVisualProviderLegacy *)v3 prepareFromAbandonedVisualProvider:v5];
    visualProvider = self->_visualProvider;
    self->_visualProvider = &v3->super;
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = UISearchBar;
  [(UIView *)&v6 setSemanticContentAttribute:?];
  v5 = [(UISearchBar *)self _searchBarTextField];
  [v5 setSemanticContentAttribute:a3];
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = UISearchBar;
  v3 = [(UIView *)&v8 description];
  if (dyld_program_sdk_at_least() && os_variant_has_internal_diagnostics())
  {
    if (self->__searchController)
    {
      v5 = [v3 stringByAppendingFormat:@" searchController=%p", self->__searchController];

      v3 = v5;
    }

    v6 = [(UISearchBar *)self _searchBarTextField];
    v7 = [v3 stringByAppendingFormat:@" searchTextField=%p visualProvider=%p", v6, self->_visualProvider];

    v3 = v7;
  }

  return v3;
}

- (UISearchBar)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UISearchBar;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UISearchBar *)v3 _commonInit];
    [(UISearchBar *)v4 setNeedsLayout];
  }

  return v4;
}

- (void)setDelegate:(id)delegate
{
  objc_initWeak(&location, delegate);
  if ([(UISearchBar *)self _usesLegacyVisualProvider])
  {
    v4 = objc_loadWeakRetained(&location);
    objc_storeWeak(&self->_delegate, v4);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    v7 = objc_loadWeakRetained(&location);
    v8 = objc_opt_respondsToSelector();

    v9 = objc_loadWeakRetained(&location);
    objc_storeWeak(&self->_delegate, v9);

    if (v8)
    {
      objc_copyWeak(&to, &location);
      objc_initWeak(&from, self);
      visualProvider = self->_visualProvider;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __27__UISearchBar_setDelegate___block_invoke;
      v11[3] = &unk_1E70F80E0;
      objc_copyWeak(&v12, &to);
      objc_copyWeak(&v13, &from);
      [(_UISearchBarVisualProviderBase *)visualProvider setDelegateSearchFieldFrameManipulationBlock:v11];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&from);
      objc_destroyWeak(&to);
    }

    else if (v6)
    {
      [(_UISearchBarVisualProviderBase *)self->_visualProvider setDelegateSearchFieldFrameManipulationBlock:0];
    }
  }

  objc_destroyWeak(&location);
}

double __27__UISearchBar_setDelegate___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _searchBar:v11 proposedSearchFieldFrame:{a2, a3, a4, a5}];
  v13 = v12;

  return v13;
}

- (void)_setSearchFieldContainerLayoutCustomizationDelegate:(id)a3
{
  objc_initWeak(&location, a3);
  if (![(UISearchBar *)self _usesLegacyVisualProvider])
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchFieldContainerLayoutCustomizationDelegate);
    v5 = objc_loadWeakRetained(&location);

    if (WeakRetained != v5)
    {
      v6 = objc_loadWeakRetained(&location);
      objc_storeWeak(&self->_searchFieldContainerLayoutCustomizationDelegate, v6);

      v7 = objc_loadWeakRetained(&self->_searchFieldContainerLayoutCustomizationDelegate);
      if (v7)
      {
        objc_copyWeak(&to, &location);
        objc_initWeak(&from, self);
        visualProvider = self->_visualProvider;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __67__UISearchBar__setSearchFieldContainerLayoutCustomizationDelegate___block_invoke;
        v9[3] = &unk_1E70F8108;
        objc_copyWeak(&v10, &to);
        objc_copyWeak(&v11, &from);
        [(_UISearchBarVisualProviderBase *)visualProvider setLayoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback:v9];
        objc_destroyWeak(&v11);
        objc_destroyWeak(&v10);
        objc_destroyWeak(&from);
        objc_destroyWeak(&to);
      }

      else
      {
        [(_UISearchBarVisualProviderBase *)self->_visualProvider setLayoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback:0];
      }
    }
  }

  objc_destroyWeak(&location);
}

void __67__UISearchBar__setSearchFieldContainerLayoutCustomizationDelegate___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v20 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _searchBarWillLayoutSubviews:v20 inSearchFieldContainer:v19 searchTextFieldFrame:a3 cancelButtonFrame:{a4, a5, a6, a7, a8, a9, a10}];
}

- (void)_setAdditionalPaddingForCancelButtonAtLeadingEdge:(double)a3
{
  if (![(UISearchBar *)self _usesLegacyVisualProvider])
  {
    visualProvider = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)visualProvider setAdditionalPaddingForCancelButtonAtLeadingEdge:a3];
  }
}

- (double)_additionalPaddingForCancelButtonAtLeadingEdge
{
  if ([(UISearchBar *)self _usesLegacyVisualProvider])
  {
    return 0.0;
  }

  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider additionalPaddingForCancelButtonAtLeadingEdge];
  return result;
}

- (void)_setAdditionalPaddingForSearchFieldAtLeadingEdge:(double)a3
{
  if (![(UISearchBar *)self _usesLegacyVisualProvider])
  {
    visualProvider = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)visualProvider setAdditionalPaddingForSearchFieldAtLeadingEdge:a3];
  }
}

- (double)_additionalPaddingForSearchFieldAtLeadingEdge
{
  if ([(UISearchBar *)self _usesLegacyVisualProvider])
  {
    return 0.0;
  }

  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider additionalPaddingForSearchFieldAtLeadingEdge];
  return result;
}

- (UISearchBar)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v27.receiver = self;
  v27.super_class = UISearchBar;
  v5 = [(UIView *)&v27 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(UISearchBar *)v5 _commonInit];
    v7 = [(NSCoder *)v4 decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v6->_delegate, v7);

    v8 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrompt"];
    v9 = [(NSCoder *)v4 decodeObjectForKey:@"UIText"];
    v10 = [(NSCoder *)v4 decodeObjectForKey:@"UIPlaceholder"];
    visualProvider = v6->_visualProvider;
    v12 = [(NSCoder *)v4 decodeObjectForKey:@"UIBarTintColor"];
    [(_UISearchBarVisualProviderBase *)visualProvider _setBarTintColor:v12];

    [(_UISearchBarVisualProviderBase *)v6->_visualProvider _setBarStyle:0];
    if ([(NSCoder *)v4 containsValueForKey:@"UIBarStyle"])
    {
      [(_UISearchBarVisualProviderBase *)v6->_visualProvider _setBarStyle:[(NSCoder *)v4 decodeIntegerForKey:@"UIBarStyle"]];
    }

    v13 = [(_UISearchBarVisualProviderBase *)v6->_visualProvider searchBarBackground];
    v14 = [(_UISearchBarVisualProviderBase *)v6->_visualProvider effectiveBarTintColor];
    [v13 setBarTintColor:v14];

    [v13 setBarStyle:{-[_UISearchBarVisualProviderBase barStyle](v6->_visualProvider, "barStyle")}];
    v15 = [(NSCoder *)v4 decodeObjectForKey:@"UIBackgroundImage"];
    [(UISearchBar *)v6 setBackgroundImage:v15];

    [(_UISearchBarVisualProviderBase *)v6->_visualProvider _setShowsScopeBar:[(NSCoder *)v4 decodeBoolForKey:@"UIShowsScopeBar"]];
    v16 = [(NSCoder *)v4 decodeObjectForKey:@"UIScopeButtonTitles"];
    [(UISearchBar *)v6 setScopeButtonTitles:v16];

    v17 = [(NSCoder *)v4 decodeObjectForKey:@"UIScopeBarBackgroundImage"];
    [(UISearchBar *)v6 setScopeBarBackgroundImage:v17];

    if ([(NSCoder *)v4 containsValueForKey:@"UIAutoDisableCancelButton"])
    {
      [(_UISearchBarVisualProviderBase *)v6->_visualProvider _setAutoDisableCancelButton:[(NSCoder *)v4 decodeBoolForKey:@"UIAutoDisableCancelButton"]];
    }

    [(_UISearchBarVisualProviderBase *)v6->_visualProvider _setShowsCancelButton:[(NSCoder *)v4 decodeBoolForKey:@"UIShowsCancelButton"]];
    [(_UISearchBarVisualProviderBase *)v6->_visualProvider _setShowsBookmarkButton:[(NSCoder *)v4 decodeBoolForKey:@"UIShowsBookmarkButton"]];
    [(_UISearchBarVisualProviderBase *)v6->_visualProvider _setShowsSearchResultsButton:[(NSCoder *)v4 decodeBoolForKey:@"UIShowSearchResultsButton"]];
    [(_UISearchBarVisualProviderBase *)v6->_visualProvider _setSearchResultsButtonSelected:[(NSCoder *)v4 decodeBoolForKey:@"UISearchResultsButtonSelected"]];
    if ([(NSCoder *)v4 containsValueForKey:@"UICombinesLandscapeBars"])
    {
      v18 = @"UICombinesLandscapeBars";
    }

    else
    {
      v18 = @"UIAllowsInlineScopeBar";
    }

    [(_UISearchBarVisualProviderBase *)v6->_visualProvider setAllowsInlineScopeBar:[(NSCoder *)v4 decodeBoolForKey:v18]];
    if ([(NSCoder *)v4 containsValueForKey:@"UISearchBarTranslucence"])
    {
      [(_UISearchBarVisualProviderBase *)v6->_visualProvider _setBarTranslucence:[(NSCoder *)v4 decodeIntegerForKey:@"UISearchBarTranslucence"]];
    }

    else if ([(NSCoder *)v4 decodeBoolForKey:@"UISearchBarIsTranslucent"])
    {
      [(UISearchBar *)v6 setTranslucent:1];
    }

    v19 = [(NSCoder *)v4 decodeBoolForKey:@"UIHidesBackground"];
    [(_UISearchBarVisualProviderBase *)v6->_visualProvider _setHideBackground:v19];
    v20 = [(_UISearchBarVisualProviderBase *)v6->_visualProvider searchBarBackground];
    [v20 setHidden:v19];

    [(UISearchBar *)v6 setUsesEmbeddedAppearance:[(NSCoder *)v4 decodeBoolForKey:@"UIUsesEmbeddedAppearance"]];
    [(_UISearchBarVisualProviderBase *)v6->_visualProvider updateSearchBarOpacity];
    v21 = [(_UISearchBarVisualProviderBase *)v6->_visualProvider searchField];
    [v21 setText:v9];

    v22 = [(_UISearchBarVisualProviderBase *)v6->_visualProvider searchField];
    [v22 setPlaceholder:v10];

    if ([(_UISearchBarVisualProviderBase *)v6->_visualProvider centerPlaceholder])
    {
      v23 = [(UISearchBar *)v6 textInputTraits];
      [v23 setDeferBecomingResponder:1];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISearchBarStyle"])
    {
      [(UISearchBar *)v6 setSearchBarStyle:[(NSCoder *)v4 decodeIntegerForKey:@"UISearchBarStyle"]];
    }

    if (v8)
    {
      [(_UISearchBarVisualProviderBase *)v6->_visualProvider setUpPromptLabel];
      v24 = [(_UISearchBarVisualProviderBase *)v6->_visualProvider promptLabel];
      [v24 setText:v8];
    }

    if ([(_UISearchBarVisualProviderBase *)v6->_visualProvider showsCancelButton])
    {
      [(_UISearchBarVisualProviderBase *)v6->_visualProvider setUpCancelButtonWithAppearance:0];
    }

    if ([(NSCoder *)v4 decodeBoolForKey:@"UIShowsSeparator"])
    {
      [(UISearchBar *)v6 _setShowsSeparator:1];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIKeyboardType"])
    {
      [(UISearchBar *)v6 setKeyboardType:[(NSCoder *)v4 decodeIntegerForKey:@"UIKeyboardType"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISpellCheckingType"])
    {
      [(UISearchBar *)v6 setSpellCheckingType:[(NSCoder *)v4 decodeIntegerForKey:@"UISpellCheckingType"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIAutocorrectionType"])
    {
      [(UISearchBar *)v6 setAutocorrectionType:[(NSCoder *)v4 decodeIntegerForKey:@"UIAutocorrectionType"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIAutocapitalizationType"])
    {
      [(UISearchBar *)v6 setAutocapitalizationType:[(NSCoder *)v4 decodeIntegerForKey:@"UIAutocapitalizationType"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIKeyboardAppearance"])
    {
      [(UISearchBar *)v6 setKeyboardAppearance:[(NSCoder *)v4 decodeIntegerForKey:@"UIKeyboardAppearance"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIReturnKeyType"])
    {
      [(UISearchBar *)v6 setReturnKeyType:[(NSCoder *)v4 decodeIntegerForKey:@"UIReturnKeyType"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIEnablesReturnKeyAutomatically"])
    {
      [(UISearchBar *)v6 setEnablesReturnKeyAutomatically:[(NSCoder *)v4 decodeBoolForKey:@"UIEnablesReturnKeyAutomatically"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UITextContentType"])
    {
      v25 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UITextContentType"];
      [(UISearchBar *)v6 setTextContentType:v25];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UITextSmartInsertDeleteType"])
    {
      [(UISearchBar *)v6 setSmartInsertDeleteType:[(NSCoder *)v4 decodeIntegerForKey:@"UITextSmartInsertDeleteType"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UITextSmartQuotesType"])
    {
      [(UISearchBar *)v6 setSmartQuotesType:[(NSCoder *)v4 decodeIntegerForKey:@"UITextSmartQuotesType"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UITextSmartDashesType"])
    {
      [(UISearchBar *)v6 setSmartDashesType:[(NSCoder *)v4 decodeIntegerForKey:@"UITextSmartDashesType"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISecureTextEntry"])
    {
      [(UISearchBar *)v6 setSecureTextEntry:[(NSCoder *)v4 decodeBoolForKey:@"UISecureTextEntry"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISearchTextPositionAdjustment"])
    {
      [(NSCoder *)v4 decodeUIOffsetForKey:@"UISearchTextPositionAdjustment"];
      [(UISearchBar *)v6 setSearchTextPositionAdjustment:?];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISearchFieldBackgroundPositionAdjustment"])
    {
      [(NSCoder *)v4 decodeUIOffsetForKey:@"UISearchFieldBackgroundPositionAdjustment"];
      [(UISearchBar *)v6 setSearchFieldBackgroundPositionAdjustment:?];
    }

    if ([(NSCoder *)v4 decodeBoolForKey:@"UISearchBarDisabled"])
    {
      [(_UISearchBarVisualProviderBase *)v6->_visualProvider setEnabled:0];
    }

    [(UISearchBar *)v6 setNeedsLayout];
  }

  return v6;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UISearchBar;
  [(UIView *)&v14 _populateArchivedSubviews:v4];
  v5 = [(_UISearchBarVisualProviderBase *)self->_visualProvider runtimeOnlyViews];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeObject:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = UISearchBar;
  [(UIView *)&v31 encodeWithCoder:v4];
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider barStyle])
  {
    [v4 encodeInteger:-[_UISearchBarVisualProviderBase barStyle](self->_visualProvider forKey:{"barStyle"), @"UIBarStyle"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider showsCancelButton])
  {
    [v4 encodeBool:-[_UISearchBarVisualProviderBase showsCancelButton](self->_visualProvider forKey:{"showsCancelButton"), @"UIShowsCancelButton"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider showsBookmarkButton])
  {
    [v4 encodeBool:-[_UISearchBarVisualProviderBase showsBookmarkButton](self->_visualProvider forKey:{"showsBookmarkButton"), @"UIShowsBookmarkButton"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider showsScopeBar])
  {
    [v4 encodeBool:-[_UISearchBarVisualProviderBase showsScopeBar](self->_visualProvider forKey:{"showsScopeBar"), @"UIShowsScopeBar"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider showsSearchResultsButton])
  {
    [v4 encodeBool:-[_UISearchBarVisualProviderBase showsSearchResultsButton](self->_visualProvider forKey:{"showsSearchResultsButton"), @"UIShowSearchResultsButton"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider isSearchResultsButtonSelected])
  {
    [v4 encodeBool:-[_UISearchBarVisualProviderBase isSearchResultsButtonSelected](self->_visualProvider forKey:{"isSearchResultsButtonSelected"), @"UISearchResultsButtonSelected"}];
  }

  if (![(_UISearchBarVisualProviderBase *)self->_visualProvider autoDisableCancelButton])
  {
    [v4 encodeBool:-[_UISearchBarVisualProviderBase autoDisableCancelButton](self->_visualProvider forKey:{"autoDisableCancelButton"), @"UIAutoDisableCancelButton"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider allowsInlineScopeBar])
  {
    [v4 encodeBool:-[_UISearchBarVisualProviderBase allowsInlineScopeBar](self->_visualProvider forKey:{"allowsInlineScopeBar"), @"UIAllowsInlineScopeBar"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider barTranslucence])
  {
    [v4 encodeInteger:-[_UISearchBarVisualProviderBase barTranslucence](self->_visualProvider forKey:{"barTranslucence"), @"UISearchBarTranslucence"}];
  }

  if (![(_UISearchBarVisualProviderBase *)self->_visualProvider drawsBackground])
  {
    [v4 encodeBool:1 forKey:@"UIHidesBackground"];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider usesEmbeddedAppearance])
  {
    [v4 encodeBool:-[_UISearchBarVisualProviderBase usesEmbeddedAppearance](self->_visualProvider forKey:{"usesEmbeddedAppearance"), @"UIUsesEmbeddedAppearance"}];
  }

  v5 = [(UISearchBar *)self scopeButtonTitles];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(UISearchBar *)self scopeButtonTitles];
    [v4 encodeObject:v7 forKey:@"UIScopeButtonTitles"];
  }

  v8 = [(_UISearchBarVisualProviderBase *)self->_visualProvider separator];

  if (v8)
  {
    [v4 encodeBool:1 forKey:@"UIShowsSeparator"];
  }

  v9 = [(UISearchBar *)self prompt];

  if (v9)
  {
    v10 = [(UISearchBar *)self prompt];
    [v4 encodeObject:v10 forKey:@"UIPrompt"];
  }

  v11 = [(UISearchBar *)self text];

  if (v11)
  {
    v12 = [(UISearchBar *)self text];
    [v4 encodeObject:v12 forKey:@"UIText"];
  }

  v13 = [(UISearchBar *)self placeholder];

  if (v13)
  {
    v14 = [(UISearchBar *)self placeholder];
    [v4 encodeObject:v14 forKey:@"UIPlaceholder"];
  }

  v15 = [(UISearchBar *)self barTintColor];

  if (v15)
  {
    v16 = [(UISearchBar *)self barTintColor];
    [v4 encodeObject:v16 forKey:@"UIBarTintColor"];
  }

  if ([(UISearchBar *)self keyboardType])
  {
    [v4 encodeInteger:-[UISearchBar keyboardType](self forKey:{"keyboardType"), @"UIKeyboardType"}];
  }

  if ([(UISearchBar *)self spellCheckingType])
  {
    [v4 encodeInteger:-[UISearchBar spellCheckingType](self forKey:{"spellCheckingType"), @"UISpellCheckingType"}];
  }

  if ([(UISearchBar *)self autocorrectionType])
  {
    [v4 encodeInteger:-[UISearchBar autocorrectionType](self forKey:{"autocorrectionType"), @"UIAutocorrectionType"}];
  }

  if ([(UISearchBar *)self autocapitalizationType])
  {
    [v4 encodeInteger:-[UISearchBar autocapitalizationType](self forKey:{"autocapitalizationType"), @"UIAutocapitalizationType"}];
  }

  v17 = [(UISearchBar *)self keyboardAppearance];
  if (v17)
  {
    [v4 encodeInteger:v17 forKey:@"UIKeyboardAppearance"];
  }

  v18 = [(UISearchBar *)self returnKeyType];
  if (v18)
  {
    [v4 encodeInteger:v18 forKey:@"UIReturnKeyType"];
  }

  [v4 encodeBool:-[UISearchBar enablesReturnKeyAutomatically](self forKey:{"enablesReturnKeyAutomatically"), @"UIEnablesReturnKeyAutomatically"}];
  [v4 encodeBool:-[UISearchBar isSecureTextEntry](self forKey:{"isSecureTextEntry"), @"UISecureTextEntry"}];
  v19 = [(UISearchBar *)self textContentType];
  if (v19)
  {
    [v4 encodeObject:v19 forKey:@"UITextContentType"];
  }

  v20 = [(UISearchBar *)self smartInsertDeleteType];
  if (v20)
  {
    [v4 encodeInteger:v20 forKey:@"UITextSmartInsertDeleteType"];
  }

  v21 = [(UISearchBar *)self smartQuotesType];
  if (v21)
  {
    [v4 encodeInteger:v21 forKey:@"UITextSmartQuotesType"];
  }

  v22 = [(UISearchBar *)self smartDashesType];
  if (v22)
  {
    [v4 encodeInteger:v22 forKey:@"UITextSmartDashesType"];
  }

  v23 = [(UISearchBar *)self delegate];
  if (v23)
  {
    [v4 encodeConditionalObject:v23 forKey:@"UIDelegate"];
  }

  v24 = [(UISearchBar *)self backgroundImage];
  if (v24)
  {
    [v4 encodeObject:v24 forKey:@"UIBackgroundImage"];
  }

  v25 = [(UISearchBar *)self scopeBarBackgroundImage];

  if (v25)
  {
    [v4 encodeObject:v25 forKey:@"UIScopeBarBackgroundImage"];
  }

  [(UISearchBar *)self searchTextPositionAdjustment];
  if (v27 != 0.0 || v26 != 0.0)
  {
    [v4 encodeUIOffset:@"UISearchTextPositionAdjustment" forKey:?];
  }

  [(UISearchBar *)self searchFieldBackgroundPositionAdjustment];
  if (v29 != 0.0 || v28 != 0.0)
  {
    [v4 encodeUIOffset:@"UISearchFieldBackgroundPositionAdjustment" forKey:?];
  }

  v30 = [(UISearchBar *)self searchBarStyle];
  if (v30)
  {
    [v4 encodeInteger:v30 forKey:@"UISearchBarStyle"];
  }

  if (![(UISearchBar *)self isEnabled])
  {
    [v4 encodeBool:1 forKey:@"UISearchBarDisabled"];
  }
}

- (void)dealloc
{
  [(_UISearchBarVisualProviderBase *)self->_visualProvider teardown];
  v3.receiver = self;
  v3.super_class = UISearchBar;
  [(UIView *)&v3 dealloc];
}

- (id)_searchField
{
  v3 = NSStringFromSelector(a2);
  UIKVCAccessProhibited(v3, @"UISearchBar");

  visualProvider = self->_visualProvider;

  return [(_UISearchBarVisualProviderBase *)visualProvider searchField];
}

- (id)_cancelButton
{
  v3 = NSStringFromSelector(a2);
  UIKVCAccessProhibited(v3, @"UISearchBar");

  visualProvider = self->_visualProvider;

  return [(_UISearchBarVisualProviderBase *)visualProvider cancelButton];
}

- (void)set_cancelButtonText:(id)a3
{
  v6 = a3;
  v5 = NSStringFromSelector(a2);
  UIKVCAccessProhibited(v5, @"UISearchBar");

  [(UISearchBar *)self _setCancelButtonText:v6];
}

- (id)_cancelButtonText
{
  v3 = NSStringFromSelector(a2);
  UIKVCAccessProhibited(v3, @"UISearchBar");

  visualProvider = self->_visualProvider;

  return [(_UISearchBarVisualProviderBase *)visualProvider cancelButtonText];
}

- (id)keyCommands
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(UISearchBar *)self showsCancelButton])
  {
    cancelKeyCommand = self->_cancelKeyCommand;
    if (!cancelKeyCommand)
    {
      v4 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputEscape" modifierFlags:0 action:sel__performCancelAction];
      v5 = self->_cancelKeyCommand;
      self->_cancelKeyCommand = v4;

      cancelKeyCommand = self->_cancelKeyCommand;
    }

    v8[0] = cancelKeyCommand;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_identifyBarContainerIsFloating
{
  v6 = _UISolariumEnabled() && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider isFloating];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setFloating:v6];
  if (v3 != [(_UISearchBarVisualProviderBase *)self->_visualProvider isFloating])
  {

    [(UISearchBar *)self setNeedsLayout];
  }
}

- (id)_containingNavigationPalette
{
  objc_opt_class();

  return _enclosingViewOfClass(self);
}

- (void)willMoveToSuperview:(id)a3
{
  v5 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [v5 _searchBarSuperviewWillChange];

  if (a3)
  {
    if (self->__transplanting)
    {
      self->__transplanting = 0;
    }
  }
}

- (void)setTranslucent:(BOOL)translucent
{
  if (translucent)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(_UISearchBarVisualProviderBase *)self->_visualProvider setBarTranslucence:v3];
}

- (BOOL)isTranslucent
{
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedByNavigationBar]|| [(_UISearchBarVisualProviderBase *)self->_visualProvider isInNavigationPalette]|| ![(_UISearchBarVisualProviderBase *)self->_visualProvider drawsBackground])
  {
    return 1;
  }

  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  if ([v3 displaysSearchBarInNavigationBar])
  {
    v4 = 1;
  }

  else
  {
    v6 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchBarBackground];
    if (v6)
    {
      v7 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchBarBackground];
      v4 = [v7 isTranslucent];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)_setClassForSearchTextField:(Class)a3
{
  v6 = a3;
  if (!a3)
  {
    v6 = objc_opt_class();
  }

  if (v6 != [(UISearchBar *)self _classForSearchTextField])
  {
    if ((_searchBarShouldSeparateLayouts() & 1) == 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"UISearchBar.m" lineNumber:874 description:@"Can't change _classForSearchTextField in old-style UISearchBar"];
    }

    if (([v6 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"UISearchBar.m" lineNumber:875 description:@"_classForSearchTextField must be a subclass of UISearchTextField"];
    }

    v7 = [(UIView *)self window];

    if (v7)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"UISearchBar.m" lineNumber:876 description:@"Can't change _classForSearchTextField when UISearchBar is in a window"];
    }

    objc_storeStrong(&self->_classForSearchTextField, a3);
    v8 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchFieldIfExists];
    [v8 removeFromSuperview];

    [(_UISearchBarVisualProviderBase *)self->_visualProvider setSearchField:0];

    [(UISearchBar *)self setNeedsLayout];
  }
}

- (void)_updateForNewText:(id)a3 inSearchField:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(UISearchBar *)self searchField];
  v8 = [v7 text];
  if (v8)
  {
    v9 = [(UISearchBar *)self searchField];
    v10 = [v9 text];
    v11 = [v10 length] != 0;
  }

  else
  {
    v11 = 0;
  }

  [(UISearchBar *)self _hideOrResetHelperPlaceHolder:v11];
  v12 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [v12 searchBar:self textDidChange:v14];

  v13 = [(_UISearchBarVisualProviderBase *)self->_visualProvider activeSearchFieldInToolbar];

  if (v13 == v6)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider updateTextFromActiveSearchField];
  }

  [(UISearchController *)self->__searchController _searchBar:self textDidChange:v14 programatically:1];
}

- (void)_textDidEndEditingInSearchField:(id)a3
{
  visualProvider = self->_visualProvider;
  v5 = a3;
  v6 = [(_UISearchBarVisualProviderBase *)visualProvider activeSearchFieldInToolbar];

  if (v6 == v5)
  {
    v7 = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)v7 updateTextFromActiveSearchField];
  }
}

- (void)setText:(NSString *)text
{
  v5 = text;
  v4 = [(UISearchBar *)self _searchBarTextField];
  [v4 setText:v5];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UISearchBar *)self _updateForNewText:v5 inSearchField:v4];
  }
}

- (void)setPlaceholder:(NSString *)placeholder
{
  v4 = placeholder;
  v5 = [(UISearchBar *)self _searchBarTextField];
  [v5 setPlaceholder:v4];

  visualProvider = self->_visualProvider;
  v7 = [(_UISearchBarVisualProviderBase *)visualProvider activeSearchFieldInToolbar];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__UISearchBar_setPlaceholder___block_invoke;
  v9[3] = &unk_1E70F8130;
  v10 = v4;
  v8 = v4;
  [(_UISearchBarVisualProviderBase *)visualProvider updateOriginalAndSiblingClonesOfSearchField:v7 updates:v9];
}

- (void)_setHostedByNavigationBar:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedByNavigationBar];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setHostedByNavigationBar:v3];
  [(UISearchBar *)self _identifyBarContainer];
  if (v5 != v3)
  {
    [(UIView *)self bounds];
    [(UISearchBar *)self sizeThatFits:v6, v7];
    if (_UISolariumEnabled())
    {
      if (v3)
      {

        [(UISearchBar *)self _setClipsToBounds:0];
      }
    }
  }
}

- (void)_resetIfNecessaryForNavigationBarHosting:(BOOL)a3
{
  v3 = a3;
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedByNavigationBar]!= a3)
  {
    [(UISearchBar *)self _setReliesOnNavigationBarBackdrop:v3];
    [(UISearchBar *)self _setHostedByNavigationBar:v3];
    if (v3)
    {
      searchController = self->__searchController;
      if (searchController && [(UISearchController *)searchController hidesNavigationBarDuringPresentation])
      {
        if ([(UISearchController *)self->__searchController isActive])
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 2;
      }

      [(UISearchBar *)self _setBarPosition:v6];
      v8 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_SearchBarUsesAutomaticBackdropStyle, @"SearchBarUsesAutomaticBackdropStyle");
      if (byte_1ED48A8F4)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      if (v9)
      {
        v7 = 2005;
      }

      else
      {
        v7 = 2010;
      }
    }

    else
    {
      [(UISearchBar *)self _setHostedInlineByNavigationBar:0];
      [(UISearchBar *)self _setHostedInlineByToolbar:0];
      [(UISearchBar *)self _setBarPosition:2];
      v7 = 0;
    }

    [(UISearchBar *)self _setBackdropStyle:v7];
  }
}

- (void)_setHostedInlineByToolbar:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(UISearchBar *)self _isHostedByNavigationBar];
  v6 = v5;
  if (v3 && !v5)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        searchController = self->__searchController;
        v12 = 138412546;
        v13 = self;
        v14 = 2112;
        v15 = searchController;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Inline hosting of search bar ignored because navigation bar hosting is not enabled. This is a UIKit bug. search bar: %@, searchController: %@", &v12, 0x16u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_setHostedInlineByToolbar____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = self->__searchController;
        v12 = 138412546;
        v13 = self;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Inline hosting of search bar ignored because navigation bar hosting is not enabled. This is a UIKit bug. search bar: %@, searchController: %@", &v12, 0x16u);
      }
    }
  }

  v7 = v6 & v3;
  if (v7 != [(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedInlineByToolbar])
  {
    if (v7)
    {
      [(UISearchBar *)self _setHostedInlineByNavigationBar:0];
    }

    [(_UISearchBarVisualProviderBase *)self->_visualProvider setHostedInlineByToolbar:v7];
  }
}

- (void)_setHostedInlineByNavigationBar:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  if (a3 && ![(UISearchBar *)self _isHostedByNavigationBar])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        searchController = self->__searchController;
        v12 = 138412546;
        v13 = self;
        v14 = 2112;
        v15 = searchController;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Inline hosting of search bar ignored because navigation bar hosting is not enabled. This is a UIKit bug. search bar: %@, searchController: %@", &v12, 0x16u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_setHostedInlineByNavigationBar____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = self->__searchController;
        v12 = 138412546;
        v13 = self;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Inline hosting of search bar ignored because navigation bar hosting is not enabled. This is a UIKit bug. search bar: %@, searchController: %@", &v12, 0x16u);
      }
    }
  }

  v5 = [(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedInlineByNavigationBar];
  v6 = [(UISearchBar *)self _isHostedByNavigationBar]& v3;
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setHostedInlineByNavigationBar:v6];
  if (v5 != v6)
  {
    v7 = self->__searchController;
    if (v6)
    {
      [(UISearchController *)v7 _updateHasPendingSuggestionMenuRefreshFlagForReason:0];
      [(UISearchController *)self->__searchController _updateInlineSearchBarItemGroup];
    }

    else
    {
      [(UISearchController *)v7 _updateHasPendingSuggestionMenuRefreshFlagForReason:1];
    }

    [(UISearchController *)self->__searchController _updateSearchSuggestionsListVisibility];
  }
}

- (double)_widthForButtonBarItemLayout
{
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider providesRestingMeasurementValues])
  {
    v3 = 2;
  }

  else if ([(UISearchBar *)self _layoutState]== 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  [(UISearchBar *)self _idealInlineWidthForLayoutState:v3];
  return result;
}

- (BOOL)_shouldCombineLandscapeBars
{
  visualProvider = self->_visualProvider;
  v3 = [(UISearchBar *)self _expectedInterfaceOrientation];

  return [(_UISearchBarVisualProviderBase *)visualProvider shouldCombineLandscapeBarsForOrientation:v3];
}

- (void)takeTraitsFrom:(id)a3
{
  v4 = a3;
  v5 = [(UISearchBar *)self textInputTraits];
  [v5 takeTraitsFrom:v4];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ([objc_opt_class() instancesRespondToSelector:a3])
  {
    v5 = [(UISearchBar *)self textInputTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UISearchBar;
    v5 = [(UISearchBar *)&v7 forwardingTargetForSelector:a3];
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = UISearchBar;
  if ([(UISearchBar *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UISearchBar *)self textInputTraits];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setKeyboardAppearance:(int64_t)a3
{
  if ([(UISearchBar *)self keyboardAppearance]!= a3)
  {
    v5 = [(UISearchBar *)self textInputTraits];
    [v5 setKeyboardAppearance:a3];
  }
}

- (BOOL)_searchBarTextFieldShouldBeginEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained searchBarShouldBeginEditing:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_searchBarTextFieldShouldEndEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained searchBarShouldEndEditing:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_searchBarTextFieldShouldScrollToVisibleWhenBecomingFirstResponder
{
  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _searchBarShouldScrollToVisible:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_searchBarTextFieldShouldClear
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([(UISearchBar *)self _clearButtonActsAsCancel])
  {
    v4 = [(UISearchBar *)self searchTextField];
    v5 = [v4 _hasContent];

    if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained searchBarShouldClear:self])
    {
      v6 = 0;
      goto LABEL_9;
    }

    [(UISearchBar *)self _performCancelAction];
    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v6 = [WeakRetained searchBarShouldClear:self];
LABEL_9:

  return v6;
}

- (BOOL)_searchBarTextFieldShouldChangeCharactersInRanges:(id)a3 replacementString:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained searchBar:self shouldChangeTextInRanges:v6 replacementText:v7];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = 1;
      goto LABEL_7;
    }

    v10 = [v6 unionRange];
    v9 = [WeakRetained searchBar:self shouldChangeTextInRange:v10 replacementText:{v11, v7}];
  }

  v12 = v9;
LABEL_7:

  return v12;
}

- (void)_setDataSource:(id)a3 navigationItem:(id)a4 titleLocation:(int64_t)a5
{
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setNavBarTitleViewDataSource:a3, a4];
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider setNavBarTitleViewLocation:a5];
}

- (void)_performNavigationBarTransition:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v4 = 0.0;
  if (a4)
  {
    v4 = 1.0;
  }

  [(UIView *)self setAlpha:a3, v4];
}

- (id)_traitCollectionOverridesForNavigationBarTraitCollection:(id)a3
{
  v4 = a3;
  if ([(UISearchBar *)self _effectivelySupportsDynamicType])
  {
    v5 = [v4 preferredContentSizeCategory];
    v6 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_driveTransitionToSearchLayoutState:(int64_t)a3
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider driveTransitionToSearchLayoutState:a3];
}

- (void)_prepareForTransitionToSearchLayoutState:(int64_t)a3
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider prepareForTransitionToSearchLayoutState:a3];
}

- (void)_freezeForAnimatedTransitionToSearchLayoutState:(int64_t)a3
{
  if (a3 == 2)
  {
    _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
    visualProvider = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)visualProvider freezeForAnimatedTransitionToSearchLayoutState:2];
  }
}

- (void)_animateTransitionToSearchLayoutState:(int64_t)a3
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider animateTransitionToSearchLayoutState:a3];
}

- (void)_completeTransitionToSearchLayoutState:(int64_t)a3
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider completeTransitionToSearchLayoutState:a3];
}

- (void)_cancelTransitionToSearchLayoutState:(int64_t)a3
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider cancelTransitionToSearchLayoutState:a3];
}

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = a3;
  if (!_UISolariumEnabled() || ![(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedByNavigationBar])
  {
    v5.receiver = self;
    v5.super_class = UISearchBar;
    [(UIView *)&v5 setClipsToBounds:v3];
  }
}

- (void)_setClipsToBounds:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = UISearchBar;
  [(UIView *)&v3 setClipsToBounds:a3];
}

- (void)_growToSearchFieldIfNecessary
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider growToSearchFieldIfNecessary];
}

- (void)_shrinkToButtonIfNecessary
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider shrinkToButtonIfNecessary];
}

- (void)_searchButtonAction:(id)a3
{
  v4 = [(UISearchBar *)self _searchController];

  if (v4)
  {
    [(UISearchBar *)self _shrinkToButtonIfNecessary];
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setRequiresSearchTextField:1];
    if (_UISolariumEnabled())
    {

      [(UISearchBar *)self _searchFieldBeginEditing];
    }

    else
    {

      [(UISearchBar *)self becomeFirstResponder];
    }
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "searchButtonAction not properly implemented when there's no search controller", buf, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &_searchButtonAction____s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "searchButtonAction not properly implemented when there's no search controller", v7, 2u);
      }
    }

    [(UISearchBar *)self _growToSearchFieldIfNecessary];
  }
}

- (void)_navigationBarSlideTransitionWillBegin
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider navigationBarSlideTransitionWillBegin];
}

- (void)_navigationBarSlideTransitionDidEnd
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider navigationBarSlideTransitionDidEnd];
}

- (double)_defaultHeight
{
  v3 = [(UISearchBar *)self _expectedInterfaceOrientation];

  [(UISearchBar *)self _defaultHeightForOrientation:v3];
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UISearchBar *)self _allowFlexibleWidth];
  v7 = 0.0;
  if (v6)
  {
    v7 = width;
  }

  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider sizeThatFits:v7, height];
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(UISearchBar *)self _allowFlexibleWidth];
  v13 = 0.0;
  if (v10)
  {
    v13 = width;
  }

  v16.receiver = self;
  v16.super_class = UISearchBar;
  *&v11 = a4;
  *&v12 = a5;
  [(UIView *)&v16 systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(UISearchBar *)self _viewForChildViews];
  v11 = v10;
  if (v10 == self || v10 == v9)
  {
    v12.receiver = self;
    v12.super_class = UISearchBar;
    [(UIView *)&v12 _addSubview:v9 positioned:a4 relativeTo:v8];
  }

  else
  {
    [(UISearchBar *)v10 _addSubview:v9 positioned:a4 relativeTo:v8];
  }
}

- (void)bringSubviewToFront:(id)a3
{
  v4 = a3;
  v5 = [(UISearchBar *)self _viewForChildViews];
  v6 = v5;
  if (v5 == self || v5 == v4)
  {
    v7.receiver = self;
    v7.super_class = UISearchBar;
    [(UIView *)&v7 bringSubviewToFront:v4];
  }

  else
  {
    [(UISearchBar *)v5 bringSubviewToFront:v4];
  }
}

- (void)sendSubviewToBack:(id)a3
{
  v4 = a3;
  v5 = [(UISearchBar *)self _viewForChildViews];
  v6 = v5;
  if (v5 == self || v5 == v4)
  {
    v7.receiver = self;
    v7.super_class = UISearchBar;
    [(UIView *)&v7 sendSubviewToBack:v4];
  }

  else
  {
    [(UISearchBar *)v5 sendSubviewToBack:v4];
  }
}

- (id)_makeShadowView
{
  if (dyld_program_sdk_at_least())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"No UISearchDisplayController support methods should run on this version of iOS"];
    v3 = 0;
  }

  else
  {
    v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider makeShadowView];
  }

  return v3;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v12 = 0;
  [(_UISearchBarVisualProviderBase *)self->_visualProvider getOverrideContentInsets:0 overriddenEdges:&v12];
  if (!v12)
  {
    goto LABEL_2;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Setting SPI contentInset after using overrideContentInsets SPI is not allowed. This is an app bug. Use one or the other, not both.", buf, 2u);
    }
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setContentInset____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Setting SPI contentInset after using overrideContentInsets SPI is not allowed. This is an app bug. Use one or the other, not both.", v10, 2u);
    }
  }

  if (!v12)
  {
LABEL_2:
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setMinimumContentInset:top, left, bottom, right];
  }
}

- (UIEdgeInsets)contentInset
{
  [(_UISearchBarVisualProviderBase *)self->_visualProvider minimumContentInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = UISearchBar;
  [(UIView *)&v3 safeAreaInsetsDidChange];
  [(UISearchBar *)self _updateEffectiveContentInset];
}

- (void)_containerSafeAreaInsetsDidChange:(id)a3
{
  v5 = a3;
  if (![(UISearchBar *)self _usesLegacyVisualProvider]&& [(_UISearchBarVisualProviderBase *)self->_visualProvider barPosition]== 3)
  {
    visualProvider = self->_visualProvider;
    [v5 safeAreaInsets];
    [(_UISearchBarVisualProviderBase *)visualProvider setBackgroundExtension:?];
  }
}

- (UIEdgeInsets)_effectiveContentInset
{
  [(_UISearchBarVisualProviderBase *)self->_visualProvider effectiveContentInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)_scopeBarInsets
{
  [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBarInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setSelectedScopeButtonIndex:(NSInteger)selectedScopeButtonIndex
{
  v5 = [(_UISearchBarVisualProviderBase *)self->_visualProvider selectedScope];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setSelectedScope:selectedScopeButtonIndex];
  if (v5 != selectedScopeButtonIndex)
  {
    visualProvider = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)visualProvider updateScopeBarForSelectedScope];
  }
}

- (void)_setScopeBarHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBarContainerView];
  [v5 setHidden:v3];

  v6 = [(UISearchBar *)self _searchController];
  [v6 _searchBarDidUpdateScopeBar:self];
}

- (void)_setScopeBarPosition:(unint64_t)a3
{
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setScopeBarPosition:a3];
  v4 = [(UISearchBar *)self _searchController];
  [v4 _searchBarDidUpdateScopeBar:self];
}

- (void)_presentScopeBarIfNecessary
{
  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeTitles];
  v4 = [v3 count];

  if (v4)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v6 = [(UISearchBar *)self _usesLegacyVisualProvider];
    if (has_internal_diagnostics)
    {
      if (!v6)
      {
        v7 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Legacy search bar path only. This is a UIKit bug.", buf, 2u);
        }
      }
    }

    else if (!v6)
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_presentScopeBarIfNecessary___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Legacy search bar path only. This is a UIKit bug.", v9, 2u);
      }
    }

    [(UISearchBar *)self _setShowsScopeBar:1 animateOpacity:+[UIView _isInAnimationBlockWithAnimationsEnabled]];
  }
}

- (void)_dismissScopeBarIfNecessary
{
  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeTitles];
  v4 = [v3 count];

  if (v4)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v6 = [(UISearchBar *)self _usesLegacyVisualProvider];
    if (has_internal_diagnostics)
    {
      if (!v6)
      {
        v7 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Legacy search bar path only. This is a UIKit bug.", buf, 2u);
        }
      }
    }

    else if (!v6)
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_dismissScopeBarIfNecessary___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Legacy search bar path only. This is a UIKit bug.", v9, 2u);
      }
    }

    [(UISearchBar *)self _setShowsScopeBar:0 animateOpacity:+[UIView _isInAnimationBlockWithAnimationsEnabled]];
  }
}

- (void)_scopeChanged:(id)a3
{
  v4 = [a3 selectedSegmentIndex];

  [(UISearchBar *)self _scopeIndexChanged:v4];
}

- (void)_scopeIndexChanged:(int64_t)a3
{
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider selectedScope]!= a3)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setSelectedScope:a3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained searchBar:self selectedScopeButtonIndexDidChange:a3];
    }

    v5 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
    [v5 searchBar:self selectedScopeButtonIndexDidChange:a3];

    [(UISearchController *)self->__searchController _searchBar:self selectedScopeButtonIndexDidChange:a3];
    if (!self->__searchController)
    {
      v6 = [(UISearchBar *)self _searchBarTextField];
      [(UISearchTextField *)v6 _clearSearchSuggestionsIfNecessary];
    }
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = UISearchBar;
  [(UIView *)&v10 _didMoveFromWindow:v6 toWindow:v7];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      -[UISearchBar _setBarPosition:](self, "_setBarPosition:", [WeakRetained positionForBar:self]);
    }

    if ([(_UISearchBarVisualProviderBase *)self->_visualProvider backgroundLayoutNeedsUpdate])
    {
      [(UISearchBar *)self setNeedsLayout];
    }

    [(UISearchBar *)self _identifyBarContainer];
    [(_UISearchBarVisualProviderBase *)self->_visualProvider updateScopeBarBackground];
    [(UIView *)self invalidateIntrinsicContentSize];
  }

  if (v7 != v6)
  {
    v9 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
    [v9 _updateSearchBarMaskIfNecessary];
  }
}

- (id)preferredFocusEnvironments
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
    if ([v6 canBecomeFocused])
    {
      [v5 addObject:v6];
    }

    if (_UISolariumEnabled())
    {
      v7 = [(UISearchBar *)self cancelButton];
      [v5 addObject:v7];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)preferredFocusedView
{
  v3 = [(UIView *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 3)
  {
    v4 = _UISolariumEnabled();

    if (v4)
    {
      v5 = [(UISearchBar *)self cancelButton];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
LABEL_6:

  return v5;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = UISearchBar;
  [(UIView *)&v17 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [(UIView *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 3)
  {
    v9 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
    v10 = [v6 nextFocusedView];

    v11 = [v9 layer];
    v12 = v11;
    if (v10 == v9)
    {
      [v11 setCornerRadius:6.0];

      v14 = [v9 layer];
      v15 = +[UIColor externalSystemTealColor];
      [v14 setBorderColor:{objc_msgSend(v15, "CGColor")}];

      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
      [v11 setCornerRadius:0.0];

      v14 = [v9 layer];
      [v14 setBorderColor:0];
    }

    v16 = [v9 layer];
    [v16 setBorderWidth:v13];
  }
}

- (void)_setDisableFocus:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  [v4 _setDisableFocus:v3];
}

- (void)setFocusGroupIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UISearchBar *)self _searchBarTextField];
  [v5 setFocusGroupIdentifier:v4];
}

- (id)focusGroupIdentifier
{
  v2 = [(UISearchBar *)self _searchBarTextField];
  v3 = [v2 focusGroupIdentifier];

  return v3;
}

- (void)setTintColor:(UIColor *)tintColor
{
  v3.receiver = self;
  v3.super_class = UISearchBar;
  [(UIView *)&v3 setTintColor:tintColor];
}

- (void)setBackgroundImage:(id)a3 forBarMetrics:(int64_t)a4
{
  v8 = a3;
  v7 = NSStringFromSelector(a2);
  NSLog(&cfstr_NoteUisearchba.isa, v7);

  [(UISearchBar *)self setBackgroundImage:v8 forBarPosition:2 barMetrics:a4];
}

- (void)setBackgroundImage:(UIImage *)backgroundImage forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics
{
  v8 = backgroundImage;
  if (barMetrics == UIBarMetricsCompactPrompt || barMetrics == UIBarMetricsCompact)
  {
    if (byte_1ED49B18A)
    {
      goto LABEL_14;
    }

    byte_1ED49B18A = 1;
    v11 = "UIBarMetricsCompact";
    v12 = "UIBarMetricsCompactPrompt";
    v9 = @"%s customization of %@ for %s or %s is ignored.";
  }

  else
  {
    if (barPosition == 4)
    {
      if (byte_1ED49B18C)
      {
        goto LABEL_14;
      }

      byte_1ED49B18C = 1;
      v10 = "(UIBarPosition)UIBarPositionBottomAttached";
    }

    else
    {
      if (barPosition != UIBarPositionBottom)
      {
        v13 = v8;
        [(_UISearchBarVisualProviderBase *)self->_visualProvider setBackgroundImage:v8 forBarPosition:barPosition barMetrics:barMetrics];
        goto LABEL_13;
      }

      if (byte_1ED49B18B)
      {
        goto LABEL_14;
      }

      byte_1ED49B18B = 1;
      v10 = "UIBarPositionBottom";
    }

    v11 = v10;
    v9 = @"%s customization of %@ for %s is ignored.";
  }

  v13 = v8;
  NSLog(&v9->isa, "UISearchBar", @"background image", v11, v12);
LABEL_13:
  v8 = v13;
LABEL_14:
}

- (UIImage)backgroundImageForBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics
{
  if (barMetrics == UIBarMetricsCompactPrompt || barMetrics == UIBarMetricsCompact)
  {
    if ((byte_1ED49B18D & 1) == 0)
    {
      byte_1ED49B18D = 1;
      NSLog(&cfstr_SCustomization.isa, a2, barPosition, "UISearchBar", @"background image", "UIBarMetricsCompact", "UIBarMetricsCompactPrompt");
    }

    goto LABEL_12;
  }

  if (barPosition == 4)
  {
    if ((byte_1ED49B18F & 1) == 0)
    {
      byte_1ED49B18F = 1;
      v4 = "(UIBarPosition)UIBarPositionBottomAttached";
      goto LABEL_11;
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  if (barPosition == UIBarPositionBottom)
  {
    if ((byte_1ED49B18E & 1) == 0)
    {
      byte_1ED49B18E = 1;
      v4 = "UIBarPositionBottom";
LABEL_11:
      NSLog(&cfstr_SCustomization_0.isa, a2, barPosition, "UISearchBar", @"background image", v4);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v5 = [_UISearchBarVisualProviderBase backgroundImageForBarPosition:"backgroundImageForBarPosition:barMetrics:" barMetrics:?];
LABEL_13:

  return v5;
}

- (UIImage)backgroundImage
{
  v2 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchBarBackground];
  v3 = [v2 backgroundImage];

  return v3;
}

- (void)setScopeBarButtonBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state
{
  v7 = backgroundImage;
  v6 = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  if (v7 | v6)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setUpScopeBar];
    [v6 _setBackgroundImage:v7 forState:state barMetrics:0];
  }
}

- (UIImage)scopeBarButtonBackgroundImageForState:(UIControlState)state
{
  v4 = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  v5 = [v4 backgroundImageForState:state barMetrics:0];

  return v5;
}

- (void)setScopeBarButtonDividerImage:(UIImage *)dividerImage forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState
{
  v9 = dividerImage;
  v8 = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  if (v9 | v8)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setUpScopeBar];
    [v8 _setDividerImage:v9 forLeftSegmentState:leftState rightSegmentState:rightState barMetrics:0];
  }
}

- (UIImage)scopeBarButtonDividerImageForLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState
{
  v6 = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  v7 = [v6 dividerImageForLeftSegmentState:leftState rightSegmentState:rightState barMetrics:0];

  return v7;
}

- (void)setScopeBarButtonTitleTextAttributes:(NSDictionary *)attributes forState:(UIControlState)state
{
  v7 = attributes;
  v6 = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  if (v7 | v6)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setUpScopeBar];
    [v6 _setTitleTextAttributes:v7 forState:state];
  }
}

- (NSDictionary)scopeBarButtonTitleTextAttributesForState:(UIControlState)state
{
  v4 = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  v5 = [v4 titleTextAttributesForState:state];

  return v5;
}

- (UIOffset)searchFieldBackgroundPositionAdjustment
{
  [(_UISearchBarVisualProviderBase *)self->_visualProvider searchFieldBackgroundPositionAdjustment];
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setSearchTextPositionAdjustment:(UIOffset)searchTextPositionAdjustment
{
  vertical = searchTextPositionAdjustment.vertical;
  horizontal = searchTextPositionAdjustment.horizontal;
  v5 = [(UISearchBar *)self _searchBarTextField];
  *v7 = horizontal;
  *&v7[1] = vertical;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{UIOffset=dd}"];
  [v5 _setSearchTextOffetValue:v6];
}

- (UIOffset)searchTextPositionAdjustment
{
  v2 = [(UISearchBar *)self _searchBarTextField];
  v3 = [v2 _searchTextOffsetValue];

  if (v3)
  {
    [v3 UIOffsetValue];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  v8 = v5;
  v9 = v7;
  result.vertical = v9;
  result.horizontal = v8;
  return result;
}

- (void)setPositionAdjustment:(UIOffset)adjustment forSearchBarIcon:(UISearchBarIcon)icon
{
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  v7 = [(UISearchBar *)self _searchBarTextField];
  *v9 = horizontal;
  *&v9[1] = vertical;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIOffset=dd}"];
  [v7 _setOffsetValue:v8 forIcon:icon];
}

- (UIOffset)positionAdjustmentForSearchBarIcon:(UISearchBarIcon)icon
{
  v4 = [(UISearchBar *)self _searchBarTextField];
  v5 = [v4 _offsetValueForIcon:icon];

  if (v5)
  {
    [v5 UIOffsetValue];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = 0.0;
    v9 = 0.0;
  }

  v10 = v7;
  v11 = v9;
  result.vertical = v11;
  result.horizontal = v10;
  return result;
}

- (UIView)inputAccessoryView
{
  inputAccessoryView = self->_inputAccessoryView;
  if (inputAccessoryView)
  {
    v3 = inputAccessoryView;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UISearchBar;
    v3 = [(UIResponder *)&v5 inputAccessoryView];
  }

  return v3;
}

- (BOOL)_ownsInputAccessoryView
{
  if (self->_inputAccessoryView)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = UISearchBar;
  return [(UIResponder *)&v5 _ownsInputAccessoryView];
}

- (UITextInputAssistantItem)inputAssistantItem
{
  v2 = [(UISearchBar *)self searchField];
  v3 = [v2 inputAssistantItem];

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(_UISearchBarVisualProviderBase *)self->_visualProvider isFrozenForDismissalCrossfade])
  {
    [(UIView *)self bounds];
    v9 = v8;
    v11 = v10;
    v12.receiver = self;
    v12.super_class = UISearchBar;
    [(UIView *)&v12 setFrame:x, y, width, height];
    [(_UISearchBarVisualProviderBase *)self->_visualProvider updateIfNecessaryForOldSize:v9, v11];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(_UISearchBarVisualProviderBase *)self->_visualProvider isFrozenForDismissalCrossfade])
  {
    [(UIView *)self bounds];
    v9 = v8;
    v11 = v10;
    v12.receiver = self;
    v12.super_class = UISearchBar;
    [(UIView *)&v12 setBounds:x, y, width, height];
    [(_UISearchBarVisualProviderBase *)self->_visualProvider updateIfNecessaryForOldSize:v9, v11];
  }
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(_UISearchBarVisualProviderBase *)self->_visualProvider isFrozenForDismissalCrossfade])
  {
    v6.receiver = self;
    v6.super_class = UISearchBar;
    [(UIView *)&v6 setCenter:x, y];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UISearchBar;
  [(UIView *)&v15 traitCollectionDidChange:v4];
  v5 = [(UIView *)self traitCollection];
  v6 = [v4 preferredContentSizeCategory];
  v7 = [v5 preferredContentSizeCategory];
  if ([v6 isEqual:v7])
  {
  }

  else
  {
    v8 = [(UISearchBar *)self _effectivelySupportsDynamicType];

    if (v8)
    {
      [(_UISearchBarVisualProviderBase *)self->_visualProvider updateForDynamicType];
      [(UIView *)self invalidateIntrinsicContentSize];
    }
  }

  if (v4)
  {
    _UIRecordTraitUsage(v4, 0x13uLL);
    v9 = v4[16];
    if (v5)
    {
LABEL_7:
      _UIRecordTraitUsage(v5, 0x13uLL);
      v10 = v5[16];
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_8:
  if (v9 != v10)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider updateForSemanticContext];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider usesClearForCancel])
  {
    if (![(UISearchController *)self->__searchController _clearAsCancelButtonVisibilityWhenEmpty])
    {
      v11 = [v4 horizontalSizeClass];
      v12 = [v5 horizontalSizeClass];
      v13 = [v4 _hasSplitViewControllerContextSidebarColumn];
      v14 = [v5 _hasSplitViewControllerContextSidebarColumn];
      if (v11 != v12 || v13 != v14)
      {
        [(_UISearchBarVisualProviderBase *)self->_visualProvider updateShowsClearButtonWhenEmpty];
      }
    }
  }
}

- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5
{
  v6.receiver = self;
  v6.super_class = UISearchBar;
  [(UIView *)&v6 _didChangeFromIdiom:a3 onScreen:a4 traverseHierarchy:a5];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider updatePlaceholderColor];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider updateDictationButton];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider updateRightView];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider updateMagnifyingGlassView];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider applySearchBarStyle];
}

- (id)_presentationBackgroundBlurEffectForTraitCollection:(id)a3
{
  v4 = a3;
  if ([(UISearchBar *)self keyboardAppearance]&& [(UISearchBar *)self keyboardAppearance]!= 10)
  {
    v5 = [(UISearchBar *)self _hasDarkUIAppearance];
  }

  else
  {
    v5 = [v4 userInterfaceStyle] == 2;
  }

  v6 = _UISolariumEnabled();
  v7 = 4002;
  if (v5)
  {
    v7 = 4007;
  }

  v8 = 13;
  if (v5)
  {
    v8 = 18;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [UIBlurEffect effectWithStyle:v9];

  return v10;
}

- (BOOL)_hasDarkUIAppearance
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [(UISearchBar *)self keyboardAppearance];
  result = 0;
  if (v5 > 8)
  {
    if (v5 != 10)
    {
      if (v5 != 9)
      {
        return result;
      }

      return 1;
    }

    return v4 == 2;
  }

  if (!v5)
  {
    return v4 == 2;
  }

  if (v5 == 1)
  {
    return 1;
  }

  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  v12.receiver = self;
  v12.super_class = UISearchBar;
  v5 = [(UIView *)&v12 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = [(_UISearchBarVisualProviderBase *)v4->_visualProvider searchBarClippingView];
  v7 = v6;
  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {

LABEL_8:
    v4 = v5;
    goto LABEL_9;
  }

  v9 = [(_UISearchBarVisualProviderBase *)v4->_visualProvider searchBarClippingView];

  if (v5 != v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = v4;

  return v10;
}

- (void)tappedSearchBar:(id)a3
{
  if (![(UISearchBar *)self isFirstResponder])
  {

    [(UISearchBar *)self becomeFirstResponder];
  }
}

- (void)_updateInsetsForTableView:(id)a3
{
  if (a3)
  {
    [a3 _indexBarExtentFromEdge];
  }

  else
  {
    v4 = 0.0;
  }

  [(_UISearchBarVisualProviderBase *)self->_visualProvider setTableViewIndexWidth:v4];
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider updateEffectiveContentInset];
}

- (id)_uiktest_placeholderLabelColor
{
  v2 = [(UISearchBar *)self _searchBarTextField];
  v3 = [v2 _placeholderLabel];
  v4 = [v3 textColor];

  return v4;
}

- (void)_deleteButtonPressed
{
  v2 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  [v2 deleteBackward];
}

- (void)_performCancelAction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchBarCancelButtonClicked:self];
  }

  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [v3 searchBarCancelButtonClicked:self];

  [(UISearchController *)self->__searchController _searchBarCancelButtonClicked:self];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel__cancelOperation_ == a3)
  {
    v5 = [(_UISearchBarVisualProviderBase *)self->_visualProvider cancelButton];
    v4 = v5 != 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UISearchBar;
    return [UIView canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }

  return v4;
}

- (void)_cancelOperation:(id)a3
{
  v4 = [(_UISearchBarVisualProviderBase *)self->_visualProvider cancelButton];

  if (v4)
  {

    [(UISearchBar *)self _performCancelAction];
  }
}

- (void)_bookmarkButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchBarBookmarkButtonClicked:self];
  }
}

- (void)_resultsListButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchBarResultsListButtonClicked:self];
  }

  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [v3 searchBarResultsListButtonClicked:self];
}

- (void)_searchFieldBeginEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchBarTextDidBeginEditing:self];
  }

  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [v3 searchBarTextDidBeginEditing:self];

  [(UISearchController *)self->__searchController _searchBarTextDidBeginEditing:self];
  v4 = [(_UISearchBarVisualProviderBase *)self->_visualProvider cancelButton];
  [v4 setEnabled:1];
}

- (void)_searchFieldEndEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchBarTextDidEndEditing:self];
  }

  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider autoDisableCancelButton];
  v4 = [(_UISearchBarVisualProviderBase *)self->_visualProvider cancelButton];
  [v4 setEnabled:!v3];
}

- (void)_searchFieldReturnPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchBarSearchButtonClicked:self];
  }

  v3 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [v3 searchBarSearchButtonClicked:self];

  [(UISearchController *)self->__searchController _searchBarSearchButtonClicked:self];
}

- (void)_searchFieldTextChanged:(BOOL)a3
{
  v3 = a3;
  v11 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [v11 searchText];
    [WeakRetained searchBar:self textDidChange:v6];
  }

  v7 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  v8 = [v11 searchText];
  [v7 searchBar:self textDidChange:v8];

  searchController = self->__searchController;
  v10 = [v11 searchText];
  [(UISearchController *)searchController _searchBar:self textDidChange:v10 programatically:v3];
}

- (void)_delegateChangedForSearchField:(id)a3
{
  v4 = a3;
  v5 = [(UISearchBar *)self _searchBarTextField];

  if (v5 == v4)
  {
    visualProvider = self->_visualProvider;
    v7 = [(_UISearchBarVisualProviderBase *)visualProvider activeSearchFieldInToolbar];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__UISearchBar__delegateChangedForSearchField___block_invoke;
    v8[3] = &unk_1E70F8130;
    v9 = v4;
    [(_UISearchBarVisualProviderBase *)visualProvider updateOriginalAndSiblingClonesOfSearchField:v7 updates:v8];
  }
}

void __46__UISearchBar__delegateChangedForSearchField___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 delegate];
  [v3 setDelegate:v4];
}

- (void)_selectionChangedForSearchField:(id)a3
{
  v4 = a3;
  v5 = [(UISearchBar *)self _searchBarTextField];

  if (v5 == v4)
  {
    v6 = [v4 selectionRange];
    v8 = v7;
    visualProvider = self->_visualProvider;
    v10 = [(_UISearchBarVisualProviderBase *)visualProvider activeSearchFieldInToolbar];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__UISearchBar__selectionChangedForSearchField___block_invoke;
    v12[3] = &__block_descriptor_48_e27_v16__0__UISearchTextField_8l;
    v12[4] = v6;
    v12[5] = v8;
    [(_UISearchBarVisualProviderBase *)visualProvider updateOriginalAndSiblingClonesOfSearchField:v10 updates:v12];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained _searchBarSelectionChanged:self];
    }
  }
}

- (void)insertTextSuggestion:(id)a3
{
  v10 = a3;
  v4 = [(UISearchBar *)self _searchBarTextField];
  v5 = [v4 text];

  if ([(UISearchController *)self->__searchController _delegateWantsInsertSearchFieldTextSuggestion])
  {
    [(UISearchController *)self->__searchController _sendDelegateInsertSearchFieldTextSuggestion:v10];
  }

  else
  {
    v6 = [(UISearchBar *)self _searchBarTextField];
    [v6 _defaultInsertTextSuggestion:v10];
  }

  v7 = [(UISearchBar *)self _searchBarTextField];
  v8 = [v7 text];
  v9 = [v5 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    [(UISearchBar *)self _searchFieldTextChanged:1];
  }
}

- (BOOL)_disableAutomaticKeyboardUI
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 3;
}

- (BOOL)_enableAutomaticKeyboardPressDone
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 3;

  return v3;
}

- (void)reloadInputViews
{
  v2 = [(UISearchBar *)self _searchBarTextField];
  [v2 reloadInputViews];
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(UISearchBar *)self _searchBarTextField];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (BOOL)becomeFirstResponder
{
  if (self->__searchController && [(_UISearchBarVisualProviderBase *)self->_visualProvider isIntegratedAsEnabledSearchIconButton]&& [(UISearchBar *)self canBecomeFirstResponder])
  {
    [(UISearchBar *)self _searchButtonAction:0];
    return 1;
  }

  else
  {
    v4 = [(UISearchBar *)self _searchBarTextField];
    v5 = [v4 becomeFirstResponder];

    return v5;
  }
}

- (BOOL)canResignFirstResponder
{
  v2 = [(UISearchBar *)self _searchBarTextField];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(UISearchBar *)self _searchBarTextField];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (int64_t)_textInputSource
{
  v2 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  v3 = [v2 _textInputSource];

  return v3;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UISearchBarSearchContainerLayoutCustomizationDelegate)_searchFieldContainerLayoutCustomizationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchFieldContainerLayoutCustomizationDelegate);

  return WeakRetained;
}

- (void)_setForceLegacyVisual:(BOOL)a3
{
  if (self->_forceLegacyVisual != a3)
  {
    self->_forceLegacyVisual = a3;
    [(_UISearchBarVisualProviderBase *)self->_visualProvider teardown];
    visualProvider = self->_visualProvider;
    self->_visualProvider = 0;

    [(UISearchBar *)self _setUpVisualProvider];
  }
}

- (id)_tokens
{
  v2 = [(UISearchBar *)self searchField];
  v3 = [v2 tokens];

  return v3;
}

- (void)_insertToken:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(UISearchBar *)self searchField];
  [v7 insertToken:v6 atIndex:a4];

  [(UISearchBar *)self _searchFieldTextChanged:1];
}

- (void)_removeTokenAtIndex:(unint64_t)a3
{
  v5 = [(UISearchBar *)self searchField];
  [v5 removeTokenAtIndex:a3];

  [(UISearchBar *)self _searchFieldTextChanged:1];
}

- (void)_replaceSearchTextWithToken:(id)a3
{
  v4 = a3;
  v7 = [(UISearchBar *)self searchField];
  v5 = [v7 textualRange];
  v6 = [v7 tokens];
  [v7 replaceTextualPortionOfRange:v5 withToken:v4 atIndex:{objc_msgSend(v6, "count")}];

  [(UISearchBar *)self _searchFieldTextChanged:1];
}

- (void)_setTokenBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(UISearchBar *)self searchField];
  [v5 setTokenBackgroundColor:v4];
}

- (id)_selectedTokens
{
  v2 = [(UISearchBar *)self searchField];
  v3 = [v2 selectedTextRange];
  v4 = [v2 tokensInRange:v3];

  return v4;
}

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6
{
  result = 0.0;
  if (a6)
  {
    v7.receiver = self;
    v7.super_class = UISearchBar;
    [(UIView *)&v7 _autolayoutSpacingAtEdge:*&a3 forAttribute:a4 inContainer:a5 isGuide:1, 0.0];
  }

  return result;
}

@end