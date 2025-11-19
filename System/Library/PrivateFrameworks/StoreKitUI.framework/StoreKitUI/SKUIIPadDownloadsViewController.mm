@interface SKUIIPadDownloadsViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (SKUIDownloadsChildViewControllerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_deleteAction:(id)a3;
- (void)_reload;
- (void)_reloadLayout;
- (void)_reloadNavigationItem;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)reloadDownloadsAtIndexes:(id)a3;
- (void)setDownloads:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation SKUIIPadDownloadsViewController

- (void)setDownloads:(id)a3
{
  v3 = a3;
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIIPadDownloadsViewController *)v6 setDownloads:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_downloads != v5)
  {
    v14 = [MEMORY[0x277CBEB18] array];
    if (self->_editing)
    {
      v26 = v3;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [*(*(&v27 + 1) + 8 * i) item]);
            v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v20, "persistentIdentifier")}];
            [v14 addObject:v21];
          }

          v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v17);
      }

      v3 = v26;
    }

    objc_storeStrong(&self->_downloads, v3);
    [(SKUIIPadDownloadsViewController *)self _reload];
    if ([(NSArray *)self->_downloads count])
    {
      v22 = 0;
      while (1)
      {
        v23 = [(NSArray *)self->_downloads objectAtIndex:v22];
        v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v23, "persistentIdentifier")}];
        if (![v14 containsObject:v24])
        {
          goto LABEL_20;
        }

        v25 = [v23 isCancelable];

        if (v25)
        {
          break;
        }

LABEL_21:

        if (++v22 >= [(NSArray *)self->_downloads count])
        {
          goto LABEL_22;
        }
      }

      v24 = [MEMORY[0x277CCAA70] indexPathForItem:v22 inSection:0];
      [(UICollectionView *)self->_collectionView selectItemAtIndexPath:v24 animated:0 scrollPosition:0];
LABEL_20:

      goto LABEL_21;
    }

LABEL_22:
  }
}

- (void)reloadDownloadsAtIndexes:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIIPadDownloadsViewController *)v5 reloadDownloadsAtIndexes:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SKUIIPadDownloadsViewController_reloadDownloadsAtIndexes___block_invoke;
  v13[3] = &unk_2781FC790;
  v13[4] = self;
  [v4 enumerateIndexesUsingBlock:v13];
}

void __60__SKUIIPadDownloadsViewController_reloadDownloadsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 992);
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
  v12 = [v4 cellForItemAtIndexPath:v5];

  v6 = [*(*(a1 + 32) + 1000) objectAtIndex:a2];
  v7 = [v12 cellView];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1016));
  v9 = [WeakRetained childViewController:*(a1 + 32) artworkForDownload:v6];
  SKUIConfigureDownloadsCellView(v7, v6, v9, 1u, *(*(a1 + 32) + 1032));

  v10 = 0;
  if (*(*(a1 + 32) + 1024) == 1)
  {
    if ([v6 isCancelable])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v11 = [v12 cellView];
    [v11 setButtonType:0];
  }

  [v12 setCellState:v10];
}

- (void)loadView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIIPadDownloadsViewController *)v3 loadView:v4];
      }
    }
  }

  v11 = objc_alloc_init(SKUIDownloadsView);
  [(SKUIIPadDownloadsViewController *)self setView:v11];
  v12 = objc_alloc_init(SKUISearchCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v12 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v12 setMinimumLineSpacing:0.0];
  [(SKUISearchCollectionViewFlowLayout *)v12 setBackfills:0];
  v13 = objc_alloc(MEMORY[0x277D752A0]);
  [(SKUIDownloadsView *)v11 bounds];
  v14 = [v13 initWithFrame:v12 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v14;

  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"a"];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  v16 = self->_collectionView;
  v17 = [MEMORY[0x277D75348] whiteColor];
  [(UICollectionView *)v16 setBackgroundColor:v17];

  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:1];
  [(UICollectionView *)self->_collectionView setAllowsMultipleSelection:1];
  [(UICollectionView *)self->_collectionView setPrefetchingEnabled:0];
  [(SKUIDownloadsView *)v11 setContentView:self->_collectionView];
  [(SKUIIPadDownloadsViewController *)self _reload];
}

- (void)viewDidLayoutSubviews
{
  [(SKUIIPadDownloadsViewController *)self _reloadLayout];
  v3.receiver = self;
  v3.super_class = SKUIIPadDownloadsViewController;
  [(SKUIIPadDownloadsViewController *)&v3 viewDidLayoutSubviews];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  downloads = self->_downloads;
  v7 = a4;
  v8 = a3;
  v9 = -[NSArray objectAtIndex:](downloads, "objectAtIndex:", [v7 item]);
  v10 = [v8 dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:v7];

  v11 = [v10 cellView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained childViewController:self artworkForDownload:v9];
  SKUIConfigureDownloadsCellView(v11, v9, v13, 1u, self->_clientContext);

  if (self->_editing)
  {
    if ([v9 isCancelable])
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = [v10 cellView];
    [v15 setButtonType:0];
  }

  else
  {
    v14 = 0;
  }

  [v10 setCellState:v14];

  return v10;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIIPadDownloadsViewController *)v5 collectionView:v6 numberOfItemsInSection:v7, v8, v9, v10, v11, v12];
      }
    }
  }

  return [(NSArray *)self->_downloads count];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [a4 item]);
  v5 = [v4 isCancelable];

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = a4;
  if (self->_editing)
  {
    [(SKUIIPadDownloadsViewController *)self _reloadNavigationItem];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [v7 item]);
    [WeakRetained childViewController:self performActionForDownload:v6];
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v7 = a4;
  if (self->_editing)
  {
    [(SKUIIPadDownloadsViewController *)self _reloadNavigationItem];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [v7 item]);
    [WeakRetained childViewController:self performActionForDownload:v6];
  }
}

