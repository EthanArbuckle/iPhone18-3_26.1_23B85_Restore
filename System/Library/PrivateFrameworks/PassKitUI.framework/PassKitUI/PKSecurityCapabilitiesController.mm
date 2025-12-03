@interface PKSecurityCapabilitiesController
+ (id)displayableErrorForErrorCode:(unint64_t)code;
- (BOOL)isHSA2Enabled;
- (PKSecurityCapabilitiesController)initWithRequirements:(unint64_t)requirements feature:(unint64_t)feature context:(int64_t)context;
- (id)_authenticationReason;
- (id)_createAuthContext;
- (id)_genericDisplayableError;
- (id)_missingTLKsAlertController;
- (void)_isEnabledForSecurityRequirements:(unint64_t)requirements withCompletion:(id)completion;
- (void)_isManateeCapableWithCompletion:(id)completion;
- (void)_isMissingTLKsWithCompletion:(id)completion;
- (void)_presentDeviceToDeviceEncryptionRepairFlow:(id)flow completion:(id)completion;
- (void)_presentManateeSecurityFlowWithPresentingViewController:(id)controller suppressHSA2Alert:(BOOL)alert completion:(id)completion;
- (void)_presentManateeTermsAlertViewController:(id)controller completion:(id)completion;
- (void)_presentMissingTLKsAlertWithPresentingViewController:(id)controller completion:(id)completion;
- (void)_presentPasswordPromptWithPresentingViewController:(id)controller completion:(id)completion;
- (void)_resetApplyPayManateeViewWithCompletion:(id)completion;
- (void)presentSecurityRepairFlowWithPresentingViewController:(id)controller suppressHSA2Alert:(BOOL)alert completion:(id)completion;
@end

@implementation PKSecurityCapabilitiesController

+ (id)displayableErrorForErrorCode:(unint64_t)code
{
  v3 = 0;
  if (code > 3)
  {
    if (code == 4)
    {
      v8 = PKPrimaryAppleAccountFormattedUsername();
      v4 = PKLocalizedPaymentString(&cfstr_HsaEnrollmentN.isa, &stru_1F3BD5BF0.isa, v8);

      v6 = PKLocalizedPaymentString(&cfstr_HsaEnrollmentN_0.isa);
      goto LABEL_10;
    }

    if (code != 5)
    {
      goto LABEL_11;
    }

    v4 = PKLocalizedPaymentString(&cfstr_HsaEnrollmentM.isa);
    v5 = @"HSA_ENROLLMENT_MANATEE_UNAVAILABLE_MESSAGE";
  }

  else if (code - 1 >= 2)
  {
    if (code != 3)
    {
      goto LABEL_11;
    }

    v4 = PKLocalizedPaymentString(&cfstr_HsaEnrollmentC.isa);
    v5 = @"HSA_ENROLLMENT_CANCELED_MESSAGE";
  }

  else
  {
    v4 = PKLocalizedPaymentString(&cfstr_HsaEnrollmentF.isa);
    v5 = @"HSA_ENROLLMENT_FAILED_MESSAGE";
  }

  v6 = PKLocalizedPaymentString(&v5->isa);
LABEL_10:
  v3 = PKDisplayableErrorCustom();

LABEL_11:

  return v3;
}

