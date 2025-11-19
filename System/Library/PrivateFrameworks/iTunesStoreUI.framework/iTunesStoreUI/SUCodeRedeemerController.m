@interface SUCodeRedeemerController
- (SUCodeRedeemerController)init;
- (SUCodeRedeemerControllerDelegate)delegate;
- (void)_disableBlur;
- (void)_enableBlur;
- (void)_setChildViewController:(id)a3;
- (void)_setup;
- (void)_setupCodeRedeemerController;
- (void)_setupFlipVisualEffectView;
- (void)cancel;
- (void)codeRedeemerController:(id)a3 didEndWithInfo:(id)a4;
- (void)codeRedeemerControllerDidCancel:(id)a3;
- (void)recognitionError;
- (void)recognitionSuccess;
- (void)startSession;
- (void)toggleCameraWithCompletion:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SUCodeRedeemerController

- (SUCodeRedeemerController)init
{
  v5.receiver = self;
  v5.super_class = SUCodeRedeemerController;
  v2 = [(SUCodeRedeemerController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SUCodeRedeemerController *)v2 _setup];
  }

  return v3;
}

- (void)cancel
{
  v2 = [(SUCodeRedeemerController *)self codeRedeemerController];
  [v2 cancel];
}

- (void)recognitionError
{
  v3 = [(SUCodeRedeemerController *)self codeRedeemerController];
  v2 = [MEMORY[0x1E69DC888] redColor];
  [v3 showMessage:0 color:v2 style:3 duration:60.0];
}

- (void)recognitionSuccess
{
  v3 = [(SUCodeRedeemerController *)self codeRedeemerController];
  v2 = [MEMORY[0x1E69DC888] greenColor];
  [v3 showMessage:0 color:v2 style:2 duration:60.0];
}

- (void)startSession
{
  v3 = [(SUCodeRedeemerController *)self codeRedeemerController];
  [v3 startSession];

  [(SUCodeRedeemerController *)self _enableBlur];
  objc_initWeak(&location, self);
  v4 = dispatch_time(0, 500000000);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SUCodeRedeemerController_startSession__block_invoke;
  v5[3] = &unk_1E8164920;
  objc_copyWeak(&v6, &location);
  dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __40__SUCodeRedeemerController_startSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _disableBlur];
}

- (void)toggleCameraWithCompletion:(id)a3
{
  v4 = a3;
  [(SUCodeRedeemerController *)self _enableBlur];
  if ([(SUCodeRedeemerController *)self cameraflipDirection])
  {
    v5 = 0x100000;
  }

  else
  {
    v5 = 0x200000;
  }

  v6 = MEMORY[0x1E69DD250];
  v7 = [(SUCodeRedeemerController *)self view];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __55__SUCodeRedeemerController_toggleCameraWithCompletion___block_invoke;
  v12 = &unk_1E8166380;
  v13 = self;
  v14 = v4;
  v8 = v4;
  [v6 transitionWithView:v7 duration:v5 options:0 animations:&v9 completion:0.3];

  [(SUCodeRedeemerController *)self setCameraflipDirection:[(SUCodeRedeemerController *)self cameraflipDirection:v9]^ 1];
}

uint64_t __55__SUCodeRedeemerController_toggleCameraWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) codeRedeemerController];
  [v2 toggleCamera];

  [*(a1 + 32) _disableBlur];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_setup
{
  [(SUCodeRedeemerController *)self _setupCodeRedeemerController];

  [(SUCodeRedeemerController *)self _setupFlipVisualEffectView];
}

- (void)_setupCodeRedeemerController
{
  v3 = objc_alloc_init(MEMORY[0x1E6999038]);
  [v3 setDelegate:self];
  codeRedeemerController = self->_codeRedeemerController;
  self->_codeRedeemerController = v3;
}

- (void)_setupFlipVisualEffectView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD298]);
  [(UIVisualEffectView *)v3 setHidden:1];
  v4 = [(SUCodeRedeemerController *)self view];
  [v4 addSubview:v3];

  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SUCodeRedeemerController;
  [(SUCodeRedeemerController *)&v4 viewDidLoad];
  v3 = [(SUCodeRedeemerController *)self codeRedeemerController];
  [(SUCodeRedeemerController *)self _setChildViewController:v3];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = SUCodeRedeemerController;
  [(SUCodeRedeemerController *)&v8 viewWillLayoutSubviews];
  v3 = [(SUCodeRedeemerController *)self visualEffectView];
  v4 = [(SUCodeRedeemerController *)self view];
  [v4 bounds];
  [v3 setFrame:?];

  v5 = [(SUCodeRedeemerController *)self codeRedeemerController];
  v6 = [v5 view];
  v7 = [(SUCodeRedeemerController *)self view];
  [v7 bounds];
  [v6 setFrame:?];
}

- (void)codeRedeemerController:(id)a3 didEndWithInfo:(id)a4
{
  v5 = *MEMORY[0x1E6998FE0];
  v6 = a4;
  v9 = [v6 valueForKey:v5];
  v7 = [v6 valueForKey:*MEMORY[0x1E6998FE8]];

  v8 = [(SUCodeRedeemerController *)self delegate];
  [v8 codeRedeemerControllerDidEndWithCode:v9 error:v7];
}

- (void)codeRedeemerControllerDidCancel:(id)a3
{
  v3 = [(SUCodeRedeemerController *)self delegate];
  [v3 codeRedeemerControllerDidCancel];
}

- (void)_disableBlur
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SUCodeRedeemerController__disableBlur__block_invoke;
  v5[3] = &unk_1E8164920;
  objc_copyWeak(&v6, &location);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__SUCodeRedeemerController__disableBlur__block_invoke_2;
  v3[3] = &unk_1E81663A8;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v5 animations:v3 completion:0.3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __40__SUCodeRedeemerController__disableBlur__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained visualEffectView];
  [v1 setEffect:0];
}

void __40__SUCodeRedeemerController__disableBlur__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained visualEffectView];
  [v1 setHidden:1];
}

- (void)_enableBlur
{
  v5 = [MEMORY[0x1E69DC730] effectWithStyle:4];
  v3 = [(SUCodeRedeemerController *)self visualEffectView];
  [v3 setEffect:v5];

  v4 = [(SUCodeRedeemerController *)self visualEffectView];
  [v4 setHidden:0];
}

- (void)_setChildViewController:(id)a3
{
  v8 = a3;
  [v8 willMoveToParentViewController:self];
  [(SUCodeRedeemerController *)self addChildViewController:v8];
  v4 = [(SUCodeRedeemerController *)self view];
  v5 = [v8 view];
  [v4 addSubview:v5];

  v6 = [(SUCodeRedeemerController *)self view];
  v7 = [v8 view];
  [v6 sendSubviewToBack:v7];

  [v8 didMoveToParentViewController:self];
}

- (SUCodeRedeemerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end