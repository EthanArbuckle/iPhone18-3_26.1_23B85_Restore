@interface PKPaymentSetupAssistantController
- (BOOL)isFollowupNeededReturningRequirements:(unint64_t *)a3;
- (PKPaymentSetupAssistantController)initWithSetupAssistant:(unint64_t)a3 setupAssistantContext:(id)a4;
- (PKPaymentSetupAssistantController)initWithSetupAssistantContext:(id)a3;
- (void)_bridgeStartingViewControllerForPaymentSetupContext:(int64_t)a3 completion:(id)a4;
- (void)_phoneStartingViewControllerForPaymentSetupContext:(int64_t)a3 completion:(id)a4;
- (void)_setupAssistantViewControllerWithCompletion:(id)a3;
- (void)prepareForPresentationWithCompletion:(id)a3;
@end

@implementation PKPaymentSetupAssistantController

- (PKPaymentSetupAssistantController)initWithSetupAssistantContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentSetupAssistantController;
  v6 = [(PKPaymentSetupAssistantCoreController *)&v9 initWithSetupAssistantContext:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_setupAssistantContext, a3);
  }

  return v7;
}

- (PKPaymentSetupAssistantController)initWithSetupAssistant:(unint64_t)a3 setupAssistantContext:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (a3 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    if ([v6 setupAssistant] != v8)
    {
      [v7 setSetupAssistant:v8];
    }

    v9 = [(PKPaymentSetupAssistantController *)self initWithSetupAssistantContext:v7];
  }

  else
  {
    v10 = [[PKSetupAssistantContext alloc] initWithSetupAssistant:a3];
    v9 = [(PKPaymentSetupAssistantController *)self initWithSetupAssistantContext:v10];
  }

  return v9;
}

- (BOOL)isFollowupNeededReturningRequirements:(unint64_t *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  setupAssistantContext = self->_setupAssistantContext;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PKPaymentSetupAssistantController_isFollowupNeededReturningRequirements___block_invoke;
  v6[3] = &unk_1E8018D50;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = a3;
  [(PKSetupAssistantContext *)setupAssistantContext prepareForFollowupQueryWithHandler:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __75__PKPaymentSetupAssistantController_isFollowupNeededReturningRequirements___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setupAssistantNeedsToRunReturningRequirements:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)prepareForPresentationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PKPaymentSetupAssistantController_prepareForPresentationWithCompletion___block_invoke;
    v7[3] = &unk_1E8018DA0;
    v7[4] = self;
    v8 = v4;
    [(PKPaymentSetupAssistantCoreController *)self _extendedSetupAssistantNeedsToRunWithCompletion:v7];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Error: No completion provided to prepareForPresentationWithCompletion:", buf, 2u);
    }
  }
}

void __74__PKPaymentSetupAssistantController_prepareForPresentationWithCompletion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 || !a2)
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__PKPaymentSetupAssistantController_prepareForPresentationWithCompletion___block_invoke_2;
    v6[3] = &unk_1E8018D78;
    v9 = 1;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 0;
    [v4 _setupAssistantViewControllerWithCompletion:v6];
  }
}

- (void)_setupAssistantViewControllerWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PKSetupAssistantContext *)self->_setupAssistantContext setupAssistant];
    if (v5 == 2)
    {
      if ([(PKPaymentSetupAssistantController *)self _isExpressSetupAssistant])
      {
        v8 = 6;
      }

      else
      {
        v8 = 5;
      }

      [(PKPaymentSetupAssistantController *)self _bridgeStartingViewControllerForPaymentSetupContext:v8 completion:v4];
    }

    else if (v5 == 1)
    {
      if ([(PKPaymentSetupAssistantController *)self _isExpressSetupAssistant])
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      [(PKPaymentSetupAssistantController *)self _phoneStartingViewControllerForPaymentSetupContext:v6 completion:v4];
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(PKSetupAssistantContext *)self->_setupAssistantContext setupAssistant];
        v11 = 134217984;
        v12 = v10;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Error: _setupAssistantViewControllerWithCompletion called with unsupported type %lu. File a radar!", &v11, 0xCu);
      }

      v4[2](v4, 0);
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Error: No completion provided to setupAssistantStartingViewController", &v11, 2u);
    }
  }
}

