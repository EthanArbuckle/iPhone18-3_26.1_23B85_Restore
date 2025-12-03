@interface SKUIItemGridViewController
- (CGPoint)contentOffset;
- (CGSize)imageBoundingSize;
- (NSOperationQueue)operationQueue;
- (SKUIItemGridDelegate)delegate;
- (SKUIItemGridViewController)initWithRowHeight:(double)height;
- (_NSRange)itemCollectionController:(id)controller itemPageRangeForOffset:(CGPoint)offset;
- (_NSRange)visibleItemRangeForItemCollectionController:(id)controller;
- (id)_collectionView;
- (id)_itemCollectionController;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)itemCollectionController:(id)controller cellLayoutForItemIndex:(int64_t)index;
- (id)popIconImageViewForItemAtIndex:(int64_t)index;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_reloadLayout;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)itemCollectionView:(id)view didConfirmItemOfferForCell:(id)cell;
- (void)itemCollectionView:(id)view didPerformEditActionForCell:(id)cell;
- (void)loadNextPageOfArtworkWithReason:(int64_t)reason;
- (void)loadView;
- (void)removeItemsAtIndexes:(id)indexes;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setArtworkContext:(id)context;
- (void)setIconDataConsumer:(id)consumer;
- (void)setItemCellClass:(Class)class;
- (void)setItems:(id)items;
- (void)unhideIcons;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
@end

@implementation SKUIItemGridViewController

- (SKUIItemGridViewController)initWithRowHeight:(double)height
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
    result->_rowHeight = height;
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

- (void)loadNextPageOfArtworkWithReason:(int64_t)reason
{
  _itemCollectionController = [(SKUIItemGridViewController *)self _itemCollectionController];
  [_itemCollectionController loadNextPageOfArtworkWithReason:reason];
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

- (id)popIconImageViewForItemAtIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
  v7 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v6];

  layout = [v7 layout];
  iconImage = [layout iconImage];

  if (iconImage)
  {
    iconImageView = [layout iconImageView];
    [iconImageView frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = objc_alloc(MEMORY[0x277D755E8]);
    iconImage2 = [layout iconImage];
    iconImage = [v19 initWithImage:iconImage2];

    view = [(SKUIItemGridViewController *)self view];
    [view convertRect:v7 fromView:{v12, v14, v16, v18}];
    [iconImage setFrame:?];

    hiddenIconIndexSet = self->_hiddenIconIndexSet;
    if (!hiddenIconIndexSet)
    {
      v23 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v24 = self->_hiddenIconIndexSet;
      self->_hiddenIconIndexSet = v23;

      hiddenIconIndexSet = self->_hiddenIconIndexSet;
    }

    [(NSMutableIndexSet *)hiddenIconIndexSet addIndex:index];
    [layout setIconImageHidden:1];
  }

  return iconImage;
}

- (void)removeItemsAtIndexes:(id)indexes
{
  [(NSMutableArray *)self->_items removeObjectsAtIndexes:indexes];
  [(SKUIItemCollectionController *)self->_itemCollectionController setItems:self->_items];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView reloadData];
}

- (void)setArtworkContext:(id)context
{
  contextCopy = context;
  _itemCollectionController = [(SKUIItemGridViewController *)self _itemCollectionController];
  [_itemCollectionController setArtworkContext:contextCopy];
}

- (void)setIconDataConsumer:(id)consumer
{
  consumerCopy = consumer;
  _itemCollectionController = [(SKUIItemGridViewController *)self _itemCollectionController];
  [_itemCollectionController setIconDataConsumer:consumerCopy];
}

- (void)setItemCellClass:(Class)class
{
  _collectionView = [(SKUIItemGridViewController *)self _collectionView];
  [_collectionView registerClass:class forCellWithReuseIdentifier:@"ItemCellReuseIdentifier"];
}

- (void)setItems:(id)items
{
  if (self->_items != items)
  {
    v4 = [items mutableCopy];
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
  _collectionView = [(SKUIItemGridViewController *)self _collectionView];
  [_collectionView reloadData];
  [v5 addSubview:_collectionView];
  backgroundColor = [_collectionView backgroundColor];
  [v5 setBackgroundColor:backgroundColor];

  [(SKUIItemGridViewController *)self setView:v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SKUIItemCollectionController *)self->_itemCollectionController enterForeground];
  _itemCollectionController = [(SKUIItemGridViewController *)self _itemCollectionController];
  [(UICollectionView *)self->_collectionView contentOffset];
  [_itemCollectionController precacheNextPageArtworkForOffset:? direction:?];

  v6.receiver = self;
  v6.super_class = SKUIItemGridViewController;
  [(SKUIItemGridViewController *)&v6 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SKUIItemGridViewController;
  [(SKUIItemGridViewController *)&v4 viewDidDisappear:disappear];
  [(SKUIItemCollectionController *)self->_itemCollectionController enterBackground];
}

- (void)viewDidLayoutSubviews
{
  [(SKUIItemGridViewController *)self _reloadLayout];
  v3.receiver = self;
  v3.super_class = SKUIItemGridViewController;
  [(SKUIItemGridViewController *)&v3 viewDidLayoutSubviews];
}

- (id)itemCollectionController:(id)controller cellLayoutForItemIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
  v6 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v5];

  layout = [v6 layout];

  return layout;
}

