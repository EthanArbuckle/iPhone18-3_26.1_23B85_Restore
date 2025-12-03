@interface SKUIGiftStepViewController
- (SKUIGiftStepViewController)initWithGift:(id)gift configuration:(id)configuration;
- (void)_finishImageLoadWithImage:(id)image error:(id)error block:(id)block;
- (void)finishGiftingWithResult:(BOOL)result;
- (void)loadItemArtworkWithArtworkContext:(id)context completionBlock:(id)block;
@end

@implementation SKUIGiftStepViewController

- (SKUIGiftStepViewController)initWithGift:(id)gift configuration:(id)configuration
{
  giftCopy = gift;
  configurationCopy = configuration;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftStepViewController initWithGift:configuration:];
  }

  v12.receiver = self;
  v12.super_class = SKUIGiftStepViewController;
  v8 = [(SKUIGiftStepViewController *)&v12 init];
  if (v8)
  {
    v9 = [giftCopy copy];
    gift = v8->_gift;
    v8->_gift = v9;

    objc_storeStrong(&v8->_giftConfiguration, configuration);
  }

  return v8;
}

- (void)finishGiftingWithResult:(BOOL)result
{
  resultCopy = result;
  navigationController = [(SKUIGiftStepViewController *)self navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    giftDelegate = [navigationController giftDelegate];
  }

  else
  {
    giftDelegate = 0;
  }

  v9 = giftDelegate;
  if (objc_opt_respondsToSelector())
  {
    [v9 giftViewController:navigationController didFinishWithResult:resultCopy];
  }

  else
  {
    selfCopy = [(SKUIGiftStepViewController *)self parentViewController];
    v8 = selfCopy;
    if (!selfCopy)
    {
      selfCopy = self;
    }

    [selfCopy dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)loadItemArtworkWithArtworkContext:(id)context completionBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  item = [(SKUIGift *)self->_gift item];
  if (item && !self->_loadOperation)
  {
    v9 = [contextCopy URLForItem:item];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v9];
      loadOperation = self->_loadOperation;
      self->_loadOperation = v10;

      v12 = self->_loadOperation;
      v13 = [contextCopy dataConsumerForItem:item];
      [(SSVLoadURLOperation *)v12 setDataConsumer:v13];

      [(SSVLoadURLOperation *)self->_loadOperation setITunesStoreRequest:0];
      objc_initWeak(&location, self);
      v14 = self->_loadOperation;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __80__SKUIGiftStepViewController_loadItemArtworkWithArtworkContext_completionBlock___block_invoke;
      v16[3] = &unk_2781FB400;
      objc_copyWeak(&v18, &location);
      v17 = blockCopy;
      [(SSVLoadURLOperation *)v14 setOutputBlock:v16];
      operationQueue = [(SKUIGiftStepViewController *)self operationQueue];
      [operationQueue addOperation:self->_loadOperation];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __80__SKUIGiftStepViewController_loadItemArtworkWithArtworkContext_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__SKUIGiftStepViewController_loadItemArtworkWithArtworkContext_completionBlock___block_invoke_2;
  v9[3] = &unk_2781FB3D8;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __80__SKUIGiftStepViewController_loadItemArtworkWithArtworkContext_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishImageLoadWithImage:*(a1 + 32) error:*(a1 + 40) block:*(a1 + 48)];
}

- (void)_finishImageLoadWithImage:(id)image error:(id)error block:(id)block
{
  imageCopy = image;
  errorCopy = error;
  blockCopy = block;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  if (blockCopy)
  {
    blockCopy[2](blockCopy, imageCopy, errorCopy);
  }
}

- (void)initWithGift:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftStepViewController initWithGift:configuration:]";
}

@end