@interface SKUIItemGridViewController
- (CGPoint)contentOffset;
- (CGSize)imageBoundingSize;
- (NSOperationQueue)operationQueue;
- (SKUIItemGridDelegate)delegate;
- (SKUIItemGridViewController)initWithRowHeight:(double)a3;
- (_NSRange)itemCollectionController:(id)a3 itemPageRangeForOffset:(CGPoint)a4;
- (_NSRange)visibleItemRangeForItemCollectionController:(id)a3;
- (id)_collectionView;
- (id)_itemCollectionController;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)itemCollectionController:(id)a3 cellLayoutForItemIndex:(int64_t)a4;
- (id)popIconImageViewForItemAtIndex:(int64_t)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_reloadLayout;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)itemCollectionView:(id)a3 didConfirmItemOfferForCell:(id)a4;
- (void)itemCollectionView:(id)a3 didPerformEditActionForCell:(id)a4;
- (void)loadNextPageOfArtworkWithReason:(int64_t)a3;
- (void)loadView;
- (void)removeItemsAtIndexes:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setArtworkContext:(id)a3;
- (void)setIconDataConsumer:(id)a3;
- (void)setItemCellClass:(Class)a3;
- (void)setItems:(id)a3;
- (void)unhideIcons;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation SKUIItemGridViewController

- (SKUIItemGridViewController)initWithRowHeight:(double)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIItemGridViewController initWithRowHeight:];
  }

  v6.receiver = self;
  v6.super_class = SKUIItemGridViewController;
  result = [(SKUIItemGridViewController *)&v6 init];
  if (result)
  {
    result->_rowHeight = a3;
  }

  return result;
}

- (void)dealloc
{
  [(UICollectionView *)self->_collectionView setDataSource:0];
  [(UICollectionView *)self->_collectionView setDelegate:0];
  [(SKUIItemCollectionController *)self->_itemCollectionController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIItemGridViewController;
  [(SKUIItemGridViewController *)&v3 dealloc];
}

- (CGPoint)contentOffset
{
  collectionView = self->_collectionView;
  if (collectionView)
  {
    [(UICollectionView *)collectionView contentOffset];
  }

  else
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)loadNextPageOfArtworkWithReason:(int64_t)a3
{
  v4 = [(SKUIItemGridViewController *)self _itemCollectionController];
  [v4 loadNextPageOfArtworkWithReason:a3];
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:2];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (id)popIconImageViewForItemAtIndex:(int64_t)a3
{
  collectionView = self->_collectionView;
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
  v7 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v6];

  v8 = [v7 layout];
  v9 = [v8 iconImage];

  if (v9)
  {
    v10 = [v8 iconImageView];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = objc_alloc(MEMORY[0x277D755E8]);
    v20 = [v8 iconImage];
    v9 = [v19 initWithImage:v20];

    v21 = [(SKUIItemGridViewController *)self view];
    [v21 convertRect:v7 fromView:{v12, v14, v16, v18}];
    [v9 setFrame:?];

    hiddenIconIndexSet = self->_hiddenIconIndexSet;
    if (!hiddenIconIndexSet)
    {
      v23 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v24 = self->_hiddenIconIndexSet;
      self->_hiddenIconIndexSet = v23;

      hiddenIconIndexSet = self->_hiddenIconIndexSet;
    }

    [(NSMutableIndexSet *)hiddenIconIndexSet addIndex:a3];
    [v8 setIconImageHidden:1];
  }

  return v9;
}

- (void)removeItemsAtIndexes:(id)a3
{
  [(NSMutableArray *)self->_items removeObjectsAtIndexes:a3];
  [(SKUIItemCollectionController *)self->_itemCollectionController setItems:self->_items];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView reloadData];
}

- (void)setArtworkContext:(id)a3
{
  v4 = a3;
  v5 = [(SKUIItemGridViewController *)self _itemCollectionController];
  [v5 setArtworkContext:v4];
}

- (void)setIconDataConsumer:(id)a3
{
  v4 = a3;
  v5 = [(SKUIItemGridViewController *)self _itemCollectionController];
  [v5 setIconDataConsumer:v4];
}

- (void)setItemCellClass:(Class)a3
{
  v4 = [(SKUIItemGridViewController *)self _collectionView];
  [v4 registerClass:a3 forCellWithReuseIdentifier:@"ItemCellReuseIdentifier"];
}

