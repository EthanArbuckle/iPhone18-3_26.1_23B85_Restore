@interface SKUIBrickSwooshViewController
- ($1AB5FA073B851C12C2339EC22442E995)_brickSwooshMetrics;
- (CGRect)frameForItemAtIndex:(int64_t)index;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (SKUIBrickSwooshViewController)initWithSwoosh:(id)swoosh;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)popImageViewForItemAtIndex:(int64_t)index;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)deselectAllItems;
- (void)loadView;
- (void)setBricks:(id)bricks;
- (void)setClientContext:(id)context;
- (void)setColorScheme:(id)scheme;
- (void)setDelegate:(id)delegate;
- (void)setImage:(id)image forItemAtIndex:(int64_t)index;
- (void)unhideImages;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUIBrickSwooshViewController

- (SKUIBrickSwooshViewController)initWithSwoosh:(id)swoosh
{
  swooshCopy = swoosh;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrickSwooshViewController initWithSwoosh:];
  }

  v12.receiver = self;
  v12.super_class = SKUIBrickSwooshViewController;
  v5 = [(SKUIBrickSwooshViewController *)&v12 init];
  if (v5)
  {
    bricks = [swooshCopy bricks];
    v7 = [bricks copy];
    bricks = v5->_bricks;
    v5->_bricks = v7;

    v5->_showBrickTitles = [swooshCopy showsBrickTitles];
    title = [swooshCopy title];
    swooshTitle = v5->_swooshTitle;
    v5->_swooshTitle = title;
  }

  return v5;
}

- (void)dealloc
{
  [(UICollectionView *)self->_collectionView setDataSource:0];
  [(UICollectionView *)self->_collectionView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIBrickSwooshViewController;
  [(SKUIBrickSwooshViewController *)&v3 dealloc];
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
    itemImageView = [v7 itemImageView];
    [itemImageView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = objc_alloc(MEMORY[0x277D755E8]);
    itemImage = [v7 itemImage];
    v19 = [v17 initWithImage:itemImage];

    view = [(SKUIBrickSwooshViewController *)self view];
    [view convertRect:v7 fromView:{v10, v12, v14, v16}];
    [v19 setFrame:?];

    hiddenImageIndexSet = self->_hiddenImageIndexSet;
    if (!hiddenImageIndexSet)
    {
      v22 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v23 = self->_hiddenImageIndexSet;
      self->_hiddenImageIndexSet = v22;

      hiddenImageIndexSet = self->_hiddenImageIndexSet;
    }

    [(NSMutableIndexSet *)hiddenImageIndexSet addIndex:index];
    [v7 setItemImageHidden:1];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)setBricks:(id)bricks
{
  if (self->_bricks != bricks)
  {
    v4 = [bricks copy];
    bricks = self->_bricks;
    self->_bricks = v4;

    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView reloadData];
  }
}

- (void)setClientContext:(id)context
{
  v7.receiver = self;
  v7.super_class = SKUIBrickSwooshViewController;
  [(SKUISwooshViewController *)&v7 setClientContext:context];
  [(SKUIBrickSwooshViewController *)self _brickSwooshMetrics];
  self->_metrics.cellHeight = v4;
  self->_metrics.cellWidth = v5;
  self->_metrics.interItemSpacing = v6;
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  colorScheme = [(SKUISwooshViewController *)self colorScheme];

  if (colorScheme != schemeCopy)
  {
    v6.receiver = self;
    v6.super_class = SKUIBrickSwooshViewController;
    [(SKUISwooshViewController *)&v6 setColorScheme:schemeCopy];
    [(SKUISwooshView *)self->_swooshView setColoringWithColorScheme:schemeCopy];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  self->_delegateWantsWillDisplay = objc_opt_respondsToSelector() & 1;
  v5.receiver = self;
  v5.super_class = SKUIBrickSwooshViewController;
  [(SKUISwooshViewController *)&v5 setDelegate:delegateCopy];
}

- (void)setImage:(id)image forItemAtIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  v6 = MEMORY[0x277CCAA70];
  imageCopy = image;
  v8 = [v6 indexPathForItem:index inSection:0];
  v9 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v8];

  [v9 setItemImage:imageCopy];
}

- (void)unhideImages
{
  hiddenImageIndexSet = self->_hiddenImageIndexSet;
  if (hiddenImageIndexSet)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__SKUIBrickSwooshViewController_unhideImages__block_invoke;
    v5[3] = &unk_2781FC790;
    v5[4] = self;
    [(NSMutableIndexSet *)hiddenImageIndexSet enumerateIndexesWithOptions:0 usingBlock:v5];
    v4 = self->_hiddenImageIndexSet;
    self->_hiddenImageIndexSet = 0;
  }
}

void __45__SKUIBrickSwooshViewController_unhideImages__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
  v4 = [v2 cellForItemAtIndexPath:v3];

  [v4 setItemImageHidden:0];
}

