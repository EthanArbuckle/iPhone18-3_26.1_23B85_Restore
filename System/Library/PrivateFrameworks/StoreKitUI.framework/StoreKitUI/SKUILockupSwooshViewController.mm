@interface SKUILockupSwooshViewController
+ (int64_t)_swooshTypeForLockups:(id)lockups;
- ($0F9D46A54E891E2DFD6B960C8B4302D3)_lockupSwooshMetrics;
- (CGRect)frameForItemAtIndex:(int64_t)index;
- (CGRect)seeAllButtonFrame;
- (CGSize)_maximumCellSizeForImageSize:(CGSize)size;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NSArray)items;
- (SKUILockupSwooshViewController)initWithItemList:(id)list;
- (SKUILockupSwooshViewController)initWithSwoosh:(id)swoosh;
- (SKUIVideoImageDataConsumer)videoImageConsumer;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_newArtworkContextForSwooshType:(int64_t)type;
- (id)_newLockupComponentWithItem:(id)item defaultStyle:(SKUILockupStyle *)style;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)popImageViewForItemAtIndex:(int64_t)index;
- (void)_reloadSizes;
- (void)_seeAllAction:(id)action;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)deselectAllItems;
- (void)loadView;
- (void)setClientContext:(id)context;
- (void)setColorScheme:(id)scheme;
- (void)setDelegate:(id)delegate;
- (void)setImage:(id)image forItemAtIndex:(int64_t)index;
- (void)setLockups:(id)lockups;
- (void)setSeeAllHidden:(BOOL)hidden;
- (void)setVideoThumbnail:(id)thumbnail forItemAtIndex:(int64_t)index;
- (void)unhideImages;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUILockupSwooshViewController

- (SKUILockupSwooshViewController)initWithItemList:(id)list
{
  v35 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupSwooshViewController initWithItemList:];
  }

  v33.receiver = self;
  v33.super_class = SKUILockupSwooshViewController;
  v5 = [(SKUILockupSwooshViewController *)&v33 init];
  v6 = v5;
  if (v5)
  {
    p_defaultLockupStyle = &v5->_defaultLockupStyle;
    SKUILockupStyleDefault(&v31);
    v8 = v31;
    v6->_defaultLockupStyle.visibleFields = visibleFields;
    *&p_defaultLockupStyle->artworkSize = v8;
    seeAllTitle = [listCopy seeAllTitle];
    seeAllTitle = v6->_seeAllTitle;
    v6->_seeAllTitle = seeAllTitle;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    items = [listCopy items];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = [items countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        v16 = 0;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(items);
          }

          v17 = *(*(&v27 + 1) + 8 * v16);
          v18 = *&p_defaultLockupStyle->artworkSize;
          visibleFields = v6->_defaultLockupStyle.visibleFields;
          v31 = v18;
          v19 = [(SKUILockupSwooshViewController *)v6 _newLockupComponentWithItem:v17 defaultStyle:&v31];
          [v11 addObject:v19];

          ++v16;
        }

        while (v14 != v16);
        v14 = [items countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v14);
    }

    v20 = [v11 copy];
    lockups = v6->_lockups;
    v6->_lockups = v20;

    seeAllURLString = [listCopy seeAllURLString];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:seeAllURLString];
      seeAllURL = v6->_seeAllURL;
      v6->_seeAllURL = v23;
    }

    v6->_swooshType = [objc_opt_class() _swooshTypeForLockups:v6->_lockups];
    title = [listCopy title];
    [(SKUILockupSwooshViewController *)v6 setTitle:title];
  }

  return v6;
}

