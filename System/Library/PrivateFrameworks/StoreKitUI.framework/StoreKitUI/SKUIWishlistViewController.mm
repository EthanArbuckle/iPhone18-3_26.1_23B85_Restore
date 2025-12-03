@interface SKUIWishlistViewController
+ (id)wishlistBarButtonItemWithClientContext:(id)context;
- (BOOL)_isEditingEnabled;
- (SKUIWishlistDelegate)delegate;
- (SKUIWishlistViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_emptyWishlistView;
- (id)_itemListViewController;
- (id)_wishlist;
- (id)contentScrollView;
- (int64_t)_wishlistState;
- (void)_deleteAction:(id)action;
- (void)_deleteItemsAtIndexPaths:(id)paths;
- (void)_destroyEmptyWishlistView;
- (void)_finishSignInWithResponse:(id)response error:(id)error;
- (void)_finishSyncWithResult:(BOOL)result didChange:(BOOL)change error:(id)error;
- (void)_reloadChildView;
- (void)_reloadForAccountsChanged;
- (void)_reloadNavigationBarAnimated:(BOOL)animated;
- (void)_reloadWishlist;
- (void)_setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)_signInAction:(id)action;
- (void)_syncWishlist;
- (void)_updateDeleteButton;
- (void)_wishlistDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)itemList:(id)list didDeselectItem:(id)item atIndexPath:(id)path;
- (void)itemList:(id)list didRemoveItemAtIndexPath:(id)path;
- (void)itemList:(id)list didSelectItem:(id)item atIndexPath:(id)path;
- (void)loadView;
- (void)setClientContext:(id)context;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIWishlistViewController

- (SKUIWishlistViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIWishlistViewController initWithNibName:bundle:];
  }

  v12.receiver = self;
  v12.super_class = SKUIWishlistViewController;
  v8 = [(SKUIWishlistViewController *)&v12 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
    {
      [(SKUIWishlistViewController *)v8 setTitle:@"Wish List"];
    }

    v8->_wishlistState = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, __AccountsChanged, *MEMORY[0x277D6A6C8], 0, CFNotificationSuspensionBehaviorCoalesce);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__wishlistDidChangeNotification_ name:0x28280D9C8 object:0];
  }

  return v8;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D6A6C8], 0);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:0x28280D9C8 object:0];
  [(SKUIItemListTableViewController *)self->_itemListViewController setDelegate:0];

  v5.receiver = self;
  v5.super_class = SKUIWishlistViewController;
  [(SKUIViewController *)&v5 dealloc];
}

+ (id)wishlistBarButtonItemWithClientContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(MEMORY[0x277D751E0]);
  if (contextCopy)
  {
    [contextCopy localizedStringForKey:@"WISH_LIST_BUTTON"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"WISH_LIST_BUTTON" inBundles:0];
  }
  v5 = ;
  [v4 setAccessibilityLabel:v5];

  v6 = [MEMORY[0x277D755B8] kitImageNamed:@"UIButtonBarListIcon.png"];
  imageFlippedForRightToLeftLayoutDirection = [v6 imageFlippedForRightToLeftLayoutDirection];
  [v4 setImage:imageFlippedForRightToLeftLayoutDirection];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v10 = 2.0;
  if (userInterfaceIdiom == 1)
  {
    v10 = 3.0;
  }

  [v4 setImageInsets:{v10, 0.0, 0.0, 0.0}];

  return v4;
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"WISH_LIST_TAB_TITLE"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"WISH_LIST_TAB_TITLE" inBundles:0];
    }
    v5 = ;
    [(SKUIWishlistViewController *)self setTitle:v5];
  }

  v6.receiver = self;
  v6.super_class = SKUIWishlistViewController;
  [(SKUIViewController *)&v6 setClientContext:contextCopy];
}

- (id)contentScrollView
{
  _itemListViewController = [(SKUIWishlistViewController *)self _itemListViewController];
  tableView = [_itemListViewController tableView];

  return tableView;
}

