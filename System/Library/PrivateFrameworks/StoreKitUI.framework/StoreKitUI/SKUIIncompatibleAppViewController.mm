@interface SKUIIncompatibleAppViewController
- (SKUIIncompatibleAppViewController)initWithIncompatibleItem:(id)item;
- (SKUIProductPageChildViewControllerDelegate)delegate;
- (id)_artworkContext;
- (void)_learnMoreAboutApp:(id)app;
- (void)_learnMoreAboutIPad:(id)pad;
- (void)_setArtworkWithImage:(id)image error:(id)error;
- (void)dealloc;
- (void)loadView;
- (void)reloadData;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUIIncompatibleAppViewController

- (SKUIIncompatibleAppViewController)initWithIncompatibleItem:(id)item
{
  itemCopy = item;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIncompatibleAppViewController initWithIncompatibleItem:];
  }

  v10.receiver = self;
  v10.super_class = SKUIIncompatibleAppViewController;
  v6 = [(SKUIIncompatibleAppViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_incompatibleItem, item);
    title = [(SKUIItem *)v7->_incompatibleItem title];
    [(SKUIIncompatibleAppViewController *)v7 setTitle:title];
  }

  return v7;
}

- (void)dealloc
{
  [(SKUIIncompatibleAppView *)self->_incompatibleView removeButtonTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIIncompatibleAppViewController;
  [(SKUIViewController *)&v3 dealloc];
}

- (void)reloadData
{
  if (!self->_iconImage && !self->_loadIconOperation)
  {
    _artworkContext = [(SKUIIncompatibleAppViewController *)self _artworkContext];
    v4 = [_artworkContext URLForItem:self->_incompatibleItem];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v4];
      loadIconOperation = self->_loadIconOperation;
      self->_loadIconOperation = v5;

      v7 = self->_loadIconOperation;
      v8 = [_artworkContext dataConsumerForItem:self->_incompatibleItem];
      [(SSVLoadURLOperation *)v7 setDataConsumer:v8];

      [(SSVLoadURLOperation *)self->_loadIconOperation setITunesStoreRequest:0];
      [(SSVLoadURLOperation *)self->_loadIconOperation setQueuePriority:4];
      objc_initWeak(&location, self);
      v9 = self->_loadIconOperation;
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __47__SKUIIncompatibleAppViewController_reloadData__block_invoke;
      v14 = &unk_2781FA1F8;
      objc_copyWeak(&v15, &location);
      [(SSVLoadURLOperation *)v9 setOutputBlock:&v11];
      v10 = [(SKUIIncompatibleAppViewController *)self operationQueue:v11];
      [v10 addOperation:self->_loadIconOperation];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __47__SKUIIncompatibleAppViewController_reloadData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SKUIIncompatibleAppViewController_reloadData__block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __47__SKUIIncompatibleAppViewController_reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setArtworkWithImage:*(a1 + 32) error:*(a1 + 40)];
}