- (SKUILockupSwooshViewController)initWithSwoosh:(id)swoosh
{
  v30 = *MEMORY[0x277D85DE8];
  swooshCopy = swoosh;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupSwooshViewController initWithSwoosh:];
  }

  v28.receiver = self;
  v28.super_class = SKUILockupSwooshViewController;
  v5 = [(SKUILockupSwooshViewController *)&v28 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lockups = [swooshCopy lockups];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [lockups countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(lockups);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          item = [v12 item];
          if (item)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [lockups countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    v15 = *(v5 + 136);
    *(v5 + 136) = v14;

    if (swooshCopy)
    {
      [swooshCopy lockupStyle];
    }

    else
    {
      v22 = 0uLL;
      v23 = 0;
    }

    *(v5 + 131) = v23;
    *(v5 + 1032) = v22;
    *(v5 + 156) = [swooshCopy seeAllStyle];
    seeAllTitle = [swooshCopy seeAllTitle];
    v17 = *(v5 + 157);
    *(v5 + 157) = seeAllTitle;

    seeAllURL = [swooshCopy seeAllURL];
    v19 = *(v5 + 158);
    *(v5 + 158) = seeAllURL;

    *(v5 + 160) = [objc_opt_class() _swooshTypeForLockups:*(v5 + 136)];
    title = [swooshCopy title];
    [v5 setTitle:title];
  }

  return v5;
}

- (void)dealloc
{
  [(UICollectionView *)self->_collectionView setDataSource:0];
  [(UICollectionView *)self->_collectionView setDelegate:0];
  chevronTitleControl = [(SKUISwooshView *)self->_swooshView chevronTitleControl];
  [chevronTitleControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  seeAllControl = [(SKUISwooshView *)self->_swooshView seeAllControl];
  [seeAllControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v5.receiver = self;
  v5.super_class = SKUILockupSwooshViewController;
  [(SKUILockupSwooshViewController *)&v5 dealloc];
}

- (NSArray)items
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_lockups;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        item = [*(*(&v11 + 1) + 8 * i) item];
        if (item)
        {
          [array addObject:item];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (CGRect)seeAllButtonFrame
{
  seeAllStyle = self->_seeAllStyle;
  if (seeAllStyle == 1)
  {
    chevronTitleControl = [(SKUISwooshView *)self->_swooshView chevronTitleControl];
  }

  else
  {
    if (seeAllStyle)
    {
      v4 = 0;
      goto LABEL_7;
    }

    chevronTitleControl = [(SKUISwooshView *)self->_swooshView seeAllControl];
  }

  v4 = chevronTitleControl;
LABEL_7:
  [v4 bounds];
  [v4 convertRect:0 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setLockups:(id)lockups
{
  lockupsCopy = lockups;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__35;
  v27 = __Block_byref_object_dispose__35;
  v28 = 0;
  if ([(NSArray *)self->_lockups count])
  {
    v30[3] = 0;
    v5 = [(NSArray *)self->_lockups objectAtIndex:0];
    v6 = v24[5];
    v24[5] = v5;
  }

  [(UICollectionView *)self->_collectionView numberOfItemsInSection:0];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__SKUILockupSwooshViewController_setLockups___block_invoke;
  v17[3] = &unk_2781FC988;
  v21 = &v23;
  v9 = v8;
  v18 = v9;
  v10 = v7;
  v22 = &v29;
  v19 = v10;
  selfCopy = self;
  [lockupsCopy enumerateObjectsUsingBlock:v17];
  v11 = [v9 copy];
  lockups = self->_lockups;
  self->_lockups = v11;

  if ([v10 count])
  {
    width = self->_maxCellSize.width;
    height = self->_maxCellSize.height;
    self->_swooshType = [objc_opt_class() _swooshTypeForLockups:self->_lockups];
    [(SKUILockupSwooshViewController *)self _reloadSizes];
    collectionView = self->_collectionView;
    if (collectionView)
    {
      if (width == self->_maxCellSize.width && height == self->_maxCellSize.height)
      {
        p_didInitialReload = &self->_didInitialReload;
        if (self->_didInitialReload)
        {
          [(UICollectionView *)collectionView insertItemsAtIndexPaths:v10];
          goto LABEL_11;
        }
      }

      else
      {
        [(UICollectionView *)collectionView frame];
        [(UICollectionView *)self->_collectionView setFrame:?];
        [(SKUISwooshView *)self->_swooshView sizeToFit];
        p_didInitialReload = &self->_didInitialReload;
      }

      *p_didInitialReload = 1;
      [(UICollectionView *)self->_collectionView reloadData];
    }
  }

LABEL_11:

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

void __45__SKUILockupSwooshViewController_setLockups___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 item];
  if (v3)
  {
    v4 = *(*(*(a1 + 56) + 8) + 40);
    if (v4 && (v5 = [v4 itemIdentifier], v5 == objc_msgSend(v11, "itemIdentifier")))
    {
      v6 = ++*(*(*(a1 + 64) + 8) + 24);
      v7 = [*(*(a1 + 48) + 1088) count];
      if (v6 >= v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = [*(*(a1 + 48) + 1088) objectAtIndex:*(*(*(a1 + 64) + 8) + 24)];
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
      if (v6 >= v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = [*(a1 + 32) count];
      v10 = *(a1 + 40);
      v8 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:0];
      [v10 addObject:v8];
    }

LABEL_8:
    [*(a1 + 32) addObject:v11];
  }
}

- (void)setSeeAllHidden:(BOOL)hidden
{
  if (self->_seeAllHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_seeAllHidden = hidden;
    seeAllStyle = self->_seeAllStyle;
    if (seeAllStyle == 1)
    {
      v5 = !hidden && self->_seeAllURL != 0;
      swooshView = self->_swooshView;

      [(SKUISwooshView *)swooshView setShowsChevronForTitle:v5];
    }

    else if (!seeAllStyle)
    {
      seeAllControl = [(SKUISwooshView *)self->_swooshView seeAllControl];
      [seeAllControl setHidden:hiddenCopy];
    }
  }
}

- (SKUIVideoImageDataConsumer)videoImageConsumer
{
  videoImageConsumer = self->_videoImageConsumer;
  if (!videoImageConsumer)
  {
    v4 = objc_alloc_init(SKUIVideoImageDataConsumer);
    v5 = self->_videoImageConsumer;
    self->_videoImageConsumer = v4;

    [(SKUIVideoImageDataConsumer *)self->_videoImageConsumer setAllowedOrientations:2];
    [(SKUIVideoImageDataConsumer *)self->_videoImageConsumer setLandscapeSize:self->_metrics.videoThumbnailSize.width, self->_metrics.videoThumbnailSize.height];
    colorScheme = [(SKUISwooshViewController *)self colorScheme];
    v7 = self->_videoImageConsumer;
    backgroundColor = [colorScheme backgroundColor];
    [(SKUIVideoImageDataConsumer *)v7 setBackgroundColor:backgroundColor];

    [(SKUIVideoImageDataConsumer *)self->_videoImageConsumer setColorScheme:colorScheme];
    videoImageConsumer = self->_videoImageConsumer;
  }

  return videoImageConsumer;
}

- (void)deselectAllItems
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v4 = [indexPathsForSelectedItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v8 + 1) + 8 * v7++) animated:0];
      }

      while (v5 != v7);
      v5 = [indexPathsForSelectedItems countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (CGRect)frameForItemAtIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
  v5 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v4];

  [v5 bounds];
  [v5 convertRect:0 toView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)popImageViewForItemAtIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
  v7 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v6];

  if (v7)
  {
    layout = [v7 layout];
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    iconImage = [layout iconImage];
    v11 = [v9 initWithImage:iconImage];

    iconImageView = [layout iconImageView];
    view = [(SKUILockupSwooshViewController *)self view];
    [iconImageView frame];
    [view convertRect:v7 fromView:?];
    [v11 setFrame:?];

    hiddenIconIndexSet = self->_hiddenIconIndexSet;
    if (!hiddenIconIndexSet)
    {
      v15 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v16 = self->_hiddenIconIndexSet;
      self->_hiddenIconIndexSet = v15;

      hiddenIconIndexSet = self->_hiddenIconIndexSet;
    }

    [(NSMutableIndexSet *)hiddenIconIndexSet addIndex:index];
    [layout setIconImageHidden:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setClientContext:(id)context
{
  v5.receiver = self;
  v5.super_class = SKUILockupSwooshViewController;
  [(SKUISwooshViewController *)&v5 setClientContext:context];
  [(SKUILockupSwooshViewController *)self _lockupSwooshMetrics];
  self->_metrics = v4;
  [(SKUILockupSwooshViewController *)self _reloadSizes];
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  colorScheme = [(SKUISwooshViewController *)self colorScheme];

  if (colorScheme != schemeCopy)
  {
    v8.receiver = self;
    v8.super_class = SKUILockupSwooshViewController;
    [(SKUISwooshViewController *)&v8 setColorScheme:schemeCopy];
    [(SKUIItemArtworkContext *)self->_artworkContext setColorScheme:schemeCopy];
    [(SKUISwooshView *)self->_swooshView setColoringWithColorScheme:schemeCopy];
    videoImageConsumer = self->_videoImageConsumer;
    backgroundColor = [schemeCopy backgroundColor];
    [(SKUIVideoImageDataConsumer *)videoImageConsumer setBackgroundColor:backgroundColor];

    [(SKUIVideoImageDataConsumer *)self->_videoImageConsumer setColorScheme:schemeCopy];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  self->_delegateWantsWillDisplay = objc_opt_respondsToSelector() & 1;
  v5.receiver = self;
  v5.super_class = SKUILockupSwooshViewController;
  [(SKUISwooshViewController *)&v5 setDelegate:delegateCopy];
}

- (void)setImage:(id)image forItemAtIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  v6 = MEMORY[0x277CCAA70];
  imageCopy = image;
  v8 = [v6 indexPathForItem:index inSection:0];
  v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v8];

  layout = [v10 layout];
  [layout setIconImage:imageCopy];
}

- (void)setVideoThumbnail:(id)thumbnail forItemAtIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  v6 = MEMORY[0x277CCAA70];
  thumbnailCopy = thumbnail;
  v8 = [v6 indexPathForItem:index inSection:0];
  v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v8];

  layout = [v10 layout];
  [layout setVideoThumbnailImage:thumbnailCopy];
}

- (void)unhideImages
{
  hiddenIconIndexSet = self->_hiddenIconIndexSet;
  if (hiddenIconIndexSet)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__SKUILockupSwooshViewController_unhideImages__block_invoke;
    v5[3] = &unk_2781FC790;
    v5[4] = self;
    [(NSMutableIndexSet *)hiddenIconIndexSet enumerateIndexesWithOptions:0 usingBlock:v5];
    v4 = self->_hiddenIconIndexSet;
    self->_hiddenIconIndexSet = 0;
  }
}

