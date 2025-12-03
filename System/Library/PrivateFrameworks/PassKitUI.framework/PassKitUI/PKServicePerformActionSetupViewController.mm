@interface PKServicePerformActionSetupViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithPassUniqueIdentifier:(id)identifier actionType:(unint64_t)type completion:(id)completion;
- (void)dismiss;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale;
@end

@implementation PKServicePerformActionSetupViewController

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

- (void)configureWithPassUniqueIdentifier:(id)identifier actionType:(unint64_t)type completion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  [(PKServicePerformActionSetupViewController *)self _hostAuditToken];
  v10 = SecTaskCreateWithAuditToken(0, &token);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = SecTaskCopyValueForEntitlement(v10, *MEMORY[0x1E69B9370], 0);
  if (![v12 BOOLValue])
  {
    v13 = SecTaskCopyValueForEntitlement(v11, *MEMORY[0x1E69B9368], 0);
    bOOLValue = [v13 BOOLValue];

    CFRelease(v11);
    if (bOOLValue)
    {
      goto LABEL_5;
    }

LABEL_16:
    v27 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      _hostApplicationBundleIdentifier = [(PKServicePerformActionSetupViewController *)self _hostApplicationBundleIdentifier];
      token.val[0] = 138543362;
      *&token.val[1] = _hostApplicationBundleIdentifier;
      _os_log_error_impl(&dword_1BD026000, v27, OS_LOG_TYPE_ERROR, "%{public}@ missing entitlement", &token, 0xCu);
      goto LABEL_38;
    }

LABEL_17:

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    [(PKServicePerformActionSetupViewController *)self dismiss];
    goto LABEL_36;
  }

  CFRelease(v11);

LABEL_5:
  mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
  v16 = [mEMORY[0x1E69B8A58] passWithUniqueID:identifierCopy];
  paymentPass = [v16 paymentPass];

  if (!paymentPass)
  {
    mEMORY[0x1E69B8A58]2 = [MEMORY[0x1E69B8A58] sharedInstanceWithRemoteLibrary];
    _remoteLibrary = [mEMORY[0x1E69B8A58]2 _remoteLibrary];
    v20 = [_remoteLibrary passWithUniqueID:identifierCopy];
    paymentPass = [v20 paymentPass];

    if (!paymentPass)
    {
      v27 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        _hostApplicationBundleIdentifier = PKPaymentPassActionTypeToString();
        token.val[0] = 138412290;
        *&token.val[1] = _hostApplicationBundleIdentifier;
        _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "No payment pass to perform top up action %@", &token, 0xCu);
LABEL_38:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  [paymentPass availableActions];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = v49 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v47;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v46 + 1) + 8 * i);
        if ([v26 type] == type)
        {
          v44 = 0;
          v45 = 0;
          v28 = [paymentPass canPerformAction:v26 unableReason:&v45 displayableError:&v44];
          v29 = v44;
          if ((v28 & 1) != 0 || v45 == 2)
          {
            if ([v26 hasExternalActionContent])
            {
              externalActionContent = [v26 externalActionContent];
              title = [v26 title];
              v43[0] = MEMORY[0x1E69E9820];
              v43[1] = 3221225472;
              v43[2] = __101__PKServicePerformActionSetupViewController_configureWithPassUniqueIdentifier_actionType_completion___block_invoke;
              v43[3] = &unk_1E8014560;
              v43[4] = self;
              PKPaymentPassActionPerformExternalActionContent(paymentPass, externalActionContent, title, v43);
            }

            else
            {
              v37 = [[PKPerformActionViewController alloc] initWithPass:paymentPass action:v26];
              [(PKPerformActionViewController *)v37 setDelegate:self];
              v38 = objc_alloc_init(PKNavigationController);
              [(PKNavigationController *)v38 setSupportedInterfaceOrientations:2];
              [(PKNavigationController *)v38 setModalPresentationStyle:3];
              v50 = v37;
              v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
              [(PKNavigationController *)v38 setViewControllers:v39 animated:1];

              [(UIViewController *)self pk_presentViewController:v38 animated:1 popToViewControllerAfterPresentation:0 completion:0];
              v40 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = PKPaymentPassActionTypeToString();
                token.val[0] = 138412290;
                *&token.val[1] = v41;
                _os_log_impl(&dword_1BD026000, v40, OS_LOG_TYPE_DEFAULT, "Presented PKPerformActionViewController for actionType %@", &token, 0xCu);
              }
            }
          }

          else
          {
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __101__PKServicePerformActionSetupViewController_configureWithPassUniqueIdentifier_actionType_completion___block_invoke_35;
            v42[3] = &unk_1E8010970;
            v42[4] = self;
            v30 = _Block_copy(v42);
            v31 = [PKPerformActionViewController alertControllerForUnableReason:v45 action:v26 displayableError:v29 addCardActionHandler:0 unavailableActionHandler:v30 cancelActionHandler:v30];
            [(PKServicePerformActionSetupViewController *)self presentViewController:v31 animated:1 completion:0];
            v32 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = PKPaymentPassActionTypeToString();
              token.val[0] = 138412546;
              *&token.val[1] = v33;
              LOWORD(token.val[3]) = 2112;
              *(&token.val[3] + 2) = v29;
              _os_log_impl(&dword_1BD026000, v32, OS_LOG_TYPE_DEFAULT, "PKPerformActionViewController unavailable for actionType %@, error: %@", &token, 0x16u);
            }
          }

          goto LABEL_33;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }

LABEL_36:
}

void __101__PKServicePerformActionSetupViewController_configureWithPassUniqueIdentifier_actionType_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Presented PKPerformActionViewController for externalActionContent", v6, 2u);
  }

  if (v4)
  {
    [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
  }
}

- (void)dismiss
{
  _remoteViewControllerProxy = [(PKServicePerformActionSetupViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy didCancelAction];
}

- (void)performActionViewControllerDidCancel:(id)cancel
{
  [cancel setDelegate:0];

  [(PKServicePerformActionSetupViewController *)self dismiss];
}

- (void)performActionViewControllerDidPerformAction:(id)action
{
  [action setDelegate:0];
  _remoteViewControllerProxy = [(PKServicePerformActionSetupViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy didPerformAction];
}

@end