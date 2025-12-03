@interface SKUIRedeemNativeResultsViewController
+ (BOOL)canShowResultsForRedeem:(id)redeem;
- (SKUIRedeemNativeResultsViewController)initWithRedeem:(id)redeem;
- (double)_tableWidth;
- (id)_anotherButtonSection;
- (id)_emptySection;
- (id)_extendedMessageViewSection;
- (id)_headerImageViewSection;
- (id)_item;
- (id)_itemView;
- (id)_itemViewSection;
- (id)_linksSection;
- (id)_messageViewSection;
- (id)_passbookLearnMoreSection;
- (id)_resultImageViewSection;
- (void)_extendedMessageAction:(id)action;
- (void)_openAction:(id)action;
- (void)_passbookLockupAction:(id)action;
- (void)_redeemAnotherAction:(id)action;
- (void)_reloadResultViewMessage;
- (void)_reloadSections;
- (void)_setItemImage:(id)image;
- (void)dealloc;
- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed;
- (void)loadView;
- (void)redeemResultsView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUIRedeemNativeResultsViewController

+ (BOOL)canShowResultsForRedeem:(id)redeem
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIRedeemNativeResultsViewController canShowResultsForRedeem:];
  }

  return 1;
}

- (SKUIRedeemNativeResultsViewController)initWithRedeem:(id)redeem
{
  redeemCopy = redeem;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemNativeResultsViewController initWithRedeem:];
  }

  v21.receiver = self;
  v21.super_class = SKUIRedeemNativeResultsViewController;
  v5 = [(SKUIRedeemResultsViewController *)&v21 initWithRedeem:redeemCopy];
  if (v5)
  {
    items = [redeemCopy items];
    v7 = [items count];

    if (v7)
    {
      v8 = +[SKUIItemStateCenter defaultCenter];
      itemStateCenter = v5->_itemStateCenter;
      v5->_itemStateCenter = v8;

      [(SKUIItemStateCenter *)v5->_itemStateCenter addObserver:v5];
      downloads = [redeemCopy downloads];

      if (downloads)
      {
        downloads2 = [redeemCopy downloads];
        if (downloads2)
        {
          v12 = downloads2;
        }

        else
        {
          v12 = MEMORY[0x277CBEBF8];
        }

        v13 = [MEMORY[0x277CBEB98] setWithArray:v12];
        v14 = MEMORY[0x277CCABB0];
        items2 = [redeemCopy items];
        firstObject = [items2 firstObject];
        v17 = [v14 numberWithLongLong:{objc_msgSend(firstObject, "itemIdentifier")}];

        if (v17)
        {
          [(SKUIItemStateCenter *)v5->_itemStateCenter addRelationshipForParentAdamId:v17 withChildAdamIds:v13];
        }
      }
    }

    v18 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v5->_operationQueue;
    v5->_operationQueue = v18;
  }

  return v5;
}

