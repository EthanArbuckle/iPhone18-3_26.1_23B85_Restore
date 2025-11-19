@interface SKUIURLResolver
+ (id)tabIdentifierForURL:(id)a3;
- (SKUIURLResolver)initWithClientContext:(id)a3;
- (SKUIURLResolverDelegate)delegate;
- (UINavigationControllerDelegate)navigationControllerDelegate;
- (id)_newHTMLViewControllerWithSection:(id)a3;
- (id)presentationViewControllerForPassbookLoader:(id)a3;
- (void)_addPassbookPassWithURL:(id)a3;
- (void)_handleSafariScriptDataUpdate:(id)a3;
- (void)_performLookupWithURL:(id)a3;
- (void)_presentViewController:(id)a3;
- (void)_resolveURLRequest:(id)a3 withOriginURL:(id)a4;
- (void)_selectTabWithIdentifier:(id)a3;
- (void)_sendDidFinishWithResult:(BOOL)a3;
- (void)_showAccountViewControllerWithURL:(id)a3;
- (void)_showBagURLWithURL:(id)a3;
- (void)_showDonationViewControllerWithURL:(id)a3;
- (void)_showGiftViewControllerWithURL:(id)a3;
- (void)_showPlaceholderViewController;
- (void)_showRedeemViewControllerWithURL:(id)a3;
- (void)_showSearchWithURL:(id)a3;
- (void)_showViewControllerWithResponse:(id)a3 fromOperation:(id)a4;
- (void)amsResolveURL:(id)a3 forURLType:(int64_t)a4;
- (void)dealloc;
- (void)passbookLoaderDidFinish:(id)a3;
- (void)resolveURL:(id)a3;
@end

@implementation SKUIURLResolver

- (SKUIURLResolver)initWithClientContext:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIURLResolver initWithClientContext:];
  }

  v9.receiver = self;
  v9.super_class = SKUIURLResolver;
  v6 = [(SKUIURLResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(SKUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIURLResolver;
  [(SKUIURLResolver *)&v3 dealloc];
}

+ (id)tabIdentifierForURL:(id)a3
{
  v3 = [a3 actionString];
  if ([v3 isEqualToString:@"audiobooks"])
  {
    v4 = @"audiobooks";
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"books"])
  {
    goto LABEL_4;
  }

  if ([v3 isEqualToString:@"movies"])
  {
    v4 = @"movies";
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"music"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"music-videos"))
  {
    v4 = @"music";
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"podcasts"])
  {
    goto LABEL_4;
  }

  if ([v3 isEqualToString:@"ringtones"])
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = @"tones";
    }

    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"software"])
  {
LABEL_4:
    v4 = @"featured";
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"tv-shows"])
  {
    v4 = @"tv";
  }

  else if ([v3 isEqualToString:@"updates"])
  {
    v4 = @"updates";
  }

  else if ([v3 isEqualToString:@"purchased"])
  {
    v4 = @"purchased";
  }

  else if ([v3 isEqualToString:@"manage"])
  {
    v4 = @"managed";
  }

  else
  {
    v4 = 0;
  }

LABEL_10:

  return v4;
}

- (void)resolveURL:(id)a3
{
  v10 = a3;
  v4 = [v10 actionString];
  v5 = [objc_opt_class() tabIdentifierForURL:v10];
  if ([v4 isEqualToString:@"accessory-lookup"])
  {
    goto LABEL_2;
  }

  if ([v4 isEqualToString:@"account"])
  {
    [(SKUIURLResolver *)self _showAccountViewControllerWithURL:v10];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"addpassbookpass"])
  {
    [(SKUIURLResolver *)self _addPassbookPassWithURL:v10];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"donate"])
  {
    [(SKUIURLResolver *)self _showDonationViewControllerWithURL:v10];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"gift"])
  {
    [(SKUIURLResolver *)self _showGiftViewControllerWithURL:v10];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"library-link"])
  {
    goto LABEL_2;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D6A598]])
  {
    [(SKUIURLResolver *)self _handleSafariScriptDataUpdate:v10];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"lookup"])
  {
    [(SKUIURLResolver *)self _performLookupWithURL:v10];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"redeem"])
  {
    [(SKUIURLResolver *)self _showRedeemViewControllerWithURL:v10];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"search"])
  {
    [(SKUIURLResolver *)self _showSearchWithURL:v10];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"bagurl"] || objc_msgSend(v4, "isEqualToString:", @"newsstand") || objc_msgSend(v4, "isEqualToString:", @"passbook"))
  {
    goto LABEL_2;
  }

  if (![v4 isEqualToString:@"ringtones"])
  {
    if (![v5 length])
    {
      v6 = [v10 underlyingURL];
      v7 = [v6 host];
      v8 = [v7 length];

      if (v8)
      {
        v9 = [v10 newURLRequest];
        [(SKUIURLResolver *)self _resolveURLRequest:v9 withOriginURL:v10];
      }

      else
      {
        [(SKUIURLResolver *)self _sendDidFinishWithResult:0];
      }

      goto LABEL_11;
    }

    goto LABEL_31;
  }

  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
