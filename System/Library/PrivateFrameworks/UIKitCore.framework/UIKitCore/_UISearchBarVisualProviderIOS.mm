@interface _UISearchBarVisualProviderIOS
- (BOOL)_getNavigationTitleLeadingInset:(double *)inset trailingInset:(double *)trailingInset isRTL:(BOOL)l;
- (BOOL)canShowDictationButton;
- (BOOL)containsScopeBar;
- (BOOL)hasDarkUIAppearance;
- (BOOL)includedInPresentationByOffscreenAnimator;
- (BOOL)isAtTop;
- (BOOL)isInBarButNotHosted;
- (BOOL)isIntegratedAsEnabledSearchIconButton;
- (BOOL)isIntegratedIntoToolbarOrNavigationBarContent;
- (BOOL)requiresSearchTextField;
- (BOOL)scopeBarIsVisible;
- (BOOL)searchFieldContainerViewNeedsLayoutForTransitionFromLayoutState:(id)state toLayout:(id)layout;
- (BOOL)showsCancelButton;
- (BOOL)showsScopeBar;
- (BOOL)supportsDynamicType;
- (BOOL)usesBackdrop;
- (BOOL)usesClearForCancel;
- (CGRect)boundsForSearchBarAndUpdateIfNecessaryFromSuggestedBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (UIEdgeInsets)defaultScopeBarInsets;
- (UIEdgeInsets)effectiveContentInset;
- (UIEdgeInsets)minimumContentInset;
- (UIEdgeInsets)recalculatedEffectiveContentInsetForLayoutState:(int64_t)state;
- (UIEdgeInsets)recalculatedEffectiveContentInsetForLayoutState:(int64_t)state forcingInlineCalculation:(BOOL)calculation getScopeBarContentInset:(UIEdgeInsets *)inset;
- (UIEdgeInsets)scopeBarInsets;
- (UIOffset)searchFieldBackgroundPositionAdjustment;
- (_UISearchBarVisualProviderIOS)initWithDelegate:(id)delegate;
- (double)availableBoundsWidth;
- (double)availableBoundsWidthForSize:(CGSize)size;
- (double)barHeightForBarMetrics:(int64_t)metrics barPosition:(int64_t)position;
- (double)barHeightForBarMetrics:(int64_t)metrics withEffectiveInsets:(UIEdgeInsets)insets;
- (double)defaultHeightForOrientation:(int64_t)orientation;
- (double)effectiveBackgroundExtension;
- (double)hostedScopeBarHeightForBarMetrics:(int64_t)metrics;
- (double)idealInlineWidthForLayoutState:(int64_t)state;
- (double)minimumHorizontalMargin;
- (double)navigationBarContentHeight;
- (double)scopeBarHeight;
- (double)searchFieldHeight;
- (id)_borrowSearchTextField;
- (id)_searchBarTextField;
- (id)_searchBarTextFieldIfNotLoanedOut;
- (id)activeSearchFieldInToolbar;
- (id)cancelBarButtonItem;
- (id)colorForComponent:(unint64_t)component disabled:(BOOL)disabled;
- (id)currentSeparatorImage;
- (id)floatingSearchIconView;
- (id)floatingSearchIconViewSuitableForMeasuring;
- (id)imageForSearchBarIcon:(int64_t)icon state:(unint64_t)state;
- (id)internalImageForSearchBarIcon:(int64_t)icon state:(unint64_t)state customImage:(BOOL *)image;
- (id)leftButton;
- (id)makeShadowView;
- (id)navBarTitleViewDataSource;
- (id)runtimeOnlyViews;
- (id)searchIconBarButtonItem;
- (id)searchNavigationItem;
- (id)shadowView;
- (id)textColor;
- (id)viewStackedInNavigationBar;
- (int64_t)barMetricsForOrientation:(int64_t)orientation;
- (int64_t)barPosition;
- (int64_t)searchFieldLeftViewMode;
- (void)_establishScopeBarInSearchBarIfNecessary;
- (void)_resetScopeBarFlagsAfterCompleteOrCancelTransition;
- (void)_setAutoDisableCancelButton:(BOOL)button;
- (void)_setBarTintColor:(id)color;
- (void)_setHideBackground:(BOOL)background;
- (void)_setIntegratedInNavigationBar:(BOOL)bar inToolbar:(BOOL)toolbar;
- (void)_setSearchResultsButtonSelected:(BOOL)selected;
- (void)_setShowsBookmarkButton:(BOOL)button;
- (void)_setShowsCancelButton:(BOOL)button;
- (void)_setShowsScopeBar:(BOOL)bar;
- (void)_setShowsSearchResultsButton:(BOOL)button;
- (void)_updateScrollPocketInteraction;
- (void)_updateSearchTextFieldBackgroundMaterial;
- (void)addSearchFieldClone:(id)clone;
- (void)allowCursorToAppear:(BOOL)appear;
- (void)animateShowsScopeBarAnimatingOut:(void *)out;
- (void)animateTransitionToSearchLayoutState:(int64_t)state;
- (void)applySearchBarStyle;
- (void)cancelTransitionToSearchLayoutState:(int64_t)state;
- (void)cleanUpDictationMicsWithSearchField:(id)field;
- (void)completeTransitionToSearchLayoutState:(int64_t)state;
- (void)configureLayout:(id)layout forState:(int64_t)state;
- (void)destroyCancelButton;
- (void)destroyPromptLabel;
- (void)dictationAvailabilityDidChange:(id)change;
- (void)dictationButtonPressed:(id)pressed withEvent:(id)event;
- (void)dictationControllerDidFinish:(id)finish;
- (void)displayNavBarCancelButton:(BOOL)button animated:(BOOL)animated;
- (void)driveTransitionToSearchLayoutState:(int64_t)state;
- (void)effectiveBarTintColorDidChange:(BOOL)change;
- (void)freezeForAnimatedTransitionToSearchLayoutState:(int64_t)state;
- (void)getNavigationBarHostedTopInset:(double *)inset bottomInset:(double *)bottomInset forActive:(BOOL)active isCompact:(BOOL)compact;
- (void)getOverrideContentInsets:(UIEdgeInsets *)insets overriddenEdges:(unint64_t *)edges;
- (void)getTopAttachedTopInset:(double *)inset bottomInset:(double *)bottomInset isCompact:(BOOL)compact;
- (void)getTopInset:(double *)inset bottomInset:(double *)bottomInset forBarMetrics:(int64_t)metrics barPosition:(int64_t)position;
- (void)getTopInset:(double *)inset bottomInset:(double *)bottomInset forBarMetrics:(int64_t)metrics barPosition:(int64_t)position layoutState:(int64_t)state forcingInlineCalculation:(BOOL)calculation;
- (void)growToSearchFieldIfNecessary;
- (void)layoutBackgroundViewConsideringTopBarStatusAndChangedHeight:(BOOL)height;
- (void)layoutSubviews;
- (void)layoutSubviewsInBounds:(CGRect)bounds;
- (void)lendableViewContainer:(id)container didReturnView:(id)view;
- (void)navigationBarSlideTransitionWillBegin;
- (void)navigationBarTransitionCompleted:(int64_t)completed willBeDisplayed:(BOOL)displayed;
- (void)navigationBarTransitionWillBegin:(int64_t)begin willBeDisplayed:(BOOL)displayed;
- (void)prepare;
- (void)prepareForTransitionToSearchLayoutState:(int64_t)state;
- (void)removeBackdropVisualEffectView;
- (void)removeLegacyBackdropView;
- (void)revertViewHierarchyIfNecessary;
- (void)setActiveSearchDeferringScopeBar:(BOOL)bar;
- (void)setAdditionalPaddingForCancelButtonAtLeadingEdge:(double)edge;
- (void)setAdditionalPaddingForSearchFieldAtLeadingEdge:(double)edge;
- (void)setAutoDisableCancelButton:(BOOL)button;
- (void)setBackdropStyle:(int64_t)style;
- (void)setBackgroundExtension:(double)extension;
- (void)setBackgroundImage:(id)image forBarPosition:(int64_t)position barMetrics:(int64_t)metrics;
- (void)setBackgroundLayoutNeedsUpdate;
- (void)setBarPosition:(int64_t)position;
- (void)setBarStyle:(int64_t)style;
- (void)setBarTintColor:(id)color forceUpdate:(BOOL)update;
- (void)setBarTranslucence:(int64_t)translucence;
- (void)setCancelButton:(id)button;
- (void)setCenterPlaceholder:(BOOL)placeholder;
- (void)setClippingViewActive:(BOOL)active;
- (void)setClippingViewBounds:(CGRect)bounds;
- (void)setDeferredAutomaticShowsScopeBarInNavigationBar:(id)bar hasContent:(BOOL)content;
- (void)setDelegateSearchFieldFrameManipulationBlock:(id)block;
- (void)setDrawsBackground:(BOOL)background;
- (void)setDrawsBackgroundInPalette:(BOOL)palette;
- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setFloating:(BOOL)floating;
- (void)setHostedByNavigationBar:(BOOL)bar;
- (void)setHostedInlineByNavigationBar:(BOOL)bar;
- (void)setHostedInlineByToolbar:(BOOL)toolbar;
- (void)setImage:(id)image forSearchBarIcon:(int64_t)icon state:(unint64_t)state;
- (void)setInNavigationPalette:(BOOL)palette;
- (void)setLayoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback:(id)callback;
- (void)setLeftInsetForInlineSearch:(double)search;
- (void)setMinimumContentInset:(UIEdgeInsets)inset;
- (void)setNavigationBarWantsFlexibleInlineSearch:(BOOL)search;
- (void)setOverrideContentInsets:(UIEdgeInsets)insets forRectEdges:(unint64_t)edges;
- (void)setPlacedInNavigationBar:(BOOL)bar;
- (void)setPlacedInToolbar:(BOOL)toolbar;
- (void)setPrompt:(id)prompt;
- (void)setProvidesRestingMeasurementValues:(BOOL)values;
- (void)setReliesOnNavigationBarBackdrop:(BOOL)backdrop;
- (void)setRequiresSearchTextField:(BOOL)field;
- (void)setRightInsetForInlineSearch:(double)search;
- (void)setScopeBarBackgroundImage:(id)image;
- (void)setScopeTitles:(id)titles;
- (void)setSearchBarStyle:(unint64_t)style;
- (void)setSearchDisplayController:(id)controller;
- (void)setSearchDisplayControllerShowsCancelButton:(BOOL)button;
- (void)setSearchField:(id)field;
- (void)setSearchFieldBackgroundImage:(id)image forState:(unint64_t)state;
- (void)setSearchFieldBackgroundPositionAdjustment:(UIOffset)adjustment;
- (void)setSearchFieldLeftViewMode:(int64_t)mode;
- (void)setSearchResultsButtonSelected:(BOOL)selected;
- (void)setSeparatorImage:(id)image;
- (void)setShadowVisibleIfNecessary:(BOOL)necessary;
- (void)setShowDictationButton:(BOOL)button forSearchField:(id)field shouldUpdateView:(BOOL)view;
- (void)setShowDictationButton:(BOOL)button shouldUpdateView:(BOOL)view;
- (void)setShowsBookmarkButton:(BOOL)button;
- (void)setShowsCancelButton:(BOOL)button animated:(BOOL)animated protectSearchController:(BOOL)controller;
- (void)setShowsCancelButton:(BOOL)button onBehalfOfSearchController:(id)controller;
- (void)setShowsClearButtonWhenEmpty:(BOOL)empty;
- (void)setShowsDeleteButton:(BOOL)button;
- (void)setShowsScopeBar:(BOOL)bar animateOpacity:(BOOL)opacity;
- (void)setShowsSearchResultsButton:(BOOL)button;
- (void)setShowsSeparator:(BOOL)separator;
- (void)setSuppressFirstResponderOnTransitionToLayoutStateSearching:(BOOL)searching;
- (void)setTextFieldManagedInNSToolbar:(BOOL)toolbar;
- (void)setUpCancelButtonWithAppearance:(id)appearance;
- (void)setUpDictationMicWithSearchField:(id)field;
- (void)setUpFloatingSearchIconView;
- (void)setUpLeftButton;
- (void)setUpNewSearchField:(id)field;
- (void)setUpPromptLabel;
- (void)setUpScopeBar;
- (void)setUpSearchBarSearchContainerIfNecessary;
- (void)setUpSearchField;
- (void)setUpSearchNavigationItem;
- (void)setUsesEmbeddedAppearance:(BOOL)appearance;
- (void)shrinkToButtonIfNecessary;
- (void)teardown;
- (void)updateArtForSearchField:(id)field;
- (void)updateBackgroundToBackdropStyle:(int64_t)style;
- (void)updateCancelButtonForDynamicType;
- (void)updateControlSizeForSearchField:(id)field;
- (void)updateDictationButtonActiveState;
- (void)updateDictationButtonForDynamicTypeWithSearchField:(id)field;
- (void)updateEffectiveContentInset;
- (void)updateForAllowedToShowDictationChange;
- (void)updateForDrawsBackgroundInPalette;
- (void)updateForDynamicType;
- (void)updateForDynamicType:(id)type;
- (void)updateIfNecessaryForOldSize:(CGSize)size;
- (void)updateIsPinnedInNavigationBar:(BOOL)bar;
- (void)updateMagnifyingGlassView;
- (void)updateMagnifyingGlassViewForSearchField:(id)field;
- (void)updateNavigationBarLayoutInsertDataForSearchBar:(id)bar collapsibleScopeBar:(id)scopeBar forLayoutState:(int64_t)state;
- (void)updateNeedForBackdrop;
- (void)updateOriginalAndSiblingClonesOfSearchField:(id)field updates:(id)updates;
- (void)updatePlaceholderColor;
- (void)updateRightView;
- (void)updateRightViewForSearchField:(id)field;
- (void)updateScopeBarBackground;
- (void)updateSearchBarOpacity;
- (void)updateSearchFieldArt;
- (void)updateSearchFieldControlSize;
- (void)updateSearchFieldForDynamicType;
- (void)updateShowsClearButtonWhenEmpty;
- (void)updateTextFromActiveSearchField;
@end

@implementation _UISearchBarVisualProviderIOS

- (void)prepare
{
  v16.receiver = self;
  v16.super_class = _UISearchBarVisualProviderIOS;
  [(_UISearchBarVisualProviderBase *)&v16 prepare];
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!searchBar)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderIOS.m" lineNumber:1187 description:@"visual provider can not prepare without the search bar"];
  }

  self->_tableViewIndexWidth = 0.0;
  *&self->_contentInsetPrivateMinOrOverride.top = 0u;
  *&self->_contentInsetPrivateMinOrOverride.bottom = 0u;
  *&self->_searchBarVisualProviderFlags |= 0x80000uLL;
  [(_UISearchBarVisualProviderIOS *)self updateEffectiveContentInset];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v5 = _UIMainBundleIdentifier();
    [v5 isEqualToString:@"com.sina.weibo"];
  }

  v6 = objc_alloc(objc_opt_class());
  [searchBar bounds];
  v7 = [v6 initWithFrame:?];
  searchBarClippingView = self->_searchBarClippingView;
  self->_searchBarClippingView = v7;

  [(UIView *)self->_searchBarClippingView setAutoresizingMask:18];
  [(UIView *)self->_searchBarClippingView setClipsToBounds:1];
  [searchBar addSubview:self->_searchBarClippingView];
  v9 = UISearchBarUsesModernAppearance();
  v10 = 0x1800008600;
  if (!v9)
  {
    v10 = 0x1800008E00;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFFFF7FFLL | v10);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_dictationAvailabilityDidChange_ name:@"UIKeyboardDictationAvailabilityDidChangeNotification" object:0];

  v12 = [UISearchBarBackground alloc];
  [searchBar bounds];
  v13 = [(UISearchBarBackground *)v12 initWithFrame:?];
  searchBarBackground = self->_searchBarBackground;
  self->_searchBarBackground = v13;

  [searchBar insertSubview:self->_searchBarBackground atIndex:0];
}

- (void)setUpSearchField
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    *&self->_searchBarVisualProviderFlags |= 0x100000000000uLL;
    v10 = searchBar;
    [(_UISearchBarVisualProviderIOS *)self setUpSearchBarSearchContainerIfNecessary];
    _classForSearchTextField = [v10 _classForSearchTextField];
    if (_classForSearchTextField == objc_opt_class())
    {
      _classForSearchTextField = objc_opt_class();
    }

    _initWithDeferredSearchIconImageConfiguration = [[_classForSearchTextField alloc] _initWithDeferredSearchIconImageConfiguration];
    [(_UISearchBarVisualProviderIOS *)self setUpNewSearchField:_initWithDeferredSearchIconImageConfiguration];
    v6 = [[_UILendableViewContainer alloc] initWithView:_initWithDeferredSearchIconImageConfiguration];
    lendableSearchField = self->_lendableSearchField;
    self->_lendableSearchField = v6;

    [(_UILendableViewContainer *)self->_lendableSearchField setDelegate:self];
    *&self->_searchBarVisualProviderFlags &= ~0x100000000000uLL;
    [(_UISearchBarVisualProviderIOS *)self updateShowsClearButtonWhenEmpty];
    if ([(_UISearchBarVisualProviderIOS *)self centerPlaceholder])
    {
      textInputTraits = [v10 textInputTraits];
      [textInputTraits setDeferBecomingResponder:1];
    }

    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if ((*&searchBarVisualProviderFlags & 0x40000000) == 0)
    {
      [(UIView *)self->_searchFieldContainerView addSubview:_initWithDeferredSearchIconImageConfiguration];
      [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
      searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    }

    if ((*&searchBarVisualProviderFlags & 0x38) == 0x10)
    {
      [(_UISearchBarVisualProviderIOS *)self applySearchBarStyle];
    }

    searchBar = v10;
  }
}

- (BOOL)supportsDynamicType
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  _effectivelySupportsDynamicType = [searchBar _effectivelySupportsDynamicType];

  return _effectivelySupportsDynamicType;
}

- (void)updateEffectiveContentInset
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v21 = searchBar;
    transitioner = self->_transitioner;
    if (transitioner)
    {
      activeLayout = [(_UISearchBarTransitionerBase *)transitioner activeLayout];
      -[_UISearchBarVisualProviderIOS recalculatedEffectiveContentInsetForLayoutState:](self, "recalculatedEffectiveContentInsetForLayoutState:", [activeLayout representedLayoutState]);
      v19 = v7;
      v20 = v6;
      v17 = v9;
      v18 = v8;

      v11 = v17;
      v10 = v18;
      v13 = v19;
      v12 = v20;
    }

    else
    {
      [(_UISearchBarVisualProviderIOS *)self recalculatedEffectiveContentInsetForLayoutState:self->_layoutState];
    }

    v14.f64[0] = v10;
    v14.f64[1] = v11;
    v15.f64[0] = v12;
    v15.f64[1] = v13;
    searchBar = v21;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v15, *&self->_effectiveContentInset.top), vceqq_f64(v14, *&self->_effectiveContentInset.bottom)))) & 1) == 0)
    {
      self->_effectiveContentInset.top = v12;
      self->_effectiveContentInset.left = v13;
      self->_effectiveContentInset.bottom = v10;
      self->_effectiveContentInset.right = v11;
      window = [v21 window];

      searchBar = v21;
      if (window)
      {
        [v21 setNeedsLayout];
        [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
        [(_UISearchBarScopeContainerView *)self->_scopeBarContainerView setNeedsLayout];
        searchBar = v21;
      }
    }
  }
}

- (id)_searchBarTextField
{
  if ((*(&self->_searchBarVisualProviderFlags + 5) & 0x10) != 0)
  {
    v6 = 0;
  }

  else
  {
    if (!self->_lendableSearchField)
    {
      [(_UISearchBarVisualProviderIOS *)self setUpSearchField];
    }

    activeSearchFieldInToolbar = [(_UISearchBarVisualProviderIOS *)self activeSearchFieldInToolbar];
    v4 = activeSearchFieldInToolbar;
    if (activeSearchFieldInToolbar)
    {
      ownedView = activeSearchFieldInToolbar;
    }

    else
    {
      ownedView = [(_UILendableViewContainer *)self->_lendableSearchField ownedView];
    }

    v6 = ownedView;
  }

  return v6;
}

- (double)minimumHorizontalMargin
{
  v3 = 8.0;
  if (_UISolariumEnabled())
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    traitCollection = [searchBar traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      return 0.0;
    }

    else
    {
      return 8.0;
    }
  }

  return v3;
}

- (void)setUpSearchBarSearchContainerIfNecessary
{
  if (!self->_searchFieldContainerView)
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    v4 = searchBar;
    if (searchBar)
    {
      v10 = searchBar;
      v5 = [_UISearchBarSearchContainerView alloc];
      [v10 bounds];
      v6 = [(UIView *)v5 initWithFrame:?];
      searchFieldContainerView = self->_searchFieldContainerView;
      self->_searchFieldContainerView = v6;

      [(UIView *)self->_searchFieldContainerView setAutoresizingMask:2];
      if (![(_UISearchBarVisualProviderIOS *)self supportsDynamicType])
      {
        v8 = self->_searchFieldContainerView;
        v9 = objc_opt_new();
        [(UIView *)v8 addInteraction:v9];
      }

      [v10 addSubview:self->_searchFieldContainerView];
      [v10 setNeedsLayout];
      v4 = v10;
    }
  }
}

- (void)updateSearchFieldForDynamicType
{
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  [(_UISearchBarVisualProviderIOS *)self updateForDynamicType:_searchBarTextField];
}

- (BOOL)canShowDictationButton
{
  LODWORD(v3) = [(_UISearchBarVisualProviderIOS *)self wantsDictationButton];
  if (v3)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if ((*&searchBarVisualProviderFlags & 0x2000000000) == 0)
    {
      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags | 0x2000000000);
      [(_UISearchBarVisualProviderIOS *)self updateDictationButton];
      searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    }

    return (*&searchBarVisualProviderFlags >> 36) & 1;
  }

  return v3;
}

- (void)updateForAllowedToShowDictationChange
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v10 = searchBar;
    v4 = +[UIDictationController sharedInstance];
    traitCollection = [v10 traitCollection];
    v6 = [v4 dictationSearchFieldUISupportsTraitCollection:traitCollection];

    v7 = 0x2000000000;
    if (v6)
    {
      v8 = +[UIDictationController sharedInstance];
      dictationSearchFieldUIEnabled = [v8 dictationSearchFieldUIEnabled];

      if (dictationSearchFieldUIEnabled)
      {
        v7 = 0x3000000000;
      }
    }

    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFCFFFFFFFFFLL | v7);
    searchBar = v10;
  }
}

- (void)updateSearchFieldControlSize
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v5 = searchBar;
    _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
    [(_UISearchBarVisualProviderIOS *)self updateControlSizeForSearchField:_searchBarTextField];

    searchBar = v5;
  }
}

- (void)updateMagnifyingGlassView
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];

    if (_searchBarTextField)
    {
      _searchBarTextField2 = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
      [(_UISearchBarVisualProviderIOS *)self updateMagnifyingGlassViewForSearchField:_searchBarTextField2];
    }
  }
}

- (void)updateRightView
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v5 = searchBar;
    _searchBarTextField = [searchBar _searchBarTextField];
    [(_UISearchBarVisualProviderIOS *)self updateRightViewForSearchField:_searchBarTextField];

    searchBar = v5;
  }
}

- (void)updateSearchFieldArt
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v5 = searchBar;
    _searchBarTextField = [searchBar _searchBarTextField];
    [(_UISearchBarVisualProviderIOS *)self updateArtForSearchField:_searchBarTextField];

    searchBar = v5;
  }
}

- (BOOL)usesBackdrop
{
  backgroundImage = [(UISearchBarBackground *)self->_searchBarBackground backgroundImage];
  if (backgroundImage)
  {
    v4 = 0;
  }

  else
  {
    v4 = (*&self->_searchBarVisualProviderFlags & 0x38) == 0x10 && (*&self->_searchBarVisualProviderFlags & 0x2000) == 0;
  }

  return v4;
}

- (BOOL)scopeBarIsVisible
{
  [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_currentLayout];
  currentLayout = self->_currentLayout;

  return [(_UISearchBarLayout *)currentLayout hasScopeBar];
}

- (void)updateNeedForBackdrop
{
  if ([(_UISearchBarVisualProviderIOS *)self usesBackdrop])
  {
    if (self->_backdropStyle == 2005)
    {
      [(_UISearchBarVisualProviderIOS *)self removeLegacyBackdropView];
      if (!self->_backdropVisualEffectView)
      {
        v5 = [UIVisualEffectView alloc];
        v6 = [UIBlurEffect effectWithStyle:10];
        v7 = [(UIVisualEffectView *)v5 initWithEffect:v6];
        backdropVisualEffectView = self->_backdropVisualEffectView;
        self->_backdropVisualEffectView = v7;

        [(UIView *)self->_searchBarBackground addSubview:self->_backdropVisualEffectView];
        v9 = self->_backdropVisualEffectView;

        [(UIView *)v9 setUserInteractionEnabled:1];
      }
    }

    else
    {
      [(_UISearchBarVisualProviderIOS *)self removeBackdropVisualEffectView];
      backdrop = self->_backdrop;
      backdropStyle = self->_backdropStyle;
      if (backdrop)
      {
        [(_UIBackdropView *)backdrop transitionToPrivateStyle:backdropStyle];
      }

      else
      {
        if (backdropStyle)
        {
          v10 = self->_backdropStyle;
        }

        else
        {
          v10 = -2;
        }

        v11 = [[_UIBackdropView alloc] initWithPrivateStyle:v10];
        v12 = self->_backdrop;
        self->_backdrop = v11;

        [(UIView *)self->_searchBarBackground addSubview:self->_backdrop];
        [(UIView *)self->_backdrop setUserInteractionEnabled:1];
      }

      v13 = self->_backdropStyle == 0;
      v14 = self->_backdrop;

      [(UIView *)v14 setHidden:v13];
    }
  }

  else
  {
    [(_UISearchBarVisualProviderIOS *)self removeLegacyBackdropView];

    [(_UISearchBarVisualProviderIOS *)self removeBackdropVisualEffectView];
  }
}

- (void)removeLegacyBackdropView
{
  [(UIView *)self->_backdrop removeFromSuperview];
  backdrop = self->_backdrop;
  self->_backdrop = 0;
}

- (void)removeBackdropVisualEffectView
{
  [(UIView *)self->_backdropVisualEffectView removeFromSuperview];
  backdropVisualEffectView = self->_backdropVisualEffectView;
  self->_backdropVisualEffectView = 0;
}

- (void)updatePlaceholderColor
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v9 = searchBar;
    _searchBarTextField = [searchBar _searchBarTextField];
    _placeholderLabel = [_searchBarTextField _placeholderLabel];

    v6 = [(_UISearchBarVisualProviderIOS *)self colorForComponent:3 disabled:0];
    if (dyld_program_sdk_at_least())
    {
      _defaultAttributes = [_placeholderLabel _defaultAttributes];
      v8 = [_defaultAttributes mutableCopy];

      [v8 setObject:v6 forKeyedSubscript:*off_1E70EC920];
      [_placeholderLabel _setDefaultAttributes:v8];
    }

    else
    {
      [_placeholderLabel setTextColor:v6];
    }

    searchBar = v9;
  }
}

