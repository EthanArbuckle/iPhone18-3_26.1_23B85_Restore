@interface SKUIProductPageHeaderViewController
- (BOOL)_isRestricted;
- (SKUIProductPageHeaderFloatingView)floatingView;
- (SKUIProductPageHeaderViewController)initWithItem:(id)item;
- (SKUIProductPageHeaderViewDelegate)delegate;
- (UIImage)iconImage;
- (id)_activeItem;
- (id)_ageBandString;
- (id)_artworkContext;
- (id)_contentRatingResourceLoader;
- (id)_segmentedControlTitles;
- (void)_artistButtonAction:(id)action;
- (void)_destroyPopoverController;
- (void)_disableItemOfferButtonWithTitle:(id)title animated:(BOOL)animated;
- (void)_itemOfferButtonAction:(id)action;
- (void)_loadUberImageIfAvailable;
- (void)_reloadItemStateAnimated:(BOOL)animated;
- (void)_sectionControlAction:(id)action;
- (void)_sendDidReloadOffer;
- (void)_setArtworkWithImage:(id)image error:(id)error;
- (void)_setItemState:(id)state animated:(BOOL)animated;
- (void)_setPersonalizedOffer:(id)offer;
- (void)_setUberWithImage:(id)image error:(id)error;
- (void)_shareButtonAction:(id)action;
- (void)_showActivityViewControllerFromView:(id)view;
- (void)_showAskPermissionBanner;
- (void)_showSynthesizedItemStateWithFlag:(unint64_t)flag animated:(BOOL)animated;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed;
- (void)itemStateCenterRestrictionsChanged:(id)changed;
- (void)loadView;
- (void)reloadData;
- (void)setAskPermission:(BOOL)permission;
- (void)setProductPage:(id)page;
- (void)setSelectedSectionIndex:(int64_t)index;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SKUIProductPageHeaderViewController