- (void)loadView
{
  incompatibleView = self->_incompatibleView;
  if (!incompatibleView)
  {
    clientContext = [(SKUIViewController *)self clientContext];
    v5 = objc_alloc_init(SKUIIncompatibleAppView);
    v6 = self->_incompatibleView;
    self->_incompatibleView = v5;

    v7 = self->_incompatibleView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(SKUIIncompatibleAppView *)v7 setBackgroundColor:whiteColor];

    incompatibleItem = self->_incompatibleItem;
    if (!incompatibleItem)
    {
LABEL_29:

      incompatibleView = self->_incompatibleView;
      goto LABEL_30;
    }

    itemKind = [(SKUIItem *)incompatibleItem itemKind];
    v36 = clientContext;
    if (itemKind == 5)
    {
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"INCOMPATIBLE_MAC_APP_TITLE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"INCOMPATIBLE_MAC_APP_TITLE" inBundles:0 inTable:@"ProductPage"];
      }
      v37 = ;
      if (clientContext)
      {
        v12 = @"INCOMPATIBLE_MAC_APP_MESSAGE";
LABEL_14:
        v13 = [clientContext localizedStringForKey:v12 inTable:@"ProductPage"];
LABEL_18:
        v15 = v13;
        v16 = self->_incompatibleView;
        v17 = MEMORY[0x277CCACA8];
        title = [(SKUIIncompatibleAppViewController *)self title];
        v19 = [v17 stringWithValidatedFormat:v37 validFormatSpecifiers:@"%@" error:0, title];
        [(SKUIIncompatibleAppView *)v16 setTitle:v19];

        v20 = self->_incompatibleView;
        v21 = MEMORY[0x277CCACA8];
        title2 = [(SKUIIncompatibleAppViewController *)self title];
        v23 = [v21 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, title2];
        [(SKUIIncompatibleAppView *)v20 setMessage:v23];

        v24 = self->_incompatibleView;
        _artworkContext = [(SKUIIncompatibleAppViewController *)self _artworkContext];
        v26 = [_artworkContext placeholderImageForItem:self->_incompatibleItem];
        [(SKUIIncompatibleAppView *)v24 setIconImage:v26];

        clientContext = v36;
        v27 = v15;
        if (itemKind != 5)
        {
          v28 = self->_incompatibleView;
          if (v36)
          {
            [v36 localizedStringForKey:@"INCOMPATIBLE_LEARN_MORE_ABOUT_IPAD" inTable:@"ProductPage"];
          }

          else
          {
            [SKUIClientContext localizedStringForKey:@"INCOMPATIBLE_LEARN_MORE_ABOUT_IPAD" inBundles:0 inTable:@"ProductPage"];
          }
          v29 = ;
          v30 = [(SKUIIncompatibleAppView *)v28 addButtonWithTitle:v29];

          [v30 addTarget:self action:sel__learnMoreAboutIPad_ forControlEvents:64];
        }

        supportURLString = [(SKUIProductPageItem *)self->_incompatibleItem supportURLString];

        if (supportURLString)
        {
          v32 = self->_incompatibleView;
          if (v36)
          {
            [v36 localizedStringForKey:@"INCOMPATIBLE_LEARN_MORE_ABOUT_APP" inTable:@"ProductPage"];
          }

          else
          {
            [SKUIClientContext localizedStringForKey:@"INCOMPATIBLE_LEARN_MORE_ABOUT_APP" inBundles:0 inTable:@"ProductPage"];
          }
          v33 = ;
          v34 = [(SKUIIncompatibleAppView *)v32 addButtonWithTitle:v33];

          [v34 addTarget:self action:sel__learnMoreAboutApp_ forControlEvents:64];
        }

        goto LABEL_29;
      }

      v14 = @"INCOMPATIBLE_MAC_APP_MESSAGE";
    }

    else
    {
      clientContext2 = [(SKUIViewController *)self clientContext];
      v11 = clientContext2;
      if (clientContext2)
      {
        [clientContext2 localizedStringForKey:@"INCOMPATIBLE_IPAD_APP_TITLE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"INCOMPATIBLE_IPAD_APP_TITLE" inBundles:0 inTable:@"ProductPage"];
      }
      v37 = ;

      if (clientContext)
      {
        v12 = @"INCOMPATIBLE_IPAD_APP_MESSAGE";
        goto LABEL_14;
      }

      v14 = @"INCOMPATIBLE_IPAD_APP_MESSAGE";
    }

    v13 = [SKUIClientContext localizedStringForKey:v14 inBundles:0 inTable:@"ProductPage"];
    goto LABEL_18;
  }

LABEL_30:

  [(SKUIIncompatibleAppViewController *)self setView:incompatibleView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SKUIIncompatibleAppViewController *)self reloadData];
  v5.receiver = self;
  v5.super_class = SKUIIncompatibleAppViewController;
  [(SKUIViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)_learnMoreAboutApp:(id)app
{
  supportURLString = [(SKUIProductPageItem *)self->_incompatibleItem supportURLString];
  if (supportURLString)
  {
    v6 = supportURLString;
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:supportURLString];
    v5 = v4;
    if (v4)
    {
      SKUIMetricsOpenURL(v4);
    }

    supportURLString = v6;
  }
}

- (void)_learnMoreAboutIPad:(id)pad
{
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"http://apple.com/ipad"];
  SKUIMetricsOpenURL(v3);
}

- (id)_artworkContext
{
  artworkContext = self->_artworkContext;
  if (!artworkContext)
  {
    v4 = [SKUIItemArtworkContext lockupContextWithSize:3];
    v5 = self->_artworkContext;
    self->_artworkContext = v4;

    artworkContext = self->_artworkContext;
  }

  return artworkContext;
}

- (void)_setArtworkWithImage:(id)image error:(id)error
{
  imageCopy = image;
  if (imageCopy)
  {
    objc_storeStrong(&self->_iconImage, image);
    [(SKUIIncompatibleAppView *)self->_incompatibleView setIconImage:self->_iconImage];
  }

  loadIconOperation = self->_loadIconOperation;
  self->_loadIconOperation = 0;
}

- (SKUIProductPageChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithIncompatibleItem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIncompatibleAppViewController initWithIncompatibleItem:]";
}

@end