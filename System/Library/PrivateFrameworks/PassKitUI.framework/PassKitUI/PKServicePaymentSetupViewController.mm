@interface PKServicePaymentSetupViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleError:(id)error completion:(id)completion;
- (void)configureWithPaymentSetupRequest:(id)request completion:(id)completion;
- (void)paymentSetupDidFinish:(id)finish withError:(id)error;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale;
@end

@implementation PKServicePaymentSetupViewController

- (unint64_t)supportedInterfaceOrientations
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v13 = *MEMORY[0x1E69E9840];
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14.width = width;
    v14.height = height;
    v8 = NSStringFromCGSize(v14);
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    scaleCopy = scale;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Setting display properties with screenSize=%{public}@ scale=%.f", &v9, 0x16u);
  }

  PKSetDisplayProperties();
}

- (void)configureWithPaymentSetupRequest:(id)request completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  [(PKServicePaymentSetupViewController *)self _hostAuditToken];
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    v10 = SecTaskCopyValueForEntitlement(v8, *MEMORY[0x1E69B9370], 0);
    if ([v10 BOOLValue])
    {
      CFRelease(v9);

LABEL_5:
      v13 = objc_alloc(MEMORY[0x1E69B8D48]);
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      v15 = [v13 initWithWebService:mEMORY[0x1E69B8EF8] paymentSetupRequest:requestCopy];
      provisioningController = self->_provisioningController;
      self->_provisioningController = v15;

      paymentSetupFeatures = [requestCopy paymentSetupFeatures];
      v18 = [paymentSetupFeatures count];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __83__PKServicePaymentSetupViewController_configureWithPaymentSetupRequest_completion___block_invoke;
      aBlock[3] = &unk_1E8010B00;
      aBlock[4] = self;
      v33 = v18;
      v19 = paymentSetupFeatures;
      v31 = v19;
      v32 = completionCopy;
      v20 = _Block_copy(aBlock);
      v21 = self->_provisioningController;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __83__PKServicePaymentSetupViewController_configureWithPaymentSetupRequest_completion___block_invoke_3;
      v26[3] = &unk_1E8010B00;
      v26[4] = self;
      v27 = v19;
      v28 = v20;
      v29 = v18;
      v22 = v20;
      v23 = v19;
      [(PKPaymentProvisioningController *)v21 preflightWithCompletion:v26];

      goto LABEL_11;
    }

    v11 = SecTaskCopyValueForEntitlement(v9, *MEMORY[0x1E69B9368], 0);
    bOOLValue = [v11 BOOLValue];

    CFRelease(v9);
    if (bOOLValue)
    {
      goto LABEL_5;
    }
  }

  v24 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    _hostApplicationBundleIdentifier = [(PKServicePaymentSetupViewController *)self _hostApplicationBundleIdentifier];
    token.val[0] = 138543362;
    *&token.val[1] = _hostApplicationBundleIdentifier;
    _os_log_error_impl(&dword_1BD026000, v24, OS_LOG_TYPE_ERROR, "%{public}@ missing entitlement", &token, 0xCu);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:0 userInfo:0];
  [(PKServicePaymentSetupViewController *)self paymentSetupDidFinish:0 withError:v23];
LABEL_11:
}

void __83__PKServicePaymentSetupViewController_configureWithPaymentSetupRequest_completion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:*(*(a1 + 32) + 992) context:7];
    [(PKPaymentSetupNavigationController *)v4 setSetupDelegate:*(a1 + 32)];
    if ([*(a1 + 32) pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [(PKNavigationController *)v4 setCustomFormSheetPresentationStyleForiPad];
    }

    else
    {
      [(PKPaymentSetupNavigationController *)v4 setModalPresentationStyle:3];
    }

    [(PKPaymentSetupNavigationController *)v4 setModalTransitionStyle:2];
    if (*(a1 + 56) == 1 && ([*(a1 + 40) firstObject], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, v8 == 3))
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }

    [(PKPaymentSetupNavigationController *)v4 setPaymentSetupMode:v9];
    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__PKServicePaymentSetupViewController_configureWithPaymentSetupRequest_completion___block_invoke_2;
    v11[3] = &unk_1E8010AD8;
    v12 = *(a1 + 48);
    [v10 pk_presentViewController:v4 animated:1 popToViewControllerAfterPresentation:0 completion:v11];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    [v5 _handleError:a3 completion:v6];
  }
}

uint64_t __83__PKServicePaymentSetupViewController_configureWithPaymentSetupRequest_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __83__PKServicePaymentSetupViewController_configureWithPaymentSetupRequest_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(*(a1 + 32) + 992) paymentSetupProductModel];
  v6 = [v5 allSetupProducts];

  if (*(a1 + 56) != 1)
  {
    goto LABEL_6;
  }

  v7 = [*(a1 + 40) firstObject];
  v8 = [v7 identifiers];
  if (!v8)
  {

    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v6 count];

  if (v10 != 1)
  {
LABEL_6:
    (*(*(a1 + 48) + 16))();
    goto LABEL_7;
  }

  v11 = *(*(a1 + 32) + 992);
  v12 = [v6 firstObject];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKServicePaymentSetupViewController_configureWithPaymentSetupRequest_completion___block_invoke_4;
  v13[3] = &unk_1E8010B28;
  v14 = *(a1 + 48);
  [v11 setupProductForProvisioning:v12 includePurchases:1 withCompletionHandler:v13];

LABEL_7:
}

uint64_t __83__PKServicePaymentSetupViewController_configureWithPaymentSetupRequest_completion___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)paymentSetupDidFinish:(id)finish withError:(id)error
{
  v31 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v10 = *MEMORY[0x1E69B9E70];
    v11 = [domain isEqualToString:*MEMORY[0x1E69B9E70]];

    v12 = v8;
    if ((v11 & 1) == 0)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:v10 code:0 userInfo:0];
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v12;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKServicePaymentSetupViewController did show error: %@ (original error: %@)", buf, 0x16u);
  }

  _remoteViewControllerProxy = [(PKServicePaymentSetupViewController *)self _remoteViewControllerProxy];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  provisionedPasses = [(PKPaymentProvisioningController *)self->_provisioningController provisionedPasses];
  v17 = [provisionedPasses countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(provisionedPasses);
        }

        secureElementPass = [*(*(&v22 + 1) + 8 * i) secureElementPass];
        if (secureElementPass)
        {
          [v15 addObject:secureElementPass];
        }
      }

      v18 = [provisionedPasses countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  [_remoteViewControllerProxy didFinishWithPasses:v15 error:v8];
}

- (void)_handleError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  if (!errorCopy)
  {
    errorCopy = PKDisplayableErrorForCommonType();
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKServicePaymentSetupViewController__handleError_completion___block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = PKAlertForDisplayableErrorWithHandlers(errorCopy, 0, v8, v8);
  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__PKServicePaymentSetupViewController__handleError_completion___block_invoke_2;
    v10[3] = &unk_1E8010B50;
    v11 = completionCopy;
    [(PKServicePaymentSetupViewController *)self presentViewController:v9 animated:1 completion:v10];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __63__PKServicePaymentSetupViewController__handleError_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:0 userInfo:0];
  [v1 paymentSetupDidFinish:0 withError:v2];
}

uint64_t __63__PKServicePaymentSetupViewController__handleError_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

@end