- (SKUIProductPageHeaderViewController)initWithItem:(id)item
{
  itemCopy = item;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageHeaderViewController initWithItem:];
  }

  v10.receiver = self;
  v10.super_class = SKUIProductPageHeaderViewController;
  v6 = [(SKUIProductPageHeaderViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
    v7->_itemIdentifier = [(SKUIItem *)v7->_item itemIdentifier];
    v8 = +[SKUIItemStateCenter defaultCenter];
    [v8 addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[SKUIItemStateCenter defaultCenter];
  [v3 removeObserver:self];
  [(UIPopoverController *)self->_activityPopoverController setDelegate:0];
  [(UIPopoverController *)self->_activityPopoverController dismissPopoverAnimated:0];
  itemOfferButton = [(SKUIProductPageHeaderView *)self->_headerView itemOfferButton];
  [itemOfferButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  shareButton = [(SKUIProductPageHeaderView *)self->_headerView shareButton];
  [shareButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  sectionControl = [(SKUIProductPageHeaderFloatingView *)self->_floatingView sectionControl];
  [sectionControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v7.receiver = self;
  v7.super_class = SKUIProductPageHeaderViewController;
  [(SKUIProductPageHeaderViewController *)&v7 dealloc];
}

- (SKUIProductPageHeaderFloatingView)floatingView
{
  floatingView = self->_floatingView;
  if (!floatingView)
  {
    _segmentedControlTitles = [(SKUIProductPageHeaderViewController *)self _segmentedControlTitles];
    v5 = [[SKUIProductPageHeaderFloatingView alloc] initWithSectionTitles:_segmentedControlTitles isPad:SKUIUserInterfaceIdiom(self->_clientContext) == 1];
    v6 = self->_floatingView;
    self->_floatingView = v5;

    v7 = self->_floatingView;
    uber = [(SKUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [(SKUIProductPageHeaderFloatingView *)v7 setColorScheme:colorScheme];

    sectionControl = [(SKUIProductPageHeaderFloatingView *)self->_floatingView sectionControl];
    [sectionControl addTarget:self action:sel__sectionControlAction_ forControlEvents:4096];

    [(SKUIProductPageHeaderFloatingView *)self->_floatingView sizeToFit];
    floatingView = self->_floatingView;
  }

  return floatingView;
}

- (UIImage)iconImage
{
  v35 = *MEMORY[0x277D85DE8];
  iconImage = self->_iconImage;
  if (iconImage)
  {
    v3 = iconImage;
  }

  else
  {
    _activeItem = [(SKUIProductPageHeaderViewController *)self _activeItem];
    v6 = _activeItem;
    placeholderImage = self->_placeholderImage;
    if (!placeholderImage)
    {
      artworksProvider = [_activeItem artworksProvider];
      [SKUIArtworkProvidingFactory artworkCacheCandidatesForProvider:?];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = v33 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v31;
        v28 = v6;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v30 + 1) + 8 * i);
            v14 = objc_alloc(MEMORY[0x277D69CD8]);
            v15 = [v13 URL];
            v16 = [v14 initWithURL:v15];
            cachedURLResponse = [v16 cachedURLResponse];

            if (cachedURLResponse)
            {
              _artworkContext = [(SKUIProductPageHeaderViewController *)self _artworkContext];
              v6 = v28;
              v19 = [_artworkContext dataConsumerForItem:v28];

              data = [cachedURLResponse data];
              response = [cachedURLResponse response];
              v22 = [v19 objectForData:data response:response error:0];
              v23 = self->_placeholderImage;
              self->_placeholderImage = v22;

              goto LABEL_14;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
          v6 = v28;
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      placeholderImage = self->_placeholderImage;
      if (!placeholderImage)
      {
        _artworkContext2 = [(SKUIProductPageHeaderViewController *)self _artworkContext];
        v25 = [_artworkContext2 placeholderImageForItem:v6];
        v26 = self->_placeholderImage;
        self->_placeholderImage = v25;

        placeholderImage = self->_placeholderImage;
      }
    }

    v3 = placeholderImage;
  }

  return v3;
}

- (void)reloadData
{
  _activeItem = [(SKUIProductPageHeaderViewController *)self _activeItem];
  v4 = _activeItem;
  if (!self->_personalizationState)
  {
    if ([_activeItem itemKind] == 17)
    {
      v5 = [[SKUIPersonalizeOfferOperation alloc] initWithItemIdentifier:self->_itemIdentifier clientContext:self->_clientContext];
      objc_initWeak(&location, self);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __49__SKUIProductPageHeaderViewController_reloadData__block_invoke;
      v28[3] = &unk_2781FD6E0;
      objc_copyWeak(&v29, &location);
      [(SKUIPersonalizeOfferOperation *)v5 setOutputBlock:v28];
      self->_personalizationState = 1;
      operationQueue = [(SKUIProductPageHeaderViewController *)self operationQueue];
      [operationQueue addOperation:v5];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_personalizationState = 2;
    }
  }

  if (!self->_iconImage && !self->_loadIconOperation)
  {
    _artworkContext = [(SKUIProductPageHeaderViewController *)self _artworkContext];
    item = [(SKUIProductPage *)self->_productPage item];
    if (item)
    {
      v9 = [_artworkContext URLForItem:item];
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [_artworkContext imageSizeForItem:self->_item];
      v11 = v10;
      v13 = v12;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v16 = v15;

      v17 = [_artworkContext artworkForItem:self->_item];
      width = [v17 width];
      v19 = v11 * v16;
      if (v11 * v16 <= width || (width = [v17 height], v19 = v13 * v16, v13 * v16 <= width))
      {
        v9 = [v17 URL];
      }

      else
      {
        v9 = 0;
      }

      if (!v9)
      {
        goto LABEL_16;
      }
    }

    v20 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v9];
    loadIconOperation = self->_loadIconOperation;
    self->_loadIconOperation = v20;

    v22 = self->_loadIconOperation;
    v23 = [_artworkContext dataConsumerForItem:v4];
    [(SSVLoadURLOperation *)v22 setDataConsumer:v23];

    [(SSVLoadURLOperation *)self->_loadIconOperation setQueuePriority:4];
    objc_initWeak(&location, self);
    v24 = self->_loadIconOperation;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __49__SKUIProductPageHeaderViewController_reloadData__block_invoke_3;
    v26[3] = &unk_2781FA1F8;
    objc_copyWeak(&v27, &location);
    [(SSVLoadURLOperation *)v24 setOutputBlock:v26];
    operationQueue2 = [(SKUIProductPageHeaderViewController *)self operationQueue];
    [operationQueue2 addOperation:self->_loadIconOperation];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
LABEL_16:
  }

  [(SKUIProductPageHeaderViewController *)self _loadUberImageIfAvailable];
}

void __49__SKUIProductPageHeaderViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SKUIProductPageHeaderViewController_reloadData__block_invoke_2;
  v5[3] = &unk_2781FB310;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __49__SKUIProductPageHeaderViewController_reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setPersonalizedOffer:*(a1 + 32)];
}

void __49__SKUIProductPageHeaderViewController_reloadData__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SKUIProductPageHeaderViewController_reloadData__block_invoke_4;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __49__SKUIProductPageHeaderViewController_reloadData__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setArtworkWithImage:*(a1 + 32) error:*(a1 + 40)];
}

- (void)setAskPermission:(BOOL)permission
{
  if (self->_askPermission != permission)
  {
    self->_askPermission = permission;
    [(SKUIProductPageHeaderViewController *)self _reloadItemStateAnimated:0];
    artistButton = [(SKUIProductPageHeaderView *)self->_headerView artistButton];
    [artistButton setEnabled:!self->_askPermission];

    shareButton = [(SKUIProductPageHeaderView *)self->_headerView shareButton];
    [shareButton setHidden:self->_askPermission];
  }
}

- (void)setProductPage:(id)page
{
  pageCopy = page;
  if (self->_productPage != pageCopy)
  {
    v46 = pageCopy;
    objc_storeStrong(&self->_productPage, page);
    item = [(SKUIProductPage *)self->_productPage item];
    if (item && self->_wantsActivityViewController)
    {
      shareButton = [(SKUIProductPageHeaderView *)self->_headerView shareButton];
      [(SKUIProductPageHeaderViewController *)self _showActivityViewControllerFromView:shareButton];
    }

    uber = [(SKUIProductPage *)self->_productPage uber];
    artworkContext = self->_artworkContext;
    colorScheme = [uber colorScheme];
    [(SKUIItemArtworkContext *)artworkContext setColorScheme:colorScheme];

    floatingView = self->_floatingView;
    colorScheme2 = [uber colorScheme];
    [(SKUIProductPageHeaderFloatingView *)floatingView setColorScheme:colorScheme2];

    headerView = self->_headerView;
    uber2 = [(SKUIProductPage *)self->_productPage uber];
    colorScheme3 = [uber2 colorScheme];
    backgroundColor = [colorScheme3 backgroundColor];
    if (backgroundColor)
    {
      [(SKUIProductPageHeaderView *)headerView setBackgroundColor:backgroundColor];
    }

    else
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(SKUIProductPageHeaderView *)headerView setBackgroundColor:whiteColor];
    }

    v18 = self->_headerView;
    colorScheme4 = [uber colorScheme];
    [(SKUIProductPageHeaderView *)v18 setColorScheme:colorScheme4];

    v20 = self->_headerView;
    contentRating = [item contentRating];
    [(SKUIProductPageHeaderView *)v20 setContentRating:contentRating];

    v22 = self->_headerView;
    if ([item hasInAppPurchases])
    {
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_HEADER" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_HEADER" inBundles:0 inTable:@"ProductPage"];
      }
      v24 = ;
      [(SKUIProductPageHeaderView *)v22 setInAppPurchasesString:v24];
    }

    else
    {
      [(SKUIProductPageHeaderView *)v22 setInAppPurchasesString:0];
    }

    -[SKUIProductPageHeaderView setNumberOfUserRatings:](self->_headerView, "setNumberOfUserRatings:", [item numberOfUserRatings]);
    v25 = self->_headerView;
    [item userRating];
    [(SKUIProductPageHeaderView *)v25 setUserRating:(v26 / 5.0)];
    secondaryContentRatings = [item secondaryContentRatings];
    if ([secondaryContentRatings count])
    {
      contentRatingArtworkLoader = self->_contentRatingArtworkLoader;
      if (!contentRatingArtworkLoader)
      {
        _contentRatingResourceLoader = [(SKUIProductPageHeaderViewController *)self _contentRatingResourceLoader];
        v30 = self->_contentRatingArtworkLoader;
        self->_contentRatingArtworkLoader = _contentRatingResourceLoader;

        contentRatingArtworkLoader = self->_contentRatingArtworkLoader;
      }

      [(SKUIProductPageHeaderView *)self->_headerView setContentRatingArtworkLoader:contentRatingArtworkLoader];
      v31 = self->_headerView;
      lastObject = [secondaryContentRatings lastObject];
      [(SKUIProductPageHeaderView *)v31 setSecondaryContentRating:lastObject];
    }

    artworkProvider = [uber artworkProvider];
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v34 = 630.0;
    }

    else
    {
      v34 = 320.0;
    }

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v37 = [artworkProvider artworkWithWidth:vcvtmd_s64_f64(v34 * v36)];

    if (v37)
    {
      v38 = self->_headerView;
      [v37 size];
      v40 = v39;
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 scale];
      v43 = v40 / v42;
      v44 = SKUIUserInterfaceIdiom(self->_clientContext);
      v45 = -60.0;
      if (v44 != 1)
      {
        v45 = -30.0;
      }

      [(SKUIProductPageHeaderView *)v38 setHeaderImageHeight:v43 + v45];

      [(SKUIProductPageHeaderView *)self->_headerView setHeaderImage:self->_uberImage];
      [(SKUIProductPageHeaderView *)self->_headerView sizeToFit];
    }

    if (self->_performArtistActionOnLoad && SKUIViewControllerIsVisible(self))
    {
      [(SKUIProductPageHeaderViewController *)self _artistButtonAction:0];
      self->_performArtistActionOnLoad = 0;
    }

    [(SKUIProductPageHeaderViewController *)self _loadUberImageIfAvailable];
    [(SKUIProductPageHeaderViewController *)self _reloadItemStateAnimated:0];

    pageCopy = v46;
  }
}