LABEL_2:
    [(SKUIURLResolver *)self _showBagURLWithURL:v10];
    goto LABEL_11;
  }

  if ([v5 length])
  {
LABEL_31:
    [(SKUIURLResolver *)self _selectTabWithIdentifier:v5];
  }

LABEL_11:
}

- (void)amsResolveURL:(id)a3 forURLType:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 underlyingURL];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v8 = getAMSURLParserClass_softClass;
  v31 = getAMSURLParserClass_softClass;
  if (!getAMSURLParserClass_softClass)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getAMSURLParserClass_block_invoke;
    v26 = &unk_2781FA3E0;
    v27 = &v28;
    __getAMSURLParserClass_block_invoke(&v23);
    v8 = v29[3];
  }

  v9 = v8;
  _Block_object_dispose(&v28, 8);
  v10 = [v8 createBagForSubProfile];
  if (!a4)
  {
    v16 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    v13 = [v16 ams_activeiTunesAccount];

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v17 = getAMSUIWebViewControllerClass_softClass;
    v31 = getAMSUIWebViewControllerClass_softClass;
    if (!getAMSUIWebViewControllerClass_softClass)
    {
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __getAMSUIWebViewControllerClass_block_invoke;
      v26 = &unk_2781FA3E0;
      v27 = &v28;
      __getAMSUIWebViewControllerClass_block_invoke(&v23);
      v17 = v29[3];
    }

    v18 = v17;
    _Block_object_dispose(&v28, 8);
    v19 = [v17 alloc];
    v20 = [MEMORY[0x277CEE620] currentProcess];
    v14 = [v19 initWithBag:v10 account:v13 clientInfo:v20];

    v21 = [v14 loadURL:v7];
    v22 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v14];
    [(SKUIURLResolver *)self _presentViewController:v22];
    [(SKUIURLResolver *)self _sendDidFinishWithResult:1];

    goto LABEL_11;
  }

  if (a4 == 2)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v11 = getAMSUIDynamicViewControllerClass_softClass;
    v31 = getAMSUIDynamicViewControllerClass_softClass;
    if (!getAMSUIDynamicViewControllerClass_softClass)
    {
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __getAMSUIDynamicViewControllerClass_block_invoke;
      v26 = &unk_2781FA3E0;
      v27 = &v28;
      __getAMSUIDynamicViewControllerClass_block_invoke(&v23);
      v11 = v29[3];
    }

    v12 = v11;
    _Block_object_dispose(&v28, 8);
    v13 = [[v11 alloc] initWithBag:v10 URL:v7];
    v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
    WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);
    [v14 setDelegate:WeakRetained];

    [v14 setModalPresentationStyle:2];
    [(SKUIURLResolver *)self _presentViewController:v14];
    [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
LABEL_11:
  }
}

- (void)passbookLoaderDidFinish:(id)a3
{
  [(SKUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  passbookLoader = self->_passbookLoader;
  self->_passbookLoader = 0;

  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (id)presentationViewControllerForPassbookLoader:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained presentationViewControllerForURLResolver:self];

  return v5;
}

- (void)_addPassbookPassWithURL:(id)a3
{
  v4 = a3;
  passbookLoader = self->_passbookLoader;
  v9 = v4;
  if (!passbookLoader)
  {
    v6 = [[SKUIPassbookLoader alloc] initWithClientContext:self->_clientContext];
    v7 = self->_passbookLoader;
    self->_passbookLoader = v6;

    [(SKUIPassbookLoader *)self->_passbookLoader setDelegate:self];
    v4 = v9;
    passbookLoader = self->_passbookLoader;
  }

  v8 = [v4 underlyingURL];
  [(SKUIPassbookLoader *)passbookLoader loadPassWithURL:v8];
}

- (void)_handleSafariScriptDataUpdate:(id)a3
{
  v4 = [a3 underlyingURL];
  if ([MEMORY[0x277D69C60] shouldHandleSafariScriptURL:?])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:*MEMORY[0x277D6A590] object:v4];
  }
}

- (id)_newHTMLViewControllerWithSection:(id)a3
{
  v4 = a3;
  v5 = [(SKUIClientContext *)self->_clientContext clientInterface];
  v6 = [v5 viewControllerFactory];
  v7 = [v6 newStorePageViewControllerWithSection:v4];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D7FE88]) initWithSection:v4];
  }

  [v7 setCanMoveToOverlay:0];
  [v7 setClientInterface:v5];
  [v7 setExternalRequest:1];

  return v7;
}

