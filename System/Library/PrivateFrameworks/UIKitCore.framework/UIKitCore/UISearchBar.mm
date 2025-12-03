@interface UISearchBar
+ (void)_initializeForIdiom:(int64_t)idiom;
- (BOOL)_clearButtonActsAsCancel;
- (BOOL)_disableAutomaticKeyboardUI;
- (BOOL)_enableAutomaticKeyboardPressDone;
- (BOOL)_hasDarkUIAppearance;
- (BOOL)_ownsInputAccessoryView;
- (BOOL)_searchBarTextFieldShouldBeginEditing;
- (BOOL)_searchBarTextFieldShouldChangeCharactersInRanges:(id)ranges replacementString:(id)string;
- (BOOL)_searchBarTextFieldShouldClear;
- (BOOL)_searchBarTextFieldShouldEndEditing;
- (BOOL)_searchBarTextFieldShouldScrollToVisibleWhenBecomingFirstResponder;
- (BOOL)_shouldCombineLandscapeBars;
- (BOOL)_usesLegacyVisualProvider;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canResignFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)isTranslucent;
- (BOOL)resignFirstResponder;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
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
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide;
- (double)_defaultHeight;
- (double)_widthForButtonBarItemLayout;
- (id)_cancelButton;
- (id)_cancelButtonText;
- (id)_containingNavigationPalette;
- (id)_makeShadowView;
- (id)_presentationBackgroundBlurEffectForTraitCollection:(id)collection;
- (id)_searchField;
- (id)_selectedTokens;
- (id)_tokens;
- (id)_traitCollectionOverridesForNavigationBarTraitCollection:(id)collection;
- (id)_uiktest_placeholderLabelColor;
- (id)_viewForChildViews;
- (id)delegate;
- (id)focusGroupIdentifier;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)keyCommands;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (id)textInputTraits;
- (int64_t)_expectedInterfaceOrientation;
- (int64_t)_textInputSource;
- (uint64_t)_allowFlexibleWidth;
- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to;
- (void)_animateTransitionToSearchLayoutState:(int64_t)state;
- (void)_bookmarkButtonPressed;
- (void)_cancelOperation:(id)operation;
- (void)_cancelTransitionToSearchLayoutState:(int64_t)state;
- (void)_commonInit;
- (void)_completeTransitionToSearchLayoutState:(int64_t)state;
- (void)_containerSafeAreaInsetsDidChange:(id)change;
- (void)_delegateChangedForSearchField:(id)field;
- (void)_deleteButtonPressed;
- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_dismissScopeBarIfNecessary;
- (void)_driveTransitionToSearchLayoutState:(int64_t)state;
- (void)_freezeForAnimatedTransitionToSearchLayoutState:(int64_t)state;
- (void)_growToSearchFieldIfNecessary;
- (void)_identifyBarContainer;
- (void)_identifyBarContainerIsFloating;
- (void)_insertToken:(id)token atIndex:(unint64_t)index;
- (void)_navigationBarSlideTransitionDidEnd;
- (void)_navigationBarSlideTransitionWillBegin;
- (void)_performCancelAction;
- (void)_performNavigationBarTransition:(int64_t)transition willBeDisplayed:(BOOL)displayed;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_prepareForTransitionToSearchLayoutState:(int64_t)state;
- (void)_presentScopeBarIfNecessary;
- (void)_removeTokenAtIndex:(unint64_t)index;
- (void)_replaceSearchTextWithToken:(id)token;
- (void)_resetIfNecessaryForNavigationBarHosting:(BOOL)hosting;
- (void)_resultsListButtonPressed;
- (void)_scopeChanged:(id)changed;
- (void)_scopeIndexChanged:(int64_t)changed;
- (void)_searchButtonAction:(id)action;
- (void)_searchFieldBeginEditing;
- (void)_searchFieldEndEditing;
- (void)_searchFieldReturnPressed;
- (void)_searchFieldTextChanged:(BOOL)changed;
- (void)_selectionChangedForSearchField:(id)field;
- (void)_setAdditionalPaddingForCancelButtonAtLeadingEdge:(double)edge;
- (void)_setAdditionalPaddingForSearchFieldAtLeadingEdge:(double)edge;
- (void)_setClassForSearchTextField:(Class)field;
- (void)_setClipsToBounds:(BOOL)bounds;
- (void)_setDataSource:(id)source navigationItem:(id)item titleLocation:(int64_t)location;
- (void)_setDisableFocus:(BOOL)focus;
- (void)_setForceLegacyVisual:(BOOL)visual;
- (void)_setHostedByNavigationBar:(BOOL)bar;
- (void)_setHostedInlineByNavigationBar:(BOOL)bar;
- (void)_setHostedInlineByToolbar:(BOOL)toolbar;
- (void)_setRequiresLegacyVisualProvider;
- (void)_setScopeBarHidden:(BOOL)hidden;
- (void)_setScopeBarPosition:(unint64_t)position;
- (void)_setSearchController:(id)controller;
- (void)_setSearchFieldContainerLayoutCustomizationDelegate:(id)delegate;
- (void)_setTokenBackgroundColor:(id)color;
- (void)_setUpVisualProvider;
- (void)_shrinkToButtonIfNecessary;
- (void)_textDidEndEditingInSearchField:(id)field;
- (void)_updateForNewText:(id)text inSearchField:(id)field;
- (void)_updateInsetsForTableView:(id)view;
- (void)bringSubviewToFront:(id)front;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)encodeWithCoder:(id)coder;
- (void)insertTextSuggestion:(id)suggestion;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)reloadInputViews;
- (void)safeAreaInsetsDidChange;
- (void)sendSubviewToBack:(id)back;
- (void)setBackgroundImage:(UIImage *)backgroundImage forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics;
- (void)setBackgroundImage:(id)image forBarMetrics:(int64_t)metrics;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setDelegate:(id)delegate;
- (void)setFocusGroupIdentifier:(id)identifier;
- (void)setFrame:(CGRect)frame;
- (void)setKeyboardAppearance:(int64_t)appearance;
- (void)setNeedsLayout;
- (void)setPlaceholder:(NSString *)placeholder;
- (void)setPositionAdjustment:(UIOffset)adjustment forSearchBarIcon:(UISearchBarIcon)icon;
- (void)setScopeBarButtonBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state;
- (void)setScopeBarButtonDividerImage:(UIImage *)dividerImage forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState;
- (void)setScopeBarButtonTitleTextAttributes:(NSDictionary *)attributes forState:(UIControlState)state;
- (void)setSearchTextPositionAdjustment:(UIOffset)searchTextPositionAdjustment;
- (void)setSelectedScopeButtonIndex:(NSInteger)selectedScopeButtonIndex;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setText:(NSString *)text;
- (void)setTintColor:(UIColor *)tintColor;
- (void)setTranslucent:(BOOL)translucent;
- (void)set_cancelButtonText:(id)text;
- (void)takeTraitsFrom:(id)from;
- (void)tappedSearchBar:(id)bar;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToSuperview:(id)superview;
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
    _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
    [_searchBarTextField setBecomesFirstResponderOnClearButtonTap:0];
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
  searchField = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  v3 = searchField;
  v4 = &stru_1EFB14550;
  if (searchField)
  {
    text = [searchField text];
    if (text)
    {
      v4 = text;
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
  selfCopy = self;
  searchBarClippingView = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchBarClippingView];
  v4 = searchBarClippingView;
  if (searchBarClippingView)
  {
    selfCopy = searchBarClippingView;
  }

  v5 = selfCopy;

  return selfCopy;
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
  window = [(UIView *)self window];
  if (!window)
  {
    searchController = self->__searchController;
    if (searchController)
    {
      _window = [(UIViewController *)searchController _window];
      if (_window)
      {
        goto LABEL_3;
      }
    }

    else
    {
      _window = 0;
    }

    v6 = 1;
    goto LABEL_11;
  }

  _window = window;
LABEL_3:
  _windowInterfaceOrientation = [_window _windowInterfaceOrientation];
  if (!_windowInterfaceOrientation)
  {
    _windowInterfaceOrientation = [UIApp _sceneInterfaceOrientationFromWindow:_window];
  }

  v6 = _windowInterfaceOrientation;
LABEL_11:

  return v6;
}

