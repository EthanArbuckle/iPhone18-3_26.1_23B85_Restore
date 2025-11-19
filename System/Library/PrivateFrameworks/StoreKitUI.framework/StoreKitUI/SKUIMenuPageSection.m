@interface SKUIMenuPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUIMenuPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (id)_contentChildView;
- (id)_newMenuViewController;
- (id)_pillsControl;
- (id)_popupHeaderView;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (void)_cancelMenuAction:(id)a3;
- (void)_dismissMenuViewController;
- (void)_loadSortDataIfNecessaryForMenuIndex:(int64_t)a3 reason:(int64_t)a4;
- (void)_pillAction:(id)a3;
- (void)_restorePreviousSelection;
- (void)_setSelectedIndex:(int64_t)a3;
- (void)_showMenuViewController;
- (void)_showMoreList;
- (void)_showPopoverController;
- (void)dealloc;
- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)sortDataRequest:(id)a3 didFinishWithLockups:(id)a4;
- (void)willAppearInContext:(id)a3;
@end

@implementation SKUIMenuPageSection

- (SKUIMenuPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuPageSection initWithPageComponent:];
  }

  v7.receiver = self;
  v7.super_class = SKUIMenuPageSection;
  v5 = [(SKUIStorePageSection *)&v7 initWithPageComponent:v4];
  if (v5)
  {
    v5->_selectedIndex = [v4 defaultSelectedIndex];
  }

  return v5;
}

- (void)dealloc
{
  [(SKUIMenuViewController *)self->_moreListMenuViewController setDelegate:0];
  [(UIPopoverController *)self->_moreListPopoverController setDelegate:0];
  [(SKUIPopupMenuHeaderView *)self->_popupHeaderView setDelegate:0];
  [(UIBarButtonItem *)self->_cancelMenuItem setTarget:0];
  [(SKUIPillsControl *)self->_pillsControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIMenuPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [v6 style];
  v8 = [v7 ikBackgroundColor];
  v9 = [v8 color];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUIMenuPageSection;
    v10 = [(SKUIStorePageSection *)&v13 backgroundColorForIndexPath:v4];
  }

  v11 = v10;

  return v11;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SKUIMenuPageSectionReuseIdentifier" forIndexPath:v4];

  [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v8 = [(SKUIMenuPageSection *)self _contentChildView];
  [v7 setContentChildView:v8];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SKUIMenuPageSection *)self _contentChildView];
  [v4 bounds];
  v6 = v5;

  v7 = [(SKUIStorePageSection *)self context];
  [v7 activePageWidth];
  v9 = v8;

  v10 = v9;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)sectionContentInset
{
  v2 = [(SKUIStorePageSection *)self isTopSection];
  v3 = 15.0;
  if (v2)
  {
    v3 = 7.0;
  }

  v4 = 0.0;
  v5 = 8.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUIMenuPageSectionReuseIdentifier"];
  v6.receiver = self;
  v6.super_class = SKUIMenuPageSection;
  [(SKUIStorePageSection *)&v6 willAppearInContext:v4];
}

- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  [a3 setIndexOfCheckedTitle:a4];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = 2;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = 4;
  }

  [(SKUIMenuPageSection *)self _setSelectedIndex:v8 + a4];

  [(SKUIMenuPageSection *)self _dismissMenuViewController];
}

- (void)sortDataRequest:(id)a3 didFinishWithLockups:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 sortURL];
  v8 = [(SKUIStorePageSection *)self pageComponent];
  v9 = [v8 numberOfItems];
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = 0;
    while (1)
    {
      v12 = [v8 sortURLForIndex:v11];
      v13 = [v7 isEqual:v12];

      if (v13)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_8;
      }
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [[SKUIGridComponent alloc] initWithLockups:v6];
      v18[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      [v8 _setChildComponents:v15 forIndex:v11];

      [(NSMutableIndexSet *)self->_sortRequestIndexSet removeIndex:v11];
      v16 = [(SKUIStorePageSection *)self context];
      v17 = [v16 parentViewController];
      [v17 _updateSectionsForIndex:v11 menuSection:self];
    }
  }

LABEL_8:
}

- (void)popoverControllerDidDismissPopover:(id)a3
{
  [(SKUIMenuPageSection *)self _restorePreviousSelection];
  [(SKUIMenuViewController *)self->_moreListMenuViewController setDelegate:0];
  moreListMenuViewController = self->_moreListMenuViewController;
  self->_moreListMenuViewController = 0;

  [(UIPopoverController *)self->_moreListPopoverController setDelegate:0];
  moreListPopoverController = self->_moreListPopoverController;
  self->_moreListPopoverController = 0;
}

