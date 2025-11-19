@interface _UISearchBarVisualProviderLegacy
- (BOOL)_getNavigationTitleLeadingInset:(double *)a3 trailingInset:(double *)a4 isRTL:(BOOL)a5;
- (BOOL)containsScopeBar;
- (BOOL)drawsBackground;
- (BOOL)hasDarkUIAppearance;
- (BOOL)isAtTop;
- (BOOL)isInBarButNotHosted;
- (BOOL)scopeBarIsVisible;
- (BOOL)searchFieldWidthShouldBeFlexible;
- (BOOL)shouldCombineLandscapeBarsForOrientation:(int64_t)a3;
- (BOOL)shouldDisplayShadow;
- (BOOL)useRelaxedScopeLayout;
- (BOOL)wouldCombineLandscapeBarsForSize:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)effectiveContentInset;
- (UIEdgeInsets)minimumContentInset;
- (UIEdgeInsets)scopeBarInsets;
- (UIOffset)searchFieldBackgroundPositionAdjustment;
- (double)_defaultWidth;
- (double)availableBoundsWidth;
- (double)availableBoundsWidthForSize:(CGSize)a3;
- (double)barHeightForBarMetrics:(int64_t)a3 barPosition:(int64_t)a4;
- (double)barHeightForBarMetrics:(int64_t)a3 withEffectiveInsets:(UIEdgeInsets)a4;
- (double)defaultHeight;
- (double)defaultHeightForOrientation:(int64_t)a3;
- (double)landscapeScopeBarWidth;
- (double)landscapeSearchFieldWidth;
- (double)navigationBarContentHeight;
- (double)scopeBarHeight;
- (double)searchFieldHeight;
- (id)cancelBarButtonItem;
- (id)colorForComponent:(unint64_t)a3 disabled:(BOOL)a4;
- (id)currentSeparatorImage;
- (id)imageForSearchBarIcon:(int64_t)a3 state:(unint64_t)a4;
- (id)internalImageForSearchBarIcon:(int64_t)a3 state:(unint64_t)a4 customImage:(BOOL *)a5;
- (id)leftButton;
- (id)makeShadowView;
- (id)navBarTitleViewDataSource;
- (id)navigationBarForShadow;
- (id)runtimeOnlyViews;
- (id)searchDisplayController;
- (id)searchField;
- (id)searchNavigationItem;
- (id)textColor;
- (int64_t)barMetricsForOrientation:(int64_t)a3;
- (int64_t)barPosition;
- (void)_removeBackdropVisualEffectView;
- (void)_removeLegacyBackdropView;
- (void)_setAutoDisableCancelButton:(BOOL)a3;
- (void)_setBarTintColor:(id)a3;
- (void)_setHideBackground:(BOOL)a3;
- (void)_setSearchResultsButtonSelected:(BOOL)a3;
- (void)_setShowsBookmarkButton:(BOOL)a3;
- (void)_setShowsCancelButton:(BOOL)a3;
- (void)_setShowsScopeBar:(BOOL)a3;
- (void)_setShowsSearchResultsButton:(BOOL)a3;
- (void)allowCursorToAppear:(BOOL)a3;
- (void)applySearchBarStyle;
- (void)destroyCancelButton;
- (void)destroyPromptLabel;
- (void)displayNavBarCancelButton:(BOOL)a3 animated:(BOOL)a4;
- (void)effectiveBarTintColorDidChange:(BOOL)a3;
- (void)getOverrideContentInsets:(UIEdgeInsets *)a3 overriddenEdges:(unint64_t *)a4;
- (void)getScopeBarHeight:(double *)a3 containerHeight:(double *)a4;
- (void)getTopInset:(double *)a3 bottomInset:(double *)a4 forBarMetrics:(int64_t)a5 barPosition:(int64_t)a6;
- (void)layoutBackgroundViewConsideringTopBarStatusAndChangedHeight:(BOOL)a3;
- (void)layoutSubviews;
- (void)layoutSubviewsInBounds:(CGRect)a3;
- (void)navigationBarTransitionCompleted:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)navigationBarTransitionWillBegin:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)prepare;
- (void)prepareFromAbandonedVisualProvider:(id)a3;
- (void)setAllowsInlineScopeBar:(BOOL)a3;
- (void)setAutoDisableCancelButton:(BOOL)a3;
- (void)setBackdropStyle:(int64_t)a3;
- (void)setBackgroundImage:(id)a3 forBarPosition:(int64_t)a4 barMetrics:(int64_t)a5;
- (void)setBarPosition:(int64_t)a3;
- (void)setBarStyle:(int64_t)a3;
- (void)setBarTintColor:(id)a3 forceUpdate:(BOOL)a4;
- (void)setBarTranslucence:(int64_t)a3;
- (void)setCancelButton:(id)a3;
- (void)setCenterPlaceholder:(BOOL)a3;
- (void)setClippingViewActive:(BOOL)a3;
- (void)setClippingViewBounds:(CGRect)a3;
- (void)setDrawsBackground:(BOOL)a3;
- (void)setDrawsBackgroundInPalette:(BOOL)a3;
- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setHostedByNavigationBar:(BOOL)a3;
- (void)setImage:(id)a3 forSearchBarIcon:(int64_t)a4 state:(unint64_t)a5;
- (void)setInNavigationPalette:(BOOL)a3;
- (void)setMinimumContentInset:(UIEdgeInsets)a3;
- (void)setOverrideContentInsets:(UIEdgeInsets)a3 forRectEdges:(unint64_t)a4;
- (void)setPlacedInNavigationBar:(BOOL)a3;
- (void)setPlacedInToolbar:(BOOL)a3;
- (void)setPrompt:(id)a3;
- (void)setReliesOnNavigationBarBackdrop:(BOOL)a3;
- (void)setScopeBarBackgroundImage:(id)a3;
- (void)setScopeTitles:(id)a3;
- (void)setSearchBarStyle:(unint64_t)a3;
- (void)setSearchDisplayController:(id)a3;
- (void)setSearchDisplayControllerShowsCancelButton:(BOOL)a3;
- (void)setSearchFieldBackgroundImage:(id)a3 forState:(unint64_t)a4;
- (void)setSearchFieldBackgroundPositionAdjustment:(UIOffset)a3;
- (void)setSearchFieldLeftViewMode:(int64_t)a3;
- (void)setSearchResultsButtonSelected:(BOOL)a3;
- (void)setSeparatorImage:(id)a3;
- (void)setShadowVisibleIfNecessary:(BOOL)a3;
- (void)setShowsBookmarkButton:(BOOL)a3;
- (void)setShowsCancelButton:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowsDeleteButton:(BOOL)a3;
- (void)setShowsScopeBar:(BOOL)a3 animateOpacity:(BOOL)a4;
- (void)setShowsSearchResultsButton:(BOOL)a3;
- (void)setShowsSeparator:(BOOL)a3;
- (void)setUpCancelButtonWithAppearance:(id)a3;
- (void)setUpLeftButton;
- (void)setUpPromptLabel;
- (void)setUpScopeBar;
- (void)setUpSearchField;
- (void)setUpSearchNavigationItemWithSizingOption:(unint64_t)a3;
- (void)setUsesEmbeddedAppearance:(BOOL)a3;
- (void)teardown;
- (void)updateBackgroundToBackdropStyle:(int64_t)a3;
- (void)updateEffectiveContentInset;
- (void)updateForDrawsBackgroundInPalette;
- (void)updateIfNecessaryForOldSize:(CGSize)a3;
- (void)updateMagnifyingGlassView;
- (void)updateNavigationBarLayoutInsertDataForSearchBar:(id)a3 collapsibleScopeBar:(id)a4 forLayoutState:(int64_t)a5;
- (void)updateNeedForBackdrop;
- (void)updatePlaceholderColor;
- (void)updateRightView;
- (void)updateScopeBarBackground;
- (void)updateScopeBarFrame;
- (void)updateSearchBarOpacity;
- (void)updateSearchFieldArt;
@end

@implementation _UISearchBarVisualProviderLegacy

- (void)setBarStyle:(int64_t)a3
{
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v6 = v5;
  if (v5)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if ((*&searchBarVisualProviderFlags & 7) != a3)
    {
      v15 = v5;
      if (a3)
      {
        v8 = (*&self->_searchBarVisualProviderFlags & 7) == 0;
      }

      else
      {
        v8 = 1;
      }

      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFFFFF8 | a3 & 7);
      v9 = v8;
      [(UISearchBarBackground *)self->_searchBarBackground setBarStyle:a3];
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
          v11 = [(_UISearchBarVisualProviderLegacy *)self currentSeparatorImage];
          [(UIImageView *)separator setImage:v11];
        }

        [(UISegmentedControl *)self->_scopeBar setBarStyle:a3];
        [(_UISearchBarVisualProviderLegacy *)self updateScopeBarBackground];
        [(_UISearchBarVisualProviderLegacy *)self updateSearchBarOpacity];
      }

      v6 = v15;
      if (v9)
      {
        [(_UISearchBarVisualProviderLegacy *)self updatePlaceholderColor];
        [(_UISearchBarVisualProviderLegacy *)self updateRightView];
        [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
        v12 = [(UISearchBarBackground *)self->_searchBarBackground _hasCustomBackgroundImage];
        v6 = v15;
        if (!v12 && !self->_backdropStyle)
        {
          v13 = [v15 _searchBarTextField];
          v14 = [(_UISearchBarVisualProviderLegacy *)self textColor];
          [v13 setTextColor:v14];

          v6 = v15;
        }
      }
    }
  }
}

- (void)setSearchBarStyle:(unint64_t)a3
{
  if (!self->_backdropStyle)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    v4 = (searchBarVisualProviderFlags >> 3) & 7;
    if (v4 != a3)
    {
      if (a3 == 2 && v4 != 2)
      {
        self->_searchBarVisualProviderFlags = (searchBarVisualProviderFlags & 0xFFFFFFC7 | 0x10);
LABEL_8:
        if (self->_searchField)
        {
          [(_UISearchBarVisualProviderLegacy *)self applySearchBarStyle];
        }

        return;
      }

      self->_searchBarVisualProviderFlags = (searchBarVisualProviderFlags & 0xFFFFFFC7 | (8 * (a3 & 7)));
      if (a3 != 2 && v4 == 2)
      {
        goto LABEL_8;
      }
    }
  }
}