- (BOOL)_clearButtonActsAsCancel
{
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider usesClearForCancel])
  {
    return 1;
  }

  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 6;

  return v3;
}

- (UISearchBarTextField)_searchBarTextField
{
  searchField = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  if (!self->_didAddScribbleInteraction)
  {
    self->_didAddScribbleInteraction = 1;
    v4 = [[UIScribbleInteraction alloc] initWithDelegate:self];
    [(UIScribbleInteraction *)v4 _setDefaultSystemInteraction:1];
    [searchField addInteraction:v4];
  }

  return searchField;
}

- (BOOL)_usesLegacyVisualProvider
{
  visualProviderType = [(_UISearchBarVisualProviderBase *)self->_visualProvider visualProviderType];
  if (visualProviderType != 1)
  {
    LOBYTE(visualProviderType) = [(_UISearchBarVisualProviderBase *)self->_visualProvider visualProviderType]== 3;
  }

  return visualProviderType;
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
  isHostedByNavigationBar = [(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedByNavigationBar];
  visualProvider = self->_visualProvider;
  if (isHostedByNavigationBar)
  {
    [(_UISearchBarVisualProviderBase *)visualProvider setInNavigationPalette:0];
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setPlacedInNavigationBar:0];
    v5 = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)v5 setPlacedInToolbar:0];
  }

  else
  {
    isPlacedInNavigationBar = [(_UISearchBarVisualProviderBase *)visualProvider isPlacedInNavigationBar];
    isPlacedInToolbar = [(_UISearchBarVisualProviderBase *)self->_visualProvider isPlacedInToolbar];
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
    if (!isPlacedInNavigationBar && [(_UISearchBarVisualProviderBase *)self->_visualProvider isPlacedInNavigationBar]|| !isPlacedInToolbar && [(_UISearchBarVisualProviderBase *)self->_visualProvider isPlacedInToolbar])
    {

      [(UISearchBar *)self setNeedsLayout];
    }
  }
}

- (NSString)placeholder
{
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  placeholder = [_searchBarTextField placeholder];

  return placeholder;
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

    _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
    [_searchBarTextField _setAnimatesBackgroundCornerRadius:1];

    if (UISearchBarUsesModernAppearance())
    {
      [(UIView *)self setPreservesSuperviewLayoutMargins:1];
    }

    [(UISearchBar *)self _setMaskActive:0];
  }

  else
  {
    _searchBarTextField2 = [(UISearchBar *)self _searchBarTextField];
    [_searchBarTextField2 _setAnimatesBackgroundCornerRadius:0];
  }

  [(UISearchBar *)self _updateEffectiveContentInset];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider updateScopeBarBackground];
  searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [searchDisplayController _searchBarSuperviewChanged];

  [(UISearchController *)self->__searchController _searchBarSuperviewChanged];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (BOOL)isFirstResponder
{
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  isEditing = [_searchBarTextField isEditing];

  return isEditing;
}

