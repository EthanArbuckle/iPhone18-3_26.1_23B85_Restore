@interface SUCreditCardReaderViewController
- (void)_cancelButtonPressed;
- (void)_returnCameraOutput:(id)output error:(id)error;
- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects;
- (void)cameraReaderDidEnd:(id)end;
- (void)didReceiveMemoryWarning;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SUCreditCardReaderViewController

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = SUCreditCardReaderViewController;
  [(SUCreditCardReaderViewController *)&v20 viewDidLoad];
  view = [(SUCreditCardReaderViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed];
  navigationItem = [(SUCreditCardReaderViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v5];

  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__cancelButtonPressed];
  navigationItem2 = [(SUCreditCardReaderViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v7];

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
    view2 = [(SUCreditCardReaderViewController *)self view];
    view3 = [(CRCameraReader *)self->cameraController view];
    [view2 addSubview:view3];
  }

  v15 = [SUCreditCardReaderInfoView alloc];
  v16 = [(SUCreditCardReaderInfoView *)v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  captureInfoView = self->captureInfoView;
  self->captureInfoView = v16;

  view4 = [(SUCreditCardReaderViewController *)self view];
  [view4 addSubview:self->captureInfoView];

  view5 = [(SUCreditCardReaderViewController *)self view];
  [view5 bringSubviewToFront:self->captureInfoView];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SUCreditCardReaderViewController;
  [(SUCreditCardReaderViewController *)&v5 viewDidDisappear:disappear];
  [(CRCameraReader *)self->cameraController setDelegate:0];
  [(CRCameraReader *)self->cameraController cancel];
  [(CRCameraReader *)self->cameraController willMoveToParentViewController:0];
  view = [(CRCameraReader *)self->cameraController view];
  [view removeFromSuperview];

  [(CRCameraReader *)self->cameraController removeFromParentViewController];
}

- (void)viewDidLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = SUCreditCardReaderViewController;
  [(SUCreditCardReaderViewController *)&v21 viewDidLayoutSubviews];
  view = [(SUCreditCardReaderViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v11 * 0.66;
  view2 = [(CRCameraReader *)self->cameraController view];
  [view2 setFrame:{v5, v7, v9, v12}];

  view3 = [(SUCreditCardReaderViewController *)self view];
  [view3 bounds];
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
    view = [(SUCreditCardReaderViewController *)self view];
    window = [view window];

    if (!window)
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

- (void)_returnCameraOutput:(id)output error:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  errorCopy = error;
  [outputCopy setError:errorCopy];
  if (errorCopy)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *location = 138543618;
      *&location[4] = objc_opt_class();
      v21 = 2114;
      v22 = errorCopy;
      v12 = *&location[4];
      LODWORD(v16) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_11:

        goto LABEL_12;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, location, v16}];
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
  v18 = outputCopy;
  v14 = outputCopy;
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

- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects
{
  selfCopy = self;
  v35 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v5 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = objectsCopy;
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
        type = [v13 type];
        v15 = [type isEqual:v9];

        if (v15)
        {
          stringValue = [v13 stringValue];
          [(SUCreditCardReaderOutput *)v5 setCardNumber:stringValue];
        }

        type2 = [v13 type];
        v18 = [type2 isEqual:v10];

        if (v18)
        {
          stringValue2 = [v13 stringValue];
          [(SUCreditCardReaderOutput *)v5 setCardCardholderName:stringValue2];
        }

        type3 = [v13 type];
        v21 = [type3 isEqual:v11];

        if (v21)
        {
          v22 = v13;
          dayValue = [v22 dayValue];
          [(SUCreditCardReaderOutput *)v5 setCardExpirationDay:dayValue];

          monthValue = [v22 monthValue];
          [(SUCreditCardReaderOutput *)v5 setCardExpirationMonth:monthValue];

          yearValue = [v22 yearValue];
          [(SUCreditCardReaderOutput *)v5 setCardExpirationYear:yearValue];

          stringValue3 = [v22 stringValue];
          [(SUCreditCardReaderOutput *)v5 setCardExpirationStringValue:stringValue3];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  pendingOutput = selfCopy->pendingOutput;
  selfCopy->pendingOutput = v5;
}

- (void)cameraReaderDidEnd:(id)end
{
  pendingOutput = self->pendingOutput;
  if (pendingOutput)
  {
    [(SUCreditCardReaderViewController *)self _returnCameraOutput:pendingOutput error:0];
  }
}

@end