@interface PKStoreProductViewPresenter
- (PKStoreProductViewPresenter)initWithProductDelegate:(id)a3;
- (void)dealloc;
- (void)loadProductForItemIdentifier:(id)a3 customProductPageIdentifier:(id)a4;
- (void)presentStoreViewWithBlock:(id)a3;
- (void)productViewControllerDidFinish:(id)a3;
- (void)setSuppressingFooter:(BOOL)a3;
@end

@implementation PKStoreProductViewPresenter

- (PKStoreProductViewPresenter)initWithProductDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKStoreProductViewPresenter;
  v5 = [(PKStoreProductViewPresenter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_productDelegate, v4);
    v7 = objc_alloc_init(MEMORY[0x1E697BAA0]);
    productViewController = v6->_productViewController;
    v6->_productViewController = v7;

    [(SKStoreProductViewController *)v6->_productViewController setDelegate:v6];
    if ([(SKStoreProductViewController *)v6->_productViewController pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [(SKStoreProductViewController *)v6->_productViewController setModalPresentationStyle:2];
    }
  }

  return v6;
}

- (void)dealloc
{
  [(PKStoreProductViewPresenter *)self setSuppressingFooter:0];
  v3.receiver = self;
  v3.super_class = PKStoreProductViewPresenter;
  [(PKStoreProductViewPresenter *)&v3 dealloc];
}

- (void)loadProductForItemIdentifier:(id)a3 customProductPageIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_productViewController)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKStoreProductViewPresenter: Attempted to load product after previous failure", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697BB38]];
  [v9 safelySetObject:v7 forKey:*MEMORY[0x1E697BB30]];
  productViewController = self->_productViewController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PKStoreProductViewPresenter_loadProductForItemIdentifier_customProductPageIdentifier___block_invoke;
  v11[3] = &unk_1E80148F0;
  objc_copyWeak(&v12, buf);
  [(SKStoreProductViewController *)productViewController loadProductWithParameters:v9 completionBlock:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(buf);
}

void __88__PKStoreProductViewPresenter_loadProductForItemIdentifier_customProductPageIdentifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (a2 & 1) == 0)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKStoreProductViewPresenter: Failed to load store sheet: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__PKStoreProductViewPresenter_loadProductForItemIdentifier_customProductPageIdentifier___block_invoke_16;
    block[3] = &unk_1E8010970;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __88__PKStoreProductViewPresenter_loadProductForItemIdentifier_customProductPageIdentifier___block_invoke_16(uint64_t a1)
{
  v4 = *(*(a1 + 32) + 16);
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  [*(a1 + 32) setSuppressingFooter:0];
  [v4 setDelegate:0];
  if ([v4 isBeingPresented])
  {
    *(*(a1 + 32) + 9) = 1;
  }

  else if (([v4 isBeingDismissed] & 1) == 0)
  {
    [*(a1 + 32) productViewControllerDidFinish:v4];
  }
}

- (void)presentStoreViewWithBlock:(id)a3
{
  v4 = a3;
  v5 = self->_productViewController;
  v6 = v5;
  if (v5)
  {
    objc_setAssociatedObject(v5, &DismisserKey, self, 0x301);
    productViewController = self->_productViewController;
    self->_productViewController = 0;

    [(PKStoreProductViewPresenter *)self setSuppressingFooter:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PKStoreProductViewPresenter_presentStoreViewWithBlock___block_invoke;
    v9[3] = &unk_1E8010A10;
    v9[4] = self;
    v10 = v6;
    v4[2](v4, v10, v9);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKStoreProductViewPresenter: Ignoring presentation attempt due to prior presentation or product load failure", buf, 2u);
    }
  }
}

uint64_t __57__PKStoreProductViewPresenter_presentStoreViewWithBlock___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 9) == 1)
  {
    v1 = result;
    result = [*(result + 40) isBeingDismissed];
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 32);
      v3 = *(v1 + 40);

      return [v2 productViewControllerDidFinish:v3];
    }
  }

  return result;
}

- (void)setSuppressingFooter:(BOOL)a3
{
  if (self->_suppressingFooter != a3)
  {
    self->_suppressingFooter = a3;
    if (a3)
    {
      +[PKPassGroupsViewController beginSuppressingFooter];
    }

    else
    {
      +[PKPassGroupsViewController endSuppressingFooter];
    }
  }
}

- (void)productViewControllerDidFinish:(id)a3
{
  v8 = a3;
  [v8 setDelegate:0];
  WeakRetained = objc_loadWeakRetained(&self->_productDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_productDelegate);
    [v6 productViewControllerDidFinish:v8];
  }

  else
  {
    [v8 dismissViewControllerAnimated:1 completion:0];
  }

  [(PKStoreProductViewPresenter *)self setSuppressingFooter:0];
  productViewController = self->_productViewController;
  self->_productViewController = 0;
}

@end