- (void)didMoveToWindow
{
  window = [(UIView *)self window];

  if (window)
  {
    searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
    [searchDisplayController _updateSearchBarMaskIfNecessary];
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

- (void)_setSearchController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy && self->__searchController && [(UISearchBar *)self _isHostedByNavigationBar])
  {
    [(UIView *)self removeFromSuperview];
  }

  self->__searchController = controllerCopy;
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

+ (void)_initializeForIdiom:(int64_t)idiom
{
  if ((_initializeForIdiom__didInitializeForCarPlay & 1) == 0)
  {
    v5 = objc_opt_class();
    if (idiom == 3 && v5 == self)
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

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v6.receiver = self;
  v6.super_class = UISearchBar;
  [(UIView *)&v6 setSemanticContentAttribute:?];
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  [_searchBarTextField setSemanticContentAttribute:attribute];
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

    _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
    v7 = [v3 stringByAppendingFormat:@" searchTextField=%p visualProvider=%p", _searchBarTextField, self->_visualProvider];

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

- (void)_setSearchFieldContainerLayoutCustomizationDelegate:(id)delegate
{
  objc_initWeak(&location, delegate);
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

- (void)_setAdditionalPaddingForCancelButtonAtLeadingEdge:(double)edge
{
  if (![(UISearchBar *)self _usesLegacyVisualProvider])
  {
    visualProvider = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)visualProvider setAdditionalPaddingForCancelButtonAtLeadingEdge:edge];
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

- (void)_setAdditionalPaddingForSearchFieldAtLeadingEdge:(double)edge
{
  if (![(UISearchBar *)self _usesLegacyVisualProvider])
  {
    visualProvider = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)visualProvider setAdditionalPaddingForSearchFieldAtLeadingEdge:edge];
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

    searchBarBackground = [(_UISearchBarVisualProviderBase *)v6->_visualProvider searchBarBackground];
    effectiveBarTintColor = [(_UISearchBarVisualProviderBase *)v6->_visualProvider effectiveBarTintColor];
    [searchBarBackground setBarTintColor:effectiveBarTintColor];

    [searchBarBackground setBarStyle:{-[_UISearchBarVisualProviderBase barStyle](v6->_visualProvider, "barStyle")}];
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
    searchBarBackground2 = [(_UISearchBarVisualProviderBase *)v6->_visualProvider searchBarBackground];
    [searchBarBackground2 setHidden:v19];

    [(UISearchBar *)v6 setUsesEmbeddedAppearance:[(NSCoder *)v4 decodeBoolForKey:@"UIUsesEmbeddedAppearance"]];
    [(_UISearchBarVisualProviderBase *)v6->_visualProvider updateSearchBarOpacity];
    searchField = [(_UISearchBarVisualProviderBase *)v6->_visualProvider searchField];
    [searchField setText:v9];

    searchField2 = [(_UISearchBarVisualProviderBase *)v6->_visualProvider searchField];
    [searchField2 setPlaceholder:v10];

    if ([(_UISearchBarVisualProviderBase *)v6->_visualProvider centerPlaceholder])
    {
      textInputTraits = [(UISearchBar *)v6 textInputTraits];
      [textInputTraits setDeferBecomingResponder:1];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISearchBarStyle"])
    {
      [(UISearchBar *)v6 setSearchBarStyle:[(NSCoder *)v4 decodeIntegerForKey:@"UISearchBarStyle"]];
    }

    if (v8)
    {
      [(_UISearchBarVisualProviderBase *)v6->_visualProvider setUpPromptLabel];
      promptLabel = [(_UISearchBarVisualProviderBase *)v6->_visualProvider promptLabel];
      [promptLabel setText:v8];
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

- (void)_populateArchivedSubviews:(id)subviews
{
  v16 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  v14.receiver = self;
  v14.super_class = UISearchBar;
  [(UIView *)&v14 _populateArchivedSubviews:subviewsCopy];
  runtimeOnlyViews = [(_UISearchBarVisualProviderBase *)self->_visualProvider runtimeOnlyViews];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [runtimeOnlyViews countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(runtimeOnlyViews);
        }

        [subviewsCopy removeObject:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [runtimeOnlyViews countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = UISearchBar;
  [(UIView *)&v31 encodeWithCoder:coderCopy];
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider barStyle])
  {
    [coderCopy encodeInteger:-[_UISearchBarVisualProviderBase barStyle](self->_visualProvider forKey:{"barStyle"), @"UIBarStyle"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider showsCancelButton])
  {
    [coderCopy encodeBool:-[_UISearchBarVisualProviderBase showsCancelButton](self->_visualProvider forKey:{"showsCancelButton"), @"UIShowsCancelButton"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider showsBookmarkButton])
  {
    [coderCopy encodeBool:-[_UISearchBarVisualProviderBase showsBookmarkButton](self->_visualProvider forKey:{"showsBookmarkButton"), @"UIShowsBookmarkButton"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider showsScopeBar])
  {
    [coderCopy encodeBool:-[_UISearchBarVisualProviderBase showsScopeBar](self->_visualProvider forKey:{"showsScopeBar"), @"UIShowsScopeBar"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider showsSearchResultsButton])
  {
    [coderCopy encodeBool:-[_UISearchBarVisualProviderBase showsSearchResultsButton](self->_visualProvider forKey:{"showsSearchResultsButton"), @"UIShowSearchResultsButton"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider isSearchResultsButtonSelected])
  {
    [coderCopy encodeBool:-[_UISearchBarVisualProviderBase isSearchResultsButtonSelected](self->_visualProvider forKey:{"isSearchResultsButtonSelected"), @"UISearchResultsButtonSelected"}];
  }

  if (![(_UISearchBarVisualProviderBase *)self->_visualProvider autoDisableCancelButton])
  {
    [coderCopy encodeBool:-[_UISearchBarVisualProviderBase autoDisableCancelButton](self->_visualProvider forKey:{"autoDisableCancelButton"), @"UIAutoDisableCancelButton"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider allowsInlineScopeBar])
  {
    [coderCopy encodeBool:-[_UISearchBarVisualProviderBase allowsInlineScopeBar](self->_visualProvider forKey:{"allowsInlineScopeBar"), @"UIAllowsInlineScopeBar"}];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider barTranslucence])
  {
    [coderCopy encodeInteger:-[_UISearchBarVisualProviderBase barTranslucence](self->_visualProvider forKey:{"barTranslucence"), @"UISearchBarTranslucence"}];
  }

  if (![(_UISearchBarVisualProviderBase *)self->_visualProvider drawsBackground])
  {
    [coderCopy encodeBool:1 forKey:@"UIHidesBackground"];
  }

  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider usesEmbeddedAppearance])
  {
    [coderCopy encodeBool:-[_UISearchBarVisualProviderBase usesEmbeddedAppearance](self->_visualProvider forKey:{"usesEmbeddedAppearance"), @"UIUsesEmbeddedAppearance"}];
  }

  scopeButtonTitles = [(UISearchBar *)self scopeButtonTitles];
  v6 = [scopeButtonTitles count];

  if (v6)
  {
    scopeButtonTitles2 = [(UISearchBar *)self scopeButtonTitles];
    [coderCopy encodeObject:scopeButtonTitles2 forKey:@"UIScopeButtonTitles"];
  }

  separator = [(_UISearchBarVisualProviderBase *)self->_visualProvider separator];

  if (separator)
  {
    [coderCopy encodeBool:1 forKey:@"UIShowsSeparator"];
  }

  prompt = [(UISearchBar *)self prompt];

  if (prompt)
  {
    prompt2 = [(UISearchBar *)self prompt];
    [coderCopy encodeObject:prompt2 forKey:@"UIPrompt"];
  }

  text = [(UISearchBar *)self text];

  if (text)
  {
    text2 = [(UISearchBar *)self text];
    [coderCopy encodeObject:text2 forKey:@"UIText"];
  }

  placeholder = [(UISearchBar *)self placeholder];

  if (placeholder)
  {
    placeholder2 = [(UISearchBar *)self placeholder];
    [coderCopy encodeObject:placeholder2 forKey:@"UIPlaceholder"];
  }

  barTintColor = [(UISearchBar *)self barTintColor];

  if (barTintColor)
  {
    barTintColor2 = [(UISearchBar *)self barTintColor];
    [coderCopy encodeObject:barTintColor2 forKey:@"UIBarTintColor"];
  }

  if ([(UISearchBar *)self keyboardType])
  {
    [coderCopy encodeInteger:-[UISearchBar keyboardType](self forKey:{"keyboardType"), @"UIKeyboardType"}];
  }

  if ([(UISearchBar *)self spellCheckingType])
  {
    [coderCopy encodeInteger:-[UISearchBar spellCheckingType](self forKey:{"spellCheckingType"), @"UISpellCheckingType"}];
  }

  if ([(UISearchBar *)self autocorrectionType])
  {
    [coderCopy encodeInteger:-[UISearchBar autocorrectionType](self forKey:{"autocorrectionType"), @"UIAutocorrectionType"}];
  }

  if ([(UISearchBar *)self autocapitalizationType])
  {
    [coderCopy encodeInteger:-[UISearchBar autocapitalizationType](self forKey:{"autocapitalizationType"), @"UIAutocapitalizationType"}];
  }

  keyboardAppearance = [(UISearchBar *)self keyboardAppearance];
  if (keyboardAppearance)
  {
    [coderCopy encodeInteger:keyboardAppearance forKey:@"UIKeyboardAppearance"];
  }

  returnKeyType = [(UISearchBar *)self returnKeyType];
  if (returnKeyType)
  {
    [coderCopy encodeInteger:returnKeyType forKey:@"UIReturnKeyType"];
  }

  [coderCopy encodeBool:-[UISearchBar enablesReturnKeyAutomatically](self forKey:{"enablesReturnKeyAutomatically"), @"UIEnablesReturnKeyAutomatically"}];
  [coderCopy encodeBool:-[UISearchBar isSecureTextEntry](self forKey:{"isSecureTextEntry"), @"UISecureTextEntry"}];
  textContentType = [(UISearchBar *)self textContentType];
  if (textContentType)
  {
    [coderCopy encodeObject:textContentType forKey:@"UITextContentType"];
  }

  smartInsertDeleteType = [(UISearchBar *)self smartInsertDeleteType];
  if (smartInsertDeleteType)
  {
    [coderCopy encodeInteger:smartInsertDeleteType forKey:@"UITextSmartInsertDeleteType"];
  }

  smartQuotesType = [(UISearchBar *)self smartQuotesType];
  if (smartQuotesType)
  {
    [coderCopy encodeInteger:smartQuotesType forKey:@"UITextSmartQuotesType"];
  }

  smartDashesType = [(UISearchBar *)self smartDashesType];
  if (smartDashesType)
  {
    [coderCopy encodeInteger:smartDashesType forKey:@"UITextSmartDashesType"];
  }

  delegate = [(UISearchBar *)self delegate];
  if (delegate)
  {
    [coderCopy encodeConditionalObject:delegate forKey:@"UIDelegate"];
  }

  backgroundImage = [(UISearchBar *)self backgroundImage];
  if (backgroundImage)
  {
    [coderCopy encodeObject:backgroundImage forKey:@"UIBackgroundImage"];
  }

  scopeBarBackgroundImage = [(UISearchBar *)self scopeBarBackgroundImage];

  if (scopeBarBackgroundImage)
  {
    [coderCopy encodeObject:scopeBarBackgroundImage forKey:@"UIScopeBarBackgroundImage"];
  }

  [(UISearchBar *)self searchTextPositionAdjustment];
  if (v27 != 0.0 || v26 != 0.0)
  {
    [coderCopy encodeUIOffset:@"UISearchTextPositionAdjustment" forKey:?];
  }

  [(UISearchBar *)self searchFieldBackgroundPositionAdjustment];
  if (v29 != 0.0 || v28 != 0.0)
  {
    [coderCopy encodeUIOffset:@"UISearchFieldBackgroundPositionAdjustment" forKey:?];
  }

  searchBarStyle = [(UISearchBar *)self searchBarStyle];
  if (searchBarStyle)
  {
    [coderCopy encodeInteger:searchBarStyle forKey:@"UISearchBarStyle"];
  }

  if (![(UISearchBar *)self isEnabled])
  {
    [coderCopy encodeBool:1 forKey:@"UISearchBarDisabled"];
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

- (void)set_cancelButtonText:(id)text
{
  textCopy = text;
  v5 = NSStringFromSelector(a2);
  UIKVCAccessProhibited(v5, @"UISearchBar");

  [(UISearchBar *)self _setCancelButtonText:textCopy];
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

- (void)willMoveToSuperview:(id)superview
{
  searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [searchDisplayController _searchBarSuperviewWillChange];

  if (superview)
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

  searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  if ([searchDisplayController displaysSearchBarInNavigationBar])
  {
    isTranslucent = 1;
  }

  else
  {
    searchBarBackground = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchBarBackground];
    if (searchBarBackground)
    {
      searchBarBackground2 = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchBarBackground];
      isTranslucent = [searchBarBackground2 isTranslucent];
    }

    else
    {
      isTranslucent = 1;
    }
  }

  return isTranslucent;
}

- (void)_setClassForSearchTextField:(Class)field
{
  fieldCopy = field;
  if (!field)
  {
    fieldCopy = objc_opt_class();
  }

  if (fieldCopy != [(UISearchBar *)self _classForSearchTextField])
  {
    if ((_searchBarShouldSeparateLayouts() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchBar.m" lineNumber:874 description:@"Can't change _classForSearchTextField in old-style UISearchBar"];
    }

    if (([fieldCopy isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISearchBar.m" lineNumber:875 description:@"_classForSearchTextField must be a subclass of UISearchTextField"];
    }

    window = [(UIView *)self window];

    if (window)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"UISearchBar.m" lineNumber:876 description:@"Can't change _classForSearchTextField when UISearchBar is in a window"];
    }

    objc_storeStrong(&self->_classForSearchTextField, field);
    searchFieldIfExists = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchFieldIfExists];
    [searchFieldIfExists removeFromSuperview];

    [(_UISearchBarVisualProviderBase *)self->_visualProvider setSearchField:0];

    [(UISearchBar *)self setNeedsLayout];
  }
}

- (void)_updateForNewText:(id)text inSearchField:(id)field
{
  textCopy = text;
  fieldCopy = field;
  searchField = [(UISearchBar *)self searchField];
  text = [searchField text];
  if (text)
  {
    searchField2 = [(UISearchBar *)self searchField];
    text2 = [searchField2 text];
    v11 = [text2 length] != 0;
  }

  else
  {
    v11 = 0;
  }

  [(UISearchBar *)self _hideOrResetHelperPlaceHolder:v11];
  searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [searchDisplayController searchBar:self textDidChange:textCopy];

  activeSearchFieldInToolbar = [(_UISearchBarVisualProviderBase *)self->_visualProvider activeSearchFieldInToolbar];

  if (activeSearchFieldInToolbar == fieldCopy)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider updateTextFromActiveSearchField];
  }

  [(UISearchController *)self->__searchController _searchBar:self textDidChange:textCopy programatically:1];
}

- (void)_textDidEndEditingInSearchField:(id)field
{
  visualProvider = self->_visualProvider;
  fieldCopy = field;
  activeSearchFieldInToolbar = [(_UISearchBarVisualProviderBase *)visualProvider activeSearchFieldInToolbar];

  if (activeSearchFieldInToolbar == fieldCopy)
  {
    v7 = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)v7 updateTextFromActiveSearchField];
  }
}

- (void)setText:(NSString *)text
{
  v5 = text;
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  [_searchBarTextField setText:v5];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UISearchBar *)self _updateForNewText:v5 inSearchField:_searchBarTextField];
  }
}

- (void)setPlaceholder:(NSString *)placeholder
{
  v4 = placeholder;
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  [_searchBarTextField setPlaceholder:v4];

  visualProvider = self->_visualProvider;
  activeSearchFieldInToolbar = [(_UISearchBarVisualProviderBase *)visualProvider activeSearchFieldInToolbar];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__UISearchBar_setPlaceholder___block_invoke;
  v9[3] = &unk_1E70F8130;
  v10 = v4;
  v8 = v4;
  [(_UISearchBarVisualProviderBase *)visualProvider updateOriginalAndSiblingClonesOfSearchField:activeSearchFieldInToolbar updates:v9];
}

- (void)_setHostedByNavigationBar:(BOOL)bar
{
  barCopy = bar;
  isHostedByNavigationBar = [(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedByNavigationBar];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setHostedByNavigationBar:barCopy];
  [(UISearchBar *)self _identifyBarContainer];
  if (isHostedByNavigationBar != barCopy)
  {
    [(UIView *)self bounds];
    [(UISearchBar *)self sizeThatFits:v6, v7];
    if (_UISolariumEnabled())
    {
      if (barCopy)
      {

        [(UISearchBar *)self _setClipsToBounds:0];
      }
    }
  }
}

- (void)_resetIfNecessaryForNavigationBarHosting:(BOOL)hosting
{
  hostingCopy = hosting;
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedByNavigationBar]!= hosting)
  {
    [(UISearchBar *)self _setReliesOnNavigationBarBackdrop:hostingCopy];
    [(UISearchBar *)self _setHostedByNavigationBar:hostingCopy];
    if (hostingCopy)
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

- (void)_setHostedInlineByToolbar:(BOOL)toolbar
{
  toolbarCopy = toolbar;
  v16 = *MEMORY[0x1E69E9840];
  _isHostedByNavigationBar = [(UISearchBar *)self _isHostedByNavigationBar];
  v6 = _isHostedByNavigationBar;
  if (toolbarCopy && !_isHostedByNavigationBar)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        searchController = self->__searchController;
        v12 = 138412546;
        selfCopy2 = self;
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
        selfCopy2 = self;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Inline hosting of search bar ignored because navigation bar hosting is not enabled. This is a UIKit bug. search bar: %@, searchController: %@", &v12, 0x16u);
      }
    }
  }

  v7 = v6 & toolbarCopy;
  if (v7 != [(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedInlineByToolbar])
  {
    if (v7)
    {
      [(UISearchBar *)self _setHostedInlineByNavigationBar:0];
    }

    [(_UISearchBarVisualProviderBase *)self->_visualProvider setHostedInlineByToolbar:v7];
  }
}

- (void)_setHostedInlineByNavigationBar:(BOOL)bar
{
  barCopy = bar;
  v16 = *MEMORY[0x1E69E9840];
  if (bar && ![(UISearchBar *)self _isHostedByNavigationBar])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        searchController = self->__searchController;
        v12 = 138412546;
        selfCopy2 = self;
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
        selfCopy2 = self;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Inline hosting of search bar ignored because navigation bar hosting is not enabled. This is a UIKit bug. search bar: %@, searchController: %@", &v12, 0x16u);
      }
    }
  }

  isHostedInlineByNavigationBar = [(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedInlineByNavigationBar];
  v6 = [(UISearchBar *)self _isHostedByNavigationBar]& barCopy;
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setHostedInlineByNavigationBar:v6];
  if (isHostedInlineByNavigationBar != v6)
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
  _expectedInterfaceOrientation = [(UISearchBar *)self _expectedInterfaceOrientation];

  return [(_UISearchBarVisualProviderBase *)visualProvider shouldCombineLandscapeBarsForOrientation:_expectedInterfaceOrientation];
}