- (void)setSelectedSectionIndex:(int64_t)index
{
  floatingView = [(SKUIProductPageHeaderViewController *)self floatingView];
  [floatingView setSelectedSectionIndex:index];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v15.receiver = self;
  v15.super_class = SKUIProductPageHeaderViewController;
  [(SKUIProductPageHeaderViewController *)&v15 didRotateFromInterfaceOrientation:orientation];
  if ([(UIPopoverController *)self->_activityPopoverController isPopoverVisible])
  {
    shareButton = [(SKUIProductPageHeaderView *)self->_headerView shareButton];
    activityPopoverController = self->_activityPopoverController;
    [shareButton frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    superview = [shareButton superview];
    [(UIPopoverController *)activityPopoverController presentPopoverFromRect:superview inView:15 permittedArrowDirections:1 animated:v7, v9, v11, v13];
  }
}

- (void)loadView
{
  uber = [(SKUIProductPage *)self->_productPage uber];
  headerView = self->_headerView;
  if (!headerView)
  {
    _activeItem = [(SKUIProductPageHeaderViewController *)self _activeItem];
    item = [(SKUIProductPage *)self->_productPage item];
    v6 = [[SKUIProductPageHeaderView alloc] initWithClientContext:self->_clientContext];
    v7 = self->_headerView;
    self->_headerView = v6;

    v8 = self->_headerView;
    colorScheme = [uber colorScheme];
    [(SKUIProductPageHeaderView *)v8 setColorScheme:colorScheme];

    v10 = self->_headerView;
    artistName = [_activeItem artistName];
    [(SKUIProductPageHeaderView *)v10 setArtistName:artistName];

    v12 = self->_headerView;
    _ageBandString = [(SKUIProductPageHeaderViewController *)self _ageBandString];
    [(SKUIProductPageHeaderView *)v12 setAgeBandString:_ageBandString];

    v14 = self->_headerView;
    iconImage = [(SKUIProductPageHeaderViewController *)self iconImage];
    [(SKUIProductPageHeaderView *)v14 setIconImage:iconImage];

    v16 = self->_headerView;
    title = [_activeItem title];
    [(SKUIProductPageHeaderView *)v16 setTitle:title];

    v18 = self->_headerView;
    editorialBadge = [_activeItem editorialBadge];
    [(SKUIProductPageHeaderView *)v18 setEditorialBadge:editorialBadge];

    v20 = self->_headerView;
    contentRating = [item contentRating];
    [(SKUIProductPageHeaderView *)v20 setContentRating:contentRating];

    v22 = self->_headerView;
    if ([item hasInAppPurchases])
    {
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_HEADER" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_HEADER" inBundles:0 inTable:@"ProductPage"];
      }
      v24 = ;
      [(SKUIProductPageHeaderView *)v22 setInAppPurchasesString:v24];
    }

    else
    {
      [(SKUIProductPageHeaderView *)v22 setInAppPurchasesString:0];
    }

    v25 = self->_headerView;
    [_activeItem userRating];
    [(SKUIProductPageHeaderView *)v25 setUserRating:(v26 / 5.0)];
    -[SKUIProductPageHeaderView setNumberOfUserRatings:](self->_headerView, "setNumberOfUserRatings:", [_activeItem numberOfUserRatings]);
    secondaryContentRatings = [item secondaryContentRatings];
    if ([secondaryContentRatings count])
    {
      contentRatingArtworkLoader = self->_contentRatingArtworkLoader;
      if (!contentRatingArtworkLoader)
      {
        _contentRatingResourceLoader = [(SKUIProductPageHeaderViewController *)self _contentRatingResourceLoader];
        v30 = self->_contentRatingArtworkLoader;
        self->_contentRatingArtworkLoader = _contentRatingResourceLoader;

        contentRatingArtworkLoader = self->_contentRatingArtworkLoader;
      }

      [(SKUIProductPageHeaderView *)self->_headerView setContentRatingArtworkLoader:contentRatingArtworkLoader];
      v31 = self->_headerView;
      lastObject = [secondaryContentRatings lastObject];
      [(SKUIProductPageHeaderView *)v31 setSecondaryContentRating:lastObject];
    }

    artworkProvider = [uber artworkProvider];
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v34 = 630.0;
    }

    else
    {
      v34 = 320.0;
    }

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v37 = [artworkProvider artworkWithWidth:vcvtmd_s64_f64(v34 * v36)];

    if (v37)
    {
      v38 = self->_headerView;
      [v37 size];
      v40 = v39;
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 scale];
      v43 = v40 / v42;
      v44 = SKUIUserInterfaceIdiom(self->_clientContext);
      v45 = -60.0;
      if (v44 != 1)
      {
        v45 = -30.0;
      }

      [(SKUIProductPageHeaderView *)v38 setHeaderImageHeight:v43 + v45];

      [(SKUIProductPageHeaderView *)self->_headerView setHeaderImage:self->_uberImage];
    }

    [(SKUIProductPageHeaderView *)self->_headerView setRestricted:[(SKUIProductPageHeaderViewController *)self _isRestricted]];
    [(SKUIProductPageHeaderViewController *)self _reloadItemStateAnimated:0];
    itemOfferButton = [(SKUIProductPageHeaderView *)self->_headerView itemOfferButton];
    [itemOfferButton setUniversal:{SKUIItemDeviceFamilyIsUniversal(objc_msgSend(_activeItem, "deviceFamilies"))}];

    [(SKUIProductPageHeaderView *)self->_headerView sizeToFit];
    shareButton = [(SKUIProductPageHeaderView *)self->_headerView shareButton];
    [shareButton addTarget:self action:sel__shareButtonAction_ forControlEvents:64];

    shareButton2 = [(SKUIProductPageHeaderView *)self->_headerView shareButton];
    [shareButton2 setHidden:self->_askPermission];

    artistButton = [(SKUIProductPageHeaderView *)self->_headerView artistButton];
    [artistButton addTarget:self action:sel__artistButtonAction_ forControlEvents:64];

    artistButton2 = [(SKUIProductPageHeaderView *)self->_headerView artistButton];
    [artistButton2 setEnabled:!self->_askPermission];

    headerView = self->_headerView;
  }

  [(SKUIProductPageHeaderViewController *)self setView:headerView];
  v51 = self->_headerView;
  uber2 = [(SKUIProductPage *)self->_productPage uber];
  colorScheme2 = [uber2 colorScheme];
  backgroundColor = [colorScheme2 backgroundColor];
  if (backgroundColor)
  {
    [(SKUIProductPageHeaderView *)v51 setBackgroundColor:backgroundColor];
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(SKUIProductPageHeaderView *)v51 setBackgroundColor:whiteColor];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SKUIProductPageHeaderViewController *)self reloadData];
  v5.receiver = self;
  v5.super_class = SKUIProductPageHeaderViewController;
  [(SKUIProductPageHeaderViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SKUIProductPageHeaderViewController *)self _destroyPopoverController];
  v5.receiver = self;
  v5.super_class = SKUIProductPageHeaderViewController;
  [(SKUIProductPageHeaderViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)_artistButtonAction:(id)action
{
  productPage = self->_productPage;
  if (productPage)
  {
    item = [(SKUIProductPage *)productPage item];
    artistPageURL = [item artistPageURL];

    v6 = artistPageURL;
    if (artistPageURL)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      v6 = artistPageURL;
      if (v8)
      {
        v9 = objc_loadWeakRetained(&self->_delegate);
        [v9 productPageHeaderView:self didSelectURL:artistPageURL];

        v6 = artistPageURL;
      }
    }
  }

  else
  {
    self->_performArtistActionOnLoad = 1;
  }
}

