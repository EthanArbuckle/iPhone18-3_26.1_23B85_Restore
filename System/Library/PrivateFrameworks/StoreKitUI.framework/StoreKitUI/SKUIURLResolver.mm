@interface SKUIURLResolver
+ (id)tabIdentifierForURL:(id)l;
- (SKUIURLResolver)initWithClientContext:(id)context;
- (SKUIURLResolverDelegate)delegate;
- (UINavigationControllerDelegate)navigationControllerDelegate;
- (id)_newHTMLViewControllerWithSection:(id)section;
- (id)presentationViewControllerForPassbookLoader:(id)loader;
- (void)_addPassbookPassWithURL:(id)l;
- (void)_handleSafariScriptDataUpdate:(id)update;
- (void)_performLookupWithURL:(id)l;
- (void)_presentViewController:(id)controller;
- (void)_resolveURLRequest:(id)request withOriginURL:(id)l;
- (void)_selectTabWithIdentifier:(id)identifier;
- (void)_sendDidFinishWithResult:(BOOL)result;
- (void)_showAccountViewControllerWithURL:(id)l;
- (void)_showBagURLWithURL:(id)l;
- (void)_showDonationViewControllerWithURL:(id)l;
- (void)_showGiftViewControllerWithURL:(id)l;
- (void)_showPlaceholderViewController;
- (void)_showRedeemViewControllerWithURL:(id)l;
- (void)_showSearchWithURL:(id)l;
- (void)_showViewControllerWithResponse:(id)response fromOperation:(id)operation;
- (void)amsResolveURL:(id)l forURLType:(int64_t)type;
- (void)dealloc;
- (void)passbookLoaderDidFinish:(id)finish;
- (void)resolveURL:(id)l;
@end

@implementation SKUIURLResolver

- (SKUIURLResolver)initWithClientContext:(id)context
{
  contextCopy = context;
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
    objc_storeStrong(&v6->_clientContext, context);
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

+ (id)tabIdentifierForURL:(id)l
{
  actionString = [l actionString];
  if ([actionString isEqualToString:@"audiobooks"])
  {
    v4 = @"audiobooks";
    goto LABEL_10;
  }

  if ([actionString isEqualToString:@"books"])
  {
    goto LABEL_4;
  }

  if ([actionString isEqualToString:@"movies"])
  {
    v4 = @"movies";
    goto LABEL_10;
  }

  if ([actionString isEqualToString:@"music"] & 1) != 0 || (objc_msgSend(actionString, "isEqualToString:", @"music-videos"))
  {
    v4 = @"music";
    goto LABEL_10;
  }

  if ([actionString isEqualToString:@"podcasts"])
  {
    goto LABEL_4;
  }

  if ([actionString isEqualToString:@"ringtones"])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = @"tones";
    }

    goto LABEL_10;
  }

  if ([actionString isEqualToString:@"software"])
  {
LABEL_4:
    v4 = @"featured";
    goto LABEL_10;
  }

  if ([actionString isEqualToString:@"tv-shows"])
  {
    v4 = @"tv";
  }

  else if ([actionString isEqualToString:@"updates"])
  {
    v4 = @"updates";
  }

  else if ([actionString isEqualToString:@"purchased"])
  {
    v4 = @"purchased";
  }

  else if ([actionString isEqualToString:@"manage"])
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

