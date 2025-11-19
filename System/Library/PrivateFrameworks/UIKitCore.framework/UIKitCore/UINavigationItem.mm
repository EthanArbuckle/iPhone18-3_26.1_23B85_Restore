@interface UINavigationItem
+ (id)defaultFont;
+ (void)_partitionGroupsIntoSections:(id)a3 sectionHandler:(id)a4;
- (BOOL)_accumulateViewsFromItems:(id)a3 isLeft:(BOOL)a4 refreshViews:(BOOL)a5;
- (BOOL)_canRename;
- (BOOL)_changeMayAffectSearchBarPlacementFromTraits:(id)a3 toOtherTraits:(id)a4;
- (BOOL)_hasDefaultTitleView;
- (BOOL)_hasInlineSearchBar;
- (BOOL)_hasInlineSearchBarForTraits:(id)a3;
- (BOOL)_hasIntegratedSearchBarInNavigationBar;
- (BOOL)_hasIntegratedSearchBarInNavigationBarForTraits:(id)a3;
- (BOOL)_hasIntegratedSearchBarInToolbar;
- (BOOL)_hasIntegratedSearchBarInToolbarForTraits:(id)a3;
- (BOOL)_leftItemsWantBackButton;
- (BOOL)_shouldSearchControllerDeferPresentationTransition:(id)a3;
- (BOOL)_wantsBackButtonIndicator;
- (BOOL)hidesSearchBarWhenScrolling;
- (NSArray)_abbreviatedBackButtonTitles;
- (NSArray)_topBarSections;
- (NSArray)centerItemGroups;
- (NSArray)leadingItemGroups;
- (NSArray)trailingItemGroups;
- (NSDirectionalEdgeInsets)_minimumContentMargins;
- (NSDirectionalEdgeInsets)_titleMinimumMargins;
- (NSDirectionalEdgeInsets)largeTitleInsets;
- (NSString)description;
- (UIBarButtonItem)leftBarButtonItem;
- (UIBarButtonItem)rightBarButtonItem;
- (UIBarButtonItem)searchBarPlacementBarButtonItem;
- (UINavigationBar)_navigationBar;
- (UINavigationBar)navigationBar;
- (UINavigationItem)init;
- (UINavigationItem)initWithCoder:(NSCoder *)coder;
- (UINavigationItem)initWithTitle:(NSString *)title;
- (UINavigationItemSearchBarPlacement)searchBarPlacement;
- (_UINavigationItemChangeObserver)_changeObserver;
- (double)_desiredHeightForBarMetrics:(int64_t)a3 defaultHeightBlock:(id)a4;
- (double)_minimumDesiredHeightForBarMetrics:(int64_t)a3;
- (id)_addDefaultTitleViewToNavigationBarIfNecessary:(id)a3;
- (id)_backButtonTitleAllowingGenericTitles:(BOOL)a3 allowingDefaultTitles:(BOOL)a4;
- (id)_barButtonForBackButtonIndicator;
- (id)_barButtonItemsToAddWhenAttemptingToAddBarButtonItems:(int)a3 forRight:;
- (id)_buttonForBackButtonIndicator;
- (id)_customLeftViews;
- (id)_customRightViews;
- (id)_defaultTitleView;
- (id)_effectiveBackBarButtonItem;
- (id)_effectiveTitleForTitle:(id)a3;
- (id)_firstNonSpaceItemInList:(id)a3;
- (id)_titleView;
- (id)backButtonView;
- (id)currentBackButtonTitle;
- (id)overflowPresentationSource;
- (id)renameDelegate;
- (uint64_t)_canRevealSearchBarPlacementAccurately;
- (unint64_t)_navigationBarVisibility;
- (void)_addImplicitTopBarSectionsFromGroups:(id)a3 toSections:(id)a4 forPlacement:(int64_t)a5;
- (void)_addImplicitTopBarSectionsFromItems:(id)a3 toSections:(id)a4 forPlacement:(int64_t)a5;
- (void)_cleanupFrozenTitleView;
- (void)_confirmedSearchBarPlacementBarButtonItem;
- (void)_freezeCurrentTitleView;
- (void)_getLeadingItems:(id *)a3 groups:(id *)a4;
- (void)_getTrailingItems:(id *)a3 groups:(id *)a4;
- (void)_messageChangeObserver:(id)a3 forTransitionFromSearchController:(id)a4;
- (void)_movedFromTopOfStack:(BOOL)a3;
- (void)_movedToTopOfStack:(BOOL)a3;
- (void)_movingFromTopOfStack;
- (void)_movingToTopOfStack;
- (void)_removeBackButtonView;
- (void)_removeBarButtonItemViews;
- (void)_removeContentInView:(id)a3;
- (void)_removeTitleAndButtonViews;
- (void)_replaceCustomLeftRightViewAtIndex:(unint64_t)a3 withView:(id)a4 left:(BOOL)a5;
- (void)_resetHidesSearchBarWhenScrolling;
- (void)_searchBarUpdatedSearchFieldIntegrationInSearchController:(id)a3;
- (void)_searchControllerReadyForDeferredAutomaticShowsScopeBar;
- (void)_sendSearchBarPlacementChangeCallbackIfNecessaryWillChange:(id *)a1;
- (void)_setAbbreviatedBackButtonTitles:(id)a3;
- (void)_setAllowsInteractivePop:(BOOL)a3;
- (void)_setAllowsInteractivePopWhenBackButtonHidden:(BOOL)a3;
- (void)_setAllowsInteractivePopWhenNavigationBarHidden:(BOOL)a3;
- (void)_setAlwaysUseManualScrollEdgeAppearance:(BOOL)a3;
- (void)_setAutoScrollEdgeTransitionDistance:(double)a3;
- (void)_setBackButtonPressed:(BOOL)a3;
- (void)_setBackButtonTitle:(id)a3 lineBreakMode:(int64_t)a4;
- (void)_setBackgroundHidden:(BOOL)a3;
- (void)_setBottomPalette:(id)a3;
- (void)_setBottomPaletteNeedsUpdate:(id)a3;
- (void)_setChangeObserver:(id)a3;
- (void)_setCustomLeftViews:(id)a3;
- (void)_setCustomRightViews:(id)a3;
- (void)_setEffectiveTopBarSectionsNeedsUpdate;
- (void)_setFontScaleAdjustment:(double)a3;
- (void)_setLargeTitleAccessoryView:(id)a3 alignToBaseline:(BOOL)a4 horizontalAlignment:(unint64_t)a5;
- (void)_setLargeTitleTwoLineMode:(unint64_t)a3;
- (void)_setLargeTitleView:(id)a3;
- (void)_setManualScrollEdgeAppearanceEnabled:(BOOL)a3;
- (void)_setManualScrollEdgeAppearanceProgress:(double)a3;
- (void)_setMinimumContentMargins:(NSDirectionalEdgeInsets)a3;
- (void)_setMinimumDesiredHeight:(double)a3 forBarMetrics:(int64_t)a4;
- (void)_setNavigationBarHidden:(BOOL)a3;
- (void)_setPreferredNavigationBarVisibility:(unint64_t)a3;
- (void)_setRenameHandler:(id)a3;
- (void)_setShouldDismissPresentedViewControllerWhenPopped:(BOOL)a3;
- (void)_setTitle:(id)a3 animated:(BOOL)a4 matchBarButtonItemAnimationDuration:(BOOL)a5;
- (void)_setTitleViewDataSource:(id)a3;
- (void)_setToolbarAvoidsKeyboard:(BOOL)a3;
- (void)_setTopPalette:(id)a3;
- (void)_setWeeTitle:(id)a3;
- (void)_updatePalette:(id)a3;
- (void)_updateSearchBarItemGroupForPreferredPlacementChange:(BOOL)a3;
- (void)_updateViewsForBarSizeChangeAndApply:(BOOL)a3;
- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAdditionalOverflowItems:(UIDeferredMenuElement *)additionalOverflowItems;
- (void)setAttributedSubtitle:(id)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setBackAction:(UIAction *)backAction;
- (void)setBackBarButtonItem:(UIBarButtonItem *)backBarButtonItem;
- (void)setBackButtonDisplayMode:(UINavigationItemBackButtonDisplayMode)backButtonDisplayMode;
- (void)setCenterItemGroups:(NSArray *)centerItemGroups;
- (void)setCompactAppearance:(UINavigationBarAppearance *)compactAppearance;
- (void)setCompactScrollEdgeAppearance:(UINavigationBarAppearance *)compactScrollEdgeAppearance;
- (void)setCustomizationIdentifier:(NSString *)customizationIdentifier;
- (void)setDocumentProperties:(UIDocumentProperties *)documentProperties;
- (void)setHidesBackButton:(BOOL)hidesBackButton;
- (void)setHidesBackButton:(BOOL)hidesBackButton animated:(BOOL)animated;
- (void)setHidesSearchBarWhenScrolling:(BOOL)hidesSearchBarWhenScrolling;
- (void)setLargeAttributedSubtitle:(id)a3;
- (void)setLargeSubtitle:(id)a3;
- (void)setLargeSubtitleView:(id)a3;
- (void)setLargeTitle:(id)a3;
- (void)setLargeTitleDisplayMode:(UINavigationItemLargeTitleDisplayMode)largeTitleDisplayMode;
- (void)setLeadingItemGroups:(NSArray *)leadingItemGroups;
- (void)setLeftBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated;
- (void)setLeftBarButtonItem:(UIBarButtonItem *)leftBarButtonItem;
- (void)setLeftBarButtonItems:(NSArray *)items animated:(BOOL)animated;
- (void)setLeftBarButtonItems:(NSArray *)leftBarButtonItems;
- (void)setLeftItemsSupplementBackButton:(BOOL)leftItemsSupplementBackButton;
- (void)setPinnedTrailingGroup:(UIBarButtonItemGroup *)pinnedTrailingGroup;
- (void)setPreferredSearchBarPlacement:(UINavigationItemSearchBarPlacement)preferredSearchBarPlacement;
- (void)setPrompt:(NSString *)prompt;
- (void)setRenameDelegate:(id)renameDelegate;
- (void)setRightBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated;
- (void)setRightBarButtonItem:(UIBarButtonItem *)rightBarButtonItem;
- (void)setRightBarButtonItems:(NSArray *)items animated:(BOOL)animated;
- (void)setRightBarButtonItems:(NSArray *)rightBarButtonItems;
- (void)setScrollEdgeAppearance:(UINavigationBarAppearance *)scrollEdgeAppearance;
- (void)setSearchBarPlacementAllowsExternalIntegration:(BOOL)a3;
- (void)setSearchBarPlacementAllowsToolbarIntegration:(BOOL)a3;
- (void)setSearchController:(UISearchController *)searchController;
- (void)setStandardAppearance:(UINavigationBarAppearance *)standardAppearance;
- (void)setStyle:(UINavigationItemStyle)style;
- (void)setSubtitle:(id)a3;
- (void)setSubtitleView:(id)a3;
- (void)setTitle:(NSString *)title;
- (void)setTitleMenuProvider:(void *)titleMenuProvider;
- (void)setTitleView:(UIView *)titleView;
- (void)setTrailingItemGroups:(NSArray *)trailingItemGroups;
- (void)updateNavigationBarButtonsAnimated:(BOOL)a3;
@end

@implementation UINavigationItem

- (BOOL)_hasIntegratedSearchBarInNavigationBar
{
  canRevealSearchBarPlacement = [(UINavigationItem *)self _canRevealSearchBarPlacementAccurately];
  if (canRevealSearchBarPlacement)
  {
    canRevealSearchBarPlacement = [(UINavigationItem *)self _hasInlineSearchBar];
    if (canRevealSearchBarPlacement)
    {
      LOBYTE(canRevealSearchBarPlacement) = ![(UISearchController *)self->_searchController _isSearchTextFieldBorrowed];
    }
  }

  return canRevealSearchBarPlacement;
}

- (UINavigationBar)_navigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  return WeakRetained;
}

- (unint64_t)_navigationBarVisibility
{
  preferredNavigationBarVisibility = self->__preferredNavigationBarVisibility;
  if (preferredNavigationBarVisibility == 2)
  {
    return 2;
  }

  if (preferredNavigationBarVisibility)
  {
    return 1;
  }

  return self->__navigationBarHidden;
}

- (void)_movingToTopOfStack
{
  if (self && (searchController = self->_searchController) != 0)
  {
    v4 = [(UISearchController *)searchController searchBarPlacement];
    [(UINavigationItem *)self _hasInlineSearchBar];
    v5 = [(UINavigationItem *)self searchBarPlacement];
    p_navigationItemFlags = &self->_navigationItemFlags;
    navigationItemFlags = self->_navigationItemFlags;
    if (v4 != v5)
    {
      *&self->_navigationItemFlags = navigationItemFlags | 0x40;
      [(UINavigationItem *)&self->super.isa _sendSearchBarPlacementChangeCallbackIfNecessaryWillChange:?];
      goto LABEL_7;
    }
  }

  else
  {
    p_navigationItemFlags = &self->_navigationItemFlags;
    navigationItemFlags = self->_navigationItemFlags;
  }

  *p_navigationItemFlags = navigationItemFlags & 0xFFBF;
LABEL_7:
  [(UISearchController *)self->_searchController _setNavigationItemCurrentlyDisplayingSearchController:self];
  v9 = [(UISearchController *)self->_searchController searchBar];
  v8 = [(UINavigationItem *)self _hasIntegratedSearchBarInNavigationBar];
  [v9 _setHostedInlineByNavigationBar:v8];
  if (!v8)
  {
    [v9 _setHostedInlineByToolbar:{-[UINavigationItem _hasIntegratedSearchBarInToolbar](self, "_hasIntegratedSearchBarInToolbar")}];
  }
}

- (BOOL)_hasIntegratedSearchBarInToolbar
{
  canRevealSearchBarPlacement = [(UINavigationItem *)self _canRevealSearchBarPlacementAccurately];
  if (canRevealSearchBarPlacement)
  {
    searchController = self->_searchController;

    LOBYTE(canRevealSearchBarPlacement) = [(UISearchController *)searchController _isSearchTextFieldBorrowed];
  }

  return canRevealSearchBarPlacement;
}

- (void)_movingFromTopOfStack
{
  if (!self || (searchController = self->_searchController) == 0)
  {
    navigationItemFlags = self->_navigationItemFlags;
    p_navigationItemFlags = &self->_navigationItemFlags;
    v6 = navigationItemFlags;
    goto LABEL_6;
  }

  v4 = [(UISearchController *)searchController searchBarPlacement];
  [(UINavigationItem *)self _hasInlineSearchBar];
  v5 = [(UINavigationItem *)self searchBarPlacement];
  v6 = self->_navigationItemFlags;
  if (v4 == v5)
  {
    p_navigationItemFlags = &self->_navigationItemFlags;
LABEL_6:
    *p_navigationItemFlags = v6 & 0xFF7F;
    return;
  }

  *&self->_navigationItemFlags = v6 | 0x80;

  [(UINavigationItem *)&self->super.isa _sendSearchBarPlacementChangeCallbackIfNecessaryWillChange:?];
}

- (void)_setEffectiveTopBarSectionsNeedsUpdate
{
  effectiveTopBarSections = self->_effectiveTopBarSections;
  self->_effectiveTopBarSections = 0;
}

