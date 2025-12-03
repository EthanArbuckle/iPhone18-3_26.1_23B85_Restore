@interface QLCustomItemViewController
- (UIView)shareSheetPresentationView;
- (void)dismissPreviewController;
- (void)forwardMessageToHost:(id)host completionHandler:(id)handler;
- (void)getFrameWithCompletionBlock:(id)block;
- (void)presentActivityViewControllerFromView:(id)view withURL:(id)l;
@end

@implementation QLCustomItemViewController

- (void)dismissPreviewController
{
  hostViewControllerProxy = [(QLCustomItemViewController *)self hostViewControllerProxy];
  [hostViewControllerProxy dismissQuickLook];
}

- (void)presentActivityViewControllerFromView:(id)view withURL:(id)l
{
  viewCopy = view;
  lCopy = l;
  objc_storeWeak(&self->_shareSheetPresentationView, viewCopy);
  objc_initWeak(&location, self);
  hostViewControllerProxy = [(QLCustomItemViewController *)self hostViewControllerProxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__QLCustomItemViewController_presentActivityViewControllerFromView_withURL___block_invoke;
  v9[3] = &unk_279AE15D8;
  objc_copyWeak(&v10, &location);
  [hostViewControllerProxy presentShareSheetWithPopoverTracker:self customSharedURL:lCopy dismissCompletion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __76__QLCustomItemViewController_presentActivityViewControllerFromView_withURL___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __76__QLCustomItemViewController_presentActivityViewControllerFromView_withURL___block_invoke_2;
  v1[3] = &unk_279AE15D8;
  objc_copyWeak(&v2, (a1 + 32));
  QLRunInMainThread(v1);
  objc_destroyWeak(&v2);
}

void __76__QLCustomItemViewController_presentActivityViewControllerFromView_withURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained didDismissActivityViewController];
    WeakRetained = v2;
  }
}

- (void)forwardMessageToHost:(id)host completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = handlerCopy;
  }

  else
  {
    v7 = &__block_literal_global_2;
  }

  hostCopy = host;
  hostViewControllerProxy = [(QLCustomItemViewController *)self hostViewControllerProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__QLCustomItemViewController_forwardMessageToHost_completionHandler___block_invoke_2;
  v11[3] = &unk_279AE1648;
  v12 = v7;
  v10 = v7;
  [hostViewControllerProxy forwardMessageToHostOfCustomViewController:hostCopy completionHandler:v11];
}

void __69__QLCustomItemViewController_forwardMessageToHost_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__QLCustomItemViewController_forwardMessageToHost_completionHandler___block_invoke_3;
  v10[3] = &unk_279AE1620;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  QLRunInMainThread(v10);
}

- (void)getFrameWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__QLCustomItemViewController_getFrameWithCompletionBlock___block_invoke;
  v6[3] = &unk_279AE1670;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  QLRunInMainThread(v6);
}

void __58__QLCustomItemViewController_getFrameWithCompletionBlock___block_invoke(uint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 40);
  v5 = 1016;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1016));
  if (WeakRetained)
  {
    v1 = objc_loadWeakRetained(v3[4] + 127);
    v2 = [v1 superview];
    v5 = objc_loadWeakRetained(v3[4] + 127);
    [v5 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v3 = [v3[4] view];
    [v2 convertRect:v3 toView:{v11, v13, v15, v17}];
  }

  else
  {
    v6.n128_u64[0] = *MEMORY[0x277CBF3A0];
    v7.n128_u64[0] = *(MEMORY[0x277CBF3A0] + 8);
    v8.n128_u64[0] = *(MEMORY[0x277CBF3A0] + 16);
    v9.n128_u64[0] = *(MEMORY[0x277CBF3A0] + 24);
  }

  (*(v4 + 16))(v4, v6, v7, v8, v9);
  if (WeakRetained)
  {
  }
}

- (UIView)shareSheetPresentationView
{
  WeakRetained = objc_loadWeakRetained(&self->_shareSheetPresentationView);

  return WeakRetained;
}

@end