void __46__SKUILockupSwooshViewController_unhideImages__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
  v5 = [v2 cellForItemAtIndexPath:v3];

  v4 = [v5 layout];
  [v4 setIconImageHidden:0];
}

- (void)loadView
{
  if (!self->_swooshView)
  {
    v3 = objc_alloc_init(SKUISwooshView);
    swooshView = self->_swooshView;
    self->_swooshView = v3;

    seeAllStyle = self->_seeAllStyle;
    if (seeAllStyle == 1)
    {
      chevronTitleControl = [(SKUISwooshView *)self->_swooshView chevronTitleControl];
      [chevronTitleControl addTarget:self action:sel__seeAllAction_ forControlEvents:64];

      v9 = !self->_seeAllHidden && self->_seeAllURL != 0;
      [(SKUISwooshView *)self->_swooshView setShowsChevronForTitle:v9];
    }

    else if (!seeAllStyle)
    {
      seeAllControl = [(SKUISwooshView *)self->_swooshView seeAllControl];
      [seeAllControl addTarget:self action:sel__seeAllAction_ forControlEvents:64];

      seeAllControl2 = [(SKUISwooshView *)self->_swooshView seeAllControl];
      [seeAllControl2 setHidden:self->_seeAllHidden];
    }

    v10 = self->_swooshView;
    colorScheme = [(SKUISwooshViewController *)self colorScheme];
    [(SKUISwooshView *)v10 setColoringWithColorScheme:colorScheme];

    [(SKUISwooshView *)self->_swooshView contentInsets];
    [(SKUISwooshView *)self->_swooshView setCollectionViewInsets:-5.0, -v12, 2.0, -v13];
  }

  if (self->_seeAllStyle || !self->_seeAllURL)
  {
    v14 = 0;
  }

  else
  {
    seeAllTitle = self->_seeAllTitle;
    if (seeAllTitle)
    {
      v14 = seeAllTitle;
    }

    else
    {
      clientContext = [(SKUISwooshViewController *)self clientContext];
      v29 = clientContext;
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"SWOOSH_SEE_ALL_TITLE"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"SWOOSH_SEE_ALL_TITLE" inBundles:0];
      }
      v31 = ;

      v14 = v31;
    }
  }

  v30 = v14;
  [(SKUISwooshView *)self->_swooshView setSeeAllTitle:v14];
  collectionView = self->_collectionView;
  if (!collectionView)
  {
    v16 = objc_alloc_init(SKUISwooshCollectionViewLayout);
    backgroundColor = [(SKUISwooshView *)self->_swooshView backgroundColor];
    [(SKUISwooshCollectionViewLayout *)v16 setBackgroundColor:backgroundColor];

    [(SKUISwooshCollectionViewLayout *)v16 setSnapsToItemBoundaries:1];
    if ((self->_defaultLockupStyle.visibleFields & 0x400) != 0)
    {
      p_interItemSpacingVideoLockup = &self->_metrics.interItemSpacingVideoLockup;
    }

    else if (self->_swooshType == 2)
    {
      p_interItemSpacingVideoLockup = &self->_metrics.interItemSpacingNewsstand;
    }

    else
    {
      p_interItemSpacingVideoLockup = &self->_metrics.interItemSpacingMixed;
    }

    [(UICollectionViewFlowLayout *)v16 setMinimumInteritemSpacing:*p_interItemSpacingVideoLockup];
    [(UICollectionViewFlowLayout *)v16 setMinimumLineSpacing:*p_interItemSpacingVideoLockup];
    v20 = [objc_alloc(MEMORY[0x277D752A0]) initWithFrame:v16 collectionViewLayout:{0.0, 0.0, 0.0, self->_maxCellSize.height}];
    v21 = self->_collectionView;
    self->_collectionView = v20;

    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"0"];
    [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
    v22 = self->_collectionView;
    backgroundColor2 = [(SKUISwooshView *)self->_swooshView backgroundColor];
    [(UICollectionView *)v22 setBackgroundColor:backgroundColor2];

    [(UICollectionView *)self->_collectionView setDataSource:self];
    v24 = self->_collectionView;
    +[SKUISwooshCollectionViewLayout snapToBoundariesDecelerationRate];
    [(UICollectionView *)v24 setDecelerationRate:v25];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setScrollsToTop:0];
    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_collectionView setPrefetchingEnabled:0];

    collectionView = self->_collectionView;
  }

  [(SKUISwooshView *)self->_swooshView setCollectionView:collectionView];
  v26 = self->_swooshView;
  title = [(SKUILockupSwooshViewController *)self title];
  [(SKUISwooshView *)v26 setTitle:title];

  [(SKUISwooshView *)self->_swooshView sizeToFit];
  [(SKUILockupSwooshViewController *)self setView:self->_swooshView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_didInitialReload)
  {
    self->_didInitialReload = 1;
    [(UICollectionView *)self->_collectionView reloadData];
  }

  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v11 + 1) + 8 * i) animated:appearCopy];
      }

      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SKUILockupSwooshViewController;
  [(SKUILockupSwooshViewController *)&v10 viewWillAppear:appearCopy];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"0" forIndexPath:pathCopy];
  clientContext = [(SKUISwooshViewController *)self clientContext];
  layout = [v7 layout];
  [layout setClientContext:clientContext];
  item = [pathCopy item];

  v11 = [(NSArray *)self->_lockups objectAtIndex:item];
  item2 = [v11 item];
  [v7 configureForItem:item2 clientContext:clientContext];

  colorScheme = [(SKUISwooshViewController *)self colorScheme];
  [layout setColoringWithColorScheme:colorScheme];

  [layout setIconImageHidden:{-[NSMutableIndexSet containsIndex:](self->_hiddenIconIndexSet, "containsIndex:", item)}];
  [layout setMaxImageSize:{self->_maxImageSize.width, self->_maxImageSize.height}];
  [layout setVideoSize:{self->_metrics.videoThumbnailSize.width, self->_metrics.videoThumbnailSize.height}];
  if (v11)
  {
    [v11 lockupStyle];
    v14 = v24;
  }

  else
  {
    v14 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  [layout setVisibleFields:v14];
  delegate = [(SKUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [delegate swoosh:self imageForCellAtIndex:item];
  }

  else
  {
    v16 = 0;
  }

  [layout setIconImage:v16];
  if (v11)
  {
    [v11 lockupStyle];
    if (v21 & 0x400) != 0 && (objc_opt_respondsToSelector())
    {
      v17 = [delegate swoosh:self videoThumbnailForCellAtIndex:item];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  [layout setVideoThumbnailImage:{v17, v19, v20, v21, v22, v23, v24}];
  if (self->_delegateWantsWillDisplay)
  {
    [delegate swoosh:self willDisplayCellAtIndex:item];
  }

  return v7;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(SKUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate swoosh:self didSelectCellAtIndex:{objc_msgSend(pathCopy, "item")}];
  }
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  if ((self->_defaultLockupStyle.visibleFields & 0x400) != 0)
  {
    horizontalPadding = self->_metrics.horizontalPadding;
  }

  else
  {
    horizontalPadding = self->_metrics.horizontalPadding - floor((self->_maxCellSize.width - self->_maxImageSize.width) * 0.5);
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = horizontalPadding;
  result.right = v8;
  result.bottom = v7;
  result.left = horizontalPadding;
  result.top = v6;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = objc_alloc_init(SKUILockupSwooshCollectionViewCell);
  layout = [(SKUILockupSwooshCollectionViewCell *)v7 layout];
  lockups = self->_lockups;
  item = [pathCopy item];

  v11 = [(NSArray *)lockups objectAtIndex:item];
  [layout setMaxImageSize:{self->_maxImageSize.width, self->_maxImageSize.height}];
  [layout setVideoSize:{self->_metrics.videoThumbnailSize.width, self->_metrics.videoThumbnailSize.height}];
  if (v11)
  {
    [v11 lockupStyle];
    v12 = v24;
  }

  else
  {
    v12 = 0;
  }

  [layout setVisibleFields:v12];
  artworkContext = self->_artworkContext;
  item2 = [v11 item];
  [(SKUIItemArtworkContext *)artworkContext imageSizeForItem:item2];
  v16 = v15;
  v18 = v17;

  [layout cellSizeForImageOfSize:{v16, v18}];
  v20 = v19;
  height = self->_maxCellSize.height;

  v22 = v20;
  v23 = height;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)_seeAllAction:(id)action
{
  delegate = [(SKUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate swooshDidSelectSeeAll:self];
  }
}

- (CGSize)_maximumCellSizeForImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v34 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  v8 = self->_metrics.videoThumbnailSize.width;
  v9 = self->_metrics.videoThumbnailSize.height;
  v10 = objc_alloc_init(SKUILockupSwooshCollectionViewCell);
  layout = [(SKUILockupSwooshCollectionViewCell *)v10 layout];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = self->_lockups;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  v14 = v7;
  v15 = v6;
  if (v13)
  {
    v16 = v13;
    v17 = *v30;
    v14 = v7;
    v15 = v6;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        [layout setVideoSize:{v8, v9}];
        if (v19)
        {
          [v19 lockupStyle];
          v20 = v28;
        }

        else
        {
          v20 = 0;
          v28 = 0;
        }

        [layout setVisibleFields:v20];
        [layout cellSizeForImageOfSize:{width, height}];
        if (v22 >= v14)
        {
          v14 = v22;
        }

        if (v21 >= v15)
        {
          v15 = v21;
        }
      }

      v16 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  if (v15 == v6 && v14 == v7)
  {
    [layout setVideoSize:{v8, v9}];
    [layout setVisibleFields:self->_defaultLockupStyle.visibleFields];
    [layout cellSizeForImageOfSize:{width, height}];
    v15 = v24;
    v14 = v25;
  }

  v26 = v15;
  v27 = v14;
  result.height = v27;
  result.width = v26;
  return result;
}

- (id)_newArtworkContextForSwooshType:(int64_t)type
{
  v5 = objc_alloc_init(SKUIItemArtworkContext);
  colorScheme = [(SKUISwooshViewController *)self colorScheme];
  [(SKUIItemArtworkContext *)v5 setColorScheme:colorScheme];

  p_metrics = &self->_metrics;
  if ((self->_defaultLockupStyle.visibleFields & 0x400) != 0)
  {
    p_videoLockupIconSize = &self->_metrics.videoLockupIconSize;
    width = self->_metrics.videoLockupIconSize.width;
    p_height = &p_videoLockupIconSize->height;
    v13 = [SKUIProductImageDataConsumer consumerWithSize:width, p_videoLockupIconSize->height];
    [(SKUIItemArtworkContext *)v5 setGeneralConsumer:v13];

    v14 = [SKUIStyledImageDataConsumer appIconConsumerWithSize:p_videoLockupIconSize->width, p_videoLockupIconSize->height];
    [(SKUIItemArtworkContext *)v5 setIconConsumer:v14];
  }

  else
  {
    v8 = [SKUIProductImageDataConsumer consumerWithSize:self->_metrics.newsstandSize.width, self->_metrics.newsstandSize.height];
    [(SKUIItemArtworkContext *)v5 setGeneralConsumer:v8];

    v9 = [SKUIStyledImageDataConsumer appIconConsumerWithSize:p_metrics->iconSize.width, p_metrics->iconSize.height];
    [(SKUIItemArtworkContext *)v5 setIconConsumer:v9];

    if (type)
    {
      p_height = &p_metrics->newsstandSwooshSize.height;
    }

    else
    {
      p_height = &p_metrics->newsstandSize.height;
    }

    if (type)
    {
      p_videoLockupIconSize = &p_metrics->newsstandSwooshSize;
    }

    else
    {
      p_videoLockupIconSize = &p_metrics->newsstandSize;
    }
  }

  v15 = [SKUIStyledImageDataConsumer productImageConsumerWithSize:p_videoLockupIconSize->width, *p_height];
  [(SKUIItemArtworkContext *)v5 setNewsstandConsumer:v15];

  return v5;
}

- (id)_newLockupComponentWithItem:(id)item defaultStyle:(SKUILockupStyle *)style
{
  itemCopy = item;
  if ([itemCopy itemKind] == 17)
  {
    style->visibleFields = 150;
  }

  v6 = [SKUILockupComponent alloc];
  v9 = *&style->artworkSize;
  visibleFields = style->visibleFields;
  v7 = [(SKUILockupComponent *)v6 initWithItem:itemCopy style:&v9];

  return v7;
}

- (void)_reloadSizes
{
  v3 = [(SKUILockupSwooshViewController *)self _newArtworkContextForSwooshType:self->_swooshType];
  artworkContext = self->_artworkContext;
  self->_artworkContext = v3;

  if ([(NSArray *)self->_lockups count]|| (self->_expectedImageSize.width == *MEMORY[0x277CBF3A8] ? (v5 = self->_expectedImageSize.height == *(MEMORY[0x277CBF3A8] + 8)) : (v5 = 0), v5))
  {
    [(SKUIItemArtworkContext *)self->_artworkContext largestImageSizeForLockups:self->_lockups];
    self->_maxImageSize.width = width;
    self->_maxImageSize.height = height;
  }

  else
  {
    self->_maxImageSize = self->_expectedImageSize;
    width = self->_maxImageSize.width;
    height = self->_maxImageSize.height;
  }

  [(SKUILockupSwooshViewController *)self _maximumCellSizeForImageSize:width, height];
  self->_maxCellSize.width = v8;
  self->_maxCellSize.height = v9;
}

+ (int64_t)_swooshTypeForLockups:(id)lockups
{
  v19 = *MEMORY[0x277D85DE8];
  lockupsCopy = lockups;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [lockupsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(lockupsCopy);
        }

        item = [*(*(&v14 + 1) + 8 * i) item];
        isNewsstandApp = [item isNewsstandApp];

        v6 |= isNewsstandApp ^ 1;
        v7 |= isNewsstandApp;
      }

      v5 = [lockupsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
    if (v7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if ((v7 & 1 & v6) != 0)
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- ($0F9D46A54E891E2DFD6B960C8B4302D3)_lockupSwooshMetrics
{
  *&retstr->var5 = 0u;
  *&retstr->var7 = 0u;
  retstr->var3 = 0u;
  retstr->var4 = 0u;
  retstr->var1 = 0u;
  retstr->var2 = 0u;
  retstr->var0 = 0u;
  clientContext = [(SKUISwooshViewController *)self clientContext];
  v5 = SKUIUserInterfaceIdiom(clientContext);

  if (v5 == 1)
  {
    retstr->var0 = vdupq_n_s64(0x4056800000000000uLL);
    retstr->var1 = xmmword_215F3F7F0;
    retstr->var2 = xmmword_215F3F820;
    retstr->var3 = vdupq_n_s64(0x4046000000000000uLL);
    retstr->var4 = xmmword_215F3F830;
    *&retstr->var5 = xmmword_215F3F840;
    __asm { FMOV            V0.2D, #30.0 }

    *&retstr->var7 = _Q0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v14 = v13;

    if (v14 <= 375.0)
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v18 = v17;

      if (v18 <= 320.0)
      {
        retstr->var0 = vdupq_n_s64(0x4052000000000000uLL);
        retstr->var1 = xmmword_215F3F790;
        retstr->var2 = xmmword_215F3F7A0;
        retstr->var3 = vdupq_n_s64(0x4046000000000000uLL);
        v15 = xmmword_215F3F7B0;
      }

      else
      {
        retstr->var0 = vdupq_n_s64(0x4057C00000000000uLL);
        retstr->var1 = xmmword_215F3F7C0;
        retstr->var2 = xmmword_215F3F7D0;
        retstr->var3 = vdupq_n_s64(0x4046000000000000uLL);
        v15 = xmmword_215F3F7E0;
      }
    }

    else
    {
      retstr->var0 = vdupq_n_s64(0x4054000000000000uLL);
      retstr->var1 = xmmword_215F3F7F0;
      retstr->var2 = xmmword_215F3F800;
      retstr->var3 = vdupq_n_s64(0x4046000000000000uLL);
      v15 = xmmword_215F3F810;
    }

    __asm { FMOV            V1.2D, #15.0 }

    retstr->var4 = v15;
    *&retstr->var5 = _Q1;
    *&retstr->var7 = _Q1;
  }

  return result;
}

- (void)initWithItemList:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupSwooshViewController initWithItemList:]";
}

- (void)initWithSwoosh:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupSwooshViewController initWithSwoosh:]";
}

@end