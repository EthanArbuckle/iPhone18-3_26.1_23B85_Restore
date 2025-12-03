@interface _UISearchBarVisualProviderLegacy
- (BOOL)_getNavigationTitleLeadingInset:(double *)inset trailingInset:(double *)trailingInset isRTL:(BOOL)l;
- (BOOL)containsScopeBar;
- (BOOL)drawsBackground;
- (BOOL)hasDarkUIAppearance;
- (BOOL)isAtTop;
- (BOOL)isInBarButNotHosted;
- (BOOL)scopeBarIsVisible;
- (BOOL)searchFieldWidthShouldBeFlexible;
- (BOOL)shouldCombineLandscapeBarsForOrientation:(int64_t)orientation;
- (BOOL)shouldDisplayShadow;
- (BOOL)useRelaxedScopeLayout;
- (BOOL)wouldCombineLandscapeBarsForSize:(CGSize)size;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)effectiveContentInset;
- (UIEdgeInsets)minimumContentInset;
- (UIEdgeInsets)scopeBarInsets;
- (UIOffset)searchFieldBackgroundPositionAdjustment;
- (double)_defaultWidth;
- (double)availableBoundsWidth;
- (double)availableBoundsWidthForSize:(CGSize)size;
- (double)barHeightForBarMetrics:(int64_t)metrics barPosition:(int64_t)position;
- (double)barHeightForBarMetrics:(int64_t)metrics withEffectiveInsets:(UIEdgeInsets)insets;
- (double)defaultHeight;
- (double)defaultHeightForOrientation:(int64_t)orientation;
- (double)landscapeScopeBarWidth;
- (double)landscapeSearchFieldWidth;
- (double)navigationBarContentHeight;
- (double)scopeBarHeight;
- (double)searchFieldHeight;
- (id)cancelBarButtonItem;
- (id)colorForComponent:(unint64_t)component disabled:(BOOL)disabled;
- (id)currentSeparatorImage;
- (id)imageForSearchBarIcon:(int64_t)icon state:(unint64_t)state;
- (id)internalImageForSearchBarIcon:(int64_t)icon state:(unint64_t)state customImage:(BOOL *)image;
- (id)leftButton;
- (id)makeShadowView;
- (id)navBarTitleViewDataSource;
- (id)navigationBarForShadow;
- (id)runtimeOnlyViews;
- (id)searchDisplayController;
- (id)searchField;
- (id)searchNavigationItem;
- (id)textColor;
- (int64_t)barMetricsForOrientation:(int64_t)orientation;
- (int64_t)barPosition;
- (void)_removeBackdropVisualEffectView;
- (void)_removeLegacyBackdropView;
- (void)_setAutoDisableCancelButton:(BOOL)button;
- (void)_setBarTintColor:(id)color;
- (void)_setHideBackground:(BOOL)background;
- (void)_setSearchResultsButtonSelected:(BOOL)selected;
- (void)_setShowsBookmarkButton:(BOOL)button;
- (void)_setShowsCancelButton:(BOOL)button;
- (void)_setShowsScopeBar:(BOOL)bar;
- (void)_setShowsSearchResultsButton:(BOOL)button;
- (void)allowCursorToAppear:(BOOL)appear;
- (void)applySearchBarStyle;
- (void)destroyCancelButton;
- (void)destroyPromptLabel;
- (void)displayNavBarCancelButton:(BOOL)button animated:(BOOL)animated;
- (void)effectiveBarTintColorDidChange:(BOOL)change;
- (void)getOverrideContentInsets:(UIEdgeInsets *)insets overriddenEdges:(unint64_t *)edges;
- (void)getScopeBarHeight:(double *)height containerHeight:(double *)containerHeight;
- (void)getTopInset:(double *)inset bottomInset:(double *)bottomInset forBarMetrics:(int64_t)metrics barPosition:(int64_t)position;
- (void)layoutBackgroundViewConsideringTopBarStatusAndChangedHeight:(BOOL)height;
- (void)layoutSubviews;
- (void)layoutSubviewsInBounds:(CGRect)bounds;
- (void)navigationBarTransitionCompleted:(int64_t)completed willBeDisplayed:(BOOL)displayed;
- (void)navigationBarTransitionWillBegin:(int64_t)begin willBeDisplayed:(BOOL)displayed;
- (void)prepare;
- (void)prepareFromAbandonedVisualProvider:(id)provider;
- (void)setAllowsInlineScopeBar:(BOOL)bar;
- (void)setAutoDisableCancelButton:(BOOL)button;
- (void)setBackdropStyle:(int64_t)style;
- (void)setBackgroundImage:(id)image forBarPosition:(int64_t)position barMetrics:(int64_t)metrics;
- (void)setBarPosition:(int64_t)position;
- (void)setBarStyle:(int64_t)style;
- (void)setBarTintColor:(id)color forceUpdate:(BOOL)update;
- (void)setBarTranslucence:(int64_t)translucence;
- (void)setCancelButton:(id)button;
- (void)setCenterPlaceholder:(BOOL)placeholder;
- (void)setClippingViewActive:(BOOL)active;
- (void)setClippingViewBounds:(CGRect)bounds;
- (void)setDrawsBackground:(BOOL)background;
- (void)setDrawsBackgroundInPalette:(BOOL)palette;
- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setHostedByNavigationBar:(BOOL)bar;
- (void)setImage:(id)image forSearchBarIcon:(int64_t)icon state:(unint64_t)state;
- (void)setInNavigationPalette:(BOOL)palette;
- (void)setMinimumContentInset:(UIEdgeInsets)inset;
- (void)setOverrideContentInsets:(UIEdgeInsets)insets forRectEdges:(unint64_t)edges;
- (void)setPlacedInNavigationBar:(BOOL)bar;
- (void)setPlacedInToolbar:(BOOL)toolbar;
- (void)setPrompt:(id)prompt;
- (void)setReliesOnNavigationBarBackdrop:(BOOL)backdrop;
- (void)setScopeBarBackgroundImage:(id)image;
- (void)setScopeTitles:(id)titles;
- (void)setSearchBarStyle:(unint64_t)style;
- (void)setSearchDisplayController:(id)controller;
- (void)setSearchDisplayControllerShowsCancelButton:(BOOL)button;
- (void)setSearchFieldBackgroundImage:(id)image forState:(unint64_t)state;
- (void)setSearchFieldBackgroundPositionAdjustment:(UIOffset)adjustment;
- (void)setSearchFieldLeftViewMode:(int64_t)mode;
- (void)setSearchResultsButtonSelected:(BOOL)selected;
- (void)setSeparatorImage:(id)image;
- (void)setShadowVisibleIfNecessary:(BOOL)necessary;
- (void)setShowsBookmarkButton:(BOOL)button;
- (void)setShowsCancelButton:(BOOL)button animated:(BOOL)animated;
- (void)setShowsDeleteButton:(BOOL)button;
- (void)setShowsScopeBar:(BOOL)bar animateOpacity:(BOOL)opacity;
- (void)setShowsSearchResultsButton:(BOOL)button;
- (void)setShowsSeparator:(BOOL)separator;
- (void)setUpCancelButtonWithAppearance:(id)appearance;
- (void)setUpLeftButton;
- (void)setUpPromptLabel;
- (void)setUpScopeBar;
- (void)setUpSearchField;
- (void)setUpSearchNavigationItemWithSizingOption:(unint64_t)option;
- (void)setUsesEmbeddedAppearance:(BOOL)appearance;
- (void)teardown;
- (void)updateBackgroundToBackdropStyle:(int64_t)style;
- (void)updateEffectiveContentInset;
- (void)updateForDrawsBackgroundInPalette;
- (void)updateIfNecessaryForOldSize:(CGSize)size;
- (void)updateMagnifyingGlassView;
- (void)updateNavigationBarLayoutInsertDataForSearchBar:(id)bar collapsibleScopeBar:(id)scopeBar forLayoutState:(int64_t)state;
- (void)updateNeedForBackdrop;
- (void)updatePlaceholderColor;
- (void)updateRightView;
- (void)updateScopeBarBackground;
- (void)updateScopeBarFrame;
- (void)updateSearchBarOpacity;
- (void)updateSearchFieldArt;
@end

@implementation _UISearchBarVisualProviderLegacy

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
        v8 = (*&self->_searchBarVisualProviderFlags & 7) == 0;
      }

      else
      {
        v8 = 1;
      }

      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFF8 | style & 7);
      v9 = v8;
      [(UISearchBarBackground *)self->_searchBarBackground setBarStyle:style];
      if (!self->_barTintColor)
      {
        if (self->_cancelButton)
        {
          [(_UISearchBarVisualProviderLegacy *)self setUpCancelButtonWithAppearance:0];
          [v15 setNeedsLayout];
        }

        if (self->_promptLabel)
        {
          [(_UISearchBarVisualProviderLegacy *)self setUpPromptLabel];
          [v15 setNeedsLayout];
        }

        if (v9)
        {
          [(_UISearchBarVisualProviderLegacy *)self updateSearchFieldArt];
        }

        separator = self->_separator;
        if (separator)
        {
          currentSeparatorImage = [(_UISearchBarVisualProviderLegacy *)self currentSeparatorImage];
          [(UIImageView *)separator setImage:currentSeparatorImage];
        }

        [(UISegmentedControl *)self->_scopeBar setBarStyle:style];
        [(_UISearchBarVisualProviderLegacy *)self updateScopeBarBackground];
        [(_UISearchBarVisualProviderLegacy *)self updateSearchBarOpacity];
      }

      v6 = v15;
      if (v9)
      {
        [(_UISearchBarVisualProviderLegacy *)self updatePlaceholderColor];
        [(_UISearchBarVisualProviderLegacy *)self updateRightView];
        [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
        _hasCustomBackgroundImage = [(UISearchBarBackground *)self->_searchBarBackground _hasCustomBackgroundImage];
        v6 = v15;
        if (!_hasCustomBackgroundImage && !self->_backdropStyle)
        {
          _searchBarTextField = [v15 _searchBarTextField];
          textColor = [(_UISearchBarVisualProviderLegacy *)self textColor];
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
    v4 = (searchBarVisualProviderFlags >> 3) & 7;
    if (v4 != style)
    {
      if (style == 2 && v4 != 2)
      {
        self->_searchBarVisualProviderFlags = (searchBarVisualProviderFlags & 0xFFFFFFC7 | 0x10);
LABEL_8:
        if (self->_searchField)
        {
          [(_UISearchBarVisualProviderLegacy *)self applySearchBarStyle];
        }

        return;
      }

      self->_searchBarVisualProviderFlags = (searchBarVisualProviderFlags & 0xFFFFFFC7 | (8 * (style & 7)));
      if (style != 2 && v4 == 2)
      {
        goto LABEL_8;
      }
    }
  }
}

- (void)setBarTranslucence:(int64_t)translucence
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((searchBarVisualProviderFlags >> 6) & 7) != translucence)
  {
    self->_searchBarVisualProviderFlags = (searchBarVisualProviderFlags & 0xFFFFFE3F | ((translucence & 7) << 6));
    [(UISearchBarBackground *)self->_searchBarBackground setTranslucent:[(_UISearchBarVisualProviderLegacy *)self isTranslucent]];

    [(_UISearchBarVisualProviderLegacy *)self updateSearchBarOpacity];
  }
}

- (void)setSearchFieldLeftViewMode:(int64_t)mode
{
  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFF9FF | ((mode & 3) << 9));
  searchField = self->_searchField;
  if (searchField)
  {
    [(UITextField *)searchField setLeftViewMode:mode & 3];
  }
}

- (void)setCenterPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  WeakRetained = self;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && ((((*(WeakRetained + 26) & 0x800) == 0) ^ placeholderCopy) & 1) == 0)
  {
    v6 = placeholderCopy ? 2048 : 0;
    *(WeakRetained + 26) = *(WeakRetained + 26) & 0xFFFFF7FF | v6;
    v9 = searchBar;
    if (placeholderCopy)
    {
      WeakRetained = objc_loadWeakRetained(WeakRetained + 12);
      v7 = WeakRetained == 0;
    }

    else
    {
      v7 = 0;
    }

    textInputTraits = [v9 textInputTraits];
    [textInputTraits setDeferBecomingResponder:v7];

    searchBar = v9;
    if (placeholderCopy)
    {

      searchBar = v9;
    }
  }
}

- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v8 = searchBar;
  if (searchBar && enabledCopy == (*&self->_searchBarVisualProviderFlags & 0x1000u) >> 12)
  {
    if (enabledCopy)
    {
      v9 = 0;
    }

    else
    {
      v9 = 4096;
    }

    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFEFFF | v9);
    [searchBar setUserInteractionEnabled:enabledCopy];
    _searchBarTextField = [v8 _searchBarTextField];
    [_searchBarTextField _setEnabled:enabledCopy animated:animatedCopy];

    [(UIButton *)self->_cancelButton setEnabled:enabledCopy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56___UISearchBarVisualProviderLegacy_setEnabled_animated___block_invoke;
    v13[3] = &unk_1E70F35E0;
    v13[4] = self;
    v14 = enabledCopy;
    v11 = _Block_copy(v13);
    v12 = v11;
    if (animatedCopy)
    {
      [UIView animateWithDuration:v11 animations:0.35];
    }

    else
    {
      (*(v11 + 2))(v11);
    }
  }
}

- (void)setReliesOnNavigationBarBackdrop:(BOOL)backdrop
{
  if (backdrop)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFDFFF | v3);
}

- (void)setDrawsBackgroundInPalette:(BOOL)palette
{
  if (palette)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFBFFF | v3);
  [(_UISearchBarVisualProviderLegacy *)self updateForDrawsBackgroundInPalette];
}

- (void)setDrawsBackground:(BOOL)background
{
  if (((*&self->_searchBarVisualProviderFlags & 0x8000) == 0) != background)
  {
    if (background)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x8000;
    }

    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFF7FFF | v3);
    [(UIImageView *)self->_searchBarBackground setHidden:!background];
  }
}

- (void)_setHideBackground:(BOOL)background
{
  if (background)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFF7FFF | v3);
}

- (BOOL)drawsBackground
{
  if ((*(&self->_searchBarVisualProviderFlags + 1) & 0x80) != 0)
  {
    isInNavigationPalette = [(_UISearchBarVisualProviderLegacy *)self isInNavigationPalette];
    if (isInNavigationPalette)
    {

      LOBYTE(isInNavigationPalette) = [(_UISearchBarVisualProviderLegacy *)self drawsBackgroundInPalette];
    }
  }

  else
  {
    LOBYTE(isInNavigationPalette) = 1;
  }

  return isInNavigationPalette;
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
      if (appearanceCopy)
      {
        v7 = 0x20000;
      }

      else
      {
        v7 = 0;
      }

      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFDFFFF | v7);
      [(UISearchBarBackground *)self->_searchBarBackground setUsesEmbeddedAppearance:appearanceCopy];
      barTintColor = self->_barTintColor;
      if (barTintColor)
      {
        [(_UISearchBarVisualProviderLegacy *)self setBarTintColor:barTintColor forceUpdate:1];
      }

      [v9 setNeedsLayout];
      searchBar = v9;
    }
  }
}

- (void)setShowsCancelButton:(BOOL)button animated:(BOOL)animated
{
  animatedCopy = animated;
  buttonCopy = button;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v8 = searchBar;
  if (searchBar && ((((*(&self->_searchBarVisualProviderFlags + 2) & 4) == 0) ^ buttonCopy) & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66___UISearchBarVisualProviderLegacy_setShowsCancelButton_animated___block_invoke;
    aBlock[3] = &unk_1E70F67F8;
    v26 = buttonCopy;
    aBlock[4] = self;
    v27 = animatedCopy;
    v9 = searchBar;
    v25 = v9;
    v10 = _Block_copy(aBlock);
    _searchController = [v9 _searchController];
    _managedPalette = [_searchController _managedPalette];

    if (_managedPalette)
    {
      v10[2](v10);
    }

    else
    {
      [UIView performWithoutAnimation:v10];
    }

    if (buttonCopy)
    {
      v13 = 0x40000;
    }

    else
    {
      v13 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFBFFFF | v13);
    [v9 setNeedsLayout];
    if ([(_UISearchBarVisualProviderLegacy *)self centerPlaceholder])
    {
      WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);

      if (!WeakRetained && animatedCopy && (*(&self->_searchBarVisualProviderFlags + 2) & 4) != 0)
      {
        [(_UISearchBarVisualProviderLegacy *)self allowCursorToAppear:0];
        textInputTraits = [v9 textInputTraits];
        [textInputTraits setDeferBecomingResponder:0];
      }
    }

    if (animatedCopy)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __66___UISearchBarVisualProviderLegacy_setShowsCancelButton_animated___block_invoke_2;
      v22[3] = &unk_1E70F3590;
      v23 = v9;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __66___UISearchBarVisualProviderLegacy_setShowsCancelButton_animated___block_invoke_3;
      v19 = &unk_1E70F3C60;
      selfCopy = self;
      v21 = v23;
      [UIView animateWithDuration:4 delay:v22 options:&v16 animations:0.3833 completion:0.0];
    }

    else if ((*(&self->_searchBarVisualProviderFlags + 2) & 4) == 0)
    {
      [(_UISearchBarVisualProviderLegacy *)self destroyCancelButton];
    }

    if ([(_UISearchBarVisualProviderLegacy *)self isInBarButNotHosted:v16])
    {
      [(_UISearchBarVisualProviderLegacy *)self displayNavBarCancelButton:(*&self->_searchBarVisualProviderFlags >> 18) & 1 animated:animatedCopy];
    }
  }
}