- (void)resolveURL:(id)l
{
  lCopy = l;
  actionString = [lCopy actionString];
  v5 = [objc_opt_class() tabIdentifierForURL:lCopy];
  if ([actionString isEqualToString:@"accessory-lookup"])
  {
    goto LABEL_2;
  }

  if ([actionString isEqualToString:@"account"])
  {
    [(SKUIURLResolver *)self _showAccountViewControllerWithURL:lCopy];
    goto LABEL_11;
  }

  if ([actionString isEqualToString:@"addpassbookpass"])
  {
    [(SKUIURLResolver *)self _addPassbookPassWithURL:lCopy];
    goto LABEL_11;
  }

  if ([actionString isEqualToString:@"donate"])
  {
    [(SKUIURLResolver *)self _showDonationViewControllerWithURL:lCopy];
    goto LABEL_11;
  }

  if ([actionString isEqualToString:@"gift"])
  {
    [(SKUIURLResolver *)self _showGiftViewControllerWithURL:lCopy];
    goto LABEL_11;
  }

  if ([actionString isEqualToString:@"library-link"])
  {
    goto LABEL_2;
  }

  if ([actionString isEqualToString:*MEMORY[0x277D6A598]])
  {
    [(SKUIURLResolver *)self _handleSafariScriptDataUpdate:lCopy];
    goto LABEL_11;
  }

  if ([actionString isEqualToString:@"lookup"])
  {
    [(SKUIURLResolver *)self _performLookupWithURL:lCopy];
    goto LABEL_11;
  }

  if ([actionString isEqualToString:@"redeem"])
  {
    [(SKUIURLResolver *)self _showRedeemViewControllerWithURL:lCopy];
    goto LABEL_11;
  }

  if ([actionString isEqualToString:@"search"])
  {
    [(SKUIURLResolver *)self _showSearchWithURL:lCopy];
    goto LABEL_11;
  }

  if ([actionString isEqualToString:@"bagurl"] || objc_msgSend(actionString, "isEqualToString:", @"newsstand") || objc_msgSend(actionString, "isEqualToString:", @"passbook"))
  {
    goto LABEL_2;
  }

  if (![actionString isEqualToString:@"ringtones"])
  {
    if (![v5 length])
    {
      underlyingURL = [lCopy underlyingURL];
      host = [underlyingURL host];
      v8 = [host length];

      if (v8)
      {
        newURLRequest = [lCopy newURLRequest];
        [(SKUIURLResolver *)self _resolveURLRequest:newURLRequest withOriginURL:lCopy];
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
    [(SKUIURLResolver *)self _showBagURLWithURL:lCopy];
    goto LABEL_11;
  }

  if ([v5 length])
  {
LABEL_31:
    [(SKUIURLResolver *)self _selectTabWithIdentifier:v5];
  }

LABEL_11:
}

- (void)amsResolveURL:(id)l forURLType:(int64_t)type
{
  lCopy = l;
  underlyingURL = [lCopy underlyingURL];
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
  createBagForSubProfile = [v8 createBagForSubProfile];
  if (!type)
  {
    ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

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
    currentProcess = [MEMORY[0x277CEE620] currentProcess];
    v14 = [v19 initWithBag:createBagForSubProfile account:ams_activeiTunesAccount clientInfo:currentProcess];

    v21 = [v14 loadURL:underlyingURL];
    v22 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v14];
    [(SKUIURLResolver *)self _presentViewController:v22];
    [(SKUIURLResolver *)self _sendDidFinishWithResult:1];

    goto LABEL_11;
  }

  if (type == 2)
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
    ams_activeiTunesAccount = [[v11 alloc] initWithBag:createBagForSubProfile URL:underlyingURL];
    v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:ams_activeiTunesAccount];
    WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);
    [v14 setDelegate:WeakRetained];

    [v14 setModalPresentationStyle:2];
    [(SKUIURLResolver *)self _presentViewController:v14];
    [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
LABEL_11:
  }
}

- (void)passbookLoaderDidFinish:(id)finish
{
  [(SKUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  passbookLoader = self->_passbookLoader;
  self->_passbookLoader = 0;

  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (id)presentationViewControllerForPassbookLoader:(id)loader
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained presentationViewControllerForURLResolver:self];

  return v5;
}

- (void)_addPassbookPassWithURL:(id)l
{
  lCopy = l;
  passbookLoader = self->_passbookLoader;
  v9 = lCopy;
  if (!passbookLoader)
  {
    v6 = [[SKUIPassbookLoader alloc] initWithClientContext:self->_clientContext];
    v7 = self->_passbookLoader;
    self->_passbookLoader = v6;

    [(SKUIPassbookLoader *)self->_passbookLoader setDelegate:self];
    lCopy = v9;
    passbookLoader = self->_passbookLoader;
  }

  underlyingURL = [lCopy underlyingURL];
  [(SKUIPassbookLoader *)passbookLoader loadPassWithURL:underlyingURL];
}

- (void)_handleSafariScriptDataUpdate:(id)update
{
  underlyingURL = [update underlyingURL];
  if ([MEMORY[0x277D69C60] shouldHandleSafariScriptURL:?])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D6A590] object:underlyingURL];
  }
}

- (id)_newHTMLViewControllerWithSection:(id)section
{
  sectionCopy = section;
  clientInterface = [(SKUIClientContext *)self->_clientContext clientInterface];
  viewControllerFactory = [clientInterface viewControllerFactory];
  v7 = [viewControllerFactory newStorePageViewControllerWithSection:sectionCopy];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D7FE88]) initWithSection:sectionCopy];
  }

  [v7 setCanMoveToOverlay:0];
  [v7 setClientInterface:clientInterface];
  [v7 setExternalRequest:1];

  return v7;
}

