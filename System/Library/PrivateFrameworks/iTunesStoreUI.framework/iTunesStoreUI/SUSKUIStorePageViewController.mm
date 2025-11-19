@interface SUSKUIStorePageViewController
- (BOOL)iPhoneProductPage:(id)a3 shouldOpenItem:(id)a4;
- (BOOL)iPhoneProductPage:(id)a3 shouldOpenURL:(id)a4;
- (SUSKUIStorePageViewController)initWithSection:(id)a3;
- (void)_loadClientContextWithCompletionBlock:(id)a3;
- (void)_setActiveChildViewController:(id)a3;
- (void)_showIPhoneProductPageWithPage:(id)a3 clientContext:(id)a4;
- (void)_showProductPageWithPageDictionary:(id)a3;
- (void)_showRemoteViewControllerWithPageDictionary:(id)a3;
- (void)_showStorePageWithPageDictionary:(id)a3;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
- (void)loadView;
- (void)productViewController:(id)a3 presentProductWithRequest:(id)a4 animated:(BOOL)a5;
- (void)reloadWithStorePage:(id)a3 forURL:(id)a4;
@end

@implementation SUSKUIStorePageViewController

- (SUSKUIStorePageViewController)initWithSection:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUSKUIStorePageViewController;
  v3 = [(SUViewController *)&v6 initWithSection:a3];
  v4 = v3;
  if (v3)
  {
    [(SUSKUIStorePageViewController *)v3 setContainmentSupport:1];
  }

  return v4;
}

- (void)dealloc
{
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setDelegate:0];

  [(SKStoreProductViewController *)self->_remoteProductViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUSKUIStorePageViewController;
  [(SUViewController *)&v3 dealloc];
}

- (void)reloadWithStorePage:(id)a3 forURL:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:0];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && a3)
  {
    v6 = ISUIMobileStoreUIFramework();
    if ([objc_msgSend(a3 objectForKey:{ISUIVWeakLinkedStringConstantForString("SUUIProtocolKeyPageType", v6)), "isEqualToString:", @"software"}])
    {

      [(SUSKUIStorePageViewController *)self _showProductPageWithPageDictionary:a3];
    }

    else
    {

      [(SUSKUIStorePageViewController *)self _showStorePageWithPageDictionary:a3];
    }
  }
}

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(SKStoreProductViewController *)self->_remoteProductViewController presentingViewController])
  {
    v5 = self->_remoteProductViewController;
    [(SKStoreProductViewController *)self->_remoteProductViewController setDelegate:0];

    self->_remoteProductViewController = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__SUSKUIStorePageViewController_dismissAnimated___block_invoke;
    v6[3] = &unk_1E8165578;
    v7 = v3;
    v6[4] = v5;
    v6[5] = self;
    [(SKStoreProductViewController *)v5 dismissViewControllerAnimated:v3 completion:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUSKUIStorePageViewController;
    [(UIViewController *)&v8 dismissAnimated:v3];
  }
}

id __49__SUSKUIStorePageViewController_dismissAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = SUSKUIStorePageViewController;
  return objc_msgSendSuper2(&v4, sel_dismissAnimated_, v2);
}

- (void)loadView
{
  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v5 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "systemBackgroundColor")}];
  activeChildViewController = self->_activeChildViewController;
  if (activeChildViewController)
  {
    v4 = [(UIViewController *)activeChildViewController view];
    [(UIView *)v4 setAutoresizingMask:18];
    [v5 bounds];
    [(UIView *)v4 setFrame:?];
    [v5 addSubview:v4];
  }

  [(SUSKUIStorePageViewController *)self setView:v5];
}

- (BOOL)iPhoneProductPage:(id)a3 shouldOpenItem:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:{objc_msgSend(a4, "productPageURLString")}];
  v5 = UIITunesStoreResolvedURLForHTTPURL();
  if (v5)
  {
    v4 = v5;
  }

  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  return 0;
}

- (BOOL)iPhoneProductPage:(id)a3 shouldOpenURL:(id)a4
{
  v5 = UIITunesStoreResolvedURLForHTTPURL();
  if (v5)
  {
    a4 = v5;
  }

  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  return 0;
}

- (void)productViewController:(id)a3 presentProductWithRequest:(id)a4 animated:(BOOL)a5
{
  if ([a4 productURL])
  {
    v6 = [objc_msgSend(MEMORY[0x1E6963608] "defaultWorkspace")];
    v7 = [MEMORY[0x1E69DC668] sharedApplication];

    [v7 openURL:v6];
  }
}

- (void)_loadClientContextWithCompletionBlock:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = ISUIMobileStoreUIFramework();
  v5 = ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v4);
  v6 = [v5 defaultContext];
  if (v6)
  {
    v7 = *(a3 + 2);

    v7(a3, v6);
  }

  else
  {
    v8 = ISUIMobileStoreUIFramework();
    v9 = objc_alloc_init(ISUIWeakLinkedClassForString(&cfstr_Suuireloadconf.isa, v8));
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__SUSKUIStorePageViewController__loadClientContextWithCompletionBlock___block_invoke;
    v18[3] = &unk_1E8167428;
    v18[4] = v5;
    v18[5] = a3;
    [v9 setOutputBlock:v18];
    v10 = [MEMORY[0x1E69D4938] sharedConfig];
    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v13 = objc_opt_class();
      v19 = 138412290;
      v20 = v13;
      LODWORD(v17) = 12;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v19, v17}];
        free(v15);
        SSFileLog();
      }
    }

    v16 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v16 addOperation:v9];
  }
}