- (void)_performLookupWithURL:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueForQueryParameter:@"ids"];
  v6 = [v5 longLongValue];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D69CF0]);
    v8 = [(SKUIClientContext *)self->_clientContext platformContext];
    v9 = [v7 initWithPlatformContext:v8];

    [v9 setKeyProfile:*MEMORY[0x277D6A2D8]];
    v10 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [v9 setStoreFrontSuffix:v10];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", v6];
    v19[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v9 setItemIdentifiers:v12];

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__SKUIURLResolver__performLookupWithURL___block_invoke;
    v14[3] = &unk_2781FBC18;
    v13 = v11;
    v15 = v13;
    objc_copyWeak(&v17, &location);
    v16 = v4;
    [v9 setResponseBlock:v14];
    [(SKUIURLResolver *)self _showPlaceholderViewController];
    [(NSOperationQueue *)self->_operationQueue addOperation:v9];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SKUIURLResolver *)self _sendDidFinishWithResult:0];
  }
}

void __41__SKUIURLResolver__performLookupWithURL___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SKUIURLResolver__performLookupWithURL___block_invoke_2;
  v5[3] = &unk_2781FB040;
  v6 = v3;
  v7 = a1[4];
  v4 = v3;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v9);
}

void __41__SKUIURLResolver__performLookupWithURL___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) itemForKey:*(a1 + 40)];
  v5 = [v2 productPageURL];

  if (v5)
  {
    v3 = [*(a1 + 48) newURLRequest];
    [v3 setURL:v5];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _resolveURLRequest:v3 withOriginURL:*(a1 + 48)];
  }

  else
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    [v3 _sendDidFinishWithResult:0];
  }
}

- (void)_presentViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained presentationViewControllerForURLResolver:self];

  v7 = dispatch_time(0, 1000000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__SKUIURLResolver__presentViewController___block_invoke;
  v10[3] = &unk_2781F80C8;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_after(v7, MEMORY[0x277D85CD0], v10);
}

void __42__SKUIURLResolver__presentViewController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 presentedViewController];

  if (v3)
  {
    do
    {
      v6 = [v2 presentedViewController];

      v4 = [v6 presentedViewController];

      v5 = v6;
      v2 = v6;
    }

    while (v4);
  }

  else
  {
    v5 = v2;
  }

  v7 = v5;
  [v5 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_resolveURLRequest:(id)a3 withOriginURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIURLResolver *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v9 = [SKUIURL alloc], [v6 URL], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[SKUIURL initWithURL:](v9, "initWithURL:", v10), v10, objc_msgSend(v7, "referrerApplicationName"), v12 = objc_claimAutoreleasedReturnValue(), -[SKUIURL setReferrerApplicationName:](v11, "setReferrerApplicationName:", v12), v12, objc_msgSend(v7, "referrerURLString"), v13 = objc_claimAutoreleasedReturnValue(), -[SKUIURL setReferrerURLString:](v11, "setReferrerURLString:", v13), v13, LODWORD(v13) = objc_msgSend(v8, "URLResolver:shouldPerformDefaultActionForURL:", self, v11), v11, v13))
  {
    v14 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequest:v6];
    v15 = +[(SSVURLDataConsumer *)SKUIURLResolverDataConsumer];
    [v14 setDataConsumer:v15];

    v16 = [v7 referrerApplicationName];
    [v14 setReferrerApplicationName:v16];

    v17 = [v7 referrerURLString];
    [v14 setReferrerURLString:v17];

    v18 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [v14 setStoreFrontSuffix:v18];

    objc_initWeak(&location, v14);
    objc_initWeak(&from, self);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __52__SKUIURLResolver__resolveURLRequest_withOriginURL___block_invoke;
    v22 = &unk_2781FBC68;
    objc_copyWeak(&v23, &from);
    objc_copyWeak(&v24, &location);
    [v14 setOutputBlock:&v19];
    [(SKUIURLResolver *)self _showPlaceholderViewController:v19];
    [(NSOperationQueue *)self->_operationQueue addOperation:v14];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __52__SKUIURLResolver__resolveURLRequest_withOriginURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SKUIURLResolver__resolveURLRequest_withOriginURL___block_invoke_2;
  block[3] = &unk_2781FBC40;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

void __52__SKUIURLResolver__resolveURLRequest_withOriginURL___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _showViewControllerWithResponse:v3 fromOperation:v4];
  }

  else
  {
    [WeakRetained _sendDidFinishWithResult:0];
  }
}

- (void)_selectTabWithIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained URLResolver:self showURL:0 withTabIdentifier:v4];

  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_sendDidFinishWithResult:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 URLResolver:self didFinishWithResult:v3];
  }
}

