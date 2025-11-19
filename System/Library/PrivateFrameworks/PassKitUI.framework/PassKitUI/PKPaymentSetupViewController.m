@interface PKPaymentSetupViewController
+ (void)paymentSetupFeaturesForConfiguration:(id)a3 completion:(id)a4;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)result;
- (PKPaymentSetupRequestViewControllerDelegate)delegate;
- (PKPaymentSetupViewController)initWithPaymentSetupRequest:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelTapped;
- (void)_hideLoadingContent;
- (void)_setRemoteVC:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)didFinishWithPasses:(id)a3 error:(id)a4;
- (void)loadView;
- (void)setPresentationStyle:(int64_t)a3;
- (void)updateModalPresentationStyle;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PKPaymentSetupViewController

+ (void)paymentSetupFeaturesForConfiguration:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_group_create();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__1;
  v30[4] = __Block_byref_object_dispose__1;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__1;
  v28[4] = __Block_byref_object_dispose__1;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__1;
  v26[4] = __Block_byref_object_dispose__1;
  v27 = 0;
  v8 = [MEMORY[0x1E69B8A58] sharedInstanceWithRemoteLibrary];
  v9 = [v8 _remoteLibrary];

  if (v9)
  {
    dispatch_group_enter(v7);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__PKPaymentSetupViewController_paymentSetupFeaturesForConfiguration_completion___block_invoke;
    v22[3] = &unk_1E8012B88;
    v24 = v30;
    v25 = v28;
    v23 = v7;
    [v9 paymentSetupFeaturesForConfiguration:v5 completion:v22];
  }

  dispatch_group_enter(v7);
  v10 = [MEMORY[0x1E69B8A58] sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__PKPaymentSetupViewController_paymentSetupFeaturesForConfiguration_completion___block_invoke_2;
  v19[3] = &unk_1E8012BB0;
  v21 = v26;
  v11 = v7;
  v20 = v11;
  [v10 paymentSetupFeaturesForConfiguration:v5 completion:v19];

  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKPaymentSetupViewController_paymentSetupFeaturesForConfiguration_completion___block_invoke_3;
  block[3] = &unk_1E8012BD8;
  v15 = v6;
  v16 = v30;
  v17 = v28;
  v18 = v26;
  v13 = v6;
  dispatch_group_notify(v11, v12, block);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);

  _Block_object_dispose(v30, 8);
}

void __80__PKPaymentSetupViewController_paymentSetupFeaturesForConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        v16 = [v15 identifiers];
        if (v16)
        {
          [*(*(*(a1 + 40) + 8) + 40) setObject:v15 forKey:v16];
        }

        else
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __80__PKPaymentSetupViewController_paymentSetupFeaturesForConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __80__PKPaymentSetupViewController_paymentSetupFeaturesForConfiguration_completion___block_invoke_3(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if ([*(*(a1[5] + 8) + 40) count] || objc_msgSend(*(*(a1[6] + 8) + 40), "count"))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v3 = *(*(a1[7] + 8) + 40);
    v4 = [v3 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v37;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v37 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v36 + 1) + 8 * i);
          v9 = [v8 identifiers];
          if (v9 && ([*(*(a1[5] + 8) + 40) objectForKey:v9], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
          {
            [v8 setSupportedDevices:3];
            [*(*(a1[5] + 8) + 40) removeObjectForKey:v9];
          }

          else
          {
            if ([*(*(a1[6] + 8) + 40) containsObject:v8])
            {
              [*(*(a1[6] + 8) + 40) removeObject:v8];
              v11 = v8;
              v12 = 3;
            }

            else
            {
              v11 = v8;
              v12 = 1;
            }

            [v11 setSupportedDevices:v12];
          }

          [v2 addObject:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v5);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = [*(*(a1[5] + 8) + 40) allValues];
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * j);
          [v18 setSupportedDevices:2];
          [v2 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v15);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = [*(*(a1[6] + 8) + 40) allObjects];
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v28 + 1) + 8 * k);
          [v24 setSupportedDevices:2];
          [v2 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v21);
    }

    v25 = a1[4];
    v26 = [v2 copy];
    (*(v25 + 16))(v25, v26);
  }

  else
  {
    v27 = *(a1[4] + 16);

    v27();
  }
}