- (PKSecurityCapabilitiesController)initWithRequirements:(unint64_t)requirements feature:(unint64_t)feature context:(int64_t)context
{
  v15.receiver = self;
  v15.super_class = PKSecurityCapabilitiesController;
  v8 = [(PKSecurityCapabilitiesController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_feature = feature;
    v8->_securityRequirements = requirements;
    _createAuthContext = [(PKSecurityCapabilitiesController *)v8 _createAuthContext];
    authContext = v9->_authContext;
    v9->_authContext = _createAuthContext;

    v9->_context = context;
    mEMORY[0x1E69B86F8] = [MEMORY[0x1E69B86F8] sharedInstance];
    cloudService = v9->_cloudService;
    v9->_cloudService = mEMORY[0x1E69B86F8];
  }

  return v9;
}

- (void)presentSecurityRepairFlowWithPresentingViewController:(id)controller suppressHSA2Alert:(BOOL)alert completion:(id)completion
{
  alertCopy = alert;
  v59 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PKFeatureIdentifierToString();
    v10 = PKSecurityCapabilitiesRequirementToString(self->_securityRequirements);
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Presenting security capabilities flow for feature: %@, requirements: %@", buf, 0x16u);
  }

  securityRequirements = self->_securityRequirements;
  IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v56 = __Block_byref_object_copy__11;
  v57 = __Block_byref_object_dispose__11;
  v58 = 0;
  if (IsSetupAssistant)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "The current context is setup assistant so dont present any repair flows.", v51, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke;
    aBlock[3] = &unk_1E8012F10;
    v47 = completionCopy;
    v48 = buf;
    v49 = v50;
    v13 = _Block_copy(aBlock);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_2;
    v42[3] = &unk_1E8016368;
    v44 = v50;
    v42[4] = self;
    v14 = v13;
    v43 = v14;
    v45 = buf;
    v15 = _Block_copy(v42);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_90;
    v37[3] = &unk_1E80163E0;
    v40 = v50;
    v37[4] = self;
    v16 = controllerCopy;
    v38 = v16;
    v41 = buf;
    v17 = v15;
    v39 = v17;
    v18 = _Block_copy(v37);
    v19 = v18;
    v20 = securityRequirements & 2;
    if ((securityRequirements & 0xCC) != 0)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = PKSecurityCapabilitiesRequirementToString(0xCCuLL);
        v22 = v21;
        v23 = &stru_1F3BD7330;
        if (alertCopy)
        {
          v23 = @" with HSA2 alert suppressed.";
        }

        *v51 = 138412546;
        v52 = v21;
        v53 = 2112;
        v54 = v23;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Checking security eligibility for %@%@", v51, 0x16u);
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_100;
      v30[3] = &unk_1E8016430;
      v30[4] = self;
      v35 = alertCopy;
      v31 = v16;
      v33 = v50;
      v34 = buf;
      v32 = v19;
      v36 = v20 >> 1;
      [(PKSecurityCapabilitiesController *)self _isEnabledForSecurityRequirements:204 withCompletion:v30];
    }

    else if ((securityRequirements & 2) != 0)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_2_105;
      v26[3] = &unk_1E8016390;
      v28 = v50;
      v29 = buf;
      v27 = v18;
      [(PKSecurityCapabilitiesController *)self _presentPasswordPromptWithPresentingViewController:v16 completion:v26];
    }

    else
    {
      v18[2](v18);
    }
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v50, 8);
}

void *__119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = *(*(result[5] + 8) + 40);
    if (v2)
    {
      v3 = *(result[6] + 8);
      if (!*(v3 + 24))
      {
        *(v3 + 24) = 2;
        v1 = result[4];
        v2 = *(*(result[5] + 8) + 40);
      }
    }

    return (*(v1 + 16))(v1, *(*(result[6] + 8) + 24), v2);
  }

  return result;
}

void __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 48) + 8) + 24) && (*(*(a1 + 32) + 32) & 0x20) != 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PKSecurityCapabilitiesRequirementToString(0x20uLL);
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Checking security eligibility for %@", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_80;
    v6[3] = &unk_1E8016340;
    v6[4] = v5;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v5 _isEnabledForSecurityRequirements:32 withCompletion:v6];
  }

  else
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }
}

void __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_80(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKSecurityCapabilitiesRequirementToString(a3);
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Missing security eligibility %@", buf, 0xCu);
  }

  if ((a3 & 0x20) != 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Trying to setup the apple pay container...", buf, 2u);
    }

    v7 = *(*(a1 + 32) + 16);
    v8 = PKCurrentCloudStoreApplePayContainerName();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_81;
    v10[3] = &unk_1E8016318;
    v9 = *(a1 + 40);
    v12 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v7 setupCloudDatabaseForContainerName:v8 completion:v10];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_81(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Finished the apple pay container setup with success %@, error %@", &v11, 0x16u);
  }

  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 2;
    v8 = [*(a1 + 32) _genericDisplayableError];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  (*(*(a1 + 40) + 16))();
}