- (NSDirectionalEdgeInsets)largeTitleInsets
{
  top = self->_largeTitleInsets.top;
  leading = self->_largeTitleInsets.leading;
  bottom = self->_largeTitleInsets.bottom;
  trailing = self->_largeTitleInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (BOOL)hidesSearchBarWhenScrolling
{
  v3 = dyld_program_sdk_at_least();
  navigationItemFlags = self->_navigationItemFlags;
  if (v3)
  {
    v5 = (navigationItemFlags >> 3) & 3;
    if (!v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
      v7 = [WeakRetained traitCollection];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = +[UITraitCollection _fallbackTraitCollection];
      }

      v11 = v9;
      v12 = [v9 userInterfaceIdiom];
      if ((v12 - 2) >= 4)
      {
        if (v12 == 1)
        {
          if ([v11 horizontalSizeClass] == 1)
          {
            v5 = 2;
          }

          else
          {
            v5 = 1;
          }
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 2;
      }
    }

    return v5 == 1;
  }

  else
  {
    return (navigationItemFlags & 4) == 0;
  }
}

- (NSString)description
{
  v31.receiver = self;
  v31.super_class = UINavigationItem;
  v3 = [(UINavigationItem *)&v31 description];
  v4 = [v3 mutableCopy];

  attributedTitle = self->_attributedTitle;
  if (attributedTitle)
  {
    v6 = [(NSAttributedString *)attributedTitle string];
    [v4 appendFormat:@" title='%@'", v6];
  }

  attributedSubtitle = self->_attributedSubtitle;
  if (attributedSubtitle)
  {
    v8 = [(NSAttributedString *)attributedSubtitle string];
    [v4 appendFormat:@" subtitle='%@'", v8];
  }

  if (self->_titleView)
  {
    [v4 appendFormat:@" titleView=%p", self->_titleView];
  }

  if (self->_prompt)
  {
    [v4 appendFormat:@" prompt='%@'", self->_prompt];
  }

  v9 = self->_style + 1;
  if (v9 <= 3)
  {
    [v4 appendString:off_1E70F7C28[v9]];
  }

  if (self->_backBarButtonItem)
  {
    [v4 appendFormat:@" backBarButtonItem=%p", self->_backBarButtonItem];
    goto LABEL_20;
  }

  if (self->_backButtonTitle)
  {
    [v4 appendFormat:@" backButtonTitle='%@'", self->_backButtonTitle];
  }

  backButtonDisplayMode = self->_backButtonDisplayMode;
  if (backButtonDisplayMode == 2)
  {
    v11 = @" backButtonDisplayMode=minimal";
  }

  else
  {
    if (backButtonDisplayMode != 1)
    {
      goto LABEL_20;
    }

    v11 = @" backButtonDisplayMode=generic";
  }

  [v4 appendString:v11];
LABEL_20:
  if (self->_backAction)
  {
    [v4 appendFormat:@" backAction=%p", self->_backAction];
  }

  if (*&self->_navigationItemFlags)
  {
    [v4 appendString:@" hidesBackButton"];
  }

  titleMenuProvider = self->_titleMenuProvider;
  if (titleMenuProvider)
  {
    v13 = _Block_copy(titleMenuProvider);
    [v4 appendFormat:@" titleMenuProvider=%p", v13];
  }

  WeakRetained = objc_loadWeakRetained(&self->_renameDelegate);

  if (WeakRetained)
  {
    v15 = objc_loadWeakRetained(&self->_renameDelegate);
    [v4 appendFormat:@" renameDelegate=%p", v15];
  }

  if (self->_documentProperties)
  {
    [v4 appendFormat:@" documentProperties=%p", self->_documentProperties];
  }

  if (self->_customizationIdentifier)
  {
    [v4 appendFormat:@" customizationIdentifier='%@'", self->_customizationIdentifier];
  }

  if ([(NSArray *)self->_leadingItemGroups count])
  {
    p_leadingItemGroups = &self->_leadingItemGroups;
    v17 = @" leadingItemGroups=%p";
  }

  else
  {
    p_leadingItemGroups = &self->_leftBarButtonItems;
    if (![(NSArray *)self->_leftBarButtonItems count])
    {
      goto LABEL_37;
    }

    v17 = @" leftBarButtonItems=%p";
  }

  [v4 appendFormat:v17, *p_leadingItemGroups];
LABEL_37:
  if ((*&self->_navigationItemFlags & 2) != 0)
  {
    [v4 appendString:@" leftItemsSupplementBackButton"];
  }

  if ([(NSArray *)self->_centerItemGroups count])
  {
    [v4 appendFormat:@" centerItemGroups=%p", self->_centerItemGroups];
  }

  if ([(NSArray *)self->_trailingItemGroups count])
  {
    p_trailingItemGroups = &self->_trailingItemGroups;
    v19 = @" trailingItemGroups=%p";
  }

  else
  {
    p_trailingItemGroups = &self->_rightBarButtonItems;
    if (![(NSArray *)self->_rightBarButtonItems count])
    {
      goto LABEL_46;
    }

    v19 = @" rightBarButtonItems=%p";
  }

  [v4 appendFormat:v19, *p_trailingItemGroups];
LABEL_46:
  if (self->_additionalOverflowItems)
  {
    [v4 appendFormat:@" additionalOverflowItems=%p", self->_additionalOverflowItems];
  }

  v20 = self->_largeTitleDisplayMode - 1;
  if (v20 <= 2)
  {
    [v4 appendString:off_1E70F7C48[v20]];
  }

  top = self->_minimumContentMargins.top;
  leading = self->_minimumContentMargins.leading;
  bottom = self->_minimumContentMargins.bottom;
  trailing = self->_minimumContentMargins.trailing;
  if (leading != 0.0 || top != 0.0 || trailing != 0.0 || bottom != 0.0)
  {
    v25 = NSStringFromDirectionalEdgeInsets(*&top);
    [v4 appendFormat:@" minimumContentMargins=%@", v25];
  }

  if (self->_searchController)
  {
    [v4 appendFormat:@" searchController=%p", self->_searchController];
    if ([(UINavigationItem *)self _hidesSearchBarWhenScrollingIfAllowed])
    {
      v26 = @" SearchBarHidesWhenScrolling";
    }

    else
    {
      v26 = @" SearchBarPinnedWhenScrolling";
    }

    [v4 appendString:v26];
    if (dyld_program_sdk_at_least())
    {
      if ((*&self->_navigationItemFlags & 0x18) != 0)
      {
        v27 = @"-explicit";
      }

      else
      {
        v27 = @"-default";
      }

      [v4 appendString:v27];
    }

    v28 = self->_preferredSearchBarPlacement - 1;
    if (v28 <= 4)
    {
      [v4 appendString:off_1E70F7C60[v28]];
    }
  }

  if (self->_standardAppearance)
  {
    [v4 appendFormat:@" standardAppearance=%p", self->_standardAppearance];
  }

  if (self->_scrollEdgeAppearance)
  {
    [v4 appendFormat:@" scrollEdgeAppearance=%p", self->_scrollEdgeAppearance];
  }

  if (self->_compactAppearance)
  {
    [v4 appendFormat:@" compactAppearance=%p", self->_compactAppearance];
  }

  if (self->_compactScrollEdgeAppearance)
  {
    [v4 appendFormat:@" compactScrollEdgeAppearance=%p", self->_compactScrollEdgeAppearance];
  }

  v29 = v4;

  return v4;
}

- (NSArray)centerItemGroups
{
  if (self->_centerItemGroups)
  {
    return self->_centerItemGroups;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSArray)leadingItemGroups
{
  if (self->_leadingItemGroups)
  {
    return self->_leadingItemGroups;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSArray)trailingItemGroups
{
  if (self->_trailingItemGroups)
  {
    return self->_trailingItemGroups;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSDirectionalEdgeInsets)_minimumContentMargins
{
  top = self->_minimumContentMargins.top;
  leading = self->_minimumContentMargins.leading;
  bottom = self->_minimumContentMargins.bottom;
  trailing = self->_minimumContentMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSArray)_topBarSections
{
  effectiveTopBarSections = self->_effectiveTopBarSections;
  if (effectiveTopBarSections)
  {
    v3 = effectiveTopBarSections;
    goto LABEL_16;
  }

  v5 = objc_opt_new();
  v6 = [(UINavigationItem *)self leadingItemGroups];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(UINavigationItem *)self leadingItemGroups];
    [(UINavigationItem *)self _addImplicitTopBarSectionsFromGroups:v8 toSections:v5 forPlacement:1];
  }

  else
  {
    v9 = [(UINavigationItem *)self leftBarButtonItems];
    v10 = [v9 count];

    if (!v10)
    {
      goto LABEL_8;
    }

    v8 = [(UINavigationItem *)self leftBarButtonItems];
    [(UINavigationItem *)self _addImplicitTopBarSectionsFromItems:v8 toSections:v5 forPlacement:1];
  }

LABEL_8:
  v11 = [(UINavigationItem *)self centerItemGroups];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(UINavigationItem *)self centerItemGroups];
    [(UINavigationItem *)self _addImplicitTopBarSectionsFromGroups:v13 toSections:v5 forPlacement:2];
  }

  v14 = [(UINavigationItem *)self trailingItemGroups];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [(UINavigationItem *)self trailingItemGroups];
    [(UINavigationItem *)self _addImplicitTopBarSectionsFromGroups:v16 toSections:v5 forPlacement:3];
LABEL_14:

    goto LABEL_15;
  }

  v17 = [(UINavigationItem *)self rightBarButtonItems];
  v18 = [v17 count];

  if (v18)
  {
    v16 = [(UINavigationItem *)self rightBarButtonItems];
    v19 = [v16 reverseObjectEnumerator];
    v20 = [v19 allObjects];
    [(UINavigationItem *)self _addImplicitTopBarSectionsFromItems:v20 toSections:v5 forPlacement:3];

    goto LABEL_14;
  }

LABEL_15:
  v21 = self->_effectiveTopBarSections;
  self->_effectiveTopBarSections = v5;
  v22 = v5;

  v3 = self->_effectiveTopBarSections;
LABEL_16:

  return v3;
}

- (UINavigationItem)init
{
  v3.receiver = self;
  v3.super_class = UINavigationItem;
  return [(UINavigationItem *)&v3 init];
}

- (id)renameDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_renameDelegate);

  return WeakRetained;
}

- (_UINavigationItemChangeObserver)_changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);

  return WeakRetained;
}

- (BOOL)_hasInlineSearchBar
{
  canRevealSearchBarPlacement = [(UINavigationItem *)self _canRevealSearchBarPlacementAccurately];
  if (canRevealSearchBarPlacement)
  {
    v4 = self;
    v5 = [(UINavigationItem *)v4 _navigationBar];
    v6 = [v5 traitCollection];
    ShouldIntegrateSearchBarInNavigationBarForTraits = _UINavigationItemShouldIntegrateSearchBarInNavigationBarForTraits(v4, v6);

    if (ShouldIntegrateSearchBarInNavigationBarForTraits)
    {
      LOBYTE(canRevealSearchBarPlacement) = 1;
    }

    else
    {

      LOBYTE(canRevealSearchBarPlacement) = [(UINavigationItem *)v4 _hasIntegratedSearchBarInToolbar];
    }
  }

  return canRevealSearchBarPlacement;
}

- (UINavigationBar)navigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  return WeakRetained;
}

- (UIBarButtonItem)searchBarPlacementBarButtonItem
{
  searchBarPlacementBarButtonItem = self->_searchBarPlacementBarButtonItem;
  if (!searchBarPlacementBarButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:205 primaryAction:0];
    v5 = self->_searchBarPlacementBarButtonItem;
    self->_searchBarPlacementBarButtonItem = v4;

    [(UIBarButtonItem *)self->_searchBarPlacementBarButtonItem _setVendingNavigationItem:self];
    [(UIBarButtonItem *)self->_searchBarPlacementBarButtonItem _setPrefersCollapsedRepresentationInToolbar:[(UINavigationItem *)self preferredSearchBarPlacement]== 4];
    searchBarPlacementBarButtonItem = self->_searchBarPlacementBarButtonItem;
  }

  return searchBarPlacementBarButtonItem;
}

- (UINavigationItemSearchBarPlacement)searchBarPlacement
{
  if (![(UINavigationItem *)self _hasInlineSearchBar])
  {
    return 2;
  }

  result = self->_preferredSearchBarPlacement;
  if ((result - 4) >= 2)
  {
    if (result == (UINavigationItemSearchBarPlacementStacked|UINavigationItemSearchBarPlacementInline) && (v4 = objc_loadWeakRetained(&self->_navigationBar)) != 0)
    {
      v5 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
      v7 = [WeakRetained _permitsSearchBarPlacementIntegratedCentered];

      if (v7)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)_barButtonForBackButtonIndicator
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_leftBarButtonItems;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (([v6 isHidden] & 1) == 0 && ((objc_msgSend(v6, "_showsBackButtonIndicator") & 1) != 0 || objc_msgSend(v6, "_actsAsFakeBackButton")))
        {
          v3 = v6;
          goto LABEL_13;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

- (UIBarButtonItem)rightBarButtonItem
{
  v2 = [(UINavigationItem *)self rightBarButtonItems];
  v3 = [v2 firstObject];

  return v3;
}

- (UIBarButtonItem)leftBarButtonItem
{
  v2 = [(UINavigationItem *)self leftBarButtonItems];
  v3 = [v2 firstObject];

  return v3;
}

- (id)_effectiveBackBarButtonItem
{
  backBarButtonItem = self->_backBarButtonItem;
  if (backBarButtonItem)
  {
    v3 = backBarButtonItem;
  }

  else
  {
    if (!self->_synthesizedBackBarButtonItem)
    {
      v5 = objc_alloc_init(UIBarButtonItem);
      synthesizedBackBarButtonItem = self->_synthesizedBackBarButtonItem;
      self->_synthesizedBackBarButtonItem = v5;
    }

    v7 = [(UINavigationItem *)self _backButtonTitleAllowingGenericTitles:1 allowingDefaultTitles:_UISMCBarsEnabled() ^ 1];
    if (self->_backButtonDisplayMode == 2)
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v8 = [(UINavigationItem *)self _abbreviatedBackButtonTitles];
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1EFB14550;
    }

    [(UIBarButtonItem *)self->_synthesizedBackBarButtonItem setTitle:v9];
    [(UIBarButtonItem *)self->_synthesizedBackBarButtonItem _setBackButtonAlternateTitles:v8];
    v3 = self->_synthesizedBackBarButtonItem;
  }

  return v3;
}

- (NSArray)_abbreviatedBackButtonTitles
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!self->_abbreviatedBackButtonTitles)
  {
    if (_UISMCBarsEnabled())
    {
      abbreviatedBackButtonTitles = self->_abbreviatedBackButtonTitles;
      self->_abbreviatedBackButtonTitles = &unk_1EFE2B518;
    }

    else
    {
      v4 = _UINSLocalizedStringWithDefaultValue(@"Back", @"Back");
      v9[0] = v4;
      v9[1] = &stru_1EFB14550;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
      v6 = self->_abbreviatedBackButtonTitles;
      self->_abbreviatedBackButtonTitles = v5;
    }
  }

  v7 = self->_abbreviatedBackButtonTitles;

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = UINavigationItem;
  [(UINavigationItem *)&v2 dealloc];
}

- (void)_setFontScaleAdjustment:(double)a3
{
  if (self->_fontScaleAdjustment != a3)
  {
    aBlock[9] = v3;
    aBlock[10] = v4;
    self->_fontScaleAdjustment = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__UINavigationItem__setFontScaleAdjustment___block_invoke;
    aBlock[3] = &__block_descriptor_40_e17_v16__0__NSArray_8l;
    *&aBlock[4] = a3;
    v6 = _Block_copy(aBlock);
    v6[2](v6, self->_leftBarButtonItems);
    v6[2](v6, self->_rightBarButtonItems);
  }
}

void __44__UINavigationItem__setFontScaleAdjustment___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 isCustomViewItem] & 1) == 0)
        {
          v9 = [v8 view];
          v10 = [v9 titleForState:0];
          v11 = [v10 length];

          if (v11)
          {
            [v9 _setFontScaleAdjustment:*(a1 + 32)];
            [v9 _updateStyle];
            [v9 sizeToFit];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_setAbbreviatedBackButtonTitles:(id)a3
{
  v4 = a3;
  abbreviatedBackButtonTitles = self->_abbreviatedBackButtonTitles;
  v15 = v4;
  if (v4 && !abbreviatedBackButtonTitles || abbreviatedBackButtonTitles && (v6 = [(NSArray *)abbreviatedBackButtonTitles isEqualToArray:v4], v4 = v15, !v6))
  {
    v7 = v4 != 0;
    WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
    v9 = [v15 copy];
    v10 = self->_abbreviatedBackButtonTitles;
    self->_abbreviatedBackButtonTitles = v9;

    *&self->_navigationItemFlags = *&self->_navigationItemFlags & 0xDFFF | (v7 << 13);
    backButtonView = self->_backButtonView;
    if (backButtonView)
    {
      if (-[UIView _abbreviatedTitleIndex](backButtonView, "_abbreviatedTitleIndex") != 0x7FFFFFFFFFFFFFFFLL && ![WeakRetained state])
      {
        [(UIView *)self->_backButtonView _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
        if (WeakRetained)
        {
          v12 = [(UIView *)self->_backButtonView superview];
          if (v12 == WeakRetained && ![(UIView *)self->_backButtonView isHidden])
          {
            [(UIView *)self->_backButtonView alpha];
            v14 = v13;

            if (v14 != 0.0)
            {
              [WeakRetained setNeedsLayout];
            }
          }

          else
          {
          }
        }
      }
    }

    v4 = v15;
  }
}

- (void)_setBackButtonPressed:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationItem *)self existingBackButtonView];
  [v4 setPressed:v3];
}