- (void)dealloc
{
  [(UIButton *)self->_anotherButton removeTarget:self action:0 forControlEvents:64];
  [(SKUITextBoxView *)self->_extendedMessageView removeTarget:self action:0 forControlEvents:64];
  itemOfferButton = [(SKUIGiftItemView *)self->_itemView itemOfferButton];
  [itemOfferButton removeTarget:self action:0 forControlEvents:64];

  itemStateCenter = self->_itemStateCenter;
  v5 = MEMORY[0x277CCABB0];
  redeem = [(SKUIRedeemResultsViewController *)self redeem];
  items = [redeem items];
  firstObject = [items firstObject];
  v9 = [v5 numberWithLongLong:{objc_msgSend(firstObject, "itemIdentifier")}];
  [(SKUIItemStateCenter *)itemStateCenter removeRelationshipsForParentAdamId:v9];

  [(SKUIItemStateCenter *)self->_itemStateCenter removeObserver:self];
  [(SKUIRedeemITunesPassLockup *)self->_passbookLockup removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v10.receiver = self;
  v10.super_class = SKUIRedeemNativeResultsViewController;
  [(SKUIRedeemNativeResultsViewController *)&v10 dealloc];
}

- (void)loadView
{
  v6 = objc_alloc_init(SKUIRedeemResultsView);
  [(SKUIRedeemResultsView *)v6 setResultsDelegate:self];
  [(SKUIRedeemResultsView *)v6 setContentInsetAdjustmentBehavior:101];
  [(SKUIRedeemNativeResultsViewController *)self setView:v6];
  [(SKUIRedeemNativeResultsViewController *)self _reloadSections];
  clientContext = [(SKUIRedeemStepViewController *)self clientContext];
  v4 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"REDEEM_VIEW_TITLE" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_VIEW_TITLE" inBundles:0 inTable:@"Redeem"];
  }
  v5 = ;
  [(SKUIRedeemNativeResultsViewController *)self setTitle:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  redeem = [(SKUIRedeemResultsViewController *)self redeem];
  headerArtworkProvider = [redeem headerArtworkProvider];

  if (headerArtworkProvider)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    if (v8 == 2.0)
    {
      [headerArtworkProvider largestArtwork];
    }

    else
    {
      [headerArtworkProvider smallestArtwork];
    }
    v9 = ;

    v10 = objc_alloc(MEMORY[0x277D69CD8]);
    v11 = [v9 URL];
    v12 = [v10 initWithURL:v11];

    v13 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    [v12 setDataConsumer:v13];

    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __56__SKUIRedeemNativeResultsViewController_viewWillAppear___block_invoke;
    v26[3] = &unk_2781FA1F8;
    objc_copyWeak(&v27, &location);
    [v12 setOutputBlock:v26];
    [(NSOperationQueue *)self->_operationQueue addOperation:v12];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  artworkContext = [(SKUIGiftItemView *)self->_itemView artworkContext];
  _item = [(SKUIRedeemNativeResultsViewController *)self _item];
  v16 = [artworkContext URLForItem:_item];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277D69CD8]);
    _item2 = [(SKUIRedeemNativeResultsViewController *)self _item];
    v19 = [artworkContext URLForItem:_item2];
    v20 = [v17 initWithURL:v19];

    _item3 = [(SKUIRedeemNativeResultsViewController *)self _item];
    v22 = [artworkContext dataConsumerForItem:_item3];
    [v20 setDataConsumer:v22];

    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __56__SKUIRedeemNativeResultsViewController_viewWillAppear___block_invoke_3;
    v24[3] = &unk_2781FA1F8;
    objc_copyWeak(&v25, &location);
    [v20 setOutputBlock:v24];
    [(NSOperationQueue *)self->_operationQueue addOperation:v20];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v23.receiver = self;
  v23.super_class = SKUIRedeemNativeResultsViewController;
  [(SKUIRedeemNativeResultsViewController *)&v23 viewWillAppear:appearCopy];
}

void __56__SKUIRedeemNativeResultsViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SKUIRedeemNativeResultsViewController_viewWillAppear___block_invoke_2;
  v5[3] = &unk_2781F8230;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __56__SKUIRedeemNativeResultsViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _setHeaderImage:*(a1 + 32)];
  }
}

void __56__SKUIRedeemNativeResultsViewController_viewWillAppear___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SKUIRedeemNativeResultsViewController_viewWillAppear___block_invoke_4;
  v5[3] = &unk_2781F8230;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __56__SKUIRedeemNativeResultsViewController_viewWillAppear___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _setItemImage:*(a1 + 32)];
  }
}

- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed
{
  changedCopy = changed;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SKUIRedeemNativeResultsViewController_itemStateCenter_itemStatesChanged___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __75__SKUIRedeemNativeResultsViewController_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _item];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 itemIdentifier];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 itemIdentifier];
          v12 = [v11 longLongValue];

          if (v12 == v4)
          {
            v13 = [*(a1 + 32) _itemView];
            [v13 setItemState:v10 animated:1];

            [*(a1 + 32) _reloadResultViewMessage];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (void)redeemResultsView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  redeem = [(SKUIRedeemResultsViewController *)self redeem];
  links = [redeem links];

  if ([links count])
  {
    section = [pathCopy section];
    view = [(SKUIRedeemNativeResultsViewController *)self view];
    sections = [view sections];
    v10 = [sections count] - 2;

    if (section == v10)
    {
      v11 = [links objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      v12 = [v11 URL];

      if (v12)
      {
        SKUIMetricsOpenURL(v12);
      }
    }
  }
}

- (void)_extendedMessageAction:(id)action
{
  if (!self->_extendedMessageIsExpanded)
  {
    [(SKUITextBoxView *)self->_extendedMessageView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [(SKUITextLayout *)self->_extendedMessageTextLayout textSize];
    v11 = v10;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v14 = &kSKUITextBoxLayoutTextBottomPaddingIPad;
    }

    else
    {
      v14 = &kSKUITextBoxLayoutTextBottomPaddingIPhone;
    }

    [(SKUITextBoxView *)self->_extendedMessageView setFrame:v5, v7, v9, v11 + *v14];
    [(SKUITextBoxView *)self->_extendedMessageView setNumberOfVisibleLines:0];
    self->_extendedMessageIsExpanded = 1;
    view = [(SKUIRedeemNativeResultsViewController *)self view];
    [view reloadData];
  }
}

- (void)_openAction:(id)action
{
  v25[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  redeem = [(SKUIRedeemResultsViewController *)self redeem];
  items = [redeem items];
  v7 = [items objectAtIndex:0];

  v8 = -[SKUIItemStateCenter stateForItemWithIdentifier:](self->_itemStateCenter, "stateForItemWithIdentifier:", [v7 itemIdentifier]);
  LOBYTE(redeem) = [v8 state];

  if ((redeem & 4) != 0)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__98;
    v23 = __Block_byref_object_dispose__98;
    bundleIdentifier = [v7 bundleIdentifier];
    v9 = v20[5];
    if (v9 || (v10 = dispatch_semaphore_create(0), v11 = objc_alloc_init(MEMORY[0x277D69C68]), [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "itemIdentifier")}], v12 = objc_claimAutoreleasedReturnValue(), v25[0] = v12, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v25, 1), v13 = objc_claimAutoreleasedReturnValue(), v16[0] = MEMORY[0x277D85DD0], v16[1] = 3221225472, v16[2] = __53__SKUIRedeemNativeResultsViewController__openAction___block_invoke, v16[3] = &unk_2781FB1F0, v18 = &v19, v14 = v10, v17 = v14, objc_msgSend(v11, "getLibraryItemsForITunesStoreItemIdentifiers:completionBlock:", v13, v16), v13, v12, v11, dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL), v17, v14, (v9 = v20[5]) != 0))
    {
      v15 = v9;
      SKUIMetricsLaunchApplicationWithIdentifier(v15, 0);
      CFRelease(v15);
    }

    _Block_object_dispose(&v19, 8);
  }
}