- (void)_setShowsCancelButton:(BOOL)button
{
  if (button)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFBFFFF | v3);
}

- (void)setAutoDisableCancelButton:(BOOL)button
{
  if (button)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFF7FFFF | v3);
  if (!button)
  {
    [(UIButton *)self->_cancelButton setEnabled:1];
  }
}

- (void)_setAutoDisableCancelButton:(BOOL)button
{
  if (button)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFF7FFFF | v3);
}

- (void)setShowsSearchResultsButton:(BOOL)button
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((((*&searchBarVisualProviderFlags & 0x200000) == 0) ^ button) & 1) == 0)
  {
    if (button)
    {
      v4 = 0x200000;
    }

    else
    {
      v4 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFDFFFFF | v4);
    [(_UISearchBarVisualProviderLegacy *)self updateRightView];
  }
}

- (void)_setShowsSearchResultsButton:(BOOL)button
{
  if (button)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFDFFFFF | v3);
}

- (void)setSearchResultsButtonSelected:(BOOL)selected
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((((*&searchBarVisualProviderFlags & 0x400000) == 0) ^ selected) & 1) == 0)
  {
    if (selected)
    {
      v4 = 0x400000;
    }

    else
    {
      v4 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFBFFFFF | v4);
    [(_UISearchBarVisualProviderLegacy *)self updateRightView];
  }
}

- (void)_setSearchResultsButtonSelected:(BOOL)selected
{
  if (selected)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFBFFFFF | v3);
}

- (void)setShowsBookmarkButton:(BOOL)button
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((((*&searchBarVisualProviderFlags & 0x800000) == 0) ^ button) & 1) == 0)
  {
    if (button)
    {
      v4 = 0x800000;
    }

    else
    {
      v4 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFF7FFFFF | v4);
    [(_UISearchBarVisualProviderLegacy *)self updateRightView];
  }
}

- (void)_setShowsBookmarkButton:(BOOL)button
{
  if (button)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFF7FFFFF | v3);
}

- (void)setShowsScopeBar:(BOOL)bar animateOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  barCopy = bar;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v8 = searchBar;
  if (searchBar)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if (((((*&searchBarVisualProviderFlags & 0x10000000) == 0) ^ barCopy) & 1) == 0)
    {
      if ((barCopy & opacityCopy) != 0)
      {
        v10 = 0x40000000;
      }

      else
      {
        v10 = 0;
      }

      v11 = *&searchBarVisualProviderFlags & 0x2FFFFFFF;
      if ((opacityCopy & ~barCopy) != 0)
      {
        v12 = 0x80000000;
      }

      else
      {
        v12 = 0;
      }

      if (barCopy)
      {
        v13 = 0x10000000;
      }

      else
      {
        v13 = 0;
      }

      self->_searchBarVisualProviderFlags = (v10 | v13 | v12 | v11);
      [searchBar invalidateIntrinsicContentSize];
      [v8 setNeedsLayout];
      if (opacityCopy)
      {
        v14 = 1.0;
        if (barCopy)
        {
          v14 = 0.0;
        }

        [(UIView *)self->_scopeBarContainerView setAlpha:v14];
        v16[4] = self;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __68___UISearchBarVisualProviderLegacy_setShowsScopeBar_animateOpacity___block_invoke;
        v17[3] = &unk_1E70F35E0;
        v18 = barCopy;
        v17[4] = self;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __68___UISearchBarVisualProviderLegacy_setShowsScopeBar_animateOpacity___block_invoke_4;
        v16[3] = &unk_1E70F5AC0;
        [UIView animateKeyframesWithDuration:0 delay:v17 options:v16 animations:0.0 completion:0.0];
      }

      if (self->_scopeBarContainerView)
      {
        v15 = barCopy;
      }

      else
      {
        v15 = 0;
      }

      [(UISearchBarBackground *)self->_searchBarBackground setUsesContiguousBarBackground:v15];
    }
  }
}

- (void)_setShowsScopeBar:(BOOL)bar
{
  if (bar)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xEFFFFFFF | v3);
}

- (void)setAllowsInlineScopeBar:(BOOL)bar
{
  if (bar)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xDFFFFFFF | v3);
}

- (void)setPlacedInNavigationBar:(BOOL)bar
{
  if (bar)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFEFFFFFF | v3);
}

- (void)setPlacedInToolbar:(BOOL)toolbar
{
  if (toolbar)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFDFFFFFF | v3);
}

- (void)setInNavigationPalette:(BOOL)palette
{
  if (palette)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFBFFFFFF | v3);
}

- (void)setHostedByNavigationBar:(BOOL)bar
{
  if (bar)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xF7FFFFFF | v3);
}

- (void)setCancelButton:(id)button
{
  buttonCopy = button;
  cancelButton = self->_cancelButton;
  if (cancelButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(UIView *)cancelButton removeFromSuperview];
    objc_storeStrong(&self->_cancelButton, button);
    buttonCopy = v7;
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

    [(_UISearchBarVisualProviderLegacy *)self setUpScopeBar];
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
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_minimumContentInsetPrivate.top, v3), vceqq_f64(*&self->_minimumContentInsetPrivate.bottom, v4)))) & 1) == 0)
  {
    self->_minimumContentInsetPrivate = inset;
    [(_UISearchBarVisualProviderLegacy *)self updateEffectiveContentInset];
  }
}

- (void)setBackdropStyle:(int64_t)style
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && self->_backdropStyle != style)
  {
    self->_backdropStyle = style;
    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFC7 | 0x10);
    v12 = searchBar;
    [(_UISearchBarVisualProviderLegacy *)self updateNeedForBackdrop];
    [(UISearchBarBackground *)self->_searchBarBackground setSearchBarStyle:(self->_searchBarVisualProviderFlags >> 3) & 7];
    _searchBarTextField = [v12 _searchBarTextField];
    _systemBackgroundView = [_searchBarTextField _systemBackgroundView];
    layer = [v12 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [v12 layer];
    [layer2 setAllowsGroupOpacity:0];

    layer3 = [_systemBackgroundView layer];
    [layer3 setAllowsGroupBlending:0];

    [_systemBackgroundView setBackgroundContainer:1];
    [_searchBarTextField updateForBackdropStyle:self->_backdropStyle];
    v11 = [(_UISearchBarVisualProviderLegacy *)self colorForComponent:4 disabled:0];
    [_searchBarTextField setTextColor:v11];

    [(_UISearchBarVisualProviderLegacy *)self updatePlaceholderColor];
    [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
    [(_UISearchBarVisualProviderLegacy *)self updateRightView];
    [v12 setNeedsLayout];

    searchBar = v12;
  }
}

- (void)setBarPosition:(int64_t)position
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && self->_barPosition != position)
  {
    v9 = searchBar;
    if (!position)
    {
      position = 2;
    }

    [(UISearchBarBackground *)self->_searchBarBackground _setBarPosition:position];
    self->_barPosition = position;
    *&self->_searchBarVisualProviderFlags |= 0x10000u;
    WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);
    if (!WeakRetained && ([v9 _searchController], (WeakRetained = objc_claimAutoreleasedReturnValue()) == 0) || (barPosition = self->_barPosition, WeakRetained, barPosition == 3))
    {
      v8 = self->_barPosition != 3 && (*(&self->_searchBarVisualProviderFlags + 3) & 0xC) == 0;
      [(_UISearchBarVisualProviderLegacy *)self setClippingViewActive:v8];
    }

    [(_UISearchBarVisualProviderLegacy *)self updateEffectiveContentInset];
    [v9 setNeedsLayout];
    searchBar = v9;
  }
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

- (void)setPrompt:(id)prompt
{
  promptCopy = prompt;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v5 = self->_promptLabel;
    v6 = v5;
    if (promptCopy)
    {
      if (!v5)
      {
        [(_UISearchBarVisualProviderLegacy *)self setUpPromptLabel];
        v6 = self->_promptLabel;
        [searchBar invalidateIntrinsicContentSize];
      }

      [(UILabel *)v6 setText:?];
    }

    else
    {
      if (!v5)
      {
        goto LABEL_9;
      }

      [(UIView *)self->_promptLabel removeFromSuperview];
      promptLabel = self->_promptLabel;
      self->_promptLabel = 0;

      [searchBar invalidateIntrinsicContentSize];
    }
  }

LABEL_9:
}

- (id)searchField
{
  searchField = self->_searchField;
  if (!searchField)
  {
    [(_UISearchBarVisualProviderLegacy *)self setUpSearchField];
    searchField = self->_searchField;
  }

  return searchField;
}

- (id)leftButton
{
  [(_UISearchBarVisualProviderLegacy *)self setUpLeftButton];
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

- (void)prepare
{
  v12.receiver = self;
  v12.super_class = _UISearchBarVisualProviderLegacy;
  [(_UISearchBarVisualProviderBase *)&v12 prepare];
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!searchBar)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderLegacy.m" lineNumber:790 description:@"visual provider can not prepare without delegate"];
  }

  self->_tableViewIndexWidth = 0.0;
  *&self->_minimumContentInsetPrivate.top = 0u;
  *&self->_minimumContentInsetPrivate.bottom = 0u;
  *&self->_searchBarVisualProviderFlags |= 0x80000u;
  [(_UISearchBarVisualProviderLegacy *)self updateEffectiveContentInset];
  v5 = [UIView alloc];
  [searchBar bounds];
  v6 = [(UIView *)v5 initWithFrame:?];
  searchBarClippingView = self->_searchBarClippingView;
  self->_searchBarClippingView = v6;

  [(UIView *)self->_searchBarClippingView setAutoresizingMask:18];
  [(UIView *)self->_searchBarClippingView setClipsToBounds:1];
  [searchBar addSubview:self->_searchBarClippingView];
  *&self->_searchBarVisualProviderFlags |= 0x14E00u;
  v8 = [UISearchBarBackground alloc];
  [searchBar bounds];
  v9 = [(UISearchBarBackground *)v8 initWithFrame:?];
  searchBarBackground = self->_searchBarBackground;
  self->_searchBarBackground = v9;

  [searchBar insertSubview:self->_searchBarBackground atIndex:0];
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

  if (self->_searchField)
  {
    [v4 addObject:?];
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

  v5 = [v4 copy];

  return v5;
}

- (void)teardown
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!searchBar)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderLegacy.m" lineNumber:835 description:@"visual provider can not clean up without delegate"];
  }

  [(UIControl *)self->_scopeBar removeTarget:searchBar action:0 forControlEvents:0xFFFFFFFFLL];
  [(UISearchTextField *)self->_searchField removeTarget:searchBar action:0 forControlEvents:0xFFFFFFFFLL];
  [(UISearchTextField *)self->_searchField setDelegate:0];
  [(UITextField *)self->_searchField removeFromSuperview];
  [(UIView *)self->_promptLabel removeFromSuperview];
  [(UIView *)self->_cancelButton removeFromSuperview];
  [(UIView *)self->_separator removeFromSuperview];
  [(UIView *)self->_searchBarBackground removeFromSuperview];
  [(UIView *)self->_scopeBarContainerView removeFromSuperview];
  [(UIView *)self->_scopeBarBackgroundView removeFromSuperview];
  v6.receiver = self;
  v6.super_class = _UISearchBarVisualProviderLegacy;
  [(_UISearchBarVisualProviderBase *)&v6 teardown];
}

- (void)destroyCancelButton
{
  [(UIView *)self->_cancelButton removeFromSuperview];
  cancelButton = self->_cancelButton;
  self->_cancelButton = 0;
}