void __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_90(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 56) + 8) + 24) && (*(*(a1 + 32) + 32) & 0x10) != 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PKSecurityCapabilitiesRequirementToString(0x10uLL);
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Checking security eligibility for %@", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_91;
    v10[3] = &unk_1E80163B8;
    v10[4] = v5;
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v11 = v6;
    v13 = v7;
    v9 = *(a1 + 48);
    v8 = v9;
    v12 = v9;
    [v5 _isEnabledForSecurityRequirements:16 withCompletion:v10];
  }

  else
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }
}

void __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_91(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKSecurityCapabilitiesRequirementToString(a3);
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Missing security eligibility %@", buf, 0xCu);
  }

  if ((a3 & 0x10) != 0)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_92;
    v11[3] = &unk_1E8016390;
    v13 = *(a1 + 64);
    v10 = *(a1 + 48);
    v9 = v10;
    v12 = v10;
    [v7 _presentMissingTLKsAlertWithPresentingViewController:v8 completion:v11];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_92(void *a1, uint64_t a2, id obj)
{
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v5 = obj;
  (*(a1[4] + 16))();
}

void __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_100(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKSecurityCapabilitiesRequirementToString(a3);
    *buf = 138412290;
    v38 = v6;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Missing security eligibility %@", buf, 0xCu);
  }

  if ((a3 & 8) != 0)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 72);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_101;
    v34[3] = &unk_1E8016408;
    v36 = *(a1 + 64);
    v34[4] = v11;
    v22 = *(a1 + 48);
    v14 = v22;
    v35 = v22;
    [v11 _presentManateeSecurityFlowWithPresentingViewController:v12 suppressHSA2Alert:v13 completion:v34];
    v10 = v35;
  }

  else if ((a3 & 0x80) != 0)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_2_103;
    v31[3] = &unk_1E8016408;
    v33 = *(a1 + 64);
    v31[4] = v15;
    v23 = *(a1 + 48);
    v17 = v23;
    v32 = v23;
    [v15 _presentManateeTermsAlertViewController:v16 completion:v31];
    v10 = v32;
  }

  else if ((a3 & 0x44) != 0)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_3;
    v28[3] = &unk_1E8016408;
    v30 = *(a1 + 64);
    v28[4] = v7;
    v21 = *(a1 + 48);
    v9 = v21;
    v29 = v21;
    [v7 _presentDeviceToDeviceEncryptionRepairFlow:v8 completion:v28];
    v10 = v29;
  }

  else
  {
    if (*(a1 + 73) != 1)
    {
      (*(*(a1 + 48) + 16))();
      return;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "The user is hsa2/manatee capable, but a password prompt is required.", buf, 2u);
    }

    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_104;
    v25[3] = &unk_1E8016390;
    v27 = *(a1 + 64);
    v24 = *(a1 + 48);
    v20 = v24;
    v26 = v24;
    [v18 _presentPasswordPromptWithPresentingViewController:v19 completion:v25];
    v10 = v26;
  }
}

uint64_t __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_101(void *a1, uint64_t a2)
{
  *(*(a1[6] + 8) + 24) = a2;
  v3 = [objc_opt_class() displayableErrorForErrorCode:*(*(a1[6] + 8) + 24)];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1[5] + 16);

  return v6();
}

uint64_t __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_2_103(void *a1, uint64_t a2)
{
  *(*(a1[6] + 8) + 24) = a2;
  v3 = [objc_opt_class() displayableErrorForErrorCode:*(*(a1[6] + 8) + 24)];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1[5] + 16);

  return v6();
}

uint64_t __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_3(void *a1, uint64_t a2)
{
  *(*(a1[6] + 8) + 24) = a2;
  v3 = [objc_opt_class() displayableErrorForErrorCode:*(*(a1[6] + 8) + 24)];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1[5] + 16);

  return v6();
}

void __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_104(void *a1, uint64_t a2, id obj)
{
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v5 = obj;
  (*(a1[4] + 16))();
}

void __119__PKSecurityCapabilitiesController_presentSecurityRepairFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_2_105(void *a1, uint64_t a2, id obj)
{
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v5 = obj;
  (*(a1[4] + 16))();
}

- (BOOL)isHSA2Enabled
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  altDSID = [(AKAppleIDAuthenticationContext *)self->_authContext altDSID];
  v5 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:altDSID];

  v6 = [mEMORY[0x1E698DC80] securityLevelForAccount:v5];
  if (v6 == 4)
  {
    return 1;
  }

  mEMORY[0x1E69B8568] = [MEMORY[0x1E69B8568] sharedInstance];
  appleAccountInformation = [mEMORY[0x1E69B8568] appleAccountInformation];

  LOBYTE(mEMORY[0x1E69B8568]) = [appleAccountInformation isManagedAppleAccount];
  return mEMORY[0x1E69B8568];
}