- (void)setBarTranslucence:(int64_t)a3
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((searchBarVisualProviderFlags >> 6) & 7) != a3)
  {
    self->_searchBarVisualProviderFlags = (searchBarVisualProviderFlags & 0xFFFFFE3F | ((a3 & 7) << 6));
    [(UISearchBarBackground *)self->_searchBarBackground setTranslucent:[(_UISearchBarVisualProviderLegacy *)self isTranslucent]];

    [(_UISearchBarVisualProviderLegacy *)self updateSearchBarOpacity];
  }
}

- (void)setSearchFieldLeftViewMode:(int64_t)a3
{
  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFF9FF | ((a3 & 3) << 9));
  searchField = self->_searchField;
  if (searchField)
  {
    [(UITextField *)searchField setLeftViewMode:a3 & 3];
  }
}

- (void)setCenterPlaceholder:(BOOL)a3
{
  v3 = a3;
  WeakRetained = self;
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5 && ((((*(WeakRetained + 26) & 0x800) == 0) ^ v3) & 1) == 0)
  {
    v6 = v3 ? 2048 : 0;
    *(WeakRetained + 26) = *(WeakRetained + 26) & 0xFFFFF7FF | v6;
    v9 = v5;
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(WeakRetained + 12);
      v7 = WeakRetained == 0;
    }

    else
    {
      v7 = 0;
    }

    v8 = [v9 textInputTraits];
    [v8 setDeferBecomingResponder:v7];

    v5 = v9;
    if (v3)
    {

      v5 = v9;
    }
  }
}

- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v8 = v7;
  if (v7 && v5 == (*&self->_searchBarVisualProviderFlags & 0x1000u) >> 12)
  {
    if (v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = 4096;
    }

    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFEFFF | v9);
    [v7 setUserInteractionEnabled:v5];
    v10 = [v8 _searchBarTextField];
    [v10 _setEnabled:v5 animated:v4];

    [(UIButton *)self->_cancelButton setEnabled:v5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56___UISearchBarVisualProviderLegacy_setEnabled_animated___block_invoke;
    v13[3] = &unk_1E70F35E0;
    v13[4] = self;
    v14 = v5;
    v11 = _Block_copy(v13);
    v12 = v11;
    if (v4)
    {
      [UIView animateWithDuration:v11 animations:0.35];
    }

    else
    {
      (*(v11 + 2))(v11);
    }
  }
}

- (void)setReliesOnNavigationBarBackdrop:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFDFFF | v3);
}

- (void)setDrawsBackgroundInPalette:(BOOL)a3
{
  if (a3)
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

- (void)setDrawsBackground:(BOOL)a3
{
  if (((*&self->_searchBarVisualProviderFlags & 0x8000) == 0) != a3)
  {
    if (a3)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x8000;
    }

    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFF7FFF | v3);
    [(UIImageView *)self->_searchBarBackground setHidden:!a3];
  }
}

- (void)_setHideBackground:(BOOL)a3
{
  if (a3)
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
    v2 = [(_UISearchBarVisualProviderLegacy *)self isInNavigationPalette];
    if (v2)
    {

      LOBYTE(v2) = [(_UISearchBarVisualProviderLegacy *)self drawsBackgroundInPalette];
    }
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

- (void)setUsesEmbeddedAppearance:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if (((*&searchBarVisualProviderFlags & 0x20000) == 0) == v3)
    {
      v9 = v5;
      if (v3)
      {
        v7 = 0x20000;
      }

      else
      {
        v7 = 0;
      }

      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFDFFFF | v7);
      [(UISearchBarBackground *)self->_searchBarBackground setUsesEmbeddedAppearance:v3];
      barTintColor = self->_barTintColor;
      if (barTintColor)
      {
        [(_UISearchBarVisualProviderLegacy *)self setBarTintColor:barTintColor forceUpdate:1];
      }

      [v9 setNeedsLayout];
      v5 = v9;
    }
  }
}

- (void)setShowsCancelButton:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v8 = v7;
  if (v7 && ((((*(&self->_searchBarVisualProviderFlags + 2) & 4) == 0) ^ v5) & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66___UISearchBarVisualProviderLegacy_setShowsCancelButton_animated___block_invoke;
    aBlock[3] = &unk_1E70F67F8;
    v26 = v5;
    aBlock[4] = self;
    v27 = v4;
    v9 = v7;
    v25 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [v9 _searchController];
    v12 = [v11 _managedPalette];

    if (v12)
    {
      v10[2](v10);
    }

    else
    {
      [UIView performWithoutAnimation:v10];
    }

    if (v5)
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

      if (!WeakRetained && v4 && (*(&self->_searchBarVisualProviderFlags + 2) & 4) != 0)
      {
        [(_UISearchBarVisualProviderLegacy *)self allowCursorToAppear:0];
        v15 = [v9 textInputTraits];
        [v15 setDeferBecomingResponder:0];
      }
    }

    if (v4)
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
      v20 = self;
      v21 = v23;
      [UIView animateWithDuration:4 delay:v22 options:&v16 animations:0.3833 completion:0.0];
    }

    else if ((*(&self->_searchBarVisualProviderFlags + 2) & 4) == 0)
    {
      [(_UISearchBarVisualProviderLegacy *)self destroyCancelButton];
    }

    if ([(_UISearchBarVisualProviderLegacy *)self isInBarButNotHosted:v16])
    {
      [(_UISearchBarVisualProviderLegacy *)self displayNavBarCancelButton:(*&self->_searchBarVisualProviderFlags >> 18) & 1 animated:v4];
    }
  }
}

- (void)_setShowsCancelButton:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFBFFFF | v3);
}

- (void)setAutoDisableCancelButton:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFF7FFFF | v3);
  if (!a3)
  {
    [(UIButton *)self->_cancelButton setEnabled:1];
  }
}

- (void)_setAutoDisableCancelButton:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFF7FFFF | v3);
}

- (void)setShowsSearchResultsButton:(BOOL)a3
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((((*&searchBarVisualProviderFlags & 0x200000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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

- (void)_setShowsSearchResultsButton:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFDFFFFF | v3);
}

- (void)setSearchResultsButtonSelected:(BOOL)a3
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((((*&searchBarVisualProviderFlags & 0x400000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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

- (void)_setSearchResultsButtonSelected:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFBFFFFF | v3);
}

- (void)setShowsBookmarkButton:(BOOL)a3
{
  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if (((((*&searchBarVisualProviderFlags & 0x800000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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

- (void)_setShowsBookmarkButton:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFF7FFFFF | v3);
}

- (void)setShowsScopeBar:(BOOL)a3 animateOpacity:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v8 = v7;
  if (v7)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if (((((*&searchBarVisualProviderFlags & 0x10000000) == 0) ^ v5) & 1) == 0)
    {
      if ((v5 & v4) != 0)
      {
        v10 = 0x40000000;
      }

      else
      {
        v10 = 0;
      }

      v11 = *&searchBarVisualProviderFlags & 0x2FFFFFFF;
      if ((v4 & ~v5) != 0)
      {
        v12 = 0x80000000;
      }

      else
      {
        v12 = 0;
      }

      if (v5)
      {
        v13 = 0x10000000;
      }

      else
      {
        v13 = 0;
      }

      self->_searchBarVisualProviderFlags = (v10 | v13 | v12 | v11);
      [v7 invalidateIntrinsicContentSize];
      [v8 setNeedsLayout];
      if (v4)
      {
        v14 = 1.0;
        if (v5)
        {
          v14 = 0.0;
        }

        [(UIView *)self->_scopeBarContainerView setAlpha:v14];
        v16[4] = self;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __68___UISearchBarVisualProviderLegacy_setShowsScopeBar_animateOpacity___block_invoke;
        v17[3] = &unk_1E70F35E0;
        v18 = v5;
        v17[4] = self;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __68___UISearchBarVisualProviderLegacy_setShowsScopeBar_animateOpacity___block_invoke_4;
        v16[3] = &unk_1E70F5AC0;
        [UIView animateKeyframesWithDuration:0 delay:v17 options:v16 animations:0.0 completion:0.0];
      }

      if (self->_scopeBarContainerView)
      {
        v15 = v5;
      }

      else
      {
        v15 = 0;
      }

      [(UISearchBarBackground *)self->_searchBarBackground setUsesContiguousBarBackground:v15];
    }
  }
}

- (void)_setShowsScopeBar:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xEFFFFFFF | v3);
}

- (void)setAllowsInlineScopeBar:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xDFFFFFFF | v3);
}

- (void)setPlacedInNavigationBar:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFEFFFFFF | v3);
}

- (void)setPlacedInToolbar:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFDFFFFFF | v3);
}

- (void)setInNavigationPalette:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFBFFFFFF | v3);
}

- (void)setHostedByNavigationBar:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xF7FFFFFF | v3);
}

- (void)setCancelButton:(id)a3
{
  v5 = a3;
  cancelButton = self->_cancelButton;
  if (cancelButton != v5)
  {
    v7 = v5;
    [(UIView *)cancelButton removeFromSuperview];
    objc_storeStrong(&self->_cancelButton, a3);
    v5 = v7;
  }
}

- (void)setScopeTitles:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSArray *)self->_scopeTitles isEqualToArray:v4]|| v4 && !self->_scopeTitles)
  {
    v5 = [v4 copy];
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
      v8 = v4;
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

- (void)setMinimumContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_minimumContentInsetPrivate.top, v3), vceqq_f64(*&self->_minimumContentInsetPrivate.bottom, v4)))) & 1) == 0)
  {
    self->_minimumContentInsetPrivate = a3;
    [(_UISearchBarVisualProviderLegacy *)self updateEffectiveContentInset];
  }
}

- (void)setBackdropStyle:(int64_t)a3
{
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5 && self->_backdropStyle != a3)
  {
    self->_backdropStyle = a3;
    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFFFFFC7 | 0x10);
    v12 = v5;
    [(_UISearchBarVisualProviderLegacy *)self updateNeedForBackdrop];
    [(UISearchBarBackground *)self->_searchBarBackground setSearchBarStyle:(self->_searchBarVisualProviderFlags >> 3) & 7];
    v6 = [v12 _searchBarTextField];
    v7 = [v6 _systemBackgroundView];
    v8 = [v12 layer];
    [v8 setAllowsGroupBlending:0];

    v9 = [v12 layer];
    [v9 setAllowsGroupOpacity:0];

    v10 = [v7 layer];
    [v10 setAllowsGroupBlending:0];

    [v7 setBackgroundContainer:1];
    [v6 updateForBackdropStyle:self->_backdropStyle];
    v11 = [(_UISearchBarVisualProviderLegacy *)self colorForComponent:4 disabled:0];
    [v6 setTextColor:v11];

    [(_UISearchBarVisualProviderLegacy *)self updatePlaceholderColor];
    [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
    [(_UISearchBarVisualProviderLegacy *)self updateRightView];
    [v12 setNeedsLayout];

    v5 = v12;
  }
}