- (void)_bridgeStartingViewControllerForPaymentSetupContext:(int64_t)a3 completion:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    setupAssistantContext = self->_setupAssistantContext;
    *buf = 138543618;
    v44 = v9;
    v45 = 2112;
    v46 = setupAssistantContext;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ with context: %@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__PKPaymentSetupAssistantController__bridgeStartingViewControllerForPaymentSetupContext_completion___block_invoke;
  aBlock[3] = &unk_1E8018DC8;
  v42 = a2;
  v11 = v7;
  v41 = v11;
  v12 = _Block_copy(aBlock);
  if (self->_setupAssistantContext)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = self->_setupAssistantContext;
      v14 = [(PKSetupAssistantContext *)v13 parentFamilyMember];
      v15 = [(PKSetupAssistantContext *)v13 pairingFamilyMember];
      if (v15)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v31 = a3;
        v17 = [getNPKCompanionAgentConnectionClass_2[0]() watchPeerPaymentWebService];
        v18 = [MEMORY[0x1E69B9020] sharedService];
        v30 = v17;
        v19 = [v17 targetDevice];
        v28 = [v19 account];

        v29 = v18;
        v20 = [v18 targetDevice];
        v21 = [v20 account];

        buf[0] = 0;
        [(PKPaymentSetupAssistantCoreController *)self _shouldRunAppleCashFlow:buf shouldRunPaymentSetupFlow:0 pairingFamilyMember:v15 pairingPeerPaymentAccount:v28 parentFamilyMember:v14 parentPeerPaymentAccount:v21];
        if (buf[0] == 1)
        {
          v22 = [PKSetupAssistantPeerPaymentAddAssociatedAccountViewController alloc];
          v23 = [(PKSetupAssistantContext *)v13 dataProvider];
          v24 = [(PKSetupAssistantContext *)v13 peerPaymentDelegate];
          v25 = [(PKSetupAssistantPeerPaymentAddAssociatedAccountViewController *)v22 initWithPairingFamilyMember:v15 parentFamilyMember:v14 webService:v30 passLibraryDataProvider:v23 delegate:v24 context:v31];
          v32 = v21;
          v26 = v25;

          v12[2](v12, v26);
          goto LABEL_18;
        }

        a3 = v31;
      }
    }
  }

  v13 = [getNPKCompanionAgentConnectionClass_2[0]() watchPaymentWebService];
  v27 = [(PKPaymentSetupAssistantCoreController *)self _provisioningControllerWithWebService:v13];
  if (PKIsAltAccountPairedOrPairing())
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Configuring provisoning controller for alt account", buf, 2u);
    }

    [v27 setIsProvisioningForAltAccount:1];
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __100__PKPaymentSetupAssistantController__bridgeStartingViewControllerForPaymentSetupContext_completion___block_invoke_71;
  v33[3] = &unk_1E8018E40;
  v36 = v11;
  v34 = v27;
  v38 = a2;
  v37 = v12;
  v35 = self;
  v39 = a3;
  v14 = v27;
  [(PKPaymentSetupAssistantCoreController *)self _preflightPaymentSetupProvisioningController:v14 completion:v33];

  v15 = v36;
LABEL_18:
}

void __100__PKPaymentSetupAssistantController__bridgeStartingViewControllerForPaymentSetupContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = [v3 description];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ returning: %@", &v8, 0x16u);
  }

  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA020], 0);
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void __100__PKPaymentSetupAssistantController__bridgeStartingViewControllerForPaymentSetupContext_completion___block_invoke_71(uint64_t a1, char a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (!PKIsAltAccountPairedOrPairing())
    {
LABEL_5:
      v7 = [PKPaymentSetupAssistantDelegateProxy alloc];
      v8 = [*(*(a1 + 40) + 32) delegate];
      v9 = [(PKPaymentSetupAssistantDelegateProxy *)v7 initWithDelegate:v8 provisioningController:*(a1 + 32)];

      v10 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:*(a1 + 72) provisioningController:*(a1 + 32) groupsController:0];
      [v10 setIsFollowupSetupAssistant:{objc_msgSend(*(*(a1 + 40) + 32), "isFollowupAction")}];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v26 = 0x2020000000;
      v27 = 0;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __100__PKPaymentSetupAssistantController__bridgeStartingViewControllerForPaymentSetupContext_completion___block_invoke_75;
      v22[3] = &unk_1E8018DF0;
      v23 = *(a1 + 56);
      p_buf = &buf;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __100__PKPaymentSetupAssistantController__bridgeStartingViewControllerForPaymentSetupContext_completion___block_invoke_2;
      v17[3] = &unk_1E8018E18;
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v20 = &buf;
      v21 = v11;
      v19 = v12;
      v13 = v9;
      v18 = v13;
      [PKProvisioningFlowBridge startSetupAssistantFlowWithContext:v10 allowManualEntry:a3 onFirstViewControllerShown:v22 completion:v17];

      _Block_object_dispose(&buf, 8);
      return;
    }

    v5 = [*(a1 + 32) associatedCredentials];
    v6 = [v5 count];

    if (v6)
    {
      a3 = 0;
      goto LABEL_5;
    }

    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(*(a1 + 64));
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ not appearing in buddy as alt account with 0 parked cards", &buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v14 = *(*(a1 + 48) + 16);

    v14();
  }
}

