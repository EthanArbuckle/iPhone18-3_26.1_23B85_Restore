@interface PXConfidentialityWarningViewController
- (void)_handleButton:(id)button;
- (void)presentAsOverlayInWindowScene:(id)scene;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PXConfidentialityWarningViewController

- (void)_handleButton:(id)button
{
  buttonCopy = button;
  if ([buttonCopy tag] == 2)
  {
    cancellationHandler = [(PXConfidentialityWarningViewController *)self cancellationHandler];
    if (!cancellationHandler)
    {
      exit(1);
    }

    v5 = cancellationHandler;
    [(PXConfidentialityWarningViewController *)self setCancellationHandler:0];
    v5[2](v5);
  }

  rootViewController = [overlayWindow rootViewController];

  if (rootViewController == self)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    windows = [mEMORY[0x1E69DC668] windows];
    firstObject = [windows firstObject];
    [firstObject makeKeyAndVisible];

    [overlayWindow setHidden:1];
    [overlayWindow setRootViewController:0];
  }

  else
  {
    [(PXConfidentialityWarningViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)presentAsOverlayInWindowScene:(id)scene
{
  v4 = overlayWindow;
  if (!overlayWindow)
  {
    v5 = MEMORY[0x1E69DD2E8];
    sceneCopy = scene;
    v7 = [[v5 alloc] initWithWindowScene:sceneCopy];

    v8 = overlayWindow;
    overlayWindow = v7;

    [overlayWindow setWindowLevel:*MEMORY[0x1E69DE7D8]];
    v4 = overlayWindow;
  }

  [v4 setRootViewController:self];
  [overlayWindow setHidden:0];
  v9 = overlayWindow;

  [v9 makeKeyAndVisible];
}

- (void)viewWillLayoutSubviews
{
  v37.receiver = self;
  v37.super_class = PXConfidentialityWarningViewController;
  [(PXConfidentialityWarningViewController *)&v37 viewWillLayoutSubviews];
  view = [(PXConfidentialityWarningViewController *)self view];
  [view bounds];
  v5 = v4;
  v33 = v6;
  v34 = v4;
  v7 = v6;
  v9 = v8;
  v31 = v10;
  v32 = v8;
  v11 = v10;

  v38.origin.x = v5;
  v38.origin.y = v7;
  v38.size.width = v9;
  v38.size.height = v11;
  v39 = CGRectInset(v38, 20.0, 20.0);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PXConfidentialityWarningViewController_viewWillLayoutSubviews__block_invoke;
  aBlock[3] = &__block_descriptor_64_e18_d16__0__UIButton_8l;
  v36 = v39;
  v16 = _Block_copy(aBlock);
  confirmButton = [(PXConfidentialityWarningViewController *)self confirmButton];
  v18 = v16[2](v16, confirmButton);

  cancelButton = [(PXConfidentialityWarningViewController *)self cancelButton];
  v20 = v16[2](v16, cancelButton);

  if (v18 >= v20)
  {
    v20 = v18;
  }

  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = v20;
  v22 = MaxY - CGRectGetHeight(v41);
  v42.origin.x = x;
  v42.origin.y = v22;
  v42.size.width = width;
  v42.size.height = v20;
  v23 = CGRectGetMinY(v42) + -20.0;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = v20;
  v24 = v23 - CGRectGetHeight(v43);
  v44.origin.x = x;
  v44.origin.y = v24;
  v44.size.width = width;
  v44.size.height = v20;
  v25 = CGRectGetMinY(v44) + -20.0;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v26 = v25 - CGRectGetMinY(v45);
  effectView = [(PXConfidentialityWarningViewController *)self effectView];
  [effectView setFrame:{v34, v33, v32, v31}];

  messageLabel = [(PXConfidentialityWarningViewController *)self messageLabel];
  [messageLabel setFrame:{x, y, width, v26}];

  confirmButton2 = [(PXConfidentialityWarningViewController *)self confirmButton];
  [confirmButton2 setFrame:{x, v24, width, v20}];

  cancelButton2 = [(PXConfidentialityWarningViewController *)self cancelButton];
  [cancelButton2 setFrame:{x, v22, width, v20}];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = PXConfidentialityWarningViewController;
  [(PXConfidentialityWarningViewController *)&v19 viewDidLoad];
  view = [(PXConfidentialityWarningViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD298]);
  v5 = [MEMORY[0x1E69DC730] effectWithStyle:0];
  v6 = [v4 initWithEffect:v5];
  effectView = self->_effectView;
  self->_effectView = v6;

  [view addSubview:self->_effectView];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  messageLabel = self->_messageLabel;
  self->_messageLabel = v8;

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
  [(UILabel *)self->_messageLabel setFont:v10];

  [(UILabel *)self->_messageLabel setText:@"Confidential UI Warning\n\nMake sure that every person around you is appropriately disclosed."];
  [(UILabel *)self->_messageLabel setNumberOfLines:0];
  [(UILabel *)self->_messageLabel setTextAlignment:1];
  [view addSubview:self->_messageLabel];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__PXConfidentialityWarningViewController_viewDidLoad__block_invoke;
  v17[3] = &unk_1E773E998;
  v17[4] = self;
  v18 = view;
  v11 = view;
  v12 = _Block_copy(v17);
  v13 = v12[2](v12, @"Continue with Confidential UI", 1);
  confirmButton = self->_confirmButton;
  self->_confirmButton = v13;

  v15 = v12[2](v12, @"Cancel", 2);
  cancelButton = self->_cancelButton;
  self->_cancelButton = v15;
}

id __53__PXConfidentialityWarningViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69DC738];
  v6 = a2;
  v7 = [v5 buttonWithType:1];
  [v7 setTag:a3];
  [v7 setTitle:v6 forState:0];

  [v7 addTarget:*(a1 + 32) action:sel__handleButton_ forControlEvents:0x2000];
  [*(a1 + 40) addSubview:v7];

  return v7;
}

@end