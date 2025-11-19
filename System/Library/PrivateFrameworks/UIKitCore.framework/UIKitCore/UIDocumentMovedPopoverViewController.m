@interface UIDocumentMovedPopoverViewController
@end

@implementation UIDocumentMovedPopoverViewController

void __52___UIDocumentMovedPopoverViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = UIApp;
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52___UIDocumentMovedPopoverViewController_viewDidLoad__block_invoke_2;
  v6[3] = &unk_1E70F3668;
  objc_copyWeak(&v7, (a1 + 40));
  [v4 openURL:v5 withCompletionHandler:v6];
  objc_destroyWeak(&v7);
}

void __52___UIDocumentMovedPopoverViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

@end