- (id)_searchBarTextFieldIfNotLoanedOut
{
  lendableSearchField = self->_lendableSearchField;
  if (!lendableSearchField)
  {
    [(_UISearchBarVisualProviderIOS *)self setUpSearchField];
    lendableSearchField = self->_lendableSearchField;
  }

  return [(_UILendableViewContainer *)lendableSearchField view];
}

- (UIEdgeInsets)defaultScopeBarInsets
{
  v2 = 7.0;
  v3 = 8.0;
  v4 = 8.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)effectiveBackgroundExtension
{
  v27 = *MEMORY[0x1E69E9840];
  backgroundExtension = self->_backgroundExtension;
  if (backgroundExtension == 0.0)
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    if ([searchBar barPosition] != 3)
    {
LABEL_16:

      return backgroundExtension;
    }

    window = [searchBar window];
    if (!window || ([searchBar _searchController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) || (objc_msgSend(searchBar, "superview"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "safeAreaInsets"), backgroundExtension = v7, v6, backgroundExtension != 0.0))
    {
LABEL_15:

      goto LABEL_16;
    }

    _isHostedInAnotherProcess = [(__CFString *)window _isHostedInAnotherProcess];
    rootViewController = [(__CFString *)window rootViewController];
    v10 = rootViewController;
    if (_isHostedInAnotherProcess)
    {
      presentedViewController = [rootViewController presentedViewController];
      v12 = presentedViewController;
      if (presentedViewController)
      {
        firstObject = presentedViewController;
      }

      else
      {
        rootViewController2 = [(__CFString *)window rootViewController];
        childViewControllers = [rootViewController2 childViewControllers];
        firstObject = [childViewControllers firstObject];
      }

      v10 = firstObject;
    }

    _viewControllerForRotation = [v10 _viewControllerForRotation];

    if (_viewControllerForRotation && (_viewControllerForRotation[94] & 3u) - 1 < 2)
    {
      view = [_viewControllerForRotation view];
      [view safeAreaInsets];
      backgroundExtension = v18;

LABEL_14:
      goto LABEL_15;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v20 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      if (_viewControllerForRotation)
      {
        superview = [MEMORY[0x1E696AEC0] stringWithFormat:@" viewController is not appearing or appeared: %@", _viewControllerForRotation];;
        v24 = superview;
      }

      else
      {
        superview = [searchBar superview];
        v24 = &stru_1EFB14550;
        if (superview == window)
        {
          v24 = @". Don't make the search bar a direct subview of the window.";
        }
      }

      *buf = 138412290;
      v26 = v24;
      _os_log_fault_impl(&dword_188A29000, v20, OS_LOG_TYPE_FAULT, "Failed to find view controller source of information for search bar's background extension%@", buf, 0xCu);
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("Assert", &effectiveBackgroundExtension___s_category) + 8);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_26:

        [(__CFString *)window safeAreaInsets];
        backgroundExtension = v23;
        goto LABEL_14;
      }

      if (_viewControllerForRotation)
      {
        superview = [MEMORY[0x1E696AEC0] stringWithFormat:@" viewController is not appearing or appeared: %@", _viewControllerForRotation];;
        v22 = superview;
      }

      else
      {
        superview = [searchBar superview];
        v22 = &stru_1EFB14550;
        if (superview == window)
        {
          v22 = @". Don't make the search bar a direct subview of the window.";
        }
      }

      *buf = 138412290;
      v26 = v22;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Failed to find view controller source of information for search bar's background extension%@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  return backgroundExtension;
}

- (int64_t)barPosition
{
  if (self->_searchBarBackground)
  {
    return [(UISearchBarBackground *)self->_searchBarBackground _barPosition];
  }

  else
  {
    return self->_barPosition;
  }
}

- (BOOL)isInBarButNotHosted
{
  if ([(_UISearchBarVisualProviderIOS *)self isHostedByNavigationBar])
  {
    LOBYTE(v3) = 0;
  }

  else if (self->_navBarTitleViewLocation || (searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags, (*&searchBarVisualProviderFlags & 0x1000000) != 0))
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return (*&searchBarVisualProviderFlags >> 25) & 1;
  }

  return v3;
}

- (BOOL)showsCancelButton
{
  selfCopy = self;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  _searchController = [searchBar _searchController];
  automaticallyShowsCancelButton = [_searchController automaticallyShowsCancelButton];

  if (automaticallyShowsCancelButton)
  {
    LOBYTE(selfCopy) = selfCopy->_layoutState == 3;
  }

  else
  {
    LODWORD(selfCopy) = (*(&selfCopy->_searchBarVisualProviderFlags + 2) >> 2) & 1;
  }

  return selfCopy;
}

- (CGSize)intrinsicContentSize
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = searchBar;
  if (searchBar)
  {
    -[_UISearchBarVisualProviderIOS defaultHeightForOrientation:](self, "defaultHeightForOrientation:", [searchBar _expectedInterfaceOrientation]);
    v6 = -1.0;
    if (v5 == 0.0)
    {
      v7 = -1.0;
    }

    else
    {
      v7 = v5;
    }

    if ((*(&self->_searchBarVisualProviderFlags + 3) & 8) != 0)
    {
      transitioner = [(_UISearchBarVisualProviderIOS *)self transitioner];
      if (transitioner)
      {
        transitioner2 = [(_UISearchBarVisualProviderIOS *)self transitioner];
        activeLayout = [transitioner2 activeLayout];
      }

      else
      {
        activeLayout = self->_currentLayout;
      }

      [(_UISearchBarVisualProviderIOS *)self configureLayout:activeLayout forState:[(_UISearchBarLayout *)activeLayout representedLayoutState]];
      [(_UISearchBarLayout *)activeLayout prescribedSearchContainerWidth];
      if (v11 == 0.0)
      {
        v6 = -1.0;
      }

      else
      {
        v6 = v11;
      }
    }
  }

  else
  {
    v7 = -1.0;
    v6 = -1.0;
  }

  v12 = v6;
  v13 = v7;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)updateSearchBarOpacity
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v4 = searchBar;
    [searchBar setOpaque:{-[_UISearchBarVisualProviderIOS isTranslucent](self, "isTranslucent") ^ 1}];
    searchBar = v4;
  }
}

- (void)updateScopeBarBackground
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && self->_scopeBarContainerView)
  {
    v16 = searchBar;
    scopeBarBackgroundImage = [(_UISearchBarVisualProviderIOS *)self scopeBarBackgroundImage];

    if (scopeBarBackgroundImage)
    {
      scopeBarBackgroundView = self->_scopeBarBackgroundView;
      scopeBarBackgroundImage2 = [(_UISearchBarVisualProviderIOS *)self scopeBarBackgroundImage];
      [(UIImageView *)scopeBarBackgroundView setImage:scopeBarBackgroundImage2];

      [(UIImageView *)self->_scopeBarBackgroundView setBackgroundColor:0];
    }

    else
    {
      isHostedByNavigationBar = [(_UISearchBarVisualProviderIOS *)self isHostedByNavigationBar];
      v8 = self->_scopeBarBackgroundView;
      if (isHostedByNavigationBar)
      {
        [(UIImageView *)v8 setHidden:1];
      }

      else
      {
        [(UIImageView *)v8 setHidden:0];
        searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
        effectiveBarTintColor = [(_UISearchBarVisualProviderIOS *)self effectiveBarTintColor];
        v11 = effectiveBarTintColor;
        v12 = effectiveBarTintColor;
        if ((*&searchBarVisualProviderFlags & 0x20000) != 0)
        {
          v12 = _GetLightenedTintColor(effectiveBarTintColor);
        }

        v13 = _UISearchBarBackgroundFillColor(*&searchBarVisualProviderFlags & 7, v12);
        [(UIImageView *)self->_scopeBarBackgroundView setBackgroundColor:v13];

        if ((*&searchBarVisualProviderFlags & 0x20000) != 0)
        {
        }

        [(UIImageView *)self->_scopeBarBackgroundView setImage:0];
      }
    }

    isTranslucent = [(_UISearchBarVisualProviderIOS *)self isTranslucent];
    v15 = 0.96;
    if (!isTranslucent)
    {
      v15 = 1.0;
    }

    [(UIView *)self->_scopeBarBackgroundView setAlpha:v15];
    searchBar = v16;
  }
}

- (BOOL)requiresSearchTextField
{
  if ([(_UISearchBarVisualProviderIOS *)self isHostedInlineByNavigationBar])
  {
    return *(&self->_searchBarVisualProviderFlags + 5) & 1;
  }

  else
  {
    return 1;
  }
}

- (id)_borrowSearchTextField
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  [searchBar removeFromSuperview];

  lendableSearchField = self->_lendableSearchField;

  return [(_UILendableViewContainer *)lendableSearchField lend];
}

- (BOOL)isIntegratedIntoToolbarOrNavigationBarContent
{
  if ([(_UISearchBarVisualProviderIOS *)self isHostedInlineByToolbar])
  {
    return 1;
  }

  return [(_UISearchBarVisualProviderIOS *)self isHostedInlineByNavigationBar];
}

- (BOOL)showsScopeBar
{
  selfCopy = self;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  _searchController = [searchBar _searchController];
  if (!_searchController)
  {
    goto LABEL_9;
  }

  v5 = _searchController;
  _searchController2 = [searchBar _searchController];
  v7 = _searchController2;
  if (_searchController2)
  {
    v8 = (_searchController2[279] >> 5) & 3;
    if (v8 == 1)
    {

      goto LABEL_9;
    }

    if (!v8)
    {
      dyld_program_sdk_at_least();
    }
  }

  isActiveSearchDeferringScopeBar = [(_UISearchBarVisualProviderIOS *)selfCopy isActiveSearchDeferringScopeBar];

  if (isActiveSearchDeferringScopeBar)
  {
LABEL_9:
    LODWORD(selfCopy) = (*(&selfCopy->_searchBarVisualProviderFlags + 4) >> 1) & 1;
    goto LABEL_10;
  }

  LOBYTE(selfCopy) = selfCopy->_layoutState == 3;
LABEL_10:

  return selfCopy;
}

- (void)layoutSubviews
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v4 = searchBar;
    [searchBar bounds];
    [(_UISearchBarVisualProviderIOS *)self layoutSubviewsInBounds:?];
    searchBar = v4;
  }
}

- (id)viewStackedInNavigationBar
{
  if ([(_UISearchBarVisualProviderIOS *)self isIntegratedIntoToolbarOrNavigationBarContent])
  {
    if ([(_UISearchBarLayout *)self->_currentLayout needsReconfigurationForScopeBar])
    {
      [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_currentLayout];
    }

    if ([(_UISearchBarLayout *)self->_currentLayout hasScopeBar])
    {
      scopeBarContainerView = self->_scopeBarContainerView;
    }

    else
    {
      scopeBarContainerView = 0;
    }

    searchBar = scopeBarContainerView;
  }

  else
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  }

  return searchBar;
}

- (void)applySearchBarStyle
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v18 = searchBar;
    _searchBarTextField = [searchBar _searchBarTextField];
    _systemBackgroundView = [_searchBarTextField _systemBackgroundView];
    v6 = *&self->_searchBarVisualProviderFlags & 0x38;
    layer = [v18 layer];
    v8 = layer;
    if (v6 == 16)
    {
      [layer setAllowsGroupBlending:0];

      layer2 = [v18 layer];
      [layer2 setAllowsGroupOpacity:0];

      layer3 = [_systemBackgroundView layer];
      [layer3 setAllowsGroupBlending:0];

      [_systemBackgroundView setBackgroundContainer:1];
      if (dyld_program_sdk_at_least())
      {
        backdropStyle = self->_backdropStyle;
      }

      else
      {
        backdropStyle = 2;
      }

      v14 = _UISolariumEnabled();
      v15 = 2005;
      if (backdropStyle > 0x7D5)
      {
        v15 = backdropStyle;
      }

      if (v14)
      {
        v16 = v15;
      }

      else
      {
        v16 = backdropStyle;
      }

      [_searchBarTextField _setNeedsUpdateForBackdropStyle:v16];
    }

    else
    {
      [layer setAllowsGroupBlending:1];

      layer4 = [v18 layer];
      [layer4 setAllowsGroupOpacity:1];

      layer5 = [_systemBackgroundView layer];
      [layer5 setAllowsGroupBlending:1];

      [_systemBackgroundView setBackgroundContainer:0];
      [_searchBarTextField _removeEffectsBackgroundViews];
      [_systemBackgroundView updateView];
    }

    [(_UISearchBarVisualProviderIOS *)self updateNeedForBackdrop];
    if (self->_backdropStyle)
    {
      v17 = 2;
    }

    else
    {
      v17 = (*&self->_searchBarVisualProviderFlags >> 3) & 7;
    }

    [(UISearchBarBackground *)self->_searchBarBackground setSearchBarStyle:v17];
    [(_UISearchBarVisualProviderIOS *)self updatePlaceholderColor];
    [(_UISearchBarVisualProviderIOS *)self updateMagnifyingGlassView];
    [(_UISearchBarVisualProviderIOS *)self updateRightView];
    [v18 setNeedsLayout];

    searchBar = v18;
  }
}

- (void)updateCancelButtonForDynamicType
{
  if ([(_UISearchBarVisualProviderIOS *)self supportsDynamicType])
  {
    cancelButton = self->_cancelButton;
    v4 = objc_opt_new();
    [(UIView *)cancelButton addInteraction:v4];
  }

  v5 = self->_cancelButton;

  [(UIView *)v5 setShowsLargeContentViewer:1];
}

- (id)searchIconBarButtonItem
{
  searchIconBarButtonItem = self->_searchIconBarButtonItem;
  if (!searchIconBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = [UIImage systemImageNamed:@"magnifyingglass"];
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    v7 = [(UIBarButtonItem *)v4 initWithImage:v5 style:0 target:searchBar action:sel__searchButtonAction_];
    v8 = self->_searchIconBarButtonItem;
    self->_searchIconBarButtonItem = v7;

    [(UIBarButtonItem *)self->_searchIconBarButtonItem setEnabled:(*&self->_searchBarVisualProviderFlags & 0x1000) == 0];
    searchIconBarButtonItem = self->_searchIconBarButtonItem;
  }

  return searchIconBarButtonItem;
}

- (id)floatingSearchIconViewSuitableForMeasuring
{
  floatingSearchIconView = self->_floatingSearchIconView;
  if (!floatingSearchIconView)
  {
    searchIconBarButtonItem = [(_UISearchBarVisualProviderIOS *)self searchIconBarButtonItem];
    image = [searchIconBarButtonItem image];

    v6 = [[UIImageView alloc] initWithImage:image];
    v7 = self->_floatingSearchIconView;
    self->_floatingSearchIconView = v6;

    floatingSearchIconView = self->_floatingSearchIconView;
  }

  return floatingSearchIconView;
}

- (BOOL)isAtTop
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v3 = searchBar;
  if (searchBar)
  {
    window = [searchBar window];
    if (window && ([v3 _containingScrollView], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      if ([UIApp _appAdoptsUISceneLifecycle])
      {
        v7 = [UIApp _sceneInterfaceOrientationFromWindow:window];
        v8 = __UIStatusBarManagerForWindow(window);
        isStatusBarHidden = [v8 isStatusBarHidden];

        if (isStatusBarHidden)
        {
          v10 = 1;
        }

        else
        {
          v20 = __UIStatusBarManagerForWindow(window);
          [v20 defaultStatusBarHeightInOrientation:v7];
          v22 = v21;

          v10 = v22 == 0.0;
        }

        [window _referenceFrameFromSceneUsingScreenBounds:v10];
        v13 = v23;
        v15 = v24;
        v17 = v25;
        v19 = v26;
      }

      else
      {
        _screen = [v3 _screen];
        [_screen _applicationFrame];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
      }

      [window convertRect:0 fromWindow:{v13, v15, v17, v19}];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      superview = [v3 superview];
      [superview convertRect:0 fromView:{v28, v30, v32, v34}];
      v37 = v36;

      [v3 frame];
      v6 = v37 == v38;
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

- (void)updateDictationButtonActiveState
{
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  [_searchBarTextField _updateDictationButtonActiveState:(*&self->_searchBarVisualProviderFlags >> 36) & 1];
}

- (void)setHostedByNavigationBar:(BOOL)bar
{
  v3 = 0x4000000;
  if (!bar)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)_establishScopeBarInSearchBarIfNecessary
{
  if (self && ([self isIntegratedIntoToolbarOrNavigationBarContent] & 1) == 0 && self[7])
  {
    searchBar = [self searchBar];
    [searchBar insertSubview:self[7] atIndex:0];
    [searchBar setNeedsLayout];
    [self[7] setNeedsLayout];
  }
}

- (void)_setIntegratedInNavigationBar:(BOOL)bar inToolbar:(BOOL)toolbar
{
  toolbarCopy = toolbar;
  barCopy = bar;
  if (bar && toolbar)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderIOS.m" lineNumber:214 description:@"UIKit bug: Search can be integrated in the navigation bar or the toolbar but not both"];
  }

  isHostedInlineByNavigationBar = [(_UISearchBarVisualProviderIOS *)self isHostedInlineByNavigationBar];
  v8 = isHostedInlineByNavigationBar | [(_UISearchBarVisualProviderIOS *)self isHostedInlineByToolbar];
  if (barCopy || toolbarCopy)
  {
    if (!isHostedInlineByNavigationBar && barCopy)
    {
      searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
      LODWORD(v10) = 1.0;
      [searchBar setContentHuggingPriority:0 forAxis:v10];
      searchBar2 = [(_UISearchBarVisualProviderBase *)self searchBar];
      traitCollection = [searchBar2 traitCollection];
      v13 = [traitCollection userInterfaceIdiom] == 6;

      LODWORD(v14) = dword_18A6788F0[v13];
      [searchBar setContentCompressionResistancePriority:0 forAxis:v14];
    }

    if ((v8 & 1) == 0)
    {
      if (!self->_layoutState)
      {
        self->_layoutState = 2;
        self->_previousLayoutState = 2;
      }

      scopeBarContainerView = self->_scopeBarContainerView;
      if (scopeBarContainerView)
      {
        [(UIView *)scopeBarContainerView removeFromSuperview];
      }
    }

    v16 = 0x8000000;
    if (!barCopy)
    {
      v16 = 0;
    }

    v17 = 0x10000000;
    if (!toolbarCopy)
    {
      v17 = 0;
    }

    self->_searchBarVisualProviderFlags = (v17 | v16 | *&self->_searchBarVisualProviderFlags & 0xFFFFFFFFE7FFFFFFLL);
  }

  else
  {
    *&self->_searchBarVisualProviderFlags &= 0xFFFFFFFFE7FFFFFFLL;
    if (v8)
    {
      [(_UISearchBarVisualProviderIOS *)&self->super.super.isa _establishScopeBarInSearchBarIfNecessary];

      [(_UISearchBarVisualProviderIOS *)self growToSearchFieldIfNecessary];
    }
  }
}

- (void)setHostedInlineByNavigationBar:(BOOL)bar
{
  barCopy = bar;
  if ([(_UISearchBarVisualProviderIOS *)self isHostedInlineByNavigationBar]!= bar)
  {
    if (barCopy)
    {
      v5 = 0;
    }

    else
    {
      v5 = (*(&self->_searchBarVisualProviderFlags + 3) >> 4) & 1;
    }

    [(_UISearchBarVisualProviderIOS *)self _setIntegratedInNavigationBar:barCopy inToolbar:v5];
  }
}

- (void)setHostedInlineByToolbar:(BOOL)toolbar
{
  toolbarCopy = toolbar;
  if ([(_UISearchBarVisualProviderIOS *)self isHostedInlineByToolbar]!= toolbar)
  {
    if (toolbarCopy)
    {
      v5 = 0;
    }

    else
    {
      v5 = (*(&self->_searchBarVisualProviderFlags + 3) >> 3) & 1;
    }

    [(_UISearchBarVisualProviderIOS *)self _setIntegratedInNavigationBar:v5 inToolbar:toolbarCopy];
  }
}

- (void)setTextFieldManagedInNSToolbar:(BOOL)toolbar
{
  if (toolbar)
  {
    v4 = 0x40000000;
  }

  else
  {
    if ((*(&self->_searchBarVisualProviderFlags + 3) & 0x40) != 0)
    {
      _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];

      if (_searchBarTextField)
      {
        searchFieldContainerView = self->_searchFieldContainerView;
        _searchBarTextField2 = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
        [(UIView *)searchFieldContainerView addSubview:_searchBarTextField2];
      }
    }

    v4 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFBFFFFFFFLL | v4);
}

- (void)setProvidesRestingMeasurementValues:(BOOL)values
{
  v3 = 0x80000000;
  if (!values)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setNavigationBarWantsFlexibleInlineSearch:(BOOL)search
{
  v3 = 0x100000000;
  if (!search)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setPlacedInNavigationBar:(BOOL)bar
{
  v3 = 0x1000000;
  if (!bar)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setPlacedInToolbar:(BOOL)toolbar
{
  v3 = 0x2000000;
  if (!toolbar)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)_setSearchResultsButtonSelected:(BOOL)selected
{
  v3 = 0x400000;
  if (!selected)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)_setShowsBookmarkButton:(BOOL)button
{
  v3 = 0x800000;
  if (!button)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)_setShowsSearchResultsButton:(BOOL)button
{
  v3 = 0x200000;
  if (!button)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)_setAutoDisableCancelButton:(BOOL)button
{
  v3 = 0x80000;
  if (!button)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setReliesOnNavigationBarBackdrop:(BOOL)backdrop
{
  v3 = 0x2000;
  if (!backdrop)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setActiveSearchDeferringScopeBar:(BOOL)bar
{
  v3 = 0x400000000;
  if (!bar)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setSuppressFirstResponderOnTransitionToLayoutStateSearching:(BOOL)searching
{
  v3 = 0x400000000000;
  if (!searching)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setShowsClearButtonWhenEmpty:(BOOL)empty
{
  v4 = 0x20000000000;
  if (!empty)
  {
    v4 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFDFFFFFFFFFFLL | v4);
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  [_searchBarTextField _setAlwaysShowsClearButtonWhenEmptyAndActive:(*&self->_searchBarVisualProviderFlags >> 41) & 1];
  ownedView = [(_UILendableViewContainer *)self->_lendableSearchField ownedView];
  if (ownedView != _searchBarTextField)
  {
    [ownedView _setAlwaysShowsClearButtonWhenEmptyAndActive:(*&self->_searchBarVisualProviderFlags >> 41) & 1];
  }
}

- (void)updateShowsClearButtonWhenEmpty
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  _searchController = [searchBar _searchController];
  _clearAsCancelButtonVisibilityWhenEmpty = [_searchController _clearAsCancelButtonVisibilityWhenEmpty];

  usesClearForCancel = [(_UISearchBarVisualProviderIOS *)self usesClearForCancel];
  v7 = _clearAsCancelButtonVisibilityWhenEmpty != 2 && usesClearForCancel;
  if (v7 && [(_UISearchBarVisualProviderIOS *)self wantsDictationButton]&& _clearAsCancelButtonVisibilityWhenEmpty != 1)
  {
    searchBar2 = [(_UISearchBarVisualProviderBase *)self searchBar];
    traitCollection = [searchBar2 traitCollection];
    if ([traitCollection horizontalSizeClass] == 1)
    {
      searchBar3 = [(_UISearchBarVisualProviderBase *)self searchBar];
      traitCollection2 = [searchBar3 traitCollection];
      -[_UISearchBarVisualProviderIOS setShowsClearButtonWhenEmpty:](self, "setShowsClearButtonWhenEmpty:", [traitCollection2 _hasSplitViewControllerContextSidebarColumn] ^ 1);
    }

    else
    {
      [(_UISearchBarVisualProviderIOS *)self setShowsClearButtonWhenEmpty:0];
    }
  }

  else
  {

    [(_UISearchBarVisualProviderIOS *)self setShowsClearButtonWhenEmpty:v7];
  }
}

- (void)setBarStyle:(int64_t)style
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v6 = searchBar;
  if (searchBar)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if ((*&searchBarVisualProviderFlags & 7) != style)
    {
      v15 = searchBar;
      if (style)
      {
        v8 = (*&searchBarVisualProviderFlags & 7) == 0;
      }

      else
      {
        v8 = 1;
      }

      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFFFFFFF8 | style & 7);
      v9 = v8;
      [(UISearchBarBackground *)self->_searchBarBackground setBarStyle:style];
      if (!self->_barTintColor)
      {
        if (self->_cancelButton)
        {
          [(_UISearchBarVisualProviderIOS *)self setUpCancelButtonWithAppearance:0];
          [v15 setNeedsLayout];
          [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
        }

        if (self->_promptLabel)
        {
          [(_UISearchBarVisualProviderIOS *)self setUpPromptLabel];
          [v15 setNeedsLayout];
          [(UIView *)self->_promptContainerView setNeedsLayout];
        }

        if (v9)
        {
          [(_UISearchBarVisualProviderIOS *)self updateSearchFieldArt];
        }

        separator = self->_separator;
        if (separator)
        {
          currentSeparatorImage = [(_UISearchBarVisualProviderIOS *)self currentSeparatorImage];
          [(UIImageView *)separator setImage:currentSeparatorImage];
        }

        [(UISegmentedControl *)self->_scopeBar setBarStyle:style];
        [(_UISearchBarVisualProviderIOS *)self updateScopeBarBackground];
        [(_UISearchBarVisualProviderIOS *)self updateSearchBarOpacity];
      }

      v6 = v15;
      if (v9)
      {
        [(_UISearchBarVisualProviderIOS *)self updatePlaceholderColor];
        [(_UISearchBarVisualProviderIOS *)self updateRightView];
        [(_UISearchBarVisualProviderIOS *)self updateMagnifyingGlassView];
        _hasCustomBackgroundImage = [(UISearchBarBackground *)self->_searchBarBackground _hasCustomBackgroundImage];
        v6 = v15;
        if (!_hasCustomBackgroundImage && !self->_backdropStyle)
        {
          _searchBarTextField = [v15 _searchBarTextField];
          textColor = [(_UISearchBarVisualProviderIOS *)self textColor];
          [_searchBarTextField setTextColor:textColor];

          v6 = v15;
        }
      }
    }
  }
}

- (void)setSearchBarStyle:(unint64_t)style
{
  if (!self->_backdropStyle)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    v5 = (*&searchBarVisualProviderFlags >> 3) & 7;
    if (v5 != style)
    {
      if (style != 2 || v5 == 2)
      {
        self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFFFFFFC7 | (8 * (style & 7)));
        if (style == 2 || v5 != 2)
        {
          return;
        }
      }

      else
      {
        self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFFFFFFC7 | 0x10);
      }

      _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];

      if (_searchBarTextField)
      {

        [(_UISearchBarVisualProviderIOS *)self applySearchBarStyle];
      }
    }
  }
}

- (void)setBarTranslucence:(int64_t)translucence
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((*&searchBarVisualProviderFlags >> 6) & 7) != translucence)
  {
    self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFFFFFE3FLL | ((translucence & 7) << 6));
    [(UISearchBarBackground *)self->_searchBarBackground setTranslucent:[(_UISearchBarVisualProviderIOS *)self isTranslucent]];

    [(_UISearchBarVisualProviderIOS *)self updateSearchBarOpacity];
  }
}

- (void)setSearchFieldLeftViewMode:(int64_t)mode
{
  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFFFF9FFLL | ((mode & 3) << 9));
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];

  if (_searchBarTextField)
  {
    v5 = (*&self->_searchBarVisualProviderFlags >> 9) & 3;
    _searchBarTextField2 = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
    [_searchBarTextField2 setLeftViewMode:v5];
  }
}