- (void)_presentMissingTLKsAlertWithPresentingViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (completionCopy)
  {
    if (controllerCopy)
    {
      _missingTLKsAlertController = [(PKSecurityCapabilitiesController *)self _missingTLKsAlertController];
      v9 = MEMORY[0x1E69DC648];
      v10 = PKLocalizedPaymentString(&cfstr_TlksResetButto.isa);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __100__PKSecurityCapabilitiesController__presentMissingTLKsAlertWithPresentingViewController_completion___block_invoke;
      v22[3] = &unk_1E8016458;
      v22[4] = self;
      v11 = completionCopy;
      v23 = v11;
      v12 = [v9 actionWithTitle:v10 style:0 handler:v22];
      [_missingTLKsAlertController addAction:v12];

      v13 = MEMORY[0x1E69DC648];
      v14 = PKLocalizedPaymentString(&cfstr_TlksResetCance.isa);
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __100__PKSecurityCapabilitiesController__presentMissingTLKsAlertWithPresentingViewController_completion___block_invoke_3;
      v19 = &unk_1E8016458;
      selfCopy = self;
      v21 = v11;
      v15 = [v13 actionWithTitle:v14 style:1 handler:&v16];
      [_missingTLKsAlertController addAction:{v15, v16, v17, v18, v19, selfCopy}];

      [controllerCopy presentViewController:_missingTLKsAlertController animated:1 completion:0];
    }

    else
    {
      _missingTLKsAlertController = [(PKSecurityCapabilitiesController *)self _genericDisplayableError];
      (*(completionCopy + 2))(completionCopy, 2, _missingTLKsAlertController);
    }
  }
}

void __100__PKSecurityCapabilitiesController__presentMissingTLKsAlertWithPresentingViewController_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[3] == 1)
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69B9F48], 0);
    v2 = *(a1 + 32);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __100__PKSecurityCapabilitiesController__presentMissingTLKsAlertWithPresentingViewController_completion___block_invoke_2;
  v4[3] = &unk_1E8015170;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _resetApplyPayManateeViewWithCompletion:v4];
}

void __100__PKSecurityCapabilitiesController__presentMissingTLKsAlertWithPresentingViewController_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v9 = v5;
    if (a2)
    {
      (*(v6 + 16))(v6, 0, 0);
    }

    else
    {
      v7 = *(a1 + 32);
      if (v7[3] == 1)
      {
        MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0B8], 0);
        v7 = *(a1 + 32);
        v6 = *(a1 + 40);
      }

      v8 = [v7 _genericDisplayableError];
      (*(v6 + 16))(v6, 2, v8);
    }

    v5 = v9;
  }
}

void __100__PKSecurityCapabilitiesController__presentMissingTLKsAlertWithPresentingViewController_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(*(a1 + 32) + 24) == 1)
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69B9F40], 0);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 3, 0);
  }
}

- (void)_resetApplyPayManateeViewWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "User wants to blow away apple pay manatee view and create new TLKs.", v6, 2u);
  }

  [(PKCloudStoreService *)self->_cloudService resetApplePayManateeViewWithCompletion:completionCopy];
}

- (void)_presentDeviceToDeviceEncryptionRepairFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    if (flowCopy)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Presenting CDPUIDeviceToDeviceEncryptionHelper", buf, 2u);
      }

      if (PKPaymentSetupContextIsBridge())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          presentedViewController = [flowCopy presentedViewController];

          flowCopy = presentedViewController;
        }
      }

      v11 = objc_alloc(MEMORY[0x1E6997860]);
      altDSID = [(AKAppleIDAuthenticationContext *)self->_authContext altDSID];
      v13 = [v11 initWithAltDSID:altDSID];

      [v13 setPresentingViewController:flowCopy];
      [v13 setDeviceToDeviceEncryptionUpgradeType:0];
      [v13 setDeviceToDeviceEncryptionUpgradeUIStyle:3];
      [v13 setSecurityUpgradeContext:*MEMORY[0x1E698DC50]];
      _authenticationReason = [(PKSecurityCapabilitiesController *)self _authenticationReason];
      [v13 setFeatureName:_authenticationReason];

      v15 = [objc_alloc(MEMORY[0x1E6997868]) initWithContext:v13];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __90__PKSecurityCapabilitiesController__presentDeviceToDeviceEncryptionRepairFlow_completion___block_invoke;
      v16[3] = &unk_1E8013FF8;
      v17 = v8;
      [v15 performDeviceToDeviceEncryptionStateRepairWithCompletion:v16];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 2);
    }
  }
}

