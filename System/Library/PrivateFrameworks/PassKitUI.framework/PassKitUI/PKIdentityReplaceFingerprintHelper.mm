@interface PKIdentityReplaceFingerprintHelper
- (PKIdentityReplaceFingerprintHelper)initWithPass:(id)pass isRemote:(BOOL)remote;
- (void)isEligibleWithCompletion:(id)completion;
- (void)viewControllerWithCompletion:(id)completion;
@end

@implementation PKIdentityReplaceFingerprintHelper

- (PKIdentityReplaceFingerprintHelper)initWithPass:(id)pass isRemote:(BOOL)remote
{
  passCopy = pass;
  v11.receiver = self;
  v11.super_class = PKIdentityReplaceFingerprintHelper;
  v8 = [(PKIdentityReplaceFingerprintHelper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pass, pass);
    v9->_isRemote = remote;
    v9->_loading = 0;
  }

  return v9;
}

- (void)isEligibleWithCompletion:(id)completion
{
  completionCopy = completion;
  if (-[PKSecureElementPass isIdentityPass](self->_pass, "isIdentityPass") && ([MEMORY[0x1E69BC740] currentStateForPolicy:0] & 4) != 0 && !self->_loading)
  {
    self->_loading = 1;
    devicePrimaryContactlessPaymentApplication = [(PKSecureElementPass *)self->_pass devicePrimaryContactlessPaymentApplication];
    subcredentials = [devicePrimaryContactlessPaymentApplication subcredentials];
    anyObject = [subcredentials anyObject];
    identifier = [anyObject identifier];

    if (identifier)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69B8658]);
      [v9 addOperation:&__block_literal_global_209];
      if (!self->_isRemote)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_15;
        v14[3] = &unk_1E8019220;
        v15 = identifier;
        [v9 addOperation:v14];
      }

      [v9 addOperation:&__block_literal_global_21];
      null = [MEMORY[0x1E695DFB0] null];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_26;
      v12[3] = &unk_1E8020E68;
      v12[4] = self;
      v13 = completionCopy;
      v11 = [v9 evaluateWithInput:null completion:v12];
    }

    else
    {
      self->_loading = 2;
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  else
  {
    self->_loading = 2;
    (*(completionCopy + 2))(completionCopy, self->_canReplace);
  }
}

void __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [(objc_class *)_MergedGlobals_623() availableDevices];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v21 + 1) + 8 * v11);
      if ([v12 type] == 1)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v20 = 0;
    v14 = [(objc_class *)off_1EE98A6E8() deviceWithDescriptor:v12 error:&v20];
    v15 = v20;
    if (v15)
    {
      v16 = v15;
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Could not get device with error %@", buf, 0xCu);
      }
    }

    else
    {
      v19 = 0;
      v17 = [v14 identitiesWithError:&v19];
      v16 = v19;
      if (!v16)
      {
        v13 = [v17 count]< 2;
        goto LABEL_18;
      }

      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Could not get identities with error %@", buf, 0xCu);
      }
    }

    v13 = 1;
LABEL_18:

    goto LABEL_19;
  }

LABEL_9:
  v13 = 1;
LABEL_19:

  v6[2](v6, v5, v13);
}

void __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_15(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E6997C28]);
  v20[0] = *MEMORY[0x1E69BB940];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithPartitions:v9];

  v11 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_2;
  v15[3] = &unk_1E8020E18;
  v16 = v10;
  v18 = v6;
  v19 = v7;
  v17 = v11;
  v12 = v6;
  v13 = v7;
  v14 = v10;
  [v14 propertiesOfCredential:v17 completion:v15];
}

void __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Could not fetch properties of credential %@ with error %@", &v10, 0x16u);
    }
  }

  v9 = [v5 options];
  if ([v9 presentmentAuthPolicy] == 2)
  {
    [v5 hasUsablePresentmentAuthPolicy];
  }

  (*(*(a1 + 56) + 16))();
}

void __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_19(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E6997C18]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_2_23;
  v11[3] = &unk_1E8020E40;
  v13 = v5;
  v14 = v6;
  v12 = v7;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  [v10 globalAuthACLWithCompletion:v11];
}

void __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_2_23(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Could not fetch global ACL with error %@", &v8, 0xCu);
    }
  }

  if (v5)
  {
    [v5 aclType];
  }

  (*(*(a1 + 48) + 16))();
}

void __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_26(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 isCanceled];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_2_27;
  block[3] = &unk_1E80150A8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5 ^ 1;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __63__PKIdentityReplaceFingerprintHelper_isEligibleWithCompletion___block_invoke_2_27(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 2;
  *(*(a1 + 32) + 9) = *(a1 + 48);
  return (*(*(a1 + 40) + 16))();
}

- (void)viewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E6997E68]);
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PKIdentityReplaceFingerprintHelper_viewControllerWithCompletion___block_invoke;
  v7[3] = &unk_1E8020E90;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [v5 beginBiometricReplacement:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__PKIdentityReplaceFingerprintHelper_viewControllerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKIdentityReplaceFingerprintHelper_viewControllerWithCompletion___block_invoke_2;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __67__PKIdentityReplaceFingerprintHelper_viewControllerWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = PKLogFacilityTypeGetObject();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v9 = 0;
        v6 = "Presenting biometric replacement flow";
        v7 = &v9;
LABEL_7:
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      }
    }

    else if (v5)
    {
      v8 = 0;
      v6 = "Biometric replacement flow manager did not provide a view controller";
      v7 = &v8;
      goto LABEL_7;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }
}

@end