- (int64_t)searchFieldLeftViewMode
{
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];

  if (!_searchBarTextField)
  {
    return (*&self->_searchBarVisualProviderFlags >> 9) & 3;
  }

  _searchBarTextField2 = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  leftViewMode = [_searchBarTextField2 leftViewMode];

  return leftViewMode;
}

- (void)setCenterPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && ((*&self->_searchBarVisualProviderFlags & 0x800) == 0) == placeholderCopy)
  {
    v6 = 2048;
    if (!placeholderCopy)
    {
      v6 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFFFF7FFLL | v6);
    v8 = searchBar;
    textInputTraits = [searchBar textInputTraits];
    [textInputTraits setDeferBecomingResponder:placeholderCopy];

    searchBar = v8;
  }
}

- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v8 = searchBar;
  if (searchBar)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if (((*&searchBarVisualProviderFlags >> 12) & 1) == enabledCopy)
    {
      v10 = 4096;
      if (enabledCopy)
      {
        v10 = 0;
      }

      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFFFFEFFFLL | v10);
      [searchBar setUserInteractionEnabled:enabledCopy];
      if (animatedCopy)
      {
        _searchBarTextField = [v8 _searchBarTextField];
        [_searchBarTextField _setEnabled:enabledCopy animated:1];
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __53___UISearchBarVisualProviderIOS_setEnabled_animated___block_invoke;
        v22[3] = &unk_1E70F8A10;
        v23 = v8;
        v24 = enabledCopy;
        v25 = animatedCopy;
        [UIView performWithoutAnimation:v22];
      }

      [(UIButton *)self->_cancelButton setEnabled:enabledCopy];
      existingSearchIconBarButtonItem = [(_UISearchBarVisualProviderIOS *)self existingSearchIconBarButtonItem];
      [existingSearchIconBarButtonItem setEnabled:enabledCopy];
      _searchController = [v8 _searchController];
      _inlineSearchBarItemGroup = [_searchController _inlineSearchBarItemGroup];
      v15 = _inlineSearchBarItemGroup;
      if (enabledCopy)
      {
        if (_inlineSearchBarItemGroup)
        {
          *(_inlineSearchBarItemGroup + 89) = 0;
        }
      }

      else
      {
        view = [existingSearchIconBarButtonItem view];
        window = [view window];
        if (v15)
        {
          v15[89] = window != 0;
        }
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __53___UISearchBarVisualProviderIOS_setEnabled_animated___block_invoke_2;
      v20[3] = &unk_1E70F35E0;
      v20[4] = self;
      v21 = enabledCopy;
      v18 = _Block_copy(v20);
      v19 = v18;
      if (animatedCopy)
      {
        [UIView animateWithDuration:v18 animations:0.35];
      }

      else
      {
        (*(v18 + 2))(v18);
      }
    }
  }
}

- (void)setDrawsBackgroundInPalette:(BOOL)palette
{
  if (os_variant_has_internal_diagnostics())
  {
    if (!palette)
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "_UISearchBarVisualProviderIOS doesn't support drawsBackgroundInPalette. This code path is a UIKit bug.", buf, 2u);
      }
    }
  }

  else if (!palette)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Assert", &setDrawsBackgroundInPalette____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "_UISearchBarVisualProviderIOS doesn't support drawsBackgroundInPalette. This code path is a UIKit bug.", v6, 2u);
    }
  }
}

- (void)setDrawsBackground:(BOOL)background
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((*&searchBarVisualProviderFlags >> 14) & 1) == background)
  {
    v4 = 0x4000;
    if (background)
    {
      v4 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFFFFBFFFLL | v4);
    [(UIImageView *)self->_searchBarBackground setHidden:!background];
  }
}

- (void)_setHideBackground:(BOOL)background
{
  v3 = 0x4000;
  if (!background)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setUsesEmbeddedAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if (((*&searchBarVisualProviderFlags & 0x20000) == 0) == appearanceCopy)
    {
      v9 = searchBar;
      v7 = 0x20000;
      if (!appearanceCopy)
      {
        v7 = 0;
      }

      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFFFDFFFFLL | v7);
      [(UISearchBarBackground *)self->_searchBarBackground setUsesEmbeddedAppearance:appearanceCopy];
      barTintColor = self->_barTintColor;
      if (barTintColor)
      {
        [(_UISearchBarVisualProviderIOS *)self setBarTintColor:barTintColor forceUpdate:1];
      }

      [v9 setNeedsLayout];
      searchBar = v9;
    }
  }
}

- (void)allowCursorToAppear:(BOOL)appear
{
  appearCopy = appear;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v9 = searchBar;
    centerPlaceholder = [(_UISearchBarVisualProviderIOS *)self centerPlaceholder];
    searchBar = v9;
    if (centerPlaceholder)
    {
      _searchBarTextField = [v9 _searchBarTextField];
      v8 = _searchBarTextField;
      if (appearCopy)
      {
        [_searchBarTextField _setPreventSelectionViewActivation:0];
        if ([v8 isFirstResponder])
        {
          [v8 __resumeBecomeFirstResponder];
          [v8 _activateSelectionView];
        }
      }

      else
      {
        [_searchBarTextField _setPreventSelectionViewActivation:1];
      }

      searchBar = v9;
    }
  }
}

- (void)setShowsCancelButton:(BOOL)button onBehalfOfSearchController:(id)controller
{
  buttonCopy = button;
  controllerCopy = controller;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  _searchController = [searchBar _searchController];

  [(_UISearchBarVisualProviderIOS *)self setShowsCancelButton:buttonCopy animated:0 protectSearchController:_searchController == controllerCopy];
}

- (void)setShowsCancelButton:(BOOL)button animated:(BOOL)animated protectSearchController:(BOOL)controller
{
  animatedCopy = animated;
  buttonCopy = button;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    if (!controller && dyld_program_sdk_at_least())
    {
      _searchController = [searchBar _searchController];
      [_searchController setAutomaticallyShowsCancelButton:0];
    }

    if (((((*(&self->_searchBarVisualProviderFlags + 2) & 4) == 0) ^ buttonCopy) & 1) == 0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __87___UISearchBarVisualProviderIOS_setShowsCancelButton_animated_protectSearchController___block_invoke;
      aBlock[3] = &unk_1E70F67F8;
      v28 = buttonCopy;
      aBlock[4] = self;
      v29 = animatedCopy;
      v11 = searchBar;
      v27 = v11;
      v12 = _Block_copy(aBlock);
      _searchController2 = [v11 _searchController];
      _managedPalette = [_searchController2 _managedPalette];

      if (_managedPalette)
      {
        v12[2](v12);
      }

      else
      {
        [UIView performWithoutAnimation:v12];
      }

      v15 = 0x40000;
      if (!buttonCopy)
      {
        v15 = 0;
      }

      self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFFBFFFFLL | v15);
      [v11 setNeedsLayout];
      [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
      if ([(_UISearchBarVisualProviderIOS *)self centerPlaceholder]&& animatedCopy && (*(&self->_searchBarVisualProviderFlags + 2) & 4) != 0)
      {
        [(_UISearchBarVisualProviderIOS *)self allowCursorToAppear:0];
        textInputTraits = [v11 textInputTraits];
        [textInputTraits setDeferBecomingResponder:0];
      }

      v17 = [(_UISearchBarVisualProviderIOS *)self isIntegratedIntoToolbarOrNavigationBarContent]& buttonCopy ^ 1;
      isHostedByNavigationBar = [(_UISearchBarVisualProviderIOS *)self isHostedByNavigationBar];
      v19 = isHostedByNavigationBar;
      if (animatedCopy)
      {
        if (isHostedByNavigationBar)
        {
          [v11 _setClipsToBounds:1];
        }

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __87___UISearchBarVisualProviderIOS_setShowsCancelButton_animated_protectSearchController___block_invoke_2;
        v24[3] = &unk_1E70F3590;
        v25 = v11;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __87___UISearchBarVisualProviderIOS_setShowsCancelButton_animated_protectSearchController___block_invoke_3;
        v20[3] = &unk_1E70F8A38;
        v20[4] = self;
        v21 = v25;
        v22 = v19;
        v23 = v17;
        [UIView animateWithDuration:4 delay:v24 options:v20 animations:0.3833 completion:0.0];
      }

      else
      {
        if ((*(&self->_searchBarVisualProviderFlags + 2) & 4) == 0)
        {
          [(_UISearchBarVisualProviderIOS *)self destroyCancelButton];
        }

        if (v19)
        {
          [v11 _setClipsToBounds:v17];
        }
      }

      if ([(_UISearchBarVisualProviderIOS *)self isInBarButNotHosted])
      {
        [(_UISearchBarVisualProviderIOS *)self displayNavBarCancelButton:(*&self->_searchBarVisualProviderFlags >> 18) & 1 animated:animatedCopy];
      }
    }
  }
}

- (void)_setShowsCancelButton:(BOOL)button
{
  v3 = 0x40000;
  if (!button)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setAutoDisableCancelButton:(BOOL)button
{
  v3 = 0x80000;
  if (!button)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFF7FFFFLL | v3);
  if (!button)
  {
    [(UIButton *)self->_cancelButton setEnabled:1];
  }
}

- (void)setShowsSearchResultsButton:(BOOL)button
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((((*&searchBarVisualProviderFlags & 0x200000) == 0) ^ button) & 1) == 0)
  {
    v4 = 0x200000;
    if (!button)
    {
      v4 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFFDFFFFFLL | v4);
    [(_UISearchBarVisualProviderIOS *)self updateRightView];
  }
}

- (void)setSearchResultsButtonSelected:(BOOL)selected
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((((*&searchBarVisualProviderFlags & 0x400000) == 0) ^ selected) & 1) == 0)
  {
    v4 = 0x400000;
    if (!selected)
    {
      v4 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFFBFFFFFLL | v4);
    [(_UISearchBarVisualProviderIOS *)self updateRightView];
  }
}

- (void)setShowsBookmarkButton:(BOOL)button
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((((*&searchBarVisualProviderFlags & 0x800000) == 0) ^ button) & 1) == 0)
  {
    v4 = 0x800000;
    if (!button)
    {
      v4 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFF7FFFFFLL | v4);
    [(_UISearchBarVisualProviderIOS *)self updateRightView];
  }
}

- (void)animateShowsScopeBarAnimatingOut:(void *)out
{
  if (out)
  {
    searchBar = [out searchBar];
    isIntegratedIntoToolbarOrNavigationBarContent = [out isIntegratedIntoToolbarOrNavigationBarContent];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke;
    aBlock[3] = &unk_1E70F5AF0;
    v6 = isIntegratedIntoToolbarOrNavigationBarContent ^ 1;
    v20 = a2;
    aBlock[4] = out;
    v7 = searchBar;
    v19 = v7;
    v8 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke_6;
    v16[3] = &unk_1E70F35E0;
    v16[4] = out;
    v17 = a2;
    [UIView performWithoutAnimation:v16];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66___UISearchBarVisualProviderIOS_animateShowsScopeBarAnimatingOut___block_invoke_7;
    v11[3] = &unk_1E70F3798;
    v15 = v6;
    v12 = v7;
    outCopy = out;
    v14 = v8;
    v9 = v8;
    v10 = v7;
    [UIView animateWithDuration:4 delay:v11 options:0 animations:0.3833 completion:0.0];
  }
}

- (void)setShowsScopeBar:(BOOL)bar animateOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  barCopy = bar;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    if (dyld_program_sdk_at_least())
    {
      _searchController = [searchBar _searchController];
      [_searchController setScopeBarActivation:1];
    }

    if ([(_UISearchBarVisualProviderIOS *)self isTextFieldManagedInNSToolbar])
    {
      v8 = 0x200000000;
      if (!barCopy)
      {
        v8 = 0;
      }

      self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFDFFFFFFFFLL | v8);
    }

    else
    {
      isIntegratedIntoToolbarOrNavigationBarContent = [(_UISearchBarVisualProviderIOS *)self isIntegratedIntoToolbarOrNavigationBarContent];
      v10 = isIntegratedIntoToolbarOrNavigationBarContent;
      if (barCopy && self->_cancelButton == 0 && !isIntegratedIntoToolbarOrNavigationBarContent)
      {
        [(_UISearchBarVisualProviderIOS *)self setUpCancelButton];
      }

      searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
      if (((((*&searchBarVisualProviderFlags & 0x200000000) == 0) ^ barCopy) & 1) == 0)
      {
        if ((*&searchBarVisualProviderFlags & 0x4000000) != 0)
        {
          _searchController2 = [searchBar _searchController];
          [(UISearchController *)_searchController2 _scopeBarWillShowOrHide];

          searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
        }

        v13 = 0x200000000;
        if (!barCopy)
        {
          v13 = 0;
        }

        self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFDFFFFFFFFLL | v13);
        if (!v10)
        {
          [searchBar invalidateIntrinsicContentSize];
          [searchBar setNeedsLayout];
        }

        [(_UISearchBarLayout *)self->_currentLayout setNeedsReconfigurationForScopeBar:1];
        if (barCopy)
        {
          [(UIView *)self->_scopeBarContainerView setHidden:0];
        }

        if (opacityCopy)
        {
          [(_UISearchBarVisualProviderIOS *)self animateShowsScopeBarAnimatingOut:?];
        }

        else
        {
          [(UIView *)self->_scopeBarContainerView setAlpha:barCopy];
        }

        if (self->_scopeBarContainerView)
        {
          v14 = barCopy;
        }

        else
        {
          v14 = 0;
        }

        [(UISearchBarBackground *)self->_searchBarBackground setUsesContiguousBarBackground:v14];
      }
    }
  }
}

- (void)_setShowsScopeBar:(BOOL)bar
{
  v3 = 0x200000000;
  if (!bar)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFDFFFFFFFFLL | v3);
  [(_UISearchBarLayout *)self->_currentLayout setNeedsReconfigurationForScopeBar:1];
}

- (void)setDeferredAutomaticShowsScopeBarInNavigationBar:(id)bar hasContent:(BOOL)content
{
  contentCopy = content;
  barCopy = bar;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93___UISearchBarVisualProviderIOS_setDeferredAutomaticShowsScopeBarInNavigationBar_hasContent___block_invoke;
  v16[3] = &unk_1E70F3590;
  v7 = barCopy;
  v17 = v7;
  [UIView performWithoutAnimation:v16];
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if ((*&searchBarVisualProviderFlags & 0x400000000) == 0 || contentCopy)
  {
    self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFF9FFFFFFFFLL | 0x200000000);
    [(_UISearchBarVisualProviderIOS *)self setUpScopeBar];
    [(UIView *)self->_scopeBarContainerView frame];
    v10 = v9;
    v12 = v11;
    [v7 bounds];
    Width = CGRectGetWidth(v18);
    [(_UISearchBarVisualProviderIOS *)self scopeBarHeight];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __93___UISearchBarVisualProviderIOS_setDeferredAutomaticShowsScopeBarInNavigationBar_hasContent___block_invoke_2;
    v15[3] = &unk_1E70F3B20;
    v15[4] = self;
    v15[5] = v10;
    v15[6] = v12;
    *&v15[7] = Width;
    v15[8] = v14;
    [UIView performWithoutAnimation:v15];
    [(_UISearchBarVisualProviderIOS *)self animateShowsScopeBarAnimatingOut:?];
    [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_currentLayout];
  }
}

- (void)setInNavigationPalette:(BOOL)palette
{
  paletteCopy = palette;
  if (os_variant_has_internal_diagnostics())
  {
    if (paletteCopy)
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "_UISearchBarVisualProviderIOS doesn't support search bars in navigation palettes. This code path is a UIKit bug.", buf, 2u);
      }
    }
  }

  else if (paletteCopy)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Assert", &setInNavigationPalette____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "_UISearchBarVisualProviderIOS doesn't support search bars in navigation palettes. This code path is a UIKit bug.", v6, 2u);
    }
  }
}

- (void)setFloating:(BOOL)floating
{
  v3 = 0x20000000;
  if (!floating)
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setCancelButton:(id)button
{
  buttonCopy = button;
  cancelButton = self->_cancelButton;
  if (cancelButton != buttonCopy)
  {
    v9 = buttonCopy;
    [(UIView *)cancelButton removeFromSuperview];
    objc_storeStrong(&self->_cancelButton, button);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = 0x200000000000;
    if ((isKindOfClass & 1) == 0)
    {
      v8 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFDFFFFFFFFFFFLL | v8);
    [(_UISearchBarVisualProviderIOS *)self updateCancelButtonForDynamicType];
    buttonCopy = v9;
  }
}

- (void)setScopeTitles:(id)titles
{
  v21 = *MEMORY[0x1E69E9840];
  titlesCopy = titles;
  if (![(NSArray *)self->_scopeTitles isEqualToArray:titlesCopy]|| titlesCopy && !self->_scopeTitles)
  {
    v5 = [titlesCopy copy];
    scopeTitles = self->_scopeTitles;
    self->_scopeTitles = v5;

    [(_UISearchBarVisualProviderIOS *)self setUpScopeBar];
    scopeBar = self->_scopeBar;
    if (scopeBar)
    {
      [(UISegmentedControl *)scopeBar removeAllSegments];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = titlesCopy;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v8);
            }

            [(UISegmentedControl *)self->_scopeBar insertSegmentWithTitle:*(*(&v16 + 1) + 8 * v13++) atIndex:v11++ animated:0, v16];
          }

          while (v10 != v13);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      selectedScope = self->_selectedScope;
      if (selectedScope >= [v8 count])
      {
        v15 = [v8 count] - 1;
        self->_selectedScope = v15;
      }

      else
      {
        v15 = self->_selectedScope;
      }

      [(UISegmentedControl *)self->_scopeBar setSelectedSegmentIndex:v15, v16];
    }
  }
}

- (void)setMinimumContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsetPrivateMinOrOverride.top, v3), vceqq_f64(*&self->_contentInsetPrivateMinOrOverride.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsetPrivateMinOrOverride = inset;
    [(_UISearchBarVisualProviderIOS *)self updateEffectiveContentInset];
  }
}

- (void)setBackdropStyle:(int64_t)style
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && self->_backdropStyle != style)
  {
    self->_backdropStyle = style;
    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFFFFFFFFFC7 | 0x10);
    v12 = searchBar;
    [(_UISearchBarVisualProviderIOS *)self updateNeedForBackdrop];
    [(UISearchBarBackground *)self->_searchBarBackground setSearchBarStyle:(*&self->_searchBarVisualProviderFlags >> 3) & 7];
    _searchBarTextField = [v12 _searchBarTextField];
    _systemBackgroundView = [_searchBarTextField _systemBackgroundView];
    layer = [v12 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [v12 layer];
    [layer2 setAllowsGroupOpacity:0];

    layer3 = [_systemBackgroundView layer];
    [layer3 setAllowsGroupBlending:0];

    [_systemBackgroundView setBackgroundContainer:1];
    [_searchBarTextField _setNeedsUpdateForBackdropStyle:self->_backdropStyle];
    v11 = [(_UISearchBarVisualProviderIOS *)self colorForComponent:4 disabled:0];
    [_searchBarTextField setTextColor:v11];

    [(_UISearchBarVisualProviderIOS *)self updatePlaceholderColor];
    [(_UISearchBarVisualProviderIOS *)self updateMagnifyingGlassView];
    [(_UISearchBarVisualProviderIOS *)self updateRightView];
    [v12 setNeedsLayout];

    searchBar = v12;
  }
}

- (void)setBarPosition:(int64_t)position
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && self->_barPosition != position)
  {
    if (!position)
    {
      position = 2;
    }

    v9 = searchBar;
    [(UISearchBarBackground *)self->_searchBarBackground _setBarPosition:position];
    self->_barPosition = position;
    *&self->_searchBarVisualProviderFlags |= 0x8000uLL;
    _searchController = [v9 _searchController];
    if (!_searchController || (barPosition = self->_barPosition, _searchController, barPosition == 3))
    {
      v8 = self->_barPosition != 3 && (*(&self->_searchBarVisualProviderFlags + 3) & 4) == 0;
      [(_UISearchBarVisualProviderIOS *)self setClippingViewActive:v8];
    }

    [(_UISearchBarVisualProviderIOS *)self updateEffectiveContentInset];
    [v9 setNeedsLayout];
    searchBar = v9;
  }
}

- (void)setPrompt:(id)prompt
{
  promptCopy = prompt;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v5 = self->_promptLabel;
    if (promptCopy)
    {
      if (v5)
      {
        text = [(UILabel *)v5 text];
        v7 = [promptCopy isEqualToString:text];

        [(UILabel *)v5 setText:promptCopy];
        if (v7)
        {
          goto LABEL_10;
        }
      }

      else
      {
        [(_UISearchBarVisualProviderIOS *)self setUpPromptLabel];
        v5 = self->_promptLabel;
        [searchBar invalidateIntrinsicContentSize];
        [(UILabel *)v5 setText:promptCopy];
      }
    }

    else
    {
      if (!v5)
      {
LABEL_10:

        goto LABEL_11;
      }

      [(UIView *)self->_promptLabel removeFromSuperview];
      promptLabel = self->_promptLabel;
      self->_promptLabel = 0;

      [searchBar invalidateIntrinsicContentSize];
    }

    [(UIView *)self->_promptContainerView setNeedsLayout];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)setBackgroundExtension:(double)extension
{
  if (self->_backgroundExtension != extension)
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    if (searchBar)
    {
      self->_backgroundExtension = extension;
      v6 = searchBar;
      [searchBar setNeedsLayout];
      searchBar = v6;
    }
  }
}

- (void)setSearchField:(id)field
{
  v5.receiver = self;
  v5.super_class = _UISearchBarVisualProviderIOS;
  [(_UISearchBarVisualProviderBase *)&v5 setSearchField:field];
  lendableSearchField = self->_lendableSearchField;
  self->_lendableSearchField = 0;
}

- (void)addSearchFieldClone:(id)clone
{
  v12 = *MEMORY[0x1E69E9840];
  cloneCopy = clone;
  if (cloneCopy)
  {
    cloneManager = self->_cloneManager;
    if (!cloneManager)
    {
      v6 = objc_alloc_init(_UISearchFieldCloneManager);
      v7 = self->_cloneManager;
      self->_cloneManager = v6;

      cloneManager = self->_cloneManager;
    }

    [(_UISearchFieldCloneManager *)cloneManager addClone:cloneCopy];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315138;
      v11 = "[_UISearchBarVisualProviderIOS addSearchFieldClone:]";
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "%s Ignoring nil argument.", &v10, 0xCu);
    }
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &addSearchFieldClone____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[_UISearchBarVisualProviderIOS addSearchFieldClone:]";
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s Ignoring nil argument.", &v10, 0xCu);
    }
  }
}

- (id)activeSearchFieldInToolbar
{
  if ([(_UILendableViewContainer *)self->_lendableSearchField isLoaned])
  {
    activeClone = [(_UISearchFieldCloneManager *)self->_cloneManager activeClone];
  }

  else
  {
    activeClone = 0;
  }

  return activeClone;
}

- (id)floatingSearchIconView
{
  floatingSearchIconView = self->_floatingSearchIconView;
  if (!floatingSearchIconView || (*(&self->_searchBarVisualProviderFlags + 4) & 0x80) == 0)
  {
    [(_UISearchBarVisualProviderIOS *)self setUpFloatingSearchIconView];
    floatingSearchIconView = self->_floatingSearchIconView;
  }

  return floatingSearchIconView;
}

- (id)leftButton
{
  [(_UISearchBarVisualProviderIOS *)self setUpLeftButton];
  leftButton = self->_leftButton;

  return leftButton;
}

- (id)cancelBarButtonItem
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    if (!self->_cancelBarButtonItem)
    {
      v4 = [UIBarButtonItem alloc];
      cancelButtonText = self->_cancelButtonText;
      v6 = cancelButtonText;
      if (!cancelButtonText)
      {
        v6 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
      }

      v7 = [(UIBarButtonItem *)v4 initWithTitle:v6 style:2 target:searchBar action:sel__performCancelAction];
      cancelBarButtonItem = self->_cancelBarButtonItem;
      self->_cancelBarButtonItem = v7;

      if (!cancelButtonText)
      {
      }
    }

    v9 = self->_cancelBarButtonItem;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_UISearchBarVisualProviderIOS)initWithDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = _UISearchBarVisualProviderIOS;
  v3 = [(_UISearchBarVisualProviderBase *)&v9 initWithDelegate:delegate];
  if (v3)
  {
    v4 = objc_alloc_init(_UISearchBarLayout);
    currentLayout = v3->_currentLayout;
    v3->_currentLayout = v4;

    v6 = objc_alloc_init(_UISearchBarLayout);
    prospectiveLayout = v3->_prospectiveLayout;
    v3->_prospectiveLayout = v6;

    [(_UISearchBarLayout *)v3->_prospectiveLayout setProspective:1];
  }

  return v3;
}

- (id)runtimeOnlyViews
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
  v4 = v3;
  if (self->_searchBarClippingView)
  {
    [v3 addObject:?];
  }

  if (self->_promptLabel)
  {
    [v4 addObject:?];
  }

  if (self->_cancelButton)
  {
    [v4 addObject:?];
  }

  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];

  if (_searchBarTextField)
  {
    _searchBarTextField2 = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
    [v4 addObject:_searchBarTextField2];
  }

  if (self->_separator)
  {
    [v4 addObject:?];
  }

  if (self->_searchBarBackground)
  {
    [v4 addObject:?];
  }

  if (self->_scopeBarContainerView)
  {
    [v4 addObject:?];
  }

  v7 = [v4 copy];

  return v7;
}

- (void)teardown
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!searchBar)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderIOS.m" lineNumber:1235 description:@"visual provider can not clean up without delegate"];
  }

  [(UIControl *)self->_scopeBar removeTarget:searchBar action:0 forControlEvents:0xFFFFFFFFLL];
  searchFieldIfExists = [(_UISearchBarVisualProviderIOS *)self searchFieldIfExists];
  [searchFieldIfExists removeTarget:searchBar action:0 forControlEvents:0xFFFFFFFFLL];

  searchFieldIfExists2 = [(_UISearchBarVisualProviderIOS *)self searchFieldIfExists];
  [searchFieldIfExists2 setDelegate:0];

  searchFieldIfExists3 = [(_UISearchBarVisualProviderIOS *)self searchFieldIfExists];
  [searchFieldIfExists3 removeFromSuperview];

  [(UIView *)self->_promptLabel removeFromSuperview];
  [(UIView *)self->_cancelButton removeFromSuperview];
  [(UIView *)self->_separator removeFromSuperview];
  [(UIView *)self->_searchBarBackground removeFromSuperview];
  [(UIView *)self->_scopeBarContainerView removeFromSuperview];
  [(UIView *)self->_scopeBarBackgroundView removeFromSuperview];
  [(UIView *)self->_searchFieldContainerView removeFromSuperview];
  [(UIView *)self->_promptContainerView removeFromSuperview];
  v9.receiver = self;
  v9.super_class = _UISearchBarVisualProviderIOS;
  [(_UISearchBarVisualProviderBase *)&v9 teardown];
}

- (void)revertViewHierarchyIfNecessary
{
  __63___UISearchBarVisualProviderIOS_revertViewHierarchyIfNecessary__block_invoke(self->_searchFieldContainerView);
  promptContainerView = self->_promptContainerView;

  __63___UISearchBarVisualProviderIOS_revertViewHierarchyIfNecessary__block_invoke(promptContainerView);
}

