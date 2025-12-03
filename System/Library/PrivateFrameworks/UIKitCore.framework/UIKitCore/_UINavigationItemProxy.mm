@interface _UINavigationItemProxy
- (BOOL)navigationItemIsBackItem:(id)item;
- (BOOL)navigationItemIsTopItem:(id)item;
- (BOOL)shouldSearchControllerDeferPresentationTransitionForNavigationItem:(id)item;
- (_UINavigationItemProxy)initWithDestinationNavigationItem:(id)item sourceNavigationItem:(id)navigationItem;
- (void)navigationItem:(id)item appearance:(id)appearance categoriesChanged:(int64_t)changed;
- (void)navigationItem:(id)item updatedPalettePart:(int64_t)part oldPalette:(id)palette;
- (void)navigationItemUpdatedAdditionalOverflowItems:(id)items;
- (void)navigationItemUpdatedAllowsInteractivePopWhenBackButtonHidden:(id)hidden;
- (void)navigationItemUpdatedAllowsInteractivePopWhenNavigationBarHidden:(id)hidden;
- (void)navigationItemUpdatedBackButtonContent:(id)content animated:(BOOL)animated;
- (void)navigationItemUpdatedBackgroundAppearance:(id)appearance;
- (void)navigationItemUpdatedBottomPalette:(id)palette oldPalette:(id)oldPalette;
- (void)navigationItemUpdatedCenterBarButtonItems:(id)items animated:(BOOL)animated;
- (void)navigationItemUpdatedContentLayout:(id)layout animated:(BOOL)animated;
- (void)navigationItemUpdatedLargeTitleContent:(id)content;
- (void)navigationItemUpdatedLargeTitleDisplayMode:(id)mode;
- (void)navigationItemUpdatedLeftBarButtonItems:(id)items animated:(BOOL)animated;
- (void)navigationItemUpdatedNavigationBarVisibility:(id)visibility;
- (void)navigationItemUpdatedPromptContent:(id)content;
- (void)navigationItemUpdatedRightBarButtonItems:(id)items animated:(BOOL)animated;
- (void)navigationItemUpdatedScrollEdgeProgress:(id)progress;
- (void)navigationItemUpdatedSearchBarPlacementAllowsExternalIntegration:(id)integration;
- (void)navigationItemUpdatedSearchBarPlacementAllowsToolbarIntegration:(id)integration;
- (void)navigationItemUpdatedSearchController:(id)controller oldSearchController:(id)searchController;
- (void)navigationItemUpdatedTitleContent:(id)content animated:(BOOL)animated;
- (void)reloadDestinationItemFromSource;
@end

@implementation _UINavigationItemProxy

- (_UINavigationItemProxy)initWithDestinationNavigationItem:(id)item sourceNavigationItem:(id)navigationItem
{
  itemCopy = item;
  navigationItemCopy = navigationItem;
  v16.receiver = self;
  v16.super_class = _UINavigationItemProxy;
  v9 = [(_UINavigationItemProxy *)&v16 init];
  v10 = v9;
  if (v9)
  {
    if (itemCopy == navigationItemCopy)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v14 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *v15 = 0;
          _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "destinationNavigationItem == sourceNavigationItem. This will cause infinite recursion and is not a valid configuration.", v15, 2u);
        }
      }

      else
      {
        v13 = *(__UILogGetCategoryCachedImpl("Assert", &initWithDestinationNavigationItem_sourceNavigationItem____s_category) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "destinationNavigationItem == sourceNavigationItem. This will cause infinite recursion and is not a valid configuration.", v15, 2u);
        }
      }
    }

    else
    {
      objc_storeStrong(&v9->_destinationNavigationItem, item);
      v11 = objc_storeWeak(&v10->_sourceNavigationItem, navigationItemCopy);
      [navigationItemCopy _setChangeObserver:v10];

      [(_UINavigationItemProxy *)v10 reloadDestinationItemFromSource];
    }
  }

  return v10;
}

- (void)reloadDestinationItemFromSource
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceNavigationItem);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57___UINavigationItemProxy_reloadDestinationItemFromSource__block_invoke;
  v5[3] = &unk_1E70F35B8;
  v5[4] = self;
  v6 = WeakRetained;
  v4 = WeakRetained;
  [UIView performWithoutAnimation:v5];
}