- (void)_itemOfferButtonAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 metricsControllerForProductPageHeader:self];
  }

  else
  {
    v8 = 0;
  }

  _activeItem = [(SKUIProductPageHeaderViewController *)self _activeItem];
  v10 = _activeItem;
  personalizedOffer = self->_personalizedOffer;
  if (personalizedOffer)
  {
    primaryItemOffer = personalizedOffer;
  }

  else
  {
    primaryItemOffer = [_activeItem primaryItemOffer];
  }

  v13 = primaryItemOffer;
  objc_initWeak(&location, self);
  if (!v8)
  {
    if (SKUIItemStateCenterUseAppstoredPurchases(v10))
    {
      v19 = +[SKUIItemStateCenter defaultCenter];
      clientContext = self->_clientContext;
      v21 = v31;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke;
      v31[3] = &unk_2781FD708;
      objc_copyWeak(&v32, &location);
      v22 = [v19 performActionForSoftwareItem:v10 offer:v13 clientContext:clientContext completionBlock:v31];
    }

    else
    {
      v19 = +[SKUIItemStateCenter defaultCenter];
      v24 = self->_clientContext;
      v21 = v29;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_3;
      v29[3] = &unk_2781FD730;
      objc_copyWeak(&v30, &location);
      v22 = [v19 performActionForItem:v10 offer:v13 clientContext:v24 completionBlock:v29];
    }

    v23 = v22;

    objc_destroyWeak(v21 + 4);
    if (!v23)
    {
      goto LABEL_20;
    }

LABEL_19:
    [(SKUIProductPageHeaderViewController *)self _setItemState:v23 animated:1];
    goto LABEL_20;
  }

  v14 = [v8 itemOfferClickEventWithItem:v10 locationPosition:0];
  if (v14)
  {
    [v8 recordEvent:v14];
  }

  v15 = SKUIItemStateCenterUseAppstoredPurchases(v10);
  v16 = self->_clientContext;
  if (v15)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_5;
    v27[3] = &unk_2781FD708;
    v17 = &v28;
    objc_copyWeak(&v28, &location);
    v18 = [v8 performActionForSoftwareItem:v10 offer:v13 clientContext:v16 completionBlock:v27];
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_7;
    v25[3] = &unk_2781FD730;
    v17 = &v26;
    objc_copyWeak(&v26, &location);
    v18 = [v8 performActionForItem:v10 offer:v13 clientContext:v16 completionBlock:v25];
  }

  v23 = v18;
  objc_destroyWeak(v17);

  if (v23)
  {
    goto LABEL_19;
  }