- (void)destroyCancelButton
{
  [(UIView *)self->_cancelButton removeFromSuperview];
  cancelButton = self->_cancelButton;
  self->_cancelButton = 0;

  [(_UISearchBarLayout *)self->_prospectiveLayout setCancelButton:0];
  currentLayout = self->_currentLayout;

  [(_UISearchBarLayout *)currentLayout setCancelButton:0];
}

- (void)destroyPromptLabel
{
  [(UIView *)self->_promptContainerView removeFromSuperview];
  promptContainerView = self->_promptContainerView;
  self->_promptContainerView = 0;

  [(UIView *)self->_promptLabel removeFromSuperview];
  promptLabel = self->_promptLabel;
  self->_promptLabel = 0;
}

- (id)currentSeparatorImage
{
  separatorImage = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage separatorImage];

  if (separatorImage)
  {
    separatorImage2 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage separatorImage];
  }

  else
  {
    if ((*&self->_searchBarVisualProviderFlags & 7) != 0 || ([(_UISearchBarVisualProviderIOS *)self effectiveBarTintColor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      effectiveBarTintColor = [(_UISearchBarVisualProviderIOS *)self effectiveBarTintColor];
      if ((effectiveBarTintColor || (*&self->_searchBarVisualProviderFlags & 7) == 1) && (v7 = *&self->_searchBarVisualProviderFlags & 0x1C0, effectiveBarTintColor, v7 != 64))
      {
        v8 = @"UISearchBarBlackSeparator.png";
      }

      else
      {
        v8 = @"UISearchBarBlackTranslucentSeparator.png";
      }
    }

    else
    {
      v8 = @"UISearchBarDefaultSeparator.png";
    }

    separatorImage2 = _UIImageWithName(v8);
  }

  return separatorImage2;
}

- (void)setSeparatorImage:(id)image
{
  imageCopy = image;
  appearanceStorage = self->_appearanceStorage;
  v11 = imageCopy;
  if (imageCopy)
  {
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UISearchBarAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_7;
  }

  separatorImage = [(_UISearchBarAppearanceStorage *)appearanceStorage separatorImage];

  imageCopy = v11;
  if (separatorImage != v11)
  {
    [(_UISearchBarAppearanceStorage *)self->_appearanceStorage setSeparatorImage:v11];
    separator = self->_separator;
    currentSeparatorImage = [(_UISearchBarVisualProviderIOS *)self currentSeparatorImage];
    [(UIImageView *)separator setImage:currentSeparatorImage];

    imageCopy = v11;
  }

LABEL_7:
}

- (void)setSearchFieldBackgroundImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  appearanceStorage = self->_appearanceStorage;
  v11 = imageCopy;
  if (imageCopy)
  {
    if (!appearanceStorage)
    {
      v8 = objc_alloc_init(_UISearchBarAppearanceStorage);
      v9 = self->_appearanceStorage;
      self->_appearanceStorage = v8;

      appearanceStorage = self->_appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_7;
  }

  v10 = [(_UISearchBarAppearanceStorage *)appearanceStorage searchFieldBackgroundImageForState:state];

  imageCopy = v11;
  if (v10 != v11)
  {
    [(_UISearchBarAppearanceStorage *)self->_appearanceStorage setSearchFieldBackgroundImage:v11 forState:2 * (state != 0)];
    [(_UISearchBarVisualProviderIOS *)self updateSearchFieldArt];
    imageCopy = v11;
  }

LABEL_7:
}

- (id)internalImageForSearchBarIcon:(int64_t)icon state:(unint64_t)state customImage:(BOOL *)image
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!searchBar)
  {
    v12 = objc_alloc_init(UIImage);
    goto LABEL_13;
  }

  v10 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage imageForIcon:icon state:state];
  if (!v10)
  {
    if (image)
    {
      *image = 0;
    }

    if (icon == 3)
    {
      v13 = @"chevron.down.circle.fill";
    }

    else
    {
      if (icon != 2)
      {
        v11 = 0;
        goto LABEL_14;
      }

      v13 = @"book";
    }

    v12 = [UIImage systemImageNamed:v13];
LABEL_13:
    v11 = v12;
    goto LABEL_14;
  }

  v11 = v10;
  if (image)
  {
    *image = 1;
  }

LABEL_14:

  return v11;
}

- (void)setImage:(id)image forSearchBarIcon:(int64_t)icon state:(unint64_t)state
{
  imageCopy = image;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    appearanceStorage = self->_appearanceStorage;
    if (imageCopy)
    {
      if (!appearanceStorage)
      {
        v10 = objc_alloc_init(_UISearchBarAppearanceStorage);
        v11 = self->_appearanceStorage;
        self->_appearanceStorage = v10;

        appearanceStorage = self->_appearanceStorage;
      }
    }

    else if (!appearanceStorage)
    {
      goto LABEL_14;
    }

    if (state >= 3)
    {
      state = 1;
    }

    v12 = [(_UISearchBarAppearanceStorage *)appearanceStorage imageForIcon:icon state:state];

    if (v12 != imageCopy)
    {
      [(_UISearchBarAppearanceStorage *)self->_appearanceStorage setImage:imageCopy forIcon:icon state:state];
      if ((icon & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        [(_UISearchBarVisualProviderIOS *)self updateRightView];
      }

      else if (icon)
      {
        _searchBarTextField = [searchBar _searchBarTextField];
        [_searchBarTextField _setClearButtonImage:imageCopy forState:state];
      }

      else
      {
        [(_UISearchBarVisualProviderIOS *)self updateMagnifyingGlassView];
      }
    }
  }

LABEL_14:
}

- (id)imageForSearchBarIcon:(int64_t)icon state:(unint64_t)state
{
  appearanceStorage = self->_appearanceStorage;
  if (state >= 3)
  {
    state = 1;
  }

  return [(_UISearchBarAppearanceStorage *)appearanceStorage imageForIcon:icon state:state];
}

- (void)setScopeBarBackgroundImage:(id)image
{
  imageCopy = image;
  if (imageCopy || self->_scopeBar)
  {
    v9 = imageCopy;
    appearanceStorage = self->_appearanceStorage;
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UISearchBarAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }

    scopeBarBackgroundImage = [(_UISearchBarAppearanceStorage *)appearanceStorage scopeBarBackgroundImage];

    if (scopeBarBackgroundImage != v9)
    {
      [(_UISearchBarAppearanceStorage *)self->_appearanceStorage setScopeBarBackgroundImage:v9];
    }

    [(_UISearchBarVisualProviderIOS *)self setUpScopeBar];
    imageCopy = v9;
  }
}

- (void)setSearchFieldBackgroundPositionAdjustment:(UIOffset)adjustment
{
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    appearanceStorage = self->_appearanceStorage;
    if (!appearanceStorage)
    {
      if (horizontal == 0.0 && vertical == 0.0)
      {
        goto LABEL_15;
      }

      v8 = objc_alloc_init(_UISearchBarAppearanceStorage);
      v9 = self->_appearanceStorage;
      self->_appearanceStorage = v8;

      appearanceStorage = self->_appearanceStorage;
    }

    searchFieldPositionAdjustment = [(_UISearchBarAppearanceStorage *)appearanceStorage searchFieldPositionAdjustment];
    v11 = searchFieldPositionAdjustment;
    if (searchFieldPositionAdjustment)
    {
      [searchFieldPositionAdjustment UIOffsetValue];
    }

    else
    {
      v12 = 0.0;
      v13 = 0.0;
    }

    if (horizontal != v12 || vertical != v13)
    {
      v15 = self->_appearanceStorage;
      *v17 = horizontal;
      *&v17[1] = vertical;
      v16 = [MEMORY[0x1E696B098] valueWithBytes:v17 objCType:"{UIOffset=dd}"];
      [(_UISearchBarAppearanceStorage *)v15 setSearchFieldPositionAdjustment:v16];

      [searchBar setNeedsLayout];
    }
  }

LABEL_15:
}

- (UIOffset)searchFieldBackgroundPositionAdjustment
{
  searchFieldPositionAdjustment = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldPositionAdjustment];
  v3 = searchFieldPositionAdjustment;
  if (searchFieldPositionAdjustment)
  {
    [searchFieldPositionAdjustment UIOffsetValue];
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

- (void)setBackgroundImage:(id)image forBarPosition:(int64_t)position barMetrics:(int64_t)metrics
{
  [(UISearchBarBackground *)self->_searchBarBackground _setBackgroundImage:image forBarPosition:position barMetrics:metrics];

  [(_UISearchBarVisualProviderIOS *)self updateNeedForBackdrop];
}

- (BOOL)hasDarkUIAppearance
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v3 = searchBar;
  if (searchBar)
  {
    traitCollection = [searchBar traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    keyboardAppearance = [v3 keyboardAppearance];
    v7 = 0;
    if (keyboardAppearance <= 8)
    {
      if (keyboardAppearance)
      {
        if (keyboardAppearance != 1)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }

LABEL_10:
      v7 = userInterfaceStyle == 2;
      goto LABEL_11;
    }

    if (keyboardAppearance == 10)
    {
      goto LABEL_10;
    }

    if (keyboardAppearance == 9)
    {
LABEL_9:
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (id)colorForComponent:(unint64_t)component disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v8 = searchBar;
  if (!searchBar)
  {
    goto LABEL_7;
  }

  traitCollection = [searchBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    v11 = 0;
    if (component > 1)
    {
      if (component != 2)
      {
        if (component != 3)
        {
          if (component != 4)
          {
            goto LABEL_39;
          }

          goto LABEL_7;
        }

        if (_UISolariumEnabled())
        {
          v12 = +[UIColor tertiaryLabelColor];
          goto LABEL_38;
        }

LABEL_27:
        v12 = +[UIColor _carSystemSecondaryColor];
        goto LABEL_38;
      }

      if (_UISolariumEnabled())
      {
LABEL_22:
        v12 = +[UIColor secondaryLabelColor];
        goto LABEL_38;
      }

      goto LABEL_26;
    }

    if (component)
    {
      if (component != 1)
      {
        goto LABEL_39;
      }

      if ((_UISolariumEnabled() & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    if ((_UISolariumEnabled() & 1) == 0)
    {
LABEL_26:
      v12 = +[UIColor _carSystemPrimaryColor];
      goto LABEL_38;
    }

LABEL_7:
    v12 = +[UIColor labelColor];
LABEL_38:
    v11 = v12;
    goto LABEL_39;
  }

  backdropStyle = self->_backdropStyle;
  if (backdropStyle == 2030)
  {
    if (!disabledCopy)
    {
      v15 = 1.0;
      if (component == 4)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.5;
      }

      goto LABEL_37;
    }

    goto LABEL_17;
  }

  if (backdropStyle == 2020)
  {
    if (!disabledCopy)
    {
LABEL_35:
      v12 = +[UIColor whiteColor];
      goto LABEL_38;
    }

LABEL_17:
    v14 = 0.35;
    v15 = 1.0;
    goto LABEL_37;
  }

  if ([(_UISearchBarVisualProviderIOS *)self barStyle])
  {
    if (!disabledCopy)
    {
      if (component != 4)
      {
        v12 = +[UIColor _searchFieldPlaceholderTextClearButtonColor];
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v15 = 0.47;
    v14 = 0.35;
LABEL_37:
    v12 = [UIColor colorWithWhite:v15 alpha:v14];
    goto LABEL_38;
  }

  v16 = self->_backdropStyle;
  if ((v16 == 2010 || v16 == 2005) && component == 4)
  {
    v17 = +[UIColor labelColor];
  }

  else
  {
    v17 = +[UIColor secondaryLabelColor];
  }

  v11 = v17;
  if (disabledCopy)
  {
    v19 = [v17 colorWithAlphaComponent:0.35];

    v11 = v19;
  }

LABEL_39:

  return v11;
}

- (id)textColor
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!searchBar)
  {
    v4 = +[UIColor labelColor];
    goto LABEL_7;
  }

  if (self->_backdropStyle)
  {
    v4 = [(_UISearchBarVisualProviderIOS *)self colorForComponent:4 disabled:0];
LABEL_7:
    defaultTextColor = v4;
    goto LABEL_8;
  }

  if ([(_UISearchBarVisualProviderIOS *)self barStyle])
  {
    v4 = [UIColor colorWithWhite:0.47 alpha:1.0];
    goto LABEL_7;
  }

  _searchBarTextField = [searchBar _searchBarTextField];
  visualStyle = [_searchBarTextField visualStyle];
  defaultTextColor = [visualStyle defaultTextColor];

LABEL_8:

  return defaultTextColor;
}

- (void)_setBarTintColor:(id)color
{
  obj = color;
  v4 = dyld_program_sdk_at_least();
  v5 = obj;
  if (v4)
  {
    v5 = [obj colorWithAlphaComponent:1.0];
  }

  objc_storeStrong(&self->_barTintColor, v5);
  if (v4)
  {
  }
}

- (void)setBarTintColor:(id)color forceUpdate:(BOOL)update
{
  if (self->_barTintColor != color || update)
  {
    [(_UISearchBarVisualProviderIOS *)self _setBarTintColor:?];

    [(_UISearchBarVisualProviderIOS *)self effectiveBarTintColorDidChange:1];
  }
}

- (void)effectiveBarTintColorDidChange:(BOOL)change
{
  changeCopy = change;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v12 = searchBar;
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    effectiveBarTintColor = [(_UISearchBarVisualProviderIOS *)self effectiveBarTintColor];
    v8 = effectiveBarTintColor;
    if ((*&searchBarVisualProviderFlags & 0x20000) != 0)
    {
      v9 = _GetLightenedTintColor(effectiveBarTintColor);
      [(UISearchBarBackground *)self->_searchBarBackground setBarTintColor:v9];
    }

    else
    {
      [(UISearchBarBackground *)self->_searchBarBackground setBarTintColor:effectiveBarTintColor];
    }

    if (self->_cancelButton)
    {
      [(_UISearchBarVisualProviderIOS *)self setUpCancelButtonWithAppearance:0];
    }

    if (self->_promptLabel)
    {
      [(_UISearchBarVisualProviderIOS *)self setUpPromptLabel];
    }

    if (changeCopy)
    {
      [(_UISearchBarVisualProviderIOS *)self updateSearchFieldArt];
      [(_UISearchBarVisualProviderIOS *)self updateMagnifyingGlassView];
      separator = self->_separator;
      if (separator)
      {
        currentSeparatorImage = [(_UISearchBarVisualProviderIOS *)self currentSeparatorImage];
        [(UIImageView *)separator setImage:currentSeparatorImage];
      }
    }

    [(_UISearchBarVisualProviderIOS *)self updateScopeBarBackground];
    searchBar = v12;
  }
}

- (void)updateForDynamicType:(id)type
{
  typeCopy = type;
  supportsDynamicType = [(_UISearchBarVisualProviderIOS *)self supportsDynamicType];
  if (_UISolariumEnabled())
  {
    v5 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD20];
  }

  else
  {
    if (supportsDynamicType)
    {
      [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    }

    else
    {
      [off_1E70ECC18 defaultFontSize];
      [off_1E70ECC18 systemFontOfSize:?];
    }
    v5 = ;
  }

  v6 = v5;
  [typeCopy setFont:v5];

  [typeCopy setAdjustsFontForContentSizeCategory:supportsDynamicType];
  [typeCopy _setIgnoresDynamicType:supportsDynamicType ^ 1];
  [typeCopy setShowsLargeContentViewer:supportsDynamicType ^ 1];
}

- (void)updateControlSizeForSearchField:(id)field
{
  v14 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v6 = searchBar;
  if (searchBar)
  {
    traitCollection = [searchBar traitCollection];
    v8 = traitCollection;
    if (traitCollection)
    {
      _UIRecordTraitUsage(traitCollection, 0x13uLL);
      v9 = 2 * (v8[16] == 2);
    }

    else
    {
      v9 = 0;
    }

    [fieldCopy setControlSize:v9];

    [(_UISearchBarVisualProviderIOS *)self updateForDynamicType:fieldCopy];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v11 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = 136315138;
      v13 = "[_UISearchBarVisualProviderIOS updateControlSizeForSearchField:]";
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Unexpectedly missing searchBar in %s", &v12, 0xCu);
    }
  }

  else
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &updateControlSizeForSearchField____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[_UISearchBarVisualProviderIOS updateControlSizeForSearchField:]";
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Unexpectedly missing searchBar in %s", &v12, 0xCu);
    }
  }
}

- (void)updateDictationButtonForDynamicTypeWithSearchField:(id)field
{
  fieldCopy = field;
  _dictationButton = [fieldCopy _dictationButton];
  supportsDynamicType = [(_UISearchBarVisualProviderIOS *)self supportsDynamicType];
  if (supportsDynamicType)
  {
    v6 = [_dictationButton imageForState:0];
    font = [fieldCopy font];
    traitCollection = [fieldCopy traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_11.isa) != NSOrderedAscending)
      {
        v10 = 1;
LABEL_7:

        v11 = [UIImageSymbolConfiguration configurationWithFont:font scale:v10];
        v12 = [v6 imageWithConfiguration:v11];

        [_dictationButton setImage:v12 forState:0];
        goto LABEL_8;
      }

      UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa);
    }

    v10 = 2;
    goto LABEL_7;
  }

LABEL_8:
  [_dictationButton setShowsLargeContentViewer:!supportsDynamicType];
}

- (void)updateForDynamicType
{
  [(_UISearchBarVisualProviderIOS *)self updateSearchFieldForDynamicType];
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  _searchBarTextField = [searchBar _searchBarTextField];
  [(_UISearchBarVisualProviderIOS *)self updateDictationButtonForDynamicTypeWithSearchField:_searchBarTextField];
}

- (void)updateForDrawsBackgroundInPalette
{
  if (os_variant_has_internal_diagnostics())
  {
    v3 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "Incorrect code path for UISearchBar in navigation palette. This is a UIKit bug.", buf, 2u);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &updateForDrawsBackgroundInPalette___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Incorrect code path for UISearchBar in navigation palette. This is a UIKit bug.", v4, 2u);
    }
  }
}

- (void)updateIfNecessaryForOldSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!searchBar)
  {
    goto LABEL_12;
  }

  v12 = searchBar;
  [searchBar bounds];
  searchBar = v12;
  if (width == v8 && height == v7)
  {
    goto LABEL_12;
  }

  [(_UISearchBarVisualProviderIOS *)self layoutBackgroundViewConsideringTopBarStatusAndChangedHeight:v7 != height];
  window = [v12 window];
  if (window && +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    transitioner = self->_transitioner;

    searchBar = v12;
    if (transitioner)
    {
      goto LABEL_12;
    }

    [v12 setNeedsLayout];
    [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
    [(_UISearchBarScopeContainerView *)self->_scopeBarContainerView setNeedsLayout];
    [v12 layoutIfNeeded];
  }

  else
  {
  }

  searchBar = v12;
LABEL_12:
}

- (void)updateMagnifyingGlassViewForSearchField:(id)field
{
  v14 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v6 = [(_UISearchBarVisualProviderIOS *)self internalImageForSearchBarIcon:0 state:(*&self->_searchBarVisualProviderFlags >> 11) & 2 customImage:0];
    [fieldCopy _setMagnifyingGlassImage:v6];

    traitCollection = [searchBar traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      v9 = [(_UISearchBarVisualProviderIOS *)self colorForComponent:2 disabled:0];
      leftView = [fieldCopy leftView];
      [leftView setTintColor:v9];

LABEL_4:
    }
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v12 = 136315138;
        v13 = "[_UISearchBarVisualProviderIOS updateMagnifyingGlassViewForSearchField:]";
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Unexpectedly missing searchBar in %s", &v12, 0xCu);
      }

      goto LABEL_4;
    }

    v11 = *(__UILogGetCategoryCachedImpl("Assert", &updateMagnifyingGlassViewForSearchField____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[_UISearchBarVisualProviderIOS updateMagnifyingGlassViewForSearchField:]";
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Unexpectedly missing searchBar in %s", &v12, 0xCu);
    }
  }
}

- (void)updateRightViewForSearchField:(id)field
{
  v34 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if ((*&searchBarVisualProviderFlags & 0x200000) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = (*&searchBarVisualProviderFlags >> 22) & 2;
    }

    [fieldCopy setRightViewMode:v7];
    v8 = self->_searchBarVisualProviderFlags;
    if ((*&v8 & 0x200000) != 0)
    {
      v9 = [(_UISearchBarVisualProviderIOS *)self internalImageForSearchBarIcon:3 state:0];
      v10 = [(_UISearchBarVisualProviderIOS *)self internalImageForSearchBarIcon:3 state:1];
      v11 = [(_UISearchBarVisualProviderIOS *)self internalImageForSearchBarIcon:3 state:2];
      v12 = objc_alloc_init(UIButton);
      [(UIControl *)v12 addTarget:searchBar action:sel__resultsListButtonPressed forControlEvents:64];
      [(UIButton *)v12 setImage:v9 forStates:0];
      [(UIButton *)v12 setImage:v10 forStates:1];
      [(UIButton *)v12 setImage:v10 forStates:4];
      [(UIButton *)v12 setImage:v11 forStates:2];
      [(UIButton *)v12 setSelected:(*&self->_searchBarVisualProviderFlags >> 22) & 1];
      [(UIControl *)v12 setPointerInteractionEnabled:1];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __63___UISearchBarVisualProviderIOS_updateRightViewForSearchField___block_invoke;
      v29[3] = &unk_1E70F35B8;
      v30 = v12;
      v13 = fieldCopy;
      v31 = v13;
      v14 = v12;
      [UIView performWithoutAnimation:v29];
      v15 = [(_UISearchBarVisualProviderIOS *)self colorForComponent:0 disabled:0];
      [(UIButton *)v14 setTintColor:v15];

      LODWORD(v16) = -0.5;
      [(UIView *)v14 setCharge:v16];
      [v13 setRightView:v14];
      [v13 _setRightViewOffset:{-1.0, -1.0}];

      v17 = v30;
    }

    else
    {
      if ((*&v8 & 0x800000) == 0)
      {
        if ([(_UISearchBarVisualProviderIOS *)self canShowDictationButton])
        {
          [(_UISearchBarVisualProviderIOS *)self setUpDictationMicWithSearchField:fieldCopy];
          [(_UISearchBarVisualProviderIOS *)self setShowDictationButton:1 forSearchField:fieldCopy shouldUpdateView:0];
        }

        goto LABEL_12;
      }

      v9 = [(_UISearchBarVisualProviderIOS *)self internalImageForSearchBarIcon:2 state:0];
      v10 = [(_UISearchBarVisualProviderIOS *)self internalImageForSearchBarIcon:2 state:1];
      v11 = [(_UISearchBarVisualProviderIOS *)self internalImageForSearchBarIcon:2 state:2];
      v18 = objc_alloc_init(UIButton);
      [(UIControl *)v18 addTarget:searchBar action:sel__bookmarkButtonPressed forControlEvents:64];
      [(UIButton *)v18 setImage:v9 forStates:0];
      [(UIButton *)v18 setImage:v10 forStates:1];
      [(UIButton *)v18 setImage:v11 forStates:2];
      [(UIControl *)v18 setPointerInteractionEnabled:1];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __63___UISearchBarVisualProviderIOS_updateRightViewForSearchField___block_invoke_2;
      v26 = &unk_1E70F35B8;
      v27 = v18;
      v19 = fieldCopy;
      v28 = v19;
      v14 = v18;
      [UIView performWithoutAnimation:&v23];
      v20 = [(_UISearchBarVisualProviderIOS *)self colorForComponent:0 disabled:0, v23, v24, v25, v26];
      [(UIButton *)v14 setTintColor:v20];

      [v19 setRightView:v14];
      v17 = v27;
    }

    goto LABEL_12;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v22 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v33 = "[_UISearchBarVisualProviderIOS updateRightViewForSearchField:]";
      _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Unexpectedly missing searchBar in %s", buf, 0xCu);
    }
  }

  else
  {
    v21 = *(__UILogGetCategoryCachedImpl("Assert", &updateRightViewForSearchField____s_category) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v33 = "[_UISearchBarVisualProviderIOS updateRightViewForSearchField:]";
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Unexpectedly missing searchBar in %s", buf, 0xCu);
    }
  }

LABEL_12:
}

- (void)updateArtForSearchField:(id)field
{
  v24 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v6 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldBackgroundImageForState:0];
    if (!v6)
    {
      [fieldCopy setBorderStyle:3];
      _systemBackgroundView = [fieldCopy _systemBackgroundView];
      [_systemBackgroundView setBarStyle:{-[_UISearchBarVisualProviderIOS barStyle](self, "barStyle")}];
LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

    v7 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldBackgroundImageForState:2];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    _systemBackgroundView = v9;

    if ([v6 _isResizable])
    {
      [fieldCopy setBackground:v6];
      if (![_systemBackgroundView _isResizable])
      {
        leftCapWidth = [v6 leftCapWidth];
        topCapHeight = [v6 topCapHeight];
        v13 = _systemBackgroundView;
        v14 = leftCapWidth;
LABEL_13:
        v18 = [v13 stretchableImageWithLeftCapWidth:v14 topCapHeight:topCapHeight];
        [fieldCopy setDisabledBackground:v18];

        goto LABEL_14;
      }
    }

    else
    {
      [v6 size];
      v16 = ((v15 + -1.0) * 0.5);
      v17 = [v6 stretchableImageWithLeftCapWidth:v16 topCapHeight:0];
      [fieldCopy setBackground:v17];

      if (![_systemBackgroundView _isResizable])
      {
        v13 = _systemBackgroundView;
        v14 = v16;
        topCapHeight = 0;
        goto LABEL_13;
      }
    }

    [fieldCopy setDisabledBackground:_systemBackgroundView];
LABEL_14:
    [fieldCopy setBorderStyle:0];
    [v6 size];
    if (v19 != 28.0)
    {
      view = [(_UILendableViewContainer *)self->_lendableSearchField view];

      if (view == fieldCopy)
      {
        [searchBar setNeedsLayout];
      }
    }

    goto LABEL_17;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v6 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v22 = 136315138;
      v23 = "[_UISearchBarVisualProviderIOS updateArtForSearchField:]";
      _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unexpectedly missing searchBar in %s", &v22, 0xCu);
    }

    goto LABEL_18;
  }

  v21 = *(__UILogGetCategoryCachedImpl("Assert", &updateArtForSearchField____s_category) + 8);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = 136315138;
    v23 = "[_UISearchBarVisualProviderIOS updateArtForSearchField:]";
    _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Unexpectedly missing searchBar in %s", &v22, 0xCu);
  }

LABEL_19:
}

- (void)dictationAvailabilityDidChange:(id)change
{
  [(_UISearchBarVisualProviderIOS *)self updateForAllowedToShowDictationChange];
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  showDictationButton = [_searchBarTextField showDictationButton];

  if (showDictationButton != [(_UISearchBarVisualProviderIOS *)self canShowDictationButton])
  {
    if (showDictationButton)
    {
      _searchBarTextField2 = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
      [(_UISearchBarVisualProviderIOS *)self cleanUpDictationMicsWithSearchField:_searchBarTextField2];
    }

    [(_UISearchBarVisualProviderIOS *)self updateRightView];
  }

  [(_UISearchBarVisualProviderIOS *)self updateDictationButtonActiveState];
}