- (void)loadView
{
  v13 = objc_alloc_init(MEMORY[0x277D75D18]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v13 setBackgroundColor:clearColor];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    [keyWindow bounds];
    v8 = v7;
    v9 = SKUICompactThreshold();

    if (v8 > v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  backdropView = self->_backdropView;
  if (!backdropView)
  {
    v11 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
    v12 = self->_backdropView;
    self->_backdropView = v11;

    backdropView = self->_backdropView;
  }

  [v13 addSubview:backdropView];
LABEL_8:
  [(SKUIWishlistViewController *)self setView:v13];
  [(SKUIWishlistViewController *)self _reloadChildView];
}

- (void)viewDidLayoutSubviews
{
  if (!self->_backdropView)
  {
    view = [(SKUIWishlistViewController *)self view];
    v4 = SKUIPopoverBackdropViewForView(view);
    backdropView = self->_backdropView;
    self->_backdropView = v4;
  }

  v6.receiver = self;
  v6.super_class = SKUIWishlistViewController;
  [(SKUIWishlistViewController *)&v6 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (([(SKUIWishlistViewController *)self _wishlistState]- 3) <= 1)
  {
    [(SKUIWishlistViewController *)self _syncWishlist];
  }

  if (self->_reloadOnNextAppear)
  {
    self->_reloadOnNextAppear = 0;
    [(SKUIWishlistViewController *)self _reloadWishlist];
  }

  [(SKUIWishlistViewController *)self _reloadNavigationBarAnimated:0];
  v5.receiver = self;
  v5.super_class = SKUIWishlistViewController;
  [(SKUIViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x277D75348];
  coordinatorCopy = coordinator;
  whiteColor = [v7 whiteColor];
  view = [(SKUIWishlistViewController *)self view];
  [view setBackgroundColor:whiteColor];

  [(_UIBackdropView *)self->_backdropView setHidden:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__SKUIWishlistViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &unk_2781F8348;
  v12[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_43 completion:v12];
  v11.receiver = self;
  v11.super_class = SKUIWishlistViewController;
  [(SKUIWishlistViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

void __81__SKUIWishlistViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1064) setHidden:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:v3];
}

- (void)itemList:(id)list didDeselectItem:(id)item atIndexPath:(id)path
{
  if (self->_editing)
  {
    [(SKUIWishlistViewController *)self _updateDeleteButton:list];
  }
}

- (void)itemList:(id)list didRemoveItemAtIndexPath:(id)path
{
  v9 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = MEMORY[0x277CBEA60];
  pathCopy2 = path;
  v7 = [v5 arrayWithObjects:&pathCopy count:1];

  [(SKUIWishlistViewController *)self _deleteItemsAtIndexPaths:v7, pathCopy, v9];
}

- (void)itemList:(id)list didSelectItem:(id)item atIndexPath:(id)path
{
  listCopy = list;
  itemCopy = item;
  pathCopy = path;
  if (self->_editing)
  {
    [(SKUIWishlistViewController *)self _updateDeleteButton];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [(SKUIViewController *)v12 wishlist:self didSelectItem:itemCopy atIndexPath:pathCopy];
    }

    else
    {
      v12 = [[SKUIIPhoneProductPageViewController alloc] initWithItem:itemCopy];
      clientContext = [(SKUIViewController *)self clientContext];
      [(SKUIViewController *)v12 setClientContext:clientContext];

      navigationController = [(SKUIWishlistViewController *)self navigationController];
      [navigationController pushViewController:v12 animated:1];
    }
  }
}

- (void)_wishlistDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  _wishlist = [(SKUIWishlistViewController *)self _wishlist];
  object = [notificationCopy object];

  if (_wishlist == object)
  {
    if (SKUIViewControllerIsVisible(self))
    {

      [(SKUIWishlistViewController *)self _reloadWishlist];
    }

    else
    {
      if (self->_reloadOnNextAppear)
      {
        isViewLoaded = 1;
      }

      else
      {
        isViewLoaded = [(SKUIWishlistViewController *)self isViewLoaded];
      }

      self->_reloadOnNextAppear = isViewLoaded;
    }
  }
}

- (void)_deleteAction:(id)action
{
  tableView = [(SKUIItemListTableViewController *)self->_itemListViewController tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  [(SKUIWishlistViewController *)self _deleteItemsAtIndexPaths:indexPathsForSelectedRows];
  [(SKUIWishlistViewController *)self _setEditing:0 animated:1];
}

- (void)_signInAction:(id)action
{
  actionCopy = action;
  [actionCopy setEnabled:0];
  v5 = objc_alloc(MEMORY[0x277D69BC8]);
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  v8 = [v5 initWithAccount:activeAccount];

  [v8 setPromptStyle:1];
  objc_initWeak(&location, self);
  v9 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SKUIWishlistViewController__signInAction___block_invoke;
  v10[3] = &unk_2781FA2F0;
  objc_copyWeak(&v11, &location);
  [v9 startWithAuthenticateResponseBlock:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

void __44__SKUIWishlistViewController__signInAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SKUIWishlistViewController__signInAction___block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __44__SKUIWishlistViewController__signInAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishSignInWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_deleteItemsAtIndexPaths:(id)paths
{
  v24 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  selfCopy = self;
  items = [(SKUIWishlist *)self->_wishlist items];
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = pathsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) row];
        [v6 addIndex:v13];
        v14 = [items objectAtIndex:v13];
        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "itemIdentifier")}];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  [(SKUIWishlist *)selfCopy->_wishlist removeItemsWithItemIdentifiers:v7];
  [(SKUIItemListTableViewController *)selfCopy->_itemListViewController deleteRowsAtIndexPaths:v8];
  items2 = [(SKUIWishlist *)selfCopy->_wishlist items];
  v17 = [items2 count];

  if (!v17)
  {
    [(SKUIWishlistViewController *)selfCopy _reloadChildView];
  }
}