- (BOOL)navigationItemIsTopItem:(id)item
{
  _changeObserver = [(UINavigationItem *)self->_destinationNavigationItem _changeObserver];

  if (!_changeObserver)
  {
    return 1;
  }

  _changeObserver2 = [(UINavigationItem *)self->_destinationNavigationItem _changeObserver];
  v6 = [_changeObserver2 navigationItemIsTopItem:self->_destinationNavigationItem];

  return v6;
}

- (BOOL)navigationItemIsBackItem:(id)item
{
  _changeObserver = [(UINavigationItem *)self->_destinationNavigationItem _changeObserver];

  if (!_changeObserver)
  {
    return 0;
  }

  _changeObserver2 = [(UINavigationItem *)self->_destinationNavigationItem _changeObserver];
  v6 = [_changeObserver2 navigationItemIsBackItem:self->_destinationNavigationItem];

  return v6;
}

- (void)navigationItemUpdatedTitleContent:(id)content animated:(BOOL)animated
{
  animatedCopy = animated;
  destinationNavigationItem = self->_destinationNavigationItem;
  contentCopy = content;
  title = [contentCopy title];
  [(UINavigationItem *)destinationNavigationItem _setTitle:title animated:animatedCopy];

  titleView = [contentCopy titleView];
  [(UINavigationItem *)self->_destinationNavigationItem setTitleView:titleView];

  _weeTitle = [contentCopy _weeTitle];

  [(UINavigationItem *)self->_destinationNavigationItem _setWeeTitle:_weeTitle];
}

- (void)navigationItemUpdatedLeftBarButtonItems:(id)items animated:(BOOL)animated
{
  itemsCopy = items;
  v14 = 0;
  v15 = 0;
  [itemsCopy _getLeadingItems:&v15 groups:&v14];
  if (v15)
  {
    destinationNavigationItem = self->_destinationNavigationItem;
LABEL_3:
    [(UINavigationItem *)destinationNavigationItem setLeftBarButtonItems:?];
    goto LABEL_6;
  }

  v7 = self->_destinationNavigationItem;
  if (v14)
  {
LABEL_5:
    [(UINavigationItem *)v7 setLeadingItemGroups:?];
    goto LABEL_6;
  }

  leftBarButtonItems = [(UINavigationItem *)v7 leftBarButtonItems];
  if (leftBarButtonItems)
  {
    v9 = leftBarButtonItems;
    leftBarButtonItems2 = [itemsCopy leftBarButtonItems];

    if (!leftBarButtonItems2)
    {
      destinationNavigationItem = self->_destinationNavigationItem;
      goto LABEL_3;
    }
  }

  leadingItemGroups = [(UINavigationItem *)self->_destinationNavigationItem leadingItemGroups];
  if (![leadingItemGroups count])
  {

    goto LABEL_6;
  }

  leadingItemGroups2 = [itemsCopy leadingItemGroups];
  v13 = [leadingItemGroups2 count];

  if (!v13)
  {
    v7 = self->_destinationNavigationItem;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)navigationItemUpdatedRightBarButtonItems:(id)items animated:(BOOL)animated
{
  itemsCopy = items;
  v14 = 0;
  v15 = 0;
  [itemsCopy _getTrailingItems:&v15 groups:&v14];
  if (v15)
  {
    destinationNavigationItem = self->_destinationNavigationItem;
LABEL_3:
    [(UINavigationItem *)destinationNavigationItem setRightBarButtonItems:?];
    goto LABEL_6;
  }

  v7 = self->_destinationNavigationItem;
  if (v14)
  {
LABEL_5:
    [(UINavigationItem *)v7 setTrailingItemGroups:?];
    goto LABEL_6;
  }

  rightBarButtonItems = [(UINavigationItem *)v7 rightBarButtonItems];
  if (rightBarButtonItems)
  {
    v9 = rightBarButtonItems;
    rightBarButtonItems2 = [itemsCopy rightBarButtonItems];

    if (!rightBarButtonItems2)
    {
      destinationNavigationItem = self->_destinationNavigationItem;
      goto LABEL_3;
    }
  }

  trailingItemGroups = [(UINavigationItem *)self->_destinationNavigationItem trailingItemGroups];
  if (![trailingItemGroups count])
  {

    goto LABEL_6;
  }

  trailingItemGroups2 = [itemsCopy trailingItemGroups];
  v13 = [trailingItemGroups2 count];

  if (!v13)
  {
    v7 = self->_destinationNavigationItem;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)navigationItemUpdatedContentLayout:(id)layout animated:(BOOL)animated
{
  layoutCopy = layout;
  -[UINavigationItem setHidesBackButton:](self->_destinationNavigationItem, "setHidesBackButton:", [layoutCopy hidesBackButton]);
  leftItemsSupplementBackButton = [layoutCopy leftItemsSupplementBackButton];

  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem setLeftItemsSupplementBackButton:leftItemsSupplementBackButton];
}

- (void)navigationItemUpdatedBackButtonContent:(id)content animated:(BOOL)animated
{
  animatedCopy = animated;
  contentCopy = content;
  if ([(_UINavigationItemProxy *)self navigationItemIsBackItem:?])
  {
    [(_UINavigationItemProxy *)self navigationItemUpdatedTitleContent:contentCopy animated:animatedCopy];
  }

  else
  {
    backButtonTitle = [contentCopy backButtonTitle];
    [(UINavigationItem *)self->_destinationNavigationItem setBackButtonTitle:backButtonTitle];

    backBarButtonItem = [contentCopy backBarButtonItem];
    [(UINavigationItem *)self->_destinationNavigationItem setBackBarButtonItem:backBarButtonItem];
  }
}

- (void)navigationItemUpdatedLargeTitleDisplayMode:(id)mode
{
  largeTitleDisplayMode = [mode largeTitleDisplayMode];
  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem setLargeTitleDisplayMode:largeTitleDisplayMode];
}

