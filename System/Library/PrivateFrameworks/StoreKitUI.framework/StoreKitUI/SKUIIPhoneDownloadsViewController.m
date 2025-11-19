@interface SKUIIPhoneDownloadsViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (SKUIDownloadsChildViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_reload;
- (void)loadView;
- (void)reloadDownloadsAtIndexes:(id)a3;
- (void)setDownloads:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation SKUIIPhoneDownloadsViewController

- (void)reloadDownloadsAtIndexes:(id)a3
{
  downloads = self->_downloads;
  v5 = a3;
  v6 = [(NSArray *)downloads copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SKUIIPhoneDownloadsViewController_reloadDownloadsAtIndexes___block_invoke;
  v8[3] = &unk_2781FA850;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:v8];
}

void __62__SKUIIPhoneDownloadsViewController_reloadDownloadsAtIndexes___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(*(a1 + 32) + 992);
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
  v10 = [v4 cellForRowAtIndexPath:v5];

  v6 = 0;
  if ([*(a1 + 40) count] > a2)
  {
    v6 = [*(a1 + 40) objectAtIndex:a2];
  }

  v7 = [v10 cellView];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1008));
  v9 = [WeakRetained childViewController:*(a1 + 32) artworkForDownload:v6];
  SKUIConfigureDownloadsCellView(v7, v6, v9, 0, *(*(a1 + 32) + 1024));
}

- (void)setDownloads:(id)a3
{
  v5 = a3;
  if (self->_downloads != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_downloads, a3);
    [(SKUIIPhoneDownloadsViewController *)self _reload];
    v5 = v6;
  }
}

- (void)loadView
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPhoneDownloadsViewController loadView]";
}

- (void)viewDidLayoutSubviews
{
  tableView = self->_tableView;
  v4 = SKUILayoutGuideInsets(self);
  SKUIScrollViewSetDefaultContentInsets(tableView, v4, v5, v6, v7);
  v8.receiver = self;
  v8.super_class = SKUIIPhoneDownloadsViewController;
  [(SKUIIPhoneDownloadsViewController *)&v8 viewDidLayoutSubviews];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [v7 row]);
  [WeakRetained childViewController:self performActionForDownload:v6];

  [(UITableView *)self->_tableView deselectRowAtIndexPath:v7 animated:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  downloads = self->_downloads;
  v6 = a4;
  v7 = -[NSArray objectAtIndex:](downloads, "objectAtIndex:", [v6 item]);
  v8 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"a" forIndexPath:v6];

  v9 = [v8 cellView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [WeakRetained childViewController:self artworkForDownload:v7];
  SKUIConfigureDownloadsCellView(v9, v7, v11, 0, self->_clientContext);

  [v8 setSelectionStyle:0];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPhoneDownloadsViewController tableView:numberOfRowsInSection:];
  }

  return [(NSArray *)self->_downloads count];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  if (v6 >= [(NSArray *)self->_downloads count])
  {
    v8 = 0;
  }

  else
  {
    v7 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [v5 row]);
    v8 = [v7 isCancelable];
  }

  return v8;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v6 = a5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    downloads = self->_downloads;
    v9 = [v6 row];

    v10 = [(NSArray *)downloads objectAtIndex:v9];
    v12[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [WeakRetained childViewController:self removeDownloads:v11];
  }
}

- (void)_reload
{
  if ([(NSArray *)self->_downloads count])
  {
    [(UITableView *)self->_tableView reloadData];
    v3 = [(SKUIIPhoneDownloadsViewController *)self view];
    v14 = v3;
    v4 = 0;
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
      v6 = ;
      v7 = self->_clientContext;
      if (v7)
      {
        [(SKUIClientContext *)v7 localizedStringForKey:@"NO_CONTENT_MESSAGE" inTable:@"Download"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"NO_CONTENT_MESSAGE" inBundles:0 inTable:@"Download"];
      }
      v8 = ;
      v9 = objc_alloc(MEMORY[0x277D75E78]);
      v10 = [v9 initWithFrame:v6 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      noContentView = self->_noContentView;
      self->_noContentView = v10;

      v12 = self->_noContentView;
      v13 = [MEMORY[0x277D75348] systemBackgroundColor];
      [(_UIContentUnavailableView *)v12 setBackgroundColor:v13];

      [(_UIContentUnavailableView *)self->_noContentView setMessage:v8];
    }

    [(UITableView *)self->_tableView reloadData];
    v3 = [(SKUIIPhoneDownloadsViewController *)self view];
    v4 = self->_noContentView;
    v14 = v3;
  }

  [v3 setOverlayView:v4];
}

- (SKUIDownloadsChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:numberOfRowsInSection:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPhoneDownloadsViewController tableView:numberOfRowsInSection:]";
}

@end