- (void)_deleteAction:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [*(*(&v12 + 1) + 8 * v9) item]);
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained childViewController:self removeDownloads:v4];

  self->_editing = 0;
  [(SKUIIPadDownloadsViewController *)self _reload];
}

- (void)_reload
{
  if ([(NSArray *)self->_downloads count])
  {
    [(UICollectionView *)self->_collectionView reloadData];
    v3 = [(SKUIIPadDownloadsViewController *)self view];
    [v3 setOverlayView:0];
  }

  else
  {
    if (!self->_noContentView)
    {
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"NO_CONTENT_TITLE" inTable:@"Download"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"NO_CONTENT_TITLE" inBundles:0 inTable:@"Download"];
      }
      v5 = ;
      v6 = self->_clientContext;
      if (v6)
      {
        [(SKUIClientContext *)v6 localizedStringForKey:@"NO_CONTENT_MESSAGE" inTable:@"Download"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"NO_CONTENT_MESSAGE" inBundles:0 inTable:@"Download"];
      }
      v7 = ;
      v8 = objc_alloc(MEMORY[0x277D75E78]);
      v9 = [v8 initWithFrame:v5 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      noContentView = self->_noContentView;
      self->_noContentView = v9;

      v11 = self->_noContentView;
      v12 = [MEMORY[0x277D75348] whiteColor];
      [(_UIContentUnavailableView *)v11 setBackgroundColor:v12];

      [(_UIContentUnavailableView *)self->_noContentView setMessage:v7];
    }

    v13 = [(SKUIIPadDownloadsViewController *)self view];
    [v13 setOverlayView:self->_noContentView];

    [(UICollectionView *)self->_collectionView reloadData];
  }

  [(SKUIIPadDownloadsViewController *)self _reloadNavigationItem];
}

- (void)_reloadLayout
{
  collectionView = self->_collectionView;
  v4 = SKUILayoutGuideInsets(self);
  SKUIScrollViewSetDefaultContentInsets(collectionView, v4, v5, v6, v7);
  v8 = [(SKUIIPadDownloadsViewController *)self view];
  [v8 frame];
  v10 = v9;

  v11 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v13 = v11;
  v12 = 2.0;
  if (v10 > 1000.0)
  {
    v12 = 3.0;
  }

  [v11 setItemSize:{v10 / v12, 100.0}];
  [v13 invalidateLayout];
}

- (void)_reloadNavigationItem
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [(SKUIIPadDownloadsViewController *)self navigationItem];
  [v3 setLeftItemsSupplementBackButton:1];

  if ([(NSArray *)self->_downloads count])
  {
    if (self->_editing)
    {
      v4 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
      v5 = [v4 count];

      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"CANCEL" inTable:@"Download"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"CANCEL" inBundles:0 inTable:@"Download"];
      }
      v7 = ;
      v10 = self->_clientContext;
      if (v5)
      {
        if (v10)
        {
          [(SKUIClientContext *)v10 localizedStringForKey:@"DELETE_FORMAT" inTable:@"Download"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"DELETE_FORMAT" inBundles:0 inTable:@"Download"];
        }
        v11 = ;
        v12 = MEMORY[0x277CCACA8];
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
        v14 = [v12 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v13];
      }

      else
      {
        if (v10)
        {
          [(SKUIClientContext *)v10 localizedStringForKey:@"DELETE" inTable:@"Download"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"DELETE" inBundles:0 inTable:@"Download"];
        }
        v14 = ;
      }

      v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v7 style:2 target:self action:sel__cancelAction_];
      v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v14 style:0 target:self action:sel__deleteAction_];
      v17 = [MEMORY[0x277D75348] systemRedColor];
      [v16 setTintColor:v17];

      [v16 setEnabled:v5 > 0];
      v18 = [(SKUIIPadDownloadsViewController *)self navigationItem];
      v21[0] = v15;
      v21[1] = v16;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      [v18 setLeftBarButtonItems:v19];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:self action:sel__editAction_];
      v8 = [(SKUIIPadDownloadsViewController *)self navigationItem];
      v22[0] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      [v8 setLeftBarButtonItems:v9];
    }
  }

  else
  {
    v20 = [(SKUIIPadDownloadsViewController *)self navigationItem];
    [v20 setLeftBarButtonItems:0];
  }
}

- (SKUIDownloadsChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end