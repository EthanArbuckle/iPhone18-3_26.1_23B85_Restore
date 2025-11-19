@interface PKAccountDebugViewController
- (PKAccountDebugViewController)initWithConfiguration:(id)a3;
- (void)_handleShareButton:(id)a3;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountDebugViewController

- (PKAccountDebugViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountDebugViewController;
  v6 = [(PKAccountDebugViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v8 = [[_PKAccountDebugViewController alloc] initWithConfiguration:v5];
    viewController = v7->_viewController;
    v7->_viewController = v8;

    [(PKAccountDebugViewController *)v7 addChildViewController:v7->_viewController];
    v10 = [(PKAccountDebugViewController *)v7 navigationItem];
    [v10 setTitle:@"Account Diagnostics"];
    [v10 setLargeTitleDisplayMode:2];
    [v10 setBackButtonDisplayMode:2];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v7 action:sel__handleShareButton_];
    [v10 setRightBarButtonItem:v11];
  }

  return v7;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKAccountDebugViewController;
  [(PKAccountDebugViewController *)&v5 loadView];
  [(_PKAccountDebugViewController *)self->_viewController didMoveToParentViewController:self];
  v3 = [(_PKAccountDebugViewController *)self->_viewController view];
  v4 = [(PKAccountDebugViewController *)self view];
  [v4 addSubview:v3];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PKAccountDebugViewController;
  [(PKAccountDebugViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(PKAccountDebugViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(_PKAccountDebugViewController *)self->_viewController view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)_handleShareButton:(id)a3
{
  v4 = [(PKAccountDebugViewController *)self navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:0];

  v6 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(PKAccountViewInterfaceConfiguration *)self->_config account];
  v9 = [v8 accountIdentifier];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"account_transaction_report_%@.json", v9];
  v12 = [v7 temporaryDirectory];
  v13 = [v12 URLByAppendingPathComponent:v11];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51__PKAccountDebugViewController__handleShareButton___block_invoke;
  v27[3] = &unk_1E8015210;
  v27[4] = self;
  v14 = v7;
  v28 = v14;
  v15 = v13;
  v29 = v15;
  v16 = v10;
  v30 = v16;
  [v6 addOperation:v27];
  v17 = [MEMORY[0x1E695DFB0] null];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __51__PKAccountDebugViewController__handleShareButton___block_invoke_2;
  v22[3] = &unk_1E8020910;
  v23 = v16;
  v24 = v14;
  v25 = v15;
  v26 = self;
  v18 = v15;
  v19 = v14;
  v20 = v16;
  v21 = [v6 evaluateWithInput:v17 completion:v22];
}

void __51__PKAccountDebugViewController__handleShareButton___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E696ACB0];
  v8 = [*(*(a1 + 32) + 992) dictionaryRepresentation];
  v9 = [v7 dataWithJSONObject:v8 options:0 error:0];

  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) path];
  LODWORD(v10) = [v10 createFileAtPath:v11 contents:v9 attributes:0];

  if (v10)
  {
    [*(a1 + 56) addObject:*(a1 + 48)];
  }

  v6[2](v6, v12, 0);
}

void __51__PKAccountDebugViewController__handleShareButton___block_invoke_2(id *a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PKAccountDebugViewController__handleShareButton___block_invoke_3;
  v7[3] = &unk_1E8011C98;
  v2 = a1 + 7;
  v3 = a1[4];
  v4 = a1[5];
  *&v5 = a1[6];
  *(&v5 + 1) = *v2;
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __51__PKAccountDebugViewController__handleShareButton___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItems:*(a1 + 32) applicationActivities:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PKAccountDebugViewController__handleShareButton___block_invoke_4;
  v8[3] = &unk_1E8013568;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  [v2 setCompletionWithItemsHandler:v8];
  v3 = [v2 popoverPresentationController];
  v4 = [*(a1 + 56) navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v3 setBarButtonItem:v5];

  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PKAccountDebugViewController__handleShareButton___block_invoke_5;
  v7[3] = &unk_1E8010970;
  v7[4] = v6;
  [v6 presentViewController:v2 animated:1 completion:v7];
}

void __51__PKAccountDebugViewController__handleShareButton___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  v1 = [v2 rightBarButtonItem];
  [v1 setEnabled:1];
}

@end