void __90__PKSecurityCapabilitiesController__presentDeviceToDeviceEncryptionRepairFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Completed CDPUIDeviceToDeviceEncryptionHelper with didRepair %@, error %@", &v10, 0x16u);
  }

  if ((a2 & 1) == 0)
  {
    v8 = [v5 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x1E69977D8]];

    if (v9)
    {
      [v5 code];
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_presentManateeSecurityFlowWithPresentingViewController:(id)controller suppressHSA2Alert:(BOOL)alert completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  feature = self->_feature;
  if (feature == 1)
  {
    v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTwo.isa);
  }

  else
  {
    if (feature == 2)
    {
      PKLocalizedFeatureString();
    }

    else
    {
      PKLocalizedPaymentString(&cfstr_TwoFactorAuthR.isa);
    }
    v11 = ;
  }

  v12 = v11;
  if (alert || [(PKSecurityCapabilitiesController *)self isHSA2Enabled])
  {
    [(PKSecurityCapabilitiesController *)self _presentDeviceToDeviceEncryptionRepairFlow:controllerCopy completion:completionCopy];
  }

  else
  {
    v13 = MEMORY[0x1E69DC650];
    v14 = PKLocalizedPaymentString(&cfstr_TwoFactorAuthR_0.isa);
    v15 = [v13 alertControllerWithTitle:v14 message:v12 preferredStyle:1];

    v16 = MEMORY[0x1E69DC648];
    v17 = PKLocalizedPaymentString(&cfstr_TwoFactorAuthR_1.isa);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __121__PKSecurityCapabilitiesController__presentManateeSecurityFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke;
    v29[3] = &unk_1E8016480;
    v29[4] = self;
    v18 = controllerCopy;
    v30 = v18;
    v19 = completionCopy;
    v31 = v19;
    v20 = [v16 actionWithTitle:v17 style:0 handler:v29];
    [v15 addAction:v20];

    v21 = MEMORY[0x1E69DC648];
    v22 = PKLocalizedPaymentString(&cfstr_TwoFactorAuthR_2.isa);
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __121__PKSecurityCapabilitiesController__presentManateeSecurityFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_2;
    v27 = &unk_1E8011248;
    v28 = v19;
    v23 = [v21 actionWithTitle:v22 style:1 handler:&v24];
    [v15 addAction:{v23, v24, v25, v26, v27}];

    [v18 presentViewController:v15 animated:1 completion:0];
  }
}

uint64_t __121__PKSecurityCapabilitiesController__presentManateeSecurityFlowWithPresentingViewController_suppressHSA2Alert_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 3);
  }

  return result;
}

- (void)_presentManateeTermsAlertViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x1E69DC650];
  controllerCopy = controller;
  v8 = PKLocalizedPaymentString(&cfstr_ManateeTermsAc.isa);
  v9 = PKLocalizedPaymentString(&cfstr_ManateeTermsAc_0.isa);
  v10 = [v6 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = MEMORY[0x1E69DC648];
  v12 = PKLocalizedPaymentString(&cfstr_ManateeTermsAc_1.isa);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __87__PKSecurityCapabilitiesController__presentManateeTermsAlertViewController_completion___block_invoke;
  v24[3] = &unk_1E8011248;
  v13 = completionCopy;
  v25 = v13;
  v14 = [v11 actionWithTitle:v12 style:0 handler:v24];
  [v10 addAction:v14];

  v15 = MEMORY[0x1E69DC648];
  v16 = PKLocalizedPaymentString(&cfstr_TwoFactorAuthR_2.isa);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __87__PKSecurityCapabilitiesController__presentManateeTermsAlertViewController_completion___block_invoke_2;
  v22 = &unk_1E8011248;
  v23 = v13;
  v17 = v13;
  v18 = [v15 actionWithTitle:v16 style:1 handler:&v19];
  [v10 addAction:{v18, v19, v20, v21, v22}];

  [controllerCopy presentViewController:v10 animated:1 completion:0];
}