- (void)_destroyEmptyWishlistView
{
  [(_UIContentUnavailableView *)self->_emptyWishlistView removeFromSuperview];
  emptyWishlistView = self->_emptyWishlistView;
  self->_emptyWishlistView = 0;
}

- (id)_emptyWishlistView
{
  emptyWishlistView = self->_emptyWishlistView;
  if (!emptyWishlistView)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75E78]);
    v5 = [v4 initWithFrame:0 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_emptyWishlistView;
    self->_emptyWishlistView = v5;

    v7 = self->_emptyWishlistView;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__SKUIWishlistViewController__emptyWishlistView__block_invoke;
    v9[3] = &unk_2781F8320;
    objc_copyWeak(&v10, &location);
    [(_UIContentUnavailableView *)v7 setButtonAction:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    emptyWishlistView = self->_emptyWishlistView;
  }

  return emptyWishlistView;
}

void __48__SKUIWishlistViewController__emptyWishlistView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _signInAction:0];
}

- (void)_finishSignInWithResponse:(id)response error:(id)error
{
  if ([response authenticateResponseType] == 4)
  {
    self->_wishlistState = 4;
    [(SKUIWishlistViewController *)self _reloadChildView];

    [(SKUIWishlistViewController *)self _syncWishlist];
  }
}

- (void)_finishSyncWithResult:(BOOL)result didChange:(BOOL)change error:(id)error
{
  changeCopy = change;
  resultCopy = result;
  errorCopy = error;
  [(SKUISyncWishlistOperation *)self->_syncOperation setResultBlock:0];
  syncOperation = self->_syncOperation;
  self->_syncOperation = 0;

  if (resultCopy)
  {
    self->_wishlistState = 2;
    if (changeCopy)
    {
      [(SKUIWishlist *)self->_wishlist postChangeNotification];
    }

    goto LABEL_4;
  }

  if (self->_wishlistState == 4)
  {
    if ([errorCopy code] == 1)
    {
      domain = [errorCopy domain];
      v10 = [domain isEqualToString:*MEMORY[0x277D6A678]];

      if (v10)
      {
        self->_wishlistState = 1;
LABEL_4:
        [(SKUIWishlistViewController *)self _reloadChildView];
        goto LABEL_10;
      }
    }

    [(SKUIViewController *)self showError:errorCopy];
  }

LABEL_10:
}

- (BOOL)_isEditingEnabled
{
  _wishlist = [(SKUIWishlistViewController *)self _wishlist];
  items = [_wishlist items];
  v4 = [items count] != 0;

  return v4;
}