- (void)dictationControllerDidFinish:(id)finish
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  [searchBar setUseAutomaticEndpointing:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIDictationControllerDictationDidFinish" object:0];

  v5 = +[UIDictationController sharedInstance];
  [v5 dismissSoftwareKeyboardIfNeeded];
}

- (void)dictationButtonPressed:(id)pressed withEvent:(id)event
{
  pressedCopy = pressed;
  eventCopy = event;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  objc_initWeak(&location, _searchBarTextField);

  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  v11 = [UIDictationInputModeOptions dictationInputModeOptionsWithInvocationSource:@"UIDictationInputModeInvocationSourceMicButtonMicButtonInFirstResponderSearchBar"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66___UISearchBarVisualProviderIOS_dictationButtonPressed_withEvent___block_invoke;
  v12[3] = &unk_1E70F5A28;
  objc_copyWeak(&v13, &location);
  [v10 toggleDictationForResponder:searchBar withOption:v11 firstResponderSetupCompletion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)setUpDictationMicWithSearchField:(id)field
{
  fieldCopy = field;
  [fieldCopy _createDictationButtonForSearchBarVisualProvider:self];
  [(_UISearchBarVisualProviderIOS *)self updateDictationButtonForDynamicTypeWithSearchField:fieldCopy];
  ownedView = [(_UILendableViewContainer *)self->_lendableSearchField ownedView];

  v5 = fieldCopy;
  if (ownedView == fieldCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_dictationControllerDidFinish_ name:@"UIDictationControllerDictationDidFinish" object:0];

    v5 = fieldCopy;
  }

  _dictationButton = [v5 _dictationButton];
  [fieldCopy setRightView:_dictationButton];

  [fieldCopy setRightViewMode:2];
}

- (void)cleanUpDictationMicsWithSearchField:(id)field
{
  fieldCopy = field;
  v6 = fieldCopy;
  if (fieldCopy)
  {
    rightView = [fieldCopy rightView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    fieldCopy = v6;
    if (isKindOfClass)
    {
      [v6 setRightView:0];
      fieldCopy = v6;
    }
  }

  [fieldCopy _cleanUpDictationButton];
}

- (void)setShowDictationButton:(BOOL)button forSearchField:(id)field shouldUpdateView:(BOOL)view
{
  viewCopy = view;
  buttonCopy = button;
  fieldCopy = field;
  v9 = 0x800000000;
  if (!buttonCopy)
  {
    v9 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFF7FFFFFFFFLL | v9);
  v11 = fieldCopy;
  [fieldCopy setShowDictationButton:buttonCopy];
  if (viewCopy)
  {
    [(_UISearchBarVisualProviderIOS *)self updateRightViewForSearchField:v11];
  }

  [(_UISearchBarVisualProviderIOS *)self updateShowsClearButtonWhenEmpty];
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];

  if (_searchBarTextField != v11)
  {
    [v11 _setAlwaysShowsClearButtonWhenEmptyAndActive:(*&self->_searchBarVisualProviderFlags >> 41) & 1];
  }
}

- (void)setShowDictationButton:(BOOL)button shouldUpdateView:(BOOL)view
{
  viewCopy = view;
  buttonCopy = button;
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  [(_UISearchBarVisualProviderIOS *)self setShowDictationButton:buttonCopy forSearchField:_searchBarTextField shouldUpdateView:viewCopy];
}

- (void)setUpCancelButtonWithAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (![(_UISearchBarVisualProviderIOS *)self usesClearForCancel]&& ![(_UISearchBarVisualProviderIOS *)self isLoaned])
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    if (!searchBar)
    {
LABEL_26:

      goto LABEL_27;
    }

    [(_UISearchBarVisualProviderIOS *)self setUpSearchBarSearchContainerIfNecessary];
    if (self->_cancelButton)
    {
      if ((*(&self->_searchBarVisualProviderFlags + 5) & 0x20) != 0)
      {
        searchField = [(_UISearchBarVisualProviderIOS *)self searchField];
        _wantsDynamicBackgroundMaterial = [searchField _wantsDynamicBackgroundMaterial];

        if ((_wantsDynamicBackgroundMaterial & 1) == 0)
        {
          [(UIButton *)self->_cancelButton setBarStyle:*&self->_searchBarVisualProviderFlags & 7];
          effectiveBarTintColor = [(_UISearchBarVisualProviderIOS *)self effectiveBarTintColor];
          [(UIButton *)self->_cancelButton _setTintColor:effectiveBarTintColor];
        }
      }

      goto LABEL_22;
    }

    searchField2 = [(_UISearchBarVisualProviderIOS *)self searchField];
    _wantsDynamicBackgroundMaterial2 = [searchField2 _wantsDynamicBackgroundMaterial];

    if (!_wantsDynamicBackgroundMaterial2)
    {
      v10 = self->_cancelButtonText;
      if (!v10)
      {
        v10 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
      }

      v20 = [UINavigationButton alloc];
      effectiveBarTintColor2 = [(_UISearchBarVisualProviderIOS *)self effectiveBarTintColor];
      v22 = [(UINavigationButton *)v20 initWithValue:v10 width:3 style:0 barStyle:0 possibleTitles:effectiveBarTintColor2 tintColor:0.0];
      cancelButton = self->_cancelButton;
      self->_cancelButton = v22;

      *&self->_searchBarVisualProviderFlags |= 0x200000000000uLL;
      [(UIButton *)self->_cancelButton _setAppearanceGuideClass:objc_opt_class()];
      [(UIControl *)self->_cancelButton addTarget:searchBar action:sel__performCancelAction forControlEvents:64];
      goto LABEL_18;
    }

    v10 = +[UIButtonConfiguration plainButtonConfiguration];
    v11 = [UIButton _defaultImageNameForType:7 andState:0];
    traitCollection = [searchBar traitCollection];
    if ([traitCollection userInterfaceIdiom] == 3)
    {
      v13 = _UISolariumEnabled();

      if (v13)
      {
        v14 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCallout" weight:*off_1E70ECD20];
        v15 = [UIImageSymbolConfiguration configurationWithFont:v14 scale:2];

        v16 = [UIImage systemImageNamed:v11 withConfiguration:v15];
        [(NSString *)v10 setImage:v16];

        v17 = +[UIColor labelColor];
        [(NSString *)v10 setBaseForegroundColor:v17];
        v18 = 0;
        v19 = off_1E70EC180;
LABEL_17:

        v25 = [(__objc2_class *)*v19 buttonWithConfiguration:v10 primaryAction:0];
        v26 = self->_cancelButton;
        self->_cancelButton = v25;

        *&self->_searchBarVisualProviderFlags &= ~0x200000000000uLL;
        [(UIButton *)self->_cancelButton _applyDynamicSearchBarBackgroundAndCapsuleCornerMaskingConfigurationRequiringGlass:1];
        [(UIView *)self->_cancelButton _setMonochromaticTreatment:+[_UITraitMonochromaticTreatment _glassMonochromaticTreatment]];
        traitOverrides = [(UIView *)self->_cancelButton traitOverrides];
        v28 = +[_UITraitMonochromaticTreatment _glassMonochromaticTreatment];
        v29 = objc_opt_self();
        [traitOverrides setNSIntegerValue:v28 forTrait:v29];

        [(UIView *)self->_cancelButton _setEnableMonochromaticTreatment:v18];
        [(UIControl *)self->_cancelButton addTarget:searchBar action:sel__performCancelAction forControlEvents:64];

LABEL_18:
        v30 = ([searchBar isFirstResponder] & 1) != 0 || (*(&self->_searchBarVisualProviderFlags + 2) & 8) == 0;
        [(UIButton *)self->_cancelButton setEnabled:v30];
        [(_UISearchBarVisualProviderIOS *)self updateCancelButtonForDynamicType];
        [(UIView *)self->_searchFieldContainerView addSubview:self->_cancelButton];
        [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
        [(_UISearchBarScopeContainerView *)self->_scopeBarContainerView setNeedsLayout];
        [searchBar setNeedsLayout];
LABEL_22:
        if (appearanceCopy)
        {
          if ((*&self->_searchBarVisualProviderFlags & 0x200000000000) != 0)
          {
            searchField3 = [(_UISearchBarVisualProviderIOS *)self searchField];
            _wantsDynamicBackgroundMaterial3 = [searchField3 _wantsDynamicBackgroundMaterial];

            if ((_wantsDynamicBackgroundMaterial3 & 1) == 0)
            {
              [(UIButton *)self->_cancelButton _applyBarButtonAppearanceStorage:appearanceCopy withTaggedSelectors:0];
            }
          }
        }

        goto LABEL_26;
      }
    }

    else
    {
    }

    v24 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD20];
    v15 = [UIImageSymbolConfiguration configurationWithFont:v24 scale:3];

    v17 = [UIImage systemImageNamed:v11 withConfiguration:v15];
    [(NSString *)v10 setImage:v17];
    v18 = 1;
    v19 = off_1E70E9508;
    goto LABEL_17;
  }

LABEL_27:
}

- (void)setUpLeftButton
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v9 = searchBar;
    if (self->_leftButton)
    {
      effectiveBarTintColor = [(_UISearchBarVisualProviderIOS *)self effectiveBarTintColor];
      [(UINavigationButton *)self->_leftButton _setTintColor:effectiveBarTintColor];
    }

    else
    {
      v5 = [UINavigationButton alloc];
      effectiveBarTintColor2 = [(_UISearchBarVisualProviderIOS *)self effectiveBarTintColor];
      v7 = [(UINavigationButton *)v5 initWithValue:@"<configure>" width:3 style:0 barStyle:0 possibleTitles:effectiveBarTintColor2 tintColor:0.0];
      leftButton = self->_leftButton;
      self->_leftButton = v7;

      [(UINavigationButton *)self->_leftButton _setAppearanceGuideClass:objc_opt_class()];
      [(UIView *)self->_searchFieldContainerView addSubview:self->_leftButton];
      [v9 setNeedsLayout];
    }

    searchBar = v9;
  }
}

- (void)setUpPromptLabel
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v27 = searchBar;
    if (!_MergedGlobals_57)
    {
      v4 = [[UIColor alloc] initWithRed:0.168 green:0.243 blue:0.353 alpha:1.0];
      v5 = _MergedGlobals_57;
      _MergedGlobals_57 = v4;
    }

    if (!qword_1ED499838)
    {
      v6 = [[UIColor alloc] initWithWhite:1.0 alpha:0.44];
      v7 = qword_1ED499838;
      qword_1ED499838 = v6;
    }

    if (!qword_1ED499840)
    {
      v8 = [[UIColor alloc] initWithWhite:1.0 alpha:0.6];
      v9 = qword_1ED499840;
      qword_1ED499840 = v8;
    }

    if (!qword_1ED499848)
    {
      v10 = [[UIColor alloc] initWithWhite:0.0 alpha:1.0];
      v11 = qword_1ED499848;
      qword_1ED499848 = v10;
    }

    if (!self->_promptLabel)
    {
      v12 = objc_alloc_init(UILabel);
      promptLabel = self->_promptLabel;
      self->_promptLabel = v12;

      v14 = [off_1E70ECC18 systemFontOfSize:14.0];
      [(UILabel *)self->_promptLabel setFont:v14];

      [(UILabel *)self->_promptLabel setNumberOfLines:1];
      [(UILabel *)self->_promptLabel setTextAlignment:1];
      [(UIView *)self->_promptLabel setBackgroundColor:0];
      [(UIView *)self->_promptLabel setOpaque:0];
      v15 = [_UISearchBarPromptContainerView alloc];
      [v27 bounds];
      v16 = [(UIView *)v15 initWithFrame:?];
      promptContainerView = self->_promptContainerView;
      self->_promptContainerView = v16;

      [(UIView *)self->_promptContainerView setAutoresizingMask:2];
      [v27 addSubview:self->_promptContainerView];
      [(UIView *)self->_promptContainerView addSubview:self->_promptLabel];
      [(_UISearchBarPromptContainerView *)self->_promptContainerView setPromptLabel:self->_promptLabel];
    }

    v18 = _MergedGlobals_57;
    v19 = qword_1ED499838;
    effectiveBarTintColor = [(_UISearchBarVisualProviderIOS *)self effectiveBarTintColor];

    if (effectiveBarTintColor)
    {
      effectiveBarTintColor2 = [(_UISearchBarVisualProviderIOS *)self effectiveBarTintColor];
      v22 = _GetLightenedTintColor(effectiveBarTintColor2);
      v23 = GetTintedPromptTextColor(v22);

      v24 = 1.0;
    }

    else
    {
      if ((*&self->_searchBarVisualProviderFlags & 7) == 0)
      {
        traitCollection = [v27 traitCollection];
        userInterfaceStyle = [traitCollection userInterfaceStyle];

        if (userInterfaceStyle != 2)
        {
          v24 = 1.0;
          goto LABEL_18;
        }
      }

      v23 = qword_1ED499840;

      effectiveBarTintColor2 = v19;
      v24 = -1.0;
      v19 = qword_1ED499848;
    }

    v18 = v23;
LABEL_18:
    [(UILabel *)self->_promptLabel setTextColor:v18];
    [(UILabel *)self->_promptLabel setShadowColor:v19];
    [(UILabel *)self->_promptLabel setShadowOffset:0.0, v24];

    searchBar = v27;
  }
}

- (void)setUpScopeBar
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && ![(_UISearchBarVisualProviderIOS *)self isTextFieldManagedInNSToolbar])
  {
    if (!self->_scopeBar)
    {
      [searchBar sizeToFit];
      [searchBar bounds];
      v4 = v3;
      v6 = v5;
      [UISegmentedControl defaultHeightForStyle:7 size:0];
      v8 = v7;
      v9 = [[UISegmentedControl alloc] initWithFrame:7 withStyle:self->_scopeTitles withItems:0.0, v6 - v8, v4];
      if (_UISolariumEnabled())
      {
        [(UISegmentedControl *)v9 _setUseGlass:1];
      }

      scopeBar = self->_scopeBar;
      self->_scopeBar = v9;
      v11 = v9;

      [(UISegmentedControl *)v11 setSelectedSegmentIndex:self->_selectedScope];
      [(UIControl *)v11 addTarget:searchBar action:sel__scopeChanged_ forControlEvents:4096];
      [(UISegmentedControl *)v11 setBarStyle:*&self->_searchBarVisualProviderFlags & 7];
      [(_UISearchBarVisualProviderIOS *)self scopeBarHeight];
      v13 = [[_UISearchBarScopeContainerView alloc] initWithFrame:0.0, v6 - v12, v4, v12];
      scopeBarContainerView = self->_scopeBarContainerView;
      self->_scopeBarContainerView = v13;

      [(UIView *)self->_scopeBarContainerView setAutoresizingMask:2];
      v15 = [_UISearchBarScopeBarBackground alloc];
      [(UIView *)self->_scopeBarContainerView bounds];
      v16 = [(UIImageView *)v15 initWithFrame:?];
      scopeBarBackgroundView = self->_scopeBarBackgroundView;
      self->_scopeBarBackgroundView = v16;

      [(UIView *)self->_scopeBarBackgroundView setAutoresizingMask:18];
      [(UIView *)self->_scopeBarContainerView addSubview:self->_scopeBarBackgroundView];
      [(_UISearchBarVisualProviderIOS *)self updateScopeBarBackground];
      [(UIView *)v11 setAutoresizingMask:2];
      [(UIView *)self->_scopeBarContainerView addSubview:v11];

      [(_UISearchBarVisualProviderIOS *)&self->super.super.isa _establishScopeBarInSearchBarIfNecessary];
    }

    [(_UISearchBarVisualProviderIOS *)self updateScopeBarBackground];
  }
}

- (void)updateTextFromActiveSearchField
{
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64___UISearchBarVisualProviderIOS_updateTextFromActiveSearchField__block_invoke;
  v5[3] = &unk_1E70F8130;
  v6 = _searchBarTextField;
  v4 = _searchBarTextField;
  [(_UISearchBarVisualProviderIOS *)self updateOriginalAndSiblingClonesOfSearchField:v4 updates:v5];
}

- (void)updateOriginalAndSiblingClonesOfSearchField:(id)field updates:(id)updates
{
  fieldCopy = field;
  updatesCopy = updates;
  if (fieldCopy && ![(_UISearchFieldCloneManager *)self->_cloneManager isUpdatingClone])
  {
    ownedView = [(_UILendableViewContainer *)self->_lendableSearchField ownedView];
    if (ownedView != fieldCopy)
    {
      updatesCopy[2](updatesCopy, ownedView);
      [(_UISearchFieldCloneManager *)self->_cloneManager updateClonesOfSearchField:fieldCopy updates:updatesCopy];
    }
  }
}

- (void)setUpNewSearchField:(id)field
{
  v34 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v6 = searchBar;
  if (searchBar)
  {
    [fieldCopy setSemanticContentAttribute:{objc_msgSend(searchBar, "semanticContentAttribute")}];
    [fieldCopy setLeftViewMode:(*&self->_searchBarVisualProviderFlags >> 9) & 3];
    [fieldCopy _setSearchBar:v6];
    [fieldCopy setClearButtonMode:3];
    [fieldCopy _setAlwaysShowsClearButtonWhenEmptyAndActive:(*&self->_searchBarVisualProviderFlags >> 41) & 1];
    [fieldCopy setBorderStyle:3];
    [fieldCopy setOpaque:0];
    [(_UISearchBarVisualProviderIOS *)self updateControlSizeForSearchField:fieldCopy];
    [(_UISearchBarVisualProviderIOS *)self updateMagnifyingGlassViewForSearchField:fieldCopy];
    [(_UISearchBarVisualProviderIOS *)self updateRightViewForSearchField:fieldCopy];
    ownedView = [(_UILendableViewContainer *)self->_lendableSearchField ownedView];
    v8 = ownedView;
    if (ownedView)
    {
      v9 = ownedView == fieldCopy;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      [fieldCopy _setAlwaysShowsClearButtonWhenEmptyAndActive:{objc_msgSend(ownedView, "_alwaysShowsClearButtonWhenEmptyAndActive")}];
      placeholder = [v8 placeholder];
      [fieldCopy setPlaceholder:placeholder];

      [fieldCopy _copyTextAndTokensFromOtherSearchField:v8];
      selectionRange = [v8 selectionRange];
      [fieldCopy setSelectionRange:{selectionRange, v12}];
      delegate = [v8 delegate];
      [fieldCopy setDelegate:delegate];

      accessibilityIdentifier = [v8 accessibilityIdentifier];
      [fieldCopy setAccessibilityIdentifier:accessibilityIdentifier];

      _allTargetActions = [v8 _allTargetActions];
      v16 = _allTargetActions;
      if (fieldCopy)
      {
        v17 = [_allTargetActions mutableCopy];
        v18 = fieldCopy[51];
        fieldCopy[51] = v17;
      }
    }

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __53___UISearchBarVisualProviderIOS_setUpNewSearchField___block_invoke;
    v29 = &unk_1E70F35B8;
    v19 = fieldCopy;
    v30 = v19;
    selfCopy = self;
    [UIView _performSystemAppearanceModifications:&v26];
    buf[0] = 0;
    v20 = [(_UISearchBarVisualProviderIOS *)self internalImageForSearchBarIcon:1 state:0 customImage:buf, v26, v27, v28, v29];
    if (v20 && buf[0] == 1)
    {
      [v19 _setClearButtonImage:v20 forState:0];
    }

    v21 = [(_UISearchBarVisualProviderIOS *)self internalImageForSearchBarIcon:1 state:1 customImage:buf];

    if (v21 && buf[0] == 1)
    {
      [v19 _setClearButtonImage:v21 forState:1];
    }

    v22 = [(_UISearchBarVisualProviderIOS *)self internalImageForSearchBarIcon:1 state:2 customImage:buf];

    if (v22 && buf[0] == 1)
    {
      [v19 _setClearButtonImage:v22 forState:2];
    }

    [(_UISearchBarVisualProviderIOS *)self updateArtForSearchField:v19];
    [v19 addTarget:v6 action:sel__searchFieldBeginEditing forControlEvents:0x10000];
    [v19 addTarget:v6 action:sel__searchFieldEditingChanged forControlEvents:0x20000];
    [v19 addTarget:v6 action:sel__searchFieldEndEditing forControlEvents:0x40000];
    [v19 addTarget:v6 action:sel__searchFieldReturnPressed forControlEvents:0x80000];
    layer = [v19 layer];
    [layer setAllowsGroupOpacity:0];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v25 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v33 = "[_UISearchBarVisualProviderIOS setUpNewSearchField:]";
      _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "Unexpectedly missing searchBar in %s", buf, 0xCu);
    }
  }

  else
  {
    v24 = *(__UILogGetCategoryCachedImpl("Assert", &setUpNewSearchField____s_category) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v33 = "[_UISearchBarVisualProviderIOS setUpNewSearchField:]";
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Unexpectedly missing searchBar in %s", buf, 0xCu);
    }
  }
}

- (void)setUpFloatingSearchIconView
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if ((*&searchBarVisualProviderFlags & 0x8000000) != 0 && ((*&searchBarVisualProviderFlags & 0x8000000000) == 0 || !self->_floatingSearchIconView))
    {
      v7 = searchBar;
      [(_UISearchBarVisualProviderIOS *)self setUpSearchBarSearchContainerIfNecessary];
      floatingSearchIconViewSuitableForMeasuring = [(_UISearchBarVisualProviderIOS *)self floatingSearchIconViewSuitableForMeasuring];
      floatingSearchIconView = self->_floatingSearchIconView;
      self->_floatingSearchIconView = floatingSearchIconViewSuitableForMeasuring;

      [(UIView *)self->_searchFieldContainerView addSubview:self->_floatingSearchIconView];
      [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
      searchBar = v7;
      *&self->_searchBarVisualProviderFlags |= 0x8000000000uLL;
    }
  }
}

- (void)driveTransitionToSearchLayoutState:(int64_t)state
{
  if (self->_layoutState != state)
  {
    v20 = v3;
    v21 = v4;
    [(_UISearchBarVisualProviderIOS *)self prepareForTransitionToSearchLayoutState:?];
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    searchBar[11] |= 1uLL;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __68___UISearchBarVisualProviderIOS_driveTransitionToSearchLayoutState___block_invoke;
    v17 = &unk_1E70F32F0;
    selfCopy = self;
    stateCopy = state;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v10 = __68___UISearchBarVisualProviderIOS_driveTransitionToSearchLayoutState___block_invoke_2;
    v11 = &unk_1E70F8A88;
    v8 = searchBar;
    v12 = v8;
    selfCopy2 = self;
    stateCopy2 = state;
    if (+[UIView areAnimationsEnabled])
    {
      [UIView animateWithDuration:4 delay:v15 options:v9 animations:0.3833 completion:0.0];
    }

    else
    {
      v16(v15);
      v10(v9, 1);
    }
  }
}

- (void)prepareForTransitionToSearchLayoutState:(int64_t)state
{
  v35 = *MEMORY[0x1E69E9840];
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v7 = searchBar;
  if (!searchBar)
  {
    goto LABEL_56;
  }

  _searchController = [searchBar _searchController];

  if (!_searchController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderIOS.m" lineNumber:2715 description:@"layoutState transitions for a search bar without a search controller are not supported. This is an internal UIKit bug."];
  }

  _searchController2 = [v7 _searchController];
  if (!_searchController2)
  {
    if (state != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = _searchController2;
  v11 = (*(_searchController2 + 1116) >> 5) & 3;
  if (!v11)
  {
    if (dyld_program_sdk_at_least())
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }
  }

  if (state == 3 && v11 != 1)
  {
    if (v11 == 2)
    {
      _searchBarTextField = [v7 _searchBarTextField];
      -[_UISearchBarVisualProviderIOS setActiveSearchDeferringScopeBar:](self, "setActiveSearchDeferringScopeBar:", [_searchBarTextField _hasContent] ^ 1);

      goto LABEL_15;
    }

LABEL_14:
    [(_UISearchBarVisualProviderIOS *)self setActiveSearchDeferringScopeBar:0];
  }

LABEL_15:
  layoutState = self->_layoutState;
  if (self->_transitioner)
  {
    [(_UISearchBarVisualProviderIOS *)self cancelTransitionToSearchLayoutState:self->_layoutState];
    layoutState = self->_layoutState;
    if (layoutState == state)
    {
      goto LABEL_56;
    }
  }

  if (!layoutState)
  {
    self->_previousLayoutState = 2;
    self->_layoutState = 2;
    v17 = v7;
    goto LABEL_25;
  }

  v15 = v7;
  if (layoutState == 3)
  {
    if ((state - 1) >= 2)
    {
      goto LABEL_31;
    }

    v16 = off_1E70EC160;
    goto LABEL_52;
  }

  if (layoutState == 2)
  {
LABEL_25:
    layoutState = 2;
    if (state == 1)
    {
      v16 = off_1E70EC178;
    }

    else
    {
      if (state != 3)
      {
        goto LABEL_31;
      }

      v16 = off_1E70EC170;
      layoutState = 2;
    }

    goto LABEL_52;
  }

  if (layoutState != 1)
  {
    goto LABEL_31;
  }

  if (state != 2)
  {
    if (state == 3)
    {
      v16 = off_1E70EC170;
      layoutState = 1;
      goto LABEL_52;
    }

LABEL_31:
    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        if ((layoutState + 1) > 4)
        {
          v30 = @"Unknown _UISearchBarLayoutState";
        }

        else
        {
          v30 = off_1E70F8B40[layoutState + 1];
        }

        if ((state + 1) > 4)
        {
          v33 = @"Unknown _UISearchBarLayoutState";
        }

        else
        {
          v33 = off_1E70F8B68[state + 1];
        }

        *v34 = 138412546;
        *&v34[4] = v30;
        *&v34[12] = 2112;
        *&v34[14] = v33;
        _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "UISearchBar transition from %@ to %@ is not supported. This is an internal UIKit problem.", v34, 0x16u);
      }
    }

    else
    {
      v18 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499860) + 8);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_41:
        if (os_variant_has_internal_diagnostics())
        {
          v29 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            if ((layoutState + 1) > 4)
            {
              v31 = @"Unknown _UISearchBarLayoutState";
            }

            else
            {
              v31 = off_1E70F8B40[layoutState + 1];
            }

            if ((state + 1) > 4)
            {
              v32 = @"Unknown _UISearchBarLayoutState";
            }

            else
            {
              v32 = off_1E70F8B68[state + 1];
            }

            *v34 = 138412546;
            *&v34[4] = v31;
            *&v34[12] = 2112;
            *&v34[14] = v32;
            _os_log_fault_impl(&dword_188A29000, v29, OS_LOG_TYPE_FAULT, "TODO: create and implement a transitioner for %@ to %@. This is an internal UIKit task.", v34, 0x16u);
          }
        }

        else
        {
          v22 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499868) + 8);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            if ((layoutState + 1) > 4)
            {
              v23 = @"Unknown _UISearchBarLayoutState";
            }

            else
            {
              v23 = off_1E70F8B40[layoutState + 1];
            }

            if ((state + 1) > 4)
            {
              v24 = @"Unknown _UISearchBarLayoutState";
            }

            else
            {
              v24 = off_1E70F8B68[state + 1];
            }

            *v34 = 138412546;
            *&v34[4] = v23;
            *&v34[12] = 2112;
            *&v34[14] = v24;
            v25 = v22;
            _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "TODO: create and implement a transitioner for %@ to %@. This is an internal UIKit task.", v34, 0x16u);
          }
        }

        v26 = 0;
        goto LABEL_53;
      }

      if ((layoutState + 1) > 4)
      {
        v19 = @"Unknown _UISearchBarLayoutState";
      }

      else
      {
        v19 = off_1E70F8B40[layoutState + 1];
      }

      if ((state + 1) > 4)
      {
        v20 = @"Unknown _UISearchBarLayoutState";
      }

      else
      {
        v20 = off_1E70F8B68[state + 1];
      }

      *v34 = 138412546;
      *&v34[4] = v19;
      *&v34[12] = 2112;
      *&v34[14] = v20;
      v21 = v18;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "UISearchBar transition from %@ to %@ is not supported. This is an internal UIKit problem.", v34, 0x16u);
    }

    goto LABEL_41;
  }

  v16 = off_1E70EC158;
