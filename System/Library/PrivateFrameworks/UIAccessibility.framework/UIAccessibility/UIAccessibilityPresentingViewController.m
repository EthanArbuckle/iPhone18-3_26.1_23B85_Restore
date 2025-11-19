@interface UIAccessibilityPresentingViewController
- (UIAccessibilityPresentingViewController)init;
- (void)_cleanUpPresentationWindow;
- (void)_voiceOverStatusChanged;
- (void)dealloc;
- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)loadView;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation UIAccessibilityPresentingViewController

- (UIAccessibilityPresentingViewController)init
{
  v5.receiver = self;
  v5.super_class = UIAccessibilityPresentingViewController;
  v2 = [(UIAccessibilityPresentingViewController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__voiceOverStatusChanged name:*MEMORY[0x1E69DDA58] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDA58] object:0];
  [(UIAccessibilityPresentingViewController *)self _cleanUpPresentationWindow];

  v4.receiver = self;
  v4.super_class = UIAccessibilityPresentingViewController;
  [(UIAccessibilityPresentingViewController *)&v4 dealloc];
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v3];

  [(UIAccessibilityPresentingViewController *)self setView:v4];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = MEMORY[0x1E69DD2E8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [(UIAccessibilityPresentingViewController *)self _screen];
  [v12 bounds];
  v13 = [v11 initWithFrame:?];
  presentationWindow = self->_presentationWindow;
  self->_presentationWindow = v13;

  [(UIWindow *)self->_presentationWindow setWindowLevel:*MEMORY[0x1E69DDA90]];
  v15 = [(UIAccessibilityPresentingViewController *)self view];
  [(UIWindow *)self->_presentationWindow bounds];
  [v15 setFrame:?];
  [(UIWindow *)self->_presentationWindow setRootViewController:self];
  [(UIWindow *)self->_presentationWindow addSubview:v15];
  [(UIWindow *)self->_presentationWindow makeKeyAndVisible];
  v16.receiver = self;
  v16.super_class = UIAccessibilityPresentingViewController;
  [(UIAccessibilityPresentingViewController *)&v16 presentViewController:v10 animated:v5 completion:v9];
}

- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__UIAccessibilityPresentingViewController_dismissViewControllerWithTransition_completion___block_invoke;
  aBlock[3] = &unk_1E78ABAC0;
  aBlock[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9.receiver = self;
  v9.super_class = UIAccessibilityPresentingViewController;
  [(UIAccessibilityPresentingViewController *)&v9 dismissViewControllerWithTransition:v4 completion:v8];
}

uint64_t __90__UIAccessibilityPresentingViewController_dismissViewControllerWithTransition_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _cleanUpPresentationWindow];
}

- (void)_cleanUpPresentationWindow
{
  [(UIWindow *)self->_presentationWindow setHidden:1];
  presentationWindow = self->_presentationWindow;
  self->_presentationWindow = 0;
}

- (void)_voiceOverStatusChanged
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [(UIAccessibilityPresentingViewController *)self presentedViewController];

    if (v3)
    {

      [(UIAccessibilityPresentingViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

@end