+ (id)defaultFont
{
  v2 = [UINavigationBar _defaultVisualStyleForOrientation:1];
  [v2 headingFontSize];
  v3 = [off_1E70ECC18 boldSystemFontOfSize:?];

  return v3;
}

- (UINavigationItem)initWithTitle:(NSString *)title
{
  v4 = title;
  v12.receiver = self;
  v12.super_class = UINavigationItem;
  v5 = [(UINavigationItem *)&v12 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      v8 = [(UINavigationItem *)v6 _effectiveTitleForTitle:v4];
      v9 = [v7 initWithString:v8];
      attributedTitle = v6->_attributedTitle;
      v6->_attributedTitle = v9;
    }

    else
    {
      v8 = v5->_attributedTitle;
      v5->_attributedTitle = 0;
    }
  }

  return v6;
}

- (UINavigationItem)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v51.receiver = self;
  v51.super_class = UINavigationItem;
  v5 = [(UINavigationItem *)&v51 init];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectForKey:@"UIAttributedTitle"];
    attributedTitle = v5->_attributedTitle;
    v5->_attributedTitle = v6;

    if (!v5->_attributedTitle)
    {
      v8 = [(NSCoder *)v4 decodeObjectForKey:@"UITitle"];
      v9 = [v8 copy];

      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9];
      }

      else
      {
        v10 = 0;
      }

      v11 = v5->_attributedTitle;
      v5->_attributedTitle = v10;
    }

    v12 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrompt"];
    v13 = [v12 copy];
    prompt = v5->_prompt;
    v5->_prompt = v13;

    v15 = [(NSCoder *)v4 decodeObjectForKey:@"UIBackButtonTitle"];
    v16 = [v15 copy];
    backButtonTitle = v5->_backButtonTitle;
    v5->_backButtonTitle = v16;

    v18 = [(NSCoder *)v4 decodeObjectForKey:@"UIBackBarButtonItem"];
    backBarButtonItem = v5->_backBarButtonItem;
    v5->_backBarButtonItem = v18;

    v5->_backButtonDisplayMode = [(NSCoder *)v4 decodeIntegerForKey:@"UIBackButtonDisplayMode"];
    if ([(NSCoder *)v4 decodeBoolForKey:@"UILeftItemsSupplementBackButton"])
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    *&v5->_navigationItemFlags = *&v5->_navigationItemFlags & 0xFFFD | v20;
    v21 = [(NSCoder *)v4 decodeObjectForKey:@"UILeftBarButtonItem"];
    v22 = [(NSCoder *)v4 decodeObjectForKey:@"UILeftBarButtonItems"];
    leftBarButtonItems = v5->_leftBarButtonItems;
    v5->_leftBarButtonItems = v22;

    if (v21 && !v5->_leftBarButtonItems)
    {
      v24 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v21, 0}];
      v25 = v5->_leftBarButtonItems;
      v5->_leftBarButtonItems = v24;
    }

    v26 = [(NSCoder *)v4 decodeObjectForKey:@"UITitleView"];
    titleView = v5->_titleView;
    v5->_titleView = v26;

    if ([(NSCoder *)v4 containsValueForKey:@"UICenterItemGroups"])
    {
      v28 = [(NSCoder *)v4 decodeObjectForKey:@"UICenterItemGroups"];
      centerItemGroups = v5->_centerItemGroups;
      v5->_centerItemGroups = v28;
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UICustomizationIdentifier"])
    {
      v30 = [(NSCoder *)v4 decodeObjectForKey:@"UICustomizationIdentifier"];
      customizationIdentifier = v5->_customizationIdentifier;
      v5->_customizationIdentifier = v30;
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIStyle"])
    {
      v5->_style = [(NSCoder *)v4 decodeIntegerForKey:@"UIStyle"];
    }

    v32 = [(NSCoder *)v4 decodeObjectForKey:@"UIRightBarButtonItem"];
    v33 = [(NSCoder *)v4 decodeObjectForKey:@"UIRightBarButtonItems"];
    rightBarButtonItems = v5->_rightBarButtonItems;
    v5->_rightBarButtonItems = v33;

    if (v32 && !v5->_rightBarButtonItems)
    {
      v35 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v32, 0}];
      v36 = v5->_rightBarButtonItems;
      v5->_rightBarButtonItems = v35;
    }

    if (dyld_program_sdk_at_least() && [(NSCoder *)v4 containsValueForKey:@"UILargeTitleDisplayMode"])
    {
      v5->_largeTitleDisplayMode = [(NSCoder *)v4 decodeIntegerForKey:@"UILargeTitleDisplayMode"];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UINavigationItemSearchBarVisibilityWhenScrolling"])
    {
      v37 = *&v5->_navigationItemFlags & 0xFFE7 | (8 * ([(NSCoder *)v4 decodeIntegerForKey:@"UINavigationItemSearchBarVisibilityWhenScrolling"]& 3));
    }

    else
    {
      if (![(NSCoder *)v4 containsValueForKey:@"UIAlwaysShowsSearchBar"])
      {
        goto LABEL_34;
      }

      v38 = [(NSCoder *)v4 decodeBoolForKey:@"UIAlwaysShowsSearchBar"];
      if (dyld_program_sdk_at_least())
      {
        if (v38)
        {
          v39 = 16;
        }

        else
        {
          v39 = 8;
        }

        LOWORD(v37) = *&v5->_navigationItemFlags & 0xFFE7 | v39;
      }

      else
      {
        if (v38)
        {
          v50 = 4;
        }

        else
        {
          v50 = 0;
        }

        LOWORD(v37) = *&v5->_navigationItemFlags & 0xFFFB | v50;
      }
    }

    *&v5->_navigationItemFlags = v37;
LABEL_34:
    v40 = [(NSCoder *)v4 decodeObjectForKey:@"UINavigationBar"];
    objc_storeWeak(&v5->_navigationBar, v40);

    v41 = [(NSCoder *)v4 decodeObjectForKey:@"UINavigationBarStandardAppearance"];
    standardAppearance = v5->_standardAppearance;
    v5->_standardAppearance = v41;

    v43 = [(NSCoder *)v4 decodeObjectForKey:@"UINavigationBarCompactAppearance"];
    compactAppearance = v5->_compactAppearance;
    v5->_compactAppearance = v43;

    v45 = [(NSCoder *)v4 decodeObjectForKey:@"UINavigationBarScrollEdgeAppearance"];
    scrollEdgeAppearance = v5->_scrollEdgeAppearance;
    v5->_scrollEdgeAppearance = v45;

    v47 = [(NSCoder *)v4 decodeObjectForKey:@"UINavigationBarCompactScrollEdgeAppearance"];
    compactScrollEdgeAppearance = v5->_compactScrollEdgeAppearance;
    v5->_compactScrollEdgeAppearance = v47;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v24 = a3;
  if ([(NSAttributedString *)self->_attributedTitle length])
  {
    v4 = [(NSAttributedString *)self->_attributedTitle string];
    [v24 encodeObject:v4 forKey:@"UITitle"];

    [v24 encodeObject:self->_attributedTitle forKey:@"UIAttributedTitle"];
  }

  prompt = self->_prompt;
  if (prompt)
  {
    [v24 encodeObject:prompt forKey:@"UIPrompt"];
  }

  backButtonTitle = self->_backButtonTitle;
  if (backButtonTitle)
  {
    [v24 encodeObject:backButtonTitle forKey:@"UIBackButtonTitle"];
  }

  backBarButtonItem = self->_backBarButtonItem;
  if (backBarButtonItem)
  {
    [v24 encodeObject:backBarButtonItem forKey:@"UIBackBarButtonItem"];
  }

  backButtonDisplayMode = self->_backButtonDisplayMode;
  if (backButtonDisplayMode)
  {
    [v24 encodeInteger:backButtonDisplayMode forKey:@"UIBackButtonDisplayMode"];
  }

  if ((*&self->_navigationItemFlags & 2) != 0)
  {
    [v24 encodeBool:1 forKey:@"UILeftItemsSupplementBackButton"];
  }

  v9 = [(NSArray *)self->_leftBarButtonItems firstObject];
  if (v9)
  {
    [v24 encodeObject:v9 forKey:@"UILeftBarButtonItem"];
  }

  v10 = [(NSArray *)self->_rightBarButtonItems firstObject];
  if (v10)
  {
    [v24 encodeObject:v10 forKey:@"UIRightBarButtonItem"];
  }

  leftBarButtonItems = self->_leftBarButtonItems;
  if (leftBarButtonItems)
  {
    [v24 encodeObject:leftBarButtonItems forKey:@"UILeftBarButtonItems"];
  }

  titleView = self->_titleView;
  if (titleView)
  {
    [v24 encodeObject:titleView forKey:@"UITitleView"];
  }

  centerItemGroups = self->_centerItemGroups;
  if (centerItemGroups)
  {
    [v24 encodeObject:centerItemGroups forKey:@"UICenterItemGroups"];
  }

  customizationIdentifier = self->_customizationIdentifier;
  if (customizationIdentifier)
  {
    [v24 encodeObject:customizationIdentifier forKey:@"UICustomizationIdentifier"];
  }

  style = self->_style;
  if (style)
  {
    [v24 encodeInteger:style forKey:@"UIStyle"];
  }

  rightBarButtonItems = self->_rightBarButtonItems;
  if (rightBarButtonItems)
  {
    [v24 encodeObject:rightBarButtonItems forKey:@"UIRightBarButtonItems"];
  }

  if (dyld_program_sdk_at_least())
  {
    [v24 encodeInteger:self->_largeTitleDisplayMode forKey:@"UILargeTitleDisplayMode"];
  }

  navigationItemFlags = self->_navigationItemFlags;
  v18 = (navigationItemFlags >> 3) & 3;
  if (v18)
  {
    [v24 encodeInteger:v18 forKey:@"UINavigationItemSearchBarVisibilityWhenScrolling"];
  }

  else if ((navigationItemFlags & 4) != 0)
  {
    [v24 encodeBool:1 forKey:@"UIAlwaysShowsSearchBar"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
  if (WeakRetained)
  {
    [v24 encodeConditionalObject:WeakRetained forKey:@"UINavigationBar"];
  }

  standardAppearance = self->_standardAppearance;
  if (standardAppearance)
  {
    [v24 encodeObject:standardAppearance forKey:@"UINavigationBarStandardAppearance"];
  }

  compactAppearance = self->_compactAppearance;
  if (compactAppearance)
  {
    [v24 encodeObject:compactAppearance forKey:@"UINavigationBarCompactAppearance"];
  }

  scrollEdgeAppearance = self->_scrollEdgeAppearance;
  if (scrollEdgeAppearance)
  {
    [v24 encodeObject:scrollEdgeAppearance forKey:@"UINavigationBarScrollEdgeAppearance"];
  }

  compactScrollEdgeAppearance = self->_compactScrollEdgeAppearance;
  if (compactScrollEdgeAppearance)
  {
    [v24 encodeObject:compactScrollEdgeAppearance forKey:@"UINavigationBarCompactScrollEdgeAppearance"];
  }
}

- (void)_freezeCurrentTitleView
{
  v12 = [(UINavigationItem *)self _defaultTitleView];
  [v12 bounds];
  if (v3 > 0.0 && v4 > 0.0)
  {
    _UIGraphicsBeginImageContextWithOptions(0, 0, v3, v4, 0.0);
    v5 = [v12 layer];
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    [v5 renderInContext:v7];

    v8 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    if (v8)
    {
      if (self->_frozenTitleView)
      {
        [(UINavigationItem *)self _cleanupFrozenTitleView];
      }

      v9 = [[UIImageView alloc] initWithImage:v8];
      frozenTitleView = self->_frozenTitleView;
      self->_frozenTitleView = v9;

      [(UIView *)self->_frozenTitleView setAlpha:1.0];
      [v12 frame];
      [(UIImageView *)self->_frozenTitleView setFrame:?];
      v11 = [v12 superview];
      [v11 addSubview:self->_frozenTitleView];

      [v12 setAlpha:0.0];
    }
  }
}

- (void)_cleanupFrozenTitleView
{
  [(UIView *)self->_frozenTitleView removeFromSuperview];
  frozenTitleView = self->_frozenTitleView;
  self->_frozenTitleView = 0;
}

- (id)_addDefaultTitleViewToNavigationBarIfNecessary:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (v4 && !self->_titleView)
  {
    if ([v4 _isAlwaysHidden])
    {
      v6 = 0;
      goto LABEL_9;
    }

    v7 = [(UINavigationItem *)self _defaultTitleView];
    v6 = v7;
    if (v7)
    {
      v8 = [v7 superview];
      if (v8)
      {
LABEL_7:

        goto LABEL_9;
      }

      v9 = [v5 topItem];

      if (v9 == self)
      {
        v8 = [v5 _contentView];
        [v8 addSubview:v6];
        goto LABEL_7;
      }
    }
  }

LABEL_9:

  return v6;
}

- (void)_setTitle:(id)a3 animated:(BOOL)a4 matchBarButtonItemAnimationDuration:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    if (v8)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
    }

    else
    {
      v10 = 0;
    }

    attributedTitle = self->_attributedTitle;
    v12 = v10;
    v13 = attributedTitle;
    v14 = v13;
    if (v12 != v13)
    {
      if (v12 && v13)
      {
        v15 = [(NSAttributedString *)v12 isEqual:v13];

        if (v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }

      WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
      if (WeakRetained)
      {
        objc_storeStrong(&self->_attributedTitle, v10);
        if ([WeakRetained navigationItemIsTopItem:self])
        {
          [WeakRetained navigationItemUpdatedTitleContent:self animated:1];
        }

        else if ([WeakRetained navigationItemIsBackItem:self])
        {
          [WeakRetained navigationItemUpdatedBackButtonContent:self animated:0];
        }
      }

      else
      {
        v17 = objc_loadWeakRetained(&self->_navigationBar);
        v18 = v17;
        if (v17)
        {
          if ([v17 state])
          {
            [(UINavigationItem *)self _setPendingTitle:v9];
          }

          else
          {
            [(UINavigationItem *)self _freezeCurrentTitleView];
            objc_storeStrong(&self->_attributedTitle, v10);
            [(UINavigationItem *)self _setPendingTitle:0];
            v19 = [(UINavigationItem *)self _addDefaultTitleViewToNavigationBarIfNecessary:v18];
            [v19 _resetTitleSize];
            [(UIView *)self->_backButtonView setNeedsDisplay];
            [v19 setNeedsDisplay];
            [v18 setNeedsLayout];
            if (v5)
            {
              v20 = 0.35;
            }

            else
            {
              v20 = 0.175;
            }

            v21 = [v18 animationFactory];
            v23[4] = self;
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __75__UINavigationItem__setTitle_animated_matchBarButtonItemAnimationDuration___block_invoke;
            v24[3] = &unk_1E70F35B8;
            v24[4] = self;
            v25 = v19;
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __75__UINavigationItem__setTitle_animated_matchBarButtonItemAnimationDuration___block_invoke_2;
            v23[3] = &unk_1E70F5AC0;
            v22 = v19;
            [UIView _animateWithDuration:393216 delay:v21 options:v24 factory:v23 animations:v20 completion:0.0];
          }
        }
      }

      goto LABEL_27;
    }

LABEL_27:
    goto LABEL_28;
  }

  [(UINavigationItem *)self setTitle:v8];
LABEL_28:
}

uint64_t __75__UINavigationItem__setTitle_animated_matchBarButtonItemAnimationDuration___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 128) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

- (void)setTitle:(NSString *)title
{
  v5 = [(UINavigationItem *)self _effectiveTitleForTitle:title];
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
  }

  else
  {
    v4 = 0;
  }

  [(UINavigationItem *)self _setAttributedTitle:v4];
}