- (void)navigationItemUpdatedLargeTitleContent:(id)content
{
  contentCopy = content;
  _largeTitleAccessoryView = [contentCopy _largeTitleAccessoryView];
  [(UINavigationItem *)self->_destinationNavigationItem _setLargeTitleAccessoryView:_largeTitleAccessoryView];

  _largeTitleTwoLineMode = [contentCopy _largeTitleTwoLineMode];
  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem _setLargeTitleTwoLineMode:_largeTitleTwoLineMode];
}

- (void)navigationItem:(id)item appearance:(id)appearance categoriesChanged:(int64_t)changed
{
  itemCopy = item;
  compactAppearance = [itemCopy compactAppearance];
  [(UINavigationItem *)self->_destinationNavigationItem setCompactAppearance:compactAppearance];

  standardAppearance = [itemCopy standardAppearance];
  [(UINavigationItem *)self->_destinationNavigationItem setStandardAppearance:standardAppearance];

  scrollEdgeAppearance = [itemCopy scrollEdgeAppearance];

  [(UINavigationItem *)self->_destinationNavigationItem setScrollEdgeAppearance:scrollEdgeAppearance];
}

- (void)navigationItemUpdatedBackgroundAppearance:(id)appearance
{
  _backgroundHidden = [appearance _backgroundHidden];
  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem _setBackgroundHidden:_backgroundHidden];
}

- (void)navigationItemUpdatedScrollEdgeProgress:(id)progress
{
  progressCopy = progress;
  -[UINavigationItem _setManualScrollEdgeAppearanceEnabled:](self->_destinationNavigationItem, "_setManualScrollEdgeAppearanceEnabled:", [progressCopy _isManualScrollEdgeAppearanceEnabled]);
  [progressCopy _manualScrollEdgeAppearanceProgress];
  v6 = v5;

  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem _setManualScrollEdgeAppearanceProgress:v6];
}

- (void)navigationItemUpdatedPromptContent:(id)content
{
  prompt = [content prompt];
  [(UINavigationItem *)self->_destinationNavigationItem setPrompt:prompt];
}