- (void)destroyPromptLabel
{
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
    if ((*&self->_searchBarVisualProviderFlags & 7) != 0 || ([(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      effectiveBarTintColor = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
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
    currentSeparatorImage = [(_UISearchBarVisualProviderLegacy *)self currentSeparatorImage];
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
    [(_UISearchBarVisualProviderLegacy *)self updateSearchFieldArt];
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
    goto LABEL_6;
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
      if (!internalImageForSearchBarIcon_state_customImage__searchBarIcons)
      {
        v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
        v22 = internalImageForSearchBarIcon_state_customImage__searchBarIcons;
        internalImageForSearchBarIcon_state_customImage__searchBarIcons = v21;
      }

      _searchBarTextField = [searchBar _searchBarTextField];
      _partsShouldBeMini = [_searchBarTextField _partsShouldBeMini];

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SearchBarResults_state:%lu_mini:%d_barStyle:%d_searchBarStyle:%lu_backdropStyle:%lu", state, _partsShouldBeMini, *&self->_searchBarVisualProviderFlags & 7, (self->_searchBarVisualProviderFlags >> 3) & 7, self->_backdropStyle];
      v11 = [internalImageForSearchBarIcon_state_customImage__searchBarIcons objectForKey:v18];
      if (v11)
      {
        goto LABEL_32;
      }

      v19 = @"UITextFieldSearchResultsListButtonMini.png";
      v20 = @"UITextFieldSearchResultsListButton.png";
    }

    else
    {
      if (icon != 2)
      {
        if (icon)
        {
          v11 = 0;
          goto LABEL_33;
        }

        if (UISearchBarUsesModernAppearance())
        {
          v13 = @"UISearchFieldIconLarger.png";
        }

        else
        {
          v13 = @"UISearchFieldIcon.png";
        }

        v12 = _UIImageWithName(v13);
LABEL_6:
        v11 = v12;
        goto LABEL_33;
      }

      if (!internalImageForSearchBarIcon_state_customImage__searchBarIcons)
      {
        v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
        v15 = internalImageForSearchBarIcon_state_customImage__searchBarIcons;
        internalImageForSearchBarIcon_state_customImage__searchBarIcons = v14;
      }

      _searchBarTextField2 = [searchBar _searchBarTextField];
      _partsShouldBeMini = [_searchBarTextField2 _partsShouldBeMini];

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SearchBarBookmark_state:%lu_mini:%d_barStyle:%d_searchBarStyle:%lu_backdropStyle:%lu", state, _partsShouldBeMini, *&self->_searchBarVisualProviderFlags & 7, (self->_searchBarVisualProviderFlags >> 3) & 7, self->_backdropStyle];
      v11 = [internalImageForSearchBarIcon_state_customImage__searchBarIcons objectForKey:v18];
      if (v11)
      {
LABEL_32:

        goto LABEL_33;
      }

      v19 = @"UISearchBarBookmarksMini.png";
      v20 = @"UISearchBarBookmarks.png";
    }

    if (_partsShouldBeMini)
    {
      v24 = v20;
    }

    else
    {
      v24 = v19;
    }

    v25 = _UIImageWithName(v24);
    if (state == 1)
    {
      [UIColor colorWithRed:0.047 green:0.455 blue:0.867 alpha:1.0];
    }

    else
    {
      [(_UISearchBarVisualProviderLegacy *)self colorForComponent:0 disabled:state == 2];
    }
    v26 = ;
    [v25 size];
    v11 = [UIImage _tintedImageForSize:v26 withTint:0 effectsImage:v25 maskImage:0 style:?];
    [internalImageForSearchBarIcon_state_customImage__searchBarIcons setObject:v11 forKey:v18];

    goto LABEL_32;
  }

  v11 = v10;
  if (image)
  {
    *image = 1;
  }

LABEL_33:

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
        [(_UISearchBarVisualProviderLegacy *)self updateRightView];
      }

      else if (icon)
      {
        _searchBarTextField = [searchBar _searchBarTextField];
        [_searchBarTextField _setClearButtonImage:imageCopy forState:state];
      }

      else
      {
        [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
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

    [(_UISearchBarVisualProviderLegacy *)self setUpScopeBar];
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

  [(_UISearchBarVisualProviderLegacy *)self updateNeedForBackdrop];
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
  if (!searchBar)
  {
    v9 = +[UIColor labelColor];
LABEL_24:
    v15 = v9;
    goto LABEL_25;
  }

  backdropStyle = self->_backdropStyle;
  if (backdropStyle == 2030)
  {
    if (disabledCopy)
    {
LABEL_8:
      v10 = 0.35;
      v11 = 1.0;
LABEL_23:
      v9 = [UIColor colorWithWhite:v11 alpha:v10];
      goto LABEL_24;
    }

    v11 = 1.0;
    if (component != 4)
    {
      v10 = 0.5;
      goto LABEL_23;
    }

LABEL_22:
    v10 = 1.0;
    goto LABEL_23;
  }

  if (backdropStyle == 2020)
  {
    if (!disabledCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  if ([(_UISearchBarVisualProviderLegacy *)self barStyle])
  {
    if (disabledCopy)
    {
      v11 = 0.47;
      v10 = 0.35;
      goto LABEL_23;
    }

    if (component == 4)
    {
LABEL_20:
      v9 = +[UIColor whiteColor];
      goto LABEL_24;
    }

    v11 = 0.47;
    goto LABEL_22;
  }

  v12 = self->_backdropStyle;
  if ((v12 == 2010 || v12 == 2005) && ((v13 = UISearchBarUsesModernAppearance(), component == 4) || !v13))
  {
    v14 = +[UIColor labelColor];
  }

  else
  {
    v14 = +[UIColor systemGrayColor];
  }

  v15 = v14;
  if (disabledCopy)
  {
    v17 = [v14 colorWithAlphaComponent:0.35];

    v15 = v17;
  }

LABEL_25:

  return v15;
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
    v4 = [(_UISearchBarVisualProviderLegacy *)self colorForComponent:4 disabled:0];
LABEL_7:
    defaultTextColor = v4;
    goto LABEL_8;
  }

  if ([(_UISearchBarVisualProviderLegacy *)self barStyle])
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
    [(_UISearchBarVisualProviderLegacy *)self _setBarTintColor:?];

    [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColorDidChange:1];
  }
}

- (void)effectiveBarTintColorDidChange:(BOOL)change
{
  changeCopy = change;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    effectiveBarTintColor = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
    v7 = effectiveBarTintColor;
    if ((*&searchBarVisualProviderFlags & 0x20000) != 0)
    {
      v8 = _GetLightenedTintColor(effectiveBarTintColor);
      [(UISearchBarBackground *)self->_searchBarBackground setBarTintColor:v8];
    }

    else
    {
      [(UISearchBarBackground *)self->_searchBarBackground setBarTintColor:effectiveBarTintColor];
    }

    if (self->_cancelButton)
    {
      [(_UISearchBarVisualProviderLegacy *)self setUpCancelButtonWithAppearance:0];
      [searchBar setNeedsLayout];
    }

    if (self->_promptLabel)
    {
      [(_UISearchBarVisualProviderLegacy *)self setUpPromptLabel];
      [searchBar setNeedsLayout];
    }

    if (changeCopy)
    {
      [(_UISearchBarVisualProviderLegacy *)self updateSearchFieldArt];
      [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
      separator = self->_separator;
      if (separator)
      {
        currentSeparatorImage = [(_UISearchBarVisualProviderLegacy *)self currentSeparatorImage];
        [(UIImageView *)separator setImage:currentSeparatorImage];
      }
    }

    [(_UISearchBarVisualProviderLegacy *)self updateScopeBarBackground];
  }
}

- (void)applySearchBarStyle
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v15 = searchBar;
    _searchBarTextField = [searchBar _searchBarTextField];
    _systemBackgroundView = [_searchBarTextField _systemBackgroundView];
    v6 = *&self->_searchBarVisualProviderFlags & 0x38;
    layer = [v15 layer];
    v8 = layer;
    if (v6 == 16)
    {
      [layer setAllowsGroupBlending:0];

      layer2 = [v15 layer];
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

      [_searchBarTextField updateForBackdropStyle:backdropStyle];
    }

    else
    {
      [layer setAllowsGroupBlending:1];

      layer4 = [v15 layer];
      [layer4 setAllowsGroupOpacity:1];

      layer5 = [_systemBackgroundView layer];
      [layer5 setAllowsGroupBlending:1];

      [_systemBackgroundView setBackgroundContainer:0];
      [_searchBarTextField _removeEffectsBackgroundViews];
      [_systemBackgroundView updateView];
    }

    [(_UISearchBarVisualProviderLegacy *)self updateNeedForBackdrop];
    if (self->_backdropStyle)
    {
      v14 = 2;
    }

    else
    {
      v14 = (self->_searchBarVisualProviderFlags >> 3) & 7;
    }

    [(UISearchBarBackground *)self->_searchBarBackground setSearchBarStyle:v14];
    [(_UISearchBarVisualProviderLegacy *)self updatePlaceholderColor];
    [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
    [(_UISearchBarVisualProviderLegacy *)self updateRightView];
    [v15 setNeedsLayout];

    searchBar = v15;
  }
}

- (void)updateForDrawsBackgroundInPalette
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && [(_UISearchBarVisualProviderLegacy *)self isInNavigationPalette])
  {
    [(_UISearchBarVisualProviderLegacy *)self setDrawsBackground:(*&self->_searchBarVisualProviderFlags >> 14) & 1];
    _containingNavigationPalette = [searchBar _containingNavigationPalette];
    v4 = (*&self->_searchBarVisualProviderFlags >> 14) & 1;
    _backgroundView = [_containingNavigationPalette _backgroundView];
    [_backgroundView setHidden:v4];

    _backgroundView2 = [_containingNavigationPalette _backgroundView];
    LODWORD(_backgroundView) = [_backgroundView2 isHidden];

    if (_backgroundView)
    {
      [(UISearchBarBackground *)self->_searchBarBackground _updateBackgroundImage];
    }
  }
}

- (void)updateIfNecessaryForOldSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v10 = searchBar;
    [searchBar bounds];
    searchBar = v10;
    if (width != v8 || height != v7)
    {
      [(_UISearchBarVisualProviderLegacy *)self layoutBackgroundViewConsideringTopBarStatusAndChangedHeight:v7 != height];
      searchBar = v10;
    }
  }
}

- (void)updateMagnifyingGlassView
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      _searchBarTextField = [searchBar _searchBarTextField];
      leftView = [_searchBarTextField leftView];
      if (leftView)
      {
        v6 = leftView;
        leftView2 = [_searchBarTextField leftView];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if ((searchBarVisualProviderFlags & 0x600) != 0)
    {
      v17 = 0;
      v10 = [(_UISearchBarVisualProviderLegacy *)self internalImageForSearchBarIcon:0 state:(searchBarVisualProviderFlags >> 11) & 2 customImage:&v17];
      if ((v17 & 1) == 0)
      {
        v11 = [(_UISearchBarVisualProviderLegacy *)self colorForComponent:2 disabled:(*&self->_searchBarVisualProviderFlags >> 12) & 1];
        [v10 size];
        v12 = [UIImage _tintedImageForSize:v11 withTint:0 effectsImage:v10 maskImage:0 style:?];

        v10 = v12;
      }

      _searchBarTextField2 = [searchBar _searchBarTextField];
      leftView3 = [_searchBarTextField2 leftView];

      if (leftView3)
      {
        leftView4 = [_searchBarTextField2 leftView];
        [leftView4 setImage:v10];

        leftView5 = [_searchBarTextField2 leftView];
        [(UIView *)leftView5 sizeToFit];
      }

      else
      {
        leftView5 = [[UIImageView alloc] initWithImage:v10];
        [_searchBarTextField2 setLeftView:leftView5];
      }

      [searchBar setNeedsLayout];
    }
  }

LABEL_14:
}

- (void)_removeLegacyBackdropView
{
  [(UIView *)self->_backdrop removeFromSuperview];
  backdrop = self->_backdrop;
  self->_backdrop = 0;
}

- (void)_removeBackdropVisualEffectView
{
  [(UIView *)self->_backdropVisualEffectView removeFromSuperview];
  backdropVisualEffectView = self->_backdropVisualEffectView;
  self->_backdropVisualEffectView = 0;
}

- (void)updateNeedForBackdrop
{
  backgroundImage = [(UISearchBarBackground *)self->_searchBarBackground backgroundImage];
  if (backgroundImage || (*&self->_searchBarVisualProviderFlags & 0x2038) != 0x10)
  {
    [(_UISearchBarVisualProviderLegacy *)self _removeLegacyBackdropView];
    [(_UISearchBarVisualProviderLegacy *)self _removeBackdropVisualEffectView];
  }

  else if (self->_backdropStyle == 2005)
  {
    [(_UISearchBarVisualProviderLegacy *)self _removeLegacyBackdropView];
    if (!self->_backdropVisualEffectView)
    {
      v3 = [UIVisualEffectView alloc];
      v4 = [UIBlurEffect effectWithStyle:10];
      v5 = [(UIVisualEffectView *)v3 initWithEffect:v4];
      backdropVisualEffectView = self->_backdropVisualEffectView;
      self->_backdropVisualEffectView = v5;

      [(UIView *)self->_searchBarBackground addSubview:self->_backdropVisualEffectView];
      [(UIView *)self->_backdropVisualEffectView setUserInteractionEnabled:1];
    }
  }

  else
  {
    [(_UISearchBarVisualProviderLegacy *)self _removeBackdropVisualEffectView];
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
        v9 = self->_backdropStyle;
      }

      else
      {
        v9 = -2;
      }

      v10 = [[_UIBackdropView alloc] initWithPrivateStyle:v9];
      v11 = self->_backdrop;
      self->_backdrop = v10;

      [(UIView *)self->_searchBarBackground addSubview:self->_backdrop];
      [(UIView *)self->_backdrop setUserInteractionEnabled:1];
    }

    [(UIView *)self->_backdrop setHidden:self->_backdropStyle == 0];
  }
}

- (void)updatePlaceholderColor
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v7 = searchBar;
    v4 = [(_UISearchBarVisualProviderLegacy *)self colorForComponent:3 disabled:0];
    _searchBarTextField = [v7 _searchBarTextField];
    _placeholderLabel = [_searchBarTextField _placeholderLabel];
    [_placeholderLabel setTextColor:v4];

    searchBar = v7;
  }
}

- (void)updateRightView
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = searchBar;
  if (searchBar)
  {
    _searchBarTextField = [searchBar _searchBarTextField];
    v6 = _searchBarTextField;
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if ((*&searchBarVisualProviderFlags & 0x200000) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = (*&searchBarVisualProviderFlags >> 22) & 2;
    }

    [_searchBarTextField setRightViewMode:v8];
    v9 = self->_searchBarVisualProviderFlags;
    if ((*&v9 & 0x200000) != 0)
    {
      v22 = [(_UISearchBarVisualProviderLegacy *)self internalImageForSearchBarIcon:3 state:0];
      v11 = [(_UISearchBarVisualProviderLegacy *)self internalImageForSearchBarIcon:3 state:1];
      v12 = [(_UISearchBarVisualProviderLegacy *)self internalImageForSearchBarIcon:3 state:2];
      v18 = objc_alloc_init(UIButton);
      [(UIControl *)v18 addTarget:v4 action:sel__resultsListButtonPressed forControlEvents:64];
      [(UIButton *)v18 setImage:v22 forStates:0];
      [(UIButton *)v18 setImage:v11 forStates:1];
      [(UIButton *)v18 setImage:v11 forStates:4];
      [(UIButton *)v18 setImage:v12 forStates:2];
      [(UIButton *)v18 setSelected:(*&self->_searchBarVisualProviderFlags >> 22) & 1];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __51___UISearchBarVisualProviderLegacy_updateRightView__block_invoke;
      v26[3] = &unk_1E70F35B8;
      v14 = &v27;
      v27 = v18;
      v15 = &v28;
      v19 = v6;
      v28 = v19;
      v17 = v18;
      [UIView performWithoutAnimation:v26];
      LODWORD(v20) = -0.5;
      [(UIView *)v17 setCharge:v20];
      [v19 setRightView:v17];
      v21 = v19;
      v10 = v22;
      [v21 _setRightViewOffset:{-1.0, -1.0}];
    }

    else
    {
      if ((*&v9 & 0x800000) == 0)
      {
LABEL_10:

        goto LABEL_11;
      }

      v10 = [(_UISearchBarVisualProviderLegacy *)self internalImageForSearchBarIcon:2 state:0];
      v11 = [(_UISearchBarVisualProviderLegacy *)self internalImageForSearchBarIcon:2 state:1];
      v12 = [(_UISearchBarVisualProviderLegacy *)self internalImageForSearchBarIcon:2 state:2];
      v13 = objc_alloc_init(UIButton);
      [(UIControl *)v13 addTarget:v4 action:sel__bookmarkButtonPressed forControlEvents:64];
      [(UIButton *)v13 setImage:v10 forStates:0];
      [(UIButton *)v13 setImage:v11 forStates:1];
      [(UIButton *)v13 setImage:v12 forStates:2];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __51___UISearchBarVisualProviderLegacy_updateRightView__block_invoke_2;
      v23[3] = &unk_1E70F35B8;
      v14 = &v24;
      v24 = v13;
      v15 = &v25;
      v16 = v6;
      v25 = v16;
      v17 = v13;
      [UIView performWithoutAnimation:v23];
      [v16 setRightView:v17];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)updateScopeBarBackground
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && self->_scopeBarContainerView)
  {
    v14 = searchBar;
    scopeBarBackgroundImage = [(_UISearchBarVisualProviderLegacy *)self scopeBarBackgroundImage];

    if (scopeBarBackgroundImage)
    {
      scopeBarBackgroundView = self->_scopeBarBackgroundView;
      scopeBarBackgroundImage2 = [(_UISearchBarVisualProviderLegacy *)self scopeBarBackgroundImage];
      [(UIImageView *)scopeBarBackgroundView setImage:scopeBarBackgroundImage2];

      [(UIImageView *)self->_scopeBarBackgroundView setBackgroundColor:0];
    }

    else if ([(_UISearchBarVisualProviderLegacy *)self isInNavigationPalette]&& (*(&self->_searchBarVisualProviderFlags + 1) & 0x40) == 0 || [(_UISearchBarVisualProviderLegacy *)self isHostedByNavigationBar])
    {
      [(UIImageView *)self->_scopeBarBackgroundView setHidden:1];
    }

    else
    {
      [(UIImageView *)self->_scopeBarBackgroundView setHidden:0];
      searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
      effectiveBarTintColor = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      v9 = effectiveBarTintColor;
      v10 = effectiveBarTintColor;
      if ((*&searchBarVisualProviderFlags & 0x20000) != 0)
      {
        v10 = _GetLightenedTintColor(effectiveBarTintColor);
      }

      v11 = _UISearchBarBackgroundFillColor(*&searchBarVisualProviderFlags & 7, v10);
      [(UIImageView *)self->_scopeBarBackgroundView setBackgroundColor:v11];

      if ((*&searchBarVisualProviderFlags & 0x20000) != 0)
      {
      }

      [(UIImageView *)self->_scopeBarBackgroundView setImage:0];
    }

    isTranslucent = [(_UISearchBarVisualProviderLegacy *)self isTranslucent];
    v13 = 0.96;
    if (!isTranslucent)
    {
      v13 = 1.0;
    }

    [(UIView *)self->_scopeBarBackgroundView setAlpha:v13];
    searchBar = v14;
  }
}

- (void)updateSearchBarOpacity
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v4 = searchBar;
    [searchBar setOpaque:{-[_UISearchBarVisualProviderLegacy isTranslucent](self, "isTranslucent") ^ 1}];
    searchBar = v4;
  }
}