- (void)setBarPosition:(int64_t)a3
{
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5 && self->_barPosition != a3)
  {
    v9 = v5;
    if (!a3)
    {
      a3 = 2;
    }

    [(UISearchBarBackground *)self->_searchBarBackground _setBarPosition:a3];
    self->_barPosition = a3;
    *&self->_searchBarVisualProviderFlags |= 0x10000u;
    WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);
    if (!WeakRetained && ([v9 _searchController], (WeakRetained = objc_claimAutoreleasedReturnValue()) == 0) || (barPosition = self->_barPosition, WeakRetained, barPosition == 3))
    {
      v8 = self->_barPosition != 3 && (*(&self->_searchBarVisualProviderFlags + 3) & 0xC) == 0;
      [(_UISearchBarVisualProviderLegacy *)self setClippingViewActive:v8];
    }

    [(_UISearchBarVisualProviderLegacy *)self updateEffectiveContentInset];
    [v9 setNeedsLayout];
    v5 = v9;
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

- (void)setPrompt:(id)a3
{
  v8 = a3;
  v4 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v4)
  {
    v5 = self->_promptLabel;
    v6 = v5;
    if (v8)
    {
      if (!v5)
      {
        [(_UISearchBarVisualProviderLegacy *)self setUpPromptLabel];
        v6 = self->_promptLabel;
        [v4 invalidateIntrinsicContentSize];
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

      [v4 invalidateIntrinsicContentSize];
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
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
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

      v7 = [(UIBarButtonItem *)v4 initWithTitle:v6 style:2 target:v3 action:sel__performCancelAction];
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
  v4 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!v4)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderLegacy.m" lineNumber:790 description:@"visual provider can not prepare without delegate"];
  }

  self->_tableViewIndexWidth = 0.0;
  *&self->_minimumContentInsetPrivate.top = 0u;
  *&self->_minimumContentInsetPrivate.bottom = 0u;
  *&self->_searchBarVisualProviderFlags |= 0x80000u;
  [(_UISearchBarVisualProviderLegacy *)self updateEffectiveContentInset];
  v5 = [UIView alloc];
  [v4 bounds];
  v6 = [(UIView *)v5 initWithFrame:?];
  searchBarClippingView = self->_searchBarClippingView;
  self->_searchBarClippingView = v6;

  [(UIView *)self->_searchBarClippingView setAutoresizingMask:18];
  [(UIView *)self->_searchBarClippingView setClipsToBounds:1];
  [v4 addSubview:self->_searchBarClippingView];
  *&self->_searchBarVisualProviderFlags |= 0x14E00u;
  v8 = [UISearchBarBackground alloc];
  [v4 bounds];
  v9 = [(UISearchBarBackground *)v8 initWithFrame:?];
  searchBarBackground = self->_searchBarBackground;
  self->_searchBarBackground = v9;

  [v4 insertSubview:self->_searchBarBackground atIndex:0];
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
  v4 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderLegacy.m" lineNumber:835 description:@"visual provider can not clean up without delegate"];
  }

  [(UIControl *)self->_scopeBar removeTarget:v4 action:0 forControlEvents:0xFFFFFFFFLL];
  [(UISearchTextField *)self->_searchField removeTarget:v4 action:0 forControlEvents:0xFFFFFFFFLL];
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
  v3 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage separatorImage];

  if (v3)
  {
    v4 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage separatorImage];
  }

  else
  {
    if ((*&self->_searchBarVisualProviderFlags & 7) != 0 || ([(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      if ((v6 || (*&self->_searchBarVisualProviderFlags & 7) == 1) && (v7 = *&self->_searchBarVisualProviderFlags & 0x1C0, v6, v7 != 64))
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

    v4 = _UIImageWithName(v8);
  }

  return v4;
}

- (void)setSeparatorImage:(id)a3
{
  v4 = a3;
  appearanceStorage = self->_appearanceStorage;
  v11 = v4;
  if (v4)
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

  v8 = [(_UISearchBarAppearanceStorage *)appearanceStorage separatorImage];

  v4 = v11;
  if (v8 != v11)
  {
    [(_UISearchBarAppearanceStorage *)self->_appearanceStorage setSeparatorImage:v11];
    separator = self->_separator;
    v10 = [(_UISearchBarVisualProviderLegacy *)self currentSeparatorImage];
    [(UIImageView *)separator setImage:v10];

    v4 = v11;
  }

LABEL_7:
}

- (void)setSearchFieldBackgroundImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  appearanceStorage = self->_appearanceStorage;
  v11 = v6;
  if (v6)
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

  v10 = [(_UISearchBarAppearanceStorage *)appearanceStorage searchFieldBackgroundImageForState:a4];

  v6 = v11;
  if (v10 != v11)
  {
    [(_UISearchBarAppearanceStorage *)self->_appearanceStorage setSearchFieldBackgroundImage:v11 forState:2 * (a4 != 0)];
    [(_UISearchBarVisualProviderLegacy *)self updateSearchFieldArt];
    v6 = v11;
  }

LABEL_7:
}

- (id)internalImageForSearchBarIcon:(int64_t)a3 state:(unint64_t)a4 customImage:(BOOL *)a5
{
  v9 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!v9)
  {
    v12 = objc_alloc_init(UIImage);
    goto LABEL_6;
  }

  v10 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage imageForIcon:a3 state:a4];
  if (!v10)
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a3 == 3)
    {
      if (!internalImageForSearchBarIcon_state_customImage__searchBarIcons)
      {
        v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
        v22 = internalImageForSearchBarIcon_state_customImage__searchBarIcons;
        internalImageForSearchBarIcon_state_customImage__searchBarIcons = v21;
      }

      v23 = [v9 _searchBarTextField];
      v17 = [v23 _partsShouldBeMini];

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SearchBarResults_state:%lu_mini:%d_barStyle:%d_searchBarStyle:%lu_backdropStyle:%lu", a4, v17, *&self->_searchBarVisualProviderFlags & 7, (self->_searchBarVisualProviderFlags >> 3) & 7, self->_backdropStyle];
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
      if (a3 != 2)
      {
        if (a3)
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

      v16 = [v9 _searchBarTextField];
      v17 = [v16 _partsShouldBeMini];

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SearchBarBookmark_state:%lu_mini:%d_barStyle:%d_searchBarStyle:%lu_backdropStyle:%lu", a4, v17, *&self->_searchBarVisualProviderFlags & 7, (self->_searchBarVisualProviderFlags >> 3) & 7, self->_backdropStyle];
      v11 = [internalImageForSearchBarIcon_state_customImage__searchBarIcons objectForKey:v18];
      if (v11)
      {
LABEL_32:

        goto LABEL_33;
      }

      v19 = @"UISearchBarBookmarksMini.png";
      v20 = @"UISearchBarBookmarks.png";
    }

    if (v17)
    {
      v24 = v20;
    }

    else
    {
      v24 = v19;
    }

    v25 = _UIImageWithName(v24);
    if (a4 == 1)
    {
      [UIColor colorWithRed:0.047 green:0.455 blue:0.867 alpha:1.0];
    }

    else
    {
      [(_UISearchBarVisualProviderLegacy *)self colorForComponent:0 disabled:a4 == 2];
    }
    v26 = ;
    [v25 size];
    v11 = [UIImage _tintedImageForSize:v26 withTint:0 effectsImage:v25 maskImage:0 style:?];
    [internalImageForSearchBarIcon_state_customImage__searchBarIcons setObject:v11 forKey:v18];

    goto LABEL_32;
  }

  v11 = v10;
  if (a5)
  {
    *a5 = 1;
  }

LABEL_33:

  return v11;
}

- (void)setImage:(id)a3 forSearchBarIcon:(int64_t)a4 state:(unint64_t)a5
{
  v14 = a3;
  v8 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v8)
  {
    appearanceStorage = self->_appearanceStorage;
    if (v14)
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

    if (a5 >= 3)
    {
      a5 = 1;
    }

    v12 = [(_UISearchBarAppearanceStorage *)appearanceStorage imageForIcon:a4 state:a5];

    if (v12 != v14)
    {
      [(_UISearchBarAppearanceStorage *)self->_appearanceStorage setImage:v14 forIcon:a4 state:a5];
      if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        [(_UISearchBarVisualProviderLegacy *)self updateRightView];
      }

      else if (a4)
      {
        v13 = [v8 _searchBarTextField];
        [v13 _setClearButtonImage:v14 forState:a5];
      }

      else
      {
        [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
      }
    }
  }

LABEL_14:
}

- (id)imageForSearchBarIcon:(int64_t)a3 state:(unint64_t)a4
{
  appearanceStorage = self->_appearanceStorage;
  if (a4 >= 3)
  {
    a4 = 1;
  }

  return [(_UISearchBarAppearanceStorage *)appearanceStorage imageForIcon:a3 state:a4];
}

- (void)setScopeBarBackgroundImage:(id)a3
{
  v4 = a3;
  if (v4 || self->_scopeBar)
  {
    v9 = v4;
    appearanceStorage = self->_appearanceStorage;
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UISearchBarAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }

    v8 = [(_UISearchBarAppearanceStorage *)appearanceStorage scopeBarBackgroundImage];

    if (v8 != v9)
    {
      [(_UISearchBarAppearanceStorage *)self->_appearanceStorage setScopeBarBackgroundImage:v9];
    }

    [(_UISearchBarVisualProviderLegacy *)self setUpScopeBar];
    v4 = v9;
  }
}

- (void)setSearchFieldBackgroundPositionAdjustment:(UIOffset)a3
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  v6 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v6)
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

    v10 = [(_UISearchBarAppearanceStorage *)appearanceStorage searchFieldPositionAdjustment];
    v11 = v10;
    if (v10)
    {
      [v10 UIOffsetValue];
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

      [v6 setNeedsLayout];
    }
  }

LABEL_15:
}

- (UIOffset)searchFieldBackgroundPositionAdjustment
{
  v2 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldPositionAdjustment];
  v3 = v2;
  if (v2)
  {
    [v2 UIOffsetValue];
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

- (void)setBackgroundImage:(id)a3 forBarPosition:(int64_t)a4 barMetrics:(int64_t)a5
{
  [(UISearchBarBackground *)self->_searchBarBackground _setBackgroundImage:a3 forBarPosition:a4 barMetrics:a5];

  [(_UISearchBarVisualProviderLegacy *)self updateNeedForBackdrop];
}

- (BOOL)hasDarkUIAppearance
{
  v2 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 traitCollection];
    v5 = [v4 userInterfaceStyle];

    v6 = [v3 keyboardAppearance];
    v7 = 0;
    if (v6 <= 8)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }

LABEL_10:
      v7 = v5 == 2;
      goto LABEL_11;
    }

    if (v6 == 10)
    {
      goto LABEL_10;
    }

    if (v6 == 9)
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

- (id)colorForComponent:(unint64_t)a3 disabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!v7)
  {
    v9 = +[UIColor labelColor];
LABEL_24:
    v15 = v9;
    goto LABEL_25;
  }

  backdropStyle = self->_backdropStyle;
  if (backdropStyle == 2030)
  {
    if (v4)
    {
LABEL_8:
      v10 = 0.35;
      v11 = 1.0;
LABEL_23:
      v9 = [UIColor colorWithWhite:v11 alpha:v10];
      goto LABEL_24;
    }

    v11 = 1.0;
    if (a3 != 4)
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
    if (!v4)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  if ([(_UISearchBarVisualProviderLegacy *)self barStyle])
  {
    if (v4)
    {
      v11 = 0.47;
      v10 = 0.35;
      goto LABEL_23;
    }

    if (a3 == 4)
    {
LABEL_20:
      v9 = +[UIColor whiteColor];
      goto LABEL_24;
    }

    v11 = 0.47;
    goto LABEL_22;
  }

  v12 = self->_backdropStyle;
  if ((v12 == 2010 || v12 == 2005) && ((v13 = UISearchBarUsesModernAppearance(), a3 == 4) || !v13))
  {
    v14 = +[UIColor labelColor];
  }

  else
  {
    v14 = +[UIColor systemGrayColor];
  }

  v15 = v14;
  if (v4)
  {
    v17 = [v14 colorWithAlphaComponent:0.35];

    v15 = v17;
  }

LABEL_25:

  return v15;
}

- (id)textColor
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!v3)
  {
    v4 = +[UIColor labelColor];
    goto LABEL_7;
  }

  if (self->_backdropStyle)
  {
    v4 = [(_UISearchBarVisualProviderLegacy *)self colorForComponent:4 disabled:0];
LABEL_7:
    v5 = v4;
    goto LABEL_8;
  }

  if ([(_UISearchBarVisualProviderLegacy *)self barStyle])
  {
    v4 = [UIColor colorWithWhite:0.47 alpha:1.0];
    goto LABEL_7;
  }

  v7 = [v3 _searchBarTextField];
  v8 = [v7 visualStyle];
  v5 = [v8 defaultTextColor];

LABEL_8:

  return v5;
}

- (void)_setBarTintColor:(id)a3
{
  obj = a3;
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

- (void)setBarTintColor:(id)a3 forceUpdate:(BOOL)a4
{
  if (self->_barTintColor != a3 || a4)
  {
    [(_UISearchBarVisualProviderLegacy *)self _setBarTintColor:?];

    [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColorDidChange:1];
  }
}

- (void)effectiveBarTintColorDidChange:(BOOL)a3
{
  v3 = a3;
  v11 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v11)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    v6 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
    v7 = v6;
    if ((*&searchBarVisualProviderFlags & 0x20000) != 0)
    {
      v8 = _GetLightenedTintColor(v6);
      [(UISearchBarBackground *)self->_searchBarBackground setBarTintColor:v8];
    }

    else
    {
      [(UISearchBarBackground *)self->_searchBarBackground setBarTintColor:v6];
    }

    if (self->_cancelButton)
    {
      [(_UISearchBarVisualProviderLegacy *)self setUpCancelButtonWithAppearance:0];
      [v11 setNeedsLayout];
    }

    if (self->_promptLabel)
    {
      [(_UISearchBarVisualProviderLegacy *)self setUpPromptLabel];
      [v11 setNeedsLayout];
    }

    if (v3)
    {
      [(_UISearchBarVisualProviderLegacy *)self updateSearchFieldArt];
      [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
      separator = self->_separator;
      if (separator)
      {
        v10 = [(_UISearchBarVisualProviderLegacy *)self currentSeparatorImage];
        [(UIImageView *)separator setImage:v10];
      }
    }

    [(_UISearchBarVisualProviderLegacy *)self updateScopeBarBackground];
  }
}

- (void)applySearchBarStyle
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    v15 = v3;
    v4 = [v3 _searchBarTextField];
    v5 = [v4 _systemBackgroundView];
    v6 = *&self->_searchBarVisualProviderFlags & 0x38;
    v7 = [v15 layer];
    v8 = v7;
    if (v6 == 16)
    {
      [v7 setAllowsGroupBlending:0];

      v9 = [v15 layer];
      [v9 setAllowsGroupOpacity:0];

      v10 = [v5 layer];
      [v10 setAllowsGroupBlending:0];

      [v5 setBackgroundContainer:1];
      if (dyld_program_sdk_at_least())
      {
        backdropStyle = self->_backdropStyle;
      }

      else
      {
        backdropStyle = 2;
      }

      [v4 updateForBackdropStyle:backdropStyle];
    }

    else
    {
      [v7 setAllowsGroupBlending:1];

      v12 = [v15 layer];
      [v12 setAllowsGroupOpacity:1];

      v13 = [v5 layer];
      [v13 setAllowsGroupBlending:1];

      [v5 setBackgroundContainer:0];
      [v4 _removeEffectsBackgroundViews];
      [v5 updateView];
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

    v3 = v15;
  }
}

- (void)updateForDrawsBackgroundInPalette
{
  v7 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v7 && [(_UISearchBarVisualProviderLegacy *)self isInNavigationPalette])
  {
    [(_UISearchBarVisualProviderLegacy *)self setDrawsBackground:(*&self->_searchBarVisualProviderFlags >> 14) & 1];
    v3 = [v7 _containingNavigationPalette];
    v4 = (*&self->_searchBarVisualProviderFlags >> 14) & 1;
    v5 = [v3 _backgroundView];
    [v5 setHidden:v4];

    v6 = [v3 _backgroundView];
    LODWORD(v5) = [v6 isHidden];

    if (v5)
    {
      [(UISearchBarBackground *)self->_searchBarBackground _updateBackgroundImage];
    }
  }
}

- (void)updateIfNecessaryForOldSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v6)
  {
    v10 = v6;
    [v6 bounds];
    v6 = v10;
    if (width != v8 || height != v7)
    {
      [(_UISearchBarVisualProviderLegacy *)self layoutBackgroundViewConsideringTopBarStatusAndChangedHeight:v7 != height];
      v6 = v10;
    }
  }
}

- (void)updateMagnifyingGlassView
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      v4 = [v3 _searchBarTextField];
      v5 = [v4 leftView];
      if (v5)
      {
        v6 = v5;
        v7 = [v4 leftView];
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

      v13 = [v3 _searchBarTextField];
      v14 = [v13 leftView];

      if (v14)
      {
        v15 = [v13 leftView];
        [v15 setImage:v10];

        v16 = [v13 leftView];
        [(UIView *)v16 sizeToFit];
      }

      else
      {
        v16 = [[UIImageView alloc] initWithImage:v10];
        [v13 setLeftView:v16];
      }

      [v3 setNeedsLayout];
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
  v12 = [(UISearchBarBackground *)self->_searchBarBackground backgroundImage];
  if (v12 || (*&self->_searchBarVisualProviderFlags & 0x2038) != 0x10)
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
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    v7 = v3;
    v4 = [(_UISearchBarVisualProviderLegacy *)self colorForComponent:3 disabled:0];
    v5 = [v7 _searchBarTextField];
    v6 = [v5 _placeholderLabel];
    [v6 setTextColor:v4];

    v3 = v7;
  }
}

- (void)updateRightView
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _searchBarTextField];
    v6 = v5;
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if ((*&searchBarVisualProviderFlags & 0x200000) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = (*&searchBarVisualProviderFlags >> 22) & 2;
    }

    [v5 setRightViewMode:v8];
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
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3 && self->_scopeBarContainerView)
  {
    v14 = v3;
    v4 = [(_UISearchBarVisualProviderLegacy *)self scopeBarBackgroundImage];

    if (v4)
    {
      scopeBarBackgroundView = self->_scopeBarBackgroundView;
      v6 = [(_UISearchBarVisualProviderLegacy *)self scopeBarBackgroundImage];
      [(UIImageView *)scopeBarBackgroundView setImage:v6];

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
      v8 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      v9 = v8;
      v10 = v8;
      if ((*&searchBarVisualProviderFlags & 0x20000) != 0)
      {
        v10 = _GetLightenedTintColor(v8);
      }

      v11 = _UISearchBarBackgroundFillColor(*&searchBarVisualProviderFlags & 7, v10);
      [(UIImageView *)self->_scopeBarBackgroundView setBackgroundColor:v11];

      if ((*&searchBarVisualProviderFlags & 0x20000) != 0)
      {
      }

      [(UIImageView *)self->_scopeBarBackgroundView setImage:0];
    }

    v12 = [(_UISearchBarVisualProviderLegacy *)self isTranslucent];
    v13 = 0.96;
    if (!v12)
    {
      v13 = 1.0;
    }

    [(UIView *)self->_scopeBarBackgroundView setAlpha:v13];
    v3 = v14;
  }
}

- (void)updateSearchBarOpacity
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    v4 = v3;
    [v3 setOpaque:{-[_UISearchBarVisualProviderLegacy isTranslucent](self, "isTranslucent") ^ 1}];
    v3 = v4;
  }
}

- (void)updateScopeBarFrame
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = v3;
  if (self->_scopeBar)
  {
    v5 = v3 == 0;
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
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    v19 = v3;
    v4 = [v3 _searchBarTextField];
    v5 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldBackgroundImageForState:0];
    if (!v5)
    {
      [v4 setBorderStyle:3];
      v9 = [v4 _systemBackgroundView];
      [v9 setBarStyle:{-[_UISearchBarVisualProviderLegacy barStyle](self, "barStyle")}];
LABEL_16:

      v3 = v19;
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

    v9 = v8;

    if ([v5 _isResizable])
    {
      [v4 setBackground:v5];
      if (![v9 _isResizable])
      {
        v10 = [v5 leftCapWidth];
        v11 = [v5 topCapHeight];
        v12 = v9;
        v13 = v10;
LABEL_13:
        v17 = [v12 stretchableImageWithLeftCapWidth:v13 topCapHeight:v11];
        [v4 setDisabledBackground:v17];

LABEL_14:
        [v4 setBorderStyle:0];
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
      [v4 setBackground:v16];

      if (![v9 _isResizable])
      {
        v12 = v9;
        v13 = v15;
        v11 = 0;
        goto LABEL_13;
      }
    }

    [v4 setDisabledBackground:v9];
    goto LABEL_14;
  }

LABEL_17:
}