- (void)_cancelMenuAction:(id)a3
{
  [(SKUIMenuPageSection *)self _restorePreviousSelection];

  [(SKUIMenuPageSection *)self _dismissMenuViewController];
}

- (void)_pillAction:(id)a3
{
  v4 = [(SKUIStorePageSection *)self pageComponent];
  v5 = [v4 numberOfItems];

  v6 = [(SKUIPillsControl *)self->_pillsControl selectedIndex];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = 3;
  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = 5;
  }

  if (v5 <= v9)
  {
    goto LABEL_10;
  }

  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v12 = 2;
  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = 4;
  }

  if (v6 == v12)
  {

    [(SKUIMenuPageSection *)self _showMoreList];
  }

  else
  {
LABEL_10:

    [(SKUIMenuPageSection *)self _setSelectedIndex:v6];
  }
}

- (id)_contentChildView
{
  v3 = [(SKUIStorePageSection *)self pageComponent];
  v4 = [v3 menuStyle];

  if (v4 && ([MEMORY[0x277D75418] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6))
  {
    v7 = [(SKUIMenuPageSection *)self _popupHeaderView];
  }

  else
  {
    v7 = [(SKUIMenuPageSection *)self _pillsControl];
  }

  return v7;
}

- (void)_dismissMenuViewController
{
  v10 = self->_moreListMenuViewController;
  cancelMenuItem = self->_cancelMenuItem;
  v4 = self->_moreListPopoverController;
  [(UIBarButtonItem *)cancelMenuItem setTarget:0];
  v5 = self->_cancelMenuItem;
  self->_cancelMenuItem = 0;

  [(SKUIMenuViewController *)self->_moreListMenuViewController setDelegate:0];
  moreListMenuViewController = self->_moreListMenuViewController;
  self->_moreListMenuViewController = 0;

  [(UIPopoverController *)self->_moreListPopoverController setDelegate:0];
  moreListPopoverController = self->_moreListPopoverController;
  self->_moreListPopoverController = 0;

  if (v4)
  {
    [(UIPopoverController *)v4 dismissPopoverAnimated:1];
  }

  else
  {
    [(SKUIMenuViewController *)v10 dismissViewControllerAnimated:1 completion:0];
  }

  v8 = [(SKUIStorePageSection *)self context];
  v9 = [v8 parentViewController];
  [v9 _endIgnoringSectionChanges];
}

- (void)_loadSortDataIfNecessaryForMenuIndex:(int64_t)a3 reason:(int64_t)a4
{
  if (([(NSMutableIndexSet *)self->_sortRequestIndexSet containsIndex:?]& 1) == 0)
  {
    v16 = [(SKUIStorePageSection *)self pageComponent];
    v7 = [v16 childComponentsForIndex:a3];

    v8 = v16;
    if (!v7)
    {
      v9 = [v16 sortURLForIndex:a3];
      if (v9)
      {
        v10 = [[SKUISortDataRequest alloc] initWithSortURL:v9];
        [(SKUISortDataRequest *)v10 setDelegate:self];
        sortRequestIndexSet = self->_sortRequestIndexSet;
        if (!sortRequestIndexSet)
        {
          v12 = objc_alloc_init(MEMORY[0x277CCAB58]);
          v13 = self->_sortRequestIndexSet;
          self->_sortRequestIndexSet = v12;

          sortRequestIndexSet = self->_sortRequestIndexSet;
        }

        [(NSMutableIndexSet *)sortRequestIndexSet addIndex:a3];
        v14 = [(SKUIStorePageSection *)self context];
        v15 = [v14 resourceLoader];
        [v15 loadResourceWithRequest:v10 reason:a4];
      }

      v8 = v16;
    }
  }
}

- (id)_newMenuViewController
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(SKUIPillsControl *)self->_pillsControl titles];
  v7 = [v6 subarrayWithRange:{v5, objc_msgSend(v6, "count") - v5}];

  v8 = [[SKUIMenuViewController alloc] initWithMenuTitles:v7];
  [(SKUIMenuViewController *)v8 setDelegate:self];
  selectedIndex = self->_selectedIndex;
  if (selectedIndex >= v5)
  {
    [(SKUIMenuViewController *)v8 setIndexOfCheckedTitle:selectedIndex - v5];
  }

  return v8;
}