- (id)_itemListViewController
{
  itemListViewController = self->_itemListViewController;
  if (!itemListViewController)
  {
    v4 = objc_alloc_init(SKUIItemListTableViewController);
    v5 = self->_itemListViewController;
    self->_itemListViewController = v4;

    v6 = self->_itemListViewController;
    clientContext = [(SKUIViewController *)self clientContext];
    [(SKUIItemListTableViewController *)v6 setClientContext:clientContext];

    [(SKUIItemListTableViewController *)self->_itemListViewController setDelegate:self];
    [(SKUIItemListTableViewController *)self->_itemListViewController setRowHeight:84.0];
    [(SKUIItemListTableViewController *)self->_itemListViewController setSelectionStyle:1];
    v8 = +[SKUIItemArtworkContext wishlistContext];
    [(SKUIItemListTableViewController *)self->_itemListViewController setArtworkContext:v8];
    v9 = self->_itemListViewController;
    [v8 imageSizeForItem:0];
    [(SKUIItemListTableViewController *)v9 setImageBoundingSize:?];
    [(SKUIItemListTableViewController *)self->_itemListViewController setItemCellClass:objc_opt_class()];
    [(SKUIWishlistViewController *)self addChildViewController:self->_itemListViewController];
    tableView = [(SKUIItemListTableViewController *)self->_itemListViewController tableView];
    [tableView setAllowsMultipleSelectionDuringEditing:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [tableView setBackgroundColor:clearColor];

    [tableView setSeparatorStyle:0];
    itemListViewController = self->_itemListViewController;
  }

  return itemListViewController;
}

- (void)_reloadChildView
{
  _wishlistState = [(SKUIWishlistViewController *)self _wishlistState];
  if ((_wishlistState - 2) >= 2)
  {
    if (_wishlistState != 1)
    {
      v9 = 0;
      goto LABEL_25;
    }

    clientContext = [(SKUIViewController *)self clientContext];
    _emptyWishlistView = [(SKUIWishlistViewController *)self _emptyWishlistView];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_TITLE"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_TITLE" inBundles:0];
    }
    v12 = ;
    [_emptyWishlistView setTitle:v12];

    if (clientContext)
    {
      [clientContext localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_MESSAGE"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_MESSAGE" inBundles:0];
    }
    v13 = ;
    [_emptyWishlistView setMessage:v13];

    if (clientContext)
    {
      [clientContext localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_BUTTON"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_BUTTON" inBundles:0];
    }
    _itemListViewController = ;
    [_emptyWishlistView setButtonTitle:_itemListViewController];
  }

  else
  {
    _wishlist = [(SKUIWishlistViewController *)self _wishlist];
    clientContext = [_wishlist items];

    if (![clientContext count])
    {
      _emptyWishlistView = [(SKUIWishlistViewController *)self _emptyWishlistView];
      clientContext2 = [(SKUIViewController *)self clientContext];
      v11 = clientContext2;
      if (clientContext2)
      {
        [clientContext2 localizedStringForKey:@"EMPTY_WISHLIST_TITLE"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"EMPTY_WISHLIST_TITLE" inBundles:0];
      }
      v14 = ;
      [_emptyWishlistView setTitle:v14];

      clientContext3 = [(SKUIViewController *)self clientContext];
      v16 = clientContext3;
      if (clientContext3)
      {
        [clientContext3 localizedStringForKey:@"EMPTY_WISHLIST_MESSAGE"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"EMPTY_WISHLIST_MESSAGE" inBundles:0];
      }
      v17 = ;
      [_emptyWishlistView setMessage:v17];

      [_emptyWishlistView setButtonTitle:0];
      goto LABEL_24;
    }

    _itemListViewController = [(SKUIWishlistViewController *)self _itemListViewController];
    v7 = objc_alloc_init(SKUIItemList);
    [(SKUIItemList *)v7 setItems:clientContext];
    artworkContext = [_itemListViewController artworkContext];
    [artworkContext largestImageSizeForItems:clientContext];
    [_itemListViewController setImageBoundingSize:?];

    [_itemListViewController setItemList:v7];
    _emptyWishlistView = [_itemListViewController view];
  }

LABEL_24:
  v9 = _emptyWishlistView;
LABEL_25:
  v21 = v9;
  if (v9 != self->_emptyWishlistView)
  {
    [(SKUIWishlistViewController *)self _destroyEmptyWishlistView];
    v9 = v21;
  }

  if (v9)
  {
    view = [(SKUIWishlistViewController *)self view];
    [(_UIContentUnavailableView *)v21 setAutoresizingMask:18];
    backgroundColor = [view backgroundColor];
    [(_UIContentUnavailableView *)v21 setBackgroundColor:backgroundColor];

    [view bounds];
    [(_UIContentUnavailableView *)v21 setFrame:?];
    [view addSubview:v21];

    v9 = v21;
  }
}

- (void)_reloadForAccountsChanged
{
  v3 = +[SKUIWishlist activeWishlist];
  wishlist = self->_wishlist;
  if (wishlist != v3)
  {
    obj = v3;
    wishlist = [wishlist isEqual:v3];
    v3 = obj;
    if ((wishlist & 1) == 0)
    {
      objc_storeStrong(&self->_wishlist, obj);
      [(SKUIWishlistViewController *)self _destroyEmptyWishlistView];
      self->_wishlistState = 0;
      [(SKUIWishlistViewController *)self _reloadWishlist];
      wishlist = [(SKUIWishlistViewController *)self _wishlistState];
      v3 = obj;
      if ((wishlist - 3) <= 1)
      {
        wishlist = [(SKUIWishlistViewController *)self _syncWishlist];
        v3 = obj;
      }
    }
  }

  MEMORY[0x2821F96F8](wishlist, v3);
}