- (void)updateScopeBarFrame
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = searchBar;
  if (self->_scopeBar)
  {
    v5 = searchBar == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v38 = 0.0;
    v39 = 0.0;
    [(_UISearchBarVisualProviderLegacy *)self getScopeBarHeight:&v39 containerHeight:&v38];
    [v4 bounds];
    [(UIView *)self->_scopeBarContainerView setFrame:0.0, v6 - v38];
    [(_UISearchBarVisualProviderLegacy *)self scopeBarInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIView *)self->_scopeBarContainerView bounds];
    v14 = v13 - v10 - v12;
    v15 = v39;
    if ([(_UISearchBarVisualProviderLegacy *)self useRelaxedScopeLayout])
    {
      if ([(NSArray *)self->_scopeTitles count])
      {
        scopeBar = self->_scopeBar;
        [(UIView *)self->_scopeBarContainerView bounds];
        [(UISegmentedControl *)scopeBar sizeThatFits:v17, v18];
        v20 = v19 + [(NSArray *)self->_scopeTitles count]* 78.0;
        [(UIView *)self->_searchField frame];
        x = v40.origin.x;
        y = v40.origin.y;
        width = v40.size.width;
        rect = v40.size.height;
        if (v20 < CGRectGetWidth(v40))
        {
          [v4 bounds];
          v24 = round(CGRectGetMidX(v41) + v20 * -0.5);
          v35 = v24;
          v25 = v8;
          v26 = v20;
          v27 = v15;
          if ((v4[106] & 0x40) != 0)
          {
            MinX = CGRectGetMinX(*&v24);
            v43.origin.x = x;
            v43.origin.y = y;
            v43.size.width = width;
            v43.size.height = rect;
            v28 = MinX >= CGRectGetMinX(v43) + 20.0;
          }

          else
          {
            MinX = CGRectGetMaxX(*&v24);
            v42.origin.x = x;
            v42.origin.y = y;
            v42.size.width = width;
            v42.size.height = rect;
            v28 = MinX <= CGRectGetMaxX(v42) + -20.0;
          }

          if (v28)
          {
            v14 = v20;
            v10 = v35;
          }
        }
      }
    }

    [(UISegmentedControl *)self->_scopeBar frame];
    v45.origin.x = v29;
    v45.origin.y = v30;
    v45.size.width = v31;
    v45.size.height = v32;
    v44.origin.x = v10;
    v44.origin.y = v8;
    v44.size.width = v14;
    v44.size.height = v15;
    if (!CGRectEqualToRect(v44, v45))
    {
      searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
      if ((*&searchBarVisualProviderFlags & 0x40000000) != 0)
      {
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __55___UISearchBarVisualProviderLegacy_updateScopeBarFrame__block_invoke;
        v37[3] = &unk_1E70F3B20;
        v37[4] = self;
        *&v37[5] = v10;
        *&v37[6] = v8;
        *&v37[7] = v14;
        *&v37[8] = v15;
        [UIView performWithoutAnimation:v37];
      }

      else if ((*&searchBarVisualProviderFlags & 0x80000000) == 0)
      {
        [(UISegmentedControl *)self->_scopeBar setFrame:v10, v8, v14, v15];
      }
    }
  }
}

- (void)updateSearchFieldArt
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v19 = searchBar;
    _searchBarTextField = [searchBar _searchBarTextField];
    v5 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldBackgroundImageForState:0];
    if (!v5)
    {
      [_searchBarTextField setBorderStyle:3];
      _systemBackgroundView = [_searchBarTextField _systemBackgroundView];
      [_systemBackgroundView setBarStyle:{-[_UISearchBarVisualProviderLegacy barStyle](self, "barStyle")}];
LABEL_16:

      searchBar = v19;
      goto LABEL_17;
    }

    v6 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldBackgroundImageForState:2];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    _systemBackgroundView = v8;

    if ([v5 _isResizable])
    {
      [_searchBarTextField setBackground:v5];
      if (![_systemBackgroundView _isResizable])
      {
        leftCapWidth = [v5 leftCapWidth];
        topCapHeight = [v5 topCapHeight];
        v12 = _systemBackgroundView;
        v13 = leftCapWidth;
LABEL_13:
        v17 = [v12 stretchableImageWithLeftCapWidth:v13 topCapHeight:topCapHeight];
        [_searchBarTextField setDisabledBackground:v17];

LABEL_14:
        [_searchBarTextField setBorderStyle:0];
        [v5 size];
        if (v18 != 28.0)
        {
          [v19 setNeedsLayout];
        }

        goto LABEL_16;
      }
    }

    else
    {
      [v5 size];
      v15 = ((v14 + -1.0) * 0.5);
      v16 = [v5 stretchableImageWithLeftCapWidth:v15 topCapHeight:0];
      [_searchBarTextField setBackground:v16];

      if (![_systemBackgroundView _isResizable])
      {
        v12 = _systemBackgroundView;
        v13 = v15;
        topCapHeight = 0;
        goto LABEL_13;
      }
    }

    [_searchBarTextField setDisabledBackground:_systemBackgroundView];
    goto LABEL_14;
  }

LABEL_17:
}

- (void)setUpCancelButtonWithAppearance:(id)appearance
{
  appearanceCopy = appearance;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    cancelButton = self->_cancelButton;
    if (cancelButton)
    {
      [(UIButton *)cancelButton setBarStyle:*&self->_searchBarVisualProviderFlags & 7];
      effectiveBarTintColor = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      [(UIButton *)self->_cancelButton _setTintColor:effectiveBarTintColor];
    }

    else
    {
      effectiveBarTintColor = self->_cancelButtonText;
      if (!effectiveBarTintColor)
      {
        effectiveBarTintColor = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
      }

      v7 = [UINavigationButton alloc];
      effectiveBarTintColor2 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      v9 = [(UINavigationButton *)v7 initWithValue:effectiveBarTintColor width:3 style:0 barStyle:0 possibleTitles:effectiveBarTintColor2 tintColor:0.0];
      v10 = self->_cancelButton;
      self->_cancelButton = v9;

      [(UIButton *)self->_cancelButton _setAppearanceGuideClass:objc_opt_class()];
      [(UIControl *)self->_cancelButton addTarget:searchBar action:sel__performCancelAction forControlEvents:64];
      [searchBar addSubview:self->_cancelButton];
      v11 = ([searchBar isFirstResponder] & 1) != 0 || (*(&self->_searchBarVisualProviderFlags + 2) & 8) == 0;
      [(UIButton *)self->_cancelButton setEnabled:v11];
      [searchBar setNeedsLayout];
    }

    if (appearanceCopy)
    {
      [(UIButton *)self->_cancelButton _applyBarButtonAppearanceStorage:appearanceCopy withTaggedSelectors:0];
    }
  }
}

- (void)setUpLeftButton
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v9 = searchBar;
    if (self->_leftButton)
    {
      effectiveBarTintColor = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      [(UINavigationButton *)self->_leftButton _setTintColor:effectiveBarTintColor];
    }

    else
    {
      v5 = [UINavigationButton alloc];
      effectiveBarTintColor2 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      v7 = [(UINavigationButton *)v5 initWithValue:@"<configure>" width:3 style:0 barStyle:0 possibleTitles:effectiveBarTintColor2 tintColor:0.0];
      leftButton = self->_leftButton;
      self->_leftButton = v7;

      [(UINavigationButton *)self->_leftButton _setAppearanceGuideClass:objc_opt_class()];
      [v9 addSubview:self->_leftButton];
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
    v24 = searchBar;
    if (!_MergedGlobals_27_0)
    {
      v4 = [[UIColor alloc] initWithRed:0.168 green:0.243 blue:0.353 alpha:1.0];
      v5 = _MergedGlobals_27_0;
      _MergedGlobals_27_0 = v4;
    }

    if (!qword_1ED49A450)
    {
      v6 = [[UIColor alloc] initWithWhite:1.0 alpha:0.44];
      v7 = qword_1ED49A450;
      qword_1ED49A450 = v6;
    }

    if (!qword_1ED49A458)
    {
      v8 = [[UIColor alloc] initWithWhite:1.0 alpha:0.6];
      v9 = qword_1ED49A458;
      qword_1ED49A458 = v8;
    }

    if (!qword_1ED49A460)
    {
      v10 = [[UIColor alloc] initWithWhite:0.0 alpha:1.0];
      v11 = qword_1ED49A460;
      qword_1ED49A460 = v10;
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
      [v24 addSubview:self->_promptLabel];
    }

    v15 = _MergedGlobals_27_0;
    v16 = qword_1ED49A450;
    effectiveBarTintColor = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];

    if (effectiveBarTintColor)
    {
      effectiveBarTintColor2 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      v19 = _GetLightenedTintColor(effectiveBarTintColor2);
      v20 = GetTintedPromptTextColor(v19);

      v21 = 1.0;
    }

    else
    {
      if ((*&self->_searchBarVisualProviderFlags & 7) == 0)
      {
        traitCollection = [v24 traitCollection];
        userInterfaceStyle = [traitCollection userInterfaceStyle];

        if (userInterfaceStyle != 2)
        {
          v21 = 1.0;
          goto LABEL_18;
        }
      }

      v20 = qword_1ED49A458;

      effectiveBarTintColor2 = v16;
      v21 = -1.0;
      v16 = qword_1ED49A460;
    }

    v15 = v20;
LABEL_18:
    [(UILabel *)self->_promptLabel setTextColor:v15];
    [(UILabel *)self->_promptLabel setShadowColor:v16];
    [(UILabel *)self->_promptLabel setShadowOffset:0.0, v21];

    searchBar = v24;
  }
}

- (void)setUpScopeBar
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = searchBar;
  if (searchBar)
  {
    if (!self->_scopeBar)
    {
      [searchBar sizeToFit];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      [UISegmentedControl defaultHeightForStyle:7 size:0];
      v10 = v9;
      v11 = [[UISegmentedControl alloc] initWithFrame:7 withStyle:self->_scopeTitles withItems:0.0, v8 - v10, v6];
      scopeBar = self->_scopeBar;
      self->_scopeBar = v11;

      [(UISegmentedControl *)v11 setSelectedSegmentIndex:self->_selectedScope];
      [(UIControl *)v11 addTarget:v4 action:sel__scopeChanged_ forControlEvents:4096];
      [(UISegmentedControl *)v11 setBarStyle:*&self->_searchBarVisualProviderFlags & 7];
      [(_UISearchBarVisualProviderLegacy *)self scopeBarHeight];
      v14 = [[UIView alloc] initWithFrame:0.0, v8 - v13, v6, v13];
      scopeBarContainerView = self->_scopeBarContainerView;
      self->_scopeBarContainerView = v14;

      v16 = [_UISearchBarScopeBarBackground alloc];
      [(UIView *)self->_scopeBarContainerView bounds];
      v17 = [(UIImageView *)v16 initWithFrame:?];
      scopeBarBackgroundView = self->_scopeBarBackgroundView;
      self->_scopeBarBackgroundView = v17;

      [(UIView *)self->_scopeBarBackgroundView setAutoresizingMask:18];
      [(UIView *)self->_scopeBarContainerView addSubview:self->_scopeBarBackgroundView];
      [(_UISearchBarVisualProviderLegacy *)self updateScopeBarBackground];
      [(_UISearchBarVisualProviderLegacy *)self updateScopeBarFrame];
      if (UISearchBarUsesModernAppearance())
      {
        v19 = 34;
      }

      else
      {
        v19 = 18;
      }

      [(UIView *)v11 setAutoresizingMask:v19];
      [(UIView *)self->_scopeBarContainerView addSubview:v11];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __49___UISearchBarVisualProviderLegacy_setUpScopeBar__block_invoke;
      v20[3] = &unk_1E70F3590;
      v20[4] = self;
      [UIView performWithoutAnimation:v20];
      [v4 insertSubview:self->_scopeBarContainerView atIndex:0];
    }

    [(_UISearchBarVisualProviderLegacy *)self updateScopeBarBackground];
  }
}

- (void)setUpSearchField
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    _initWithDeferredSearchIconImageConfiguration = [(UISearchTextField *)[UISearchBarTextField alloc] _initWithDeferredSearchIconImageConfiguration];
    searchField = self->_searchField;
    self->_searchField = _initWithDeferredSearchIconImageConfiguration;

    [(UISearchTextField *)self->_searchField _setSearchBar:searchBar];
    [(UIView *)self->_searchField setOpaque:0];
    -[UITextField setSemanticContentAttribute:](self->_searchField, "setSemanticContentAttribute:", [searchBar semanticContentAttribute]);
    v6 = UISearchBarUsesModernAppearance();
    v7 = 14.0;
    if (v6)
    {
      [off_1E70ECC18 defaultFontSize];
    }

    v8 = [off_1E70ECC18 systemFontOfSize:v7];
    [(UITextField *)self->_searchField setFont:v8];

    [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
    [(UITextField *)self->_searchField setLeftViewMode:(self->_searchBarVisualProviderFlags >> 9) & 3];
    [(_UISearchBarVisualProviderLegacy *)self updateRightView];
    [(UITextField *)self->_searchField setClearButtonMode:3];
    [(UISearchTextField *)self->_searchField setBorderStyle:3];
    [(UISearchTextField *)self->_searchField _setIgnoresDynamicType:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52___UISearchBarVisualProviderLegacy_setUpSearchField__block_invoke;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    [UIView _performSystemAppearanceModifications:v15];
    if ([(_UISearchBarVisualProviderLegacy *)self centerPlaceholder])
    {
      textInputTraits = [searchBar textInputTraits];
      [textInputTraits setDeferBecomingResponder:1];
    }

    v14 = 0;
    v10 = [(_UISearchBarVisualProviderLegacy *)self internalImageForSearchBarIcon:1 state:0 customImage:&v14];
    if (v10 && v14 == 1)
    {
      [(UISearchTextField *)self->_searchField _setClearButtonImage:v10 forState:0];
    }

    v11 = [(_UISearchBarVisualProviderLegacy *)self internalImageForSearchBarIcon:1 state:1 customImage:&v14];

    if (v11 && v14 == 1)
    {
      [(UISearchTextField *)self->_searchField _setClearButtonImage:v11 forState:1];
    }

    v12 = [(_UISearchBarVisualProviderLegacy *)self internalImageForSearchBarIcon:1 state:2 customImage:&v14];

    if (v12 && v14 == 1)
    {
      [(UISearchTextField *)self->_searchField _setClearButtonImage:v12 forState:2];
    }

    [(_UISearchBarVisualProviderLegacy *)self updateSearchFieldArt];
    [(UISearchTextField *)self->_searchField addTarget:searchBar action:sel__searchFieldBeginEditing forControlEvents:0x10000];
    [(UISearchTextField *)self->_searchField addTarget:searchBar action:sel__searchFieldEditingChanged forControlEvents:0x20000];
    [(UISearchTextField *)self->_searchField addTarget:searchBar action:sel__searchFieldEndEditing forControlEvents:0x40000];
    [(UISearchTextField *)self->_searchField addTarget:searchBar action:sel__searchFieldReturnPressed forControlEvents:0x80000];
    [searchBar addSubview:self->_searchField];
    if (UISearchBarUsesModernAppearance())
    {
      [(UITextField *)self->_searchField _setRoundedRectBackgroundCornerRadius:10.0];
      layer = [(UIView *)self->_searchField layer];
      [layer setAllowsGroupOpacity:0];
    }

    if ((*&self->_searchBarVisualProviderFlags & 0x38) == 0x10)
    {
      [(_UISearchBarVisualProviderLegacy *)self applySearchBarStyle];
    }
  }
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
      currentSeparatorImage = [(_UISearchBarVisualProviderLegacy *)self currentSeparatorImage];
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
    v13 = searchBar;
    if (buttonCopy)
    {
      v6 = 0x100000;
    }

    else
    {
      v6 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFEFFFFF | v6);
    if (buttonCopy)
    {
      [(_UISearchBarVisualProviderLegacy *)self destroyCancelButton];
      v7 = [UINavigationButton alloc];
      traitCollection = [v13 traitCollection];
      v9 = _UIImageWithNameAndTraitCollection(@"delete-on", traitCollection);
      v10 = [(UINavigationButton *)v7 initWithImage:v9 style:3];
      cancelButton = self->_cancelButton;
      self->_cancelButton = v10;

      [(UIButton *)self->_cancelButton _setAppearanceGuideClass:objc_opt_class()];
      [(UIControl *)self->_cancelButton addTarget:v13 action:sel__deleteButtonPressed forControlEvents:64];
      [v13 addSubview:self->_cancelButton];
      v12 = ([v13 isFirstResponder] & 1) != 0 || (*(&self->_searchBarVisualProviderFlags + 2) & 8) == 0;
      [(UIButton *)self->_cancelButton setEnabled:v12];
      [v13 setNeedsLayout];
    }

    else
    {
      [(_UISearchBarVisualProviderLegacy *)self setUpCancelButton];
    }

    searchBar = v13;
  }
}

- (void)setClippingViewActive:(BOOL)active
{
  activeCopy = active;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v6 = searchBar;
    [(UIView *)self->_searchBarClippingView setClipsToBounds:activeCopy];
    searchBar = v6;
    if (!activeCopy)
    {
      [v6 bounds];
      [(_UISearchBarVisualProviderLegacy *)self setClippingViewBounds:?];
      searchBar = v6;
    }
  }
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

