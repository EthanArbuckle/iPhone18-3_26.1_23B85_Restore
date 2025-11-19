@interface SUCreditCardReaderViewController
- (void)_cancelButtonPressed;
- (void)_returnCameraOutput:(id)a3 error:(id)a4;
- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4;
- (void)cameraReaderDidEnd:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SUCreditCardReaderViewController

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = SUCreditCardReaderViewController;
  [(SUCreditCardReaderViewController *)&v20 viewDidLoad];
  v3 = [(SUCreditCardReaderViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed];
  v6 = [(SUCreditCardReaderViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__cancelButtonPressed];
  v8 = [(SUCreditCardReaderViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  if ([objc_opt_class() cameraSupported])
  {
    v9 = objc_alloc_init(MEMORY[0x1E6999018]);
    cameraController = self->cameraController;
    self->cameraController = v9;

    [(CRCameraReader *)self->cameraController setHidePlacementText:1];
    [(CRCameraReader *)self->cameraController setDelegate:self];
    v11 = self->cameraController;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6999000], *MEMORY[0x1E6998FF0], *MEMORY[0x1E6998FF8], 0}];
    [(CRCameraReader *)v11 setOutputObjectTypes:v12];

    [(SUCreditCardReaderViewController *)self addChildViewController:self->cameraController];
    [(CRCameraReader *)self->cameraController didMoveToParentViewController:self];
    v13 = [(SUCreditCardReaderViewController *)self view];
    v14 = [(CRCameraReader *)self->cameraController view];
    [v13 addSubview:v14];
  }

  v15 = [SUCreditCardReaderInfoView alloc];
  v16 = [(SUCreditCardReaderInfoView *)v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  captureInfoView = self->captureInfoView;
  self->captureInfoView = v16;

  v18 = [(SUCreditCardReaderViewController *)self view];
  [v18 addSubview:self->captureInfoView];

  v19 = [(SUCreditCardReaderViewController *)self view];
  [v19 bringSubviewToFront:self->captureInfoView];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SUCreditCardReaderViewController;
  [(SUCreditCardReaderViewController *)&v5 viewDidDisappear:a3];
  [(CRCameraReader *)self->cameraController setDelegate:0];
  [(CRCameraReader *)self->cameraController cancel];
  [(CRCameraReader *)self->cameraController willMoveToParentViewController:0];
  v4 = [(CRCameraReader *)self->cameraController view];
  [v4 removeFromSuperview];

  [(CRCameraReader *)self->cameraController removeFromParentViewController];
}

- (void)viewDidLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = SUCreditCardReaderViewController;
  [(SUCreditCardReaderViewController *)&v21 viewDidLayoutSubviews];
  v3 = [(SUCreditCardReaderViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v11 * 0.66;
  v13 = [(CRCameraReader *)self->cameraController view];
  [v13 setFrame:{v5, v7, v9, v12}];

  v14 = [(SUCreditCardReaderViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(SUCreditCardReaderInfoView *)self->captureInfoView setFrame:v16, v12, v18, v20 - v12];
}

- (void)didReceiveMemoryWarning
{
  v6.receiver = self;
  v6.super_class = SUCreditCardReaderViewController;
  [(SUCreditCardReaderViewController *)&v6 didReceiveMemoryWarning];
  if ([(SUCreditCardReaderViewController *)self isViewLoaded])
  {
    v3 = [(SUCreditCardReaderViewController *)self view];
    v4 = [v3 window];

    if (!v4)
    {
      [(SUCreditCardReaderViewController *)self setView:0];
      cameraController = self->cameraController;
      self->cameraController = 0;
    }
  }
}

- (void)_cancelButtonPressed
{
  v3 = objc_opt_new();
  [v3 setCancelled:1];
  [(SUCreditCardReaderViewController *)self _returnCameraOutput:v3 error:0];
}

- (void)_returnCameraOutput:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 setError:v7];
  if (v7)
  {
    v8 = [MEMORY[0x1E69D4938] sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *location = 138543618;
      *&location[4] = objc_opt_class();
      v21 = 2114;
      v22 = v7;
      v12 = *&location[4];
      LODWORD(v16) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_11:

        goto LABEL_12;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, location, v16}];
      free(v13);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  objc_initWeak(location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SUCreditCardReaderViewController__returnCameraOutput_error___block_invoke;
  block[3] = &unk_1E8164948;
  objc_copyWeak(&v19, location);
  v18 = v6;
  v14 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  pendingOutput = self->pendingOutput;
  self->pendingOutput = 0;

  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
}

void __62__SUCreditCardReaderViewController__returnCameraOutput_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained completionBlock];

  if (v3)
  {
    v4 = [WeakRetained completionBlock];
    v4[2](v4, *(a1 + 32));
  }

  v5 = *(a1 + 32);
  if (!v5 || ([v5 manualEntrySelected] & 1) != 0 || (objc_msgSend(*(a1 + 32), "cancelled") & 1) != 0)
  {
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v6 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SUCreditCardReaderViewController__returnCameraOutput_error___block_invoke_2;
    block[3] = &unk_1E8164920;
    objc_copyWeak(&v8, (a1 + 40));
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v8);
  }
}

void __62__SUCreditCardReaderViewController__returnCameraOutput_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4
{
  v28 = self;
  v35 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = *MEMORY[0x1E6999000];
    v10 = *MEMORY[0x1E6998FF0];
    v11 = *MEMORY[0x1E6998FF8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [v13 type];
        v15 = [v14 isEqual:v9];

        if (v15)
        {
          v16 = [v13 stringValue];
          [(SUCreditCardReaderOutput *)v5 setCardNumber:v16];
        }

        v17 = [v13 type];
        v18 = [v17 isEqual:v10];

        if (v18)
        {
          v19 = [v13 stringValue];
          [(SUCreditCardReaderOutput *)v5 setCardCardholderName:v19];
        }

        v20 = [v13 type];
        v21 = [v20 isEqual:v11];

        if (v21)
        {
          v22 = v13;
          v23 = [v22 dayValue];
          [(SUCreditCardReaderOutput *)v5 setCardExpirationDay:v23];

          v24 = [v22 monthValue];
          [(SUCreditCardReaderOutput *)v5 setCardExpirationMonth:v24];

          v25 = [v22 yearValue];
          [(SUCreditCardReaderOutput *)v5 setCardExpirationYear:v25];

          v26 = [v22 stringValue];
          [(SUCreditCardReaderOutput *)v5 setCardExpirationStringValue:v26];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  pendingOutput = v28->pendingOutput;
  v28->pendingOutput = v5;
}

- (void)cameraReaderDidEnd:(id)a3
{
  pendingOutput = self->pendingOutput;
  if (pendingOutput)
  {
    [(SUCreditCardReaderViewController *)self _returnCameraOutput:pendingOutput error:0];
  }
}

@end