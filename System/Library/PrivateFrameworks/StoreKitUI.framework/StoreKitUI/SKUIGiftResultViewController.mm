@interface SKUIGiftResultViewController
- (SKUIGiftResultViewController)initWithGift:(id)gift configuration:(id)configuration;
- (id)_itemImage;
- (id)_itemView;
- (void)_giftAgainAction:(id)action;
- (void)_setItemImage:(id)image error:(id)error;
- (void)dealloc;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUIGiftResultViewController

- (SKUIGiftResultViewController)initWithGift:(id)gift configuration:(id)configuration
{
  giftCopy = gift;
  configurationCopy = configuration;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftResultViewController initWithGift:configuration:];
  }

  v13.receiver = self;
  v13.super_class = SKUIGiftResultViewController;
  v8 = [(SKUIGiftStepViewController *)&v13 initWithGift:giftCopy configuration:configurationCopy];
  if (v8)
  {
    clientContext = [configurationCopy clientContext];
    v10 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_RESULT_TITLE" inTable:@"Gifting"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFTING_RESULT_TITLE" inBundles:0 inTable:@"Gifting"];
    }
    v11 = ;
    [(SKUIGiftResultViewController *)v8 setTitle:v11];
  }

  return v8;
}

- (void)dealloc
{
  [(UIButton *)self->_giftAgainButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIGiftResultViewController;
  [(SKUIGiftResultViewController *)&v3 dealloc];
}

- (void)loadView
{
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  giftConfiguration = [(SKUIGiftStepViewController *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];

  v5 = objc_alloc_init(SKUIGiftResultView);
  _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
  [(SKUIGiftResultView *)v5 setBackgroundColor:_systemBackgroundColor];

  gift = [(SKUIGiftStepViewController *)self gift];
  item = [gift item];

  if (item)
  {
    _itemView = [(SKUIGiftResultViewController *)self _itemView];
    [(SKUIGiftResultView *)v5 setItemView:_itemView];

    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_RESULT_ITEM_MESSAGE" inTable:@"Gifting"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFTING_RESULT_ITEM_MESSAGE" inBundles:0 inTable:@"Gifting"];
    }
    v11 = ;
    [(SKUIGiftResultView *)v5 setTitle:v11];
  }

  else
  {
    v10 = [MEMORY[0x277D755B8] imageNamed:@"RedemptionCardStack" inBundle:v21];
    [(SKUIGiftResultView *)v5 setImage:v10];

    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_RESULT_AMOUNT_MESSAGE" inTable:@"Gifting"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFTING_RESULT_AMOUNT_MESSAGE" inBundles:0 inTable:@"Gifting"];
    }
    v11 = ;
    v12 = MEMORY[0x277CCACA8];
    gift2 = [(SKUIGiftStepViewController *)self gift];
    totalGiftAmountString = [gift2 totalGiftAmountString];
    v15 = [v12 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, totalGiftAmountString];
    [(SKUIGiftResultView *)v5 setTitle:v15];
  }

  giftAgainButton = [(SKUIGiftResultView *)v5 giftAgainButton];
  [giftAgainButton addTarget:self action:sel__giftAgainAction_ forControlEvents:64];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_RESULT_SEND_ANOTHER_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"GIFTING_RESULT_SEND_ANOTHER_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v17 = ;
  [giftAgainButton setTitle:v17 forState:0];

  [giftAgainButton sizeToFit];
  [(SKUIGiftResultViewController *)self setView:v5];
  navigationItem = [(SKUIGiftResultViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  v19 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v19 setAction:sel__doneButtonAction_];
  [v19 setStyle:2];
  [v19 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_DONE_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"GIFTING_DONE_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v20 = ;
  [v19 setTitle:v20];

  [navigationItem setRightBarButtonItem:v19];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  _itemView = [(SKUIGiftResultViewController *)self _itemView];
  artworkContext = [_itemView artworkContext];

  if (artworkContext && !self->_itemImage)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__SKUIGiftResultViewController_viewWillAppear___block_invoke;
    v8[3] = &unk_2781FA1F8;
    objc_copyWeak(&v9, &location);
    [(SKUIGiftStepViewController *)self loadItemArtworkWithArtworkContext:artworkContext completionBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v7.receiver = self;
  v7.super_class = SKUIGiftResultViewController;
  [(SKUIGiftResultViewController *)&v7 viewWillAppear:appearCopy];
}

void __47__SKUIGiftResultViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setItemImage:v6 error:v5];
}

- (void)_giftAgainAction:(id)action
{
  v12[1] = *MEMORY[0x277D85DE8];
  gift = [(SKUIGiftStepViewController *)self gift];
  v5 = [gift copy];

  [v5 reset];
  v6 = [SKUIGiftComposeViewController alloc];
  giftConfiguration = [(SKUIGiftStepViewController *)self giftConfiguration];
  v8 = [(SKUIGiftComposeViewController *)v6 initWithGift:v5 configuration:giftConfiguration];

  operationQueue = [(SKUIGiftStepViewController *)self operationQueue];
  [(SKUIGiftStepViewController *)v8 setOperationQueue:operationQueue];

  navigationController = [(SKUIGiftResultViewController *)self navigationController];
  v12[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [navigationController setViewControllers:v11 animated:1];
}

- (id)_itemImage
{
  v3 = self->_itemImage;
  if (!v3)
  {
    artworkContext = [(SKUIGiftItemView *)self->_itemView artworkContext];
    gift = [(SKUIGiftStepViewController *)self gift];
    item = [gift item];
    v3 = [artworkContext placeholderImageForItem:item];
  }

  return v3;
}

- (id)_itemView
{
  gift = [(SKUIGiftStepViewController *)self gift];
  item = [gift item];

  if (item && !self->_itemView)
  {
    v5 = [SKUIGiftItemView alloc];
    giftConfiguration = [(SKUIGiftStepViewController *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];
    v8 = [(SKUIGiftItemView *)v5 initWithStyle:2 item:item clientContext:clientContext];
    itemView = self->_itemView;
    self->_itemView = v8;

    v10 = self->_itemView;
    artistName = [item artistName];
    [(SKUIGiftItemView *)v10 setArtistName:artistName];

    v12 = self->_itemView;
    categoryName = [item categoryName];
    [(SKUIGiftItemView *)v12 setCategoryName:categoryName];

    v14 = self->_itemView;
    _itemImage = [(SKUIGiftResultViewController *)self _itemImage];
    [(SKUIGiftItemView *)v14 setItemImage:_itemImage];

    -[SKUIGiftItemView setNumberOfUserRatings:](self->_itemView, "setNumberOfUserRatings:", [item numberOfUserRatings]);
    v16 = self->_itemView;
    primaryItemOffer = [item primaryItemOffer];
    buttonText = [primaryItemOffer buttonText];
    [(SKUIGiftItemView *)v16 setPrice:buttonText];

    v19 = self->_itemView;
    title = [item title];
    [(SKUIGiftItemView *)v19 setTitle:title];

    v21 = self->_itemView;
    [item userRating];
    *&v23 = v22 / 5.0;
    [(SKUIGiftItemView *)v21 setUserRating:v23];
    [(SKUIGiftItemView *)self->_itemView sizeToFit];
  }

  v24 = self->_itemView;
  v25 = v24;

  return v24;
}

- (void)_setItemImage:(id)image error:(id)error
{
  imageCopy = image;
  if (imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_itemImage, image);
    [(SKUIGiftItemView *)self->_itemView setItemImage:self->_itemImage];
    imageCopy = v7;
  }
}

- (void)initWithGift:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftResultViewController initWithGift:configuration:]";
}

@end