intptr_t __53__SKUIRedeemNativeResultsViewController__openAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = [v3 valueForProperty:*MEMORY[0x277D6A5B0]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

- (void)_passbookLockupAction:(id)action
{
  v8 = objc_alloc_init(SKUIRedeemITunesPassLearnMoreViewController);
  clientContext = [(SKUIRedeemStepViewController *)self clientContext];
  [(SKUIRedeemStepViewController *)v8 setClientContext:clientContext];

  configuration = [(SKUIRedeemStepViewController *)self configuration];
  [(SKUIRedeemStepViewController *)v8 setConfiguration:configuration];

  operationQueue = [(SKUIRedeemNativeResultsViewController *)self operationQueue];
  [(SKUIRedeemStepViewController *)v8 setOperationQueue:operationQueue];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(SKUIRedeemNativeResultsViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_redeemAnotherAction:(id)action
{
  v14 = *MEMORY[0x277D85DE8];
  navigationController = [(SKUIRedeemNativeResultsViewController *)self navigationController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v6 = shouldLog | 2;
    }

    else
    {
      v6 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      v9 = v8;
      *v13 = 138543618;
      *&v13[4] = v8;
      *&v13[12] = 2114;
      *&v13[14] = objc_opt_class();
      v10 = *&v13[14];
      LODWORD(v12) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_12:

        goto LABEL_13;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, v13, v12, *v13, *&v13[16]}];
      free(v11);
      SSFileLog();
    }

    goto LABEL_12;
  }

  [navigationController redeemAgainAnimated:1];
LABEL_13:
}

- (id)_anotherButtonSection
{
  if (!self->_anotherButton)
  {
    v3 = [MEMORY[0x277D75220] buttonWithType:1];
    anotherButton = self->_anotherButton;
    self->_anotherButton = v3;

    [(UIButton *)self->_anotherButton addTarget:self action:sel__redeemAnotherAction_ forControlEvents:64];
    [(UIButton *)self->_anotherButton setAutoresizingMask:5];
    [(UIButton *)self->_anotherButton setContentHorizontalAlignment:0];
    [(UIButton *)self->_anotherButton setContentEdgeInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    v5 = self->_anotherButton;
    clientContext = [(SKUIRedeemStepViewController *)self clientContext];
    v7 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"REDEEM_SUCCESS_REDEEM_AGAIN" inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REDEEM_SUCCESS_REDEEM_AGAIN" inBundles:0 inTable:@"Redeem"];
    }
    v8 = ;
    [(UIButton *)v5 setTitle:v8 forState:0];

    titleLabel = [(UIButton *)self->_anotherButton titleLabel];
    v10 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel setFont:v10];

    [(UIButton *)self->_anotherButton frame];
    v12 = v11;
    v14 = v13;
    v15 = self->_anotherButton;
    [(SKUIRedeemNativeResultsViewController *)self _tableWidth];
    [(UIButton *)v15 sizeThatFits:?];
    [(UIButton *)self->_anotherButton setFrame:v12, v14, v16, v17];
  }

  v18 = [[SKUIRedeemResultSimpleTableViewSection alloc] initWithView:self->_anotherButton];
  [(SKUIRedeemNativeResultsViewController *)self _tableWidth];
  v20 = v19;
  [(UIButton *)self->_anotherButton bounds];
  v22 = (v20 - v21) * 0.5;
  [(SKUIRedeemResultSimpleTableViewSection *)v18 setContentInsets:-2.0, floorf(v22), -2.0, 0.0];

  return v18;
}

