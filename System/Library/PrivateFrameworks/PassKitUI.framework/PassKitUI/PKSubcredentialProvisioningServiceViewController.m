@interface PKSubcredentialProvisioningServiceViewController
- (id)remoteDeviceWebService;
- (void)didFinishWithPass:(id)a3 error:(id)a4;
- (void)loadView;
- (void)setConfiguration:(id)a3 completionHandler:(id)a4;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)a3 scale:(double)a4;
@end

@implementation PKSubcredentialProvisioningServiceViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKSubcredentialProvisioningServiceViewController;
  [(PKSubcredentialProvisioningServiceViewController *)&v5 loadView];
  v3 = [(PKSubcredentialProvisioningServiceViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];
}

- (id)remoteDeviceWebService
{
  v2 = [MEMORY[0x1E69B8A58] sharedInstanceWithRemoteLibrary];
  if ([v2 _hasRemoteLibrary])
  {
    v3 = objc_alloc_init(getNPKCompanionAgentConnectionClass_4());
    v4 = [v3 watchPaymentWebService];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didFinishWithPass:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 domain];
    v10 = [v9 isEqualToString:*MEMORY[0x1E69B9E70]];

    v11 = v8;
    if ((v10 & 1) == 0)
    {
      v11 = PKConvertErrorToAddSecureElementPassProvisioningErrorDomain();
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = v6;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Provisioning did finish with pass %@ and error %@ (original error: %@)", buf, 0x20u);
  }

  [v6 sanitizePaymentApplications];
  v13 = [(PKSubcredentialProvisioningServiceViewController *)self _remoteViewControllerProxy];
  v14 = v13;
  if (v6)
  {
    v16 = v6;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v14 didFinishWithPasses:v15 error:v11];
  }

  else
  {
    [v13 didFinishWithPasses:0 error:v11];
  }
}

- (void)setDisplayPropertiesWithScreenSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v13 = *MEMORY[0x1E69E9840];
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14.width = width;
    v14.height = height;
    v8 = NSStringFromCGSize(v14);
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    v12 = a4;
    _os_log_error_impl(&dword_1BD026000, v7, OS_LOG_TYPE_ERROR, "Setting display properties with screenSize=%{public}@ scale=%.f", &v9, 0x16u);
  }

  PKSetDisplayProperties();
}

- (void)setConfiguration:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E69B8840]);
  v9 = [(PKSubcredentialProvisioningServiceViewController *)self _hostProcessIdentifier];
  [(PKSubcredentialProvisioningServiceViewController *)self _hostAuditToken];
  v10 = [v8 initWithProcessIdentifier:v9 auditToken:buf];
  if ([v10 carKeyCredentialProvisioning])
  {
    [v6 updateAllowManagedAppleIDWithEntitlements:v10];
    if ([v6 configurationType] == 1)
    {
      v11 = [MEMORY[0x1E69B8A58] sharedInstance];
      if ([v11 canAddSecureElementPassWithConfiguration:v6])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v6;
          if (![v12 supportedRadioTechnologies])
          {
            v13 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Configuration did not have radio technology type set defaulting to NFC", buf, 2u);
            }

            [v12 setSupportedRadioTechnologies:1];
          }

          [v12 supportedRadioTechnologies];
          [v12 setSupportedRadioTechnologies:PKRadioTechnologyForConfigurationTechnology()];
          v14 = objc_alloc(MEMORY[0x1E69B8D48]);
          v15 = [MEMORY[0x1E69B8EF8] sharedService];
          v16 = [v14 initWithWebService:v15];

          v17 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:7 provisioningController:v16 groupsController:0];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __87__PKSubcredentialProvisioningServiceViewController_setConfiguration_completionHandler___block_invoke;
          v24[3] = &unk_1E80197A0;
          v24[4] = self;
          [PKProvisioningFlowBridge startInAppFlowWithUnownedNavController:self context:v17 addCarKeyConfiguration:v12 completion:v24];
          if (v7)
          {
            v7[2](v7);
          }

LABEL_25:
          goto LABEL_26;
        }
      }

      else
      {
        v23 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v6;
          _os_log_impl(&dword_1BD026000, v23, OS_LOG_TYPE_DEFAULT, "Configuration is not supported by device: %@", buf, 0xCu);
        }
      }

      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:3 userInfo:0];
      [(PKSubcredentialProvisioningServiceViewController *)self didFinishWithPass:0 error:v12];
      if (v7)
      {
        v7[2](v7);
      }

      goto LABEL_25;
    }

    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Unsupported configuration type", buf, 2u);
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E69B9E70];
    v21 = 3;
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Remote process is not entitled for provisioning", buf, 2u);
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E69B9E70];
    v21 = 2;
  }

  v11 = [v19 errorWithDomain:v20 code:v21 userInfo:0];
  [(PKSubcredentialProvisioningServiceViewController *)self didFinishWithPass:0 error:v11];
  if (v7)
  {
    v7[2](v7);
  }

LABEL_26:
}

void __87__PKSubcredentialProvisioningServiceViewController_setConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKSubcredentialProvisioningServiceViewController_setConfiguration_completionHandler___block_invoke_2;
  block[3] = &unk_1E8010A88;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __87__PKSubcredentialProvisioningServiceViewController_setConfiguration_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v6 = v2;
  if (v2)
  {
    [*(a1 + 40) didFinishWithPass:v2 error:0];
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
    }

    v5 = v4;
    [*(a1 + 40) didFinishWithPass:0 error:v4];
  }
}

@end