- (void)takeTraitsFrom:(id)from
{
  fromCopy = from;
  textInputTraits = [(UISearchBar *)self textInputTraits];
  [textInputTraits takeTraitsFrom:fromCopy];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if ([objc_opt_class() instancesRespondToSelector:selector])
  {
    textInputTraits = [(UISearchBar *)self textInputTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UISearchBar;
    textInputTraits = [(UISearchBar *)&v7 forwardingTargetForSelector:selector];
  }

  return textInputTraits;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = UISearchBar;
  if ([(UISearchBar *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    textInputTraits = [(UISearchBar *)self textInputTraits];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setKeyboardAppearance:(int64_t)appearance
{
  if ([(UISearchBar *)self keyboardAppearance]!= appearance)
  {
    textInputTraits = [(UISearchBar *)self textInputTraits];
    [textInputTraits setKeyboardAppearance:appearance];
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
  searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  v4 = searchDisplayController;
  if (searchDisplayController)
  {
    v5 = [searchDisplayController _searchBarShouldScrollToVisible:self];
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
    searchTextField = [(UISearchBar *)self searchTextField];
    _hasContent = [searchTextField _hasContent];

    if (_hasContent && (objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained searchBarShouldClear:self])
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

- (BOOL)_searchBarTextFieldShouldChangeCharactersInRanges:(id)ranges replacementString:(id)string
{
  rangesCopy = ranges;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained searchBar:self shouldChangeTextInRanges:rangesCopy replacementText:stringCopy];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = 1;
      goto LABEL_7;
    }

    unionRange = [rangesCopy unionRange];
    v9 = [WeakRetained searchBar:self shouldChangeTextInRange:unionRange replacementText:{v11, stringCopy}];
  }

  v12 = v9;
LABEL_7:

  return v12;
}

- (void)_setDataSource:(id)source navigationItem:(id)item titleLocation:(int64_t)location
{
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setNavBarTitleViewDataSource:source, item];
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider setNavBarTitleViewLocation:location];
}

- (void)_performNavigationBarTransition:(int64_t)transition willBeDisplayed:(BOOL)displayed
{
  v4 = 0.0;
  if (displayed)
  {
    v4 = 1.0;
  }

  [(UIView *)self setAlpha:transition, v4];
}

- (id)_traitCollectionOverridesForNavigationBarTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(UISearchBar *)self _effectivelySupportsDynamicType])
  {
    preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
    v6 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_driveTransitionToSearchLayoutState:(int64_t)state
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider driveTransitionToSearchLayoutState:state];
}