uint64_t __100__PKPaymentSetupAssistantController__bridgeStartingViewControllerForPaymentSetupContext_completion___block_invoke_75(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t __100__PKPaymentSetupAssistantController__bridgeStartingViewControllerForPaymentSetupContext_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v2 = *(a1 + 32);

    return [v2 viewControllerDidTerminateSetupFlow:0];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ no initial view controller found", &v6, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_phoneStartingViewControllerForPaymentSetupContext:(int64_t)a3 completion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    setupAssistantContext = self->_setupAssistantContext;
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = setupAssistantContext;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ with context: %@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__PKPaymentSetupAssistantController__phoneStartingViewControllerForPaymentSetupContext_completion___block_invoke;
  aBlock[3] = &unk_1E8018E68;
  v25 = a2;
  v11 = v7;
  aBlock[4] = self;
  v24 = v11;
  v26 = a3;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentSetupAssistantCoreController *)self provisioningController];
  if (v13 && ([(PKPaymentSetupAssistantCoreController *)self preflightState]& 2) != 0)
  {
    v16 = [(PKPaymentSetupAssistantCoreController *)self preflightState];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      v18 = v17;
      v19 = @"NO";
      if ((v16 & 4) != 0)
      {
        v19 = @"YES";
      }

      *buf = 138543618;
      v28 = v17;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Preflight already completed, using result with allowsManualEntry: %@", buf, 0x16u);
    }

    v12[2](v12, v13, 1, (v16 >> 2) & 1);
  }

  else
  {
    v14 = [MEMORY[0x1E69B8EF8] sharedService];
    v15 = [(PKPaymentSetupAssistantCoreController *)self _provisioningControllerWithWebService:v14];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __99__PKPaymentSetupAssistantController__phoneStartingViewControllerForPaymentSetupContext_completion___block_invoke_87;
    v20[3] = &unk_1E8018E90;
    v22 = v12;
    v13 = v15;
    v21 = v13;
    [(PKPaymentSetupAssistantCoreController *)self _preflightPaymentSetupProvisioningController:v13 completion:v20];
  }
}

void __99__PKPaymentSetupAssistantController__phoneStartingViewControllerForPaymentSetupContext_completion___block_invoke(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v7 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__PKPaymentSetupAssistantController__phoneStartingViewControllerForPaymentSetupContext_completion___block_invoke_2;
  aBlock[3] = &unk_1E8018DC8;
  v17 = *(a1 + 40);
  v8 = v17;
  v28 = v17;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (a3)
  {
    v11 = [PKPaymentSetupAssistantDelegateProxy alloc];
    v12 = [*(*(a1 + 32) + 32) delegate];
    v13 = [(PKPaymentSetupAssistantDelegateProxy *)v11 initWithDelegate:v12 provisioningController:v7];

    v14 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:*(a1 + 56) provisioningController:v7 groupsController:0];
    [v14 setIsFollowupSetupAssistant:{objc_msgSend(*(*(a1 + 32) + 32), "isFollowupAction")}];
    v15 = [*(*(a1 + 32) + 32) proximitySetupLiaison];
    [v14 setProximitySetupLiaison:v15];

    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __99__PKPaymentSetupAssistantController__phoneStartingViewControllerForPaymentSetupContext_completion___block_invoke_77;
    v22[3] = &unk_1E8018DF0;
    v23 = *(a1 + 40);
    v24 = v25;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __99__PKPaymentSetupAssistantController__phoneStartingViewControllerForPaymentSetupContext_completion___block_invoke_2_78;
    v18[3] = &unk_1E8016728;
    v21 = v25;
    v20 = *(a1 + 40);
    v16 = v13;
    v19 = v16;
    [PKProvisioningFlowBridge startSetupAssistantFlowWithContext:v14 allowManualEntry:a4 onFirstViewControllerShown:v22 completion:v18];

    _Block_object_dispose(v25, 8);
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __99__PKPaymentSetupAssistantController__phoneStartingViewControllerForPaymentSetupContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = [v3 description];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ returning: %@", &v8, 0x16u);
  }

  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA020], 0);
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

uint64_t __99__PKPaymentSetupAssistantController__phoneStartingViewControllerForPaymentSetupContext_completion___block_invoke_77(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t __99__PKPaymentSetupAssistantController__phoneStartingViewControllerForPaymentSetupContext_completion___block_invoke_2_78(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    return [*(a1 + 32) viewControllerDidTerminateSetupFlow:0];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

@end