- (PKPaymentSetupViewController)initWithPaymentSetupRequest:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PKPaymentSetupViewController;
  v6 = [(PKPaymentSetupViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentSetupRequest, a3);
    v7->_explicitPresentationStyle = 0;
    objc_initWeak(&location, v7);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PKPaymentSetupViewController_initWithPaymentSetupRequest___block_invoke;
    v11[3] = &unk_1E8012C00;
    objc_copyWeak(&v12, &location);
    v8 = [PKRemotePaymentSetupViewController requestViewController:@"PKServicePaymentSetupViewController" fromServiceWithBundleIdentifier:@"com.apple.PassbookUIService" connectionHandler:v11];
    remoteVCRequest = v7->_remoteVCRequest;
    v7->_remoteVCRequest = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __60__PKPaymentSetupViewController_initWithPaymentSetupRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 126);
    *(WeakRetained + 126) = 0;

    if (v5)
    {
      [v8 _setRemoteVC:v5 completionHandler:0];
    }

    else
    {
      if (v6)
      {
        v12 = *MEMORY[0x1E696AA08];
        v13[0] = v6;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      }

      else
      {
        v10 = 0;
      }

      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:0 userInfo:v10];
      [v8 didFinishWithPasses:0 error:v11];
    }
  }
}

- (void)dealloc
{
  remoteVCRequest = self->_remoteVCRequest;
  if (remoteVCRequest)
  {
    v4 = [(_UIAsyncInvocation *)remoteVCRequest invoke];
    v5 = self->_remoteVCRequest;
    self->_remoteVCRequest = 0;
  }

  v6.receiver = self;
  v6.super_class = PKPaymentSetupViewController;
  [(PKPaymentSetupViewController *)&v6 dealloc];
}

- (void)_setRemoteVC:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_remoteVC, a3);
  [(PKPaymentSetupViewController *)self addChildViewController:self->_remoteVC];
  v9 = [(PKRemotePaymentSetupViewController *)self->_remoteVC view];
  v10 = [(PKPaymentSetupViewController *)self view];
  [v10 addSubview:v9];
  [v10 setNeedsLayout];
  [v10 layoutIfNeeded];
  [v9 setUserInteractionEnabled:0];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKPaymentSetupViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PKPaymentSetupViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  remoteVC = self->_remoteVC;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__PKPaymentSetupViewController__setRemoteVC_completionHandler___block_invoke;
  v27[3] = &unk_1E8012C28;
  v12 = v8;
  v28 = v12;
  v13 = [(_UIRemoteViewController *)remoteVC serviceViewControllerProxyWithErrorHandler:v27];
  if (v13)
  {
    v14 = [MEMORY[0x1E69DCEB0] mainScreen];
    v15 = [v14 fixedCoordinateSpace];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    [v14 scale];
    [v13 setDisplayPropertiesWithScreenSize:v17 scale:{v19, v20}];

    objc_initWeak(&location, self);
    paymentSetupRequest = self->_paymentSetupRequest;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63__PKPaymentSetupViewController__setRemoteVC_completionHandler___block_invoke_3;
    v22[3] = &unk_1E8010F30;
    objc_copyWeak(&v25, &location);
    v24 = v12;
    v23 = v9;
    [v13 configureWithPaymentSetupRequest:paymentSetupRequest completion:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else if (v12)
  {
    v12[2](v12);
  }
}

void __63__PKPaymentSetupViewController__setRemoteVC_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PKPaymentSetupViewController__setRemoteVC_completionHandler___block_invoke_2;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __63__PKPaymentSetupViewController__setRemoteVC_completionHandler___block_invoke_3(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPaymentSetupViewController__setRemoteVC_completionHandler___block_invoke_4;
  block[3] = &unk_1E8011108;
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[5];
  v3 = a1[4];
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v5);
}