- (void)setAttributedTitle:(id)a3
{
  v4 = a3;
  v5 = self->_attributedTitle;
  v6 = v4;
  v17 = v6;
  if (v5 == v6)
  {

LABEL_19:
    v8 = v17;
    goto LABEL_20;
  }

  if (!v6 || !v5)
  {

    v8 = v17;
LABEL_8:
    v9 = [(NSAttributedString *)v8 copy];
    attributedTitle = self->_attributedTitle;
    self->_attributedTitle = v9;

    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      if ([(NSAttributedString *)WeakRetained navigationItemIsTopItem:self])
      {
        [(NSAttributedString *)v5 navigationItemUpdatedTitleContent:self animated:_UIBarsAnimatingSystemChanges()];
        [(NSAttributedString *)v5 navigationItemUpdatedLargeTitleContent:self];
      }

      else if ([(NSAttributedString *)v5 navigationItemIsBackItem:self])
      {
        [(NSAttributedString *)v5 navigationItemUpdatedBackButtonContent:self animated:0];
      }
    }

    else
    {
      v12 = objc_loadWeakRetained(&self->_navigationBar);
      if (v12)
      {
        v13 = [(UINavigationItem *)self _addDefaultTitleViewToNavigationBarIfNecessary:v12];
        [v13 _resetTitleSize];
        [(UINavigationItem *)self _setPendingTitle:0];
        [(UIView *)self->_backButtonView setNeedsDisplay];
        [v13 setNeedsDisplay];
        [v12 setNeedsLayout];
        if ([v12 state])
        {
          v14 = [v12 topItem];

          if (v14 == self)
          {
            v15 = [v12 backItem];
            v16 = [v15 backButtonView];
            [v16 _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
          }
        }

        [v12 _accessibility_navigationBarContentsDidChange];
      }

      v5 = 0;
    }

    goto LABEL_19;
  }

  v7 = [(NSAttributedString *)v5 isEqual:v6];

  v8 = v17;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_20:
}

- (void)setLargeTitle:(id)a3
{
  v4 = a3;
  largeTitle = self->_largeTitle;
  v13 = v4;
  v6 = largeTitle;
  if (v6 == v13)
  {

    v9 = v13;
LABEL_11:

    v8 = v13;
    goto LABEL_12;
  }

  if (!v13 || !v6)
  {

    v8 = v13;
    goto LABEL_8;
  }

  v7 = [(NSString *)v13 isEqual:v6];

  v8 = v13;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v10 = [(NSString *)v8 copy];
    v11 = self->_largeTitle;
    self->_largeTitle = v10;

    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v9 = WeakRetained;
    if (WeakRetained && [(NSString *)WeakRetained navigationItemIsTopItem:self])
    {
      [(NSString *)v9 navigationItemUpdatedLargeTitleContent:self];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_setLargeTitleView:(id)a3
{
  v5 = a3;
  v6 = self->_largeTitleView;
  v7 = v5;
  v10 = v7;
  if (v6 == v7)
  {

LABEL_11:
    goto LABEL_12;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(UIView *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_largeTitleView, a3);
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v6 = WeakRetained;
    if (WeakRetained && [(UIView *)WeakRetained navigationItemIsTopItem:self])
    {
      [(UIView *)v6 navigationItemUpdatedLargeTitleContent:self];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (id)_effectiveTitleForTitle:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    if ([v6 length])
    {
      v12 = v6;
    }

    else
    {
      v12 = _UILocalizedFormat(@"NAVIGATION_TITLE_QUOTES", @"The title in quotes", @"“%@”", v7, v8, v9, v10, v11, v4);
    }

    v13 = v12;
  }

  else
  {
    v13 = [v4 copy];
  }

  return v13;
}

- (void)setSubtitle:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AAB0];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  [(UINavigationItem *)self setAttributedSubtitle:v6];
}

- (void)setAttributedSubtitle:(id)a3
{
  v4 = a3;
  attributedSubtitle = self->_attributedSubtitle;
  v13 = v4;
  v6 = attributedSubtitle;
  if (v6 == v13)
  {

    v9 = v13;
LABEL_11:

    v8 = v13;
    goto LABEL_12;
  }

  if (!v13 || !v6)
  {

    v8 = v13;
    goto LABEL_8;
  }

  v7 = [(NSAttributedString *)v13 isEqual:v6];

  v8 = v13;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v10 = [(NSAttributedString *)v8 copy];
    v11 = self->_attributedSubtitle;
    self->_attributedSubtitle = v10;

    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v9 = WeakRetained;
    if (WeakRetained && [(NSAttributedString *)WeakRetained navigationItemIsTopItem:self])
    {
      [(NSAttributedString *)v9 navigationItemUpdatedTitleContent:self animated:_UIBarsAnimatingSystemChanges()];
      [(NSAttributedString *)v9 navigationItemUpdatedLargeTitleContent:self];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setSubtitleView:(id)a3
{
  v5 = a3;
  subtitleView = self->_subtitleView;
  v11 = v5;
  v7 = subtitleView;
  if (v7 == v11)
  {

    v9 = v11;
LABEL_11:

    goto LABEL_12;
  }

  if (!v11 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(UIView *)v11 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_subtitleView, a3);
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v9 = WeakRetained;
    if (WeakRetained && [(UIView *)WeakRetained navigationItemIsTopItem:self])
    {
      [(UIView *)v9 navigationItemUpdatedTitleContent:self animated:_UIBarsAnimatingSystemChanges()];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setLargeSubtitle:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AAB0];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  [(UINavigationItem *)self setLargeAttributedSubtitle:v6];
}

- (void)setLargeAttributedSubtitle:(id)a3
{
  v4 = a3;
  largeAttributedSubtitle = self->_largeAttributedSubtitle;
  v13 = v4;
  v6 = largeAttributedSubtitle;
  if (v6 == v13)
  {

    v9 = v13;
LABEL_11:

    v8 = v13;
    goto LABEL_12;
  }

  if (!v13 || !v6)
  {

    v8 = v13;
    goto LABEL_8;
  }

  v7 = [(NSAttributedString *)v13 isEqual:v6];

  v8 = v13;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v10 = [(NSAttributedString *)v8 copy];
    v11 = self->_largeAttributedSubtitle;
    self->_largeAttributedSubtitle = v10;

    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v9 = WeakRetained;
    if (WeakRetained && [(NSAttributedString *)WeakRetained navigationItemIsTopItem:self])
    {
      [(NSAttributedString *)v9 navigationItemUpdatedLargeTitleContent:self];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setLargeSubtitleView:(id)a3
{
  v5 = a3;
  largeSubtitleView = self->_largeSubtitleView;
  v11 = v5;
  v7 = largeSubtitleView;
  if (v7 == v11)
  {
    v9 = v11;
    goto LABEL_11;
  }

  if (!v11 || !v7)
  {

LABEL_8:
    objc_storeStrong(&self->_largeSubtitleView, a3);
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v9 = WeakRetained;
    if (!WeakRetained || ![(UIView *)WeakRetained navigationItemIsTopItem:self])
    {
      goto LABEL_12;
    }

    v7 = objc_loadWeakRetained(&self->__changeObserver);
    [(UIView *)v7 navigationItemUpdatedLargeTitleContent:self];
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  v8 = [(UIView *)v11 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
}

- (void)setLargeTitleDisplayMode:(UINavigationItemLargeTitleDisplayMode)largeTitleDisplayMode
{
  if (self->_largeTitleDisplayMode != largeTitleDisplayMode)
  {
    self->_largeTitleDisplayMode = largeTitleDisplayMode;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedLargeTitleDisplayMode:self];
  }
}

- (void)_setLargeTitleAccessoryView:(id)a3 alignToBaseline:(BOOL)a4 horizontalAlignment:(unint64_t)a5
{
  v6 = a4;
  v9 = a3;
  if (self->__largeTitleAccessoryView != v9 || self->__alignLargeTitleAccessoryViewToBaseline != v6 || self->__largeTitleAccessoryViewHorizontalAlignment != a5)
  {
    v11 = v9;
    objc_storeStrong(&self->__largeTitleAccessoryView, a3);
    self->__alignLargeTitleAccessoryViewToBaseline = v6;
    self->__largeTitleAccessoryViewHorizontalAlignment = a5;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedLargeTitleContent:self];

    v9 = v11;
  }
}

- (void)_setLargeTitleTwoLineMode:(unint64_t)a3
{
  if (self->__largeTitleTwoLineMode != a3)
  {
    self->__largeTitleTwoLineMode = a3;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedLargeTitleContent:self];
  }
}

- (void)_setWeeTitle:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->__weeTitle isEqualToString:?])
  {
    v4 = [v7 copy];
    weeTitle = self->__weeTitle;
    self->__weeTitle = v4;

    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedTitleContent:self animated:_UIBarsAnimatingSystemChanges()];
  }
}

- (void)_setBackgroundHidden:(BOOL)a3
{
  if (self->__backgroundHidden != a3)
  {
    self->__backgroundHidden = a3;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedBackgroundAppearance:self];
  }
}

- (void)_setPreferredNavigationBarVisibility:(unint64_t)a3
{
  if (self->__preferredNavigationBarVisibility != a3)
  {
    v5 = [(UINavigationItem *)self _navigationBarVisibility];
    self->__preferredNavigationBarVisibility = a3;
    if ([(UINavigationItem *)self _navigationBarVisibility]!= v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
      [WeakRetained navigationItemUpdatedNavigationBarVisibility:self];
    }
  }
}

- (void)_setNavigationBarHidden:(BOOL)a3
{
  if (self->__navigationBarHidden != a3)
  {
    self->__navigationBarHidden = a3;
    if (!self->__preferredNavigationBarVisibility)
    {
      WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
      [WeakRetained navigationItemUpdatedNavigationBarVisibility:self];
    }
  }
}

- (void)_setAllowsInteractivePop:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1024;
  }

  *&self->_navigationItemFlags = *&self->_navigationItemFlags & 0xFBFF | v3;
}

- (void)_setAllowsInteractivePopWhenNavigationBarHidden:(BOOL)a3
{
  if (a3)
  {
    v4 = 2048;
  }

  else
  {
    v4 = 0;
  }

  *&self->_navigationItemFlags = *&self->_navigationItemFlags & 0xF7FF | v4;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->__changeObserver);
    [v7 navigationItemUpdatedAllowsInteractivePopWhenNavigationBarHidden:self];
  }
}

- (void)_setAllowsInteractivePopWhenBackButtonHidden:(BOOL)a3
{
  if (a3)
  {
    v4 = 4096;
  }

  else
  {
    v4 = 0;
  }

  *&self->_navigationItemFlags = *&self->_navigationItemFlags & 0xEFFF | v4;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->__changeObserver);
    [v7 navigationItemUpdatedAllowsInteractivePopWhenBackButtonHidden:self];
  }
}

- (void)setCompactAppearance:(UINavigationBarAppearance *)compactAppearance
{
  v4 = compactAppearance;
  v5 = self->_compactAppearance;
  v6 = v4;
  v13 = v6;
  if (v5 == v6)
  {

    goto LABEL_12;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = self->_compactAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v13 copy];
  v10 = self->_compactAppearance;
  self->_compactAppearance = v9;

  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  [WeakRetained navigationItem:self appearance:self->_compactAppearance categoriesChanged:-1];

  v12 = self->_compactAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, self);
  }

LABEL_12:
}

- (void)setStandardAppearance:(UINavigationBarAppearance *)standardAppearance
{
  v4 = standardAppearance;
  v5 = self->_standardAppearance;
  v6 = v4;
  v13 = v6;
  if (v5 == v6)
  {

    goto LABEL_12;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = self->_standardAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v13 copy];
  v10 = self->_standardAppearance;
  self->_standardAppearance = v9;

  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  [WeakRetained navigationItem:self appearance:self->_standardAppearance categoriesChanged:-1];

  v12 = self->_standardAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, self);
  }

LABEL_12:
}

- (void)setScrollEdgeAppearance:(UINavigationBarAppearance *)scrollEdgeAppearance
{
  v4 = scrollEdgeAppearance;
  v5 = self->_scrollEdgeAppearance;
  v6 = v4;
  v13 = v6;
  if (v5 == v6)
  {

    goto LABEL_12;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = self->_scrollEdgeAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v13 copy];
  v10 = self->_scrollEdgeAppearance;
  self->_scrollEdgeAppearance = v9;

  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  [WeakRetained navigationItem:self appearance:self->_scrollEdgeAppearance categoriesChanged:-1];

  v12 = self->_scrollEdgeAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, self);
  }

LABEL_12:
}

- (void)setCompactScrollEdgeAppearance:(UINavigationBarAppearance *)compactScrollEdgeAppearance
{
  v4 = compactScrollEdgeAppearance;
  v5 = self->_compactScrollEdgeAppearance;
  v6 = v4;
  v13 = v6;
  if (v5 == v6)
  {

    goto LABEL_12;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = self->_compactScrollEdgeAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v13 copy];
  v10 = self->_compactScrollEdgeAppearance;
  self->_compactScrollEdgeAppearance = v9;

  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  [WeakRetained navigationItem:self appearance:self->_compactScrollEdgeAppearance categoriesChanged:-1];

  v12 = self->_compactScrollEdgeAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, self);
  }

LABEL_12:
}

- (void)_searchControllerReadyForDeferredAutomaticShowsScopeBar
{
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  [WeakRetained navigationItemSearchControllerReadyForDeferredAutomaticShowsScopeBar:self];
}

- (BOOL)_shouldSearchControllerDeferPresentationTransition:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  LOBYTE(v3) = [WeakRetained shouldSearchControllerDeferPresentationTransitionForNavigationItem:v3];

  return v3;
}

- (void)_setBackButtonTitle:(id)a3 lineBreakMode:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_backButtonTitle != v6)
  {
    v17 = v6;
    v8 = [(NSString *)v6 isEqualToString:?];
    v7 = v17;
    if (!v8)
    {
      v9 = [(NSString *)v17 copy];
      backButtonTitle = self->_backButtonTitle;
      self->_backButtonTitle = v9;

      WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
      if (WeakRetained)
      {
        [WeakRetained navigationItemUpdatedBackButtonContent:self animated:_UIBarsAnimatingSystemChanges()];
      }

      else
      {
        v12 = objc_loadWeakRetained(&self->_navigationBar);
        if (v12)
        {
          v13 = self->_backButtonTitle;
          if (v13 && [(NSString *)v13 length])
          {
            v14 = [(UINavigationItem *)self backButtonView];
            backButtonView = self->_backButtonView;
            self->_backButtonView = v14;
          }

          else
          {
            [(UINavigationItem *)self _removeBackButtonView];
          }

          [(UIView *)self->_backButtonView _setLineBreakMode:a4];
          [(UIView *)self->_backButtonView _resetTitleSize];
          [(UIView *)self->_backButtonView setNeedsDisplay];
          v16 = [(UINavigationItem *)self _defaultTitleView];
          [v16 setNeedsDisplay];
          [v12 setNeedsLayout];
        }
      }

      v7 = v17;
    }
  }
}

- (void)setBackBarButtonItem:(UIBarButtonItem *)backBarButtonItem
{
  v5 = backBarButtonItem;
  if (self->_backBarButtonItem != v5)
  {
    object = v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = [(UIView *)self->_backButtonView _appearanceStorage];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&self->_backBarButtonItem, backBarButtonItem);
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    if (WeakRetained)
    {
      [WeakRetained navigationItemUpdatedBackButtonContent:self animated:_UIBarsAnimatingSystemChanges()];
    }

    else
    {
      v9 = objc_loadWeakRetained(&self->_navigationBar);
      v10 = v9;
      if (v9)
      {
        if (self->_backBarButtonItem)
        {
          backButtonView = self->_backButtonView;
          if (backButtonView == 0 || v7)
          {
            if (v7)
            {
              [(UINavigationItem *)self _removeBackButtonView];
            }

            v12 = [(UINavigationItem *)self backButtonView];
            v13 = self->_backButtonView;
            self->_backButtonView = v12;
          }

          else
          {
            v14 = [v9 _appearanceStorage];
            v15 = [v14 _barButtonAppearanceStorage];
            [(UIView *)backButtonView _applyBarButtonAppearanceStorage:v15 withTaggedSelectors:0];

            v16 = self->_backButtonView;
            v17 = [(UIBarButtonItem *)object _appearanceStorage];
            v18 = objc_getAssociatedObject(object, &_UIAppearanceCustomizedSelectorsAssociationKey);
            [(UIView *)v16 _applyBarButtonAppearanceStorage:v17 withTaggedSelectors:v18];
          }
        }

        else
        {
          [(UINavigationItem *)self _removeBackButtonView];
        }

        [(UIView *)self->_backButtonView setNeedsDisplay];
        v19 = [(UINavigationItem *)self _defaultTitleView];
        [v19 setNeedsDisplay];
        [v10 setNeedsLayout];
        [v10 _accessibility_navigationBarContentsDidChange];
      }
    }

    v5 = object;
  }
}