- (id)_emptySection
{
  v2 = [SKUIRedeemResultSimpleTableViewSection alloc];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v5 = [(SKUIRedeemResultSimpleTableViewSection *)v2 initWithView:v4];

  return v5;
}

- (id)_extendedMessageViewSection
{
  redeem = [(SKUIRedeemResultsViewController *)self redeem];
  message = [redeem message];

  if (message)
  {
    if (!self->_extendedMessageView)
    {
      v5 = objc_alloc_init(SKUITextBoxView);
      extendedMessageView = self->_extendedMessageView;
      self->_extendedMessageView = v5;

      [(SKUITextBoxView *)self->_extendedMessageView addTarget:self action:sel__extendedMessageAction_ forControlEvents:64];
      [(SKUITextBoxView *)self->_extendedMessageView setContentInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
      v7 = objc_alloc_init(SKUITextLayoutRequest);
      [(SKUITextLayoutRequest *)v7 setNumberOfLines:3];
      [(SKUITextLayoutRequest *)v7 setFontSize:14.0];
      redeem2 = [(SKUIRedeemResultsViewController *)self redeem];
      message2 = [redeem2 message];
      [(SKUITextLayoutRequest *)v7 setText:message2];

      [(SKUIRedeemNativeResultsViewController *)self _tableWidth];
      v11 = v10;
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v14 = 60.0;
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v14 = 30.0;
      }

      [(SKUITextLayoutRequest *)v7 setWidth:v11 - v14];
      v15 = [[SKUITextLayout alloc] initWithLayoutRequest:v7];
      extendedMessageTextLayout = self->_extendedMessageTextLayout;
      self->_extendedMessageTextLayout = v15;

      [(SKUITextBoxView *)self->_extendedMessageView setFixedWidthTextFrame:[(SKUITextLayout *)self->_extendedMessageTextLayout textFrame]];
      [(SKUITextBoxView *)self->_extendedMessageView setNumberOfVisibleLines:3];
      [(SKUITextBoxView *)self->_extendedMessageView frame];
      v18 = v17;
      v20 = v19;
      if ([(SKUITextLayout *)self->_extendedMessageTextLayout requiresTruncation])
      {
        v21 = self->_extendedMessageView;
        clientContext = [(SKUIRedeemStepViewController *)self clientContext];
        v23 = clientContext;
        if (clientContext)
        {
          [clientContext localizedStringForKey:@"MORE_BUTTON"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
        }
        v27 = ;
        [(SKUITextBoxView *)v21 setMoreButtonTitle:v27];

        [(SKUITextLayout *)self->_extendedMessageTextLayout truncatedSize];
        v26 = v28;
      }

      else
      {
        [(SKUITextLayout *)self->_extendedMessageTextLayout textSize];
        v26 = v25;
        self->_extendedMessageIsExpanded = 1;
      }

      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v31 = &kSKUITextBoxLayoutTextBottomPaddingIPad;
      }

      else
      {
        v31 = &kSKUITextBoxLayoutTextBottomPaddingIPhone;
      }

      v32 = v26 + *v31;
      [(SKUITextLayoutRequest *)v7 width];
      [(SKUITextBoxView *)self->_extendedMessageView setFrame:v18, v20, v33, v32];
    }

    v24 = [[SKUIRedeemResultSimpleTableViewSection alloc] initWithView:self->_extendedMessageView];
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

    if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v36 = 30.0;
    }

    else
    {
      v36 = 15.0;
    }

    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v39 = 30.0;
    }

    else
    {
      v39 = 15.0;
    }

    [(SKUIRedeemResultSimpleTableViewSection *)v24 setContentInsets:-5.0, v36, -3.0, v39];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_headerImageViewSection
{
  redeem = [(SKUIRedeemResultsViewController *)self redeem];
  headerArtworkProvider = [redeem headerArtworkProvider];

  if (headerArtworkProvider)
  {
    if (!self->_headerImageView)
    {
      smallestArtwork = [headerArtworkProvider smallestArtwork];
      v6 = objc_alloc(MEMORY[0x277D755E8]);
      [(SKUIRedeemNativeResultsViewController *)self _tableWidth];
      v8 = v7;
      [smallestArtwork size];
      v10 = [v6 initWithFrame:{0.0, 0.0, v8, v9}];
      headerImageView = self->_headerImageView;
      self->_headerImageView = v10;

      [(UIImageView *)self->_headerImageView setContentMode:4];
    }

    v12 = [[SKUIRedeemResultSimpleTableViewSection alloc] initWithView:self->_headerImageView];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_itemViewSection
{
  _itemView = [(SKUIRedeemNativeResultsViewController *)self _itemView];
  [_itemView frame];
  v5 = v4;
  v7 = v6;
  [(SKUIRedeemNativeResultsViewController *)self _tableWidth];
  v9 = v8;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v12 = 60.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v12 = 30.0;
  }

  [_itemView sizeThatFits:{v9 - v12, 1.79769313e308}];
  [_itemView setFrame:{v5, v7, v13, v14}];
  v15 = [[SKUIRedeemResultSimpleTableViewSection alloc] initWithView:_itemView];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v18 = 30.0;
  }

  else
  {
    v18 = 15.0;
  }

  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v21 = 30.0;
  }

  else
  {
    v21 = 15.0;
  }

  [(SKUIRedeemResultSimpleTableViewSection *)v15 setContentInsets:0.0, v18, 0.0, v21];

  return v15;
}