void __87__PKSecurityCapabilitiesController__presentManateeTermsAlertViewController_completion___block_invoke(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:v4 withOptions:0];

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 3);
  }
}

uint64_t __87__PKSecurityCapabilitiesController__presentManateeTermsAlertViewController_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 3);
  }

  return result;
}

- (void)_presentPasswordPromptWithPresentingViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = completionCopy;
  if (controllerCopy && completionCopy)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Presenting password prompt...", buf, 2u);
    }

    mEMORY[0x1E69B8568] = [MEMORY[0x1E69B8568] sharedInstance];
    appleAccountInformation = [mEMORY[0x1E69B8568] appleAccountInformation];

    v12 = objc_alloc_init(MEMORY[0x1E698DE80]);
    [v12 setPresentingViewController:controllerCopy];
    appleID = [appleAccountInformation appleID];
    [v12 setUsername:appleID];

    aaAlternateDSID = [appleAccountInformation aaAlternateDSID];
    [v12 setAltDSID:aaAlternateDSID];

    [v12 setIsUsernameEditable:0];
    [v12 setShouldPromptForPasswordOnly:1];
    [v12 setAuthenticationType:2];
    _authenticationReason = [(PKSecurityCapabilitiesController *)self _authenticationReason];
    [v12 setReason:_authenticationReason];

    v16 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__PKSecurityCapabilitiesController__presentPasswordPromptWithPresentingViewController_completion___block_invoke;
    v17[3] = &unk_1E80164D0;
    v19 = v8;
    v17[4] = self;
    v18 = controllerCopy;
    [v16 authenticateWithContext:v12 completion:v17];
  }
}

void __98__PKSecurityCapabilitiesController__presentPasswordPromptWithPresentingViewController_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PKSecurityCapabilitiesController__presentPasswordPromptWithPresentingViewController_completion___block_invoke_2;
  block[3] = &unk_1E8014D58;
  v13 = v5;
  v14 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v17 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __98__PKSecurityCapabilitiesController__presentPasswordPromptWithPresentingViewController_completion___block_invoke_2(id *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] allKeys];
    v4 = a1[5];
    *buf = 138412546;
    v28 = v3;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Request for user authentication returned result with keys: %@ error: %@", buf, 0x16u);
  }

  v5 = a1[5];
  if (!v5)
  {
    v9 = *(a1[8] + 2);
    goto LABEL_8;
  }

  v6 = [v5 domain];
  v7 = *MEMORY[0x1E698DB28];
  if ([v6 isEqual:*MEMORY[0x1E698DB28]])
  {
    v8 = [a1[5] code];

    if (v8 == -7003)
    {
      v9 = *(a1[8] + 2);
LABEL_8:
      v9();
      return;
    }
  }

  else
  {
  }

  v10 = [a1[5] domain];
  if (![v10 isEqual:v7])
  {

    goto LABEL_15;
  }

  v11 = [a1[5] code];

  if (v11 != -7005)
  {
LABEL_15:
    v18 = a1[8];
    v19 = [a1[6] _genericDisplayableError];
    v18[2](v18, 2, v19);

    goto LABEL_16;
  }

  v12 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);
  v13 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
  v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v13 preferredStyle:1];
  v15 = MEMORY[0x1E69DC648];
  v16 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __98__PKSecurityCapabilitiesController__presentPasswordPromptWithPresentingViewController_completion___block_invoke_163;
  v24 = &unk_1E80164A8;
  v26 = a1[8];
  v25 = a1[5];
  v17 = [v15 actionWithTitle:v16 style:1 handler:&v21];
  [v14 addAction:{v17, v21, v22, v23, v24}];

  if (!v14)
  {
LABEL_16:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Error: Tried to present a user error for authentication request but could not generate one. Exiting", buf, 2u);
    }

    v20 = a1[8];
    v14 = [a1[6] _genericDisplayableError];
    v20[2](v20, 2, v14);
    goto LABEL_19;
  }

  [a1[7] presentViewController:v14 animated:1 completion:0];
