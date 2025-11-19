@interface WBSLocalAssetController
- (WBSLocalAssetController)initWithURL:(id)a3;
- (WBSMobileAssetControllerDelegate)delegate;
- (void)setDelegate:(id)a3;
@end

@implementation WBSLocalAssetController

- (WBSLocalAssetController)initWithURL:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WBSLocalAssetController;
  v6 = [(WBSLocalAssetController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v8 = dispatch_queue_create("com.apple.SafariSharedUI.WBSLocalAssetController", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = v7;
  }

  return v7;
}

- (WBSMobileAssetControllerDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__WBSLocalAssetController_delegate__block_invoke;
  v5[3] = &unk_1E8285EF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__WBSLocalAssetController_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__WBSLocalAssetController_setDelegate___block_invoke;
  v7[3] = &unk_1E82834A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __39__WBSLocalAssetController_setDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  if (WeakRetained != v3)
  {
    objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
    v4 = *(a1 + 40);
    if (v4)
    {

      [v4 mobileAssetController:? didBecomeAvailable:? withAttributes:?];
    }
  }
}

@end