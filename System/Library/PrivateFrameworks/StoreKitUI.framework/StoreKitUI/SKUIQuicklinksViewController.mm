@interface SKUIQuicklinksViewController
- (CGRect)frameForLinkAtIndex:(int64_t)index;
- (SKUIQuicklinksViewControllerDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)_numberOfRows;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)loadView;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setLinks:(id)links;
- (void)setTitle:(id)title;
- (void)viewWillAppear:(BOOL)appear;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIQuicklinksViewController

- (void)dealloc
{
  [(UICollectionView *)self->_collectionView setDelegate:0];
  [(UICollectionView *)self->_collectionView setDataSource:0];
  v3.receiver = self;
  v3.super_class = SKUIQuicklinksViewController;
  [(SKUIQuicklinksViewController *)&v3 dealloc];
}

- (CGRect)frameForLinkAtIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
  v5 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v4];

  if (v5)
  {
    [v5 bounds];
    [v5 convertRect:0 toView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

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

- (void)setColoringWithColorScheme:(id)scheme
{
  if (self->_colorScheme != scheme)
  {
    v4 = [scheme copy];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v4;

    MEMORY[0x2821F96F8](v4, colorScheme);
  }
}

- (void)setLinks:(id)links
{
  if (self->_links != links)
  {
    v4 = [links copy];
    links = self->_links;
    self->_links = v4;

    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView reloadData];
  }
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  width = size.width;
  v6 = [(SKUIQuicklinksViewController *)self view:coordinator];
  if (width <= 682.0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout setItemSize:{floor(width / v7), 44.0}];
  [collectionViewLayout setNumberOfColumns:v7];
  [(UICollectionView *)self->_collectionView frame];
  [(UICollectionView *)self->_collectionView setFrame:v8, v9, v10, ceilf([(SKUIQuicklinksViewController *)self _numberOfRows]* 44.0)];
  [(SKUIQuicklinksView *)self->_quicklinksView sizeToFit];
}

- (void)loadView
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIQuicklinksViewController loadView]";
}

- (void)setTitle:(id)title
{
  quicklinksView = self->_quicklinksView;
  titleCopy = title;
  [(SKUIQuicklinksView *)quicklinksView setTitle:titleCopy];
  v6.receiver = self;
  v6.super_class = SKUIQuicklinksViewController;
  [(SKUIQuicklinksViewController *)&v6 setTitle:titleCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SKUIQuicklinksViewController;
  [(SKUIQuicklinksViewController *)&v13 viewWillAppear:appear];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
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

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v9 + 1) + 8 * v8++) animated:0];
      }

      while (v6 != v8);
      v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = [(NSArray *)self->_links count];
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = result / 3;
    if (result != 3 * (result / 3))
    {
      ++v8;
    }

    return 3 * v8;
  }

  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:pathCopy];
  item = [pathCopy item];

  if (item >= [(NSArray *)self->_links count])
  {
    [v8 configureForLink:0];
  }

  else
  {
    v10 = [(NSArray *)self->_links objectAtIndex:item];
    [v8 configureForLink:v10];
  }

  backgroundColor = [viewCopy backgroundColor];

  [v8 setBackgroundColor:backgroundColor];
  [v8 setColoringWithColorScheme:self->_colorScheme];
  primaryTextColor = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
  if (!primaryTextColor)
  {
    primaryTextColor = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  [v8 setSeparatorColor:primaryTextColor];
  [v8 setSeparatorStyle:1];

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  if (item < [(NSArray *)self->_links count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(NSArray *)self->_links objectAtIndex:item];
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 quicklinksViewController:self didSelectLink:v8 atIndex:{objc_msgSend(pathCopy, "item")}];
    }
  }
}

- (int64_t)_numberOfRows
{
  v3 = [(NSArray *)self->_links count];
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  numberOfColumns = [collectionViewLayout numberOfColumns];

  if (v3 % numberOfColumns)
  {
    return v3 / numberOfColumns + 1;
  }

  else
  {
    return v3 / numberOfColumns;
  }
}

- (SKUIQuicklinksViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end