- (BOOL)isInBarButNotHosted
{
  if ([(_UISearchBarVisualProviderLegacy *)self isHostedByNavigationBar])
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

      [(_UISearchBarVisualProviderLegacy *)self layoutSubviewsInBounds:v14, v16, v18, v20];
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
    v52 = v19;
    [v10 safeAreaInsets];
    v50 = v21;
    v51 = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88___UISearchBarVisualProviderLegacy__getNavigationTitleLeadingInset_trailingInset_isRTL___block_invoke;
    aBlock[3] = &__block_descriptor_65_e39_d40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    v56 = lCopy;
    aBlock[4] = v12;
    aBlock[5] = v14;
    aBlock[6] = v16;
    aBlock[7] = v18;
    v22 = _Block_copy(aBlock);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __88___UISearchBarVisualProviderLegacy__getNavigationTitleLeadingInset_trailingInset_isRTL___block_invoke_2;
    v53[3] = &__block_descriptor_65_e39_d40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    v54 = lCopy;
    v53[4] = v12;
    v53[5] = v14;
    v53[6] = v16;
    v53[7] = v18;
    v23 = _Block_copy(v53);
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
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    if (CGRectIsNull(v57) && (v58.origin.x = v33, v58.origin.y = v35, v58.size.width = v37, v58.size.height = v39, CGRectIsNull(v58)))
    {
      v40 = v51;
      if (lCopy)
      {
        v40 = v50;
      }

      v41 = v52 + v40;
    }

    else
    {
      v59.origin.x = v33;
      v59.origin.y = v35;
      v59.size.width = v37;
      v59.size.height = v39;
      if (!CGRectIsNull(v59))
      {
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        if (CGRectIsNull(v60))
        {
          x = v33;
          y = v35;
          width = v37;
          height = v39;
        }

        else
        {
          v61.origin.x = v33;
          v61.origin.y = v35;
          v61.size.width = v37;
          v61.size.height = v39;
          v64.origin.x = x;
          v64.origin.y = y;
          v64.size.width = width;
          v64.size.height = height;
          v62 = CGRectUnion(v61, v64);
          x = v62.origin.x;
          y = v62.origin.y;
          width = v62.size.width;
          height = v62.size.height;
        }
      }

      v41 = v22[2](v22, x, y, width, height) + 8.0;
    }

    *inset = v41;
    [(_UINavigationBarTitleViewOverlayRects *)self->_navBarTitleViewOverlayRects trailingItemsRect];
    v43 = v63.origin.x;
    v44 = v63.origin.y;
    v45 = v63.size.width;
    v46 = v63.size.height;
    if (CGRectIsNull(v63))
    {
      v47 = v51;
      if (!lCopy)
      {
        v47 = v50;
      }

      v48 = v52 + v47;
    }

    else
    {
      v48 = v23[2](v23, v43, v44, v45, v46) + 8.0;
    }

    *trailingInset = v48;

    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (void)getTopInset:(double *)inset bottomInset:(double *)bottomInset forBarMetrics:(int64_t)metrics barPosition:(int64_t)position
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v16 = searchBar;
    if ((UISearchBarUsesModernAppearance() & 1) == 0)
    {
      *inset = 0.0;
      *bottomInset = 0.0;
LABEL_16:
      searchBar = v16;
      goto LABEL_17;
    }

    if (position == 3)
    {
      if (metrics != 102 && metrics != 1 && !_UIBarsUseNewPadHeights())
      {
        *inset = 4.0;
        _screen = [v16 _screen];
        if (![_screen _isEmbeddedScreen] || (objc_msgSend(_screen, "_peripheryInsets"), v14 = 15.0, v15 <= 0.0))
        {
          v14 = 10.0;
        }

        *bottomInset = v14;

        goto LABEL_16;
      }

      v12 = 0x401C000000000000;
    }

    else
    {
      if ((*(&self->_searchBarVisualProviderFlags + 3) & 0xC) != 0)
      {
        if (metrics == 102 || metrics == 1)
        {
          *inset = 0.0;
          v12 = 0x4020000000000000;
        }

        else
        {
          _UIBarsUseNewPadHeights();
          *inset = 1.0;
          v12 = 0x402E000000000000;
        }

        goto LABEL_15;
      }

      v12 = 0x4024000000000000;
    }

    *inset = v12;
LABEL_15:
    *bottomInset = v12;
    goto LABEL_16;
  }

LABEL_17:
}

- (void)setOverrideContentInsets:(UIEdgeInsets)insets forRectEdges:(unint64_t)edges
{
  if (os_variant_has_internal_diagnostics())
  {
    v5 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "overrideContentInsets SPI is not supported in the legacy visual provider", buf, 2u);
    }
  }

  else
  {
    v4 = *(__UILogGetCategoryCachedImpl("Assert", &setOverrideContentInsets_forRectEdges____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "overrideContentInsets SPI is not supported in the legacy visual provider", v6, 2u);
    }
  }
}

- (void)getOverrideContentInsets:(UIEdgeInsets *)insets overriddenEdges:(unint64_t *)edges
{
  if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "overrideContentInsets SPI is not supported in the legacy visual provider", buf, 2u);
    }

    if (insets)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &getOverrideContentInsets_overriddenEdges____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "overrideContentInsets SPI is not supported in the legacy visual provider", v8, 2u);
    }

    if (insets)
    {
LABEL_5:
      *&insets->top = 0u;
      *&insets->bottom = 0u;
    }
  }

  if (edges)
  {
    *edges = 0;
  }
}

- (void)updateEffectiveContentInset
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = searchBar;
  if (searchBar)
  {
    v28 = 0.0;
    v29 = 0.0;
    effectiveUserInterfaceLayoutDirection = [searchBar effectiveUserInterfaceLayoutDirection];
    if (![(_UISearchBarVisualProviderLegacy *)self _getNavigationTitleLeadingInset:&v29 trailingInset:&v28 isRTL:effectiveUserInterfaceLayoutDirection == 1])
    {
      searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
      if ((*&searchBarVisualProviderFlags & 0x3000000) == 0)
      {
        if ((*&searchBarVisualProviderFlags & 0x4000000) != 0)
        {
          [v4 directionalLayoutMargins];
          v29 = v9;
        }

        else if ((*&searchBarVisualProviderFlags & 0x8000000) != 0)
        {
          superview = [v4 superview];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && superview)
          {
            [superview _resolvedLayoutMargins];
          }

          else
          {
            [v4 directionalLayoutMargins];
          }

          v28 = v12;
          v29 = v11;

          v8 = v28;
        }

        else
        {
          tableViewIndexWidth = self->_tableViewIndexWidth;
          if (tableViewIndexWidth <= 0.0)
          {
            [v4 safeAreaInsets];
            if (effectiveUserInterfaceLayoutDirection == 1)
            {
              v14 = v8;
            }

            else
            {
              v14 = v13;
            }

            v29 = v14;
            if (effectiveUserInterfaceLayoutDirection == 1)
            {
              v8 = v13;
            }
          }

          else
          {
            v8 = tableViewIndexWidth + 8.0;
          }
        }

        if (v29 >= 8.0)
        {
          v15 = v29;
        }

        else
        {
          v15 = 8.0;
        }

        if (v8 >= 8.0)
        {
          v16 = v8;
        }

        else
        {
          v16 = 8.0;
        }

        v28 = v16;
        v29 = v15;
      }
    }

    -[_UISearchBarVisualProviderLegacy getTopInset:bottomInset:forBarMetrics:barPosition:](self, "getTopInset:bottomInset:forBarMetrics:barPosition:", &v27, &v26, -[_UISearchBarVisualProviderLegacy barMetricsForOrientation:](self, "barMetricsForOrientation:", [v4 _expectedInterfaceOrientation]), self->_barPosition);
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v17 = v28;
    }

    else
    {
      v17 = v29;
    }

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v18 = v29;
    }

    else
    {
      v18 = v28;
    }

    v19 = fmax(v27, self->_minimumContentInsetPrivate.top);
    v20 = fmax(v17, self->_minimumContentInsetPrivate.left);
    v21 = fmax(v26, self->_minimumContentInsetPrivate.bottom);
    v22 = fmax(v18, self->_minimumContentInsetPrivate.right);
    if (v20 != self->_effectiveContentInset.left || v19 != self->_effectiveContentInset.top || v22 != self->_effectiveContentInset.right || v21 != self->_effectiveContentInset.bottom)
    {
      self->_effectiveContentInset.top = v19;
      self->_effectiveContentInset.left = v20;
      self->_effectiveContentInset.bottom = v21;
      self->_effectiveContentInset.right = v22;
      [v4 setNeedsLayout];
    }
  }
}

- (UIEdgeInsets)scopeBarInsets
{
  v3 = 7.0;
  bottom = 8.0;
  if (UISearchBarUsesModernAppearance())
  {
    left = self->_effectiveContentInset.left;
    right = self->_effectiveContentInset.right;
    if ((*(&self->_searchBarVisualProviderFlags + 3) & 4) != 0)
    {
      bottom = self->_effectiveContentInset.bottom;
      searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
      -[_UISearchBarVisualProviderLegacy barMetricsForOrientation:](self, "barMetricsForOrientation:", [searchBar _expectedInterfaceOrientation]);

      v3 = 2.0;
    }
  }

  else
  {
    right = 8.0;
    left = 8.0;
  }

  v8 = v3;
  v9 = left;
  v10 = bottom;
  v11 = right;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (double)scopeBarHeight
{
  v3 = 0.0;
  [(_UISearchBarVisualProviderLegacy *)self getScopeBarHeight:0 containerHeight:&v3];
  return v3;
}

- (void)getScopeBarHeight:(double *)height containerHeight:(double *)containerHeight
{
  if (UISearchBarUsesModernAppearance() && ([(_UISearchBarVisualProviderLegacy *)self isInNavigationPalette]|| [(_UISearchBarVisualProviderLegacy *)self isHostedByNavigationBar]))
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    v7 = -[_UISearchBarVisualProviderLegacy barMetricsForOrientation:](self, "barMetricsForOrientation:", [searchBar _expectedInterfaceOrientation]);
    if (v7 == 102 || v7 == 1)
    {
      if (height)
      {
        [UISegmentedControl defaultHeightForStyle:7 size:1];
        *height = v8;
      }

      if (!containerHeight)
      {
        goto LABEL_20;
      }

      v9 = 0x4040000000000000;
    }

    else
    {
      if (height)
      {
        [UISegmentedControl defaultHeightForStyle:7 size:0];
        *height = v14;
      }

      if (!containerHeight)
      {
        goto LABEL_20;
      }

      v9 = 0x4046000000000000;
    }

    *containerHeight = v9;
LABEL_20:

    return;
  }

  [UISegmentedControl defaultHeightForStyle:7 size:0];
  v11 = v10;
  [(_UISearchBarVisualProviderLegacy *)self scopeBarInsets];
  if (containerHeight)
  {
    *containerHeight = v13 + v11 + v12;
  }

  if (height)
  {
    *height = v11;
  }
}

- (BOOL)useRelaxedScopeLayout
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar && UISearchBarUsesModernAppearance() && (self->_scopeBarPosition == 1 || ([searchBar bounds], -[_UISearchBarVisualProviderLegacy wouldCombineLandscapeBarsForSize:](self, "wouldCombineLandscapeBarsForSize:", v4, v5))))
  {
    _searchController = [searchBar _searchController];
    if (_searchController)
    {
      _searchController2 = [searchBar _searchController];
      traitCollection = [_searchController2 traitCollection];
    }

    else
    {
      traitCollection = [searchBar traitCollection];
    }

    v9 = [traitCollection verticalSizeClass] == 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

- (BOOL)scopeBarIsVisible
{
  if (!self->_scopeBar)
  {
    return 0;
  }

  if ((*(&self->_searchBarVisualProviderFlags + 3) & 0x10) == 0)
  {
    return 0;
  }

  if ([(NSArray *)self->_scopeTitles count]< 2)
  {
    return 0;
  }

  if ([(_UISearchBarVisualProviderLegacy *)self isInBarButNotHosted])
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 0;
    }
  }

  return [(_UISearchBarVisualProviderLegacy *)self containsScopeBar];
}

- (double)barHeightForBarMetrics:(int64_t)metrics withEffectiveInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  top = insets.top;
  if (UISearchBarUsesModernAppearance())
  {
    v7 = _UIBarsUseNewPadHeights();
    v8 = metrics == 102 || metrics == 1;
    v9 = 36.0;
    v10 = 30.0;
    if (!v8)
    {
      v10 = 36.0;
    }

    if (!v7)
    {
      v9 = v10;
    }

    result = top + bottom + v9;
    if (metrics == 102)
    {
      return result + 22.0;
    }

    else if (metrics == 101)
    {
      return result + 34.0;
    }
  }

  else
  {
    result = 44.0;
    if (metrics == 101)
    {
      result = 75.0;
    }

    if (metrics == 1)
    {
      result = 32.0;
    }

    if (metrics == 102)
    {
      return 54.0;
    }
  }

  return result;
}

- (double)searchFieldHeight
{
  v3 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldBackgroundImageForState:0];
  v4 = v3;
  if (v3)
  {
    [v3 size];
    v6 = v5;
  }

  else
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
    if (dyld_program_sdk_at_least())
    {
      v8 = -[_UISearchBarVisualProviderLegacy barMetricsForOrientation:](self, "barMetricsForOrientation:", [searchBar _expectedInterfaceOrientation]);
      if (v8 == 102 || v8 == 1)
      {
        if (UISearchBarUsesModernAppearance())
        {
          v6 = 30.0;
        }

        else
        {
          v6 = 24.0;
        }
      }

      else if (_UIBarsUseNewPadHeights())
      {
        v6 = 36.0;
      }

      else if (UISearchBarUsesModernAppearance())
      {
        v6 = 36.0;
      }

      else
      {
        v6 = 28.0;
      }
    }

    else
    {
      v9 = +[UIDevice currentDevice];
      v6 = 28.0;
      if (![v9 userInterfaceIdiom] && (objc_msgSend(searchBar, "_expectedInterfaceOrientation") - 3) <= 1)
      {
        v6 = 24.0;
        if (!self->_searchNavigationItem)
        {
          searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
          if ((*&searchBarVisualProviderFlags & 0x4000000) == 0)
          {
            if ((*&searchBarVisualProviderFlags & 0x8000000) != 0)
            {
              v11 = 24;
            }

            else
            {
              v11 = 28;
            }

            v6 = v11;
          }
        }
      }
    }
  }

  return v6;
}

- (double)barHeightForBarMetrics:(int64_t)metrics barPosition:(int64_t)position
{
  top = self->_effectiveContentInset.top;
  left = self->_effectiveContentInset.left;
  right = self->_effectiveContentInset.right;
  bottom = self->_effectiveContentInset.bottom;
  v11 = top;
  [(_UISearchBarVisualProviderLegacy *)self getTopInset:&v11 bottomInset:&bottom forBarMetrics:metrics barPosition:position];
  [(_UISearchBarVisualProviderLegacy *)self barHeightForBarMetrics:metrics withEffectiveInsets:v11, left, bottom, right];
  return result;
}

- (double)defaultHeight
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  -[_UISearchBarVisualProviderLegacy defaultHeightForOrientation:](self, "defaultHeightForOrientation:", [searchBar _expectedInterfaceOrientation]);
  v5 = v4;

  return v5;
}

- (double)_defaultWidth
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v3 = searchBar;
  if (searchBar)
  {
    traitCollection = [searchBar traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 2)
    {
      v6 = 600.0;
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)defaultHeightForOrientation:(int64_t)orientation
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v6 = searchBar;
  if (!searchBar)
  {
    v10 = 0.0;
    goto LABEL_18;
  }

  traitCollection = [searchBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
  {
    *&v9 = 60.0;
LABEL_4:
    v10 = *&v9;
    goto LABEL_18;
  }

  if (dyld_program_sdk_at_least())
  {
    [(_UISearchBarVisualProviderLegacy *)self barHeightForBarMetrics:[(_UISearchBarVisualProviderLegacy *)self barMetricsForOrientation:orientation]];
    v10 = v11;
  }

  else
  {
    if ([(_UISearchBarVisualProviderLegacy *)self isInBarButNotHosted])
    {
      v12 = +[UIDevice currentDevice];
      userInterfaceIdiom2 = [v12 userInterfaceIdiom];

      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        *&v9 = 44.0;
        goto LABEL_4;
      }
    }

    text = [(UILabel *)self->_promptLabel text];
    v15 = [text length];

    if (v15)
    {
      v10 = 75.0;
    }

    else
    {
      v10 = 44.0;
    }
  }

  if ((*(&self->_searchBarVisualProviderFlags + 3) & 0x10) != 0 && [(NSArray *)self->_scopeTitles count]>= 2 && ![(_UISearchBarVisualProviderLegacy *)self shouldCombineLandscapeBarsForOrientation:orientation])
  {
    [(_UISearchBarVisualProviderLegacy *)self scopeBarHeight];
    v10 = v10 + v16;
  }

LABEL_18:

  return v10;
}