- (id)_pillsControl
{
  pillsControl = self->_pillsControl;
  if (!pillsControl)
  {
    v4 = objc_alloc_init(SKUIPillsControl);
    v5 = self->_pillsControl;
    self->_pillsControl = v4;

    [(SKUIPillsControl *)self->_pillsControl addTarget:self action:sel__pillAction_ forControlEvents:4096];
    v6 = self->_pillsControl;
    v7 = [(SKUIStorePageSection *)self context];
    v8 = [v7 colorScheme];
    [(SKUIPillsControl *)v6 setColorScheme:v8];

    v9 = self->_pillsControl;
    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v12 = 5;
    }

    else
    {
      v12 = 3;
    }

    [(SKUIPillsControl *)v9 setMaximumNumberOfVisiblePills:v12];
    v13 = [(SKUIStorePageSection *)self pageComponent];
    v14 = self->_pillsControl;
    v15 = [v13 allTitles];
    [(SKUIPillsControl *)v14 setTitles:v15];

    v16 = [v13 viewElement];
    v17 = [v16 style];
    v18 = SKUIViewElementPlainColorWithStyle(v17, 0);

    [(SKUIPillsControl *)self->_pillsControl setTintColor:v18];
    v19 = [(SKUIStorePageSection *)self context];
    v20 = [v19 parentViewController];
    v21 = [v20 clientContext];

    v22 = [v13 titleForMoreItem];
    v23 = self->_pillsControl;
    if (v22)
    {
      [(SKUIPillsControl *)self->_pillsControl setMoreListTitle:v22];
    }

    else
    {
      if (v21)
      {
        [v21 localizedStringForKey:@"TABS_MORE_LIST_TITLE"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"TABS_MORE_LIST_TITLE" inBundles:0];
      }
      v24 = ;
      [(SKUIPillsControl *)v23 setMoreListTitle:v24];
    }

    [(SKUIPillsControl *)self->_pillsControl setContentInset:0.0, 15.0, 0.0, 15.0];
    [(SKUIPillsControl *)self->_pillsControl reloadPills];
    v25 = self->_pillsControl;
    selectedIndex = self->_selectedIndex;
    v27 = [MEMORY[0x277D75418] currentDevice];
    v28 = [v27 userInterfaceIdiom];

    v29 = 2;
    if ((v28 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v29 = 4;
    }

    if (selectedIndex >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = selectedIndex;
    }

    [(SKUIPillsControl *)v25 setSelectedIndex:v30];
    [(SKUIPillsControl *)self->_pillsControl sizeToFit];

    pillsControl = self->_pillsControl;
  }

  return pillsControl;
}

- (id)_popupHeaderView
{
  popupHeaderView = self->_popupHeaderView;
  if (!popupHeaderView)
  {
    v4 = objc_alloc_init(SKUIPopupMenuHeaderView);
    v5 = self->_popupHeaderView;
    self->_popupHeaderView = v4;

    [(SKUIPopupMenuHeaderView *)self->_popupHeaderView setDelegate:self];
    v6 = [(SKUIStorePageSection *)self pageComponent];
    v7 = [v6 menuTitle];
    if (v7)
    {
      [(SKUIPopupMenuHeaderView *)self->_popupHeaderView setTitle:v7];
    }

    v8 = [(SKUIStorePageSection *)self context];
    v9 = [v8 parentViewController];
    v10 = [v9 clientContext];

    v11 = self->_popupHeaderView;
    if (v10)
    {
      [v10 localizedStringForKey:@"POPUP_SORT_BY"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"POPUP_SORT_BY" inBundles:0];
    }
    v12 = ;
    [(SKUIPopupMenuHeaderView *)v11 setMenuLabelTitle:v12];

    v13 = self->_popupHeaderView;
    v14 = [v6 allTitles];
    [(SKUIPopupMenuHeaderView *)v13 setMenuItemTitles:v14];

    v15 = self->_popupHeaderView;
    v16 = [(SKUIStorePageSection *)self context];
    v17 = [v16 colorScheme];
    [(SKUIPopupMenuHeaderView *)v15 setColoringWithColorScheme:v17];

    [(SKUIPopupMenuHeaderView *)self->_popupHeaderView setSelectedMenuItemIndex:self->_selectedIndex];
    [(SKUIPopupMenuHeaderView *)self->_popupHeaderView sizeToFit];

    popupHeaderView = self->_popupHeaderView;
  }

  return popupHeaderView;
}

