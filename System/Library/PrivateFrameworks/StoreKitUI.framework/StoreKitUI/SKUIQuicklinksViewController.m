@interface SKUIQuicklinksViewController
- (CGRect)frameForLinkAtIndex:(int64_t)a3;
- (SKUIQuicklinksViewControllerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)_numberOfRows;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setLinks:(id)a3;
- (void)setTitle:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (CGRect)frameForLinkAtIndex:(int64_t)a3
{
  collectionView = self->_collectionView;
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
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

- (void)setColoringWithColorScheme:(id)a3
{
  if (self->_colorScheme != a3)
  {
    v4 = [a3 copy];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v4;

    MEMORY[0x2821F96F8](v4, colorScheme);
  }
}

- (void)setLinks:(id)a3
{
  if (self->_links != a3)
  {
    v4 = [a3 copy];
    links = self->_links;
    self->_links = v4;

    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView reloadData];
  }
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  width = a3.width;
  v6 = [(SKUIQuicklinksViewController *)self view:a4];
  if (width <= 682.0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  v11 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [v11 setItemSize:{floor(width / v7), 44.0}];
  [v11 setNumberOfColumns:v7];
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

- (void)setTitle:(id)a3
{
  quicklinksView = self->_quicklinksView;
  v5 = a3;
  [(SKUIQuicklinksView *)quicklinksView setTitle:v5];
  v6.receiver = self;
  v6.super_class = SKUIQuicklinksViewController;
  [(SKUIQuicklinksViewController *)&v6 setTitle:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SKUIQuicklinksViewController;
  [(SKUIQuicklinksViewController *)&v13 viewWillAppear:a3];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v9 + 1) + 8 * v8++) animated:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  result = [(NSArray *)self->_links count];
  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:v6];
  v9 = [v6 item];

  if (v9 >= [(NSArray *)self->_links count])
  {
    [v8 configureForLink:0];
  }

  else
  {
    v10 = [(NSArray *)self->_links objectAtIndex:v9];
    [v8 configureForLink:v10];
  }

  v11 = [v7 backgroundColor];

  [v8 setBackgroundColor:v11];
  [v8 setColoringWithColorScheme:self->_colorScheme];
  v12 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
  if (!v12)
  {
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  [v8 setSeparatorColor:v12];
  [v8 setSeparatorStyle:1];

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v10 = a4;
  v5 = [v10 item];
  if (v5 < [(NSArray *)self->_links count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(NSArray *)self->_links objectAtIndex:v5];
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 quicklinksViewController:self didSelectLink:v8 atIndex:{objc_msgSend(v10, "item")}];
    }
  }
}

- (int64_t)_numberOfRows
{
  v3 = [(NSArray *)self->_links count];
  v4 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v5 = [v4 numberOfColumns];

  if (v3 % v5)
  {
    return v3 / v5 + 1;
  }

  else
  {
    return v3 / v5;
  }
}

- (SKUIQuicklinksViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end