- (void)loadView
{
  if (!self->_swooshView)
  {
    v3 = objc_alloc_init(SKUISwooshView);
    swooshView = self->_swooshView;
    self->_swooshView = v3;

    v5 = self->_swooshView;
    colorScheme = [(SKUISwooshViewController *)self colorScheme];
    [(SKUISwooshView *)v5 setColoringWithColorScheme:colorScheme];

    [(SKUISwooshView *)self->_swooshView setTitle:self->_swooshTitle];
    [(SKUISwooshView *)self->_swooshView contentInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(SKUISwooshView *)self->_swooshView collectionViewInsets];
    swooshTitle = self->_swooshTitle;
    if (swooshTitle)
    {
      v15 = v13;
    }

    else
    {
      v15 = 19.0;
    }

    v16 = 0.0;
    if (swooshTitle)
    {
      v16 = v8;
    }

    [(SKUISwooshView *)self->_swooshView setContentInsets:v16, v10, 0.0, v12];
    [(SKUISwooshView *)self->_swooshView setCollectionViewInsets:v15, -v10, 19.0, -v12];
  }

  collectionView = self->_collectionView;
  if (!collectionView)
  {
    if (self->_showBrickTitles)
    {
      cellHeight = self->_metrics.cellHeight + 29.0;
    }

    else
    {
      cellHeight = self->_metrics.cellHeight;
    }

    v19 = objc_alloc_init(SKUISwooshCollectionViewLayout);
    [(UICollectionViewFlowLayout *)v19 setMinimumInteritemSpacing:self->_metrics.interItemSpacing];
    [(UICollectionViewFlowLayout *)v19 setMinimumLineSpacing:self->_metrics.interItemSpacing];
    [(UICollectionViewFlowLayout *)v19 setScrollDirection:1];
    [(SKUISwooshCollectionViewLayout *)v19 setSnapsToItemBoundaries:1];
    v20 = [objc_alloc(MEMORY[0x277D752A0]) initWithFrame:v19 collectionViewLayout:{0.0, 0.0, 0.0, cellHeight}];
    v21 = self->_collectionView;
    self->_collectionView = v20;

    [(UICollectionView *)self->_collectionView setPrefetchingEnabled:0];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"a"];
    [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
    v22 = self->_collectionView;
    backgroundColor = [(SKUISwooshView *)self->_swooshView backgroundColor];
    [(UICollectionView *)v22 setBackgroundColor:backgroundColor];

    [(UICollectionView *)self->_collectionView setDataSource:self];
    v24 = self->_collectionView;
    +[SKUISwooshCollectionViewLayout snapToBoundariesDecelerationRate];
    [(UICollectionView *)v24 setDecelerationRate:v25];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setScrollsToTop:0];
    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];

    collectionView = self->_collectionView;
  }

  [(SKUISwooshView *)self->_swooshView setCollectionView:collectionView];
  [(SKUISwooshView *)self->_swooshView sizeToFit];
  v26 = self->_swooshView;

  [(SKUIBrickSwooshViewController *)self setView:v26];
}

- (void)viewWillAppear:(BOOL)appear
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SKUIBrickSwooshViewController;
  [(SKUIBrickSwooshViewController *)&v13 viewWillAppear:1];
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [indexPathsForSelectedItems countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v9 + 1) + 8 * v8++) animated:1];
      }

      while (v6 != v8);
      v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:pathCopy];
  backgroundColor = [viewCopy backgroundColor];

  [v8 setBackgroundColor:backgroundColor];
  colorScheme = [(SKUISwooshViewController *)self colorScheme];
  [v8 setColoringWithColorScheme:colorScheme];

  delegate = [(SKUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [delegate swoosh:self imageForCellAtIndex:{objc_msgSend(pathCopy, "item")}];
  }

  else
  {
    v12 = 0;
  }

  [v8 setItemImage:v12];
  v13 = -[NSArray objectAtIndex:](self->_bricks, "objectAtIndex:", [pathCopy item]);
  link = [v13 link];
  isActionable = [link isActionable];

  if (isActionable)
  {
    if (self->_showBrickTitles)
    {
      [v8 setAccessibilityLabel:0];
      accessibilityLabel = [v13 accessibilityLabel];
      [v8 setTitle:accessibilityLabel];
    }

    else
    {
      accessibilityLabel2 = [v13 accessibilityLabel];
      [v8 setAccessibilityLabel:accessibilityLabel2];

      [v8 setTitle:0];
    }

    clientContext = [(SKUISwooshViewController *)self clientContext];
    [v8 setClientContext:clientContext];

    countdown = [v13 countdown];
    [v8 setCountdown:countdown];

    [v8 setItemImageHidden:0];
  }

  else
  {
    [v8 setCountdown:0];
    [v8 setAccessibilityLabel:0];
    [v8 setItemImageHidden:1];
    [v8 setTitle:0];
  }

  if (self->_delegateWantsWillDisplay)
  {
    [delegate swoosh:self willDisplayCellAtIndex:{objc_msgSend(pathCopy, "item")}];
  }

  return v8;
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
  v5 = *MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = 15.0;
  v8 = 15.0;
  result.right = v8;
  result.bottom = v6;
  result.left = v7;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  cellHeight = self->_metrics.cellHeight;
  cellWidth = self->_metrics.cellWidth;
  if (self->_showBrickTitles)
  {
    cellHeight = cellHeight + 29.0;
  }

  result.height = cellHeight;
  result.width = cellWidth;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_brickSwooshMetrics
{
  clientContext = [(SKUISwooshViewController *)self clientContext];
  v3 = SKUIUserInterfaceIdiom(clientContext);

  if (v3 == 1)
  {
    v4 = 30.0;
    v5 = 103.0;
    v6 = 210.0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v9 = v8;

    v4 = 15.0;
    if (v9 <= 375.0)
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v12 = v11;

      v6 = dbl_215F3F640[v12 > 320.0];
      v5 = 78.0;
      if (v12 > 320.0)
      {
        v5 = 100.0;
      }
    }

    else
    {
      v5 = 86.0;
      v6 = 175.0;
    }
  }

  v13 = v4;
  result.var2 = v13;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (void)initWithSwoosh:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrickSwooshViewController initWithSwoosh:]";
}

@end