- (id)_messageViewSection
{
  if (!self->_messageView)
  {
    v3 = objc_alloc_init(SKUIRedeemResultMessageView);
    messageView = self->_messageView;
    self->_messageView = v3;

    redeem = [(SKUIRedeemResultsViewController *)self redeem];
    inAppPurchase = [redeem inAppPurchase];

    if (inAppPurchase)
    {
      clientContext = [(SKUIRedeemStepViewController *)self clientContext];
      redeem2 = clientContext;
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"REDEEM_SUCCESS_MESSAGE_IN_APP" inTable:@"Redeem"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"REDEEM_SUCCESS_MESSAGE_IN_APP" inBundles:0 inTable:@"Redeem"];
      }
      v11 = ;
    }

    else
    {
      redeem2 = [(SKUIRedeemResultsViewController *)self redeem];
      title = [redeem2 title];
      v10 = title;
      if (title)
      {
        v11 = title;
      }

      else
      {
        clientContext2 = [(SKUIRedeemStepViewController *)self clientContext];
        v13 = clientContext2;
        if (clientContext2)
        {
          [clientContext2 localizedStringForKey:@"REDEEM_SUCCESS_MESSAGE" inTable:@"Redeem"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"REDEEM_SUCCESS_MESSAGE" inBundles:0 inTable:@"Redeem"];
        }
        v11 = ;
      }
    }

    [(SKUIRedeemResultMessageView *)self->_messageView setTitle:v11];
    [(SKUIRedeemNativeResultsViewController *)self _reloadResultViewMessage];
  }

  v14 = [[SKUIRedeemResultSimpleTableViewSection alloc] initWithView:self->_messageView];
  [(SKUIRedeemResultSimpleTableViewSection *)v14 setContentInsets:-5.0, 0.0, -3.0, 0.0];

  return v14;
}

- (id)_resultImageViewSection
{
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:@"RedemptionCardStack" inBundle:v4];

  v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
  v7 = [[SKUIRedeemResultSimpleTableViewSection alloc] initWithView:v6];
  [(SKUIRedeemNativeResultsViewController *)self _tableWidth];
  v9 = v8;
  [v6 bounds];
  v11 = (v9 - v10) * 0.5;
  v12 = floorf(v11);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v15 = -54.0;
  }

  else
  {
    v15 = -27.0;
  }

  [(SKUIRedeemResultSimpleTableViewSection *)v7 setContentInsets:-0.0, v12, v15, 0.0];

  return v7;
}