void __71__SUSKUIStorePageViewController__loadClientContextWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SUSKUIStorePageViewController__loadClientContextWithCompletionBlock___block_invoke_2;
  block[3] = &unk_1E8165A68;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__SUSKUIStorePageViewController__loadClientContextWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 32)) initWithConfigurationDictionary:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)_setActiveChildViewController:(id)a3
{
  activeChildViewController = self->_activeChildViewController;
  if (activeChildViewController != a3)
  {
    if ([(UIViewController *)activeChildViewController isViewLoaded])
    {
      [[(UIViewController *)self->_activeChildViewController view] removeFromSuperview];
    }

    [(UIViewController *)self->_activeChildViewController removeFromParentViewController];

    v6 = a3;
    self->_activeChildViewController = v6;
    if (v6)
    {
      [(SUSKUIStorePageViewController *)self addChildViewController:v6];
      if ([(SUSKUIStorePageViewController *)self isViewLoaded])
      {
        v7 = [(SUSKUIStorePageViewController *)self view];
        v8 = [(UIViewController *)self->_activeChildViewController view];
        [(UIView *)v8 setAutoresizingMask:18];
        [v7 bounds];
        [(UIView *)v8 setFrame:?];

        [v7 addSubview:v8];
      }
    }
  }
}

- (void)_showIPhoneProductPageWithPage:(id)a3 clientContext:(id)a4
{
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setDelegate:0];
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController _setExistingNavigationItem:0];
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController removeFromParentViewController];

  self->_iphoneProductPageViewController = 0;
  v7 = ISUIMobileStoreUIFramework();
  v8 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuiiphoneprod.isa v7))];
  self->_iphoneProductPageViewController = v8;
  [(SUUIIPhoneProductPageViewController *)v8 setDelegate:self];
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController _setExistingNavigationItem:[(SUViewController *)self navigationItem]];
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setClientContext:a4];
  iphoneProductPageViewController = self->_iphoneProductPageViewController;

  [(SUSKUIStorePageViewController *)self _setActiveChildViewController:iphoneProductPageViewController];
}

- (void)_showProductPageWithPageDictionary:(id)a3
{
  if (_UIApplicationUsesLegacyUI())
  {

    [(SUSKUIStorePageViewController *)self _showRemoteViewControllerWithPageDictionary:a3];
  }

  else
  {
    v5 = ISUIMobileStoreUIFramework();
    v6 = [objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuiproductpag.isa v5)];
    if (v6)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __68__SUSKUIStorePageViewController__showProductPageWithPageDictionary___block_invoke;
      v7[3] = &unk_1E8167450;
      v7[4] = self;
      v7[5] = v6;
      [(SUSKUIStorePageViewController *)self _loadClientContextWithCompletionBlock:v7];
    }
  }
}

uint64_t __68__SUSKUIStorePageViewController__showProductPageWithPageDictionary___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _showIPhoneProductPageWithPage:*(result + 40) clientContext:a2];
  }

  return result;
}

- (void)_showRemoteViewControllerWithPageDictionary:(id)a3
{
  [(SKStoreProductViewController *)self->_remoteProductViewController setDelegate:0];
  [(SKStoreProductViewController *)self->_remoteProductViewController dismissViewControllerAnimated:0 completion:0];

  self->_remoteProductViewController = 0;
  v5 = objc_alloc_init(ISWeakLinkedClassForString());
  self->_remoteProductViewController = v5;
  [(SKStoreProductViewController *)v5 setDelegate:self];
  remoteProductViewController = self->_remoteProductViewController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__SUSKUIStorePageViewController__showRemoteViewControllerWithPageDictionary___block_invoke;
  v7[3] = &unk_1E8167478;
  v7[4] = self;
  [(SKStoreProductViewController *)remoteProductViewController loadProductWithPageDictionary:a3 completionBlock:v7];
}

void *__77__SUSKUIStorePageViewController__showRemoteViewControllerWithPageDictionary___block_invoke(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 && (v3 = result[144]) != 0)
    {
      return [result presentViewController:v3 animated:1 completion:0];
    }

    else
    {
      return [result dismissAnimated:1];
    }
  }

  return result;
}

- (void)_showStorePageWithPageDictionary:(id)a3
{
  v5 = ISUIMobileStoreUIFramework();
  v6 = [objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuistorepaged.isa v5)];
  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__SUSKUIStorePageViewController__showStorePageWithPageDictionary___block_invoke;
    v7[3] = &unk_1E8167450;
    v7[4] = self;
    v7[5] = v6;
    [(SUSKUIStorePageViewController *)self _loadClientContextWithCompletionBlock:v7];
  }
}

uint64_t __66__SUSKUIStorePageViewController__showStorePageWithPageDictionary___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(*(result + 32) + 1160);
    if (!v3)
    {
      v5 = ISUIMobileStoreUIFramework();
      *(*(v2 + 32) + 1160) = objc_alloc_init(ISUIWeakLinkedClassForString(&cfstr_Suuistorepagev.isa, v5));
      [*(*(v2 + 32) + 1160) setClientContext:a2];
      v3 = *(*(v2 + 32) + 1160);
    }

    [v3 setStorePage:*(v2 + 40)];
    v6 = *(v2 + 32);
    v7 = v6[145];

    return [v6 _setActiveChildViewController:v7];
  }

  return result;
}

@end