- (void)_showAccountViewControllerWithURL:(id)a3
{
  clientContext = self->_clientContext;
  v5 = a3;
  v11 = [(SKUIClientContext *)clientContext clientInterface];
  v6 = objc_alloc(MEMORY[0x277D7FD90]);
  v7 = [v5 underlyingURL];

  v8 = [v6 initWithExternalAccountURL:v7];
  [v8 setCanMoveToOverlay:0];
  [v8 setClientInterface:v11];
  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);
  [v9 setDelegate:WeakRetained];

  [v9 setModalPresentationStyle:2];
  [(SKUIURLResolver *)self _presentViewController:v9];
  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showBagURLWithURL:(id)a3
{
  v4 = a3;
  v5 = [v4 URLBagKey];
  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(SKUIClientContext *)self->_clientContext URLBag];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SKUIURLResolver__showBagURLWithURL___block_invoke;
    v7[3] = &unk_2781FBC90;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [v6 loadValueForKey:v5 completionBlock:v7];

    [(SKUIURLResolver *)self _showPlaceholderViewController];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SKUIURLResolver *)self _sendDidFinishWithResult:0];
  }
}

void __38__SKUIURLResolver__showBagURLWithURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SKUIURLResolver__showBagURLWithURL___block_invoke_2;
  block[3] = &unk_2781FA368;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __38__SKUIURLResolver__showBagURLWithURL___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:*(a1 + 32)];
    v2 = [*(a1 + 40) newURLRequestWithBaseURL:?];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _resolveURLRequest:v2 withOriginURL:*(a1 + 40)];
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    [v4 _sendDidFinishWithResult:0];
  }
}

- (void)_showDonationViewControllerWithURL:(id)a3
{
  v4 = a3;
  v5 = [[SKUIDonationViewController alloc] initWithURL:v4];

  [(SKUIDonationViewController *)v5 setClientContext:self->_clientContext];
  [(SKUIURLResolver *)self _presentViewController:v5];
  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showGiftViewControllerWithURL:(id)a3
{
  v5 = [[SKUIGift alloc] initWithGiftCategory:0];
  v4 = [[SKUIGiftViewController alloc] initWithGift:v5];
  [(SKUIGiftViewController *)v4 setClientContext:self->_clientContext];
  [(SKUIURLResolver *)self _presentViewController:v4];
  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showPlaceholderViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained URLResolver:self showTransientViewController:0];
}

- (void)_showRedeemViewControllerWithURL:(id)a3
{
  v4 = a3;
  v6 = [[SKUIRedeemViewController alloc] initWithRedeemCategory:0];
  [(SKUIRedeemViewController *)v6 setAttempsAutomaticRedeem:1];
  [(SKUIRedeemViewController *)v6 setClientContext:self->_clientContext];
  v5 = [v4 redeemCode];

  [(SKUIRedeemViewController *)v6 setInitialCode:v5];
  [(SKUIURLResolver *)self _presentViewController:v6];
  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showSearchWithURL:(id)a3
{
  v8 = a3;
  v4 = [v8 underlyingURL];
  v5 = [v4 host];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v8 newURLRequest];
    [(SKUIURLResolver *)self _resolveURLRequest:v7 withOriginURL:v8];
  }

  else
  {
    [(SKUIURLResolver *)self _showBagURLWithURL:v8];
  }
}

- (void)_showViewControllerWithResponse:(id)a3 fromOperation:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v20 URLResponse];
  v8 = [v7 MIMEType];

  if ([v8 rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v8 rangeOfString:@"html" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v12 = [(SKUIURLResolver *)self _newHTMLViewControllerWithSection:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained URLResolver:self showTransientViewController:v12];

    v15 = [v20 data];
    v16 = [v20 URLResponse];
    v17 = [v16 URL];
    [(SKUILegacyNativeViewController *)v12 reloadWithStorePage:v15 ofType:1 forURL:v17];

    v18 = objc_alloc(MEMORY[0x277D69CA0]);
    v19 = [v6 URLRequest];
    v13 = [v18 initWithURLRequest:v19];

    [(SKUILegacyNativeViewController *)v12 setURLRequestProperties:v13];
  }

  else
  {
    v10 = [SKUILegacyNativeViewController alloc];
    v11 = [v20 data];
    v12 = [(SKUILegacyNativeViewController *)v10 initWithData:v11 fromOperation:v6];

    [(SKUIViewController *)v12 setClientContext:self->_clientContext];
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 URLResolver:self showTransientViewController:v12];
  }

  v9 = 1;
LABEL_7:
  [(SKUIURLResolver *)self _sendDidFinishWithResult:v9];
}

- (SKUIURLResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationControllerDelegate)navigationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);

  return WeakRetained;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIURLResolver initWithClientContext:]";
}

@end