- (void)_prepareForTransitionToSearchLayoutState:(int64_t)state
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider prepareForTransitionToSearchLayoutState:state];
}

- (void)_freezeForAnimatedTransitionToSearchLayoutState:(int64_t)state
{
  if (state == 2)
  {
    _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
    visualProvider = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)visualProvider freezeForAnimatedTransitionToSearchLayoutState:2];
  }
}

- (void)_animateTransitionToSearchLayoutState:(int64_t)state
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider animateTransitionToSearchLayoutState:state];
}

- (void)_completeTransitionToSearchLayoutState:(int64_t)state
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider completeTransitionToSearchLayoutState:state];
}

- (void)_cancelTransitionToSearchLayoutState:(int64_t)state
{
  _confirmIOSorVisionOSVisualProvider(self->_visualProvider);
  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider cancelTransitionToSearchLayoutState:state];
}

- (void)setClipsToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  if (!_UISolariumEnabled() || ![(_UISearchBarVisualProviderBase *)self->_visualProvider isHostedByNavigationBar])
  {
    v5.receiver = self;
    v5.super_class = UISearchBar;
    [(UIView *)&v5 setClipsToBounds:boundsCopy];
  }
}

- (void)_setClipsToBounds:(BOOL)bounds
{
  v3.receiver = self;
  v3.super_class = UISearchBar;
  [(UIView *)&v3 setClipsToBounds:bounds];
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

- (void)_searchButtonAction:(id)action
{
  _searchController = [(UISearchBar *)self _searchController];

  if (_searchController)
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
  _expectedInterfaceOrientation = [(UISearchBar *)self _expectedInterfaceOrientation];

  [(UISearchBar *)self _defaultHeightForOrientation:_expectedInterfaceOrientation];
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _allowFlexibleWidth = [(UISearchBar *)self _allowFlexibleWidth];
  v7 = 0.0;
  if (_allowFlexibleWidth)
  {
    v7 = width;
  }

  visualProvider = self->_visualProvider;

  [(_UISearchBarVisualProviderBase *)visualProvider sizeThatFits:v7, height];
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  _allowFlexibleWidth = [(UISearchBar *)self _allowFlexibleWidth];
  v13 = 0.0;
  if (_allowFlexibleWidth)
  {
    v13 = width;
  }

  v16.receiver = self;
  v16.super_class = UISearchBar;
  *&v11 = priority;
  *&v12 = fittingPriority;
  [(UIView *)&v16 systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to
{
  toCopy = to;
  subviewCopy = subview;
  _viewForChildViews = [(UISearchBar *)self _viewForChildViews];
  v11 = _viewForChildViews;
  if (_viewForChildViews == self || _viewForChildViews == subviewCopy)
  {
    v12.receiver = self;
    v12.super_class = UISearchBar;
    [(UIView *)&v12 _addSubview:subviewCopy positioned:positioned relativeTo:toCopy];
  }

  else
  {
    [(UISearchBar *)_viewForChildViews _addSubview:subviewCopy positioned:positioned relativeTo:toCopy];
  }
}

- (void)bringSubviewToFront:(id)front
{
  frontCopy = front;
  _viewForChildViews = [(UISearchBar *)self _viewForChildViews];
  v6 = _viewForChildViews;
  if (_viewForChildViews == self || _viewForChildViews == frontCopy)
  {
    v7.receiver = self;
    v7.super_class = UISearchBar;
    [(UIView *)&v7 bringSubviewToFront:frontCopy];
  }

  else
  {
    [(UISearchBar *)_viewForChildViews bringSubviewToFront:frontCopy];
  }
}

- (void)sendSubviewToBack:(id)back
{
  backCopy = back;
  _viewForChildViews = [(UISearchBar *)self _viewForChildViews];
  v6 = _viewForChildViews;
  if (_viewForChildViews == self || _viewForChildViews == backCopy)
  {
    v7.receiver = self;
    v7.super_class = UISearchBar;
    [(UIView *)&v7 sendSubviewToBack:backCopy];
  }

  else
  {
    [(UISearchBar *)_viewForChildViews sendSubviewToBack:backCopy];
  }
}

- (id)_makeShadowView
{
  if (dyld_program_sdk_at_least())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"No UISearchDisplayController support methods should run on this version of iOS"];
    makeShadowView = 0;
  }

  else
  {
    makeShadowView = [(_UISearchBarVisualProviderBase *)self->_visualProvider makeShadowView];
  }

  return makeShadowView;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
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

- (void)_containerSafeAreaInsetsDidChange:(id)change
{
  changeCopy = change;
  if (![(UISearchBar *)self _usesLegacyVisualProvider]&& [(_UISearchBarVisualProviderBase *)self->_visualProvider barPosition]== 3)
  {
    visualProvider = self->_visualProvider;
    [changeCopy safeAreaInsets];
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
  selectedScope = [(_UISearchBarVisualProviderBase *)self->_visualProvider selectedScope];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setSelectedScope:selectedScopeButtonIndex];
  if (selectedScope != selectedScopeButtonIndex)
  {
    visualProvider = self->_visualProvider;

    [(_UISearchBarVisualProviderBase *)visualProvider updateScopeBarForSelectedScope];
  }
}

- (void)_setScopeBarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  scopeBarContainerView = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBarContainerView];
  [scopeBarContainerView setHidden:hiddenCopy];

  _searchController = [(UISearchBar *)self _searchController];
  [_searchController _searchBarDidUpdateScopeBar:self];
}