- (void)navigationItemUpdatedSearchController:(id)controller oldSearchController:(id)searchController
{
  controllerCopy = controller;
  searchController = [controllerCopy searchController];
  [(UINavigationItem *)self->_destinationNavigationItem setSearchController:searchController];

  -[UINavigationItem setHidesSearchBarWhenScrolling:](self->_destinationNavigationItem, "setHidesSearchBarWhenScrolling:", [controllerCopy hidesSearchBarWhenScrolling]);
  preferredSearchBarPlacement = [controllerCopy preferredSearchBarPlacement];

  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem setPreferredSearchBarPlacement:preferredSearchBarPlacement];
}

- (void)navigationItemUpdatedSearchBarPlacementAllowsToolbarIntegration:(id)integration
{
  searchBarPlacementAllowsToolbarIntegration = [integration searchBarPlacementAllowsToolbarIntegration];
  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem setSearchBarPlacementAllowsToolbarIntegration:searchBarPlacementAllowsToolbarIntegration];
}

- (void)navigationItemUpdatedSearchBarPlacementAllowsExternalIntegration:(id)integration
{
  searchBarPlacementAllowsExternalIntegration = [integration searchBarPlacementAllowsExternalIntegration];
  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem setSearchBarPlacementAllowsExternalIntegration:searchBarPlacementAllowsExternalIntegration];
}

- (void)navigationItemUpdatedBottomPalette:(id)palette oldPalette:(id)oldPalette
{
  _bottomPalette = [palette _bottomPalette];
  [(UINavigationItem *)self->_destinationNavigationItem _setBottomPalette:_bottomPalette];
}

- (void)navigationItemUpdatedCenterBarButtonItems:(id)items animated:(BOOL)animated
{
  centerItemGroups = [items centerItemGroups];
  [(UINavigationItem *)self->_destinationNavigationItem setCenterItemGroups:centerItemGroups];
}

- (void)navigationItemUpdatedAdditionalOverflowItems:(id)items
{
  additionalOverflowItems = [items additionalOverflowItems];
  [(UINavigationItem *)self->_destinationNavigationItem setAdditionalOverflowItems:additionalOverflowItems];
}

- (void)navigationItemUpdatedNavigationBarVisibility:(id)visibility
{
  visibilityCopy = visibility;
  -[UINavigationItem _setPreferredNavigationBarVisibility:](self->_destinationNavigationItem, "_setPreferredNavigationBarVisibility:", [visibilityCopy _navigationBarVisibility]);
  _isNavigationBarHidden = [visibilityCopy _isNavigationBarHidden];

  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem _setNavigationBarHidden:_isNavigationBarHidden];
}

- (void)navigationItem:(id)item updatedPalettePart:(int64_t)part oldPalette:(id)palette
{
  itemCopy = item;
  _topPalette = [itemCopy _topPalette];
  [(UINavigationItem *)self->_destinationNavigationItem _setTopPalette:_topPalette];

  _bottomPalette = [itemCopy _bottomPalette];

  [(UINavigationItem *)self->_destinationNavigationItem _setBottomPalette:_bottomPalette];
}

- (void)navigationItemUpdatedAllowsInteractivePopWhenNavigationBarHidden:(id)hidden
{
  _allowsInteractivePopWhenNavigationBarHidden = [hidden _allowsInteractivePopWhenNavigationBarHidden];
  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem _setAllowsInteractivePopWhenNavigationBarHidden:_allowsInteractivePopWhenNavigationBarHidden];
}

- (void)navigationItemUpdatedAllowsInteractivePopWhenBackButtonHidden:(id)hidden
{
  _allowsInteractivePopWhenBackButtonHidden = [hidden _allowsInteractivePopWhenBackButtonHidden];
  destinationNavigationItem = self->_destinationNavigationItem;

  [(UINavigationItem *)destinationNavigationItem _setAllowsInteractivePopWhenBackButtonHidden:_allowsInteractivePopWhenBackButtonHidden];
}

- (BOOL)shouldSearchControllerDeferPresentationTransitionForNavigationItem:(id)item
{
  destinationNavigationItem = self->_destinationNavigationItem;
  searchController = [item searchController];
  LOBYTE(destinationNavigationItem) = [(UINavigationItem *)destinationNavigationItem _shouldSearchControllerDeferPresentationTransition:searchController];

  return destinationNavigationItem;
}

@end