- (void)_reloadNavigationBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  clientContext = [(SKUIViewController *)self clientContext];
  navigationItem = [(SKUIWishlistViewController *)self navigationItem];
  if (([(SKUIWishlistViewController *)self _wishlistState]- 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (self->_editing)
    {
      if (!self->_deleteButton)
      {
        v6 = objc_alloc_init(MEMORY[0x277D751E0]);
        deleteButton = self->_deleteButton;
        self->_deleteButton = v6;

        [(UIBarButtonItem *)self->_deleteButton setAction:sel__deleteAction_];
        [(UIBarButtonItem *)self->_deleteButton setEnabled:0];
        [(UIBarButtonItem *)self->_deleteButton setTarget:self];
        v8 = self->_deleteButton;
        if (clientContext)
        {
          [clientContext localizedStringForKey:@"WISH_LIST_DELETE_BUTTON"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"WISH_LIST_DELETE_BUTTON" inBundles:0];
        }
        v12 = ;
        [(UIBarButtonItem *)v8 setTitle:v12];

        v13 = objc_alloc(MEMORY[0x277CBEAC0]);
        systemRedColor = [MEMORY[0x277D75348] systemRedColor];
        v15 = *MEMORY[0x277D740C0];
        v16 = [v13 initWithObjectsAndKeys:{systemRedColor, *MEMORY[0x277D740C0], 0}];

        [(UIBarButtonItem *)self->_deleteButton setTitleTextAttributes:v16 forState:0];
        v17 = objc_alloc(MEMORY[0x277CBEAC0]);
        systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
        v19 = [v17 initWithObjectsAndKeys:{systemGrayColor, v15, 0}];

        [(UIBarButtonItem *)self->_deleteButton setTitleTextAttributes:v19 forState:2];
      }

      v9 = objc_alloc_init(MEMORY[0x277D751E0]);
      [v9 setAction:sel__toggleEditAction_];
      [v9 setStyle:2];
      [v9 setTarget:self];
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"WISH_LIST_CANCEL_BUTTON"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"WISH_LIST_CANCEL_BUTTON" inBundles:0];
      }
      v20 = ;
      [v9 setTitle:v20];

      [navigationItem setLeftBarButtonItem:self->_deleteButton animated:animatedCopy];
      [navigationItem setRightBarButtonItem:v9 animated:animatedCopy];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277D751E0]);
      [v9 setAction:sel__toggleEditAction_];
      [v9 setEnabled:{-[SKUIWishlistViewController _isEditingEnabled](self, "_isEditingEnabled")}];
      [v9 setTarget:self];
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"WISH_LIST_EDIT_BUTTON"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"WISH_LIST_EDIT_BUTTON" inBundles:0];
      }
      v10 = ;
      [v9 setTitle:v10];

      [navigationItem setLeftBarButtonItem:v9 animated:animatedCopy];
      [navigationItem setRightBarButtonItem:0 animated:animatedCopy];
      v11 = self->_deleteButton;
      self->_deleteButton = 0;
    }
  }

  else
  {
    [navigationItem setLeftBarButtonItem:0];
    [navigationItem setRightBarButtonItem:0];
  }

  if (!self->_editing)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      keyWindow = [mEMORY[0x277D75128] keyWindow];
      [keyWindow bounds];
      v25 = v24;
      v26 = SKUICompactThreshold();

      if (v25 > v26)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    v27 = objc_alloc_init(MEMORY[0x277D751E0]);
    [v27 setAction:sel__doneAction_];
    [v27 setStyle:2];
    [v27 setTarget:self];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"WISH_LIST_DONE_BUTTON"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"WISH_LIST_DONE_BUTTON" inBundles:0];
    }
    v28 = ;
    [v27 setTitle:v28];

    [navigationItem setRightBarButtonItem:v27 animated:animatedCopy];
  }

LABEL_27:
  navigationController = [(SKUIWishlistViewController *)self navigationController];
  view = [navigationController view];
  [view setSemanticContentAttribute:storeSemanticContentAttribute()];

  navigationController2 = [(SKUIWishlistViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar setSemanticContentAttribute:storeSemanticContentAttribute()];
}

- (void)_reloadWishlist
{
  [(SKUIWishlistViewController *)self _reloadChildView];

  [(SKUIWishlistViewController *)self _reloadNavigationBarAnimated:0];
}