- (void)setUpCancelButtonWithAppearance:(id)a3
{
  v12 = a3;
  v4 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v4)
  {
    cancelButton = self->_cancelButton;
    if (cancelButton)
    {
      [(UIButton *)cancelButton setBarStyle:*&self->_searchBarVisualProviderFlags & 7];
      v6 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      [(UIButton *)self->_cancelButton _setTintColor:v6];
    }

    else
    {
      v6 = self->_cancelButtonText;
      if (!v6)
      {
        v6 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
      }

      v7 = [UINavigationButton alloc];
      v8 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      v9 = [(UINavigationButton *)v7 initWithValue:v6 width:3 style:0 barStyle:0 possibleTitles:v8 tintColor:0.0];
      v10 = self->_cancelButton;
      self->_cancelButton = v9;

      [(UIButton *)self->_cancelButton _setAppearanceGuideClass:objc_opt_class()];
      [(UIControl *)self->_cancelButton addTarget:v4 action:sel__performCancelAction forControlEvents:64];
      [v4 addSubview:self->_cancelButton];
      v11 = ([v4 isFirstResponder] & 1) != 0 || (*(&self->_searchBarVisualProviderFlags + 2) & 8) == 0;
      [(UIButton *)self->_cancelButton setEnabled:v11];
      [v4 setNeedsLayout];
    }

    if (v12)
    {
      [(UIButton *)self->_cancelButton _applyBarButtonAppearanceStorage:v12 withTaggedSelectors:0];
    }
  }
}

- (void)setUpLeftButton
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    v9 = v3;
    if (self->_leftButton)
    {
      v4 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      [(UINavigationButton *)self->_leftButton _setTintColor:v4];
    }

    else
    {
      v5 = [UINavigationButton alloc];
      v6 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      v7 = [(UINavigationButton *)v5 initWithValue:@"<configure>" width:3 style:0 barStyle:0 possibleTitles:v6 tintColor:0.0];
      leftButton = self->_leftButton;
      self->_leftButton = v7;

      [(UINavigationButton *)self->_leftButton _setAppearanceGuideClass:objc_opt_class()];
      [v9 addSubview:self->_leftButton];
      [v9 setNeedsLayout];
    }

    v3 = v9;
  }
}

- (void)setUpPromptLabel
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    v24 = v3;
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
    v17 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];

    if (v17)
    {
      v18 = [(_UISearchBarVisualProviderLegacy *)self effectiveBarTintColor];
      v19 = _GetLightenedTintColor(v18);
      v20 = GetTintedPromptTextColor(v19);

      v21 = 1.0;
    }

    else
    {
      if ((*&self->_searchBarVisualProviderFlags & 7) == 0)
      {
        v22 = [v24 traitCollection];
        v23 = [v22 userInterfaceStyle];

        if (v23 != 2)
        {
          v21 = 1.0;
          goto LABEL_18;
        }
      }

      v20 = qword_1ED49A458;

      v18 = v16;
      v21 = -1.0;
      v16 = qword_1ED49A460;
    }

    v15 = v20;
LABEL_18:
    [(UILabel *)self->_promptLabel setTextColor:v15];
    [(UILabel *)self->_promptLabel setShadowColor:v16];
    [(UILabel *)self->_promptLabel setShadowOffset:0.0, v21];

    v3 = v24;
  }
}

- (void)setUpScopeBar
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = v3;
  if (v3)
  {
    if (!self->_scopeBar)
    {
      [v3 sizeToFit];
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
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    v4 = [(UISearchTextField *)[UISearchBarTextField alloc] _initWithDeferredSearchIconImageConfiguration];
    searchField = self->_searchField;
    self->_searchField = v4;

    [(UISearchTextField *)self->_searchField _setSearchBar:v3];
    [(UIView *)self->_searchField setOpaque:0];
    -[UITextField setSemanticContentAttribute:](self->_searchField, "setSemanticContentAttribute:", [v3 semanticContentAttribute]);
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
      v9 = [v3 textInputTraits];
      [v9 setDeferBecomingResponder:1];
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
    [(UISearchTextField *)self->_searchField addTarget:v3 action:sel__searchFieldBeginEditing forControlEvents:0x10000];
    [(UISearchTextField *)self->_searchField addTarget:v3 action:sel__searchFieldEditingChanged forControlEvents:0x20000];
    [(UISearchTextField *)self->_searchField addTarget:v3 action:sel__searchFieldEndEditing forControlEvents:0x40000];
    [(UISearchTextField *)self->_searchField addTarget:v3 action:sel__searchFieldReturnPressed forControlEvents:0x80000];
    [v3 addSubview:self->_searchField];
    if (UISearchBarUsesModernAppearance())
    {
      [(UITextField *)self->_searchField _setRoundedRectBackgroundCornerRadius:10.0];
      v13 = [(UIView *)self->_searchField layer];
      [v13 setAllowsGroupOpacity:0];
    }

    if ((*&self->_searchBarVisualProviderFlags & 0x38) == 0x10)
    {
      [(_UISearchBarVisualProviderLegacy *)self applySearchBarStyle];
    }
  }
}

- (void)setShowsSeparator:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5)
  {
    separator = self->_separator;
    if (v3)
    {
      if (separator)
      {
        goto LABEL_8;
      }

      v12 = v5;
      v7 = [UIImageView alloc];
      v8 = [(_UISearchBarVisualProviderLegacy *)self currentSeparatorImage];
      v9 = [(UIImageView *)v7 initWithImage:v8];
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

      v12 = v5;
      [(UIView *)separator removeFromSuperview];
      v11 = self->_separator;
      self->_separator = 0;
    }

    v5 = v12;
  }

LABEL_8:
}

- (void)setShowsDeleteButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5)
  {
    v13 = v5;
    if (v3)
    {
      v6 = 0x100000;
    }

    else
    {
      v6 = 0;
    }

    self->_searchBarVisualProviderFlags = (*&self->_searchBarVisualProviderFlags & 0xFFEFFFFF | v6);
    if (v3)
    {
      [(_UISearchBarVisualProviderLegacy *)self destroyCancelButton];
      v7 = [UINavigationButton alloc];
      v8 = [v13 traitCollection];
      v9 = _UIImageWithNameAndTraitCollection(@"delete-on", v8);
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

    v5 = v13;
  }
}

- (void)setClippingViewActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5)
  {
    v6 = v5;
    [(UIView *)self->_searchBarClippingView setClipsToBounds:v3];
    v5 = v6;
    if (!v3)
    {
      [v6 bounds];
      [(_UISearchBarVisualProviderLegacy *)self setClippingViewBounds:?];
      v5 = v6;
    }
  }
}

- (void)setClippingViewBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v8)
  {
    searchBarClippingView = self->_searchBarClippingView;
    if (searchBarClippingView)
    {
      v11 = v8;
      [(UIView *)searchBarClippingView frame];
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      v10 = CGRectEqualToRect(v13, v14);
      v8 = v11;
      if (!v10)
      {
        [v11 frame];
        [(UIView *)self->_searchBarClippingView setBounds:x, y];
        [(UIView *)self->_searchBarClippingView setFrame:x, y, width, height];
        v8 = v11;
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

- (void)navigationBarTransitionWillBegin:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v7)
  {
    v8 = 1.0;
    if (v4)
    {
      v8 = 0.0;
    }

    v21 = v7;
    [v7 setAlpha:v8];
    v7 = v21;
    if (a3 == 2)
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
      v7 = v21;
    }
  }
}

- (void)navigationBarTransitionCompleted:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v6 = [(_UISearchBarVisualProviderBase *)self searchBar:a3];
  if (v6)
  {
    v7 = v6;
    [v6 setAlpha:1.0];
    v6 = v7;
    if (a3 == 2)
    {
      [v7 bounds];
      [(UIView *)self->_searchBarClippingView setFrame:?];
      [(UIView *)self->_searchBarClippingView setAutoresizingMask:18];
      [v7 layoutSubviews];
      v6 = v7;
    }
  }
}

- (BOOL)_getNavigationTitleLeadingInset:(double *)a3 trailingInset:(double *)a4 isRTL:(BOOL)a5
{
  v5 = a5;
  v9 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v10 = v9;
  if (v9 && self->_navBarTitleViewLocation && self->_navBarTitleViewOverlayRects)
  {
    [v9 bounds];
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
    v56 = v5;
    aBlock[4] = v12;
    aBlock[5] = v14;
    aBlock[6] = v16;
    aBlock[7] = v18;
    v22 = _Block_copy(aBlock);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __88___UISearchBarVisualProviderLegacy__getNavigationTitleLeadingInset_trailingInset_isRTL___block_invoke_2;
    v53[3] = &__block_descriptor_65_e39_d40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    v54 = v5;
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
      if (v5)
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

    *a3 = v41;
    [(_UINavigationBarTitleViewOverlayRects *)self->_navBarTitleViewOverlayRects trailingItemsRect];
    v43 = v63.origin.x;
    v44 = v63.origin.y;
    v45 = v63.size.width;
    v46 = v63.size.height;
    if (CGRectIsNull(v63))
    {
      v47 = v51;
      if (!v5)
      {
        v47 = v50;
      }

      v48 = v52 + v47;
    }

    else
    {
      v48 = v23[2](v23, v43, v44, v45, v46) + 8.0;
    }

    *a4 = v48;

    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (void)getTopInset:(double *)a3 bottomInset:(double *)a4 forBarMetrics:(int64_t)a5 barPosition:(int64_t)a6
{
  v11 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v11)
  {
    v16 = v11;
    if ((UISearchBarUsesModernAppearance() & 1) == 0)
    {
      *a3 = 0.0;
      *a4 = 0.0;
LABEL_16:
      v11 = v16;
      goto LABEL_17;
    }

    if (a6 == 3)
    {
      if (a5 != 102 && a5 != 1 && !_UIBarsUseNewPadHeights())
      {
        *a3 = 4.0;
        v13 = [v16 _screen];
        if (![v13 _isEmbeddedScreen] || (objc_msgSend(v13, "_peripheryInsets"), v14 = 15.0, v15 <= 0.0))
        {
          v14 = 10.0;
        }

        *a4 = v14;

        goto LABEL_16;
      }

      v12 = 0x401C000000000000;
    }

    else
    {
      if ((*(&self->_searchBarVisualProviderFlags + 3) & 0xC) != 0)
      {
        if (a5 == 102 || a5 == 1)
        {
          *a3 = 0.0;
          v12 = 0x4020000000000000;
        }

        else
        {
          _UIBarsUseNewPadHeights();
          *a3 = 1.0;
          v12 = 0x402E000000000000;
        }

        goto LABEL_15;
      }

      v12 = 0x4024000000000000;
    }

    *a3 = v12;
LABEL_15:
    *a4 = v12;
    goto LABEL_16;
  }

LABEL_17:
}

- (void)setOverrideContentInsets:(UIEdgeInsets)a3 forRectEdges:(unint64_t)a4
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

- (void)getOverrideContentInsets:(UIEdgeInsets *)a3 overriddenEdges:(unint64_t *)a4
{
  if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "overrideContentInsets SPI is not supported in the legacy visual provider", buf, 2u);
    }

    if (a3)
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

    if (a3)
    {
LABEL_5:
      *&a3->top = 0u;
      *&a3->bottom = 0u;
    }
  }

  if (a4)
  {
    *a4 = 0;
  }
}