- (id)_linksSection
{
  redeem = [(SKUIRedeemResultsViewController *)self redeem];
  links = [redeem links];

  if ([links count])
  {
    v4 = [[SKUIRedeemResultLinksTableViewSection alloc] initWithLinks:links];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_item
{
  redeem = [(SKUIRedeemResultsViewController *)self redeem];
  items = [redeem items];
  if ([items count])
  {
    redeem2 = [(SKUIRedeemResultsViewController *)self redeem];
    items2 = [redeem2 items];
    v7 = [items2 objectAtIndex:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_itemView
{
  _item = [(SKUIRedeemNativeResultsViewController *)self _item];
  if (_item && !self->_itemView)
  {
    v4 = [SKUIGiftItemView alloc];
    clientContext = [(SKUIRedeemStepViewController *)self clientContext];
    v6 = [(SKUIGiftItemView *)v4 initWithStyle:3 item:_item clientContext:clientContext];
    itemView = self->_itemView;
    self->_itemView = v6;

    v8 = self->_itemView;
    artistName = [_item artistName];
    [(SKUIGiftItemView *)v8 setArtistName:artistName];

    v10 = self->_itemView;
    categoryName = [_item categoryName];
    [(SKUIGiftItemView *)v10 setCategoryName:categoryName];

    v12 = self->_itemView;
    if (self->_itemImage)
    {
      [(SKUIGiftItemView *)self->_itemView setItemImage:?];
    }

    else
    {
      artworkContext = [(SKUIGiftItemView *)self->_itemView artworkContext];
      v14 = [artworkContext placeholderImageForItem:_item];
      [(SKUIGiftItemView *)v12 setItemImage:v14];
    }

    -[SKUIGiftItemView setNumberOfUserRatings:](self->_itemView, "setNumberOfUserRatings:", [_item numberOfUserRatings]);
    v15 = self->_itemView;
    primaryItemOffer = [_item primaryItemOffer];
    buttonText = [primaryItemOffer buttonText];
    [(SKUIGiftItemView *)v15 setPrice:buttonText];

    v18 = self->_itemView;
    title = [_item title];
    [(SKUIGiftItemView *)v18 setTitle:title];

    v20 = self->_itemView;
    [_item userRating];
    *&v22 = v21 / 5.0;
    [(SKUIGiftItemView *)v20 setUserRating:v22];
    v23 = self->_itemView;
    v24 = -[SKUIItemStateCenter stateForItemWithIdentifier:](self->_itemStateCenter, "stateForItemWithIdentifier:", [_item itemIdentifier]);
    [(SKUIGiftItemView *)v23 setItemState:v24];

    itemOfferButton = [(SKUIGiftItemView *)self->_itemView itemOfferButton];
    [itemOfferButton addTarget:self action:sel__openAction_ forControlEvents:64];
  }

  v26 = self->_itemView;
  v27 = v26;

  return v26;
}

- (id)_passbookLearnMoreSection
{
  if (!self->_passbookLockup)
  {
    v3 = [SKUIRedeemITunesPassLockup alloc];
    configuration = [(SKUIRedeemStepViewController *)self configuration];
    iTunesPassConfiguration = [configuration ITunesPassConfiguration];
    clientContext = [(SKUIRedeemStepViewController *)self clientContext];
    v7 = [(SKUIRedeemITunesPassLockup *)v3 initWithITunesPassConfiguration:iTunesPassConfiguration clientContext:clientContext];
    passbookLockup = self->_passbookLockup;
    self->_passbookLockup = v7;

    [(SKUIRedeemITunesPassLockup *)self->_passbookLockup addTarget:self action:sel__passbookLockupAction_ forControlEvents:64];
    [(SKUIRedeemNativeResultsViewController *)self _tableWidth];
    v10 = v9;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v13 = 60.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v13 = 30.0;
    }

    v14 = v10 - v13;
    [(SKUIRedeemITunesPassLockup *)self->_passbookLockup frame];
    v16 = v15;
    v18 = v17;
    [(SKUIRedeemITunesPassLockup *)self->_passbookLockup sizeThatFits:v14, 1.79769313e308];
    [(SKUIRedeemITunesPassLockup *)self->_passbookLockup setFrame:v16, v18, v14, v19];
  }

  v20 = [[SKUIRedeemResultSimpleTableViewSection alloc] initWithView:self->_passbookLockup];
  [(SKUIRedeemResultSimpleTableViewSection *)v20 setContentInsets:0.0, 30.0, 0.0, 30.0];

  return v20;
}

- (void)_reloadResultViewMessage
{
  _item = [(SKUIRedeemNativeResultsViewController *)self _item];
  redeem = [(SKUIRedeemResultsViewController *)self redeem];
  v5 = redeem;
  if (_item)
  {
    inAppPurchase = [redeem inAppPurchase];

    if (inAppPurchase)
    {
      redeem2 = [(SKUIRedeemResultsViewController *)self redeem];
      inAppPurchase2 = [redeem2 inAppPurchase];
LABEL_4:
      v39 = inAppPurchase2;
      goto LABEL_23;
    }

    itemKind = [_item itemKind];
    if ((itemKind - 1) > 0x10)
    {
      v13 = @"UNKNOWN";
    }

    else
    {
      v13 = off_2782007F8[itemKind - 1];
    }

    v14 = +[SKUIItemStateCenter defaultCenter];
    v15 = [v14 stateForItemWithIdentifier:{objc_msgSend(_item, "itemIdentifier")}];
    state = [v15 state];

    [(SKUIRedeemNativeResultsViewController *)self setCurrentItemStateFlag:[(SKUIRedeemNativeResultsViewController *)self currentItemStateFlag]| state];
    currentItemStateFlag = [(SKUIRedeemNativeResultsViewController *)self currentItemStateFlag];
    if ((currentItemStateFlag & 0x44) != 0)
    {
      redeem2 = [(SKUIRedeemStepViewController *)self clientContext];
      v18 = @"REDEEM_SUCCESS_INSTALLED_";
      goto LABEL_14;
    }

    v25 = currentItemStateFlag & 3;
    IsSoftwareKind = SKUIItemKindIsSoftwareKind([_item itemKind]);
    v27 = IsSoftwareKind;
    if (v25)
    {
      redeem2 = [(SKUIRedeemStepViewController *)self clientContext];
      if (v27)
      {
        v18 = @"REDEEM_SUCCESS_INSTALLING_";
      }

      else
      {
        v18 = @"REDEEM_SUCCESS_DOWNLOADING_";
      }

LABEL_14:
      v19 = [(__CFString *)v18 stringByAppendingString:v13];
      if (redeem2)
      {
        [redeem2 localizedStringForKey:v19 inTable:@"Redeem"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:v19 inBundles:0 inTable:@"Redeem"];
      }
      v39 = ;

      goto LABEL_23;
    }

    if (IsSoftwareKind)
    {
      IsTVOnly = SKUIItemDeviceFamilyIsTVOnly([_item deviceFamilies]);
      clientContext = [(SKUIRedeemStepViewController *)self clientContext];
      redeem2 = clientContext;
      if (IsTVOnly)
      {
        if (clientContext)
        {
          v37 = @"REDEEM_SUCCESS_TV_INSTALL";
LABEL_36:
          inAppPurchase2 = [redeem2 localizedStringForKey:v37 inTable:@"Redeem"];
          goto LABEL_4;
        }

        v38 = @"REDEEM_SUCCESS_TV_INSTALL";
      }

      else
      {
        if (clientContext)
        {
          v37 = @"REDEEM_SUCCESS_PREPARE_TO_INSTALL";
          goto LABEL_36;
        }

        v38 = @"REDEEM_SUCCESS_PREPARE_TO_INSTALL";
      }
    }

    else
    {
      redeem2 = [(SKUIRedeemStepViewController *)self clientContext];
      if (redeem2)
      {
        v37 = @"REDEEM_SUCCESS_PREPARE_TO_DOWNLOAD";
        goto LABEL_36;
      }

      v38 = @"REDEEM_SUCCESS_PREPARE_TO_DOWNLOAD";
    }

    inAppPurchase2 = [SKUIClientContext localizedStringForKey:v38 inBundles:0 inTable:@"Redeem"];
    goto LABEL_4;
  }

  credit = [redeem credit];

  if (!credit)
  {
    v39 = &stru_2827FFAC8;
    [(SKUIRedeemResultMessageView *)self->_messageView setMessage:&stru_2827FFAC8];
    goto LABEL_24;
  }

  clientContext2 = [(SKUIRedeemStepViewController *)self clientContext];
  v11 = clientContext2;
  if (clientContext2)
  {
    [clientContext2 localizedStringForKey:@"REDEEM_SUCCESS_CREDIT_FORMAT" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_SUCCESS_CREDIT_FORMAT" inBundles:0 inTable:@"Redeem"];
  }
  redeem2 = ;

  v20 = MEMORY[0x277CCACA8];
  redeem3 = [(SKUIRedeemResultsViewController *)self redeem];
  credit2 = [redeem3 credit];
  redeem4 = [(SKUIRedeemResultsViewController *)self redeem];
  balance = [redeem4 balance];
  v39 = [v20 stringWithValidatedFormat:redeem2 validFormatSpecifiers:@"%@%@" error:0, credit2, balance];

LABEL_23:
  [(SKUIRedeemResultMessageView *)self->_messageView setMessage:v39];
LABEL_24:
  [(SKUIRedeemResultMessageView *)self->_messageView frame];
  v29 = v28;
  v31 = v30;
  messageView = self->_messageView;
  [(SKUIRedeemNativeResultsViewController *)self _tableWidth];
  [(SKUIRedeemResultMessageView *)messageView sizeThatFits:?];
  [(SKUIRedeemResultMessageView *)self->_messageView setFrame:v29, v31, v33, v34];
}

- (double)_tableWidth
{
  traitCollection = [(SKUIRedeemNativeResultsViewController *)self traitCollection];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] || -[SKUIRedeemNativeResultsViewController interfaceOrientation](self, "interfaceOrientation") == 1)
  {
  }

  else
  {
    verticalSizeClass = [traitCollection verticalSizeClass];

    if (verticalSizeClass != 2)
    {
      v7 = 414.0;
      goto LABEL_7;
    }
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 540.0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v7 = v9;
  }

LABEL_7:

  return v7;
}

- (void)_reloadSections
{
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  redeem = [(SKUIRedeemResultsViewController *)self redeem];
  thankYouDictionary = [redeem thankYouDictionary];

  if (thankYouDictionary)
  {
    _item = [(SKUIRedeemNativeResultsViewController *)self _item];

    if (_item)
    {
      redeem2 = [(SKUIRedeemResultsViewController *)self redeem];
      headerArtworkProvider = [redeem2 headerArtworkProvider];
      smallestArtwork = [headerArtworkProvider smallestArtwork];

      if (!smallestArtwork || ([smallestArtwork size], v9 < 150.0))
      {
        _emptySection = [(SKUIRedeemNativeResultsViewController *)self _emptySection];
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        [currentDevice userInterfaceIdiom];

        __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(0.0, v12, v55, _emptySection);
      }

      _headerImageViewSection = [(SKUIRedeemNativeResultsViewController *)self _headerImageViewSection];
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      [currentDevice2 userInterfaceIdiom];

      __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(0.0, v15, v55, _headerImageViewSection);
      _messageViewSection = [(SKUIRedeemNativeResultsViewController *)self _messageViewSection];
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      [currentDevice3 userInterfaceIdiom];

      __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(5.0, v18, v55, _messageViewSection);
      _itemViewSection = [(SKUIRedeemNativeResultsViewController *)self _itemViewSection];
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      [currentDevice4 userInterfaceIdiom];

      __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(0.0, v21, v55, _itemViewSection);
    }

    else
    {
      _emptySection2 = [(SKUIRedeemNativeResultsViewController *)self _emptySection];
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      [currentDevice5 userInterfaceIdiom];

      __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(0.0, v30, v55, _emptySection2);
      _resultImageViewSection = [(SKUIRedeemNativeResultsViewController *)self _resultImageViewSection];
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      [currentDevice6 userInterfaceIdiom];

      __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(0.0, v33, v55, _resultImageViewSection);
      smallestArtwork = [(SKUIRedeemNativeResultsViewController *)self _messageViewSection];
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      [currentDevice7 userInterfaceIdiom];

      __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(5.0, v35, v55, smallestArtwork);
    }

    _extendedMessageViewSection = [(SKUIRedeemNativeResultsViewController *)self _extendedMessageViewSection];
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    [currentDevice8 userInterfaceIdiom];

    __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(5.0, v38, v55, _extendedMessageViewSection);
    _linksSection = [(SKUIRedeemNativeResultsViewController *)self _linksSection];
    __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(0.0, _linksSection, v55, _linksSection);

    _emptySection3 = [(SKUIRedeemNativeResultsViewController *)self _emptySection];
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    [currentDevice9 userInterfaceIdiom];

    __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(0.0, v42, v55, _emptySection3);
LABEL_18:

    goto LABEL_19;
  }

  currentDevice10 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice10 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    _emptySection4 = [(SKUIRedeemNativeResultsViewController *)self _emptySection];
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    [currentDevice11 userInterfaceIdiom];

    __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(0.0, v26, v55, _emptySection4);
  }

  _item2 = [(SKUIRedeemNativeResultsViewController *)self _item];

  if (_item2)
  {
    [(SKUIRedeemNativeResultsViewController *)self _itemViewSection];
  }

  else
  {
    [(SKUIRedeemNativeResultsViewController *)self _resultImageViewSection];
  }
  v43 = ;
  currentDevice12 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice12 userInterfaceIdiom];

  __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(0.0, v45, v55, v43);
  _messageViewSection2 = [(SKUIRedeemNativeResultsViewController *)self _messageViewSection];
  currentDevice13 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice13 userInterfaceIdiom];

  __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(5.0, v48, v55, _messageViewSection2);
  _anotherButtonSection = [(SKUIRedeemNativeResultsViewController *)self _anotherButtonSection];
  __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(2.0, _anotherButtonSection, v55, _anotherButtonSection);

  if ([(SKUIRedeemStepViewController *)self shouldShowPassbookLearnMore])
  {
    _emptySection3 = [(SKUIRedeemNativeResultsViewController *)self _passbookLearnMoreSection];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    bounds = [mainScreen bounds];
    v52 = 11.0;
    if (v53 > 480.0)
    {
      v52 = 30.0;
    }

    __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(v52, bounds, v55, _emptySection3);

    goto LABEL_18;
  }

LABEL_19:
  view = [(SKUIRedeemNativeResultsViewController *)self view];
  [view setSections:v55];
}

void __56__SKUIRedeemNativeResultsViewController__reloadSections__block_invoke(double a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v9 = [v7 lastObject];
    if (v9)
    {
      [v9 contentInsets];
      [v9 setContentInsets:?];
    }

    [v6 contentInsets];
    [v6 setContentInsets:v8 + a1];
    [v7 addObject:v6];
  }
}

- (void)_setItemImage:(id)image
{
  objc_storeStrong(&self->_itemImage, image);
  imageCopy = image;
  _itemView = [(SKUIRedeemNativeResultsViewController *)self _itemView];
  [_itemView setItemImage:self->_itemImage];
}

+ (void)canShowResultsForRedeem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIRedeemNativeResultsViewController canShowResultsForRedeem:]";
}

- (void)initWithRedeem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemNativeResultsViewController initWithRedeem:]";
}

@end