- (void)_setScopeBarPosition:(unint64_t)position
{
  [(_UISearchBarVisualProviderBase *)self->_visualProvider setScopeBarPosition:position];
  _searchController = [(UISearchBar *)self _searchController];
  [_searchController _searchBarDidUpdateScopeBar:self];
}

- (void)_presentScopeBarIfNecessary
{
  scopeTitles = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeTitles];
  v4 = [scopeTitles count];

  if (v4)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    _usesLegacyVisualProvider = [(UISearchBar *)self _usesLegacyVisualProvider];
    if (has_internal_diagnostics)
    {
      if (!_usesLegacyVisualProvider)
      {
        v7 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Legacy search bar path only. This is a UIKit bug.", buf, 2u);
        }
      }
    }

    else if (!_usesLegacyVisualProvider)
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
  scopeTitles = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeTitles];
  v4 = [scopeTitles count];

  if (v4)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    _usesLegacyVisualProvider = [(UISearchBar *)self _usesLegacyVisualProvider];
    if (has_internal_diagnostics)
    {
      if (!_usesLegacyVisualProvider)
      {
        v7 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Legacy search bar path only. This is a UIKit bug.", buf, 2u);
        }
      }
    }

    else if (!_usesLegacyVisualProvider)
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

- (void)_scopeChanged:(id)changed
{
  selectedSegmentIndex = [changed selectedSegmentIndex];

  [(UISearchBar *)self _scopeIndexChanged:selectedSegmentIndex];
}

- (void)_scopeIndexChanged:(int64_t)changed
{
  if ([(_UISearchBarVisualProviderBase *)self->_visualProvider selectedScope]!= changed)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setSelectedScope:changed];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained searchBar:self selectedScopeButtonIndexDidChange:changed];
    }

    searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
    [searchDisplayController searchBar:self selectedScopeButtonIndexDidChange:changed];

    [(UISearchController *)self->__searchController _searchBar:self selectedScopeButtonIndexDidChange:changed];
    if (!self->__searchController)
    {
      _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
      [(UISearchTextField *)_searchBarTextField _clearSearchSuggestionsIfNecessary];
    }
  }
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  v10.receiver = self;
  v10.super_class = UISearchBar;
  [(UIView *)&v10 _didMoveFromWindow:windowCopy toWindow:toWindowCopy];
  if (toWindowCopy)
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

  if (toWindowCopy != windowCopy)
  {
    searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
    [searchDisplayController _updateSearchBarMaskIfNecessary];
  }
}

- (id)preferredFocusEnvironments
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    searchField = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
    if ([searchField canBecomeFocused])
    {
      [v5 addObject:searchField];
    }

    if (_UISolariumEnabled())
    {
      cancelButton = [(UISearchBar *)self cancelButton];
      [v5 addObject:cancelButton];
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
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3)
  {
    v4 = _UISolariumEnabled();

    if (v4)
    {
      cancelButton = [(UISearchBar *)self cancelButton];
      goto LABEL_6;
    }
  }

  else
  {
  }

  cancelButton = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
LABEL_6:

  return cancelButton;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = UISearchBar;
  [(UIView *)&v17 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    searchField = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
    nextFocusedView = [contextCopy nextFocusedView];

    layer = [searchField layer];
    v12 = layer;
    if (nextFocusedView == searchField)
    {
      [layer setCornerRadius:6.0];

      layer2 = [searchField layer];
      v15 = +[UIColor externalSystemTealColor];
      [layer2 setBorderColor:{objc_msgSend(v15, "CGColor")}];

      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
      [layer setCornerRadius:0.0];

      layer2 = [searchField layer];
      [layer2 setBorderColor:0];
    }

    layer3 = [searchField layer];
    [layer3 setBorderWidth:v13];
  }
}

- (void)_setDisableFocus:(BOOL)focus
{
  focusCopy = focus;
  searchField = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  [searchField _setDisableFocus:focusCopy];
}

- (void)setFocusGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  [_searchBarTextField setFocusGroupIdentifier:identifierCopy];
}

- (id)focusGroupIdentifier
{
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  focusGroupIdentifier = [_searchBarTextField focusGroupIdentifier];

  return focusGroupIdentifier;
}

- (void)setTintColor:(UIColor *)tintColor
{
  v3.receiver = self;
  v3.super_class = UISearchBar;
  [(UIView *)&v3 setTintColor:tintColor];
}

- (void)setBackgroundImage:(id)image forBarMetrics:(int64_t)metrics
{
  imageCopy = image;
  v7 = NSStringFromSelector(a2);
  NSLog(&cfstr_NoteUisearchba.isa, v7);

  [(UISearchBar *)self setBackgroundImage:imageCopy forBarPosition:2 barMetrics:metrics];
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
  searchBarBackground = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchBarBackground];
  backgroundImage = [searchBarBackground backgroundImage];

  return backgroundImage;
}

- (void)setScopeBarButtonBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state
{
  v7 = backgroundImage;
  scopeBar = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  if (v7 | scopeBar)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setUpScopeBar];
    [scopeBar _setBackgroundImage:v7 forState:state barMetrics:0];
  }
}

- (UIImage)scopeBarButtonBackgroundImageForState:(UIControlState)state
{
  scopeBar = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  v5 = [scopeBar backgroundImageForState:state barMetrics:0];

  return v5;
}

- (void)setScopeBarButtonDividerImage:(UIImage *)dividerImage forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState
{
  v9 = dividerImage;
  scopeBar = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  if (v9 | scopeBar)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setUpScopeBar];
    [scopeBar _setDividerImage:v9 forLeftSegmentState:leftState rightSegmentState:rightState barMetrics:0];
  }
}

- (UIImage)scopeBarButtonDividerImageForLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState
{
  scopeBar = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  v7 = [scopeBar dividerImageForLeftSegmentState:leftState rightSegmentState:rightState barMetrics:0];

  return v7;
}

- (void)setScopeBarButtonTitleTextAttributes:(NSDictionary *)attributes forState:(UIControlState)state
{
  v7 = attributes;
  scopeBar = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  if (v7 | scopeBar)
  {
    [(_UISearchBarVisualProviderBase *)self->_visualProvider setUpScopeBar];
    [scopeBar _setTitleTextAttributes:v7 forState:state];
  }
}

- (NSDictionary)scopeBarButtonTitleTextAttributesForState:(UIControlState)state
{
  scopeBar = [(_UISearchBarVisualProviderBase *)self->_visualProvider scopeBar];
  v5 = [scopeBar titleTextAttributesForState:state];

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
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  *v7 = horizontal;
  *&v7[1] = vertical;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{UIOffset=dd}"];
  [_searchBarTextField _setSearchTextOffetValue:v6];
}

- (UIOffset)searchTextPositionAdjustment
{
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  _searchTextOffsetValue = [_searchBarTextField _searchTextOffsetValue];

  if (_searchTextOffsetValue)
  {
    [_searchTextOffsetValue UIOffsetValue];
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
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  *v9 = horizontal;
  *&v9[1] = vertical;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIOffset=dd}"];
  [_searchBarTextField _setOffsetValue:v8 forIcon:icon];
}

- (UIOffset)positionAdjustmentForSearchBarIcon:(UISearchBarIcon)icon
{
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  v5 = [_searchBarTextField _offsetValueForIcon:icon];

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
    inputAccessoryView = inputAccessoryView;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UISearchBar;
    inputAccessoryView = [(UIResponder *)&v5 inputAccessoryView];
  }

  return inputAccessoryView;
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
  searchField = [(UISearchBar *)self searchField];
  inputAssistantItem = [searchField inputAssistantItem];

  return inputAssistantItem;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  if (![(_UISearchBarVisualProviderBase *)self->_visualProvider isFrozenForDismissalCrossfade])
  {
    v6.receiver = self;
    v6.super_class = UISearchBar;
    [(UIView *)&v6 setCenter:x, y];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = UISearchBar;
  [(UIView *)&v15 traitCollectionDidChange:changeCopy];
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  if ([preferredContentSizeCategory isEqual:preferredContentSizeCategory2])
  {
  }

  else
  {
    _effectivelySupportsDynamicType = [(UISearchBar *)self _effectivelySupportsDynamicType];

    if (_effectivelySupportsDynamicType)
    {
      [(_UISearchBarVisualProviderBase *)self->_visualProvider updateForDynamicType];
      [(UIView *)self invalidateIntrinsicContentSize];
    }
  }

  if (changeCopy)
  {
    _UIRecordTraitUsage(changeCopy, 0x13uLL);
    v9 = changeCopy[16];
    if (traitCollection)
    {
LABEL_7:
      _UIRecordTraitUsage(traitCollection, 0x13uLL);
      v10 = traitCollection[16];
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    if (traitCollection)
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
      horizontalSizeClass = [changeCopy horizontalSizeClass];
      horizontalSizeClass2 = [traitCollection horizontalSizeClass];
      _hasSplitViewControllerContextSidebarColumn = [changeCopy _hasSplitViewControllerContextSidebarColumn];
      _hasSplitViewControllerContextSidebarColumn2 = [traitCollection _hasSplitViewControllerContextSidebarColumn];
      if (horizontalSizeClass != horizontalSizeClass2 || _hasSplitViewControllerContextSidebarColumn != _hasSplitViewControllerContextSidebarColumn2)
      {
        [(_UISearchBarVisualProviderBase *)self->_visualProvider updateShowsClearButtonWhenEmpty];
      }
    }
  }
}

- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy
{
  v6.receiver = self;
  v6.super_class = UISearchBar;
  [(UIView *)&v6 _didChangeFromIdiom:idiom onScreen:screen traverseHierarchy:hierarchy];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider updatePlaceholderColor];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider updateDictationButton];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider updateRightView];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider updateMagnifyingGlassView];
  [(_UISearchBarVisualProviderBase *)self->_visualProvider applySearchBarStyle];
}

- (id)_presentationBackgroundBlurEffectForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(UISearchBar *)self keyboardAppearance]&& [(UISearchBar *)self keyboardAppearance]!= 10)
  {
    _hasDarkUIAppearance = [(UISearchBar *)self _hasDarkUIAppearance];
  }

  else
  {
    _hasDarkUIAppearance = [collectionCopy userInterfaceStyle] == 2;
  }

  v6 = _UISolariumEnabled();
  v7 = 4002;
  if (_hasDarkUIAppearance)
  {
    v7 = 4007;
  }

  v8 = 13;
  if (_hasDarkUIAppearance)
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
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  keyboardAppearance = [(UISearchBar *)self keyboardAppearance];
  result = 0;
  if (keyboardAppearance > 8)
  {
    if (keyboardAppearance != 10)
    {
      if (keyboardAppearance != 9)
      {
        return result;
      }

      return 1;
    }

    return userInterfaceStyle == 2;
  }

  if (!keyboardAppearance)
  {
    return userInterfaceStyle == 2;
  }

  if (keyboardAppearance == 1)
  {
    return 1;
  }

  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  selfCopy = self;
  v12.receiver = self;
  v12.super_class = UISearchBar;
  v5 = [(UIView *)&v12 hitTest:event withEvent:test.x, test.y];
  searchBarClippingView = [(_UISearchBarVisualProviderBase *)selfCopy->_visualProvider searchBarClippingView];
  v7 = searchBarClippingView;
  if (searchBarClippingView)
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
    selfCopy = v5;
    goto LABEL_9;
  }

  searchBarClippingView2 = [(_UISearchBarVisualProviderBase *)selfCopy->_visualProvider searchBarClippingView];

  if (v5 != searchBarClippingView2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = selfCopy;

  return v10;
}

- (void)tappedSearchBar:(id)bar
{
  if (![(UISearchBar *)self isFirstResponder])
  {

    [(UISearchBar *)self becomeFirstResponder];
  }
}

- (void)_updateInsetsForTableView:(id)view
{
  if (view)
  {
    [view _indexBarExtentFromEdge];
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
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  _placeholderLabel = [_searchBarTextField _placeholderLabel];
  textColor = [_placeholderLabel textColor];

  return textColor;
}

- (void)_deleteButtonPressed
{
  searchField = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  [searchField deleteBackward];
}

- (void)_performCancelAction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchBarCancelButtonClicked:self];
  }

  searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [searchDisplayController searchBarCancelButtonClicked:self];

  [(UISearchController *)self->__searchController _searchBarCancelButtonClicked:self];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel__cancelOperation_ == action)
  {
    cancelButton = [(_UISearchBarVisualProviderBase *)self->_visualProvider cancelButton];
    v4 = cancelButton != 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UISearchBar;
    return [UIView canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }

  return v4;
}

- (void)_cancelOperation:(id)operation
{
  cancelButton = [(_UISearchBarVisualProviderBase *)self->_visualProvider cancelButton];

  if (cancelButton)
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

  searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [searchDisplayController searchBarResultsListButtonClicked:self];
}