LABEL_52:
  v26 = [objc_alloc(*v16) initWithNewTransitionContextForSearchBar:v7];
  if (!v26)
  {
    goto LABEL_41;
  }

LABEL_53:

  transitioner = self->_transitioner;
  self->_transitioner = v26;

  if (!self->_cancelButton)
  {
    [(_UISearchBarVisualProviderIOS *)self setUpCancelButton];
  }

  self->_previousLayoutState = self->_layoutState;
  self->_layoutState = state;
  [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_prospectiveLayout forState:self->_previousLayoutState, *v34, *&v34[16]];
  [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_currentLayout];
  transitionContext = [(_UISearchBarTransitionerBase *)self->_transitioner transitionContext];
  [transitionContext setFromLayout:self->_prospectiveLayout];
  [transitionContext setToLayout:self->_currentLayout];
  [(_UISearchBarTransitionerBase *)self->_transitioner prepare];

LABEL_56:
}

- (void)freezeForAnimatedTransitionToSearchLayoutState:(int64_t)state
{
  RaiseForUnexpectedLayoutState(state, self->_layoutState);
  [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setFrozenLayout:1];
  if (state == 2)
  {
    *&self->_searchBarVisualProviderFlags |= 0x10000uLL;
  }
}

- (void)animateTransitionToSearchLayoutState:(int64_t)state
{
  RaiseForUnexpectedLayoutState(state, self->_layoutState);
  isHostedInlineByNavigationBar = [(_UISearchBarVisualProviderIOS *)self isHostedInlineByNavigationBar];
  v6 = isHostedInlineByNavigationBar;
  if (state == 3 && isHostedInlineByNavigationBar)
  {
    [(_UISearchBarVisualProviderIOS *)self setRequiresSearchTextField:1];
  }

  transitionContext = [(_UISearchBarTransitionerBase *)self->_transitioner transitionContext];
  toLayout = [transitionContext toLayout];
  fromLayout = [transitionContext fromLayout];
  [(_UISearchBarVisualProviderIOS *)self configureLayout:toLayout forState:state];
  if (v6)
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    [searchBar invalidateIntrinsicContentSize];
  }

  if ([(_UISearchBarVisualProviderIOS *)self searchFieldContainerViewNeedsLayoutForTransitionFromLayoutState:fromLayout toLayout:toLayout])
  {
    [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
  }

  [(_UISearchBarTransitionerBase *)self->_transitioner animate];
}

- (BOOL)searchFieldContainerViewNeedsLayoutForTransitionFromLayoutState:(id)state toLayout:(id)layout
{
  layoutCopy = layout;
  LOBYTE(state) = [state hasCancelButton];
  hasCancelButton = [layoutCopy hasCancelButton];

  return state ^ hasCancelButton;
}

- (void)_resetScopeBarFlagsAfterCompleteOrCancelTransition
{
  if (!self)
  {
    return;
  }

  searchBar = [self searchBar];
  _searchController = [searchBar _searchController];

  v3 = _searchController;
  if (!_searchController)
  {
    v6 = 0;
LABEL_9:
    v8 = self[21] & 0xFFFFFFFBFFFFFFFFLL | ((v6 == 2) << 34);
    self[21] = v8;
    if (v6 == 2)
    {
      self[21] = v8 & 0xFFFFFFFDFFFFFFFFLL;
    }

    goto LABEL_11;
  }

  v4 = _searchController[279];
  v5 = (v4 >> 5) & 3;
  if (v5 != 1)
  {
    if (!v5)
    {
      dyld_program_sdk_at_least();
      v3 = _searchController;
      v4 = _searchController[279];
    }

    v6 = (v4 >> 5) & 3;
    if (!v6)
    {
      v7 = dyld_program_sdk_at_least() == 0;
      v3 = _searchController;
      v6 = 2;
      if (v7)
      {
        v6 = 3;
      }
    }

    goto LABEL_9;
  }

LABEL_11:
}

- (void)completeTransitionToSearchLayoutState:(int64_t)state
{
  RaiseForUnexpectedLayoutState(state, self->_layoutState);
  [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setFrozenLayout:0];
  *&self->_searchBarVisualProviderFlags &= ~0x10000uLL;
  [(_UISearchBarTransitionerBase *)self->_transitioner complete];
  activeLayout = [(_UISearchBarTransitionerBase *)self->_transitioner activeLayout];
  [activeLayout layoutSize];
  [(_UISearchBarLayoutBase *)self->_currentLayout setLayoutSize:?];

  transitioner = self->_transitioner;
  self->_transitioner = 0;

  self->_previousLayoutState = self->_layoutState;
  v7 = _UISolariumEnabled();
  if (state == 3 && v7)
  {
    if (![(_UISearchBarVisualProviderIOS *)self suppressFirstResponderOnTransitionToLayoutStateSearching])
    {
      searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
      isFirstResponder = [searchBar isFirstResponder];

      if ((isFirstResponder & 1) == 0)
      {
        searchBar2 = [(_UISearchBarVisualProviderBase *)self searchBar];
        [searchBar2 becomeFirstResponder];
LABEL_10:
      }
    }
  }

  else if (state != 3)
  {
    [(_UISearchBarVisualProviderIOS *)self _resetScopeBarFlagsAfterCompleteOrCancelTransition];
    if (state == 2)
    {
      _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
      window = [_searchBarTextField window];
      firstResponder = [window firstResponder];
      _searchBarTextField2 = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];

      if (firstResponder == _searchBarTextField2)
      {
        searchBar3 = [(_UISearchBarVisualProviderBase *)self searchBar];
        [searchBar3 resignFirstResponder];

        _searchBarTextField3 = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
        [_searchBarTextField3 setText:&stru_1EFB14550];

        searchBar2 = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
        [searchBar2 setTokens:MEMORY[0x1E695E0F0]];
        goto LABEL_10;
      }
    }
  }

  layoutState = self->_layoutState;
  if (layoutState == 3)
  {
    [(_UISearchBarVisualProviderIOS *)self setSuppressFirstResponderOnTransitionToLayoutStateSearching:0];
  }

  [(_UISearchBarVisualProviderIOS *)self setRequiresSearchTextField:layoutState == 3];
  currentLayout = self->_currentLayout;

  [(_UISearchBarLayout *)currentLayout prepareSearchContainerLayout];
}

- (void)cancelTransitionToSearchLayoutState:(int64_t)state
{
  [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setFrozenLayout:0];
  *&self->_searchBarVisualProviderFlags &= ~0x10000uLL;
  [(_UISearchBarTransitionerBase *)self->_transitioner cancel];
  transitioner = self->_transitioner;
  self->_transitioner = 0;

  self->_layoutState = self->_previousLayoutState;
  if (state == 3)
  {
    [(_UISearchBarVisualProviderIOS *)self _resetScopeBarFlagsAfterCompleteOrCancelTransition];
  }

  [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_currentLayout];
  [(_UISearchBarVisualProviderIOS *)self setRequiresSearchTextField:self->_layoutState == 3];
  if ((*(&self->_searchBarVisualProviderFlags + 4) & 0x40) != 0)
  {
    currentLayout = self->_currentLayout;

    [(_UISearchBarLayout *)currentLayout prepareSearchContainerLayout];
  }
}

- (BOOL)isIntegratedAsEnabledSearchIconButton
{
  if (![(UIBarButtonItem *)self->_searchIconBarButtonItem isEnabled])
  {
    return 0;
  }

  view = [(UIBarButtonItem *)self->_searchIconBarButtonItem view];
  window = [view window];
  if (window)
  {
    window2 = [(UIView *)self->_searchFieldContainerView window];
    v6 = window2 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)growToSearchFieldIfNecessary
{
  layoutState = self->_layoutState;
  if (layoutState != 1)
  {
    if (![(_UISearchBarVisualProviderIOS *)self isIntegratedAsEnabledSearchIconButton])
    {
      return;
    }

    layoutState = self->_layoutState;
  }

  self->_previousLayoutState = layoutState;
  self->_layoutState = 2;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  [searchBar invalidateIntrinsicContentSize];

  searchFieldContainerView = self->_searchFieldContainerView;

  [(_UISearchBarSearchContainerView *)searchFieldContainerView setNeedsLayout];
}

- (void)shrinkToButtonIfNecessary
{
  layoutState = self->_layoutState;
  if (layoutState != 1)
  {
    self->_previousLayoutState = layoutState;
    self->_layoutState = 1;
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    [searchBar invalidateIntrinsicContentSize];

    searchFieldContainerView = self->_searchFieldContainerView;

    [(_UISearchBarSearchContainerView *)searchFieldContainerView setNeedsLayout];
  }
}

- (void)navigationBarSlideTransitionWillBegin
{
  if ([(_UISearchBarLayout *)self->_currentLayout isHostingNavBarTransitionActive])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unexpected nesting of -navigationBarSlideTransitionWillBegin may result in incorrect visibility of search scope bar", buf, 2u);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &navigationBarSlideTransitionWillBegin___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unexpected nesting of -navigationBarSlideTransitionWillBegin may result in incorrect visibility of search scope bar", v5, 2u);
      }
    }
  }

  [(_UISearchBarLayout *)self->_currentLayout setHostingNavBarTransitionActive:1];
}

- (void)setShowsSeparator:(BOOL)separator
{
  separatorCopy = separator;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    separator = self->_separator;
    if (separatorCopy)
    {
      if (separator)
      {
        goto LABEL_8;
      }

      v12 = searchBar;
      v7 = [UIImageView alloc];
      currentSeparatorImage = [(_UISearchBarVisualProviderIOS *)self currentSeparatorImage];
      v9 = [(UIImageView *)v7 initWithImage:currentSeparatorImage];
      v10 = self->_separator;
      self->_separator = v9;

      [v12 addSubview:self->_separator];
      [v12 setNeedsLayout];
    }

    else
    {
      if (!separator)
      {
        goto LABEL_8;
      }

      v12 = searchBar;
      [(UIView *)separator removeFromSuperview];
      v11 = self->_separator;
      self->_separator = 0;
    }

    searchBar = v12;
  }

LABEL_8:
}

- (void)setShowsDeleteButton:(BOOL)button
{
  buttonCopy = button;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if (((((*&searchBarVisualProviderFlags & 0x100000) == 0) ^ buttonCopy) & 1) == 0)
    {
      v18 = searchBar;
      v7 = 0x100000;
      if (!buttonCopy)
      {
        v7 = 0;
      }

      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFFFFFEFFFFFLL | v7);
      [(_UISearchBarVisualProviderIOS *)self destroyCancelButton];
      if ((*(&self->_searchBarVisualProviderFlags + 2) & 0x10) != 0)
      {
        _searchController = [v18 _searchController];
        traitCollection = [_searchController traitCollection];
        v10 = traitCollection;
        if (traitCollection)
        {
          traitCollection2 = traitCollection;
        }

        else
        {
          traitCollection2 = [v18 traitCollection];
        }

        v12 = traitCollection2;

        v13 = [UINavigationButton alloc];
        v14 = _UIImageWithNameAndTraitCollection(@"delete-on", v12);
        v15 = [(UINavigationButton *)v13 initWithImage:v14 style:3];
        cancelButton = self->_cancelButton;
        self->_cancelButton = v15;

        *&self->_searchBarVisualProviderFlags |= 0x200000000000uLL;
        [(UIButton *)self->_cancelButton _setAppearanceGuideClass:objc_opt_class()];
        [(UIControl *)self->_cancelButton addTarget:v18 action:sel__deleteButtonPressed forControlEvents:64];
        [(_UISearchBarVisualProviderIOS *)self updateCancelButtonForDynamicType];
        [(_UISearchBarVisualProviderIOS *)self setUpSearchBarSearchContainerIfNecessary];
        [(UIView *)self->_searchFieldContainerView addSubview:self->_cancelButton];
        v17 = ([v18 isFirstResponder] & 1) != 0 || (*(&self->_searchBarVisualProviderFlags + 2) & 8) == 0;
        [(UIButton *)self->_cancelButton setEnabled:v17];
        [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
      }

      else
      {
        [(_UISearchBarVisualProviderIOS *)self setUpCancelButton];
      }

      searchBar = v18;
    }
  }
}

- (void)setClippingViewActive:(BOOL)active
{
  activeCopy = active;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v10 = searchBar;
    searchBar2 = [(_UISearchBarVisualProviderBase *)self searchBar];
    traitCollection = [searchBar2 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom != 5)
    {
      searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
      if ((*&searchBarVisualProviderFlags & 0x4000000) != 0)
      {
        if ((*&searchBarVisualProviderFlags & 0x8000000) != 0 || !activeCopy)
        {
          [(UIView *)self->_searchBarClippingView setClipsToBounds:0];
LABEL_11:
          [v10 bounds];
          [(_UISearchBarVisualProviderIOS *)self setClippingViewBounds:?];
LABEL_12:
          searchBar = v10;
          goto LABEL_13;
        }

        if (!_UISolariumEnabled())
        {
          [(UIView *)self->_searchBarClippingView setClipsToBounds:1];
          goto LABEL_12;
        }

        activeCopy = [(_UISearchBarVisualProviderIOS *)self isHostedInlineByToolbar];
      }
    }

    [(UIView *)self->_searchBarClippingView setClipsToBounds:activeCopy];
    searchBar = v10;
    if (activeCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
}

- (void)setClippingViewBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    searchBarClippingView = self->_searchBarClippingView;
    if (searchBarClippingView)
    {
      v11 = searchBar;
      [(UIView *)searchBarClippingView frame];
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      v10 = CGRectEqualToRect(v13, v14);
      searchBar = v11;
      if (!v10)
      {
        [v11 frame];
        [(UIView *)self->_searchBarClippingView setBounds:x, y];
        [(UIView *)self->_searchBarClippingView setFrame:x, y, width, height];
        searchBar = v11;
      }
    }
  }
}

- (void)navigationBarTransitionWillBegin:(int64_t)begin willBeDisplayed:(BOOL)displayed
{
  displayedCopy = displayed;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v8 = 1.0;
    if (displayedCopy)
    {
      v8 = 0.0;
    }

    v21 = searchBar;
    [searchBar setAlpha:v8];
    searchBar = v21;
    if (begin == 2)
    {
      v9 = self->_searchBarClippingView;
      [v21 bounds];
      v11 = v10;
      if (_UIBarsUseNewPadHeights())
      {
        v12 = 50.0;
      }

      else
      {
        v12 = 56.0;
      }

      [(UIView *)v9 setFrame:0.0, 0.0, v11, v12];
      [(UIView *)v9 setAutoresizingMask:0];
      [(UIView *)v9 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      [(_UISearchBarVisualProviderIOS *)self layoutSubviewsInBounds:v14, v16, v18, v20];
      searchBar = v21;
    }
  }
}

- (void)navigationBarTransitionCompleted:(int64_t)completed willBeDisplayed:(BOOL)displayed
{
  v6 = [(_UISearchBarVisualProviderBase *)self searchBar:completed];
  if (v6)
  {
    v7 = v6;
    [v6 setAlpha:1.0];
    v6 = v7;
    if (completed == 2)
    {
      [v7 bounds];
      [(UIView *)self->_searchBarClippingView setFrame:?];
      [(UIView *)self->_searchBarClippingView setAutoresizingMask:18];
      [v7 layoutSubviews];
      v6 = v7;
    }
  }
}

- (BOOL)_getNavigationTitleLeadingInset:(double *)inset trailingInset:(double *)trailingInset isRTL:(BOOL)l
{
  lCopy = l;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v10 = searchBar;
  if (searchBar && self->_navBarTitleViewLocation && self->_navBarTitleViewOverlayRects)
  {
    [searchBar bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v10 _contentMargin];
    v56 = v19;
    [v10 safeAreaInsets];
    v54 = v21;
    v55 = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85___UISearchBarVisualProviderIOS__getNavigationTitleLeadingInset_trailingInset_isRTL___block_invoke;
    aBlock[3] = &__block_descriptor_65_e39_d40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    v60 = lCopy;
    aBlock[4] = v12;
    aBlock[5] = v14;
    aBlock[6] = v16;
    aBlock[7] = v18;
    v22 = _Block_copy(aBlock);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __85___UISearchBarVisualProviderIOS__getNavigationTitleLeadingInset_trailingInset_isRTL___block_invoke_2;
    v57[3] = &__block_descriptor_65_e39_d40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    v58 = lCopy;
    v57[4] = v12;
    v57[5] = v14;
    v57[6] = v16;
    v57[7] = v18;
    v23 = _Block_copy(v57);
    [(_UINavigationBarTitleViewOverlayRects *)self->_navBarTitleViewOverlayRects backButtonRect];
    x = v24;
    y = v26;
    width = v28;
    height = v30;
    [(_UINavigationBarTitleViewOverlayRects *)self->_navBarTitleViewOverlayRects leadingItemsRect];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    if (CGRectIsNull(v61) && (v62.origin.x = v33, v62.origin.y = v35, v62.size.width = v37, v62.size.height = v39, CGRectIsNull(v62)))
    {
      v40 = v55;
      if (lCopy)
      {
        v40 = v54;
      }

      v41 = v56 + v40;
    }

    else
    {
      v63.origin.x = v33;
      v63.origin.y = v35;
      v63.size.width = v37;
      v63.size.height = v39;
      if (!CGRectIsNull(v63))
      {
        v64.origin.x = x;
        v64.origin.y = y;
        v64.size.width = width;
        v64.size.height = height;
        if (CGRectIsNull(v64))
        {
          x = v33;
          y = v35;
          width = v37;
          height = v39;
        }

        else
        {
          v65.origin.x = v33;
          v65.origin.y = v35;
          v65.size.width = v37;
          v65.size.height = v39;
          v68.origin.x = x;
          v68.origin.y = y;
          v68.size.width = width;
          v68.size.height = height;
          v66 = CGRectUnion(v65, v68);
          x = v66.origin.x;
          y = v66.origin.y;
          width = v66.size.width;
          height = v66.size.height;
        }
      }

      v43 = v22[2](v22, x, y, width, height);
      [(_UISearchBarVisualProviderIOS *)self minimumHorizontalMargin];
      v41 = v43 + v44;
    }

    *inset = v41;
    [(_UINavigationBarTitleViewOverlayRects *)self->_navBarTitleViewOverlayRects trailingItemsRect];
    v45 = v67.origin.x;
    v46 = v67.origin.y;
    v47 = v67.size.width;
    v48 = v67.size.height;
    if (CGRectIsNull(v67))
    {
      v49 = v55;
      if (!lCopy)
      {
        v49 = v54;
      }

      v50 = v56 + v49;
    }

    else
    {
      v51 = v23[2](v23, v45, v46, v47, v48);
      [(_UISearchBarVisualProviderIOS *)self minimumHorizontalMargin];
      v50 = v51 + v52;
    }

    *trailingInset = v50;

    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (void)getNavigationBarHostedTopInset:(double *)inset bottomInset:(double *)bottomInset forActive:(BOOL)active isCompact:(BOOL)compact
{
  activeCopy = active;
  if (compact)
  {
    v9 = !active;
    v10 = 0.0;
    v11 = 4.0;
    if (active)
    {
      v10 = 4.0;
    }

    *inset = v10;
    v12 = 8.0;
  }

  else
  {
    v13 = _UIBarsUseNewPadHeights();
    v9 = !activeCopy;
    v14 = 1.0;
    if (v13)
    {
      v11 = 7.0;
    }

    else
    {
      v11 = 8.0;
    }

    if (activeCopy)
    {
      v14 = v11;
    }

    *inset = v14;
    v12 = 15.0;
  }

  if (!v9)
  {
    v12 = v11;
  }

  *bottomInset = v12;
}

- (void)getTopAttachedTopInset:(double *)inset bottomInset:(double *)bottomInset isCompact:(BOOL)compact
{
  compactCopy = compact;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    if (compactCopy)
    {
      *inset = 7.0;
      *bottomInset = 7.0;
    }

    else
    {
      v12 = searchBar;
      if (_UIBarsUseNewPadHeights())
      {
        *inset = 7.0;
        *bottomInset = 7.0;
      }

      else
      {
        *inset = 4.0;
        _screen = [v12 _screen];
        if (![_screen _isEmbeddedScreen] || (objc_msgSend(_screen, "_peripheryInsets"), v10 = 15.0, v11 <= 0.0))
        {
          v10 = 10.0;
        }

        *bottomInset = v10;
      }

      searchBar = v12;
    }
  }
}

- (void)getTopInset:(double *)inset bottomInset:(double *)bottomInset forBarMetrics:(int64_t)metrics barPosition:(int64_t)position
{
  transitioner = self->_transitioner;
  if (transitioner)
  {
    activeLayout = [(_UISearchBarTransitionerBase *)transitioner activeLayout];
    -[_UISearchBarVisualProviderIOS getTopInset:bottomInset:forBarMetrics:barPosition:layoutState:](self, "getTopInset:bottomInset:forBarMetrics:barPosition:layoutState:", inset, bottomInset, metrics, position, [activeLayout representedLayoutState]);
  }

  else
  {
    layoutState = self->_layoutState;

    [(_UISearchBarVisualProviderIOS *)self getTopInset:inset bottomInset:bottomInset forBarMetrics:metrics barPosition:position layoutState:layoutState];
  }
}

- (void)getTopInset:(double *)inset bottomInset:(double *)bottomInset forBarMetrics:(int64_t)metrics barPosition:(int64_t)position layoutState:(int64_t)state forcingInlineCalculation:(BOOL)calculation
{
  calculationCopy = calculation;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v17 = metrics == 1 || metrics == 102;
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    v31 = searchBar;
    if ((*&searchBarVisualProviderFlags & 0x8000000) != 0 || calculationCopy)
    {
      [(_UISearchBarVisualProviderIOS *)self allowedHeightInNavigationContentView];
      v20 = v19;
      transitioner = [(_UISearchBarVisualProviderIOS *)self transitioner];
      activeLayout = [transitioner activeLayout];
      currentLayout = activeLayout;
      if (!activeLayout)
      {
        currentLayout = self->_currentLayout;
      }

      v24 = currentLayout;

      [(_UISearchBarLayout *)v24 naturalSearchFieldHeight];
      v26 = v25;

      UIFloorToViewScale(v31);
      searchBar = v31;
      v28 = fmax(v27, 0.0);
      *inset = v28;
      *bottomInset = fmax(v20 - v28 - v26, 0.0);
    }

    else
    {
      if ((*&searchBarVisualProviderFlags & 0x4000000) != 0)
      {
        if (state == 3)
        {
          _searchController = [searchBar _searchController];
          hidesNavigationBarDuringPresentation = [_searchController hidesNavigationBarDuringPresentation];
        }

        else
        {
          hidesNavigationBarDuringPresentation = 0;
        }

        [(_UISearchBarVisualProviderIOS *)self getNavigationBarHostedTopInset:inset bottomInset:bottomInset forActive:hidesNavigationBarDuringPresentation isCompact:v17];
      }

      else if (position == 3)
      {
        [(_UISearchBarVisualProviderIOS *)self getTopAttachedTopInset:inset bottomInset:bottomInset isCompact:v17];
      }

      else
      {
        [(_UISearchBarVisualProviderIOS *)self getDefaultTopInset:inset bottomInset:bottomInset];
      }

      searchBar = v31;
    }
  }
}

- (void)setOverrideContentInsets:(UIEdgeInsets)insets forRectEdges:(unint64_t)edges
{
  overriddenContentInsetEdges = self->_overriddenContentInsetEdges;
  v6 = vdupq_n_s64(edges);
  v7 = vdupq_n_s64(overriddenContentInsetEdges);
  left = insets.left;
  right = insets.right;
  v10 = vbicq_s8(vaddq_f64(*&insets.top, 0), vceqzq_s64(vandq_s8(v6, xmmword_18A64BFB0)));
  v11 = vbicq_s8(vaddq_f64(*&insets.bottom, 0), vceqzq_s64(vandq_s8(v6, xmmword_18A64C6E0)));
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(vbicq_s8(vaddq_f64(*&self->_contentInsetPrivateMinOrOverride.top, 0), vceqzq_s64(vandq_s8(v7, xmmword_18A64BFB0))), v10), vceqq_f64(vbicq_s8(vaddq_f64(*&self->_contentInsetPrivateMinOrOverride.bottom, 0), vceqzq_s64(vandq_s8(v7, xmmword_18A64C6E0))), v11)))))
  {
    if (overriddenContentInsetEdges != edges)
    {
      self->_overriddenContentInsetEdges = edges;
    }
  }

  else
  {
    self->_overriddenContentInsetEdges = edges;
    *&self->_contentInsetPrivateMinOrOverride.top = v10;
    *&self->_contentInsetPrivateMinOrOverride.bottom = v11;
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    [searchBar setNeedsLayout];
    [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
    [(_UISearchBarScopeContainerView *)self->_scopeBarContainerView setNeedsLayout];
    if (self->_transitioner)
    {
      if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
      {
        window = [searchBar window];

        if (window)
        {
          [(_UISearchBarVisualProviderIOS *)self updateEffectiveContentInset];
          [(_UISearchBarVisualProviderIOS *)self effectiveContentInset];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          activeLayout = [(_UISearchBarTransitionerBase *)self->_transitioner activeLayout];
          [activeLayout setContentInset:{v14, v16, v18, v20}];

          [searchBar layoutIfNeeded];
        }
      }
    }
  }
}

- (void)getOverrideContentInsets:(UIEdgeInsets *)insets overriddenEdges:(unint64_t *)edges
{
  if (edges)
  {
    *edges = self->_overriddenContentInsetEdges;
  }

  if (insets)
  {
    if (self->_overriddenContentInsetEdges)
    {
      p_contentInsetPrivateMinOrOverride = &self->_contentInsetPrivateMinOrOverride;
    }

    else
    {
      p_contentInsetPrivateMinOrOverride = &UIEdgeInsetsZero;
    }

    v5 = *&p_contentInsetPrivateMinOrOverride->bottom;
    *&insets->top = *&p_contentInsetPrivateMinOrOverride->top;
    *&insets->bottom = v5;
  }
}