LABEL_19:
}

- (void)_isEnabledForSecurityRequirements:(unint64_t)requirements withCompletion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  IsBridge = PKPaymentSetupContextIsBridge();
  v8 = dispatch_group_create();
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PKSecurityCapabilitiesRequirementToString(requirements);
    *buf = 138412290;
    *v40 = v10;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Checking security requirements: %@", buf, 0xCu);
  }

  if (IsBridge && PKPassbookIsCurrentlyDeletedByUser())
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PKSecurityCapabilitiesRequirementToString(requirements & 0x38);
      *buf = 67109378;
      *v40 = 1;
      *&v40[4] = 2112;
      *&v40[6] = v11;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Is Bridge: %d, Skipping requirement checks: %@", buf, 0x12u);
    }

    goto LABEL_11;
  }

  if ((requirements & 0xA8) != 0)
  {
    dispatch_group_enter(v8);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __85__PKSecurityCapabilitiesController__isEnabledForSecurityRequirements_withCompletion___block_invoke;
    v24[3] = &unk_1E8016520;
    v28 = (requirements & 8) != 0;
    v26 = &v35;
    v27 = &v31;
    v29 = (requirements & 0x20) != 0;
    v30 = (requirements & 0x80) != 0;
    v25 = v8;
    [(PKSecurityCapabilitiesController *)self _isManateeCapableWithCompletion:v24];
  }

  if ((requirements & 0x10) != 0)
  {
    dispatch_group_enter(v8);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__PKSecurityCapabilitiesController__isEnabledForSecurityRequirements_withCompletion___block_invoke_3;
    v20[3] = &unk_1E8014B08;
    v22 = &v35;
    v23 = &v31;
    v21 = v8;
    [(PKSecurityCapabilitiesController *)self _isMissingTLKsWithCompletion:v20];
    v9 = v21;
LABEL_11:
  }

  if ((requirements & 4) != 0)
  {
    isHSA2Enabled = [(PKSecurityCapabilitiesController *)self isHSA2Enabled];
    *(v36 + 24) &= isHSA2Enabled;
    if (!isHSA2Enabled)
    {
      v32[3] |= 4uLL;
    }
  }

  if ((requirements & 0x40) != 0)
  {
    v13 = PKPasscodeEnabled();
    *(v36 + 24) &= v13 != 0;
    if (!v13)
    {
      v32[3] |= 0x40uLL;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKSecurityCapabilitiesController__isEnabledForSecurityRequirements_withCompletion___block_invoke_5;
  block[3] = &unk_1E8016570;
  v18 = &v31;
  requirementsCopy = requirements;
  v16 = completionCopy;
  v17 = &v35;
  v14 = completionCopy;
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
}

void __85__PKSecurityCapabilitiesController__isEnabledForSecurityRequirements_withCompletion___block_invoke(uint64_t a1, char a2, char a3, char a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKSecurityCapabilitiesController__isEnabledForSecurityRequirements_withCompletion___block_invoke_2;
  block[3] = &unk_1E80164F8;
  v9 = a2;
  v10 = *(a1 + 56);
  v8 = *(a1 + 48);
  v11 = a3;
  v12 = *(a1 + 58);
  v13 = a4;
  v5 = *(a1 + 32);
  v4 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __85__PKSecurityCapabilitiesController__isEnabledForSecurityRequirements_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24) == 1)
  {
    v2 = *(a1 + 56);
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 24) = v2 & 1;
  if (*(a1 + 57) == 1 && (*(a1 + 56) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) |= 8uLL;
  }

  if (*(a1 + 58) == 1 && (*(a1 + 59) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) |= 0x20uLL;
  }

  if (*(a1 + 60) == 1 && *(a1 + 61) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) |= 0x80uLL;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __85__PKSecurityCapabilitiesController__isEnabledForSecurityRequirements_withCompletion___block_invoke_3(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKSecurityCapabilitiesController__isEnabledForSecurityRequirements_withCompletion___block_invoke_4;
  block[3] = &unk_1E8016548;
  v7 = a2;
  v6 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __85__PKSecurityCapabilitiesController__isEnabledForSecurityRequirements_withCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24) == 1)
  {
    v2 = *(a1 + 56) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 24) = v2 & 1;
  if (*(a1 + 56) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) |= 0x10uLL;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __85__PKSecurityCapabilitiesController__isEnabledForSecurityRequirements_withCompletion___block_invoke_5(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKSecurityCapabilitiesRequirementToString(a1[7]);
    if (*(*(a1[5] + 8) + 24))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = PKSecurityCapabilitiesRequirementToString(*(*(a1[6] + 8) + 24));
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Finished checking security requirements for %@. isEnabled %@, missing requirements: %@", &v7, 0x20u);
  }

  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24));
  }

  return result;
}