- (void)_performLookupWithURL:(id)l
{
  v19[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [lCopy valueForQueryParameter:@"ids"];
  longLongValue = [v5 longLongValue];

  if (longLongValue)
  {
    v7 = objc_alloc(MEMORY[0x277D69CF0]);
    platformContext = [(SKUIClientContext *)self->_clientContext platformContext];
    v9 = [v7 initWithPlatformContext:platformContext];

    [v9 setKeyProfile:*MEMORY[0x277D6A2D8]];
    v10 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [v9 setStoreFrontSuffix:v10];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", longLongValue];
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
    v16 = lCopy;
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

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained presentationViewControllerForURLResolver:self];

  v7 = dispatch_time(0, 1000000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__SKUIURLResolver__presentViewController___block_invoke;
  v10[3] = &unk_2781F80C8;
  v11 = v6;
  v12 = controllerCopy;
  v8 = controllerCopy;
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

- (void)_resolveURLRequest:(id)request withOriginURL:(id)l
{
  requestCopy = request;
  lCopy = l;
  delegate = [(SKUIURLResolver *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v9 = [SKUIURL alloc], [requestCopy URL], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[SKUIURL initWithURL:](v9, "initWithURL:", v10), v10, objc_msgSend(lCopy, "referrerApplicationName"), v12 = objc_claimAutoreleasedReturnValue(), -[SKUIURL setReferrerApplicationName:](v11, "setReferrerApplicationName:", v12), v12, objc_msgSend(lCopy, "referrerURLString"), v13 = objc_claimAutoreleasedReturnValue(), -[SKUIURL setReferrerURLString:](v11, "setReferrerURLString:", v13), v13, LODWORD(v13) = objc_msgSend(delegate, "URLResolver:shouldPerformDefaultActionForURL:", self, v11), v11, v13))
  {
    v14 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequest:requestCopy];
    v15 = +[(SSVURLDataConsumer *)SKUIURLResolverDataConsumer];
    [v14 setDataConsumer:v15];

    referrerApplicationName = [lCopy referrerApplicationName];
    [v14 setReferrerApplicationName:referrerApplicationName];

    referrerURLString = [lCopy referrerURLString];
    [v14 setReferrerURLString:referrerURLString];

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

- (void)_selectTabWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained URLResolver:self showURL:0 withTabIdentifier:identifierCopy];

  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_sendDidFinishWithResult:(BOOL)result
{
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 URLResolver:self didFinishWithResult:resultCopy];
  }
}

- (void)_showAccountViewControllerWithURL:(id)l
{
  clientContext = self->_clientContext;
  lCopy = l;
  clientInterface = [(SKUIClientContext *)clientContext clientInterface];
  v6 = objc_alloc(MEMORY[0x277D7FD90]);
  underlyingURL = [lCopy underlyingURL];

  v8 = [v6 initWithExternalAccountURL:underlyingURL];
  [v8 setCanMoveToOverlay:0];
  [v8 setClientInterface:clientInterface];
  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);
  [v9 setDelegate:WeakRetained];

  [v9 setModalPresentationStyle:2];
  [(SKUIURLResolver *)self _presentViewController:v9];
  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showBagURLWithURL:(id)l
{
  lCopy = l;
  uRLBagKey = [lCopy URLBagKey];
  if (uRLBagKey)
  {
    objc_initWeak(&location, self);
    uRLBag = [(SKUIClientContext *)self->_clientContext URLBag];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SKUIURLResolver__showBagURLWithURL___block_invoke;
    v7[3] = &unk_2781FBC90;
    objc_copyWeak(&v9, &location);
    v8 = lCopy;
    [uRLBag loadValueForKey:uRLBagKey completionBlock:v7];

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

- (void)_showDonationViewControllerWithURL:(id)l
{
  lCopy = l;
  v5 = [[SKUIDonationViewController alloc] initWithURL:lCopy];

  [(SKUIDonationViewController *)v5 setClientContext:self->_clientContext];
  [(SKUIURLResolver *)self _presentViewController:v5];
  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showGiftViewControllerWithURL:(id)l
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

- (void)_showRedeemViewControllerWithURL:(id)l
{
  lCopy = l;
  v6 = [[SKUIRedeemViewController alloc] initWithRedeemCategory:0];
  [(SKUIRedeemViewController *)v6 setAttempsAutomaticRedeem:1];
  [(SKUIRedeemViewController *)v6 setClientContext:self->_clientContext];
  redeemCode = [lCopy redeemCode];

  [(SKUIRedeemViewController *)v6 setInitialCode:redeemCode];
  [(SKUIURLResolver *)self _presentViewController:v6];
  [(SKUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showSearchWithURL:(id)l
{
  lCopy = l;
  underlyingURL = [lCopy underlyingURL];
  host = [underlyingURL host];
  v6 = [host length];

  if (v6)
  {
    newURLRequest = [lCopy newURLRequest];
    [(SKUIURLResolver *)self _resolveURLRequest:newURLRequest withOriginURL:lCopy];
  }

  else
  {
    [(SKUIURLResolver *)self _showBagURLWithURL:lCopy];
  }
}

- (void)_showViewControllerWithResponse:(id)response fromOperation:(id)operation
{
  responseCopy = response;
  operationCopy = operation;
  uRLResponse = [responseCopy URLResponse];
  mIMEType = [uRLResponse MIMEType];

  if ([mIMEType rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([mIMEType rangeOfString:@"html" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v12 = [(SKUIURLResolver *)self _newHTMLViewControllerWithSection:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained URLResolver:self showTransientViewController:v12];

    data = [responseCopy data];
    uRLResponse2 = [responseCopy URLResponse];
    v17 = [uRLResponse2 URL];
    [(SKUILegacyNativeViewController *)v12 reloadWithStorePage:data ofType:1 forURL:v17];

    v18 = objc_alloc(MEMORY[0x277D69CA0]);
    uRLRequest = [operationCopy URLRequest];
    v13 = [v18 initWithURLRequest:uRLRequest];

    [(SKUILegacyNativeViewController *)v12 setURLRequestProperties:v13];
  }

  else
  {
    v10 = [SKUILegacyNativeViewController alloc];
    data2 = [responseCopy data];
    v12 = [(SKUILegacyNativeViewController *)v10 initWithData:data2 fromOperation:operationCopy];

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