- (id)currentBackButtonTitle
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIView *)self->_backButtonView title];
    v4 = [v3 copy];
  }

  else
  {
    v4 = [(UINavigationItem *)self backButtonTitle];
  }

  return v4;
}

- (id)_backButtonTitleAllowingGenericTitles:(BOOL)a3 allowingDefaultTitles:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    backButtonDisplayMode = self->_backButtonDisplayMode;
    if (backButtonDisplayMode == 1)
    {
LABEL_13:
      if (v4 || (*&self->_navigationItemFlags & 0x2000) != 0)
      {
        v11 = [(UINavigationItem *)self _abbreviatedBackButtonTitles];
        v9 = [v11 firstObject];

        if (v9)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }

    if (backButtonDisplayMode)
    {
LABEL_16:
      v9 = &stru_1EFB14550;
      goto LABEL_17;
    }
  }

  backBarButtonItem = self->_backBarButtonItem;
  if (backBarButtonItem)
  {
    v8 = [(UIBarButtonItem *)backBarButtonItem title];
    if (v8)
    {
      v9 = v8;
      goto LABEL_17;
    }
  }

  v9 = self->_backButtonTitle;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
  }

  if (!v10)
  {
    v9 = [(NSAttributedString *)self->_attributedTitle string];
  }

  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_17:

  return v9;
}

- (void)_removeBarButtonItemViews
{
  v3 = [(UINavigationItem *)self leftBarButtonItems];
  __45__UINavigationItem__removeBarButtonItemViews__block_invoke(v3);

  v4 = [(UINavigationItem *)self rightBarButtonItems];
  __45__UINavigationItem__removeBarButtonItemViews__block_invoke(v4);
}

void __45__UINavigationItem__removeBarButtonItemViews__block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) view];
        [v6 removeFromSuperview];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)_removeTitleAndButtonViews
{
  [(UINavigationItem *)self _removeBackButtonView];
  v3 = [(UINavigationItem *)self titleView];
  [v3 removeFromSuperview];

  [(UIView *)self->_defaultTitleView removeFromSuperview];
  defaultTitleView = self->_defaultTitleView;
  self->_defaultTitleView = 0;
}

- (void)_removeBackButtonView
{
  [(UIView *)self->_backButtonView removeFromSuperview];
  backButtonView = self->_backButtonView;
  self->_backButtonView = 0;
}

- (void)_replaceCustomLeftRightViewAtIndex:(unint64_t)a3 withView:(id)a4 left:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  [v12 _uinavigationbar_prepareToAppearInNavigationItem:self onLeft:v5];
  v8 = 112;
  if (v5)
  {
    v8 = 104;
  }

  v9 = *(&self->super.isa + v8);
  v10 = [v9 objectAtIndex:a3];
  if (v10 != v12)
  {
    v11 = [v9 mutableCopy];
    [v11 replaceObjectAtIndex:a3 withObject:v12];
    if (v5)
    {
      [(UINavigationItem *)self _setCustomLeftViews:v11];
    }

    else
    {
      [(UINavigationItem *)self _setCustomRightViews:v11];
    }
  }
}

- (id)backButtonView
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
  v4 = [WeakRetained _screen];
  v5 = [WeakRetained _shouldShowBackButtonForScreen:v4];

  if (v5)
  {
    backButtonView = self->_backButtonView;
    if (!backButtonView)
    {
      v7 = [[_UINavigationItemButtonView alloc] initWithNavigationItem:self];
      v8 = self->_backButtonView;
      self->_backButtonView = &v7->super.super;

      v9 = self->_backButtonView;
      v10 = [WeakRetained _appearanceStorage];
      v11 = [v10 _barButtonAppearanceStorage];
      [(UIView *)v9 _applyBarButtonAppearanceStorage:v11 withTaggedSelectors:0];

      v12 = self->_backButtonView;
      v13 = [(UIBarButtonItem *)self->_backBarButtonItem _appearanceStorage];
      v14 = objc_getAssociatedObject(self->_backBarButtonItem, &_UIAppearanceCustomizedSelectorsAssociationKey);
      [(UIView *)v12 _applyBarButtonAppearanceStorage:v13 withTaggedSelectors:v14];

      -[UIView setSemanticContentAttribute:](self->_backButtonView, "setSemanticContentAttribute:", [WeakRetained semanticContentAttribute]);
      v15 = [_UIAppearance _hasCustomizationsForClass:objc_opt_class() guideClass:[(UIView *)self->_backButtonView _appearanceGuideClass]];
      backButtonView = self->_backButtonView;
      if (v15)
      {
        [(UIView *)backButtonView _setAppearanceIsInvalid:1];
        backButtonView = self->_backButtonView;
      }
    }

    v16 = backButtonView;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setTitleView:(UIView *)titleView
{
  v5 = titleView;
  v6 = self->_titleView;
  if (v6 != v5)
  {
    v12 = v5;
    v7 = _UINavigationBarCastToAugmentedTitleView(v6);
    [v7 _setDataSource:0 navigationItem:0 titleLocation:0];

    objc_storeStrong(&self->_titleView, titleView);
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      if ([WeakRetained navigationItemIsTopItem:self])
      {
        [v9 navigationItemUpdatedTitleContent:self animated:_UIBarsAnimatingSystemChanges()];
      }
    }

    else
    {
      v10 = objc_loadWeakRetained(&self->_navigationBar);
      if (v10)
      {
        if (v12)
        {
          [(UIView *)v12 frame];
          Width = CGRectGetWidth(v14);
        }

        else
        {
          Width = 0.0;
        }

        [(UINavigationItem *)self _setIdealCustomTitleWidth:Width];
        if (!self->_titleView)
        {
          [(UIView *)self->_defaultTitleView removeFromSuperview];
        }

        [v10 _updateTitleViewIfTop:self];
        [v10 _accessibility_navigationBarContentsDidChange];
      }
    }

    v5 = v12;
  }
}

- (void)_setTitleViewDataSource:(id)a3
{
  v9 = a3;
  v4 = _UINavigationBarCastToAugmentedTitleView(self->_titleView);
  v5 = v4;
  if (v4)
  {
    if (v9)
    {
      v6 = v9;
      v7 = self;
      v8 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }

    [v4 _setDataSource:v6 navigationItem:v7 titleLocation:v8];
  }
}

- (void)setPrompt:(NSString *)prompt
{
  if (self->_prompt != prompt)
  {
    v5 = [(NSString *)prompt copy];
    v6 = self->_prompt;
    self->_prompt = v5;

    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained navigationItemUpdatedPromptContent:self];
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_navigationBar);
      [v8 updatePrompt];
      [v8 _accessibility_navigationBarContentsDidChange];
    }
  }
}

- (void)updateNavigationBarButtonsAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
  [WeakRetained _updateContentIfTopItem:self animated:v3];
}

- (void)setHidesBackButton:(BOOL)hidesBackButton
{
  v3 = hidesBackButton;
  v5 = _UIBarsAnimatingSystemChanges();

  [(UINavigationItem *)self setHidesBackButton:v3 animated:v5];
}

- (void)setHidesBackButton:(BOOL)hidesBackButton animated:(BOOL)animated
{
  navigationItemFlags = self->_navigationItemFlags;
  if ((navigationItemFlags & 1) != hidesBackButton)
  {
    v6 = animated;
    *&self->_navigationItemFlags = navigationItemFlags & 0xFFFE | hidesBackButton;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained navigationItemUpdatedContentLayout:self animated:v6];
    }

    else
    {
      v9 = objc_loadWeakRetained(&self->_navigationBar);
      [v9 _updateBackButtonVisibilityIfTop:self animated:v6];
      [v9 _accessibility_navigationBarContentsDidChange];
    }
  }
}

- (BOOL)_leftItemsWantBackButton
{
  if ([(NSArray *)self->_leftBarButtonItems count])
  {
    v3 = [(NSArray *)self->_leadingItemGroups count]!= 0;
  }

  else
  {
    v3 = 1;
  }

  return (v3 | (*&self->_navigationItemFlags >> 1)) & 1;
}

- (BOOL)_wantsBackButtonIndicator
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_leftBarButtonItems;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (([v6 isHidden] & 1) == 0)
        {
          LOBYTE(v3) = [v6 _showsBackButtonIndicator];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)_buttonForBackButtonIndicator
{
  v2 = [(UINavigationItem *)self _barButtonForBackButtonIndicator];
  v3 = [v2 view];

  return v3;
}

- (void)_messageChangeObserver:(id)a3 forTransitionFromSearchController:(id)a4
{
  v10 = a4;
  v6 = a3;
  [v6 navigationItemUpdatedSearchController:self oldSearchController:v10];
  v7 = [v6 navigationItemIsTopItem:self];

  v8 = v10;
  if (v7)
  {
    v9 = [v10 _navigationItemCurrentlyDisplayingSearchController];

    if (v9 == self)
    {
      [v10 _setNavigationItemCurrentlyDisplayingSearchController:0];
    }

    [(UISearchController *)self->_searchController _setNavigationItemCurrentlyDisplayingSearchController:self];
    v8 = v10;
  }
}

- (void)setSearchController:(UISearchController *)searchController
{
  v5 = searchController;
  if (self->_searchController != v5)
  {
    v12 = v5;
    v6 = [(UISearchController *)v5 searchBar];
    [v6 _resetIfNecessaryForNavigationBarHosting:1];

    v7 = self->_searchController;
    objc_storeStrong(&self->_searchController, searchController);
    v8 = [(UINavigationItem *)self _hasIntegratedSearchBarInNavigationBar];
    v9 = [(UISearchController *)v12 searchBar];
    [v9 _setHostedInlineByNavigationBar:v8];

    if (!v8)
    {
      v10 = [(UISearchController *)v12 searchBar];
      [v10 _setHostedInlineByToolbar:{-[UINavigationItem _hasIntegratedSearchBarInToolbar](self, "_hasIntegratedSearchBarInToolbar")}];
    }

    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    if (WeakRetained)
    {
      [(UINavigationItem *)self _messageChangeObserver:WeakRetained forTransitionFromSearchController:v7];
    }

    v5 = v12;
  }
}

- (void)_setChangeObserver:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->__changeObserver);

    objc_storeWeak(&self->__changeObserver, obj);
    v5 = obj;
    if (!v6)
    {
      if (self->_searchController)
      {
        [(UINavigationItem *)self _messageChangeObserver:obj forTransitionFromSearchController:0];
        v5 = obj;
      }
    }
  }
}

- (void)setPreferredSearchBarPlacement:(UINavigationItemSearchBarPlacement)preferredSearchBarPlacement
{
  if (self->_preferredSearchBarPlacement != preferredSearchBarPlacement)
  {
    self->_preferredSearchBarPlacement = preferredSearchBarPlacement;
    [(UINavigationItem *)self _updateSearchBarItemGroupForPreferredPlacementChange:1];
    v6 = [(UINavigationItem *)self _hasIntegratedSearchBarInNavigationBar];
    v7 = [(UINavigationItem *)self _searchControllerIfAllowed];
    v9 = [v7 searchBar];

    [v9 _setHostedInlineByNavigationBar:v6];
    if (!v6)
    {
      [v9 _setHostedInlineByToolbar:{-[UINavigationItem _hasIntegratedSearchBarInToolbar](self, "_hasIntegratedSearchBarInToolbar")}];
    }

    [(UIBarButtonItem *)self->_searchBarPlacementBarButtonItem _setPrefersCollapsedRepresentationInToolbar:preferredSearchBarPlacement == 4];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedSearchController:self oldSearchController:self->_searchController];
  }
}

- (void)_confirmedSearchBarPlacementBarButtonItem
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 searchBarPlacementBarButtonItem];
    v3 = v2;
    if (v2 == v1[33])
    {
      v1 = v2;
    }

    else
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [v4 raise:v5 format:{@"An override of searchBarPlacementBarButtonItem has returned an unexpected object: <%@: %p>", v7, v3}];

      v1 = 0;
    }
  }

  return v1;
}

- (void)setSearchBarPlacementAllowsToolbarIntegration:(BOOL)a3
{
  navigationItemFlags = self->_navigationItemFlags;
  if (a3 == (navigationItemFlags & 0x4000) >> 14)
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0x4000;
    }

    *&self->_navigationItemFlags = navigationItemFlags & 0xBFFF | v6;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedSearchBarPlacementAllowsToolbarIntegration:self];
  }
}

- (void)setSearchBarPlacementAllowsExternalIntegration:(BOOL)a3
{
  navigationItemFlags = self->_navigationItemFlags;
  if ((((*&navigationItemFlags >= 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 0x8000;
    }

    else
    {
      v6 = 0;
    }

    *&self->_navigationItemFlags = v6 & 0x8000 | *&navigationItemFlags & 0x7FFF;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained navigationItemUpdatedSearchBarPlacementAllowsExternalIntegration:self];
    }
  }
}

- (BOOL)_changeMayAffectSearchBarPlacementFromTraits:(id)a3 toOtherTraits:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 userInterfaceIdiom];
  v8 = [v6 userInterfaceIdiom];
  v9 = 0;
  if (v7 != -1 && v8 != -1)
  {
    if (v7 == v8 || (v9 = 1, v7) && v8)
    {
      v10 = [v5 horizontalSizeClass];
      v9 = v10 != [v6 horizontalSizeClass];
    }
  }

  return v9;
}

- (uint64_t)_canRevealSearchBarPlacementAccurately
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v3 = objc_loadWeakRetained((a1 + 56));
      v4 = [v3 _effectiveSearchControllerForNavigationItem:a1];
    }

    else
    {
      v4 = *(a1 + 120);
    }

    if (v4)
    {
      if (_appCanRevealSearchBarPlacementAccurately_onceToken != -1)
      {
        dispatch_once(&_appCanRevealSearchBarPlacementAccurately_onceToken, &__block_literal_global_1006);
      }

      v5 = _appCanRevealSearchBarPlacementAccurately_shouldRely;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)_hasIntegratedSearchBarInToolbarForTraits:(id)a3
{
  canRevealSearchBarPlacement = [(UINavigationItem *)self _canRevealSearchBarPlacementAccurately];
  if (canRevealSearchBarPlacement)
  {
    searchController = self->_searchController;

    LOBYTE(canRevealSearchBarPlacement) = [(UISearchController *)searchController _isSearchTextFieldBorrowed];
  }

  return canRevealSearchBarPlacement;
}

