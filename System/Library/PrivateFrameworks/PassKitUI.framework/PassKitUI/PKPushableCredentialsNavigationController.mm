@interface PKPushableCredentialsNavigationController
- (void)didFinishWithPasses:(id)passes error:(id)error;
- (void)loadView;
- (void)setConfiguration:(id)configuration completionHandler:(id)handler;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation PKPushableCredentialsNavigationController

- (void)loadView
{
  v2.receiver = self;
  v2.super_class = PKPushableCredentialsNavigationController;
  [(PKPushableCredentialsNavigationController *)&v2 loadView];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPushableCredentialsNavigationController;
  [(PKPushableCredentialsNavigationController *)&v4 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
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

- (void)setConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = objc_alloc(MEMORY[0x1E69B8840]);
  _hostProcessIdentifier = [(PKPushableCredentialsNavigationController *)self _hostProcessIdentifier];
  [(PKPushableCredentialsNavigationController *)self _hostAuditToken];
  v10 = [v8 initWithProcessIdentifier:_hostProcessIdentifier auditToken:buf];
  if (([v10 shareableCredentialProvisioning] & 1) == 0)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Remote process is not entitled for provisioning", buf, 2u);
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E69B9E70];
    v16 = 2;
    goto LABEL_15;
  }

  [configurationCopy updateAllowManagedAppleIDWithEntitlements:v10];
  configurationType = [configurationCopy configurationType];
  if (configurationType == 2 || configurationType == 4)
  {
    if ([configurationCopy conformsToProtocol:&unk_1F3E3D3C8])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__PKPushableCredentialsNavigationController_setConfiguration_completionHandler___block_invoke;
      block[3] = &unk_1E8012300;
      v20 = configurationCopy;
      selfCopy = self;
      v22 = handlerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v12 = v20;
      goto LABEL_17;
    }

    v17 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v18 = "Unsupported as configuration is not pushable";
    goto LABEL_13;
  }

  v17 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v18 = "Unsupported configuration type";
LABEL_13:
    _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
  }

LABEL_14:

  v14 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E69B9E70];
  v16 = 3;
LABEL_15:
  v12 = [v14 errorWithDomain:v15 code:v16 userInfo:0];
  [(PKPushableCredentialsNavigationController *)self didFinishWithPasses:0 error:v12];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_17:
}

void __80__PKPushableCredentialsNavigationController_setConfiguration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 metadataProviders];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 provisioningTarget];
  v6 = [v5 targetDevice];

  if (v6 == 2)
  {
    [MEMORY[0x1E69B8EF8] remoteDeviceWebService];
  }

  else
  {
    [MEMORY[0x1E69B8EF8] sharedService];
  }
  v7 = ;
  v8 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:v7];
  v9 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:7 provisioningController:v8 groupsController:0];
  objc_initWeak(&location, *(a1 + 40));
  v10 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__PKPushableCredentialsNavigationController_setConfiguration_completionHandler___block_invoke_2;
  v14[3] = &unk_1E8017038;
  objc_copyWeak(&v15, &location);
  [PKProvisioningFlowBridge startInAppFlowWithUnownedNavController:v10 context:v9 addPassConfiguration:v2 completion:v14];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v11, v12, v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __80__PKPushableCredentialsNavigationController_setConfiguration_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishWithPasses:v6 error:v5];
}

- (void)didFinishWithPasses:(id)passes error:(id)error
{
  v41 = *MEMORY[0x1E69E9840];
  passesCopy = passes;
  errorCopy = error;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = passesCopy;
    v39 = 2112;
    v40 = errorCopy;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Provisioning did finish with passes %@ and error %@", buf, 0x16u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = passesCopy;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v32 + 1) + 8 * i) sanitizePaymentApplications];
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    v15 = *MEMORY[0x1E69B9E70];
    v16 = domain;
    v17 = v16;
    if (v16 == v15)
    {
    }

    else
    {
      if (!v16 || !v15)
      {

LABEL_20:
        v19 = 0;
LABEL_21:
        underlyingErrors = [errorCopy underlyingErrors];
        firstObject = [underlyingErrors firstObject];

        if (v19)
        {
          goto LABEL_46;
        }

        domain2 = [firstObject domain];
        v23 = domain2;
        if (domain2 == v15)
        {
        }

        else
        {
          if (!v15 || !domain2)
          {

            goto LABEL_31;
          }

          v24 = [domain2 isEqualToString:v15];

          if (!v24)
          {
LABEL_31:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_45;
            }

            v25 = errorCopy;
            underlyingError = [v25 underlyingError];
            domain3 = [underlyingError domain];
            v28 = domain3;
            if (domain3 == v15)
            {
            }

            else
            {
              if (!v15 || !domain3)
              {

LABEL_40:
                if ([v25 severity] == 1)
                {
                  underlyingError2 = [MEMORY[0x1E696ABC0] errorWithDomain:v15 code:0 userInfo:0];
LABEL_42:
                  v19 = underlyingError2;

                  if (!v19)
                  {
                    goto LABEL_45;
                  }

LABEL_46:

                  goto LABEL_47;
                }

LABEL_45:
                v19 = [MEMORY[0x1E696ABC0] errorWithDomain:v15 code:0 userInfo:0];
                goto LABEL_46;
              }

              v29 = [domain3 isEqualToString:v15];

              if ((v29 & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            underlyingError2 = [v25 underlyingError];
            goto LABEL_42;
          }
        }

        v19 = firstObject;
        if (v19)
        {
          goto LABEL_46;
        }

        goto LABEL_31;
      }

      v18 = [v16 isEqualToString:v15];

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v19 = errorCopy;
    goto LABEL_21;
  }

  v19 = 0;
LABEL_47:
  _remoteViewControllerProxy = [(PKPushableCredentialsNavigationController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy didFinishWithPasses:v9 error:v19];
}

@end