LABEL_20:
  objc_destroyWeak(&location);
}

void __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_2;
  v5[3] = &unk_2781F8230;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) error];
  WeakRetained = [v4 domain];
  if ([WeakRetained isEqualToString:*MEMORY[0x277D6A110]])
  {
    v3 = [v4 code];

    if (v3 != 134)
    {
      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _showAskPermissionBanner];
  }

LABEL_5:
}

void __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_4;
  v5[3] = &unk_2781F8230;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_4(uint64_t a1)
{
  v4 = [*(a1 + 32) error];
  WeakRetained = [v4 domain];
  if ([WeakRetained isEqualToString:*MEMORY[0x277D6A110]])
  {
    v3 = [v4 code];

    if (v3 != 134)
    {
      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _showAskPermissionBanner];
  }

LABEL_5:
}

void __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_6;
  v5[3] = &unk_2781F8230;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_6(uint64_t a1)
{
  v4 = [*(a1 + 32) error];
  WeakRetained = [v4 domain];
  if ([WeakRetained isEqualToString:*MEMORY[0x277D6A110]])
  {
    v3 = [v4 code];

    if (v3 != 134)
    {
      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _showAskPermissionBanner];
  }

LABEL_5:
}

void __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_8;
  v5[3] = &unk_2781F8230;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __62__SKUIProductPageHeaderViewController__itemOfferButtonAction___block_invoke_8(uint64_t a1)
{
  v4 = [*(a1 + 32) error];
  WeakRetained = [v4 domain];
  if ([WeakRetained isEqualToString:*MEMORY[0x277D6A110]])
  {
    v3 = [v4 code];

    if (v3 != 134)
    {
      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _showAskPermissionBanner];
  }

LABEL_5:
}

- (void)_sectionControlAction:(id)action
{
  v19[2] = *MEMORY[0x277D85DE8];
  selectedSectionIndex = [(SKUIProductPageHeaderFloatingView *)self->_floatingView selectedSectionIndex];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 metricsControllerForProductPageHeader:self];

    if ([v8 canRecordEventWithType:*MEMORY[0x277D6A478]])
    {
      v9 = objc_alloc_init(MEMORY[0x277D69B68]);
      _segmentedControlTitles = [(SKUIProductPageHeaderViewController *)self _segmentedControlTitles];
      v11 = [_segmentedControlTitles objectAtIndex:selectedSectionIndex];
      [v9 setActionDetails:v11];

      [v9 setActionType:*MEMORY[0x277D6A460]];
      v12 = *MEMORY[0x277D6A4E8];
      [v9 setTargetType:*MEMORY[0x277D6A4E8]];
      v13 = [v8 locationWithPosition:0 type:@"tabBar" fieldData:0];
      v14 = [v8 locationWithPosition:selectedSectionIndex type:v12 fieldData:0];
      v19[0] = v14;
      v19[1] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      [v9 setLocationWithEventLocations:v15];

      [v8 recordEvent:v9];
    }
  }

  v16 = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 productPageHeaderView:self didSelectSectionIndex:selectedSectionIndex];
  }
}

- (void)_shareButtonAction:(id)action
{
  if (self->_productPage)
  {
    [(SKUIProductPageHeaderViewController *)self _showActivityViewControllerFromView:action];
  }

  else
  {
    self->_wantsActivityViewController = 1;
  }
}

- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed
{
  changedCopy = changed;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__SKUIProductPageHeaderViewController_itemStateCenter_itemStatesChanged___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __73__SKUIProductPageHeaderViewController_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 1120) item];
  v3 = [v2 childItemIdentifiers];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) itemIdentifier];
        v10 = *(*(a1 + 32) + 1064);
        if (v10 == [v9 longLongValue] || objc_msgSend(v3, "containsObject:", v9))
        {
          [*(a1 + 32) _reloadItemStateAnimated:1];
          [*(a1 + 32) _sendDidReloadOffer];

          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)itemStateCenterRestrictionsChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SKUIProductPageHeaderViewController_itemStateCenterRestrictionsChanged___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __74__SKUIProductPageHeaderViewController_itemStateCenterRestrictionsChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[130];
  v3 = [v1 _isRestricted];

  return [v2 setRestricted:v3];
}

- (id)_activeItem
{
  item = [(SKUIProductPage *)self->_productPage item];
  item = item;
  if (!item)
  {
    item = self->_item;
  }

  v5 = item;

  return item;
}

- (id)_ageBandString
{
  _activeItem = [(SKUIProductPageHeaderViewController *)self _activeItem];
  ageBandRange = [_activeItem ageBandRange];
  v6 = v5;

  if (ageBandRange == 0x7FFFFFFFFFFFFFFFLL || SKUIUserInterfaceIdiom(self->_clientContext) != 1)
  {
    v13 = 0;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v7 setNumberStyle:1];
    [v7 setUsesGroupingSeparator:0];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:ageBandRange];
    v9 = [v7 stringFromNumber:v8];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:ageBandRange + v6];
    v11 = [v7 stringFromNumber:v10];

    clientContext = self->_clientContext;
    if (ageBandRange)
    {
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_HEADER_AGE_BAND" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_HEADER_AGE_BAND" inBundles:0 inTable:@"ProductPage"];
      }
      v14 = ;
      [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@%@" error:0, v9, v11];
    }

    else
    {
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_HEADER_AGE_MAX" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_HEADER_AGE_MAX" inBundles:0 inTable:@"ProductPage"];
      }
      v14 = ;
      [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v11, v16];
    }
    v13 = ;
  }

  return v13;
}