- (void)_searchFieldBeginEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchBarTextDidBeginEditing:self];
  }

  searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [searchDisplayController searchBarTextDidBeginEditing:self];

  [(UISearchController *)self->__searchController _searchBarTextDidBeginEditing:self];
  cancelButton = [(_UISearchBarVisualProviderBase *)self->_visualProvider cancelButton];
  [cancelButton setEnabled:1];
}

- (void)_searchFieldEndEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchBarTextDidEndEditing:self];
  }

  autoDisableCancelButton = [(_UISearchBarVisualProviderBase *)self->_visualProvider autoDisableCancelButton];
  cancelButton = [(_UISearchBarVisualProviderBase *)self->_visualProvider cancelButton];
  [cancelButton setEnabled:!autoDisableCancelButton];
}

- (void)_searchFieldReturnPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchBarSearchButtonClicked:self];
  }

  searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  [searchDisplayController searchBarSearchButtonClicked:self];

  [(UISearchController *)self->__searchController _searchBarSearchButtonClicked:self];
}

- (void)_searchFieldTextChanged:(BOOL)changed
{
  changedCopy = changed;
  searchField = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    searchText = [searchField searchText];
    [WeakRetained searchBar:self textDidChange:searchText];
  }

  searchDisplayController = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchDisplayController];
  searchText2 = [searchField searchText];
  [searchDisplayController searchBar:self textDidChange:searchText2];

  searchController = self->__searchController;
  searchText3 = [searchField searchText];
  [(UISearchController *)searchController _searchBar:self textDidChange:searchText3 programatically:changedCopy];
}

- (void)_delegateChangedForSearchField:(id)field
{
  fieldCopy = field;
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];

  if (_searchBarTextField == fieldCopy)
  {
    visualProvider = self->_visualProvider;
    activeSearchFieldInToolbar = [(_UISearchBarVisualProviderBase *)visualProvider activeSearchFieldInToolbar];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__UISearchBar__delegateChangedForSearchField___block_invoke;
    v8[3] = &unk_1E70F8130;
    v9 = fieldCopy;
    [(_UISearchBarVisualProviderBase *)visualProvider updateOriginalAndSiblingClonesOfSearchField:activeSearchFieldInToolbar updates:v8];
  }
}

void __46__UISearchBar__delegateChangedForSearchField___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 delegate];
  [v3 setDelegate:v4];
}

- (void)_selectionChangedForSearchField:(id)field
{
  fieldCopy = field;
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];

  if (_searchBarTextField == fieldCopy)
  {
    selectionRange = [fieldCopy selectionRange];
    v8 = v7;
    visualProvider = self->_visualProvider;
    activeSearchFieldInToolbar = [(_UISearchBarVisualProviderBase *)visualProvider activeSearchFieldInToolbar];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__UISearchBar__selectionChangedForSearchField___block_invoke;
    v12[3] = &__block_descriptor_48_e27_v16__0__UISearchTextField_8l;
    v12[4] = selectionRange;
    v12[5] = v8;
    [(_UISearchBarVisualProviderBase *)visualProvider updateOriginalAndSiblingClonesOfSearchField:activeSearchFieldInToolbar updates:v12];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained _searchBarSelectionChanged:self];
    }
  }
}

- (void)insertTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  text = [_searchBarTextField text];

  if ([(UISearchController *)self->__searchController _delegateWantsInsertSearchFieldTextSuggestion])
  {
    [(UISearchController *)self->__searchController _sendDelegateInsertSearchFieldTextSuggestion:suggestionCopy];
  }

  else
  {
    _searchBarTextField2 = [(UISearchBar *)self _searchBarTextField];
    [_searchBarTextField2 _defaultInsertTextSuggestion:suggestionCopy];
  }

  _searchBarTextField3 = [(UISearchBar *)self _searchBarTextField];
  text2 = [_searchBarTextField3 text];
  v9 = [text isEqualToString:text2];

  if ((v9 & 1) == 0)
  {
    [(UISearchBar *)self _searchFieldTextChanged:1];
  }
}

- (BOOL)_disableAutomaticKeyboardUI
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  return userInterfaceIdiom == 3;
}

- (BOOL)_enableAutomaticKeyboardPressDone
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 3;

  return v3;
}

- (void)reloadInputViews
{
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  [_searchBarTextField reloadInputViews];
}

- (BOOL)canBecomeFirstResponder
{
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  canBecomeFirstResponder = [_searchBarTextField canBecomeFirstResponder];

  return canBecomeFirstResponder;
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
    _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
    becomeFirstResponder = [_searchBarTextField becomeFirstResponder];

    return becomeFirstResponder;
  }
}

- (BOOL)canResignFirstResponder
{
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  canResignFirstResponder = [_searchBarTextField canResignFirstResponder];

  return canResignFirstResponder;
}

- (BOOL)resignFirstResponder
{
  _searchBarTextField = [(UISearchBar *)self _searchBarTextField];
  resignFirstResponder = [_searchBarTextField resignFirstResponder];

  return resignFirstResponder;
}

- (int64_t)_textInputSource
{
  searchField = [(_UISearchBarVisualProviderBase *)self->_visualProvider searchField];
  _textInputSource = [searchField _textInputSource];

  return _textInputSource;
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

- (void)_setForceLegacyVisual:(BOOL)visual
{
  if (self->_forceLegacyVisual != visual)
  {
    self->_forceLegacyVisual = visual;
    [(_UISearchBarVisualProviderBase *)self->_visualProvider teardown];
    visualProvider = self->_visualProvider;
    self->_visualProvider = 0;

    [(UISearchBar *)self _setUpVisualProvider];
  }
}

- (id)_tokens
{
  searchField = [(UISearchBar *)self searchField];
  tokens = [searchField tokens];

  return tokens;
}

- (void)_insertToken:(id)token atIndex:(unint64_t)index
{
  tokenCopy = token;
  searchField = [(UISearchBar *)self searchField];
  [searchField insertToken:tokenCopy atIndex:index];

  [(UISearchBar *)self _searchFieldTextChanged:1];
}

- (void)_removeTokenAtIndex:(unint64_t)index
{
  searchField = [(UISearchBar *)self searchField];
  [searchField removeTokenAtIndex:index];

  [(UISearchBar *)self _searchFieldTextChanged:1];
}

- (void)_replaceSearchTextWithToken:(id)token
{
  tokenCopy = token;
  searchField = [(UISearchBar *)self searchField];
  textualRange = [searchField textualRange];
  tokens = [searchField tokens];
  [searchField replaceTextualPortionOfRange:textualRange withToken:tokenCopy atIndex:{objc_msgSend(tokens, "count")}];

  [(UISearchBar *)self _searchFieldTextChanged:1];
}

- (void)_setTokenBackgroundColor:(id)color
{
  colorCopy = color;
  searchField = [(UISearchBar *)self searchField];
  [searchField setTokenBackgroundColor:colorCopy];
}

- (id)_selectedTokens
{
  searchField = [(UISearchBar *)self searchField];
  selectedTextRange = [searchField selectedTextRange];
  v4 = [searchField tokensInRange:selectedTextRange];

  return v4;
}

- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide
{
  result = 0.0;
  if (guide)
  {
    v7.receiver = self;
    v7.super_class = UISearchBar;
    [(UIView *)&v7 _autolayoutSpacingAtEdge:*&edge forAttribute:attribute inContainer:container isGuide:1, 0.0];
  }

  return result;
}

@end