- (void)_setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    animatedCopy = animated;
    editingCopy = editing;
    self->_editing = editing;
    _itemListViewController = [(SKUIWishlistViewController *)self _itemListViewController];
    tableView = [_itemListViewController tableView];
    [tableView setAllowsMultipleSelectionDuringEditing:editingCopy];

    [_itemListViewController setEditing:editingCopy animated:animatedCopy];
    [(SKUIWishlistViewController *)self _reloadNavigationBarAnimated:animatedCopy];
  }
}

- (void)_syncWishlist
{
  if (!self->_syncOperation)
  {
    v3 = [SKUISyncWishlistOperation alloc];
    clientContext = [(SKUIViewController *)self clientContext];
    v5 = [(SKUISyncWishlistOperation *)v3 initWithClientContext:clientContext];
    syncOperation = self->_syncOperation;
    self->_syncOperation = v5;

    objc_initWeak(&location, self);
    v7 = self->_syncOperation;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __43__SKUIWishlistViewController__syncWishlist__block_invoke;
    v12 = &unk_2781FE5E8;
    objc_copyWeak(&v13, &location);
    [(SKUISyncWishlistOperation *)v7 setResultBlock:&v9];
    v8 = SKUIWishlistOperationQueue();
    [v8 addOperation:{self->_syncOperation, v9, v10, v11, v12}];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __43__SKUIWishlistViewController__syncWishlist__block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SKUIWishlistViewController__syncWishlist__block_invoke_2;
  block[3] = &unk_2781FEDA0;
  objc_copyWeak(&v11, (a1 + 32));
  v12 = a2;
  v13 = a3;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v11);
}

void __43__SKUIWishlistViewController__syncWishlist__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishSyncWithResult:*(a1 + 48) didChange:*(a1 + 49) error:*(a1 + 32)];
}

- (void)_updateDeleteButton
{
  tableView = [(SKUIItemListTableViewController *)self->_itemListViewController tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v5 = [indexPathsForSelectedRows count];

  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v6 setNumberStyle:1];
    clientContext = [(SKUIViewController *)self clientContext];
    v8 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"WISH_LIST_DELETE_BUTTON_SELECTED"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"WISH_LIST_DELETE_BUTTON_SELECTED" inBundles:0];
    }
    v11 = ;

    [(UIBarButtonItem *)self->_deleteButton setEnabled:1];
    deleteButton = self->_deleteButton;
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v15 = [v6 stringFromNumber:v14];
    v16 = [v13 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v15];
    [(UIBarButtonItem *)deleteButton setTitle:v16];
  }

  else
  {
    [(UIBarButtonItem *)self->_deleteButton setEnabled:0];
    v9 = self->_deleteButton;
    clientContext2 = [(SKUIViewController *)self clientContext];
    v6 = clientContext2;
    if (clientContext2)
    {
      [clientContext2 localizedStringForKey:@"WISH_LIST_DELETE_BUTTON"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"WISH_LIST_DELETE_BUTTON" inBundles:0];
    }
    v11 = ;
    [(UIBarButtonItem *)v9 setTitle:v11];
  }

  v17 = MEMORY[0x277D75D18];

  [v17 setAnimationsEnabled:1];
}

- (id)_wishlist
{
  wishlist = self->_wishlist;
  if (!wishlist)
  {
    v4 = +[SKUIWishlist activeWishlist];
    v5 = self->_wishlist;
    self->_wishlist = v4;

    wishlist = self->_wishlist;
  }

  return wishlist;
}

- (int64_t)_wishlistState
{
  result = self->_wishlistState;
  if (!result)
  {
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    activeAccount = [defaultStore activeAccount];

    if (activeAccount)
    {
      uniqueIdentifier = [activeAccount uniqueIdentifier];
      longLongValue = [uniqueIdentifier longLongValue];

      if ([MEMORY[0x277D69D58] existsForAccountIdentifier:longLongValue])
      {
        v8 = [objc_alloc(MEMORY[0x277D69D58]) initWithAccountIdentifier:longLongValue];
        lastSyncTime = [v8 lastSyncTime];

        v10 = 3;
        if (!lastSyncTime)
        {
          v10 = 4;
        }

        self->_wishlistState = v10;

        goto LABEL_10;
      }

      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    self->_wishlistState = v11;
LABEL_10:

    return self->_wishlistState;
  }

  return result;
}

- (SKUIWishlistDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithNibName:bundle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIWishlistViewController initWithNibName:bundle:]";
}

@end