- (id)_missingTLKsAlertController
{
  feature = self->_feature;
  if (feature > 5)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    if (((1 << feature) & 0x39) != 0)
    {
      v3 = PKLocalizedPaymentString(&cfstr_TlksResetFaile.isa);
      PKLocalizedPaymentString(&cfstr_TlksResetFaile_0.isa);
    }

    else
    {
      v3 = PKLocalizedFeatureString();
      PKLocalizedFeatureString();
    }
    v4 = ;
  }

  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  return v5;
}

- (id)_genericDisplayableError
{
  v2 = 0;
  feature = self->_feature;
  if (feature > 1)
  {
    if (feature == 2)
    {
      v2 = PKLocalizedFeatureString();
      v5 = PKLocalizedFeatureString();
      goto LABEL_9;
    }

    v4 = 0;
    if (feature != 5)
    {
      goto LABEL_10;
    }
  }

  else if (feature)
  {
    v4 = 0;
    if (feature != 1)
    {
      goto LABEL_10;
    }

    v2 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_0.isa);
    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_1.isa);
    goto LABEL_9;
  }

  v2 = PKLocalizedPaymentString(&cfstr_GenericErrorTi.isa);
  v5 = PKLocalizedPaymentString(&cfstr_GenericErrorMe.isa);
LABEL_9:
  v4 = v5;
LABEL_10:
  v6 = PKDisplayableErrorCustom();

  return v6;
}

- (id)_createAuthContext
{
  v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v6 = [mEMORY[0x1E698DC80] altDSIDForAccount:aa_primaryAppleAccount];

  v7 = objc_alloc_init(MEMORY[0x1E698DCB8]);
  [v7 setAltDSID:v6];
  [v7 setSecurityUpgradeContext:*MEMORY[0x1E698DC50]];
  _authenticationReason = [(PKSecurityCapabilitiesController *)self _authenticationReason];
  [v7 setReason:_authenticationReason];

  return v7;
}

- (void)_isManateeCapableWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    cloudService = self->_cloudService;
    v6 = PKCurrentCloudStoreApplePayContainerName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PKSecurityCapabilitiesController__isManateeCapableWithCompletion___block_invoke;
    v7[3] = &unk_1E8016598;
    v8 = completionCopy;
    [(PKCloudStoreService *)cloudService cloudStoreStatusForContainer:v6 completion:v7];
  }
}

void __68__PKSecurityCapabilitiesController__isManateeCapableWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 description];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Error: %@ encountered when evaluating CloudKit account", &v11, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 supportsDeviceToDeviceEncryption], a3, objc_msgSend(v7, "needsToVerifyTerms"));
}

- (void)_isMissingTLKsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    cloudService = self->_cloudService;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__PKSecurityCapabilitiesController__isMissingTLKsWithCompletion___block_invoke;
    v7[3] = &unk_1E8013FF8;
    v8 = completionCopy;
    [(PKCloudStoreService *)cloudService checkTLKsMissingWithCompletion:v7];
  }
}

- (id)_authenticationReason
{
  mEMORY[0x1E69B8568] = [MEMORY[0x1E69B8568] sharedInstance];
  appleAccountInformation = [mEMORY[0x1E69B8568] appleAccountInformation];

  if (self->_feature - 1 > 1)
  {
    v7 = 0;
  }

  else
  {
    IsBridge = PKPaymentSetupContextIsBridge();
    v6 = PKDeviceSpecificLocalizedStringKeyForKey(@"ACCOUNT_PROVISION_PASS_AUTHENTICATION_REASON_FORMAT", IsBridge);
    appleID = [appleAccountInformation appleID];
    v7 = PKLocalizedFeatureString();
  }

  return v7;
}

@end