- (id)_artworkContext
{
  artworkContext = self->_artworkContext;
  if (!artworkContext)
  {
    v4 = objc_alloc_init(SKUIItemArtworkContext);
    v5 = self->_artworkContext;
    self->_artworkContext = v4;

    v6 = self->_artworkContext;
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v7 = 170.0;
    }

    else
    {
      v7 = 100.0;
    }

    v8 = [SKUIStyledImageDataConsumer appIconConsumerWithSize:v7, v7];
    [(SKUIItemArtworkContext *)v6 setIconConsumer:v8];

    v9 = self->_artworkContext;
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v10 = 170.0;
    }

    else
    {
      v10 = 100.0;
    }

    v11 = [SKUIStyledImageDataConsumer productImageConsumerWithSize:v10, v10];
    [(SKUIItemArtworkContext *)v9 setNewsstandConsumer:v11];

    v12 = self->_artworkContext;
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v13 = 170.0;
    }

    else
    {
      v13 = 100.0;
    }

    v14 = [SKUIProductImageDataConsumer consumerWithSize:v13, v13];
    [(SKUIItemArtworkContext *)v12 setGeneralConsumer:v14];

    v15 = self->_artworkContext;
    uber = [(SKUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [(SKUIItemArtworkContext *)v15 setColorScheme:colorScheme];

    artworkContext = self->_artworkContext;
  }

  return artworkContext;
}

- (void)_destroyPopoverController
{
  [(UIPopoverController *)self->_activityPopoverController setDelegate:0];
  [(UIPopoverController *)self->_activityPopoverController dismissPopoverAnimated:1];
  activityPopoverController = self->_activityPopoverController;
  self->_activityPopoverController = 0;
}

- (id)_contentRatingResourceLoader
{
  v3 = [SKUIResourceLoader alloc];
  clientContext = [(SKUIProductPageHeaderViewController *)self clientContext];
  v5 = [(SKUIResourceLoader *)v3 initWithClientContext:clientContext];

  v6 = [[SKUIContentRatingArtworkResourceLoader alloc] initWithArtworkLoader:v5];
  v7 = [SKUIStyledImageDataConsumer appIconConsumerWithSize:11.0, 11.0];
  [(SKUIContentRatingArtworkResourceLoader *)v6 setImageDataConsumer:v7];

  return v6;
}

- (void)_disableItemOfferButtonWithTitle:(id)title animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  v7 = [[SKUIItemOffer alloc] initWithButtonText:titleCopy];

  [(SKUIProductPageHeaderView *)self->_headerView setItemOffer:v7];
  [(SKUIProductPageHeaderViewController *)self _setItemState:0 animated:animatedCopy];
}

- (BOOL)_isRestricted
{
  _activeItem = [(SKUIProductPageHeaderViewController *)self _activeItem];
  v3 = +[SKUIItemStateCenter defaultCenter];
  v4 = [v3 isItemRestrictedWithParentalControlsRank:{objc_msgSend(_activeItem, "parentalControlsRank")}];

  return v4;
}

- (void)_loadUberImageIfAvailable
{
  if (!self->_uberImage && !self->_loadUberOperation)
  {
    uber = [(SKUIProductPage *)self->_productPage uber];
    artworkProvider = [uber artworkProvider];
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v5 = 630.0;
    }

    else
    {
      v5 = 320.0;
    }

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v8 = [artworkProvider artworkWithWidth:vcvtmd_s64_f64(v5 * v7)];
    v9 = [v8 URL];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v9];
      loadUberOperation = self->_loadUberOperation;
      self->_loadUberOperation = v10;

      [(SSVLoadURLOperation *)self->_loadUberOperation setQueuePriority:4];
      v12 = +[(SSVURLDataConsumer *)SKUIUberImageDataConsumer];
      uber2 = [(SKUIProductPage *)self->_productPage uber];
      if (uber2)
      {
        uber3 = [(SKUIProductPage *)self->_productPage uber];
        colorScheme = [uber3 colorScheme];
        backgroundColor = [colorScheme backgroundColor];
        if (backgroundColor)
        {
          [v12 setBackgroundColor:backgroundColor];
        }

        else
        {
          whiteColor = [MEMORY[0x277D75348] whiteColor];
          [v12 setBackgroundColor:whiteColor];
        }
      }

      else
      {
        [v12 setBackgroundColor:0];
      }

      [(SSVLoadURLOperation *)self->_loadUberOperation setDataConsumer:v12];
      objc_initWeak(&location, self);
      v18 = self->_loadUberOperation;
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __64__SKUIProductPageHeaderViewController__loadUberImageIfAvailable__block_invoke;
      v23 = &unk_2781FA1F8;
      objc_copyWeak(&v24, &location);
      [(SSVLoadURLOperation *)v18 setOutputBlock:&v20];
      v19 = [(SKUIProductPageHeaderViewController *)self operationQueue:v20];
      [v19 addOperation:self->_loadUberOperation];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }
}