- (void)setItems:(id)a3
{
  if (self->_items != a3)
  {
    v4 = [a3 mutableCopy];
    items = self->_items;
    self->_items = v4;

    [(SKUIItemCollectionController *)self->_itemCollectionController setItems:self->_items];
    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView reloadData];
  }
}

- (void)unhideIcons
{
  hiddenIconIndexSet = self->_hiddenIconIndexSet;
  if (hiddenIconIndexSet)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__SKUIItemGridViewController_unhideIcons__block_invoke;
    v5[3] = &unk_2781FC790;
    v5[4] = self;
    [(NSMutableIndexSet *)hiddenIconIndexSet enumerateIndexesWithOptions:0 usingBlock:v5];
    v4 = self->_hiddenIconIndexSet;
    self->_hiddenIconIndexSet = 0;
  }
}

void __41__SKUIItemGridViewController_unhideIcons__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 992);
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
  v5 = [v2 cellForItemAtIndexPath:v3];

  v4 = [v5 layout];
  [v4 setIconImageHidden:0];
}

- (void)loadView
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [(SKUIItemGridViewController *)self _collectionView];
  [v3 reloadData];
  [v5 addSubview:v3];
  v4 = [v3 backgroundColor];
  [v5 setBackgroundColor:v4];

  [(SKUIItemGridViewController *)self setView:v5];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(SKUIItemCollectionController *)self->_itemCollectionController enterForeground];
  v5 = [(SKUIItemGridViewController *)self _itemCollectionController];
  [(UICollectionView *)self->_collectionView contentOffset];
  [v5 precacheNextPageArtworkForOffset:? direction:?];

  v6.receiver = self;
  v6.super_class = SKUIItemGridViewController;
  [(SKUIItemGridViewController *)&v6 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIItemGridViewController;
  [(SKUIItemGridViewController *)&v4 viewDidDisappear:a3];
  [(SKUIItemCollectionController *)self->_itemCollectionController enterBackground];
}

- (void)viewDidLayoutSubviews
{
  [(SKUIItemGridViewController *)self _reloadLayout];
  v3.receiver = self;
  v3.super_class = SKUIItemGridViewController;
  [(SKUIItemGridViewController *)&v3 viewDidLayoutSubviews];
}

- (id)itemCollectionController:(id)a3 cellLayoutForItemIndex:(int64_t)a4
{
  collectionView = self->_collectionView;
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:0];
  v6 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v5];

  v7 = [v6 layout];

  return v7;
}

- (_NSRange)itemCollectionController:(id)a3 itemPageRangeForOffset:(CGPoint)a4
{
  v4 = SKUIItemCollectionItemPageRangeForCollectionView(self->_collectionView, a4.x, a4.y);
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)visibleItemRangeForItemCollectionController:(id)a3
{
  v3 = SKUIItemCollectionVisibleItemRangeForCollectionView(self->_collectionView);
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)itemCollectionView:(id)a3 didConfirmItemOfferForCell:(id)a4
{
  v9 = a4;
  v6 = [a3 indexPathForCell:?];
  v7 = -[SKUIItemCollectionController performActionForItemAtIndex:](self->_itemCollectionController, "performActionForItemAtIndex:", [v6 item]);
  if (v7)
  {
    v8 = [v9 layout];
    [v8 setItemState:v7 animated:1];
  }
}