- (void)_restorePreviousSelection
{
  selectedIndex = self->_selectedIndex;
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = 2;
  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = 4;
  }

  if (selectedIndex >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = selectedIndex;
  }

  [(SKUIPillsControl *)self->_pillsControl reloadPills];
  pillsControl = self->_pillsControl;

  [(SKUIPillsControl *)pillsControl setSelectedIndex:v7];
}

- (void)_setSelectedIndex:(int64_t)a3
{
  if (self->_selectedIndex != a3)
  {
    self->_selectedIndex = a3;
    v4 = [(SKUIStorePageSection *)self pageComponent];
    v8 = [v4 viewElement];

    selectedIndex = self->_selectedIndex;
    if (v8)
    {
      [v8 dispatchEventOfType:2 forItemAtIndex:selectedIndex];
    }

    else
    {
      [(SKUIMenuPageSection *)self _loadSortDataIfNecessaryForMenuIndex:selectedIndex reason:1];
      v6 = [(SKUIStorePageSection *)self context];
      v7 = [v6 parentViewController];
      [v7 _setSelectedIndex:self->_selectedIndex forMenuSection:self];
    }
  }
}

- (void)_showMenuViewController
{
  if (!self->_moreListMenuViewController)
  {
    v16 = [(SKUIStorePageSection *)self context];
    v3 = [v16 parentViewController];
    v4 = [(SKUIMenuPageSection *)self _newMenuViewController];
    moreListMenuViewController = self->_moreListMenuViewController;
    self->_moreListMenuViewController = v4;

    v6 = self->_moreListMenuViewController;
    v7 = [(SKUIPillsControl *)self->_pillsControl moreListTitle];
    [(SKUIMenuViewController *)v6 setTitle:v7];

    v8 = objc_alloc_init(MEMORY[0x277D751E0]);
    cancelMenuItem = self->_cancelMenuItem;
    self->_cancelMenuItem = v8;

    [(UIBarButtonItem *)self->_cancelMenuItem setAction:sel__cancelMenuAction_];
    [(UIBarButtonItem *)self->_cancelMenuItem setStyle:2];
    [(UIBarButtonItem *)self->_cancelMenuItem setTarget:self];
    v10 = self->_cancelMenuItem;
    v11 = [v16 clientContext];
    v12 = v11;
    if (v11)
    {
      [v11 localizedStringForKey:@"CANCEL"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"CANCEL" inBundles:0];
    }
    v13 = ;
    [(UIBarButtonItem *)v10 setTitle:v13];

    v14 = [(SKUIMenuViewController *)self->_moreListMenuViewController navigationItem];
    [v14 setLeftBarButtonItem:self->_cancelMenuItem];

    v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_moreListMenuViewController];
    [v3 presentViewController:v15 animated:1 completion:0];
    [v3 _beginIgnoringSectionChanges];
  }
}

- (void)_showMoreList
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {

    [(SKUIMenuPageSection *)self _showPopoverController];
  }

  else
  {

    [(SKUIMenuPageSection *)self _showMenuViewController];
  }
}

- (void)_showPopoverController
{
  if (!self->_moreListPopoverController)
  {
    v3 = [(SKUIMenuPageSection *)self _newMenuViewController];
    moreListMenuViewController = self->_moreListMenuViewController;
    self->_moreListMenuViewController = v3;

    [(SKUIMenuViewController *)self->_moreListMenuViewController setDelegate:self];
    v5 = [(SKUIMenuViewController *)self->_moreListMenuViewController menuTitles];
    v6 = ([v5 count] * 45.0);

    [(SKUIMenuViewController *)self->_moreListMenuViewController setPreferredContentSize:320.0, v6];
    v7 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self->_moreListMenuViewController];
    moreListPopoverController = self->_moreListPopoverController;
    self->_moreListPopoverController = v7;

    [(UIPopoverController *)self->_moreListPopoverController setDelegate:self];
    [(UIPopoverController *)self->_moreListPopoverController setPopoverContentSize:320.0, v6];
    v9 = self->_moreListPopoverController;
    [(SKUIPillsControl *)self->_pillsControl selectedPillFrame];
    [(UIPopoverController *)v9 presentPopoverFromRect:self->_pillsControl inView:1 permittedArrowDirections:1 animated:?];
    v11 = [(SKUIStorePageSection *)self context];
    v10 = [v11 parentViewController];
    [v10 _beginIgnoringSectionChanges];
  }
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuPageSection initWithPageComponent:]";
}

@end