- (void)updateEffectiveContentInset
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = v3;
  if (v3)
  {
    v28 = 0.0;
    v29 = 0.0;
    v5 = [v3 effectiveUserInterfaceLayoutDirection];
    if (![(_UISearchBarVisualProviderLegacy *)self _getNavigationTitleLeadingInset:&v29 trailingInset:&v28 isRTL:v5 == 1])
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
          v10 = [v4 superview];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v10)
          {
            [v10 _resolvedLayoutMargins];
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
            if (v5 == 1)
            {
              v14 = v8;
            }

            else
            {
              v14 = v13;
            }

            v29 = v14;
            if (v5 == 1)
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
    if (v5 == 1)
    {
      v17 = v28;
    }

    else
    {
      v17 = v29;
    }

    if (v5 == 1)
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
      v7 = [(_UISearchBarVisualProviderBase *)self searchBar];
      -[_UISearchBarVisualProviderLegacy barMetricsForOrientation:](self, "barMetricsForOrientation:", [v7 _expectedInterfaceOrientation]);

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

- (void)getScopeBarHeight:(double *)a3 containerHeight:(double *)a4
{
  if (UISearchBarUsesModernAppearance() && ([(_UISearchBarVisualProviderLegacy *)self isInNavigationPalette]|| [(_UISearchBarVisualProviderLegacy *)self isHostedByNavigationBar]))
  {
    v15 = [(_UISearchBarVisualProviderBase *)self searchBar];
    v7 = -[_UISearchBarVisualProviderLegacy barMetricsForOrientation:](self, "barMetricsForOrientation:", [v15 _expectedInterfaceOrientation]);
    if (v7 == 102 || v7 == 1)
    {
      if (a3)
      {
        [UISegmentedControl defaultHeightForStyle:7 size:1];
        *a3 = v8;
      }

      if (!a4)
      {
        goto LABEL_20;
      }

      v9 = 0x4040000000000000;
    }

    else
    {
      if (a3)
      {
        [UISegmentedControl defaultHeightForStyle:7 size:0];
        *a3 = v14;
      }

      if (!a4)
      {
        goto LABEL_20;
      }

      v9 = 0x4046000000000000;
    }

    *a4 = v9;
LABEL_20:

    return;
  }

  [UISegmentedControl defaultHeightForStyle:7 size:0];
  v11 = v10;
  [(_UISearchBarVisualProviderLegacy *)self scopeBarInsets];
  if (a4)
  {
    *a4 = v13 + v11 + v12;
  }

  if (a3)
  {
    *a3 = v11;
  }
}

- (BOOL)useRelaxedScopeLayout
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3 && UISearchBarUsesModernAppearance() && (self->_scopeBarPosition == 1 || ([v3 bounds], -[_UISearchBarVisualProviderLegacy wouldCombineLandscapeBarsForSize:](self, "wouldCombineLandscapeBarsForSize:", v4, v5))))
  {
    v6 = [v3 _searchController];
    if (v6)
    {
      v7 = [v3 _searchController];
      v8 = [v7 traitCollection];
    }

    else
    {
      v8 = [v3 traitCollection];
    }

    v9 = [v8 verticalSizeClass] == 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsScopeBar
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    v4 = [(UIView *)self->_scopeBarContainerView isDescendantOfView:v3];
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
    v4 = [v3 userInterfaceIdiom];

    if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 0;
    }
  }

  return [(_UISearchBarVisualProviderLegacy *)self containsScopeBar];
}