- (double)navigationBarContentHeight
{
  v2 = _UIBarsUseNewPadHeights();
  result = 50.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (void)updateNavigationBarLayoutInsertDataForSearchBar:(id)bar collapsibleScopeBar:(id)scopeBar forLayoutState:(int64_t)state
{
  scopeBarCopy = scopeBar;
  barCopy = bar;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  -[_UISearchBarVisualProviderLegacy barHeightForBarMetrics:](self, "barHeightForBarMetrics:", -[_UISearchBarVisualProviderLegacy barMetricsForOrientation:](self, "barMetricsForOrientation:", [searchBar _expectedInterfaceOrientation]));
  v10 = v9;
  [(_UISearchBarVisualProviderLegacy *)self defaultHeight];
  v12 = v11;
  [barCopy setPreferredHeight:v10];
  [barCopy setMinimumHeight:v10];

  v13 = v12 - v10;
  [scopeBarCopy setPreferredHeight:v13];
  [scopeBarCopy setMinimumHeight:v13];
  [scopeBarCopy setCollapsible:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v6 = [(_UISearchBarVisualProviderBase *)self searchBar:fits.width];
  if (v6)
  {
    [(_UISearchBarVisualProviderLegacy *)self defaultHeight];
    v8 = v7;
    if (dyld_program_sdk_at_least())
    {
      if ((*&width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v21.width = width;
        v21.height = v8;
        v10 = NSStringFromCGSize(v21);
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderLegacy.m" lineNumber:2371 description:{@"-[UISearchBar sizeThatFits:] does not support passing non-finite values (%@)", v10}];
      }
    }

    else if ((*&width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      width = 0.0;
    }

    if (!-[_UISearchBarVisualProviderLegacy isInBarButNotHosted](self, "isInBarButNotHosted") || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 userInterfaceIdiom], v11, (v12 & 0xFFFFFFFFFFFFFFFBLL) != 1))
    {
      if (width == 0.0)
      {
        superview = [v6 superview];
        v14 = superview;
        if (superview)
        {
          [superview bounds];
          width = v15;
        }

        else if (fabs(width) < 2.22044605e-16)
        {
          _screen = [v6 _screen];
          [_screen bounds];
          width = v17;
        }
      }
    }

    [(_UISearchBarVisualProviderLegacy *)self _defaultWidth];
    if (v18 > 0.0)
    {
      width = v18;
    }
  }

  else
  {
    width = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  v19 = width;
  v20 = v8;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)intrinsicContentSize
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    [(_UISearchBarVisualProviderLegacy *)self _defaultWidth];
    v5 = v4;
    [(_UISearchBarVisualProviderLegacy *)self defaultHeight];
    if (v5 == 0.0)
    {
      v7 = -1.0;
    }

    else
    {
      v7 = v5;
    }

    if (v6 == 0.0)
    {
      v8 = -1.0;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = -1.0;
    v7 = -1.0;
  }

  v9 = v7;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)displayNavBarCancelButton:(BOOL)button animated:(BOOL)animated
{
  animatedCopy = animated;
  buttonCopy = button;
  searchNavigationItem = [(_UISearchBarVisualProviderLegacy *)self searchNavigationItem];
  if (buttonCopy)
  {
    cancelBarButtonItem = [(_UISearchBarVisualProviderLegacy *)self cancelBarButtonItem];
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

- (BOOL)searchFieldWidthShouldBeFlexible
{
  WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_searchDisplayController);
    if ([v4 displaysSearchBarInNavigationBar])
    {
      v5 = objc_loadWeakRetained(&self->_searchDisplayController);
      if ([v5 displaysSearchBarInNavigationBar])
      {
        v6 = objc_loadWeakRetained(&self->_searchDisplayController);
        v7 = [v6 navigationBarSearchFieldSizing] == 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (double)availableBoundsWidth
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = searchBar;
  if (searchBar)
  {
    [searchBar bounds];
    [(_UISearchBarVisualProviderLegacy *)self availableBoundsWidthForSize:v5, v6];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)landscapeSearchFieldWidth
{
  if ([(_UISearchBarVisualProviderLegacy *)self searchFieldWidthShouldBeFlexible])
  {
    [(_UISearchBarVisualProviderLegacy *)self availableBoundsWidth];
    return round(v3 * 0.4);
  }

  else
  {
    [(UIView *)self->_searchField frame];

    return CGRectGetWidth(*&v5);
  }
}

- (double)landscapeScopeBarWidth
{
  [(_UISearchBarVisualProviderLegacy *)self scopeBarInsets];
  v4 = v3;
  v6 = v5;
  [(_UISearchBarVisualProviderLegacy *)self availableBoundsWidth];
  v8 = v7;
  [(_UISearchBarVisualProviderLegacy *)self landscapeSearchFieldWidth];
  return v8 - v9 + -13.0 - v4 - v6;
}

- (double)availableBoundsWidthForSize:(CGSize)size
{
  width = size.width;
  if ([(_UISearchBarVisualProviderLegacy *)self searchFieldWidthShouldBeFlexible:size.width])
  {
    v5 = width - self->_effectiveContentInset.left - self->_effectiveContentInset.right;
    leftButton = self->_leftButton;
    if (leftButton)
    {
      [(UINavigationButton *)leftButton _pathTitleEdgeInsets];
      v9 = v7 + v8;
      [(UIView *)self->_leftButton frame];
      v5 = v5 - (CGRectGetWidth(v24) + 11.0 - v9);
    }

    if (self->_cancelButton)
    {
      if ((*(&self->_searchBarVisualProviderFlags + 2) & 4) != 0)
      {
        if (!-[_UISearchBarVisualProviderLegacy isInBarButNotHosted](self, "isInBarButNotHosted") || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 userInterfaceIdiom], v10, (v11 & 0xFFFFFFFFFFFFFFFBLL) != 1))
        {
          [(UIButton *)self->_cancelButton _pathTitleEdgeInsets];
          v13 = v12;
          v15 = v14;
          [(UIView *)self->_cancelButton frame];
          v16 = v5 - (CGRectGetWidth(v25) + 11.0 - v15 - v13);
          right = self->_effectiveContentInset.right;
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

  else
  {
    [(UIView *)self->_searchField frame];

    return CGRectGetWidth(*&v19);
  }
}

- (BOOL)shouldCombineLandscapeBarsForOrientation:(int64_t)orientation
{
  if ([(_UISearchBarVisualProviderLegacy *)self useRelaxedScopeLayout])
  {
    return 0;
  }

  scopeBarPosition = self->_scopeBarPosition;
  if (scopeBarPosition)
  {
    return scopeBarPosition == 1;
  }

  result = 0;
  if ((orientation - 1) >= 2 && (*&self->_searchBarVisualProviderFlags & 0x20000000) != 0)
  {
    v7 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v7 userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      if (self->_scopeBarContainerView)
      {
        [(UISegmentedControl *)self->_scopeBar sizeThatFits:10000.0, 10000.0];
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      [(_UISearchBarVisualProviderLegacy *)self landscapeScopeBarWidth];
      return v10 <= v11;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)wouldCombineLandscapeBarsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    if (self->_scopeBarContainerView)
    {
      [(UISegmentedControl *)self->_scopeBar sizeThatFits:10000.0, 10000.0];
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    [(_UISearchBarVisualProviderLegacy *)self scopeBarInsets];
    v11 = v10;
    v13 = v12;
    [(_UISearchBarVisualProviderLegacy *)self availableBoundsWidthForSize:width, height];
    v15 = v14;
    if ([(_UISearchBarVisualProviderLegacy *)self searchFieldWidthShouldBeFlexible])
    {
      v16 = round(v15 * 0.4);
    }

    else
    {
      [(UIView *)self->_searchField frame];
      v16 = CGRectGetWidth(v18);
    }

    v9 = v8 <= v15 - v16 + -13.0 - v11 - v13;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)layoutSubviews
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v4 = searchBar;
    [searchBar bounds];
    [(_UISearchBarVisualProviderLegacy *)self layoutSubviewsInBounds:?];
    searchBar = v4;
  }
}

- (void)layoutSubviewsInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v9 = searchBar;
  if (!searchBar)
  {
    goto LABEL_136;
  }

  if (!self->_searchField)
  {
    _searchBarTextField = [searchBar _searchBarTextField];
    searchField = self->_searchField;
    self->_searchField = _searchBarTextField;
  }

  WeakRetained = objc_loadWeakRetained(&self->_navBarTitleViewDataSource);
  v166 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained;
    navBarTitleViewOverlayRects = self->_navBarTitleViewOverlayRects;
    if (navBarTitleViewOverlayRects)
    {
      [(_UINavigationBarTitleViewOverlayRects *)navBarTitleViewOverlayRects reset];
    }

    else
    {
      v16 = objc_alloc_init(_UINavigationBarTitleViewOverlayRects);
      v17 = self->_navBarTitleViewOverlayRects;
      self->_navBarTitleViewOverlayRects = v16;
    }

    [v13 titleView:v9 needsUpdatedContentOverlayRects:self->_navBarTitleViewOverlayRects];
    [(_UISearchBarVisualProviderLegacy *)self updateEffectiveContentInset];
    isInBarButNotHosted = 1;
  }

  else
  {
    isInBarButNotHosted = [(_UISearchBarVisualProviderLegacy *)self isInBarButNotHosted];
  }

  window = [v9 window];
  windowScene = [window windowScene];
  _interfaceOrientation = [windowScene _interfaceOrientation];

  v21 = [(_UISearchBarVisualProviderLegacy *)self shouldCombineLandscapeBarsForOrientation:_interfaceOrientation];
  if (v21 && isInBarButNotHosted)
  {
    v22 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v22 userInterfaceIdiom];

    v21 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1;
  }

  useRelaxedScopeLayout = [(_UISearchBarVisualProviderLegacy *)self useRelaxedScopeLayout];
  scopeBarIsVisible = [(_UISearchBarVisualProviderLegacy *)self scopeBarIsVisible];
  containsScopeBar = [(_UISearchBarVisualProviderLegacy *)self containsScopeBar];
  [(_UISearchBarVisualProviderLegacy *)self scopeBarHeight];
  v27 = v26;
  v170 = v9[13];
  v169 = isInBarButNotHosted;
  if (isInBarButNotHosted)
  {
    superview = [v9 superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topItem = [superview topItem];
      titleView = [topItem titleView];
      if (titleView == v9)
      {
      }

      else
      {
        searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;

        if ((*&searchBarVisualProviderFlags & 0x8000000) == 0)
        {
          [superview frame];
          height = v32;
          [v9 setBounds:{x, y, width}];
        }
      }
    }

    [(UIImageView *)self->_searchBarBackground setHidden:1];
    [(_UISearchBarVisualProviderLegacy *)self updateSearchBarOpacity];

    if (containsScopeBar)
    {
      v33 = +[UIDevice currentDevice];
      userInterfaceIdiom2 = [v33 userInterfaceIdiom];

      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        [(UIView *)self->_scopeBarContainerView removeFromSuperview];
        v35 = 0;
        v164 = 1;
        goto LABEL_44;
      }

      goto LABEL_26;
    }

LABEL_25:
    v164 = 0;
    v35 = 0;
    goto LABEL_44;
  }

  [(UIImageView *)self->_searchBarBackground setHidden:[(_UISearchBarVisualProviderLegacy *)self drawsBackground]^ 1];
  [(_UISearchBarVisualProviderLegacy *)self updateSearchBarOpacity];
  if (!containsScopeBar)
  {
    goto LABEL_25;
  }

LABEL_26:
  v36 = self->_scopeBarContainerView;
  v37 = v36;
  if (scopeBarIsVisible)
  {
    if (v21)
    {
      [v9 bringSubviewToFront:v36];
      [(UIView *)self->_scopeBarBackgroundView setAlpha:0.0];
    }

    else
    {
      [v9 sendSubviewToBack:v36];
      [(UIView *)self->_scopeBarBackgroundView setAlpha:1.0];
      [(UIView *)v37 frame];
      v39 = v38;
      [v9 bounds];
      if (v39 >= CGRectGetMaxX(v191))
      {
        [(UIView *)v37 frame];
        v41 = v40;
        v184[0] = MEMORY[0x1E69E9820];
        v184[1] = 3221225472;
        v184[2] = __59___UISearchBarVisualProviderLegacy_layoutSubviewsInBounds___block_invoke;
        v184[3] = &unk_1E70F3B20;
        v185 = v37;
        v186 = 0;
        v187 = v41;
        v188 = width;
        v189 = v27;
        [UIView performWithoutAnimation:v184];
      }

      [(_UISearchBarVisualProviderLegacy *)self updateScopeBarFrame];
    }

    if (UISearchBarUsesModernAppearance())
    {
      [(_UISearchBarVisualProviderLegacy *)self barHeightForBarMetrics:[(_UISearchBarVisualProviderLegacy *)self barMetricsForOrientation:_interfaceOrientation]];
      v43 = v42;
    }

    else
    {
      v43 = 44.0;
    }

    [(UIView *)v37 frame];
    if (v43 < height - v44)
    {
      v43 = height - v44;
    }

    if (v43 == height)
    {
      v35 = 0;
    }

    else
    {
      *&self->_searchBarVisualProviderFlags |= 0x10000u;
      v35 = 1;
    }
  }

  else
  {
    if (![(UIView *)v36 isHidden]&& !v21)
    {
      v190.origin.x = x;
      v190.origin.y = y;
      v190.size.width = width;
      v190.size.height = height;
      [(UIView *)v37 setFrame:0.0, CGRectGetMaxY(v190), width, v27];
    }

    v35 = 0;
  }

  [(UISearchBarBackground *)self->_searchBarBackground setUsesContiguousBarBackground:scopeBarIsVisible && !v21];

  v164 = 1;
LABEL_44:
  if (*(&self->_searchBarVisualProviderFlags + 2))
  {
    [(_UISearchBarVisualProviderLegacy *)self layoutBackgroundViewConsideringTopBarStatusAndChangedHeight:v35];
  }

  UIRoundToViewScale(v9);
  top = self->_effectiveContentInset.top;
  left = self->_effectiveContentInset.left;
  v47 = x + left;
  v48 = y + top;
  v167 = width - (left + self->_effectiveContentInset.right);
  v50 = v49 - (top + self->_effectiveContentInset.bottom);
  [(UIView *)self->_cancelButton bounds];
  v52 = v51;
  v54 = v53;
  [(UIButton *)self->_cancelButton sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(UIButton *)self->_cancelButton setBounds:v52, v54, v55, v56];
  text = [(UILabel *)self->_promptLabel text];
  v58 = [text length] == 0 || v169;

  v163 = v27;
  if (v58)
  {
    [(UIView *)self->_promptLabel removeFromSuperview];
  }

  else
  {
    v59 = [(_UISearchBarVisualProviderLegacy *)self barMetricsForOrientation:_interfaceOrientation];
    [v9 addSubview:self->_promptLabel];
    [(UIView *)self->_promptLabel sizeToFit];
    [(UIView *)self->_promptLabel frame];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    if (UISearchBarUsesModernAppearance())
    {
      v66 = 34.0;
      if (v59 == 102)
      {
        v66 = 22.0;
      }

      v67 = v47 + 0.0;
      v48 = v48 + v66;
      v50 = v50 - v66;
      if (v59 == 102)
      {
        v68 = 3.0;
      }

      else
      {
        v68 = 12.0;
      }

      v192.origin.x = v47 + 0.0;
      v192.origin.y = v48;
      v192.size.width = v167;
      v192.size.height = v50;
      v69 = CGRectGetMinY(v192) - v68;
      v193.origin.x = v47;
      v193.origin.y = v61;
      v193.size.width = v63;
      v193.size.height = v65;
      v70 = CGRectGetHeight(v193);
      [(UILabel *)self->_promptLabel _baselineOffsetFromBottom];
      v71 = v167;
      v73 = v69 - (v70 + v72);
    }

    else
    {
      v67 = v47 + 0.0;
      v48 = v48 + v50 + -44.0;
      v50 = v50 - (v50 + -44.0);
      v73 = 7.0;
      v71 = v167;
    }

    v74 = v67;
    v75 = v48;
    v76 = v50;
    [(UILabel *)self->_promptLabel setFrame:v47, v73, CGRectGetWidth(*(&v71 - 2)), v65];
    v47 = v67;
  }

  rect = v50;
  if (self->_leftButton)
  {
    [v9 addSubview:?];
    [(UIView *)self->_leftButton sizeToFit];
    [(UIView *)self->_leftButton frame];
    v80 = v79;
    v82 = v81;
    if ((v170 & 0x400000) != 0)
    {
      v83 = v77;
      v84 = v78;
      v194.origin.x = v47;
      v194.origin.y = v48;
      v194.size.width = v167;
      v194.size.height = v50;
      MaxX = CGRectGetMaxX(v194);
      v195.origin.x = v83;
      v195.origin.y = v84;
      v195.size.width = v80;
      v195.size.height = v82;
      v47 = MaxX - CGRectGetWidth(v195);
    }

    v86 = round(v48 + v50 * 0.5 - v82 * 0.5) + -1.0;
    v87 = 11.0;
    if ((v170 & 0x400000) == 0)
    {
      v196.origin.x = v47;
      v196.origin.y = v86;
      v196.size.width = v80;
      v196.size.height = v82;
      v87 = CGRectGetMaxX(v196) + 11.0;
    }

    [(UIButton *)self->_leftButton setFrame:v47, v86, v80, v82];
    v47 = v87;
  }

  [(_UISearchBarVisualProviderLegacy *)self searchFieldHeight];
  v89 = v88;
  if ((*(&self->_searchBarVisualProviderFlags + 3) & 0xC) != 0)
  {
    [(_UISearchBarVisualProviderLegacy *)self barHeightForBarMetrics:[(_UISearchBarVisualProviderLegacy *)self barMetricsForOrientation:_interfaceOrientation]];
    v91 = v90;
    [v9 bounds];
    v93 = fmax(v91 - v92, 0.0);
    if (v89 <= v93)
    {
      v93 = v89;
    }

    v94 = v93 / v89;
    v89 = v89 - v93;
    v183[0] = MEMORY[0x1E69E9820];
    v183[1] = 3221225472;
    v183[2] = __59___UISearchBarVisualProviderLegacy_layoutSubviewsInBounds___block_invoke_2;
    v183[3] = &__block_descriptor_40_e11_d24__0d8d16l;
    *&v183[4] = v94;
    v95 = 1.0 - fmin(fmax(v94 / 0.2, 0.0), 1.0);
    _searchBarTextField2 = [v9 _searchBarTextField];
    [_searchBarTextField2 _setForegroundViewsAlpha:v95];

    v97 = __59___UISearchBarVisualProviderLegacy_layoutSubviewsInBounds___block_invoke_2(v183, 0.8, 0.95);
    _searchBarTextField3 = [v9 _searchBarTextField];
    [_searchBarTextField3 _setBackgroundViewsAlpha:v97];
  }

  v99 = v47;
  if ((v170 & 0x400000) != 0)
  {
    v99 = v47;
    if (self->_cancelButton)
    {
      v99 = v47;
      if ((*(&self->_searchBarVisualProviderFlags + 2) & 4) != 0)
      {
        if (!-[_UISearchBarVisualProviderLegacy isInBarButNotHosted](self, "isInBarButNotHosted") || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v100 = objc_claimAutoreleasedReturnValue(), v101 = [v100 userInterfaceIdiom], v100, v99 = v47, (v101 & 0xFFFFFFFFFFFFFFFBLL) != 1))
        {
          [(UIView *)self->_cancelButton frame];
          v99 = v47 + v102 + 11.0;
        }
      }
    }
  }

  if (!UISearchBarUsesModernAppearance() || (v103 = v48, (*(&self->_searchBarVisualProviderFlags + 3) & 0xC) == 0))
  {
    v104 = v48 + (rect - v89) * 0.5;
    v105 = +[UIDevice currentDevice];
    userInterfaceIdiom3 = [v105 userInterfaceIdiom];
    v107 = ceil(v104);
    v108 = floor(v104);
    if (userInterfaceIdiom3 == 1)
    {
      v103 = v107;
    }

    else
    {
      v103 = v108;
    }
  }

  if (scopeBarIsVisible && v21)
  {
    [(_UISearchBarVisualProviderLegacy *)self landscapeSearchFieldWidth];
  }

  else
  {
    [(_UISearchBarVisualProviderLegacy *)self availableBoundsWidth];
  }

  v110 = v109;
  searchFieldPositionAdjustment = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldPositionAdjustment];
  v112 = searchFieldPositionAdjustment;
  if (searchFieldPositionAdjustment)
  {
    v113 = v9[13];
    [searchFieldPositionAdjustment UIOffsetValue];
    if ((v113 & 0x400000) != 0)
    {
      v114 = -v114;
    }

    v99 = v99 + v114;
    v103 = v103 + v115;
  }

  v197.origin.x = v99;
  v197.origin.y = v103;
  v197.size.width = v110;
  v197.size.height = v89;
  v116 = CGRectGetHeight(v197);
  [(UIView *)self->_searchField frame];
  if (v116 != CGRectGetHeight(v198))
  {
    [(_UISearchBarVisualProviderLegacy *)self updateRightView];
  }

  if (scopeBarIsVisible && useRelaxedScopeLayout)
  {
    v117 = _UIViewReadableWidthForView(v9);
    v199.origin.x = v99;
    v199.origin.y = v103;
    v199.size.width = v110;
    v199.size.height = v89;
    if (v117 < CGRectGetWidth(v199))
    {
      v200.origin.x = v47;
      v200.origin.y = v48;
      v200.size.width = v167;
      v200.size.height = rect;
      v118 = round(CGRectGetMidX(v200) + v117 * -0.5);
      if ((v170 & 0x400000) != 0)
      {
        v203.origin.x = v99;
        v203.origin.y = v103;
        v203.size.width = v110;
        v203.size.height = v89;
        MinX = CGRectGetMinX(v203);
        v204.origin.x = v118;
        v204.origin.y = v103;
        v204.size.width = v117;
        v204.size.height = v89;
        v120 = fmax(MinX - CGRectGetMinX(v204), 0.0);
      }

      else
      {
        v201.origin.x = v99;
        v201.origin.y = v103;
        v201.size.width = v110;
        v201.size.height = v89;
        v119 = CGRectGetMaxX(v201);
        v202.origin.x = v118;
        v202.origin.y = v103;
        v202.size.width = v117;
        v202.size.height = v89;
        v120 = v119 - CGRectGetMaxX(v202);
        if (v120 > 0.0)
        {
          v120 = 0.0;
        }
      }

      v99 = v118 + v120;
      v110 = v117;
    }
  }

  delegate = [v9 delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate _searchBar:v9 proposedSearchFieldFrame:{v99, v103, v110, v89}];
    v124 = v123;
    v103 = v125;
    v127 = v126;
    v89 = v128;
  }

  else
  {
    v127 = v110;
    v124 = v99;
  }

  [(UITextField *)self->_searchField setFrame:v124, v103, v127, v89];
  if ((v21 & v164) != 1)
  {
    v129 = rect;
    if (scopeBarIsVisible && useRelaxedScopeLayout)
    {
      [(_UISearchBarVisualProviderLegacy *)self updateScopeBarFrame];
    }

    goto LABEL_105;
  }

  if (scopeBarIsVisible)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59___UISearchBarVisualProviderLegacy_layoutSubviewsInBounds___block_invoke_3;
    aBlock[3] = &unk_1E70F8BB8;
    aBlock[4] = self;
    v174 = v124;
    v175 = v103;
    v176 = v127;
    v177 = v89;
    v178 = v47;
    v179 = v48;
    v129 = rect;
    v180 = v167;
    v181 = rect;
    v182 = v163;
    v173 = v9;
    v130 = _Block_copy(aBlock);
    v130[2]();

LABEL_105:
    v131 = !scopeBarIsVisible;
    if ((*&self->_searchBarVisualProviderFlags & 0xC0000000) != 0)
    {
      v131 = 1;
    }

    if ((v131 & 1) == 0)
    {
      [(UIView *)self->_scopeBarContainerView setAlpha:1.0];
    }

    goto LABEL_110;
  }

  [v9 bounds];
  v132 = CGRectGetMaxX(v205);
  v129 = rect;
  UIRoundToViewScale(v9);
  v134 = v133 + 1.0;
  [(_UISearchBarVisualProviderLegacy *)self landscapeScopeBarWidth];
  [(UIView *)self->_scopeBarContainerView setFrame:v132, v134, v135, v163];
LABEL_110:
  if (v169 && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v136 = objc_claimAutoreleasedReturnValue(), v137 = [v136 userInterfaceIdiom], v136, (v137 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    [(UIView *)self->_cancelButton removeFromSuperview];
    v138 = v166;
  }

  else
  {
    cancelButton = self->_cancelButton;
    if (cancelButton)
    {
      superview2 = [(UIView *)cancelButton superview];
      _viewForChildViews = [v9 _viewForChildViews];

      v142 = self->_cancelButton;
      if (superview2 != _viewForChildViews)
      {
        [v9 addSubview:v142];
        v142 = self->_cancelButton;
      }
    }

    else
    {
      v142 = 0;
    }

    [(UIView *)v142 frame];
    v144 = v143;
    v146 = v145;
    if ((v170 & 0x400000) != 0)
    {
      if (scopeBarIsVisible)
      {
        scopeBarContainerView = self->_scopeBarContainerView;
        if (scopeBarContainerView != 0 && v21)
        {
          [(UIView *)scopeBarContainerView frame];
          v99 = v153;
        }
      }

      [(UIButton *)self->_cancelButton _pathTitleEdgeInsets];
      v151 = v99 + -11.0 + v154 - v144;
    }

    else
    {
      if (scopeBarIsVisible)
      {
        v147 = self->_scopeBarContainerView;
        if (v147 != 0 && v21)
        {
          [(UIView *)v147 frame];
          v99 = v148;
          v110 = v149;
        }
      }

      [(UIButton *)self->_cancelButton _pathTitleEdgeInsets];
      v151 = v110 + v99 + 11.0 - v150;
    }

    v138 = v166;
    v155 = round(v48 + v129 * 0.5 - v146 * 0.5) + -1.0;
    v156 = self->_cancelButton;
    if (v156 && (-[UIView subviews](v156, "subviews"), v157 = objc_claimAutoreleasedReturnValue(), v158 = [v157 count], v157, !v158) && +[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled"))
    {
      v171[0] = MEMORY[0x1E69E9820];
      v171[1] = 3221225472;
      v171[2] = __59___UISearchBarVisualProviderLegacy_layoutSubviewsInBounds___block_invoke_4;
      v171[3] = &unk_1E70F3B20;
      v171[4] = self;
      *&v171[5] = v151;
      *&v171[6] = v155;
      *&v171[7] = v144;
      *&v171[8] = v146;
      [UIView performWithoutAnimation:v171];
    }

    else
    {
      [(UIButton *)self->_cancelButton setFrame:v151, v155, v144, v146];
      v159 = 1.0;
      if ((*&self->_searchBarVisualProviderFlags & 0x40000) == 0)
      {
        v159 = 0.0;
      }

      [(UIView *)self->_cancelButton setAlpha:v159];
    }
  }

  separator = self->_separator;
  if (separator)
  {
    [(UIView *)separator frame];
    v162 = -v161;
    [v9 bounds];
    [(UIImageView *)self->_separator setFrame:0.0, v162];
  }

LABEL_136:
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

- (void)layoutBackgroundViewConsideringTopBarStatusAndChangedHeight:(BOOL)height
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    *&self->_searchBarVisualProviderFlags &= ~0x10000u;
    v23 = searchBar;
    [searchBar bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    window = [v23 window];
    if (window)
    {
      if (self->_barPosition == 3 || [(_UISearchBarVisualProviderLegacy *)self isAtTop])
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
      *&self->_searchBarVisualProviderFlags |= 0x10000u;
    }

    [(UIView *)self->_searchBarBackground frame];
    if (height || (v25.origin.x = v7, v25.origin.y = v9, v25.size.width = v11, v25.size.height = v13, !CGRectEqualToRect(*&v18, v25)))
    {
      if (-[_UISearchBarVisualProviderLegacy scopeBarIsVisible](self, "scopeBarIsVisible") && !-[_UISearchBarVisualProviderLegacy shouldCombineLandscapeBarsForOrientation:](self, "shouldCombineLandscapeBarsForOrientation:", [v23 _expectedInterfaceOrientation]))
      {
        [(_UISearchBarVisualProviderLegacy *)self scopeBarHeight];
        v13 = v13 - v22;
      }

      [(UISearchBarBackground *)self->_searchBarBackground setFrame:v7, v9, v11, v13];
    }

    searchBar = v23;
  }
}

- (void)updateBackgroundToBackdropStyle:(int64_t)style
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v6 = searchBar;
  if (searchBar)
  {
    if (style)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __68___UISearchBarVisualProviderLegacy_updateBackgroundToBackdropStyle___block_invoke;
      v11[3] = &unk_1E70F36D0;
      v11[4] = self;
      styleCopy = style;
      v12 = searchBar;
      [UIView performWithoutAnimation:v11];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68___UISearchBarVisualProviderLegacy_updateBackgroundToBackdropStyle___block_invoke_2;
      v10[3] = &unk_1E70F3590;
      v10[4] = self;
      [UIView animateWithDuration:v10 animations:0.1];
    }

    else
    {
      if (!self->_backdropStyle && (*&self->_searchBarVisualProviderFlags & 0x38) == 0x10)
      {
        _searchBarTextField = [searchBar _searchBarTextField];
        [_searchBarTextField _setBottomEffectBackgroundVisible:0];
      }

      if (![(UIView *)self->_backdrop isHidden])
      {
        v8[4] = self;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __68___UISearchBarVisualProviderLegacy_updateBackgroundToBackdropStyle___block_invoke_3;
        v9[3] = &unk_1E70F3590;
        v9[4] = self;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __68___UISearchBarVisualProviderLegacy_updateBackgroundToBackdropStyle___block_invoke_4;
        v8[3] = &unk_1E70F5AC0;
        [UIView animateWithDuration:32 delay:v9 options:v8 animations:0.1 completion:0.2833];
      }
    }
  }
}

- (id)navigationBarForShadow
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v3 = searchBar;
  if (!searchBar)
  {
    v6 = 0;
    goto LABEL_11;
  }

  _viewControllerForAncestor = [searchBar _viewControllerForAncestor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationBar = [_viewControllerForAncestor navigationBar];
    if (!navigationBar)
    {
      goto LABEL_9;
    }
  }

  else
  {
    navigationController = [_viewControllerForAncestor navigationController];
    navigationBar = [navigationController navigationBar];

    if (!navigationBar)
    {
      goto LABEL_9;
    }
  }

  if (([navigationBar isHidden] & 1) == 0 && (objc_msgSend(navigationBar, "containsView:", v3) & 1) == 0)
  {
    v6 = navigationBar;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:

LABEL_11:

  return v6;
}

- (BOOL)shouldDisplayShadow
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    navigationBarForShadow = [(_UISearchBarVisualProviderLegacy *)self navigationBarForShadow];
    v5 = navigationBarForShadow;
    if (!navigationBarForShadow || ([navigationBarForShadow _hidesShadow] & 1) != 0 || (WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController), v7 = objc_msgSend(WeakRetained, "isActive"), WeakRetained, (v7 & 1) != 0))
    {
      v8 = 0;
    }

    else
    {
      superview = searchBar;
      do
      {
        v11 = superview;
        superview = [superview superview];

        v8 = superview == 0;
        if (!superview)
        {
          break;
        }

        objc_opt_class();
      }

      while ((objc_opt_isKindOfClass() & 1) == 0);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)makeShadowView
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = searchBar;
  if (searchBar)
  {
    [searchBar bounds];
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    MinX = CGRectGetMinX(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MaxY = CGRectGetMaxY(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v11 = CGRectGetWidth(v21);
    _screen = [v4 _screen];
    [_screen scale];
    v14 = 1.0 / v13;

    v15 = [(UIImageView *)[_UISearchBarShadowView alloc] initWithFrame:MinX, MaxY, v11, v14];
    v16 = _UIBarHairlineShadowColorForBarStyle(*&self->_searchBarVisualProviderFlags & 7);
    [(UIImageView *)v15 setBackgroundColor:v16];

    [(UIView *)v15 setAutoresizingMask:10];
    [(UIView *)v15 setUserInteractionEnabled:0];
  }

  else
  {
    v15 = objc_alloc_init(UIImageView);
  }

  return v15;
}

- (void)setShadowVisibleIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v20 = searchBar;
    navigationBarForShadow = [(_UISearchBarVisualProviderLegacy *)self navigationBarForShadow];
    [navigationBarForShadow _setDeferShadowToSearchBar:necessaryCopy];
    shouldDisplayShadow = [(_UISearchBarVisualProviderLegacy *)self shouldDisplayShadow];
    shadowView = self->_shadowView;
    if (shouldDisplayShadow && necessaryCopy)
    {
      if (!shadowView)
      {
        makeShadowView = [(_UISearchBarVisualProviderLegacy *)self makeShadowView];
        v10 = self->_shadowView;
        self->_shadowView = makeShadowView;

        [v20 addSubview:self->_shadowView];
      }

      [v20 bounds];
      x = v22.origin.x;
      y = v22.origin.y;
      width = v22.size.width;
      height = v22.size.height;
      v15 = self->_shadowView;
      MinX = CGRectGetMinX(v22);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      MaxY = CGRectGetMaxY(v23);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v18 = CGRectGetWidth(v24);
      [(UIView *)self->_shadowView bounds];
      [(UIImageView *)v15 setFrame:MinX, MaxY, v18, CGRectGetHeight(v25)];
    }

    else
    {
      [(UIView *)shadowView removeFromSuperview];
      v19 = self->_shadowView;
      self->_shadowView = 0;
    }

    searchBar = v20;
  }
}