- (BOOL)_hasIntegratedSearchBarInNavigationBarForTraits:(id)a3
{
  v4 = a3;
  if ([(UINavigationItem *)self _canRevealSearchBarPlacementAccurately]&& [(UINavigationItem *)self _hasInlineSearchBarForTraits:v4])
  {
    v5 = ![(UISearchController *)self->_searchController _isSearchTextFieldBorrowed];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_hasInlineSearchBarForTraits:(id)a3
{
  v4 = a3;
  if ([(UINavigationItem *)self _canRevealSearchBarPlacementAccurately])
  {
    v5 = _UINavigationItemShouldIntegrateSearchBarInNavigationBarForTraits(self, v4) || [(UINavigationItem *)self _hasIntegratedSearchBarInToolbar];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_searchBarUpdatedSearchFieldIntegrationInSearchController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  [WeakRetained navigationItemUpdatedSearchController:self oldSearchController:v4];
}

- (void)_updateSearchBarItemGroupForPreferredPlacementChange:(BOOL)a3
{
  v6 = [(UISearchController *)self->_searchController searchBar];
  v5 = [(UINavigationItem *)self _hasIntegratedSearchBarInNavigationBar];
  if ((v5 & 1) == 0 && !a3)
  {
    v5 = [v6 _isHostedInlineByNavigationBar];
  }

  [(UISearchController *)self->_searchController _setDisplaysSearchBarItemGroupInline:v5];
}

- (void)_resetHidesSearchBarWhenScrolling
{
  v3 = [(UINavigationItem *)self _hidesSearchBarWhenScrollingIfAllowed];
  *&self->_navigationItemFlags &= 0xFFE7u;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = v3 == [(UINavigationItem *)self _hidesSearchBarWhenScrollingIfAllowed];
    WeakRetained = v6;
    if (!v5)
    {
      [v6 navigationItemUpdatedSearchController:self oldSearchController:self->_searchController];
      WeakRetained = v6;
    }
  }
}

- (void)setHidesSearchBarWhenScrolling:(BOOL)hidesSearchBarWhenScrolling
{
  v3 = hidesSearchBarWhenScrolling;
  v5 = [(UINavigationItem *)self _hidesSearchBarWhenScrollingIfAllowed];
  if (dyld_program_sdk_at_least())
  {
    if (v3)
    {
      v6 = 8;
    }

    else
    {
      v6 = 16;
    }

    v7 = *&self->_navigationItemFlags & 0xFFE7 | v6;
  }

  else
  {
    if (v3)
    {
      v8 = 0;
    }

    else
    {
      v8 = 4;
    }

    v7 = *&self->_navigationItemFlags & 0xFFFB | v8;
  }

  *&self->_navigationItemFlags = v7;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v10 = v5 == [(UINavigationItem *)self _hidesSearchBarWhenScrollingIfAllowed];
    WeakRetained = v11;
    if (!v10)
    {
      [v11 navigationItemUpdatedSearchController:self oldSearchController:self->_searchController];
      WeakRetained = v11;
    }
  }
}

- (void)setBackButtonDisplayMode:(UINavigationItemBackButtonDisplayMode)backButtonDisplayMode
{
  if (self->_backButtonDisplayMode != backButtonDisplayMode)
  {
    self->_backButtonDisplayMode = backButtonDisplayMode;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedBackButtonContent:self animated:_UIBarsAnimatingSystemChanges()];
  }
}

- (void)_setManualScrollEdgeAppearanceEnabled:(BOOL)a3
{
  if (self->_manualScrollEdgeAppearanceEnabled != a3)
  {
    self->_manualScrollEdgeAppearanceEnabled = a3;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedScrollEdgeProgress:self];

    if (self->_autoScrollEdgeTransitionDistance > 0.0)
    {
      v5 = objc_loadWeakRetained(&self->_navigationBar);
      v7 = [v5 delegate];

      if (objc_opt_respondsToSelector())
      {
        v6 = objc_loadWeakRetained(&self->_navigationBar);
        [v7 _navigationBar:v6 itemEnabledAutoScrollTransition:self];
      }
    }
  }
}

- (void)_setAlwaysUseManualScrollEdgeAppearance:(BOOL)a3
{
  v3 = a3;
  if (qword_1ED49C980 != -1)
  {
    dispatch_once(&qword_1ED49C980, &__block_literal_global_249);
  }

  if ((_MergedGlobals_1008 & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Application that is not Messages using an SPI designated only for Messages. Disabling", buf, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49C988) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Application that is not Messages using an SPI designated only for Messages. Disabling", v8, 2u);
      }
    }

    v3 = 0;
  }

  if (self->_alwaysUseManualScrollEdgeAppearance != v3)
  {
    self->_alwaysUseManualScrollEdgeAppearance = v3;
    if (self->_manualScrollEdgeAppearanceEnabled)
    {
      WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
      [WeakRetained navigationItemUpdatedScrollEdgeProgress:self];
    }
  }
}

void __60__UINavigationItem__setAlwaysUseManualScrollEdgeAppearance___block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _MergedGlobals_1008 = [@"com.apple.MobileSMS" isEqualToString:v0];
}

- (void)_setManualScrollEdgeAppearanceProgress:(double)a3
{
  self->_manualScrollEdgeAppearanceProgress = fmin(fmax(a3, 0.0), 1.0);
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  [WeakRetained navigationItemUpdatedScrollEdgeProgress:self];
}

- (void)_setAutoScrollEdgeTransitionDistance:(double)a3
{
  if (self->_manualScrollEdgeAppearanceEnabled)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UINavigationItem.m" lineNumber:1912 description:@"_autoScrollEdgeTransitionDistance may only be changed while _manualScrollEdgeAppearanceEnabled==NO"];
  }

  v5 = fmax(a3, 0.0);
  if (self->_autoScrollEdgeTransitionDistance != v5)
  {
    self->_autoScrollEdgeTransitionDistance = v5;
  }
}

- (void)_setShouldDismissPresentedViewControllerWhenPopped:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 32;
  }

  *&self->_navigationItemFlags = *&self->_navigationItemFlags & 0xFFDF | v3;
}

- (void)_addImplicitTopBarSectionsFromItems:(id)a3 toSections:(id)a4 forPlacement:(int64_t)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"UINavigationItem.m" lineNumber:1965 description:{@"Invalid parameter not satisfying: %@", @"sections != nil"}];
  }

  if ([v8 count])
  {
    v10 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__UINavigationItem__addImplicitTopBarSectionsFromItems_toSections_forPlacement___block_invoke;
    aBlock[3] = &unk_1E70F36D0;
    v11 = v10;
    v32 = v11;
    v34 = a5;
    v12 = v9;
    v33 = v12;
    v13 = _Block_copy(aBlock);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v8;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          if (v19 && [*(*(&v27 + 1) + 8 * i) isSpaceItem] && ((objc_msgSend(v19, "hidesSharedBackground") & 1) != 0 || (objc_msgSend(v19, "width"), v20 == 0.0)))
          {
            v13[2](v13);
          }

          else if ([v19 _requiresOwnSection])
          {
            v13[2](v13);
            v21 = [_UIBarSection alloc];
            v35 = v19;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
            v23 = [(_UIBarSection *)v21 initWithPreferredPlacement:a5 items:v22];

            [v12 addObject:v23];
          }

          else
          {
            [v11 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v16);
    }

    v13[2](v13);
    v8 = v25;
  }
}

void __80__UINavigationItem__addImplicitTopBarSectionsFromItems_toSections_forPlacement___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [[_UIBarSection alloc] initWithPreferredPlacement:*(a1 + 48) items:*(a1 + 32)];
    [*(a1 + 40) addObject:v2];
    [*(a1 + 32) removeAllObjects];
  }
}

- (void)_addImplicitTopBarSectionsFromGroups:(id)a3 toSections:(id)a4 forPlacement:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UINavigationItem.m" lineNumber:2004 description:{@"Invalid parameter not satisfying: %@", @"sections != nil"}];
  }

  if ([v9 count])
  {
    v11 = objc_opt_class();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__UINavigationItem__addImplicitTopBarSectionsFromGroups_toSections_forPlacement___block_invoke;
    v13[3] = &unk_1E70F7AF0;
    v15 = a5;
    v14 = v10;
    [v11 _partitionGroupsIntoSections:v9 sectionHandler:v13];
  }
}

void __81__UINavigationItem__addImplicitTopBarSectionsFromGroups_toSections_forPlacement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_UIBarSection alloc] initWithPreferredPlacement:*(a1 + 40) itemGroups:v3];

  [*(a1 + 32) addObject:v4];
}

+ (void)_partitionGroupsIntoSections:(id)a3 sectionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__UINavigationItem__partitionGroupsIntoSections_sectionHandler___block_invoke;
    aBlock[3] = &unk_1E70F37C0;
    v8 = v7;
    v30 = v8;
    v23 = v6;
    v31 = v6;
    v9 = _Block_copy(aBlock);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (!v11)
    {
      goto LABEL_26;
    }

    v12 = v11;
    v13 = *v26;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if ([v15 _requiresOwnSection])
        {
LABEL_8:
          v9[2](v9);
          [v8 addObject:v15];
          v9[2](v9);
          continue;
        }

        v16 = [v15 _items];
        v17 = [v16 count];

        if (!v17)
        {
          goto LABEL_18;
        }

        v18 = [v15 _items];
        v19 = [v18 count];

        if (v19 != 1)
        {
          if (![v15 _isImplicitlyGenerated])
          {
            goto LABEL_8;
          }

LABEL_18:
          [v8 addObject:v15];
          continue;
        }

        v20 = [v15 _items];
        v21 = [v20 objectAtIndexedSubscript:0];

        if (v21 && [v21 isSpaceItem] && ((objc_msgSend(v21, "hidesSharedBackground") & 1) != 0 || (objc_msgSend(v21, "width"), v22 == 0.0)))
        {
          if (![v8 count])
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (![v21 _requiresOwnSection])
          {
            [v8 addObject:v15];
            goto LABEL_23;
          }

          v9[2](v9);
          [v8 addObject:v15];
        }

        v9[2](v9);
LABEL_23:
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (!v12)
      {
LABEL_26:

        v9[2](v9);
        v6 = v23;
        v5 = v24;
        break;
      }
    }
  }
}

uint64_t __64__UINavigationItem__partitionGroupsIntoSections_sectionHandler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) copy];
    (*(v3 + 16))(v3, v4);

    v5 = *(a1 + 32);

    return [v5 removeAllObjects];
  }

  return result;
}

- (void)_setToolbarAvoidsKeyboard:(BOOL)a3
{
  if (self->_toolbarAvoidsKeyboard != a3)
  {
    self->_toolbarAvoidsKeyboard = a3;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v7 = objc_opt_respondsToSelector();
      v6 = v8;
      if (v7)
      {
        [v8 navigationItemUpdatedToolbarAvoidsKeyboard:self];
        v6 = v8;
      }
    }
  }
}

- (void)_sendSearchBarPlacementChangeCallbackIfNecessaryWillChange:(id *)a1
{
  if (!a1)
  {
    return;
  }

  v4 = [a1[15] delegate];
  v5 = v4;
  if (v4)
  {
    v11 = v4;
    if (a2)
    {
      v6 = objc_opt_respondsToSelector();
      v5 = v11;
      if (v6)
      {
        v7 = [a1 searchBarPlacement];
        v8 = [a1[15] delegate];
        [v8 searchController:a1[15] willChangeToSearchBarPlacement:v7];
LABEL_8:

        v5 = v11;
      }
    }

    else
    {
      v9 = objc_opt_respondsToSelector();
      v5 = v11;
      if (v9)
      {
        v10 = [a1 searchBarPlacement];
        v8 = [a1[15] delegate];
        [v8 searchController:a1[15] didChangeFromSearchBarPlacement:v10];
        goto LABEL_8;
      }
    }
  }
}

- (void)_movedToTopOfStack:(BOOL)a3
{
  if (a3)
  {
    [(UISearchController *)self->_searchController _setNavigationItemCurrentlyDisplayingSearchController:self];
    v4 = [(UISearchController *)self->_searchController searchBar];
    [v4 _resetIfNecessaryForNavigationBarHosting:1];

    if ((*&self->_navigationItemFlags & 0x40) != 0)
    {
      [(UINavigationItem *)&self->super.isa _sendSearchBarPlacementChangeCallbackIfNecessaryWillChange:?];
    }
  }

  *&self->_navigationItemFlags &= ~0x40u;
}

- (void)_movedFromTopOfStack:(BOOL)a3
{
  if (a3)
  {
    if ((*&self->_navigationItemFlags & 0x80) != 0)
    {
      [(UINavigationItem *)&self->super.isa _sendSearchBarPlacementChangeCallbackIfNecessaryWillChange:?];
    }
  }

  else
  {
    [(UISearchController *)self->_searchController _setNavigationItemCurrentlyDisplayingSearchController:self];
  }

  *&self->_navigationItemFlags &= ~0x80u;
}

- (id)_barButtonItemsToAddWhenAttemptingToAddBarButtonItems:(int)a3 forRight:
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a1)
  {
    if (dyld_program_sdk_at_least())
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v8)
      {
        v3 = v8;
        v9 = *v50;
        v10 = *MEMORY[0x1E695D940];
        do
        {
          for (i = 0; i != v3; i = i + 1)
          {
            if (*v50 != v9)
            {
              objc_enumerationMutation(v7);
            }

            if ([*(*(&v49 + 1) + 8 * i) _isSearchBarPlacementItem])
            {
              [MEMORY[0x1E695DF30] raise:v10 format:@"UINavigationItem.searchBarPlacementBarButtonItem is only supported in UIToolbar"];
            }
          }

          v3 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v3);
      }
    }

    v12 = v6;
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v14 = [WeakRetained isLocked];
    if ((v14 & 1) == 0)
    {
      v3 = objc_loadWeakRetained(a1 + 7);
      if (![v3 _wasDecodedUnlockedWithNavigationControllerDelegate])
      {
        goto LABEL_37;
      }
    }

    v15 = objc_loadWeakRetained(a1 + 7);
    v16 = [v15 _lostNavigationControllerDelegate];

    if ((v14 & 1) == 0)
    {
    }

    if ((v16 & 1) == 0)
    {
      v17 = objc_loadWeakRetained(a1 + 7);
      WeakRetained = [v17 _effectiveDelegate];

      v3 = [WeakRetained disappearingViewController];
      if (!v3)
      {
        goto LABEL_37;
      }

      v18 = objc_loadWeakRetained(a1 + 7);
      v19 = [v18 _stack];
      v20 = [v19 state];

      if (v20)
      {
        goto LABEL_37;
      }

      v21 = [v3 _existingNavigationItem];
      v22 = [WeakRetained _nestedTopViewController];
      v23 = [v22 _existingNavigationItem];

      if (v21 == a1 && v23)
      {
        v43 = v21;
        v24 = [v23 rightBarButtonItems];
        v48 = 0;
        v25 = _itemListExcludingOtherItemList(v12, v24, &v48);
        v26 = v48;

        v44 = v23;
        v27 = [v23 leftBarButtonItems];
        v47 = 0;
        v12 = _itemListExcludingOtherItemList(v25, v27, &v47);
        v28 = v47;

        v29 = v26;
        v30 = [v28 count];
        if (!(v30 + [v26 count]))
        {
          v21 = v43;
          v23 = v44;
LABEL_35:

LABEL_36:
LABEL_37:

          goto LABEL_38;
        }

        v38 = MEMORY[0x1E696AEC0];
        v39 = [v28 arrayByAddingObjectsFromArray:v26];
        v40 = @"left";
        v41 = a3 == 0;
        v37 = v39;
        if (!v41)
        {
          v40 = @"right";
        }

        v34 = [v38 stringWithFormat:@"%@ not added to %@BarButtonItems of %@", v39, v40, a1];
        UINavigationItemLogSettingUpSharedBarButtonItemsDuringTransition(v34);
        v21 = v43;
      }

      else
      {
        if (v23 != a1 || !v21)
        {
          goto LABEL_36;
        }

        v44 = v23;
        v31 = [v21 rightBarButtonItems];
        v46 = 0;
        v32 = _itemListExcludingOtherItemList(v31, v12, &v46);
        v29 = v46;

        v33 = [v21 leftBarButtonItems];
        v45 = 0;
        v34 = _itemListExcludingOtherItemList(v33, v12, &v45);
        v28 = v45;

        if ([v29 count])
        {
          v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ removed from rightBarButtonItems of %@", v29, v21];
          UINavigationItemLogSettingUpSharedBarButtonItemsDuringTransition(v35);

          [v21 setRightBarButtonItems:v32];
        }

        if ([v28 count])
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ removed from leftBarButtonItems of %@", v28, v21];
          UINavigationItemLogSettingUpSharedBarButtonItemsDuringTransition(v36);

          [v21 setLeftBarButtonItems:v34];
        }

        v37 = v32;
      }

      v23 = v44;
      goto LABEL_35;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_38:

  return v12;
}

- (void)setLeftBarButtonItem:(UIBarButtonItem *)leftBarButtonItem
{
  v4 = leftBarButtonItem;
  [(UINavigationItem *)self setLeftBarButtonItem:v4 animated:_UIBarsAnimatingSystemChanges()];
}

