@interface UIAccessibilityPresentingViewController
- (UIAccessibilityPresentingViewController)init;
- (void)_cleanUpPresentationWindow;
- (void)_voiceOverStatusChanged;
- (void)dealloc;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)loadView;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation UIAccessibilityPresentingViewController

- (UIAccessibilityPresentingViewController)init
{
  v5.receiver = self;
  v5.super_class = UIAccessibilityPresentingViewController;
  v2 = [(UIAccessibilityPresentingViewController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__voiceOverStatusChanged name:*MEMORY[0x1E69DDA58] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDA58] object:0];
  [(UIAccessibilityPresentingViewController *)self _cleanUpPresentationWindow];

  v4.receiver = self;
  v4.super_class = UIAccessibilityPresentingViewController;
  [(UIAccessibilityPresentingViewController *)&v4 dealloc];
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  [(UIAccessibilityPresentingViewController *)self setView:v4];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v8 = MEMORY[0x1E69DD2E8];
  completionCopy = completion;
  controllerCopy = controller;
  v11 = [v8 alloc];
  _screen = [(UIAccessibilityPresentingViewController *)self _screen];
  [_screen bounds];
  v13 = [v11 initWithFrame:?];
  presentationWindow = self->_presentationWindow;
  self->_presentationWindow = v13;

  [(UIWindow *)self->_presentationWindow setWindowLevel:*MEMORY[0x1E69DDA90]];
  view = [(UIAccessibilityPresentingViewController *)self view];
  [(UIWindow *)self->_presentationWindow bounds];
  [view setFrame:?];
  [(UIWindow *)self->_presentationWindow setRootViewController:self];
  [(UIWindow *)self->_presentationWindow addSubview:view];
  [(UIWindow *)self->_presentationWindow makeKeyAndVisible];
  v16.receiver = self;
  v16.super_class = UIAccessibilityPresentingViewController;
  [(UIAccessibilityPresentingViewController *)&v16 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  v4 = *&transition;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__UIAccessibilityPresentingViewController_dismissViewControllerWithTransition_completion___block_invoke;
  aBlock[3] = &unk_1E78ABAC0;
  aBlock[4] = self;
  v11 = completionCopy;
  v7 = completionCopy;
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
    presentedViewController = [(UIAccessibilityPresentingViewController *)self presentedViewController];

    if (presentedViewController)
    {

      [(UIAccessibilityPresentingViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

@end