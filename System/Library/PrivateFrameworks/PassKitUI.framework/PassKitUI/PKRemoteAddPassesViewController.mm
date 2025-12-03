@interface PKRemoteAddPassesViewController
- (PKAddPassesViewControllerDelegate)delegate;
- (void)dealloc;
- (void)ingestionDidFinishWithResult:(unint64_t)result;
@end

@implementation PKRemoteAddPassesViewController

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKRemoteAddPassesViewController;
  [(PKRemoteAddPassesViewController *)&v2 dealloc];
}

- (void)ingestionDidFinishWithResult:(unint64_t)result
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PKRemoteAddPassesViewController_ingestionDidFinishWithResult___block_invoke;
  v3[3] = &unk_1E80119C8;
  v3[4] = self;
  v3[5] = result;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __64__PKRemoteAddPassesViewController_ingestionDidFinishWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parentViewController];
  [v2 _ingestionDidFinishWithResult:*(a1 + 40)];
}

- (PKAddPassesViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end