- (void)setLeftBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated
{
  v4 = animated;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = item;
  if ([(UIBarButtonItem *)v6 isSystemItem]&& ([(UIBarButtonItem *)v6 systemItem]== 5 || [(UIBarButtonItem *)v6 systemItem]== 6))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Fixed and flexible space items not allowed as individual navigation bar button item. Please use the leftBarButtonItems (that's plural) property."];
  }

  if (v6)
  {
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v8 = [(UINavigationItem *)&self->super.isa _barButtonItemsToAddWhenAttemptingToAddBarButtonItems:v7 forRight:0];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(UINavigationItem *)self leftBarButtonItem];

  if (v9 != v10)
  {
    _updateItemOwners(self->_leftBarButtonItems, 0);
    v11 = _itemListUpdatingFirstItem(self->_leftBarButtonItems, v9);
    leftBarButtonItems = self->_leftBarButtonItems;
    self->_leftBarButtonItems = v11;

    leadingItemGroups = self->_leadingItemGroups;
    self->_leadingItemGroups = 0;

    _updateItemOwners(self->_leftBarButtonItems, self);
    [(UINavigationItem *)self _setEffectiveTopBarSectionsNeedsUpdate];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v15 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained navigationItemUpdatedLeftBarButtonItems:self animated:v4];
    }

    else
    {
      [(UINavigationItem *)self _setCustomLeftViews:0];
      [(UINavigationItem *)self updateNavigationBarButtonsAnimated:v4];
    }
  }
}

- (void)setRightBarButtonItem:(UIBarButtonItem *)rightBarButtonItem
{
  v4 = rightBarButtonItem;
  [(UINavigationItem *)self setRightBarButtonItem:v4 animated:_UIBarsAnimatingSystemChanges()];
}

- (void)setRightBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated
{
  v4 = animated;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = item;
  if ([(UIBarButtonItem *)v6 isSystemItem]&& ([(UIBarButtonItem *)v6 systemItem]== 5 || [(UIBarButtonItem *)v6 systemItem]== 6))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Fixed and flexible space items not allowed as individual navigation bar button item. Please use the rightBarButtonItems (that's plural) property."];
  }

  if (v6)
  {
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v8 = [(UINavigationItem *)&self->super.isa _barButtonItemsToAddWhenAttemptingToAddBarButtonItems:v7 forRight:1];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(UINavigationItem *)self rightBarButtonItem];

  if (v9 != v10)
  {
    _updateItemOwners(self->_rightBarButtonItems, 0);
    v11 = _itemListUpdatingFirstItem(self->_rightBarButtonItems, v9);
    rightBarButtonItems = self->_rightBarButtonItems;
    self->_rightBarButtonItems = v11;

    trailingItemGroups = self->_trailingItemGroups;
    self->_trailingItemGroups = 0;

    _updateItemOwners(self->_rightBarButtonItems, self);
    [(UINavigationItem *)self _setEffectiveTopBarSectionsNeedsUpdate];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v15 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained navigationItemUpdatedRightBarButtonItems:self animated:v4];
    }

    else
    {
      [(UINavigationItem *)self _setCustomRightViews:0];
      [(UINavigationItem *)self updateNavigationBarButtonsAnimated:v4];
    }
  }
}

- (void)setLeftBarButtonItems:(NSArray *)leftBarButtonItems
{
  v4 = leftBarButtonItems;
  [(UINavigationItem *)self setLeftBarButtonItems:v4 animated:_UIBarsAnimatingSystemChanges()];
}

- (void)setLeftBarButtonItems:(NSArray *)items animated:(BOOL)animated
{
  v4 = animated;
  obj = [(UINavigationItem *)&self->super.isa _barButtonItemsToAddWhenAttemptingToAddBarButtonItems:0 forRight:?];
  if (!-[NSArray count](self->_leftBarButtonItems, "count") && ![obj count])
  {
    objc_storeStrong(&self->_leftBarButtonItems, obj);
    [(UINavigationItem *)self _setEffectiveTopBarSectionsNeedsUpdate];
    goto LABEL_15;
  }

  v6 = self->_leftBarButtonItems;
  v7 = obj;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_15;
  }

  if (!v7 || !v6)
  {

    goto LABEL_10;
  }

  v9 = [(NSArray *)v6 isEqual:v7];

  if ((v9 & 1) == 0)
  {
LABEL_10:
    _updateItemOwners(self->_leftBarButtonItems, 0);
    v10 = [(NSArray *)v8 copy];
    leftBarButtonItems = self->_leftBarButtonItems;
    self->_leftBarButtonItems = v10;

    leadingItemGroups = self->_leadingItemGroups;
    self->_leadingItemGroups = 0;

    _updateItemOwners(self->_leftBarButtonItems, self);
    [(UINavigationItem *)self _setEffectiveTopBarSectionsNeedsUpdate];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v14 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained navigationItemUpdatedLeftBarButtonItems:self animated:v4];
    }

    else
    {
      [(UINavigationItem *)self _setCustomLeftViews:0];
      [(UINavigationItem *)self updateNavigationBarButtonsAnimated:v4];
    }
  }

LABEL_15:
}

- (void)setRightBarButtonItems:(NSArray *)rightBarButtonItems
{
  v4 = rightBarButtonItems;
  [(UINavigationItem *)self setRightBarButtonItems:v4 animated:_UIBarsAnimatingSystemChanges()];
}

- (void)setRightBarButtonItems:(NSArray *)items animated:(BOOL)animated
{
  v4 = animated;
  obj = [(UINavigationItem *)&self->super.isa _barButtonItemsToAddWhenAttemptingToAddBarButtonItems:1 forRight:?];
  if (!-[NSArray count](self->_rightBarButtonItems, "count") && ![obj count])
  {
    objc_storeStrong(&self->_rightBarButtonItems, obj);
    [(UINavigationItem *)self _setEffectiveTopBarSectionsNeedsUpdate];
    goto LABEL_15;
  }

  v6 = self->_rightBarButtonItems;
  v7 = obj;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_15;
  }

  if (!v7 || !v6)
  {

    goto LABEL_10;
  }

  v9 = [(NSArray *)v6 isEqual:v7];

  if ((v9 & 1) == 0)
  {
LABEL_10:
    _updateItemOwners(self->_rightBarButtonItems, 0);
    v10 = [(NSArray *)v8 copy];
    rightBarButtonItems = self->_rightBarButtonItems;
    self->_rightBarButtonItems = v10;

    trailingItemGroups = self->_trailingItemGroups;
    self->_trailingItemGroups = 0;

    _updateItemOwners(self->_rightBarButtonItems, self);
    [(UINavigationItem *)self _setEffectiveTopBarSectionsNeedsUpdate];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v14 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained navigationItemUpdatedRightBarButtonItems:self animated:v4];
    }

    else
    {
      [(UINavigationItem *)self _setCustomRightViews:0];
      [(UINavigationItem *)self updateNavigationBarButtonsAnimated:v4];
    }
  }

LABEL_15:
}

- (void)setLeadingItemGroups:(NSArray *)leadingItemGroups
{
  v4 = leadingItemGroups;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  WeakRetained = self->_leadingItemGroups;
  v7 = v5;
  v13 = v7;
  if (WeakRetained == v7)
  {

LABEL_11:
    v9 = v13;
    goto LABEL_12;
  }

  if (!WeakRetained)
  {

    goto LABEL_10;
  }

  v8 = [(NSArray *)WeakRetained isEqual:v7];

  v9 = v13;
  if ((v8 & 1) == 0)
  {
LABEL_10:
    _updateItemGroupOwners(self->_leadingItemGroups, 0);
    v10 = [(NSArray *)v13 copy];
    v11 = self->_leadingItemGroups;
    self->_leadingItemGroups = v10;

    _updateItemGroupOwners(self->_leadingItemGroups, self);
    leftBarButtonItems = self->_leftBarButtonItems;
    self->_leftBarButtonItems = 0;

    [(UINavigationItem *)self _setEffectiveTopBarSectionsNeedsUpdate];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [(NSArray *)WeakRetained navigationItemUpdatedLeftBarButtonItems:self animated:_UIBarsAnimatingSystemChanges()];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)setCenterItemGroups:(NSArray *)centerItemGroups
{
  v4 = centerItemGroups;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = self->_centerItemGroups;
  v7 = v5;
  v13 = v7;
  if (v6 == v7)
  {

LABEL_12:
    goto LABEL_13;
  }

  if (!v6)
  {

    goto LABEL_10;
  }

  v8 = [(NSArray *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_10:
    _updateItemGroupOwners(self->_centerItemGroups, 0);
    v9 = [(NSArray *)v13 copy];
    v10 = self->_centerItemGroups;
    self->_centerItemGroups = v9;

    _updateItemGroupOwners(self->_centerItemGroups, self);
    [(UINavigationItem *)self _setEffectiveTopBarSectionsNeedsUpdate];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_13;
    }

    v6 = objc_loadWeakRetained(&self->__changeObserver);
    [(NSArray *)v6 navigationItemUpdatedCenterBarButtonItems:self animated:_UIBarsAnimatingSystemChanges()];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)setTrailingItemGroups:(NSArray *)trailingItemGroups
{
  v4 = trailingItemGroups;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  WeakRetained = self->_trailingItemGroups;
  v7 = v5;
  v13 = v7;
  if (WeakRetained == v7)
  {

LABEL_11:
    v9 = v13;
    goto LABEL_12;
  }

  if (!WeakRetained)
  {

    goto LABEL_10;
  }

  v8 = [(NSArray *)WeakRetained isEqual:v7];

  v9 = v13;
  if ((v8 & 1) == 0)
  {
LABEL_10:
    _updateItemGroupOwners(self->_trailingItemGroups, 0);
    v10 = [(NSArray *)v13 copy];
    v11 = self->_trailingItemGroups;
    self->_trailingItemGroups = v10;

    _updateItemGroupOwners(self->_trailingItemGroups, self);
    rightBarButtonItems = self->_rightBarButtonItems;
    self->_rightBarButtonItems = 0;

    [(UINavigationItem *)self _setEffectiveTopBarSectionsNeedsUpdate];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [(NSArray *)WeakRetained navigationItemUpdatedRightBarButtonItems:self animated:_UIBarsAnimatingSystemChanges()];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_getLeadingItems:(id *)a3 groups:(id *)a4
{
  if ([(NSArray *)self->_leadingItemGroups count])
  {
    v7 = *a3;
    *a3 = 0;

    v8 = self->_leadingItemGroups;
  }

  else
  {
    if ([(NSArray *)self->_leftBarButtonItems count])
    {
      objc_storeStrong(a3, self->_leftBarButtonItems);
    }

    else
    {
      v9 = *a3;
      *a3 = 0;
    }

    v8 = 0;
  }

  v10 = *a4;
  *a4 = v8;
}

- (void)_getTrailingItems:(id *)a3 groups:(id *)a4
{
  if ([(NSArray *)self->_trailingItemGroups count])
  {
    v7 = *a3;
    *a3 = 0;

    v8 = self->_trailingItemGroups;
  }

  else
  {
    if ([(NSArray *)self->_rightBarButtonItems count])
    {
      objc_storeStrong(a3, self->_rightBarButtonItems);
    }

    else
    {
      v9 = *a3;
      *a3 = 0;
    }

    v8 = 0;
  }

  v10 = *a4;
  *a4 = v8;
}

- (void)setLeftItemsSupplementBackButton:(BOOL)leftItemsSupplementBackButton
{
  navigationItemFlags = self->_navigationItemFlags;
  if (((((navigationItemFlags & 2) == 0) ^ leftItemsSupplementBackButton) & 1) == 0)
  {
    if (leftItemsSupplementBackButton)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_navigationItemFlags = navigationItemFlags & 0xFFFD | v6;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    if (WeakRetained)
    {
      [WeakRetained navigationItemUpdatedContentLayout:self animated:_UIBarsAnimatingSystemChanges()];
    }

    else
    {
      [(UINavigationItem *)self updateNavigationBarButtonsAnimated:0];
    }
  }
}

- (void)_setBottomPalette:(id)a3
{
  v5 = a3;
  bottomPalette = self->_bottomPalette;
  if (bottomPalette != v5)
  {
    v8 = v5;
    v7 = bottomPalette;
    [(_UINavigationBarPalette *)v7 setOwningNavigationItem:0];
    objc_storeStrong(&self->_bottomPalette, a3);
    [(_UINavigationBarPalette *)self->_bottomPalette setOwningNavigationItem:self];
    [(UINavigationItem *)self _setBottomPaletteNeedsUpdate:v7];

    v5 = v8;
  }
}

- (void)_setTopPalette:(id)a3
{
  v5 = a3;
  topPalette = self->_topPalette;
  if (topPalette != v5)
  {
    v9 = v5;
    v7 = topPalette;
    [(_UINavigationBarPalette *)v7 setOwningNavigationItem:0];
    objc_storeStrong(&self->_topPalette, a3);
    [(_UINavigationBarPalette *)self->_topPalette setOwningNavigationItem:self];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItem:self updatedPalettePart:6 oldPalette:v7];

    v5 = v9;
  }
}

- (void)_setBottomPaletteNeedsUpdate:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->__changeObserver);
      [v5 navigationItem:self updatedPalettePart:7 oldPalette:v6];
    }

    else
    {
      [WeakRetained navigationItemUpdatedBottomPalette:self oldPalette:v6];
    }
  }
}

- (void)_updatePalette:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_topPalette == v4)
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItem:self updatedPalettePart:6 oldPalette:v7];
  }

  else
  {
    if (self->_bottomPalette != v4)
    {
      goto LABEL_6;
    }

    v7 = v4;
    [(UINavigationItem *)self _setBottomPaletteNeedsUpdate:?];
  }

  v5 = v7;
LABEL_6:
}

- (void)setStyle:(UINavigationItemStyle)style
{
  if (self->_style != style)
  {
    self->_style = style;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedTitleContent:self animated:0];
  }
}

- (void)setTitleMenuProvider:(void *)titleMenuProvider
{
  if (self->_titleMenuProvider != titleMenuProvider)
  {
    v5 = [titleMenuProvider copy];
    v6 = self->_titleMenuProvider;
    self->_titleMenuProvider = v5;

    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedTitleContent:self animated:_UIBarsAnimatingSystemChanges()];
  }
}

- (void)setDocumentProperties:(UIDocumentProperties *)documentProperties
{
  v5 = documentProperties;
  v6 = self->_documentProperties;
  if (v6 != v5)
  {
    v8 = v5;
    [(UIDocumentProperties *)v6 _setAssociatedNavigationItem:0];
    objc_storeStrong(&self->_documentProperties, documentProperties);
    [(UIDocumentProperties *)self->_documentProperties _setAssociatedNavigationItem:self];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedTitleContent:self animated:0];

    v5 = v8;
  }
}

- (void)setCustomizationIdentifier:(NSString *)customizationIdentifier
{
  v4 = customizationIdentifier;
  v5 = self->_customizationIdentifier;
  v6 = v4;
  v13 = v6;
  if (v5 == v6)
  {

LABEL_10:
    v8 = v13;
    goto LABEL_11;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqual:v6];

  v8 = v13;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = [(NSString *)v13 copy];
    v10 = self->_customizationIdentifier;
    self->_customizationIdentifier = v9;

    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    v12 = objc_opt_respondsToSelector();

    v8 = v13;
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

    v5 = objc_loadWeakRetained(&self->__changeObserver);
    [(NSString *)v5 navigationItemUpdatedCenterBarButtonItems:self animated:_UIBarsAnimatingSystemChanges()];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)setAdditionalOverflowItems:(UIDeferredMenuElement *)additionalOverflowItems
{
  v5 = additionalOverflowItems;
  if (self->_additionalOverflowItems != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_additionalOverflowItems, additionalOverflowItems);
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained navigationItemUpdatedAdditionalOverflowItems:self];
    }

    else
    {
      [WeakRetained navigationItemUpdatedRightBarButtonItems:self animated:0];
    }

    v5 = v7;
  }
}

- (id)overflowPresentationSource
{
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained presentationSourceForContent:0 navigationItem:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBackAction:(UIAction *)backAction
{
  if (self->_backAction != backAction)
  {
    v5 = [(UIAction *)backAction copy];
    v6 = self->_backAction;
    self->_backAction = v5;

    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedTitleContent:self animated:0];
  }
}

- (void)setPinnedTrailingGroup:(UIBarButtonItemGroup *)pinnedTrailingGroup
{
  v5 = pinnedTrailingGroup;
  if (self->_pinnedTrailingGroup != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_pinnedTrailingGroup, pinnedTrailingGroup);
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedRightBarButtonItems:self animated:_UIBarsAnimatingSystemChanges()];

    v5 = v7;
  }
}