- (UIEdgeInsets)recalculatedEffectiveContentInsetForLayoutState:(int64_t)state
{
  [(_UISearchBarVisualProviderIOS *)self recalculatedEffectiveContentInsetForLayoutState:state forcingInlineCalculation:0 getScopeBarContentInset:0];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)recalculatedEffectiveContentInsetForLayoutState:(int64_t)state forcingInlineCalculation:(BOOL)calculation getScopeBarContentInset:(UIEdgeInsets *)inset
{
  calculationCopy = calculation;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v10 = searchBar;
  if (!searchBar)
  {
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_39;
  }

  v68 = 0.0;
  v69[0] = 0.0;
  effectiveUserInterfaceLayoutDirection = [searchBar effectiveUserInterfaceLayoutDirection];
  v12 = effectiveUserInterfaceLayoutDirection == 1;
  v13 = "_UIMonochromaticTreatment";
  if (![(_UISearchBarVisualProviderIOS *)self _getNavigationTitleLeadingInset:v69 trailingInset:&v68 isRTL:v12])
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if ((*&searchBarVisualProviderFlags & 0x3000000) == 0)
    {
      if ((*&searchBarVisualProviderFlags & 0x4000000) == 0)
      {
        if ([(_UISearchBarVisualProviderIOS *)self alwaysUsesLayoutMarginsForHorizontalContentInset])
        {
          [v10 directionalLayoutMargins];
          v20 = v19;
          v69[0] = v21;
          tableViewIndexWidth = self->_tableViewIndexWidth;
          [(_UISearchBarVisualProviderIOS *)self minimumHorizontalMargin];
          v24 = tableViewIndexWidth + v23;
          if (v20 >= v24)
          {
            v24 = v20;
          }

          v68 = v24;
        }

        else
        {
          v39 = self->_tableViewIndexWidth;
          if (v39 <= 0.0)
          {
            [v10 safeAreaInsets];
            if (effectiveUserInterfaceLayoutDirection == 1)
            {
              v44 = v43;
            }

            else
            {
              v44 = v42;
            }

            v69[0] = v44;
            if (effectiveUserInterfaceLayoutDirection == 1)
            {
              v41 = v42;
            }

            else
            {
              v41 = v43;
            }
          }

          else
          {
            [(_UISearchBarVisualProviderIOS *)self minimumHorizontalMargin];
            v41 = v39 + v40;
          }

          v68 = v41;
        }

        goto LABEL_30;
      }

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v65 = __130___UISearchBarVisualProviderIOS_recalculatedEffectiveContentInsetForLayoutState_forcingInlineCalculation_getScopeBarContentInset___block_invoke;
      v66 = &unk_1E70F8AD0;
      v25 = v10;
      v67 = v25;
      _searchController = [v25 _searchController];
      _navigationItemCurrentlyDisplayingSearchBar = [_searchController _navigationItemCurrentlyDisplayingSearchBar];
      _navigationBar = [_navigationItemCurrentlyDisplayingSearchBar _navigationBar];
      __130___UISearchBarVisualProviderIOS_recalculatedEffectiveContentInsetForLayoutState_forcingInlineCalculation_getScopeBarContentInset___block_invoke(v64, _navigationBar);
      v29 = v28;
      v31 = v30;

      v68 = v31;
      v69[0] = v29;
      if (inset)
      {
        viewStackedInNavigationBar = [(_UISearchBarVisualProviderIOS *)self viewStackedInNavigationBar];
        v13 = "_UIMonochromaticTreatment";
        if (viewStackedInNavigationBar)
        {
          v33 = viewStackedInNavigationBar;
          v58 = _searchController;
          viewStackedInNavigationBar2 = [(_UISearchBarVisualProviderIOS *)self viewStackedInNavigationBar];

          if (viewStackedInNavigationBar2 != v25)
          {
            _searchController = v58;
            _navigationItemCurrentlyDisplayingSearchController = [v58 _navigationItemCurrentlyDisplayingSearchController];
            v36 = _navigationItemCurrentlyDisplayingSearchController;
            v37 = _navigationItemCurrentlyDisplayingSearchBar;
            if (_navigationItemCurrentlyDisplayingSearchController != _navigationItemCurrentlyDisplayingSearchBar)
            {
              _navigationBar2 = [_navigationItemCurrentlyDisplayingSearchController _navigationBar];
              v65(v64, _navigationBar2);

              _searchController = v58;
            }

            goto LABEL_29;
          }

          _searchController = v58;
        }

        v37 = _navigationItemCurrentlyDisplayingSearchBar;
      }

      else
      {
        v37 = _navigationItemCurrentlyDisplayingSearchBar;
        v13 = "_UIMonochromaticTreatment";
      }

LABEL_29:

LABEL_30:
      [(_UISearchBarVisualProviderIOS *)self minimumHorizontalMargin];
      v46 = v68;
      if (v69[0] >= v45)
      {
        v47 = v69[0];
      }

      else
      {
        v47 = v45;
      }

      if (v68 < v45)
      {
        v46 = v45;
      }

      v68 = v46;
      v69[0] = v47;
    }
  }

  v62 = 0;
  v63 = 0;
  -[_UISearchBarVisualProviderIOS getTopInset:bottomInset:forBarMetrics:barPosition:layoutState:forcingInlineCalculation:](self, "getTopInset:bottomInset:forBarMetrics:barPosition:layoutState:forcingInlineCalculation:", &v63, &v62, -[_UISearchBarVisualProviderIOS barMetricsForOrientation:](self, "barMetricsForOrientation:", [v10 _expectedInterfaceOrientation]), self->_barPosition, state, calculationCopy);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = *(v13 + 235);
  v60[2] = __130___UISearchBarVisualProviderIOS_recalculatedEffectiveContentInsetForLayoutState_forcingInlineCalculation_getScopeBarContentInset___block_invoke_2;
  v60[3] = &unk_1E70F8AF8;
  v61 = v12;
  v60[5] = v63;
  v60[6] = v62;
  v60[4] = self;
  if (inset)
  {
    inset->top = __130___UISearchBarVisualProviderIOS_recalculatedEffectiveContentInsetForLayoutState_forcingInlineCalculation_getScopeBarContentInset___block_invoke_2(v60);
    inset->left = v48;
    inset->bottom = v49;
    inset->right = v50;
  }

  v14 = __130___UISearchBarVisualProviderIOS_recalculatedEffectiveContentInsetForLayoutState_forcingInlineCalculation_getScopeBarContentInset___block_invoke_2(v60);
  v15 = v51;
  v16 = v52;
  v17 = v53;
LABEL_39:

  v54 = v14;
  v55 = v15;
  v56 = v16;
  v57 = v17;
  result.right = v57;
  result.bottom = v56;
  result.left = v55;
  result.top = v54;
  return result;
}

- (UIEdgeInsets)scopeBarInsets
{
  [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_currentLayout];
  currentLayout = self->_currentLayout;

  [(_UISearchBarLayout *)currentLayout scopeContainerSpecificInsets];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (double)scopeBarHeight
{
  [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_currentLayout];
  currentLayout = self->_currentLayout;

  [(_UISearchBarLayout *)currentLayout naturalScopeContainerHeight];
  return result;
}

- (BOOL)containsScopeBar
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v4 = [(UIView *)self->_scopeBarContainerView isDescendantOfView:searchBar];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)barHeightForBarMetrics:(int64_t)metrics withEffectiveInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (-[_UISearchBarVisualProviderIOS barMetricsForOrientation:](self, "barMetricsForOrientation:", [searchBar _expectedInterfaceOrientation]) == metrics && (left == self->_effectiveContentInset.left ? (v11 = top == self->_effectiveContentInset.top) : (v11 = 0), v11 ? (v12 = right == self->_effectiveContentInset.right) : (v12 = 0), v12 && bottom == self->_effectiveContentInset.bottom))
  {
    v14 = 0;
    v13 = &OBJC_IVAR____UISearchBarVisualProviderIOS__prospectiveLayout;
  }

  else
  {
    v13 = &OBJC_IVAR____UISearchBarVisualProviderIOS__currentLayout;
    v14 = 1;
  }

  v15 = *(&self->super.super.isa + *v13);
  [(_UISearchBarVisualProviderIOS *)self configureLayout:v15];
  if (v14)
  {
    [v15 setBarMetrics:metrics];
    [v15 setContentInset:{top, left, bottom, right}];
  }

  [v15 naturalSearchFieldContainerHeight];
  v17 = v16;

  return v17;
}

- (double)searchFieldHeight
{
  [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_currentLayout];
  currentLayout = self->_currentLayout;

  [(_UISearchBarLayout *)currentLayout naturalSearchFieldHeight];
  return result;
}

- (double)barHeightForBarMetrics:(int64_t)metrics barPosition:(int64_t)position
{
  top = self->_effectiveContentInset.top;
  left = self->_effectiveContentInset.left;
  right = self->_effectiveContentInset.right;
  bottom = self->_effectiveContentInset.bottom;
  v11 = top;
  [(_UISearchBarVisualProviderIOS *)self getTopInset:&v11 bottomInset:&bottom forBarMetrics:metrics barPosition:position];
  [(_UISearchBarVisualProviderIOS *)self barHeightForBarMetrics:metrics withEffectiveInsets:v11, left, bottom, right];
  return result;
}

- (int64_t)barMetricsForOrientation:(int64_t)orientation
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!searchBar)
  {
    v9 = 0;
    goto LABEL_14;
  }

  text = [(UILabel *)self->_promptLabel text];
  v7 = [text length];

  if ((orientation - 1) <= 1 || (*(&self->_searchBarVisualProviderFlags + 3) & 1) == 0)
  {
    goto LABEL_11;
  }

  traitCollection = [searchBar traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {

    goto LABEL_11;
  }

  traitCollection2 = [searchBar traitCollection];
  horizontalSizeClass = [traitCollection2 horizontalSizeClass];

  if (horizontalSizeClass != 1)
  {
LABEL_11:
    if (v7)
    {
      v9 = 101;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v9 = 102;
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (double)defaultHeightForOrientation:(int64_t)orientation
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v6 = searchBar;
  if (searchBar)
  {
    _expectedInterfaceOrientation = [searchBar _expectedInterfaceOrientation];
    layoutState = self->_layoutState;
    transitioner = [(_UISearchBarVisualProviderIOS *)self transitioner];
    v10 = transitioner;
    if (_expectedInterfaceOrientation == orientation)
    {
      if (transitioner)
      {
        transitioner2 = [(_UISearchBarVisualProviderIOS *)self transitioner];
        activeLayout = [transitioner2 activeLayout];

        layoutState = [(_UISearchBarLayout *)activeLayout representedLayoutState];
      }

      else
      {
        activeLayout = self->_currentLayout;
      }

      [(_UISearchBarVisualProviderIOS *)self configureLayout:activeLayout forState:layoutState];
    }

    else
    {
      activeLayout = self->_prospectiveLayout;
      [(_UISearchBarLayout *)self->_prospectiveLayout setRepresentedLayoutState:layoutState];
      [(_UISearchBarVisualProviderIOS *)self configureLayout:activeLayout forState:layoutState];
      [(_UISearchBarLayoutBase *)activeLayout setBarMetrics:[(_UISearchBarVisualProviderIOS *)self barMetricsForOrientation:orientation]];
    }

    [(_UISearchBarLayout *)activeLayout naturalTotalHeight];
    v13 = v14;
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (double)navigationBarContentHeight
{
  if (_UIBarsUseNewPadHeights())
  {
    return 50.0;
  }

  [(_UISearchBarVisualProviderIOS *)self intrinsicContentSize];
  return v4;
}

- (void)updateNavigationBarLayoutInsertDataForSearchBar:(id)bar collapsibleScopeBar:(id)scopeBar forLayoutState:(int64_t)state
{
  barCopy = bar;
  scopeBarCopy = scopeBar;
  [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_prospectiveLayout forState:state];
  [(_UISearchBarLayout *)self->_prospectiveLayout naturalTotalHeight];
  v10 = v9;
  [(_UISearchBarLayout *)self->_prospectiveLayout naturalScopeContainerHeight];
  v12 = v11;
  if ([(_UISearchBarVisualProviderIOS *)self isIntegratedIntoToolbarOrNavigationBarContent])
  {
    [barCopy setPreferredHeight:0.0];
    [barCopy setMinimumHeight:0.0];
    if (![(_UISearchBarLayout *)self->_prospectiveLayout hasScopeBar])
    {
      v12 = 0.0;
    }

    [scopeBarCopy setPreferredHeight:v12];
    v13 = scopeBarCopy;
    v14 = v12;
  }

  else
  {
    if ([(_UISearchBarLayout *)self->_prospectiveLayout hasScopeBar])
    {
      v15 = v10 - v12;
      [barCopy setMinimumHeight:v15];
      [barCopy setPreferredHeight:v15];
      [scopeBarCopy setMinimumHeight:v12];
      [scopeBarCopy setPreferredHeight:v12];
      searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
      traitCollection = [searchBar traitCollection];
      v18 = [traitCollection verticalSizeClass] == 1;
      [scopeBarCopy setPrefersExpanded:v18];
      [scopeBarCopy setCollapsible:v18];

      goto LABEL_9;
    }

    [barCopy setPreferredHeight:v10];
    [barCopy setMinimumHeight:v10];
    [scopeBarCopy setPreferredHeight:0.0];
    v14 = 0.0;
    v13 = scopeBarCopy;
  }

  [v13 setMinimumHeight:v14];
  [scopeBarCopy setCollapsible:0];
LABEL_9:
}

- (void)updateIsPinnedInNavigationBar:(BOOL)bar
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((((*&searchBarVisualProviderFlags & 0x40000000000) == 0) ^ bar) & 1) == 0)
  {
    v4 = 0x40000000000;
    if (!bar)
    {
      v4 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFBFFFFFFFFFFLL | v4);
    [(_UISearchBarVisualProviderIOS *)self _updateSearchTextFieldBackgroundMaterial];
  }
}

- (void)_updateSearchTextFieldBackgroundMaterial
{
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  if (_searchBarTextField)
  {
    v4 = *&self->_searchBarVisualProviderFlags & 0xC0000000000;
    v5 = _searchBarTextField;
    [_searchBarTextField _setBackgroundMaterialShouldBeGlass:v4 != 0];
    if ([v5 _wantsDynamicBackgroundMaterial])
    {
      [(UIButton *)self->_cancelButton _applyDynamicSearchBarBackgroundAndCapsuleCornerMaskingConfigurationRequiringGlass:v4 != 0];
    }

    [(_UISearchBarVisualProviderIOS *)self _updateScrollPocketInteraction];
    _searchBarTextField = v5;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v6 = [(_UISearchBarVisualProviderBase *)self searchBar:fits.width];
  v7 = v6;
  if (v6)
  {
    -[_UISearchBarVisualProviderIOS defaultHeightForOrientation:](self, "defaultHeightForOrientation:", [v6 _expectedInterfaceOrientation]);
    v9 = v8;
    if (dyld_program_sdk_at_least())
    {
      if ((*&width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v21.width = width;
        v21.height = v9;
        v11 = NSStringFromCGSize(v21);
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderIOS.m" lineNumber:3573 description:{@"-[UISearchBar sizeThatFits:] does not support passing non-finite values (%@)", v11}];
      }
    }

    else if ((*&width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      width = 0.0;
    }

    if (!-[_UISearchBarVisualProviderIOS isInBarButNotHosted](self, "isInBarButNotHosted") || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 userInterfaceIdiom], v12, (v13 & 0xFFFFFFFFFFFFFFFBLL) != 1))
    {
      if (width == 0.0)
      {
        superview = [v7 superview];
        v15 = superview;
        if (superview)
        {
          [superview bounds];
          width = v16;
        }

        else if (fabs(width) < 2.22044605e-16)
        {
          _screen = [v7 _screen];
          [_screen bounds];
          width = v18;
        }
      }
    }
  }

  else
  {
    width = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
  }

  v19 = width;
  v20 = v9;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)displayNavBarCancelButton:(BOOL)button animated:(BOOL)animated
{
  animatedCopy = animated;
  buttonCopy = button;
  searchNavigationItem = [(_UISearchBarVisualProviderIOS *)self searchNavigationItem];
  if (buttonCopy)
  {
    cancelBarButtonItem = [(_UISearchBarVisualProviderIOS *)self cancelBarButtonItem];
    v8 = MEMORY[0x1E695DF70];
    rightBarButtonItems = [searchNavigationItem rightBarButtonItems];
    cancelBarButtonItem = [v8 arrayWithArray:rightBarButtonItems];

    [cancelBarButtonItem addObject:cancelBarButtonItem];
    [searchNavigationItem setRightBarButtonItems:cancelBarButtonItem animated:animatedCopy];
  }

  else
  {
    v11 = MEMORY[0x1E695DF70];
    rightBarButtonItems2 = [searchNavigationItem rightBarButtonItems];
    cancelBarButtonItem = [v11 arrayWithArray:rightBarButtonItems2];

    [cancelBarButtonItem removeObjectIdenticalTo:self->_cancelBarButtonItem];
    [searchNavigationItem setRightBarButtonItems:cancelBarButtonItem animated:animatedCopy];
    cancelBarButtonItem = self->_cancelBarButtonItem;
    self->_cancelBarButtonItem = 0;
  }
}

- (double)availableBoundsWidth
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = searchBar;
  if (searchBar)
  {
    [searchBar bounds];
    [(_UISearchBarVisualProviderIOS *)self availableBoundsWidthForSize:v5, v6];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)availableBoundsWidthForSize:(CGSize)size
{
  p_effectiveContentInset = &self->_effectiveContentInset;
  v5 = size.width - self->_effectiveContentInset.left - self->_effectiveContentInset.right;
  leftButton = self->_leftButton;
  if (leftButton)
  {
    [(UINavigationButton *)leftButton _pathTitleEdgeInsets];
    v9 = v7 + v8;
    [(UIView *)self->_leftButton frame];
    v5 = v5 - (CGRectGetWidth(v19) + 11.0 - v9);
  }

  if (self->_cancelButton)
  {
    if ((*(&self->_searchBarVisualProviderFlags + 2) & 4) != 0)
    {
      if (!-[_UISearchBarVisualProviderIOS isInBarButNotHosted](self, "isInBarButNotHosted") || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 userInterfaceIdiom], v10, (v11 & 0xFFFFFFFFFFFFFFFBLL) != 1))
      {
        [(UIButton *)self->_cancelButton _pathTitleEdgeInsets];
        v13 = v12;
        v15 = v14;
        [(UIView *)self->_cancelButton frame];
        v16 = v5 - (CGRectGetWidth(v20) + 11.0 - v15 - v13);
        right = p_effectiveContentInset->right;
        if (right >= 8.0)
        {
          return v16;
        }

        else
        {
          return v16 - (8.0 - right);
        }
      }
    }
  }

  return v5;
}

- (BOOL)includedInPresentationByOffscreenAnimator
{
  selfCopy = self;
  if ([(_UILendableViewContainer *)self->_lendableSearchField isLoaned])
  {
    scopeTitles = [(_UISearchBarVisualProviderIOS *)selfCopy scopeTitles];
    LOBYTE(selfCopy) = [scopeTitles count] != 0;
  }

  else
  {
    LODWORD(selfCopy) = ![(_UISearchBarVisualProviderIOS *)selfCopy isTextFieldManagedInNSToolbar];
  }

  return selfCopy;
}

- (void)setRequiresSearchTextField:(BOOL)field
{
  fieldCopy = field;
  requiresSearchTextField = [(_UISearchBarVisualProviderIOS *)self requiresSearchTextField];
  v6 = 0x10000000000;
  if (!fieldCopy)
  {
    v6 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFEFFFFFFFFFFLL | v6);
  if (requiresSearchTextField != [(_UISearchBarVisualProviderIOS *)self requiresSearchTextField])
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    _searchController = [searchBar _searchController];
    [_searchController _searchBarSearchTextFieldRequirementDidChange:searchBar];
  }
}

- (double)idealInlineWidthForLayoutState:(int64_t)state
{
  if (state == -1 || (*&self->_searchBarVisualProviderFlags & 0x4000000) == 0)
  {
    return 0.0;
  }

  [(_UISearchBarVisualProviderIOS *)self setUpCancelButton];
  if (state)
  {
    stateCopy = state;
  }

  else
  {
    stateCopy = 2;
  }

  [(_UISearchBarVisualProviderIOS *)self configureLayout:self->_prospectiveLayout forState:stateCopy];
  [(_UISearchBarLayout *)self->_prospectiveLayout setHostedInlineByNavigationBar:1];
  if (![(_UISearchBarVisualProviderIOS *)self isHostedInlineByNavigationBar])
  {
    [(_UISearchBarVisualProviderIOS *)self recalculatedEffectiveContentInsetForLayoutState:state forcingInlineCalculation:1 getScopeBarContentInset:0];
    [(_UISearchBarLayoutBase *)self->_prospectiveLayout setContentInset:?];
  }

  prospectiveLayout = self->_prospectiveLayout;

  [(_UISearchBarLayout *)prospectiveLayout idealSearchContainerWidth];
  return result;
}

- (void)setLeftInsetForInlineSearch:(double)search
{
  if (self->_leftInsetForInlineSearch != search)
  {
    self->_leftInsetForInlineSearch = search;
    transitioner = self->_transitioner;
    if (transitioner)
    {
      activeLayout = [(_UISearchBarTransitionerBase *)transitioner activeLayout];
      [(_UISearchBarVisualProviderIOS *)self configureLayout:activeLayout];
    }
  }
}

- (void)setRightInsetForInlineSearch:(double)search
{
  if (self->_rightInsetForInlineSearch != search)
  {
    self->_rightInsetForInlineSearch = search;
    transitioner = self->_transitioner;
    if (transitioner)
    {
      activeLayout = [(_UISearchBarTransitionerBase *)transitioner activeLayout];
      [(_UISearchBarVisualProviderIOS *)self configureLayout:activeLayout];
    }
  }
}

- (BOOL)usesClearForCancel
{
  if (!_UISolariumEnabled())
  {
    return 0;
  }

  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  traitCollection = [searchBar traitCollection];
  v5 = [traitCollection userInterfaceIdiom] == 1;

  return v5;
}

- (void)configureLayout:(id)layout forState:(int64_t)state
{
  v62 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v8 = searchBar;
  if (!searchBar)
  {
    goto LABEL_90;
  }

  _searchController = [searchBar _searchController];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (state)
  {
    v11 = _searchController == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (!has_internal_diagnostics)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    v49 = *(__UILogGetCategoryCachedImpl("Assert", &configureLayout_forState____s_category) + 8);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      if ((state + 1) > 4)
      {
        v50 = @"Unknown _UISearchBarLayoutState";
      }

      else
      {
        v50 = off_1E70F8B40[state + 1];
      }

      *buf = 138412290;
      *&buf[4] = v50;
      v51 = v49;
      _os_log_impl(&dword_188A29000, v51, OS_LOG_TYPE_ERROR, "When there is no search controller, configuring for %@ may result in broken search bar layout. This is an internal UIKit problem.", buf, 0xCu);
    }

LABEL_105:
    v13 = 0;
    goto LABEL_16;
  }

  if (v12)
  {
    v48 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      if ((state + 1) > 4)
      {
        v52 = @"Unknown _UISearchBarLayoutState";
      }

      else
      {
        v52 = off_1E70F8B40[state + 1];
      }

      *buf = 138412290;
      *&buf[4] = v52;
      _os_log_fault_impl(&dword_188A29000, v48, OS_LOG_TYPE_FAULT, "When there is no search controller, configuring for %@ may result in broken search bar layout. This is an internal UIKit problem.", buf, 0xCu);
    }

    goto LABEL_105;
  }

LABEL_10:
  if (!state)
  {
    v53 = 1;
    if ([(_UISearchBarVisualProviderIOS *)self isTextFieldManagedInNSToolbar])
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (!_searchController)
  {
    goto LABEL_105;
  }

  v13 = (_searchController[279] >> 5) & 3;
  if (!v13)
  {
    if (dyld_program_sdk_at_least())
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }
  }

LABEL_16:
  if ([(_UISearchBarVisualProviderIOS *)self isTextFieldManagedInNSToolbar])
  {
LABEL_17:
    v53 = 0;
LABEL_19:
    v14 = 0;
    goto LABEL_23;
  }

  if (v13 == 1)
  {
    v53 = 0;
LABEL_22:
    v14 = (*(&self->_searchBarVisualProviderFlags + 4) >> 1) & 1;
    goto LABEL_23;
  }

  if (state == 2)
  {
    goto LABEL_17;
  }

  v53 = 0;
  v14 = (*(&self->_searchBarVisualProviderFlags + 4) & 4) == 0;