- (double)barHeightForBarMetrics:(int64_t)a3 withEffectiveInsets:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  top = a4.top;
  if (UISearchBarUsesModernAppearance())
  {
    v7 = _UIBarsUseNewPadHeights();
    v8 = a3 == 102 || a3 == 1;
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
    if (a3 == 102)
    {
      return result + 22.0;
    }

    else if (a3 == 101)
    {
      return result + 34.0;
    }
  }

  else
  {
    result = 44.0;
    if (a3 == 101)
    {
      result = 75.0;
    }

    if (a3 == 1)
    {
      result = 32.0;
    }

    if (a3 == 102)
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
    v7 = [(_UISearchBarVisualProviderBase *)self searchBar];
    if (dyld_program_sdk_at_least())
    {
      v8 = -[_UISearchBarVisualProviderLegacy barMetricsForOrientation:](self, "barMetricsForOrientation:", [v7 _expectedInterfaceOrientation]);
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
      if (![v9 userInterfaceIdiom] && (objc_msgSend(v7, "_expectedInterfaceOrientation") - 3) <= 1)
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

- (double)barHeightForBarMetrics:(int64_t)a3 barPosition:(int64_t)a4
{
  top = self->_effectiveContentInset.top;
  left = self->_effectiveContentInset.left;
  right = self->_effectiveContentInset.right;
  bottom = self->_effectiveContentInset.bottom;
  v11 = top;
  [(_UISearchBarVisualProviderLegacy *)self getTopInset:&v11 bottomInset:&bottom forBarMetrics:a3 barPosition:a4];
  [(_UISearchBarVisualProviderLegacy *)self barHeightForBarMetrics:a3 withEffectiveInsets:v11, left, bottom, right];
  return result;
}

- (double)defaultHeight
{
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  -[_UISearchBarVisualProviderLegacy defaultHeightForOrientation:](self, "defaultHeightForOrientation:", [v3 _expectedInterfaceOrientation]);
  v5 = v4;

  return v5;
}

- (double)_defaultWidth
{
  v2 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 2)
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

- (double)defaultHeightForOrientation:(int64_t)a3
{
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v6 = v5;
  if (!v5)
  {
    v10 = 0.0;
    goto LABEL_18;
  }

  v7 = [v5 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 2)
  {
    *&v9 = 60.0;
LABEL_4:
    v10 = *&v9;
    goto LABEL_18;
  }

  if (dyld_program_sdk_at_least())
  {
    [(_UISearchBarVisualProviderLegacy *)self barHeightForBarMetrics:[(_UISearchBarVisualProviderLegacy *)self barMetricsForOrientation:a3]];
    v10 = v11;
  }

  else
  {
    if ([(_UISearchBarVisualProviderLegacy *)self isInBarButNotHosted])
    {
      v12 = +[UIDevice currentDevice];
      v13 = [v12 userInterfaceIdiom];

      if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        *&v9 = 44.0;
        goto LABEL_4;
      }
    }

    v14 = [(UILabel *)self->_promptLabel text];
    v15 = [v14 length];

    if (v15)
    {
      v10 = 75.0;
    }

    else
    {
      v10 = 44.0;
    }
  }

  if ((*(&self->_searchBarVisualProviderFlags + 3) & 0x10) != 0 && [(NSArray *)self->_scopeTitles count]>= 2 && ![(_UISearchBarVisualProviderLegacy *)self shouldCombineLandscapeBarsForOrientation:a3])
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

- (void)updateNavigationBarLayoutInsertDataForSearchBar:(id)a3 collapsibleScopeBar:(id)a4 forLayoutState:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v14 = [(_UISearchBarVisualProviderBase *)self searchBar];
  -[_UISearchBarVisualProviderLegacy barHeightForBarMetrics:](self, "barHeightForBarMetrics:", -[_UISearchBarVisualProviderLegacy barMetricsForOrientation:](self, "barMetricsForOrientation:", [v14 _expectedInterfaceOrientation]));
  v10 = v9;
  [(_UISearchBarVisualProviderLegacy *)self defaultHeight];
  v12 = v11;
  [v8 setPreferredHeight:v10];
  [v8 setMinimumHeight:v10];

  v13 = v12 - v10;
  [v7 setPreferredHeight:v13];
  [v7 setMinimumHeight:v13];
  [v7 setCollapsible:0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v6 = [(_UISearchBarVisualProviderBase *)self searchBar:a3.width];
  if (v6)
  {
    [(_UISearchBarVisualProviderLegacy *)self defaultHeight];
    v8 = v7;
    if (dyld_program_sdk_at_least())
    {
      if ((*&width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        v21.width = width;
        v21.height = v8;
        v10 = NSStringFromCGSize(v21);
        [v9 handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderLegacy.m" lineNumber:2371 description:{@"-[UISearchBar sizeThatFits:] does not support passing non-finite values (%@)", v10}];
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
        v13 = [v6 superview];
        v14 = v13;
        if (v13)
        {
          [v13 bounds];
          width = v15;
        }

        else if (fabs(width) < 2.22044605e-16)
        {
          v16 = [v6 _screen];
          [v16 bounds];
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
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
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

- (void)displayNavBarCancelButton:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v13 = [(_UISearchBarVisualProviderLegacy *)self searchNavigationItem];
  if (v5)
  {
    v7 = [(_UISearchBarVisualProviderLegacy *)self cancelBarButtonItem];
    v8 = MEMORY[0x1E695DF70];
    v9 = [v13 rightBarButtonItems];
    cancelBarButtonItem = [v8 arrayWithArray:v9];

    [cancelBarButtonItem addObject:v7];
    [v13 setRightBarButtonItems:cancelBarButtonItem animated:v4];
  }

  else
  {
    v11 = MEMORY[0x1E695DF70];
    v12 = [v13 rightBarButtonItems];
    v7 = [v11 arrayWithArray:v12];

    [v7 removeObjectIdenticalTo:self->_cancelBarButtonItem];
    [v13 setRightBarButtonItems:v7 animated:v4];
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
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = v3;
  if (v3)
  {
    [v3 bounds];
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

- (double)availableBoundsWidthForSize:(CGSize)a3
{
  width = a3.width;
  if ([(_UISearchBarVisualProviderLegacy *)self searchFieldWidthShouldBeFlexible:a3.width])
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

- (BOOL)shouldCombineLandscapeBarsForOrientation:(int64_t)a3
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
  if ((a3 - 1) >= 2 && (*&self->_searchBarVisualProviderFlags & 0x20000000) != 0)
  {
    v7 = +[UIDevice currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8)
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

- (BOOL)wouldCombineLandscapeBarsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v6)
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
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    [(_UISearchBarVisualProviderLegacy *)self layoutSubviewsInBounds:?];
    v3 = v4;
  }
}

- (void)layoutSubviewsInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_136;
  }

  if (!self->_searchField)
  {
    v10 = [v8 _searchBarTextField];
    searchField = self->_searchField;
    self->_searchField = v10;
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
    v15 = 1;
  }

  else
  {
    v15 = [(_UISearchBarVisualProviderLegacy *)self isInBarButNotHosted];
  }

  v18 = [v9 window];
  v19 = [v18 windowScene];
  v20 = [v19 _interfaceOrientation];

  v21 = [(_UISearchBarVisualProviderLegacy *)self shouldCombineLandscapeBarsForOrientation:v20];
  if (v21 && v15)
  {
    v22 = +[UIDevice currentDevice];
    v23 = [v22 userInterfaceIdiom];

    v21 = (v23 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  }

  v165 = [(_UISearchBarVisualProviderLegacy *)self useRelaxedScopeLayout];
  v24 = [(_UISearchBarVisualProviderLegacy *)self scopeBarIsVisible];
  v25 = [(_UISearchBarVisualProviderLegacy *)self containsScopeBar];
  [(_UISearchBarVisualProviderLegacy *)self scopeBarHeight];
  v27 = v26;
  v170 = v9[13];
  v169 = v15;
  if (v15)
  {
    v28 = [v9 superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 topItem];
      v30 = [v29 titleView];
      if (v30 == v9)
      {
      }

      else
      {
        searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;

        if ((*&searchBarVisualProviderFlags & 0x8000000) == 0)
        {
          [v28 frame];
          height = v32;
          [v9 setBounds:{x, y, width}];
        }
      }
    }

    [(UIImageView *)self->_searchBarBackground setHidden:1];
    [(_UISearchBarVisualProviderLegacy *)self updateSearchBarOpacity];

    if (v25)
    {
      v33 = +[UIDevice currentDevice];
      v34 = [v33 userInterfaceIdiom];

      if ((v34 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  if (!v25)
  {
    goto LABEL_25;
  }

LABEL_26:
  v36 = self->_scopeBarContainerView;
  v37 = v36;
  if (v24)
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
      [(_UISearchBarVisualProviderLegacy *)self barHeightForBarMetrics:[(_UISearchBarVisualProviderLegacy *)self barMetricsForOrientation:v20]];
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

  [(UISearchBarBackground *)self->_searchBarBackground setUsesContiguousBarBackground:v24 && !v21];

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
  v57 = [(UILabel *)self->_promptLabel text];
  v58 = [v57 length] == 0 || v169;

  v163 = v27;
  if (v58)
  {
    [(UIView *)self->_promptLabel removeFromSuperview];
  }

  else
  {
    v59 = [(_UISearchBarVisualProviderLegacy *)self barMetricsForOrientation:v20];
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
    [(_UISearchBarVisualProviderLegacy *)self barHeightForBarMetrics:[(_UISearchBarVisualProviderLegacy *)self barMetricsForOrientation:v20]];
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
    v96 = [v9 _searchBarTextField];
    [v96 _setForegroundViewsAlpha:v95];

    v97 = __59___UISearchBarVisualProviderLegacy_layoutSubviewsInBounds___block_invoke_2(v183, 0.8, 0.95);
    v98 = [v9 _searchBarTextField];
    [v98 _setBackgroundViewsAlpha:v97];
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
    v106 = [v105 userInterfaceIdiom];
    v107 = ceil(v104);
    v108 = floor(v104);
    if (v106 == 1)
    {
      v103 = v107;
    }

    else
    {
      v103 = v108;
    }
  }

  if (v24 && v21)
  {
    [(_UISearchBarVisualProviderLegacy *)self landscapeSearchFieldWidth];
  }

  else
  {
    [(_UISearchBarVisualProviderLegacy *)self availableBoundsWidth];
  }

  v110 = v109;
  v111 = [(_UISearchBarAppearanceStorage *)self->_appearanceStorage searchFieldPositionAdjustment];
  v112 = v111;
  if (v111)
  {
    v113 = v9[13];
    [v111 UIOffsetValue];
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

  if (v24 && v165)
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

  v122 = [v9 delegate];
  if (v122 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v122 _searchBar:v9 proposedSearchFieldFrame:{v99, v103, v110, v89}];
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
    if (v24 && v165)
    {
      [(_UISearchBarVisualProviderLegacy *)self updateScopeBarFrame];
    }

    goto LABEL_105;
  }

  if (v24)
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
    v131 = !v24;
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
      v140 = [(UIView *)cancelButton superview];
      v141 = [v9 _viewForChildViews];

      v142 = self->_cancelButton;
      if (v140 != v141)
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
      if (v24)
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
      if (v24)
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
  v2 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 window];
    if (v4 && ([v3 _containingScrollView], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      if ([UIApp _appAdoptsUISceneLifecycle])
      {
        v7 = [UIApp _sceneInterfaceOrientationFromWindow:v4];
        v8 = __UIStatusBarManagerForWindow(v4);
        v9 = [v8 isStatusBarHidden];

        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v20 = __UIStatusBarManagerForWindow(v4);
          [v20 defaultStatusBarHeightInOrientation:v7];
          v22 = v21;

          v10 = v22 == 0.0;
        }

        [v4 _referenceFrameFromSceneUsingScreenBounds:v10];
        v13 = v23;
        v15 = v24;
        v17 = v25;
        v19 = v26;
      }

      else
      {
        v11 = [v3 _screen];
        [v11 _applicationFrame];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
      }

      [v4 convertRect:0 fromWindow:{v13, v15, v17, v19}];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v35 = [v3 superview];
      [v35 convertRect:0 fromView:{v28, v30, v32, v34}];
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

- (void)layoutBackgroundViewConsideringTopBarStatusAndChangedHeight:(BOOL)a3
{
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5)
  {
    *&self->_searchBarVisualProviderFlags &= ~0x10000u;
    v23 = v5;
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v23 window];
    if (v14)
    {
      if (self->_barPosition == 3 || [(_UISearchBarVisualProviderLegacy *)self isAtTop])
      {
        v15 = __UIStatusBarManagerForWindow(v14);
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
    if (a3 || (v25.origin.x = v7, v25.origin.y = v9, v25.size.width = v11, v25.size.height = v13, !CGRectEqualToRect(*&v18, v25)))
    {
      if (-[_UISearchBarVisualProviderLegacy scopeBarIsVisible](self, "scopeBarIsVisible") && !-[_UISearchBarVisualProviderLegacy shouldCombineLandscapeBarsForOrientation:](self, "shouldCombineLandscapeBarsForOrientation:", [v23 _expectedInterfaceOrientation]))
      {
        [(_UISearchBarVisualProviderLegacy *)self scopeBarHeight];
        v13 = v13 - v22;
      }

      [(UISearchBarBackground *)self->_searchBarBackground setFrame:v7, v9, v11, v13];
    }

    v5 = v23;
  }
}

- (void)updateBackgroundToBackdropStyle:(int64_t)a3
{
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __68___UISearchBarVisualProviderLegacy_updateBackgroundToBackdropStyle___block_invoke;
      v11[3] = &unk_1E70F36D0;
      v11[4] = self;
      v13 = a3;
      v12 = v5;
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
        v7 = [v5 _searchBarTextField];
        [v7 _setBottomEffectBackgroundVisible:0];
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
  v2 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v3 = v2;
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v4 = [v2 _viewControllerForAncestor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 navigationBar];
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [v4 navigationController];
    v5 = [v7 navigationBar];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if (([v5 isHidden] & 1) == 0 && (objc_msgSend(v5, "containsView:", v3) & 1) == 0)
  {
    v6 = v5;
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
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v3)
  {
    v4 = [(_UISearchBarVisualProviderLegacy *)self navigationBarForShadow];
    v5 = v4;
    if (!v4 || ([v4 _hidesShadow] & 1) != 0 || (WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController), v7 = objc_msgSend(WeakRetained, "isActive"), WeakRetained, (v7 & 1) != 0))
    {
      v8 = 0;
    }

    else
    {
      v10 = v3;
      do
      {
        v11 = v10;
        v10 = [v10 superview];

        v8 = v10 == 0;
        if (!v10)
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
  v3 = [(_UISearchBarVisualProviderBase *)self searchBar];
  v4 = v3;
  if (v3)
  {
    [v3 bounds];
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
    v12 = [v4 _screen];
    [v12 scale];
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

- (void)setShadowVisibleIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5)
  {
    v20 = v5;
    v6 = [(_UISearchBarVisualProviderLegacy *)self navigationBarForShadow];
    [v6 _setDeferShadowToSearchBar:v3];
    v7 = [(_UISearchBarVisualProviderLegacy *)self shouldDisplayShadow];
    shadowView = self->_shadowView;
    if (v7 && v3)
    {
      if (!shadowView)
      {
        v9 = [(_UISearchBarVisualProviderLegacy *)self makeShadowView];
        v10 = self->_shadowView;
        self->_shadowView = v9;

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

    v5 = v20;
  }
}

- (void)setSearchDisplayControllerShowsCancelButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5)
  {
    searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
    if (((((*&searchBarVisualProviderFlags & 0x40000) == 0) ^ v3) & 1) == 0)
    {
      v7 = v3 ? 0x40000 : 0;
      self->_searchBarVisualProviderFlags = (*&searchBarVisualProviderFlags & 0xFFFBFFFF | v7);
      v8 = v3 ? 0.0 : 1.0;
      v9 = v3 ? 1.0 : 0.0;
      v12 = v5;
      v10 = +[UIView areAnimationsEnabled];
      [UIView setAnimationsEnabled:0];
      [(UIView *)self->_cancelButton setAlpha:v8];
      [UIView setAnimationsEnabled:v10];
      [v12 setNeedsLayout];
      [v12 layoutBelowIfNeeded];
      [(UIView *)self->_cancelButton setAlpha:v9];
      v11 = [(_UISearchBarVisualProviderLegacy *)self isInBarButNotHosted];
      v5 = v12;
      if (v11)
      {
        [(_UISearchBarVisualProviderLegacy *)self displayNavBarCancelButton:(*&self->_searchBarVisualProviderFlags >> 18) & 1 animated:1];
        v5 = v12;
      }
    }
  }
}

- (void)allowCursorToAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5)
  {
    v9 = v5;
    v6 = [(_UISearchBarVisualProviderLegacy *)self centerPlaceholder];
    v5 = v9;
    if (v6)
    {
      v7 = [v9 _searchBarTextField];
      v8 = v7;
      if (v3)
      {
        [v7 _setPreventSelectionViewActivation:0];
        if ([v8 isFirstResponder])
        {
          [v8 __resumeBecomeFirstResponder];
          [v8 _activateSelectionView];
        }
      }

      else
      {
        [v7 _setPreventSelectionViewActivation:1];
      }

      v5 = v9;
    }
  }
}

- (int64_t)barMetricsForOrientation:(int64_t)a3
{
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_21;
  }

  v6 = [(UILabel *)self->_promptLabel text];
  v7 = [v6 length];

  if ((a3 - 1) <= 1)
  {
    goto LABEL_18;
  }

  searchBarVisualProviderFlags = self->_searchBarVisualProviderFlags;
  if ((*&searchBarVisualProviderFlags & 0x4000000) != 0)
  {
    a3 = [v5 _searchController];
    if (([a3 isActive] & 1) == 0 && (*(&self->_searchBarVisualProviderFlags + 3) & 1) == 0)
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

  v10 = [v5 traitCollection];
  if ([v10 userInterfaceIdiom] == 1)
  {

    if ((*&searchBarVisualProviderFlags & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v11 = [v5 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if ((*&searchBarVisualProviderFlags & 0x4000000) != 0)
  {
  }

  if (v12 != 1)
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

- (void)setSearchDisplayController:(id)a3
{
  obj = a3;
  v4 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v4)
  {
    objc_storeWeak(&self->_searchDisplayController, obj);
    if ([(_UISearchBarVisualProviderLegacy *)self centerPlaceholder])
    {
      v5 = [v4 textInputTraits];
      [v5 setDeferBecomingResponder:obj == 0];
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
    v3 = [(_UISearchBarVisualProviderBase *)self searchBar];

    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);
      v5 = [WeakRetained navigationBarSearchFieldSizing];
      v6 = [_UISearchBarNavigationItem alloc];
      if (v5 == 3)
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

      if (v5 != 3)
      {
      }

      [(_UISearchBarVisualProviderLegacy *)self setUpSearchNavigationItemWithSizingOption:v5];
    }
  }

  v10 = self->_searchNavigationItem;

  return v10;
}

- (void)setUpSearchNavigationItemWithSizingOption:(unint64_t)a3
{
  v5 = [(_UISearchBarVisualProviderBase *)self searchBar];
  if (v5)
  {
    v37 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);
    v7 = self->_searchNavigationItem;
    v8 = [v37 _searchBarTextField];
    v9 = v8;
    if (a3)
    {
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v16 = [v37 window];
          v17 = [UIView alloc];
          [(_UISearchBarVisualProviderLegacy *)self searchFieldHeight];
          UIRoundToViewScale(v16);
          v19 = [(UIView *)v17 initWithFrame:0.0, 0.0, 36.0, v18];
          [(_UISearchBarVisualProviderLegacy *)self updateMagnifyingGlassView];
          v20 = [UIButton buttonWithType:1];
          UIRoundToViewScale(v16);
          v22 = v21;
          [(_UISearchBarVisualProviderLegacy *)self searchFieldHeight];
          [v20 setFrame:{0.0, v22, 36.0, v23}];
          [v20 setAutoresizingMask:4];
          v24 = [v9 leftView];
          v25 = [v24 image];
          [v20 setImage:v25 forState:0];

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

          v5 = v37;
          goto LABEL_18;
        }

LABEL_14:
        [(UINavigationItem *)v7 setTitleView:v9];
        if ((*(&self->_searchBarVisualProviderFlags + 2) & 4) != 0)
        {
          [(_UISearchBarVisualProviderLegacy *)self displayNavBarCancelButton:1 animated:0];
        }

        v16 = [(_UISearchBarVisualProviderLegacy *)self prompt];
        [(UINavigationItem *)v7 setPrompt:v16];
        goto LABEL_17;
      }

      [v8 frame];
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
        v10 = [WeakRetained searchContentsController];
        v11 = [v10 navigationController];
        v12 = [v11 navigationBar];
        [v12 frame];
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

- (void)prepareFromAbandonedVisualProvider:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_UISearchBarVisualProviderLegacy *)self prepare];
  if (v4)
  {
    v5 = [v4 barTintColor];
    [(_UISearchBarVisualProviderLegacy *)self _setBarTintColor:v5];

    -[_UISearchBarVisualProviderLegacy _setBarStyle:](self, "_setBarStyle:", [v4 barStyle]);
    -[_UISearchBarVisualProviderLegacy _setShowsScopeBar:](self, "_setShowsScopeBar:", [v4 showsScopeBar]);
    -[_UISearchBarVisualProviderLegacy _setAutoDisableCancelButton:](self, "_setAutoDisableCancelButton:", [v4 autoDisableCancelButton]);
    -[_UISearchBarVisualProviderLegacy _setShowsCancelButton:](self, "_setShowsCancelButton:", [v4 showsCancelButton]);
    -[_UISearchBarVisualProviderLegacy _setShowsBookmarkButton:](self, "_setShowsBookmarkButton:", [v4 showsBookmarkButton]);
    -[_UISearchBarVisualProviderLegacy _setShowsSearchResultsButton:](self, "_setShowsSearchResultsButton:", [v4 showsSearchResultsButton]);
    -[_UISearchBarVisualProviderLegacy _setSearchResultsButtonSelected:](self, "_setSearchResultsButtonSelected:", [v4 isSearchResultsButtonSelected]);
    -[_UISearchBarVisualProviderLegacy setAllowsInlineScopeBar:](self, "setAllowsInlineScopeBar:", [v4 allowsInlineScopeBar]);
    -[_UISearchBarVisualProviderLegacy _setBarTranslucence:](self, "_setBarTranslucence:", [v4 barTranslucence]);
    -[_UISearchBarVisualProviderLegacy _setHideBackground:](self, "_setHideBackground:", [v4 drawsBackground] ^ 1);
    v6 = [v4 searchBar];
    [(_UISearchBarVisualProviderBase *)self setSearchBar:v6];

    v7 = [v4 searchFieldIfExists];
    searchField = self->_searchField;
    self->_searchField = v7;

    [(UIView *)self->_searchBarBackground removeFromSuperview];
    v9 = [v4 searchBarBackground];
    searchBarBackground = self->_searchBarBackground;
    self->_searchBarBackground = v9;

    v11 = [v4 backdrop];
    backdrop = self->_backdrop;
    self->_backdrop = v11;

    v13 = [v4 backdropVisualEffectView];
    backdropVisualEffectView = self->_backdropVisualEffectView;
    self->_backdropVisualEffectView = v13;

    v15 = [v4 searchBarClippingView];
    searchBarClippingView = self->_searchBarClippingView;
    self->_searchBarClippingView = v15;

    v17 = [v4 cancelButton];
    cancelButton = self->_cancelButton;
    self->_cancelButton = v17;

    v19 = [v4 cancelBarButtonItemIfExists];
    cancelBarButtonItem = self->_cancelBarButtonItem;
    self->_cancelBarButtonItem = v19;

    v21 = [v4 cancelButtonText];
    cancelButtonText = self->_cancelButtonText;
    self->_cancelButtonText = v21;

    v23 = [v4 leftButtonIfExists];
    leftButton = self->_leftButton;
    self->_leftButton = v23;

    v25 = [v4 promptLabel];
    promptLabel = self->_promptLabel;
    self->_promptLabel = v25;

    v27 = [v4 separator];
    separator = self->_separator;
    self->_separator = v27;

    v29 = [v4 scopeBar];
    scopeBar = self->_scopeBar;
    self->_scopeBar = v29;

    v31 = [v4 scopeBarContainerView];
    v32 = [UIView alloc];
    [v31 frame];
    v33 = [(UIView *)v32 initWithFrame:?];
    scopeBarContainerView = self->_scopeBarContainerView;
    self->_scopeBarContainerView = v33;

    v35 = [v31 superview];
    [v35 addSubview:self->_scopeBarContainerView];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v36 = [v31 subviews];
    v37 = [v36 countByEnumeratingWithState:&v59 objects:v63 count:16];
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
            objc_enumerationMutation(v36);
          }

          [(UIView *)self->_scopeBarContainerView addSubview:*(*(&v59 + 1) + 8 * i)];
        }

        v38 = [v36 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v38);
    }

    [v31 removeFromSuperview];
    v41 = [v4 scopeBarBackgroundView];
    scopeBarBackgroundView = self->_scopeBarBackgroundView;
    self->_scopeBarBackgroundView = v41;

    v43 = [v4 scopeTitles];
    scopeTitles = self->_scopeTitles;
    self->_scopeTitles = v43;

    self->_selectedScope = [v4 selectedScope];
    self->_backdropStyle = [v4 backdropStyle];
    self->_barPosition = [v4 barPosition];
    self->_scopeBarPosition = [v4 scopeBarPosition];
    [v4 effectiveContentInset];
    self->_effectiveContentInset.top = v45;
    self->_effectiveContentInset.left = v46;
    self->_effectiveContentInset.bottom = v47;
    self->_effectiveContentInset.right = v48;
    [v4 minimumContentInset];
    self->_minimumContentInsetPrivate.top = v49;
    self->_minimumContentInsetPrivate.left = v50;
    self->_minimumContentInsetPrivate.bottom = v51;
    self->_minimumContentInsetPrivate.right = v52;
    [v4 tableViewIndexWidth];
    self->_tableViewIndexWidth = v53;
    self->_navBarTitleViewLocation = [v4 navBarTitleViewLocation];
    v54 = [v4 navBarTitleViewOverlayRects];
    navBarTitleViewOverlayRects = self->_navBarTitleViewOverlayRects;
    self->_navBarTitleViewOverlayRects = v54;

    v56 = [v4 navBarTitleViewDataSource];
    objc_storeWeak(&self->_navBarTitleViewDataSource, v56);

    v57 = [v4 animatedAppearanceBarButtonItem];
    animatedAppearanceBarButtonItem = self->_animatedAppearanceBarButtonItem;
    self->_animatedAppearanceBarButtonItem = v57;

    [v4 revertViewHierarchyIfNecessary];
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