- (void)_setRenameHandler:(id)a3
{
  v5 = a3;
  renameHandler = self->_renameHandler;
  if (renameHandler != v5)
  {
    v8 = v5;
    [(_UINavigationItemRenameHandler *)renameHandler setAssociatedItem:0];
    objc_storeStrong(&self->_renameHandler, a3);
    [(_UINavigationItemRenameHandler *)v8 setAssociatedItem:self];
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    [WeakRetained navigationItemUpdatedTitleContent:self animated:_UIBarsAnimatingSystemChanges()];

    v5 = v8;
  }
}

- (void)setRenameDelegate:(id)renameDelegate
{
  v4 = renameDelegate;
  objc_storeWeak(&self->_renameDelegate, v4);
  if (v4)
  {
    objc_initWeak(location, self);
    objc_initWeak(&from, v4);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __38__UINavigationItem_setRenameDelegate___block_invoke;
    v24[3] = &unk_1E70F7B18;
    objc_copyWeak(&v25, location);
    objc_copyWeak(&v26, &from);
    v5 = [_UINavigationItemRenameHandler handlerWithDidEndRenamingHandler:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __38__UINavigationItem_setRenameDelegate___block_invoke_2;
    v21[3] = &unk_1E70F7B40;
    objc_copyWeak(&v22, location);
    objc_copyWeak(&v23, &from);
    [v5 setShouldBeginRenamingHandler:v21];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __38__UINavigationItem_setRenameDelegate___block_invoke_3;
    v18[3] = &unk_1E70F7B68;
    objc_copyWeak(&v19, location);
    objc_copyWeak(&v20, &from);
    [v5 setWillBeginRenamingWithRangeHandler:v18];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __38__UINavigationItem_setRenameDelegate___block_invoke_4;
    v15[3] = &unk_1E70F7B90;
    objc_copyWeak(&v16, location);
    objc_copyWeak(&v17, &from);
    [v5 setShouldEndRenamingHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__UINavigationItem_setRenameDelegate___block_invoke_5;
    v12[3] = &unk_1E70F7BB8;
    objc_copyWeak(&v13, location);
    objc_copyWeak(&v14, &from);
    [v5 setFileURLForRenaming:v12];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__UINavigationItem_setRenameDelegate___block_invoke_6;
    v9[3] = &unk_1E70F7BE0;
    objc_copyWeak(&v10, location);
    objc_copyWeak(&v11, &from);
    [v5 setFileRenameDidFail:v9];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__UINavigationItem_setRenameDelegate___block_invoke_7;
    v6[3] = &unk_1E70F7C08;
    objc_copyWeak(&v7, location);
    objc_copyWeak(&v8, &from);
    [v5 setFileRenameDidEnd:v6];
    [(UINavigationItem *)self _setRenameHandler:v5];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    [(UINavigationItem *)self _setRenameHandler:0];
  }
}

void __38__UINavigationItem_setRenameDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    [v4 navigationItem:WeakRetained didEndRenamingWithTitle:v3];
  }

  else
  {
    [_UINavigationItemRenameHandler defaultNavigationItem:WeakRetained didEndRenamingWithTitle:v3];
  }
}

uint64_t __38__UINavigationItem_setRenameDelegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 navigationItemShouldBeginRenaming:WeakRetained];
  }

  else
  {
    v5 = [_UINavigationItemRenameHandler defaultNavigationItemShouldBeginRenaming:WeakRetained forValidDelegate:v4 != 0];
  }

  v6 = v5;

  return v6;
}

id __38__UINavigationItem_setRenameDelegate___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = v7;
  if (WeakRetained && v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [v8 navigationItem:WeakRetained willBeginRenamingWithSuggestedTitle:v5 selectedRange:a3];
  }

  else
  {
    v9 = [_UINavigationItemRenameHandler defaultNavigationItem:WeakRetained willBeginRenamingWithSuggestedTitle:v5 selectedRange:a3];
  }

  v10 = v9;

  return v10;
}

uint64_t __38__UINavigationItem_setRenameDelegate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 navigationItem:WeakRetained shouldEndRenamingWithTitle:v3];
  }

  else
  {
    v7 = [_UINavigationItemRenameHandler defaultNavigationItem:WeakRetained shouldEndRenamingWithTitle:v3];
  }

  v8 = v7;

  return v8;
}

id __38__UINavigationItem_setRenameDelegate___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  v5 = 0;
  if (WeakRetained && v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 _navigationItemFileURLForRenaming:WeakRetained];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void __38__UINavigationItem_setRenameDelegate___block_invoke_6(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 _navigationItem:WeakRetained fileRenameDidFailWithError:v6];
  }
}

void __38__UINavigationItem_setRenameDelegate___block_invoke_7(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 _navigationItem:WeakRetained fileRenameDidEndWithFinalURL:v6];
  }
}

- (BOOL)_canRename
{
  v2 = [(UINavigationItem *)self _renameHandler];
  v3 = [v2 _canRename];

  return v3;
}

- (void)_setMinimumContentMargins:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_minimumContentMargins.top), vceqq_f64(v4, *&self->_minimumContentMargins.bottom)))) & 1) == 0)
  {
    self->_minimumContentMargins = a3;
    WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      [WeakRetained navigationItemUpdatedMinimumContentMargins:self];
      WeakRetained = v7;
    }
  }
}

- (id)_customLeftViews
{
  if (!self->_customLeftViews && [(NSArray *)self->_leftBarButtonItems count])
  {
    [(UINavigationItem *)self _accumulateViewsFromItems:self->_leftBarButtonItems isLeft:1 refreshViews:1];
  }

  customLeftViews = self->_customLeftViews;

  return customLeftViews;
}

- (void)_setCustomLeftViews:(id)a3
{
  v4 = [a3 copy];
  customLeftViews = self->_customLeftViews;
  self->_customLeftViews = v4;
}

- (id)_customRightViews
{
  if (!self->_customRightViews && [(NSArray *)self->_rightBarButtonItems count])
  {
    [(UINavigationItem *)self _accumulateViewsFromItems:self->_rightBarButtonItems isLeft:0 refreshViews:1];
  }

  customRightViews = self->_customRightViews;

  return customRightViews;
}

- (void)_setCustomRightViews:(id)a3
{
  v4 = [a3 copy];
  customRightViews = self->_customRightViews;
  self->_customRightViews = v4;
}

- (BOOL)_accumulateViewsFromItems:(id)a3 isLeft:(BOOL)a4 refreshViews:(BOOL)a5
{
  v54 = a5;
  v51 = a4;
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
  v8 = WeakRetained;
  if (!WeakRetained || ([WeakRetained _isAlwaysHidden] & 1) != 0)
  {
    v9 = 0;
    goto LABEL_60;
  }

  v10 = [v8 isMinibar];
  v11 = [v6 count];
  if (!v11)
  {
    v18 = 0;
    v14 = 0;
    v13 = 0;
    v9 = 0;
    goto LABEL_56;
  }

  v12 = v11;
  v55 = v10;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (!v16)
  {

    v9 = 0;
    v18 = 0;
    goto LABEL_55;
  }

  v17 = v16;
  obj = v15;
  v53 = v14;
  v50 = v13;
  v45 = v6;
  v46 = v8;
  v18 = 0;
  v19 = 0;
  v48 = 0;
  v20 = *v57;
  v47 = self;
  do
  {
    v21 = 0;
    do
    {
      if (*v57 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v56 + 1) + 8 * v21);
      if (![v22 isSystemItem] || objc_msgSend(v22, "systemItem") != 6 && objc_msgSend(v22, "systemItem") != 5)
      {
        v26 = [v22 isCustomViewItem];
        v27 = [v22 view];
        v28 = v27;
        if (v54)
        {
          v29 = [v22 createViewForNavigationItem:self];

          if (v29)
          {
            [v22 setView:v29];
            v48 = 1;
            v28 = v29;
            goto LABEL_18;
          }

LABEL_35:
          [v22 setIsMinibarView:v55];
          v28 = 0;
LABEL_41:

          goto LABEL_42;
        }

        if (v27)
        {
          if ([v22 isSystemItem])
          {
            if ((v26 & 1) == 0)
            {
              v30 = v55;
              if (v55 == [v22 isMinibarView])
              {
                goto LABEL_27;
              }

LABEL_45:
              v38 = objc_loadWeakRetained(&self->_navigationBar);
              v39 = [v38 _hasLegacyProvider];

              if (v39)
              {
                v40 = [v28 superview];
                if (v40)
                {
                  [v28 removeFromSuperview];
                }

                v49 = [v28 isHidden];
                self = v47;
                v41 = [v22 createViewForNavigationItem:v47];

                [v22 setView:v41];
                [v41 setHidden:v49];

                v48 = 1;
                v28 = v41;
                v8 = v46;
                v35 = v55;
                goto LABEL_40;
              }

              self = v47;
LABEL_18:
              v30 = v55;
LABEL_19:
              [v22 setIsMinibarView:v30];
LABEL_20:
              [v28 setSemanticContentAttribute:{objc_msgSend(v8, "semanticContentAttribute")}];
              [v28 _uinavigationbar_prepareToAppearInNavigationItem:self onLeft:v51];
              [v50 addObject:v28];
              if ((v19 & 1) == 0)
              {
                v31 = [MEMORY[0x1E695DFB0] null];
                [v53 addObject:v31];
              }

              v19 = 0;
              goto LABEL_41;
            }
          }

          else
          {
            v33 = [v22 landscapeImagePhone];
            v34 = v33;
            if (!((v33 == 0) | v26 & 1))
            {
              v36 = [v22 isMinibarView];

              v37 = v55 == v36;
              v30 = v55;
              self = v47;
              if (!v37)
              {
                goto LABEL_45;
              }

LABEL_27:
              objc_opt_respondsToSelector();
              goto LABEL_19;
            }

            self = v47;
          }

          if ((objc_opt_respondsToSelector() & v26 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else if ((objc_opt_respondsToSelector() & v26 & 1) == 0)
        {
          v32 = [v22 createViewForNavigationItem:self];
          if (!v32)
          {
            goto LABEL_35;
          }

          v28 = v32;
          [v22 setView:v32];
          v48 = 1;
          goto LABEL_18;
        }

        v35 = v55;
        [v28 updateForMiniBarState:v55];
LABEL_40:
        [v22 setIsMinibarView:v35];
        if (!v28)
        {
          goto LABEL_41;
        }

        goto LABEL_20;
      }

      if (v19)
      {
        v23 = [v53 lastObject];
        v24 = v23;
        v25 = v22;
      }

      else
      {
        v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v22, 0}];
        v23 = v53;
        v25 = v24;
      }

      [v23 addObject:v25];

      if ([v22 systemItem] == 5)
      {
        ++v18;
      }

      v19 = 1;
LABEL_42:
      ++v21;
    }

    while (v17 != v21);
    v42 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    v17 = v42;
  }

  while (v42);

  v6 = v45;
  v13 = v50;
  v14 = v53;
  v9 = v48;
  if ((v19 & 1) == 0)
  {
LABEL_55:
    v43 = [MEMORY[0x1E695DFB0] null];
    [v14 addObject:v43];
  }

LABEL_56:
  if (v51)
  {
    [(UINavigationItem *)self _setCustomLeftViews:v13];
    [(UINavigationItem *)self _setLeftItemSpaceList:v14];
    [(UINavigationItem *)self _setLeftFlexibleSpaceCount:v18];
  }

  else
  {
    [(UINavigationItem *)self _setCustomRightViews:v13];
    [(UINavigationItem *)self _setRightItemSpaceList:v14];
    [(UINavigationItem *)self _setRightFlexibleSpaceCount:v18];
  }

LABEL_60:
  return v9 & 1;
}

- (void)_removeContentInView:(id)a3
{
  v8 = a3;
  v4 = [(UIView *)self->_defaultTitleView superview];

  if (v4 == v8)
  {
    [(UIView *)self->_defaultTitleView removeFromSuperview];
  }

  v5 = [(UIView *)self->_titleView superview];

  if (v5 == v8)
  {
    [(UIView *)self->_titleView removeFromSuperview];
  }

  v6 = [(UIView *)self->_backButtonView superview];

  v7 = v8;
  if (v6 == v8)
  {
    [(UIView *)self->_backButtonView removeFromSuperview];
    v7 = v8;
  }
}

- (void)_updateViewsForBarSizeChangeAndApply:(BOOL)a3
{
  v3 = a3;
  if ([(NSArray *)self->_leftBarButtonItems count])
  {
    v5 = [(UINavigationItem *)self _accumulateViewsFromItems:self->_leftBarButtonItems isLeft:1 refreshViews:0];
  }

  else
  {
    v5 = 0;
  }

  if ([(NSArray *)self->_rightBarButtonItems count])
  {
    v5 |= [(UINavigationItem *)self _accumulateViewsFromItems:self->_rightBarButtonItems isLeft:0 refreshViews:0];
  }

  if (objc_opt_respondsToSelector())
  {
    titleView = self->_titleView;
    WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
    -[UIView updateForMiniBarState:](titleView, "updateForMiniBarState:", [WeakRetained isMinibar]);
  }

  if ((v5 & v3) == 1)
  {

    [(UINavigationItem *)self updateNavigationBarButtonsAnimated:0];
  }
}

- (BOOL)_hasDefaultTitleView
{
  titleView = self->_titleView;
  if (!titleView)
  {
    return 1;
  }

  v3 = objc_opt_class();

  return [(UIView *)titleView isMemberOfClass:v3];
}

- (id)_defaultTitleView
{
  if (!self->_defaultTitleView)
  {
    v3 = [(UINavigationItem *)self title];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [[_UINavigationItemView alloc] initWithNavigationItem:self];
      defaultTitleView = self->_defaultTitleView;
      self->_defaultTitleView = &v5->super;
    }
  }

  v7 = self->_defaultTitleView;

  return v7;
}

- (id)_titleView
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
  v4 = [WeakRetained _isAlwaysHidden];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UINavigationItem *)self titleView];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(UINavigationItem *)self _defaultTitleView];
    }

    v5 = v8;
  }

  return v5;
}

- (id)_firstNonSpaceItemInList:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ((![v7 isSystemItem] || (objc_msgSend(v7, "systemItem") - 5) >= 2) && (objc_msgSend(v7, "isHidden") & 1) == 0)
        {
          v4 = v7;
          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

- (void)_setMinimumDesiredHeight:(double)a3 forBarMetrics:(int64_t)a4
{
  minimumDesiredHeights = self->_minimumDesiredHeights;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v19 = [(NSMutableDictionary *)minimumDesiredHeights objectForKeyedSubscript:v8];

  v9 = fmax(a3, 0.0);
  v10 = self->_minimumDesiredHeights;
  if (v9 != 0.0)
  {
    if (!v10)
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v15 = self->_minimumDesiredHeights;
      self->_minimumDesiredHeights = v14;
    }

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v16 = self->_minimumDesiredHeights;
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)v16 setObject:v13 forKeyedSubscript:v17];

    if (!v19 || ([v19 isEqual:v13] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
      [WeakRetained navigationItemUpdatedCanvasView:self];
    }

    goto LABEL_10;
  }

  v11 = v19;
  if (v10 && v19)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)v10 removeObjectForKey:v12];

    v13 = objc_loadWeakRetained(&self->__changeObserver);
    [v13 navigationItemUpdatedCanvasView:self];
LABEL_10:

    v11 = v19;
  }
}

- (double)_minimumDesiredHeightForBarMetrics:(int64_t)a3
{
  minimumDesiredHeights = self->_minimumDesiredHeights;
  if (!minimumDesiredHeights)
  {
    return 0.0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)minimumDesiredHeights objectForKeyedSubscript:v4];

  if (!v5)
  {
    return 0.0;
  }

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)_desiredHeightForBarMetrics:(int64_t)a3 defaultHeightBlock:(id)a4
{
  v6 = (*(a4 + 2))(a4, a3);
  minimumDesiredHeights = self->_minimumDesiredHeights;
  if (minimumDesiredHeights)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [(NSMutableDictionary *)minimumDesiredHeights objectForKeyedSubscript:v8];

    if (v9)
    {
      [v9 doubleValue];
      if (v6 < v10)
      {
        v6 = v10;
      }
    }
  }

  return v6;
}

- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);
  [WeakRetained navigationItem:self appearance:v6 categoriesChanged:a4];
}

- (NSDirectionalEdgeInsets)_titleMinimumMargins
{
  top = self->__titleMinimumMargins.top;
  leading = self->__titleMinimumMargins.leading;
  bottom = self->__titleMinimumMargins.bottom;
  trailing = self->__titleMinimumMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end