- (_NSRange)itemCollectionController:(id)controller itemPageRangeForOffset:(CGPoint)offset
{
  v4 = SKUIItemCollectionItemPageRangeForCollectionView(self->_collectionView, offset.x, offset.y);
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)visibleItemRangeForItemCollectionController:(id)controller
{
  v3 = SKUIItemCollectionVisibleItemRangeForCollectionView(self->_collectionView);
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)itemCollectionView:(id)view didConfirmItemOfferForCell:(id)cell
{
  cellCopy = cell;
  v6 = [view indexPathForCell:?];
  v7 = -[SKUIItemCollectionController performActionForItemAtIndex:](self->_itemCollectionController, "performActionForItemAtIndex:", [v6 item]);
  if (v7)
  {
    layout = [cellCopy layout];
    [layout setItemState:v7 animated:1];
  }
}

- (void)itemCollectionView:(id)view didPerformEditActionForCell:(id)cell
{
  v5 = [view indexPathForCell:cell];
  if (v5)
  {
    v9 = v5;
    delegate = [(SKUIItemGridViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      item = [v9 item];
      v8 = [(NSMutableArray *)self->_items objectAtIndex:item];
      [delegate itemGrid:self didPerformEditActionForItem:v8 atIndex:item];
    }

    v5 = v9;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithReuseIdentifier:@"ItemCellReuseIdentifier" forIndexPath:path];
  [v5 setSeparatorStyle:1];
  layout = [v5 layout];
  [layout setClientContext:self->_clientContext];

  return v5;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_items count:view];
  _collectionViewLayout = [(SKUIItemGridViewController *)self _collectionViewLayout];
  numberOfColumns = [_collectionViewLayout numberOfColumns];

  if (v5 % numberOfColumns)
  {
    return numberOfColumns + v5 - v5 % numberOfColumns;
  }

  else
  {
    return v5;
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  layout = [cellCopy layout];
  colorScheme = [(SKUIUber *)self->_uber colorScheme];
  primaryTextColor = [colorScheme primaryTextColor];
  [cellCopy setSeparatorColor:primaryTextColor];

  item = [pathCopy item];
  if (item >= [(NSMutableArray *)self->_items count])
  {
    [cellCopy configureForItem:0 clientContext:self->_clientContext];
    [layout resetLayout];
  }

  else
  {
    v12 = [(NSMutableArray *)self->_items objectAtIndex:item];
    [cellCopy configureForItem:v12 clientContext:self->_clientContext];
    [(SKUIItemCollectionController *)self->_itemCollectionController configureCellLayout:layout forIndex:item];
    [layout setIconImageHidden:{-[NSMutableIndexSet containsIndex:](self->_hiddenIconIndexSet, "containsIndex:", item)}];
    [layout setSelected:{-[NSMutableIndexSet containsIndex:](self->_selectedItemIndexSet, "containsIndex:", item)}];
    colorScheme2 = [(SKUIUber *)self->_uber colorScheme];
    [layout setColoringWithColorScheme:colorScheme2];

    if (self->_imageBoundingSize.width != *MEMORY[0x277CBF3A8] || self->_imageBoundingSize.height != *(MEMORY[0x277CBF3A8] + 8))
    {
      [layout setImageBoundingSize:?];
    }
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  item = [path item];
  if (item < [(NSMutableArray *)self->_items count])
  {
    itemCollectionController = self->_itemCollectionController;

    [(SKUIItemCollectionController *)itemCollectionController didEndDisplayingItemAtIndex:item];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    item = [pathCopy item];
    if (item < [(NSMutableArray *)self->_items count])
    {
      v8 = [(NSMutableArray *)self->_items objectAtIndex:item];
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 itemGrid:self didSelectItem:v8 atIndex:item];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 itemGridWillBeginDragging:self];
  }

  [(SKUIItemCollectionController *)self->_itemCollectionController scrollViewWillBeginDragging:draggingCopy];
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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UICollectionView *)v8 setBackgroundColor:whiteColor];

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
  view = [(SKUIItemGridViewController *)self view];
  [view frame];
  v5 = v4;

  if (v5 > 0.00000011920929)
  {
    _collectionViewLayout = [(SKUIItemGridViewController *)self _collectionViewLayout];
    v9 = _collectionViewLayout;
    if (v5 <= 1000.0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    [_collectionViewLayout setNumberOfColumns:v7];
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