- (void)setSearchDisplayControllerShowsCancelButton:(BOOL)button
{
  buttonCopy = button;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if (((((*&searchBarVisualProviderFlags & 0x40000) == 0) ^ buttonCopy) & 1) == 0)
    {
      v7 = buttonCopy ? 0x40000 : 0;
      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFBFFFF | v7);
      v8 = buttonCopy ? 0.0 : 1.0;
      v9 = buttonCopy ? 1.0 : 0.0;
      v12 = searchBar;
      v10 = +[UIView areAnimationsEnabled];
      [UIView setAnimationsEnabled:0];
      [(UIView *)self->_cancelButton setAlpha:v8];
      [UIView setAnimationsEnabled:v10];
      [v12 setNeedsLayout];
      [v12 layoutBelowIfNeeded];
      [(UIView *)self->_cancelButton setAlpha:v9];
      isInBarButNotHosted = [(_UISearchBarVisualProviderLegacy *)self isInBarButNotHosted];
      searchBar = v12;
      if (isInBarButNotHosted)
      {
        [(_UISearchBarVisualProviderLegacy *)self displayNavBarCancelButton:(*&self->_searchBarVisualProviderFlags >> 18) & 1 animated:1];
        searchBar = v12;
      }
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
    centerPlaceholder = [(_UISearchBarVisualProviderLegacy *)self centerPlaceholder];
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

- (int64_t)barMetricsForOrientation:(int64_t)orientation
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!searchBar)
  {
    v9 = 0;
    goto LABEL_21;
  }

  text = [(UILabel *)self->_promptLabel text];
  v7 = [text length];

  if ((orientation - 1) <= 1)
  {
    goto LABEL_18;
  }

  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if ((*&searchBarVisualProviderFlags & 0x4000000) != 0)
  {
    orientation = [searchBar _searchController];
    if (([orientation isActive] & 1) == 0 && (*(&self->_searchBarVisualProviderFlags + 3) & 1) == 0)
    {
LABEL_11:

      goto LABEL_18;
    }
  }

  else if ((*&searchBarVisualProviderFlags & 0x1000000) == 0)
  {
LABEL_18:
    if (v7)
    {
      v9 = 101;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_21;
  }

  traitCollection = [searchBar traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {

    if ((*&searchBarVisualProviderFlags & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  traitCollection2 = [searchBar traitCollection];
  horizontalSizeClass = [traitCollection2 horizontalSizeClass];

  if ((*&searchBarVisualProviderFlags & 0x4000000) != 0)
  {
  }

  if (horizontalSizeClass != 1)
  {
    goto LABEL_18;
  }

  if (v7)
  {
    v9 = 102;
  }

  else
  {
    v9 = 1;
  }

LABEL_21:

  return v9;
}

- (void)setSearchDisplayController:(id)controller
{
  obj = controller;
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    objc_storeWeak(&self->_searchDisplayController, obj);
    if ([(_UISearchBarVisualProviderLegacy *)self centerPlaceholder])
    {
      textInputTraits = [searchBar textInputTraits];
      [textInputTraits setDeferBecomingResponder:obj == 0];
    }
  }
}

- (id)searchDisplayController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);

  return WeakRetained;
}

- (id)searchNavigationItem
{
  if (!self->_searchNavigationItem)
  {
    searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];

    if (searchBar)
    {
      WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);
      navigationBarSearchFieldSizing = [WeakRetained navigationBarSearchFieldSizing];
      v6 = [_UISearchBarNavigationItem alloc];
      if (navigationBarSearchFieldSizing == 3)
      {
        v7 = &stru_1EFB14550;
      }

      else
      {
        v7 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
      }

      v8 = [(UINavigationItem *)v6 initWithTitle:v7];
      searchNavigationItem = self->_searchNavigationItem;
      self->_searchNavigationItem = v8;

      if (navigationBarSearchFieldSizing != 3)
      {
      }

      [(_UISearchBarVisualProviderLegacy *)self setUpSearchNavigationItemWithSizingOption:navigationBarSearchFieldSizing];
    }
  }

  v10 = self->_searchNavigationItem;

  return v10;
}