void __63__PKPaymentSetupViewController__setRemoteVC_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 32) setUserInteractionEnabled:1];
    [WeakRetained _hideLoadingContent];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)setPresentationStyle:(int64_t)a3
{
  if (self->_presentationStyle != a3 || !self->_explicitPresentationStyle)
  {
    self->_presentationStyle = 2 * (a3 == 2);
    self->_explicitPresentationStyle = 1;
    [(PKPaymentSetupViewController *)self updateModalPresentationStyle];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupViewController;
  [(PKPaymentSetupViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(PKPaymentSetupViewController *)self updateModalPresentationStyle];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupViewController;
  [(PKPaymentSetupViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(PKPaymentSetupViewController *)self updateModalPresentationStyle];
}

- (void)updateModalPresentationStyle
{
  v3 = [(PKPaymentSetupViewController *)self view];
  v10 = [v3 window];

  v4 = v10;
  if (v10)
  {
    v5 = [v10 windowScene];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 interfaceOrientation];
      if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
      {
        v8 = self;
        presentationStyle = 16;
      }

      else if ((v7 - 3) >= 2 && self->_explicitPresentationStyle)
      {
        presentationStyle = self->_presentationStyle;
        v8 = self;
      }

      else
      {
        v8 = self;
        presentationStyle = 0;
      }

      [(PKPaymentSetupViewController *)v8 setModalPresentationStyle:presentationStyle];
    }

    v4 = v10;
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  remoteVC = self->_remoteVC;
  if (remoteVC)
  {
    return [(_UIRemoteViewController *)remoteVC supportedInterfaceOrientations];
  }

  else
  {
    return 2;
  }
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)result
{
  if (self->_remoteVC != a3)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = PKPaymentSetupViewController;
    [(PKPaymentSetupViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (void)loadView
{
  v26.receiver = self;
  v26.super_class = PKPaymentSetupViewController;
  [(PKPaymentSetupViewController *)&v26 loadView];
  v3 = [(PKPaymentSetupViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v5;

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  [v3 addSubview:self->_spinner];
  v7 = objc_alloc(MEMORY[0x1E69DCC10]);
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  loadingLabel = self->_loadingLabel;
  self->_loadingLabel = v8;

  v10 = self->_loadingLabel;
  v11 = PKLocalizedString(&cfstr_Loading_1.isa);
  [(UILabel *)v10 setText:v11];

  [v3 addSubview:self->_loadingLabel];
  v12 = MEMORY[0x1E69DC740];
  v13 = PKLocalizedString(&cfstr_Cancel.isa);
  v14 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  v15 = [v12 pkui_plainConfigurationWithTitle:v13 font:v14];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69DC628];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __40__PKPaymentSetupViewController_loadView__block_invoke;
  v23 = &unk_1E8010A60;
  objc_copyWeak(&v24, &location);
  v17 = [v16 actionWithHandler:&v20];
  v18 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v15 primaryAction:{v17, v20, v21, v22, v23}];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v18;

  [(UIButton *)self->_cancelButton setConfigurationUpdateHandler:&__block_literal_global_23];
  [v3 addSubview:self->_cancelButton];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __40__PKPaymentSetupViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelTapped];
}

- (void)viewWillLayoutSubviews
{
  v29.receiver = self;
  v29.super_class = PKPaymentSetupViewController;
  [(PKPaymentSetupViewController *)&v29 viewWillLayoutSubviews];
  v3 = [(PKPaymentSetupViewController *)self view];
  v4 = [(PKRemotePaymentSetupViewController *)self->_remoteVC view];
  [v3 bounds];
  [v4 setFrame:?];

  [v3 bounds];
  v6 = v5;
  v28 = v7;
  [(UIActivityIndicatorView *)self->_spinner frame];
  [v3 center];
  UIRectCenteredAboutPoint();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIActivityIndicatorView *)self->_spinner setFrame:?];
  [(UILabel *)self->_loadingLabel sizeToFit];
  [(UILabel *)self->_loadingLabel frame];
  UIRectCenteredXInRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  [(UILabel *)self->_loadingLabel setFrame:v17, CGRectGetMaxY(v30) + 10.0, v19, v21];
  [(UIButton *)self->_cancelButton sizeToFit];
  [(UIButton *)self->_cancelButton frame];
  v23 = v22;
  v25 = v24;
  v26 = [(PKPaymentSetupViewController *)self modalPresentationStyle];
  v27 = 50.0;
  if (v26)
  {
    v27 = 10.0;
  }

  [(UIButton *)self->_cancelButton setFrame:v6 + 10.0, v28 + v27, v23, v25];
}

- (void)_hideLoadingContent
{
  [(UIButton *)self->_cancelButton removeFromSuperview];
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  loadingLabel = self->_loadingLabel;

  [(UILabel *)loadingLabel removeFromSuperview];
}

- (void)_cancelTapped
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
  [(PKPaymentSetupViewController *)self didFinishWithPasses:0 error:v3];
}

- (void)didFinishWithPasses:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupViewController did finish with passes: %@ error: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 paymentSetupViewController:self didFinishAddingPaymentPasses:v6 error:v7];
    }
  }

  v14 = [(PKPaymentSetupViewController *)self presentingViewController];
  v15 = v14;
  if (v14)
  {
    [v14 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v16 = [(PKPaymentSetupViewController *)self navigationController];
    v17 = [v16 popViewControllerAnimated:1];
  }
}

- (PKPaymentSetupRequestViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end