- (void)itemCollectionView:(id)a3 didPerformEditActionForCell:(id)a4
{
  v5 = [a3 indexPathForCell:a4];
  if (v5)
  {
    v9 = v5;
    v6 = [(SKUIItemGridViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v9 item];
      v8 = [(NSMutableArray *)self->_items objectAtIndex:v7];
      [v6 itemGrid:self didPerformEditActionForItem:v8 atIndex:v7];
    }

    v5 = v9;
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithReuseIdentifier:@"ItemCellReuseIdentifier" forIndexPath:a4];
  [v5 setSeparatorStyle:1];
  v6 = [v5 layout];
  [v6 setClientContext:self->_clientContext];

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_items count:a3];
  v6 = [(SKUIItemGridViewController *)self _collectionViewLayout];
  v7 = [v6 numberOfColumns];

  if (v5 % v7)
  {
    return v7 + v5 - v5 % v7;
  }

  else
  {
    return v5;
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [v14 layout];
  v9 = [(SKUIUber *)self->_uber colorScheme];
  v10 = [v9 primaryTextColor];
  [v14 setSeparatorColor:v10];

  v11 = [v7 item];
  if (v11 >= [(NSMutableArray *)self->_items count])
  {
    [v14 configureForItem:0 clientContext:self->_clientContext];
    [v8 resetLayout];
  }

  else
  {
    v12 = [(NSMutableArray *)self->_items objectAtIndex:v11];
    [v14 configureForItem:v12 clientContext:self->_clientContext];
    [(SKUIItemCollectionController *)self->_itemCollectionController configureCellLayout:v8 forIndex:v11];
    [v8 setIconImageHidden:{-[NSMutableIndexSet containsIndex:](self->_hiddenIconIndexSet, "containsIndex:", v11)}];
    [v8 setSelected:{-[NSMutableIndexSet containsIndex:](self->_selectedItemIndexSet, "containsIndex:", v11)}];
    v13 = [(SKUIUber *)self->_uber colorScheme];
    [v8 setColoringWithColorScheme:v13];

    if (self->_imageBoundingSize.width != *MEMORY[0x277CBF3A8] || self->_imageBoundingSize.height != *(MEMORY[0x277CBF3A8] + 8))
    {
      [v8 setImageBoundingSize:?];
    }
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = [a5 item];
  if (v6 < [(NSMutableArray *)self->_items count])
  {
    itemCollectionController = self->_itemCollectionController;

    [(SKUIItemCollectionController *)itemCollectionController didEndDisplayingItemAtIndex:v6];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [v10 item];
    if (v7 < [(NSMutableArray *)self->_items count])
    {
      v8 = [(NSMutableArray *)self->_items objectAtIndex:v7];
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 itemGrid:self didSelectItem:v8 atIndex:v7];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 itemGridWillBeginDragging:self];
  }

  [(SKUIItemCollectionController *)self->_itemCollectionController scrollViewWillBeginDragging:v7];
}

- (id)_collectionView
{
  collectionView = self->_collectionView;
  if (!collectionView)
  {
    v4 = objc_alloc(MEMORY[0x277D752A0]);
    v5 = objc_alloc_init(SKUIItemGridCollectionViewLayout);
    v6 = [v4 initWithFrame:v5 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_collectionView;
    self->_collectionView = v6;

    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"a"];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D0] withReuseIdentifier:@"a"];
    [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:1];
    [(UICollectionView *)self->_collectionView setAutoresizingMask:18];
    v8 = self->_collectionView;
    v9 = [MEMORY[0x277D75348] whiteColor];
    [(UICollectionView *)v8 setBackgroundColor:v9];

    [(UICollectionView *)self->_collectionView setSemanticContentAttribute:storeSemanticContentAttribute()];
    [(UICollectionView *)self->_collectionView setDataSource:self];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setPrefetchingEnabled:0];
    [(SKUIItemGridViewController *)self _reloadLayout];
    collectionView = self->_collectionView;
  }

  return collectionView;
}

- (void)_reloadLayout
{
  v3 = [(SKUIItemGridViewController *)self view];
  [v3 frame];
  v5 = v4;

  if (v5 > 0.00000011920929)
  {
    v6 = [(SKUIItemGridViewController *)self _collectionViewLayout];
    v9 = v6;
    if (v5 <= 1000.0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    [v6 setNumberOfColumns:v7];
    v8 = v5 / v7;
    [v9 setItemSize:{floorf(v8), self->_rowHeight}];
    [v9 invalidateLayout];
    [(UICollectionView *)self->_collectionView reloadData];
  }
}

- (id)_itemCollectionController
{
  itemCollectionController = self->_itemCollectionController;
  if (!itemCollectionController)
  {
    v4 = [[SKUIItemCollectionController alloc] initWithClientContext:self->_clientContext];
    v5 = self->_itemCollectionController;
    self->_itemCollectionController = v4;

    [(SKUIItemCollectionController *)self->_itemCollectionController setDelegate:self];
    v6 = self->_itemCollectionController;
    v7 = +[SKUIStyledImageDataConsumer listIconConsumer];
    [(SKUIItemCollectionController *)v6 setIconDataConsumer:v7];

    [(SKUIItemCollectionController *)self->_itemCollectionController setItems:self->_items];
    [(SKUIItemCollectionController *)self->_itemCollectionController setNumberOfItemsPerPage:20];
    [(SKUIItemCollectionController *)self->_itemCollectionController setNumberOfPagesToCacheAhead:3.0];
    itemCollectionController = self->_itemCollectionController;
  }

  return itemCollectionController;
}

- (SKUIItemGridDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)imageBoundingSize
{
  width = self->_imageBoundingSize.width;
  height = self->_imageBoundingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithRowHeight:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemGridViewController initWithRowHeight:]";
}

@end