void __64__SKUIProductPageHeaderViewController__loadUberImageIfAvailable__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SKUIProductPageHeaderViewController__loadUberImageIfAvailable__block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __64__SKUIProductPageHeaderViewController__loadUberImageIfAvailable__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setUberWithImage:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_reloadItemStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  v65 = *MEMORY[0x277D85DE8];
  item = [(SKUIProductPage *)self->_productPage item];
  item = item;
  if (!item)
  {
    item = selfCopy->_item;
  }

  v7 = item;
  v8 = +[SKUIItemStateCenter defaultCenter];
  v9 = [v8 stateForItemWithIdentifier:{-[SKUIItem itemIdentifier](v7, "itemIdentifier")}];
  if ([(SKUIItem *)v7 itemKind]== 17)
  {
    if (item && selfCopy->_personalizationState == 2)
    {
      v51 = animatedCopy;
      v53 = v9;
      v54 = v7;
      v58 = selfCopy;
      v52 = item;
      childItemIdentifiers = [(SKUIItem *)item childItemIdentifiers];
      v50 = [childItemIdentifiers count];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = childItemIdentifiers;
      v11 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = *v61;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v61 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = [v8 stateForItemWithIdentifier:{objc_msgSend(*(*(&v60 + 1) + 8 * i), "longLongValue")}];
            state = [v19 state];

            if ((state & 2) != 0)
            {
              ++v16;
            }

            else if (state)
            {
              ++v14;
            }

            else if ((state & 4) != 0)
            {
              ++v15;
            }

            else
            {
              v13 += (state >> 3) & 1;
            }
          }

          v12 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
        }

        while (v12);
        v21 = v14 > 0;
      }

      else
      {
        v13 = 0;
        v21 = 0;
        v15 = 0;
        v16 = 0;
      }

      headerView = v58->_headerView;
      if (v58->_personalizedOffer)
      {
        [(SKUIProductPageHeaderView *)v58->_headerView setItemOffer:?];
      }

      else
      {
        primaryItemOffer = [(SKUIItem *)v54 primaryItemOffer];
        [(SKUIProductPageHeaderView *)headerView setItemOffer:primaryItemOffer];
      }

      v9 = v53;
      if (v21 || ([v53 state] & 1) != 0)
      {
        selfCopy = v58;
        v30 = v58;
        v31 = 1;
LABEL_36:
        [(SKUIProductPageHeaderViewController *)v30 _showSynthesizedItemStateWithFlag:v31 animated:v51];
        item = v52;
        v7 = v54;
LABEL_37:

        goto LABEL_24;
      }

      if (v16 >= 1 && v16 + v15 == v50)
      {
        selfCopy = v58;
        clientContext = v58->_clientContext;
        if (clientContext)
        {
          [(SKUIClientContext *)clientContext localizedStringForKey:@"APP_BUNDLE_DOWNLOADING" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"APP_BUNDLE_DOWNLOADING" inBundles:0 inTable:@"ProductPage"];
        }
        v33 = ;
        item = v52;
        v7 = v54;
        v34 = v51;
        v35 = v58;
        v36 = v33;
LABEL_51:
        [(SKUIProductPageHeaderViewController *)v35 _disableItemOfferButtonWithTitle:v36 animated:v34];

        goto LABEL_37;
      }

      if (v15 >= 1 && v15 == v50)
      {
        selfCopy = v58;
        v32 = v58->_clientContext;
        if (v32)
        {
          [(SKUIClientContext *)v32 localizedStringForKey:@"APP_BUNDLE_INSTALLED" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"APP_BUNDLE_INSTALLED" inBundles:0 inTable:@"ProductPage"];
        }
        v33 = ;
        item = v52;
        v7 = v54;
        v35 = v58;
        v36 = v33;
        v34 = v51;
        goto LABEL_51;
      }

      if (v13 >= 1 && v15 + v13 == v50)
      {
        selfCopy = v58;
        v30 = v58;
        v31 = 8;
        goto LABEL_36;
      }

      selfCopy = v58;
      v37 = v58->_clientContext;
      if (v37)
      {
        [(SKUIClientContext *)v37 localizedStringForKey:@"PRODUCT_PAGE_COMPLETE_MY_BUNDLE_ORIGINAL_OFFER" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_COMPLETE_MY_BUNDLE_ORIGINAL_OFFER" inBundles:0 inTable:@"ProductPage"];
      }
      v38 = ;
      v7 = v54;
      if (v58->_personalizedOffer)
      {
        v55 = v58->_headerView;
        v39 = MEMORY[0x277CCACA8];
        primaryItemOffer2 = [(SKUIItem *)v7 primaryItemOffer];
        buttonText = [primaryItemOffer2 buttonText];
        v42 = [v39 stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:0, buttonText];
        [(SKUIProductPageHeaderView *)v55 setItemOfferExplanationText:v42];

        v43 = v58->_headerView;
        v44 = v58->_clientContext;
        item = v52;
        if (v44)
        {
          [(SKUIClientContext *)v44 localizedStringForKey:@"PRODUCT_PAGE_COMPLETE_MY_BUNDLE_TITLE" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_COMPLETE_MY_BUNDLE_TITLE" inBundles:0 inTable:@"ProductPage"];
        }
        regularPriceString = ;
        v48 = v51;
        [(SKUIProductPageHeaderView *)v43 setItemOfferExplanationTitle:regularPriceString];
      }

      else
      {
        item = v52;
        regularPriceString = [(SKUIItem *)v52 regularPriceString];
        if (!regularPriceString)
        {
          [(SKUIProductPageHeaderView *)v58->_headerView setItemOfferExplanationText:0];
          [(SKUIProductPageHeaderView *)v58->_headerView setItemOfferExplanationTitle:0];
          v48 = v51;
LABEL_65:

          [(SKUIProductPageHeaderViewController *)v58 _setItemState:v9 animated:v48];
          goto LABEL_37;
        }

        v56 = v58->_headerView;
        v46 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:0, regularPriceString];
        [(SKUIProductPageHeaderView *)v56 setItemOfferExplanationText:v46];

        v57 = v58->_headerView;
        v47 = v58->_clientContext;
        if (v47)
        {
          [(SKUIClientContext *)v47 localizedStringForKey:@"PRODUCT_PAGE_BUNDLE_OFFER_TITLE" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_BUNDLE_OFFER_TITLE" inBundles:0 inTable:@"ProductPage"];
        }
        v49 = ;
        v48 = v51;
        [(SKUIProductPageHeaderView *)v57 setItemOfferExplanationTitle:v49];
      }

      v9 = v53;
      goto LABEL_65;
    }

    [(SKUIProductPageHeaderView *)selfCopy->_headerView setItemOffer:0];
    [(SKUIProductPageHeaderView *)selfCopy->_headerView setItemOfferExplanationText:0];
    [(SKUIProductPageHeaderView *)selfCopy->_headerView setItemOfferExplanationTitle:0];
    v24 = selfCopy;
    v25 = 0;
  }

  else
  {
    v22 = selfCopy->_headerView;
    primaryItemOffer3 = [(SKUIItem *)v7 primaryItemOffer];
    [(SKUIProductPageHeaderView *)v22 setItemOffer:primaryItemOffer3];

    [(SKUIProductPageHeaderView *)selfCopy->_headerView setItemOfferExplanationText:0];
    [(SKUIProductPageHeaderView *)selfCopy->_headerView setItemOfferExplanationTitle:0];
    v24 = selfCopy;
    v25 = v9;
  }

  [(SKUIProductPageHeaderViewController *)v24 _setItemState:v25 animated:animatedCopy];
