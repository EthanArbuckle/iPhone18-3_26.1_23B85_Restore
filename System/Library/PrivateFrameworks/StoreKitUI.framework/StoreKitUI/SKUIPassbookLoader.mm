@interface SKUIPassbookLoader
- (NSOperationQueue)operationQueue;
- (SKUIPassbookLoader)initWithClientContext:(id)context;
- (SKUIPassbookLoaderDelegate)delegate;
- (void)_didLoadWithPass:(id)pass error:(id)error;
- (void)_loadPassWithURL:(id)l;
- (void)_sendDidFinishIfFinished;
- (void)addPassesViewControllerDidFinish:(id)finish;
- (void)loadPassWithURL:(id)l;
@end

@implementation SKUIPassbookLoader

- (SKUIPassbookLoader)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPassbookLoader initWithClientContext:];
  }

  v9.receiver = self;
  v9.super_class = SKUIPassbookLoader;
  v6 = [(SKUIPassbookLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
  }

  return v7;
}

- (void)loadPassWithURL:(id)l
{
  lCopy = l;
  ++self->_loadCount;
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    [(SKUIPassbookLoader *)self _loadPassWithURL:lCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D69BC8]);
    [v7 setCanCreateNewAccount:0];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"PASSBOOK_AUTH_REASON"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PASSBOOK_AUTH_REASON" inBundles:0];
    }
    v9 = ;
    [v7 setReasonDescription:v9];

    v10 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v7];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__SKUIPassbookLoader_loadPassWithURL___block_invoke;
    v11[3] = &unk_2781FB068;
    objc_copyWeak(&v13, &location);
    v12 = lCopy;
    [v10 startWithAuthenticateResponseBlock:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __38__SKUIPassbookLoader_loadPassWithURL___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__SKUIPassbookLoader_loadPassWithURL___block_invoke_2;
  v2[3] = &unk_2781FB310;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __38__SKUIPassbookLoader_loadPassWithURL___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D69A20] defaultStore];
  v3 = [v2 activeAccount];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained _loadPassWithURL:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _sendDidFinishIfFinished];
  }
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.StoreKitUI.SKUIPassbookLoader"];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)addPassesViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  v11 = objc_getAssociatedObject(finishCopy, "com.apple.StoreKitUI.SKUIPassbookLoader.pass");
  if (v11)
  {
    v5 = SKUIPassKitCoreFramework();
    v6 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Pkpasslibrary.isa, v5));
    if ([v6 containsPass:v11])
    {
      defaultStore = [MEMORY[0x277D69A20] defaultStore];
      activeAccount = [defaultStore activeAccount];
      serialNumber = [v11 serialNumber];
      [activeAccount setITunesPassSerialNumber:serialNumber];

      v10 = [defaultStore addAccount:activeAccount];
    }
  }

  [finishCopy setDelegate:0];
  [finishCopy dismissViewControllerAnimated:1 completion:0];

  [(SKUIPassbookLoader *)self _sendDidFinishIfFinished];
}

- (void)_didLoadWithPass:(id)pass error:(id)error
{
  value = pass;
  if (value)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained presentationViewControllerForPassbookLoader:self];

    if (v6)
    {
      v7 = SKUIPassKitUIFramework();
      v8 = SKUIWeakLinkedClassForString(&cfstr_Pkaddpassesvie.isa, v7);
      if ([(objc_class *)v8 canAddPasses])
      {
        v9 = [[v8 alloc] initWithPass:value];
        [v9 setDelegate:self];
        objc_setAssociatedObject(v9, "com.apple.StoreKitUI.SKUIPassbookLoader.pass", value, 1);
        [v6 presentViewController:v9 animated:1 completion:0];
      }
    }
  }

  else
  {
    [(SKUIPassbookLoader *)self _sendDidFinishIfFinished];
  }
}

- (void)_loadPassWithURL:(id)l
{
  lCopy = l;
  v5 = [(SKUIClientContext *)self->_clientContext newLoadStoreURLOperationWithURL:lCopy];
  v6 = +[(SSVURLDataConsumer *)SKUIPassbookPassDataConsumer];
  [v5 setDataConsumer:v6];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __39__SKUIPassbookLoader__loadPassWithURL___block_invoke;
  v11 = &unk_2781FC4E8;
  objc_copyWeak(&v12, &location);
  [v5 setOutputBlock:&v8];
  v7 = [(SKUIPassbookLoader *)self operationQueue:v8];
  [v7 addOperation:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __39__SKUIPassbookLoader__loadPassWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SKUIPassbookLoader__loadPassWithURL___block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __39__SKUIPassbookLoader__loadPassWithURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didLoadWithPass:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_sendDidFinishIfFinished
{
  loadCount = self->_loadCount;
  if (loadCount < 2)
  {
    if (loadCount == 1)
    {
      self->_loadCount = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = objc_loadWeakRetained(&self->_delegate);
        [v6 passbookLoaderDidFinish:self];
      }
    }
  }

  else
  {
    self->_loadCount = loadCount - 1;
  }
}

- (SKUIPassbookLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPassbookLoader initWithClientContext:]";
}

@end