LABEL_23:
  v15 = [(NSArray *)self->_scopeTitles count];
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  [layoutCopy setHasScopeBar:v16];
  [layoutCopy setNeedsReconfigurationForScopeBar:0];
  v17 = _UISolariumEnabled() ^ 1;
  if (state != 3)
  {
    LOBYTE(v17) = 1;
  }

  if ((v17 & 1) == 0 && [_searchController hidesNavigationBarDuringPresentation] && -[_UISearchBarVisualProviderIOS isHostedByNavigationBar](self, "isHostedByNavigationBar") && !-[_UISearchBarVisualProviderIOS isIntegratedIntoToolbarOrNavigationBarContent](self, "isIntegratedIntoToolbarOrNavigationBarContent"))
  {
    v19 = 0x80000000000;
    v18 = 1;
  }

  else if ([(_UISearchBarVisualProviderIOS *)self isHostedByNavigationBar])
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v20 = _UISolariumEnabled();
    v18 = 0;
    v19 = 0x80000000000;
    if (!v20)
    {
      v19 = 0;
    }
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFF7FFFFFFFFFFLL | v19);
  traitCollection = [v8 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if ((v18 | (state == 3 && userInterfaceIdiom == 6)) == 1)
  {
    if (userInterfaceIdiom == 6)
    {
      v22 = [traitCollection _hasSplitViewControllerContextSidebarColumn] ^ 1;
    }

    else
    {
      v22 = ([traitCollection _splitViewControllerContext] + 1) < 2;
    }
  }

  else
  {
    v22 = 0;
  }

  [layoutCopy setShouldApplyContainerSafeAreaInsets:v22];
  [layoutCopy setHostedInlineByNavigationBar:(*&self->_searchBarVisualProviderFlags >> 27) & 1];
  [layoutCopy setHostedInlineByToolbar:(*&self->_searchBarVisualProviderFlags >> 28) & 1];
  [layoutCopy setFloating:{-[_UISearchBarVisualProviderIOS isFloating](self, "isFloating")}];
  if ((*(&self->_searchBarVisualProviderFlags + 3) & 8) != 0)
  {
    _navigationItemCurrentlyDisplayingSearchBar = [_searchController _navigationItemCurrentlyDisplayingSearchBar];
    [layoutCopy setAlwaysForceReadableWidth:{objc_msgSend(_navigationItemCurrentlyDisplayingSearchBar, "searchBarPlacement") == 3}];
  }

  else
  {
    [layoutCopy setAlwaysForceReadableWidth:0];
  }

  [layoutCopy setRepresentedLayoutState:state];
  [layoutCopy setBarMetrics:{-[_UISearchBarVisualProviderIOS barMetricsForOrientation:](self, "barMetricsForOrientation:", objc_msgSend(v8, "_expectedInterfaceOrientation"))}];
  *buf = 0u;
  v61 = 0u;
  [(_UISearchBarVisualProviderIOS *)self recalculatedEffectiveContentInsetForLayoutState:state forcingInlineCalculation:0 getScopeBarContentInset:buf];
  [layoutCopy setContentInset:?];
  [layoutCopy setScopeBarContentInset:{*buf, *&buf[8], v61}];
  [layoutCopy setSearchFieldContainer:self->_searchFieldContainerView];
  _searchBarTextFieldIfNotLoanedOut = [(_UISearchBarVisualProviderIOS *)self _searchBarTextFieldIfNotLoanedOut];
  [layoutCopy setSearchField:_searchBarTextFieldIfNotLoanedOut];

  [layoutCopy setSearchIconBarButtonItem:self->_searchIconBarButtonItem];
  if ((*(&self->_searchBarVisualProviderFlags + 3) & 8) != 0 && [(_UISearchBarVisualProviderIOS *)self navigationBarWantsFlexibleInlineSearch])
  {
    [(_UISearchBarVisualProviderIOS *)self defaultFlexibleSearchFieldWidth];
    [layoutCopy setDefaultMinimumWidth:?];
    [(_UISearchBarVisualProviderIOS *)self defaultFlexibleSearchFieldWidth];
  }

  else
  {
    [(_UISearchBarVisualProviderBase *)self defaultMinimumSearchFieldWidth];
    [layoutCopy setDefaultMinimumWidth:?];
    [(_UISearchBarVisualProviderIOS *)self defaultActiveSearchFieldWidth];
  }

  [layoutCopy setDefaultActiveWidth:?];
  [(_UISearchBarVisualProviderIOS *)self defaultInactiveSearchFieldWidth];
  [layoutCopy setDefaultInactiveWidth:?];
  [(_UISearchBarVisualProviderBase *)self overrideInlineInactiveWidth];
  [layoutCopy setOverrideInactiveWidth:?];
  [(_UISearchBarVisualProviderBase *)self overrideInlineActiveWidth];
  [layoutCopy setOverrideActiveWidth:?];
  if (state == 1)
  {
    if ([layoutCopy isProspective])
    {
      [(_UISearchBarVisualProviderIOS *)self floatingSearchIconViewSuitableForMeasuring];
    }

    else
    {
      [(_UISearchBarVisualProviderIOS *)self floatingSearchIconView];
    }
    v26 = ;
    [layoutCopy setFloatingSearchIconView:v26];

    floatingSearchIconBackgroundView = [(_UISearchBarVisualProviderIOS *)self floatingSearchIconBackgroundView];
    [layoutCopy setHasFloatingSearchIconBackgroundView:floatingSearchIconBackgroundView != 0];

    floatingSearchIconBackgroundView2 = [(_UISearchBarVisualProviderIOS *)self floatingSearchIconBackgroundView];
    [layoutCopy setFloatingSearchIconBackgroundView:floatingSearchIconBackgroundView2];

    goto LABEL_55;
  }

  [layoutCopy setFloatingSearchIconView:self->_floatingSearchIconView];
  if ((v53 & 1) == 0)
  {
LABEL_55:
    v25 = [_searchController automaticallyShowsCancelButton] ^ 1;
    goto LABEL_56;
  }

  v25 = 1;
LABEL_56:
  if ([(_UILendableViewContainer *)self->_lendableSearchField isLoaned]|| [(_UISearchBarVisualProviderIOS *)self usesClearForCancel])
  {
    v29 = 0;
  }

  else if (v25)
  {
    v29 = (*(&self->_searchBarVisualProviderFlags + 2) >> 2) & 1;
  }

  else
  {
    v29 = (state - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  [layoutCopy setHasCancelButton:v29];
  if ((*(&self->_searchBarVisualProviderFlags + 2) & 0x10) != 0)
  {
    [layoutCopy setHasDeleteButton:1];
    [layoutCopy setHasCancelButton:0];
    [layoutCopy setCancelButton:0];
    [layoutCopy setDeleteButton:self->_cancelButton];
  }

  else
  {
    [layoutCopy setHasDeleteButton:0];
    [layoutCopy setDeleteButton:0];
    searchField = [(_UISearchBarVisualProviderIOS *)self searchField];
    _wantsDynamicBackgroundMaterial = [searchField _wantsDynamicBackgroundMaterial];

    if (_wantsDynamicBackgroundMaterial)
    {
      [(UIButton *)self->_cancelButton setTitle:0 forState:0];
    }

    [layoutCopy setCancelButton:self->_cancelButton];
  }

  [layoutCopy setHasLeftButton:self->_leftButton != 0];
  [layoutCopy setLeftButton:self->_leftButton];
  [layoutCopy setNumberOfScopeTitles:v15];
  [(_UISearchBarVisualProviderIOS *)self defaultScopeBarInsets];
  [layoutCopy setDefaultScopeBarInsets:?];
  objc_initWeak(&location, self);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __58___UISearchBarVisualProviderIOS_configureLayout_forState___block_invoke;
  v57[3] = &unk_1E70F8B20;
  objc_copyWeak(&v58, &location);
  [layoutCopy setHostedScopeBarHeightForBarMetrics:v57];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __58___UISearchBarVisualProviderIOS_configureLayout_forState___block_invoke_2;
  v55[3] = &unk_1E70F8B20;
  objc_copyWeak(&v56, &location);
  [layoutCopy setHostedScopeBarTopInsetForBarMetrics:v55];
  [layoutCopy setScopeBarContainer:self->_scopeBarContainerView];
  [layoutCopy setScopeBar:self->_scopeBar];
  [layoutCopy setHasSearchBarBackground:self->_searchBarBackground != 0];
  [(_UISearchBarVisualProviderIOS *)self effectiveBackgroundExtension];
  [layoutCopy setBackgroundExtension:?];
  [layoutCopy setSearchBarBackground:self->_searchBarBackground];
  [layoutCopy setHasSearchBarBackdrop:{-[_UISearchBarVisualProviderIOS usesBackdrop](self, "usesBackdrop")}];
  backdropVisualEffectView = self->_backdropVisualEffectView;
  if (!backdropVisualEffectView)
  {
    backdropVisualEffectView = self->_backdrop;
  }

  [layoutCopy setSearchBarBackdrop:backdropVisualEffectView];
  [layoutCopy setHasSeparator:self->_separator != 0];
  [layoutCopy setSeparator:self->_separator];
  WeakRetained = objc_loadWeakRetained(&self->_navBarTitleViewDataSource);
  if (WeakRetained || (*(&self->_searchBarVisualProviderFlags + 3) & 5) != 0)
  {

LABEL_69:
    [layoutCopy setHasPromptLabel:0];
    [layoutCopy setPromptContainer:0];
    [(UIView *)self->_promptContainerView removeFromSuperview];
    goto LABEL_70;
  }

  prompt = [(_UISearchBarVisualProviderIOS *)self prompt];
  v47 = [prompt length] == 0;

  if (v47)
  {
    goto LABEL_69;
  }

  [layoutCopy setHasPromptLabel:1];
  [(_UISearchBarVisualProviderIOS *)self setUpPromptLabel];
  [layoutCopy setPromptContainer:self->_promptContainerView];
  [v8 addSubview:self->_promptContainerView];
LABEL_70:
  v34 = 0;
  if (state != 3 && (*&self->_searchBarVisualProviderFlags & 0x4000000) != 0)
  {
    if (_UISolariumEnabled())
    {
      v34 = (*(&self->_searchBarVisualProviderFlags + 3) & 8) == 0;
    }

    else
    {
      v34 = 1;
    }
  }

  [layoutCopy setAllowSearchFieldShrinkage:v34];
  v35 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldBackgroundImageForState:0];
  [layoutCopy setSearchFieldUsesCustomBackgroundImage:v35 != 0];

  [layoutCopy setSearchFieldEffectivelySupportsDynamicType:{objc_msgSend(v8, "_effectivelySupportsDynamicType")}];
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  font = [_searchBarTextField font];
  [layoutCopy setSearchFieldFont:font];

  [layoutCopy setLayoutRTL:(v8[13] >> 22) & 1];
  if (-[_UISearchBarVisualProviderIOS isInBarButNotHosted](self, "isInBarButNotHosted") && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v38 = objc_claimAutoreleasedReturnValue(), v39 = [v38 userInterfaceIdiom], v38, (v39 & 0xFFFFFFFFFFFFFFFBLL) == 1) || (objc_msgSend(v8, "traitCollection"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "userInterfaceIdiom") == 6, v40, v41))
  {
    [layoutCopy setHasCancelButton:0];
  }

  [layoutCopy setHostedByNavigationBar:(*&self->_searchBarVisualProviderFlags >> 26) & 1];
  [layoutCopy setTextFieldManagedInNSToolbar:(*&self->_searchBarVisualProviderFlags >> 30) & 1];
  [layoutCopy setSearchBarReadableWidth:_UIViewReadableWidthForView(v8)];
  leftInsetForInlineSearch = 0.0;
  if (self->_layoutState == 1)
  {
    rightInsetForInlineSearch = 0.0;
  }

  else
  {
    rightInsetForInlineSearch = 0.0;
    if ((*(&self->_searchBarVisualProviderFlags + 3) & 8) != 0)
    {
      leftInsetForInlineSearch = self->_leftInsetForInlineSearch;
      rightInsetForInlineSearch = self->_rightInsetForInlineSearch;
    }
  }

  [layoutCopy leftContentInsetForInlineSearch];
  if (v44 != leftInsetForInlineSearch || ([layoutCopy rightContentInsetForInlineSearch], v45 != rightInsetForInlineSearch))
  {
    [layoutCopy setLeftContentInsetForInlineSearch:leftInsetForInlineSearch];
    [layoutCopy setRightContentInsetForInlineSearch:rightInsetForInlineSearch];
    if (([layoutCopy isProspective] & 1) == 0)
    {
      [v8 setNeedsLayout];
      [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
    }
  }

  [(_UISearchBarVisualProviderIOS *)self _updateSearchTextFieldBackgroundMaterial];
  objc_destroyWeak(&v56);
  objc_destroyWeak(&v58);
  objc_destroyWeak(&location);

LABEL_90:
}

- (CGRect)boundsForSearchBarAndUpdateIfNecessaryFromSuggestedBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    WeakRetained = objc_loadWeakRetained(&self->_navBarTitleViewDataSource);
    if (WeakRetained)
    {
      navBarTitleViewOverlayRects = self->_navBarTitleViewOverlayRects;
      if (navBarTitleViewOverlayRects)
      {
        [(_UINavigationBarTitleViewOverlayRects *)navBarTitleViewOverlayRects reset];
      }

      else
      {
        v12 = objc_alloc_init(_UINavigationBarTitleViewOverlayRects);
        v13 = self->_navBarTitleViewOverlayRects;
        self->_navBarTitleViewOverlayRects = v12;
      }

      [WeakRetained titleView:searchBar needsUpdatedContentOverlayRects:self->_navBarTitleViewOverlayRects];
      [(_UISearchBarVisualProviderIOS *)self updateEffectiveContentInset];
    }

    else if (![(_UISearchBarVisualProviderIOS *)self isInBarButNotHosted])
    {
      [(UIImageView *)self->_searchBarBackground setHidden:(*&self->_searchBarVisualProviderFlags >> 14) & 1];
      v11 = (*(&self->_searchBarVisualProviderFlags + 1) & 0x40) == 0 && self->_searchBarBackground != 0;
      [(_UISearchBarLayout *)self->_currentLayout setHasSearchBarBackground:v11];
      [(_UISearchBarVisualProviderIOS *)self updateSearchBarOpacity];
LABEL_16:

      goto LABEL_17;
    }

    superview = [searchBar superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topItem = [superview topItem];
      titleView = [topItem titleView];

      if (titleView != searchBar)
      {
        [superview frame];
        height = v17;
        [searchBar setBounds:{x, y, width}];
      }
    }

    [(UIImageView *)self->_searchBarBackground setHidden:1];
    [(_UISearchBarLayout *)self->_currentLayout setHasSearchBarBackground:0];
    [(_UISearchBarVisualProviderIOS *)self updateSearchBarOpacity];

    goto LABEL_16;
  }

  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
LABEL_17:

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)layoutSubviewsInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v28 = *MEMORY[0x1E69E9840];
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!searchBar)
  {
    goto LABEL_16;
  }

  if (![(_UILendableViewContainer *)self->_lendableSearchField isLoaned])
  {
    _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];

    if (!_searchBarTextField)
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      transitioner = self->_transitioner;
      if (has_internal_diagnostics)
      {
        if (transitioner)
        {
          v24 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v26) = 0;
            _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Unexpected late creation of UISearchBar's searchField during a transition. This is a UIKit bug.", &v26, 2u);
          }
        }
      }

      else if (transitioner)
      {
        v25 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499850) + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Unexpected late creation of UISearchBar's searchField during a transition. This is a UIKit bug.", &v26, 2u);
        }
      }

      supportsDynamicType = [(_UISearchBarVisualProviderIOS *)self supportsDynamicType];
      _searchBarTextField2 = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
      [_searchBarTextField2 setShowsLargeContentViewer:!supportsDynamicType];
    }
  }

  activeLayout = [(_UISearchBarTransitionerBase *)self->_transitioner activeLayout];
  currentLayout = activeLayout;
  if (!activeLayout)
  {
    currentLayout = self->_currentLayout;
  }

  v16 = currentLayout;

  if (!self->_transitioner)
  {
    [(_UISearchBarVisualProviderIOS *)self configureLayout:v16];
  }

  [(_UISearchBarVisualProviderIOS *)self boundsForSearchBarAndUpdateIfNecessaryFromSuggestedBounds:x, y, width, height];
  [(_UISearchBarLayoutBase *)v16 setLayoutSize:v17, v18];
  [(_UISearchBarLayout *)v16 applyLayout];
  v19 = os_variant_has_internal_diagnostics();
  isProspective = [(_UISearchBarLayout *)v16 isProspective];
  if (!v19)
  {
    if (!isProspective)
    {
      goto LABEL_13;
    }

    v23 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499858) + 8);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v21 = v23;
    recursiveDescription = [searchBar recursiveDescription];
    v26 = 138412290;
    v27 = recursiveDescription;
    _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Live layout with a prospective search layout. Search Bar layout may be incorrect. Please send to UIKit for investigation, and include the following recursive description.\n%@", &v26, 0xCu);
    goto LABEL_22;
  }

  if (isProspective)
  {
    v21 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
LABEL_23:

      goto LABEL_13;
    }

    recursiveDescription = [searchBar recursiveDescription];
    v26 = 138412290;
    v27 = recursiveDescription;
    _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Live layout with a prospective search layout. Search Bar layout may be incorrect. Please send to UIKit for investigation, and include the following recursive description.\n%@", &v26, 0xCu);
LABEL_22:

    goto LABEL_23;
  }

LABEL_13:
  if (_UISolariumEnabled())
  {
    [(_UISearchBarVisualProviderIOS *)self setClippingViewActive:[(_UISearchBarVisualProviderIOS *)self isHostedInlineByToolbar]];
    [(_UISearchBarVisualProviderIOS *)self _updateScrollPocketInteraction];
  }

LABEL_16:
}

- (void)layoutBackgroundViewConsideringTopBarStatusAndChangedHeight:(BOOL)height
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    *&self->_searchBarVisualProviderFlags &= ~0x8000uLL;
    v23 = searchBar;
    [searchBar bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    window = [v23 window];
    if (window)
    {
      if (self->_barPosition == 3 || [(_UISearchBarVisualProviderIOS *)self isAtTop])
      {
        v15 = __UIStatusBarManagerForWindow(window);
        [v15 statusBarHeight];
        v17 = v16;

        v9 = v9 - v17;
        v13 = v13 + v17;
      }
    }

    else
    {
      *&self->_searchBarVisualProviderFlags |= 0x8000uLL;
    }

    [(UIView *)self->_searchBarBackground frame];
    if (height || (v25.origin.x = v7, v25.origin.y = v9, v25.size.width = v11, v25.size.height = v13, !CGRectEqualToRect(*&v18, v25)))
    {
      if ([(_UISearchBarVisualProviderIOS *)self scopeBarIsVisible])
      {
        [(_UISearchBarVisualProviderIOS *)self scopeBarHeight];
        v13 = v13 - v22;
      }

      [(UISearchBarBackground *)self->_searchBarBackground setFrame:v7, v9, v11, v13];
    }

    searchBar = v23;
  }
}

- (NSString)description
{
  v25.receiver = self;
  v25.super_class = _UISearchBarVisualProviderIOS;
  v3 = [(_UISearchBarVisualProviderIOS *)&v25 description];
  if (!os_variant_has_internal_diagnostics())
  {
    goto LABEL_2;
  }

  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v6 = [v3 stringByAppendingFormat:@" searchBar=%p effectiveContentInset={%g, %g, %g, %g}", searchBar, *&self->_effectiveContentInset.top, *&self->_effectiveContentInset.left, *&self->_effectiveContentInset.bottom, *&self->_effectiveContentInset.right];

  if (self->_overriddenContentInsetEdges)
  {
    v7 = [v6 stringByAppendingString:@" [SPI contentInset overrides"];

    overriddenContentInsetEdges = self->_overriddenContentInsetEdges;
    if (overriddenContentInsetEdges)
    {
      v16 = [v7 stringByAppendingFormat:@" .top=%g", *&self->_contentInsetPrivateMinOrOverride.top];

      overriddenContentInsetEdges = self->_overriddenContentInsetEdges;
      v7 = v16;
      if ((overriddenContentInsetEdges & 2) == 0)
      {
LABEL_8:
        if ((overriddenContentInsetEdges & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_24;
      }
    }

    else if ((overriddenContentInsetEdges & 2) == 0)
    {
      goto LABEL_8;
    }

    v17 = [v7 stringByAppendingFormat:@" .left=%g", *&self->_contentInsetPrivateMinOrOverride.left];

    overriddenContentInsetEdges = self->_overriddenContentInsetEdges;
    v7 = v17;
    if ((overriddenContentInsetEdges & 4) == 0)
    {
LABEL_9:
      if ((overriddenContentInsetEdges & 8) == 0)
      {
LABEL_11:
        v10 = [v7 stringByAppendingString:@"]"];
        v6 = v7;
        goto LABEL_14;
      }

LABEL_10:
      v9 = [v7 stringByAppendingFormat:@" .right=%g", *&self->_contentInsetPrivateMinOrOverride.right];

      v7 = v9;
      goto LABEL_11;
    }

LABEL_24:
    v18 = [v7 stringByAppendingFormat:@" .bottom=%g", *&self->_contentInsetPrivateMinOrOverride.bottom];

    v7 = v18;
    if ((self->_overriddenContentInsetEdges & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = *&self->_contentInsetPrivateMinOrOverride.bottom;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_contentInsetPrivateMinOrOverride.top), vceqzq_f64(v11))))) & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = [v6 stringByAppendingFormat:@" SPI min contentInset={%g, %g, %g, %g}", *&self->_contentInsetPrivateMinOrOverride.top, *&self->_contentInsetPrivateMinOrOverride.left, *&v11];
LABEL_14:

  v6 = v10;
LABEL_15:
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if ((*&searchBarVisualProviderFlags & 0x4000000000) != 0)
  {
    v13 = [v6 stringByAppendingString:@" [using searchFieldContainerLayout customization SPI]"];

    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    v6 = v13;
  }

  if ((*&searchBarVisualProviderFlags & 0x8000000) != 0)
  {
    v14 = [v6 stringByAppendingString:@" in nav bar"];

    if (!self->_searchIconBarButtonItem)
    {
      goto LABEL_28;
    }

    v15 = [v14 stringByAppendingFormat:@" searchIcon=%p", self->_searchIconBarButtonItem];
LABEL_27:

    v14 = v15;
    goto LABEL_28;
  }

  if ((*&searchBarVisualProviderFlags & 0x10000000) != 0)
  {
    v15 = [v6 stringByAppendingString:@" in toolbar"];
    v14 = v6;
    goto LABEL_27;
  }

  v14 = v6;
LABEL_28:
  if (self->_transitioner)
  {
    v19 = [v14 stringByAppendingFormat:@" transitioner=%p", self->_transitioner];

    v14 = v19;
  }

  v20 = self->_layoutState + 1;
  if (v20 > 4)
  {
    v21 = @"Unknown _UISearchBarLayoutState";
  }

  else
  {
    v21 = off_1E70F8B68[v20];
  }

  v3 = [v14 stringByAppendingFormat:@" %@", v21];

  if (self->_prospectiveLayout)
  {
    v22 = [v3 stringByAppendingFormat:@" prospectiveLayout=%p", self->_prospectiveLayout];

    v3 = v22;
  }

  if (self->_currentLayout)
  {
    v23 = [v3 stringByAppendingFormat:@" currentLayout=%p", self->_currentLayout];

    v3 = v23;
  }

  if (self->_cloneManager)
  {
    v24 = [v3 stringByAppendingFormat:@" cloneManager=%p", self->_cloneManager];

    v3 = v24;
  }

LABEL_2:

  return v3;
}

- (double)hostedScopeBarHeightForBarMetrics:(int64_t)metrics
{
  v3 = metrics == 102 || metrics == 1;
  result = 44.0;
  if (v3)
  {
    return 32.0;
  }

  return result;
}

- (void)setDelegateSearchFieldFrameManipulationBlock:(id)block
{
  currentLayout = self->_currentLayout;
  blockCopy = block;
  [(_UISearchBarLayout *)currentLayout setDelegateSearchFieldFrameManipulationBlock:blockCopy];
  [(_UISearchBarLayout *)self->_prospectiveLayout setDelegateSearchFieldFrameManipulationBlock:blockCopy];
}

- (void)setLayoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback:(id)callback
{
  v4 = callback != 0;
  [(_UISearchBarLayout *)self->_currentLayout setLayoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback:?];
  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFBFFFFFFFFFLL | (v4 << 38));
}

- (void)setAdditionalPaddingForCancelButtonAtLeadingEdge:(double)edge
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  [(_UISearchBarVisualProviderIOS *)self additionalPaddingForCancelButtonAtLeadingEdge];
  if (v5 != edge)
  {
    [searchBar setNeedsLayout];
    [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
    [(_UISearchBarLayout *)self->_currentLayout setAdditionalPaddingForCancelButtonAtLeadingEdge:edge];
    [(_UISearchBarLayout *)self->_prospectiveLayout setAdditionalPaddingForCancelButtonAtLeadingEdge:edge];
  }
}

- (void)setAdditionalPaddingForSearchFieldAtLeadingEdge:(double)edge
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  [(_UISearchBarVisualProviderIOS *)self additionalPaddingForSearchFieldAtLeadingEdge];
  if (v5 != edge)
  {
    [searchBar setNeedsLayout];
    [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
    [(_UISearchBarLayout *)self->_currentLayout setAdditionalPaddingForSearchFieldAtLeadingEdge:edge];
    [(_UISearchBarLayout *)self->_prospectiveLayout setAdditionalPaddingForSearchFieldAtLeadingEdge:edge];
  }
}

- (void)updateBackgroundToBackdropStyle:(int64_t)style
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &updateBackgroundToBackdropStyle____s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", v5, 2u);
    }
  }
}

- (void)setBackgroundLayoutNeedsUpdate
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &setBackgroundLayoutNeedsUpdate___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", v5, 2u);
    }
  }

  *&self->_searchBarVisualProviderFlags |= 0x8000uLL;
}

- (id)shadowView
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", buf, 2u);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &shadowView___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", v5, 2u);
    }
  }

  return 0;
}

- (id)makeShadowView
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", buf, 2u);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &makeShadowView___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", v5, 2u);
    }
  }

  return 0;
}

- (void)setShadowVisibleIfNecessary:(BOOL)necessary
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &setShadowVisibleIfNecessary____s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", v5, 2u);
    }
  }
}

- (void)setSearchDisplayControllerShowsCancelButton:(BOOL)button
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &setSearchDisplayControllerShowsCancelButton____s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "UISearchDisplayController should not call through to the iOS 13.0+ search bar visual provider. This is a UIKit bug", v5, 2u);
    }
  }
}

- (void)setSearchDisplayController:(id)controller
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UISearchDisplayController is not supported by the iOS 13.0+ provider. This is a UIKit problem", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &setSearchDisplayController____s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "UISearchDisplayController is not supported by the iOS 13.0+ provider. This is a UIKit problem", v5, 2u);
    }
  }
}

- (id)searchNavigationItem
{
  if (!self->_searchNavigationItem)
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];

    if (searchBar)
    {
      v4 = [_UISearchBarNavigationItem alloc];
      v5 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
      v6 = [(UINavigationItem *)v4 initWithTitle:v5];
      searchNavigationItem = self->_searchNavigationItem;
      self->_searchNavigationItem = v6;

      [(_UISearchBarVisualProviderIOS *)self setUpSearchNavigationItem];
    }
  }

  v8 = self->_searchNavigationItem;

  return v8;
}

- (void)setUpSearchNavigationItem
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v9 = searchBar;
    v4 = self->_searchNavigationItem;
    _searchBarTextField = [v9 _searchBarTextField];
    [(_UISearchBarVisualProviderIOS *)self searchFieldHeight];
    [_searchBarTextField setFrame:{0.0, 0.0, 14433663.0, v6}];
    [(UINavigationItem *)v4 setTitleView:_searchBarTextField];
    if ((*(&self->_searchBarVisualProviderFlags + 2) & 4) != 0)
    {
      [(_UISearchBarVisualProviderIOS *)self displayNavBarCancelButton:1 animated:0];
    }

    prompt = [(_UISearchBarVisualProviderIOS *)self prompt];
    [(UINavigationItem *)v4 setPrompt:prompt];

    [(UIView *)self->_searchBarBackground removeFromSuperview];
    searchBarBackground = self->_searchBarBackground;
    self->_searchBarBackground = 0;

    searchBar = v9;
  }
}

- (void)lendableViewContainer:(id)container didReturnView:(id)view
{
  currentLayout = self->_currentLayout;
  viewCopy = view;
  [(_UISearchBarLayout *)currentLayout restoreSearchField:viewCopy];
  [(UIView *)self->_searchFieldContainerView addSubview:viewCopy];

  [(_UISearchBarSearchContainerView *)self->_searchFieldContainerView setNeedsLayout];
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  [searchBar setNeedsLayout];
}

- (void)_updateScrollPocketInteraction
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  _searchBarTextField = [(_UISearchBarVisualProviderIOS *)self _searchBarTextField];
  _wantsDynamicBackgroundMaterial = [_searchBarTextField _wantsDynamicBackgroundMaterial];
  scrollPocketInteraction = self->_scrollPocketInteraction;
  if (_wantsDynamicBackgroundMaterial)
  {
    if (!scrollPocketInteraction)
    {
      v6 = [[_UIScrollPocketInteraction alloc] initWithStyle:2];
      v7 = self->_scrollPocketInteraction;
      self->_scrollPocketInteraction = v6;

      [searchBar addInteraction:self->_scrollPocketInteraction];
    }

    [_searchBarTextField frame];
    [(_UIScrollPocketInteraction *)self->_scrollPocketInteraction _setRect:?];
  }

  else if (scrollPocketInteraction)
  {
    [searchBar removeInteraction:?];
    v8 = self->_scrollPocketInteraction;
    self->_scrollPocketInteraction = 0;
  }
}

- (UIEdgeInsets)effectiveContentInset
{
  top = self->_effectiveContentInset.top;
  left = self->_effectiveContentInset.left;
  bottom = self->_effectiveContentInset.bottom;
  right = self->_effectiveContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)minimumContentInset
{
  top = self->_contentInsetPrivateMinOrOverride.top;
  left = self->_contentInsetPrivateMinOrOverride.left;
  bottom = self->_contentInsetPrivateMinOrOverride.bottom;
  right = self->_contentInsetPrivateMinOrOverride.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)navBarTitleViewDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_navBarTitleViewDataSource);

  return WeakRetained;
}

@end