LABEL_24:
  itemOfferButton = [(SKUIProductPageHeaderView *)selfCopy->_headerView itemOfferButton];
  [itemOfferButton removeTarget:selfCopy action:0 forControlEvents:0x20000];
  [itemOfferButton addTarget:selfCopy action:sel__itemOfferButtonAction_ forControlEvents:0x20000];
  [itemOfferButton setHidden:selfCopy->_askPermission];
}

- (id)_segmentedControlTitles
{
  v14[3] = *MEMORY[0x277D85DE8];
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_DETAILS_TAB" inTable:@"ProductPage"];
  }

  else
  {
    v4 = 0;
    [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_DETAILS_TAB" inBundles:0 inTable:@"ProductPage"];
  }
  v5 = ;

  v14[0] = v5;
  v6 = self->_clientContext;
  if (v6)
  {
    [(SKUIClientContext *)v6 localizedStringForKey:@"PRODUCT_PAGE_REVIEWS_TAB" inTable:@"ProductPage", v14[0]];
  }

  else
  {
    v7 = 0;
    [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_REVIEWS_TAB" inBundles:0 inTable:@"ProductPage", v14[0]];
  }
  v8 = ;

  v14[1] = v8;
  v9 = self->_clientContext;
  if (v9)
  {
    [(SKUIClientContext *)v9 localizedStringForKey:@"PRODUCT_PAGE_RELATED_TAB" inTable:@"ProductPage"];
  }

  else
  {
    v10 = 0;
    [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_RELATED_TAB" inBundles:0 inTable:@"ProductPage"];
  }
  v11 = ;

  v14[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

  return v12;
}

- (void)_sendDidReloadOffer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _activeItem = [(SKUIProductPageHeaderViewController *)self _activeItem];
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = v5;
    if (self->_personalizedOffer)
    {
      [v5 productPageHeaderView:self didReloadItemOffer:?];
    }

    else
    {
      primaryItemOffer = [_activeItem primaryItemOffer];
      [v6 productPageHeaderView:self didReloadItemOffer:primaryItemOffer];
    }
  }
}

- (void)_setArtworkWithImage:(id)image error:(id)error
{
  imageCopy = image;
  if (imageCopy)
  {
    objc_storeStrong(&self->_iconImage, image);
    [(SKUIProductPageHeaderView *)self->_headerView setIconImage:self->_iconImage];
  }

  loadIconOperation = self->_loadIconOperation;
  self->_loadIconOperation = 0;
}

- (void)_setPersonalizedOffer:(id)offer
{
  self->_personalizationState = 2;
  objc_storeStrong(&self->_personalizedOffer, offer);
  [(SKUIProductPageHeaderViewController *)self _reloadItemStateAnimated:0];

  [(SKUIProductPageHeaderViewController *)self _sendDidReloadOffer];
}

- (void)_setItemState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  headerView = self->_headerView;
  stateCopy = state;
  itemOfferButton = [(SKUIProductPageHeaderView *)headerView itemOfferButton];
  [itemOfferButton setEnabled:1];

  [(SKUIProductPageHeaderView *)self->_headerView setItemState:stateCopy animated:animatedCopy];
}

- (void)_setUberWithImage:(id)image error:(id)error
{
  imageCopy = image;
  if (imageCopy)
  {
    objc_storeStrong(&self->_uberImage, image);
    [(SKUIProductPageHeaderView *)self->_headerView setHeaderImage:self->_uberImage];
  }

  loadUberOperation = self->_loadUberOperation;
  self->_loadUberOperation = 0;
}

- (void)_showActivityViewControllerFromView:(id)view
{
  viewCopy = view;
  if (!self->_activityPopoverController)
  {
    v5 = [SKUIProductPageActivityViewController alloc];
    item = [(SKUIProductPage *)self->_productPage item];
    v7 = [(SKUIProductPageActivityViewController *)v5 initWithProductPageItem:item clientContext:self->_clientContext];

    objc_initWeak(&location, self);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __75__SKUIProductPageHeaderViewController__showActivityViewControllerFromView___block_invoke;
    v24 = &unk_2781FD758;
    objc_copyWeak(&v25, &location);
    [(SKUIProductPageActivityViewController *)v7 setCompletionWithItemsHandler:&v21];
    v8 = objc_alloc(MEMORY[0x277D758A0]);
    v9 = [v8 initWithContentViewController:{v7, v21, v22, v23, v24}];
    activityPopoverController = self->_activityPopoverController;
    self->_activityPopoverController = v9;

    v11 = self->_activityPopoverController;
    [viewCopy frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    superview = [viewCopy superview];
    [(UIPopoverController *)v11 presentPopoverFromRect:superview inView:15 permittedArrowDirections:1 animated:v13, v15, v17, v19];

    [(UIPopoverController *)self->_activityPopoverController setDelegate:self];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  self->_wantsActivityViewController = 0;
}

void __75__SKUIProductPageHeaderViewController__showActivityViewControllerFromView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _destroyPopoverController];
}

- (void)_showAskPermissionBanner
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 productPageHeaderViewDidWantAskPermissionBanner:self];
  }

  headerView = self->_headerView;

  [(SKUIProductPageHeaderView *)headerView setRestricted:1];
}

- (void)_showSynthesizedItemStateWithFlag:(unint64_t)flag animated:(BOOL)animated
{
  animatedCopy = animated;
  v10 = objc_alloc_init(SKUIItemState);
  v7 = MEMORY[0x277CCABB0];
  _activeItem = [(SKUIProductPageHeaderViewController *)self _activeItem];
  v9 = [v7 numberWithLongLong:{objc_msgSend(_activeItem, "itemIdentifier")}];
  [(SKUIItemState *)v10 setItemIdentifier:v9];

  [(SKUIItemState *)v10 setState:flag];
  [(SKUIProductPageHeaderViewController *)self _setItemState:v10 animated:animatedCopy];
}

- (SKUIProductPageHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithItem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageHeaderViewController initWithItem:]";
}

@end