- (void)setUpSearchNavigationItemWithSizingOption:(unint64_t)option
{
  searchBar = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (searchBar)
  {
    v37 = searchBar;
    WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);
    v7 = self->_searchNavigationItem;
    _searchBarTextField = [v37 _searchBarTextField];
    v9 = _searchBarTextField;
    if (option)
    {
      if (option > 2)
      {
        if (option == 3)
        {
          window = [v37 window];
          v17 = [UIView alloc];
          [(_UISearchBarVisualProviderLegacy *)self searchFieldHeight];
          UIRoundToViewScale(window);
          v19 = [(UIView *)v17 initWithFrame:0.0, 0.0, 36.0, v18];
          [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
          v20 = [UIButton buttonWithType:1];
          UIRoundToViewScale(window);
          v22 = v21;
          [(_UISearchBarVisualProviderLegacy *)self searchFieldHeight];
          [v20 setFrame:{0.0, v22, 36.0, v23}];
          [v20 setAutoresizingMask:4];
          leftView = [v9 leftView];
          image = [leftView image];
          [v20 setImage:image forState:0];

          [v20 addTarget:WeakRetained action:sel__animateNavigationBarSearchBarAppearance_ forControlEvents:64];
          [v20 sizeToFit];
          [v9 bounds];
          [v9 leftViewRectForBounds:?];
          v27 = v26;
          [v20 _pathImageEdgeInsets];
          v29 = v28 - v27;
          [v37 bounds];
          Width = CGRectGetWidth(v42);
          [(_UISearchBarVisualProviderLegacy *)self searchFieldHeight];
          v32 = v31;
          [v9 setAutoresizingMask:2];
          [v9 setFrame:{v29, 0.0, Width, v32}];
          [v9 setHidden:1];
          [(UIView *)v19 addSubview:v9];
          [(UIView *)v19 addSubview:v20];
          v33 = [[UIBarButtonItem alloc] initWithCustomView:v19];
          animatedAppearanceBarButtonItem = self->_animatedAppearanceBarButtonItem;
          self->_animatedAppearanceBarButtonItem = v33;

          [(UIBarButtonItem *)self->_animatedAppearanceBarButtonItem setWidth:36.0];
          [(UINavigationItem *)v7 setRightBarButtonItem:self->_animatedAppearanceBarButtonItem];

LABEL_17:
          [(UIView *)self->_searchBarBackground removeFromSuperview];
          searchBarBackground = self->_searchBarBackground;
          self->_searchBarBackground = 0;

          searchBar = v37;
          goto LABEL_18;
        }

LABEL_14:
        [(UINavigationItem *)v7 setTitleView:v9];
        if ((*(&self->_searchBarVisualProviderFlags + 2) & 4) != 0)
        {
          [(_UISearchBarVisualProviderLegacy *)self displayNavBarCancelButton:1 animated:0];
        }

        window = [(_UISearchBarVisualProviderLegacy *)self prompt];
        [(UINavigationItem *)v7 setPrompt:window];
        goto LABEL_17;
      }

      [_searchBarTextField frame];
      if (CGRectGetWidth(v39) >= 1.0)
      {
        [v9 frame];
        if (CGRectGetHeight(v40) >= 1.0)
        {
          goto LABEL_14;
        }
      }

      if (WeakRetained)
      {
        searchContentsController = [WeakRetained searchContentsController];
        navigationController = [searchContentsController navigationController];
        navigationBar = [navigationController navigationBar];
        [navigationBar frame];
        v13 = CGRectGetWidth(v41) * 0.5;
      }

      else
      {
        v13 = 100.0;
      }

      [(_UISearchBarVisualProviderLegacy *)self searchFieldHeight];
      v15 = v35;
    }

    else
    {
      [(_UISearchBarVisualProviderLegacy *)self searchFieldHeight];
      v15 = v14;
      v13 = 14433663.0;
    }

    [v9 setFrame:{0.0, 0.0, v13, v15}];
    goto LABEL_14;
  }

LABEL_18:
}

- (void)prepareFromAbandonedVisualProvider:(id)provider
{
  v64 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  [(_UISearchBarVisualProviderLegacy *)self prepare];
  if (providerCopy)
  {
    barTintColor = [providerCopy barTintColor];
    [(_UISearchBarVisualProviderLegacy *)self _setBarTintColor:barTintColor];

    -[_UISearchBarVisualProviderLegacy _setBarStyle:](self, "_setBarStyle:", [providerCopy barStyle]);
    -[_UISearchBarVisualProviderLegacy _setShowsScopeBar:](self, "_setShowsScopeBar:", [providerCopy showsScopeBar]);
    -[_UISearchBarVisualProviderLegacy _setAutoDisableCancelButton:](self, "_setAutoDisableCancelButton:", [providerCopy autoDisableCancelButton]);
    -[_UISearchBarVisualProviderLegacy _setShowsCancelButton:](self, "_setShowsCancelButton:", [providerCopy showsCancelButton]);
    -[_UISearchBarVisualProviderLegacy _setShowsBookmarkButton:](self, "_setShowsBookmarkButton:", [providerCopy showsBookmarkButton]);
    -[_UISearchBarVisualProviderLegacy _setShowsSearchResultsButton:](self, "_setShowsSearchResultsButton:", [providerCopy showsSearchResultsButton]);
    -[_UISearchBarVisualProviderLegacy _setSearchResultsButtonSelected:](self, "_setSearchResultsButtonSelected:", [providerCopy isSearchResultsButtonSelected]);
    -[_UISearchBarVisualProviderLegacy setAllowsInlineScopeBar:](self, "setAllowsInlineScopeBar:", [providerCopy allowsInlineScopeBar]);
    -[_UISearchBarVisualProviderLegacy _setBarTranslucence:](self, "_setBarTranslucence:", [providerCopy barTranslucence]);
    -[_UISearchBarVisualProviderLegacy _setHideBackground:](self, "_setHideBackground:", [providerCopy drawsBackground] ^ 1);
    searchBar = [providerCopy searchBar];
    [(_UISearchBarVisualProviderBase *)self setSearchBar:searchBar];

    searchFieldIfExists = [providerCopy searchFieldIfExists];
    searchField = self->_searchField;
    self->_searchField = searchFieldIfExists;

    [(UIView *)self->_searchBarBackground removeFromSuperview];
    searchBarBackground = [providerCopy searchBarBackground];
    searchBarBackground = self->_searchBarBackground;
    self->_searchBarBackground = searchBarBackground;

    backdrop = [providerCopy backdrop];
    backdrop = self->_backdrop;
    self->_backdrop = backdrop;

    backdropVisualEffectView = [providerCopy backdropVisualEffectView];
    backdropVisualEffectView = self->_backdropVisualEffectView;
    self->_backdropVisualEffectView = backdropVisualEffectView;

    searchBarClippingView = [providerCopy searchBarClippingView];
    searchBarClippingView = self->_searchBarClippingView;
    self->_searchBarClippingView = searchBarClippingView;

    cancelButton = [providerCopy cancelButton];
    cancelButton = self->_cancelButton;
    self->_cancelButton = cancelButton;

    cancelBarButtonItemIfExists = [providerCopy cancelBarButtonItemIfExists];
    cancelBarButtonItem = self->_cancelBarButtonItem;
    self->_cancelBarButtonItem = cancelBarButtonItemIfExists;

    cancelButtonText = [providerCopy cancelButtonText];
    cancelButtonText = self->_cancelButtonText;
    self->_cancelButtonText = cancelButtonText;

    leftButtonIfExists = [providerCopy leftButtonIfExists];
    leftButton = self->_leftButton;
    self->_leftButton = leftButtonIfExists;

    promptLabel = [providerCopy promptLabel];
    promptLabel = self->_promptLabel;
    self->_promptLabel = promptLabel;

    separator = [providerCopy separator];
    separator = self->_separator;
    self->_separator = separator;

    scopeBar = [providerCopy scopeBar];
    scopeBar = self->_scopeBar;
    self->_scopeBar = scopeBar;

    scopeBarContainerView = [providerCopy scopeBarContainerView];
    v32 = [UIView alloc];
    [scopeBarContainerView frame];
    v33 = [(UIView *)v32 initWithFrame:?];
    scopeBarContainerView = self->_scopeBarContainerView;
    self->_scopeBarContainerView = v33;

    superview = [scopeBarContainerView superview];
    [superview addSubview:self->_scopeBarContainerView];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    subviews = [scopeBarContainerView subviews];
    v37 = [subviews countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v60;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v60 != v39)
          {
            objc_enumerationMutation(subviews);
          }

          [(UIView *)self->_scopeBarContainerView addSubview:*(*(&v59 + 1) + 8 * i)];
        }

        v38 = [subviews countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v38);
    }

    [scopeBarContainerView removeFromSuperview];
    scopeBarBackgroundView = [providerCopy scopeBarBackgroundView];
    scopeBarBackgroundView = self->_scopeBarBackgroundView;
    self->_scopeBarBackgroundView = scopeBarBackgroundView;

    scopeTitles = [providerCopy scopeTitles];
    scopeTitles = self->_scopeTitles;
    self->_scopeTitles = scopeTitles;

    self->_selectedScope = [providerCopy selectedScope];
    self->_backdropStyle = [providerCopy backdropStyle];
    self->_barPosition = [providerCopy barPosition];
    self->_scopeBarPosition = [providerCopy scopeBarPosition];
    [providerCopy effectiveContentInset];
    self->_effectiveContentInset.top = v45;
    self->_effectiveContentInset.left = v46;
    self->_effectiveContentInset.bottom = v47;
    self->_effectiveContentInset.right = v48;
    [providerCopy minimumContentInset];
    self->_minimumContentInsetPrivate.top = v49;
    self->_minimumContentInsetPrivate.left = v50;
    self->_minimumContentInsetPrivate.bottom = v51;
    self->_minimumContentInsetPrivate.right = v52;
    [providerCopy tableViewIndexWidth];
    self->_tableViewIndexWidth = v53;
    self->_navBarTitleViewLocation = [providerCopy navBarTitleViewLocation];
    navBarTitleViewOverlayRects = [providerCopy navBarTitleViewOverlayRects];
    navBarTitleViewOverlayRects = self->_navBarTitleViewOverlayRects;
    self->_navBarTitleViewOverlayRects = navBarTitleViewOverlayRects;

    navBarTitleViewDataSource = [providerCopy navBarTitleViewDataSource];
    objc_storeWeak(&self->_navBarTitleViewDataSource, navBarTitleViewDataSource);

    animatedAppearanceBarButtonItem = [providerCopy animatedAppearanceBarButtonItem];
    animatedAppearanceBarButtonItem = self->_animatedAppearanceBarButtonItem;
    self->_animatedAppearanceBarButtonItem = animatedAppearanceBarButtonItem;

    [providerCopy revertViewHierarchyIfNecessary];
  }

  [(_UISearchBarVisualProviderLegacy *)self updateSearchBarOpacity];
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
  top = self->_minimumContentInsetPrivate.top;
  left = self->_minimumContentInsetPrivate.left;
  bottom = self->_minimumContentInsetPrivate.bottom;
  right = self->_minimumContentInsetPrivate.right;
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