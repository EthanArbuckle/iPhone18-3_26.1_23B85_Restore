@interface PKAccountInvitationController
+ (BOOL)canInviteAccountUserWithAccount:(id)a3;
+ (void)presentCreateAccountUserInvitationWithViewController:(id)a3 account:(id)a4 accountUserCollection:(id)a5 familyMemberCollection:(id)a6 context:(int64_t)a7 completion:(id)a8;
- (BOOL)isCurrentFamilyMemberAnOrganizer;
- (PKAccountInvitationController)initWithAccount:(id)a3 context:(int64_t)a4 familyMemberCollection:(id)a5;
- (id)_filteredFamilyMembersFromFamilyMembers:(id)a3 accountUsers:(id)a4 invitations:(id)a5;
- (int64_t)familyCircleCount;
- (void)_accessObserversWithHandler:(id)a3;
- (void)_fetchFamilyMemberDeviceCapabilties;
- (void)accessLevelOptionsWithCompletion:(id)a3;
- (void)dealloc;
- (void)didUpdateFamilyMembers:(id)a3;
- (void)familyMembersForceReload:(BOOL)a3 completion:(id)a4;
- (void)nextViewControllerWithCompletion:(id)a3;
- (void)registerObserver:(id)a3;
- (void)setAccessLevel:(unint64_t)a3;
- (void)setFamilyMember:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation PKAccountInvitationController

- (PKAccountInvitationController)initWithAccount:(id)a3 context:(int64_t)a4 familyMemberCollection:(id)a5
{
  v9 = a3;
  v10 = a5;
  v33.receiver = self;
  v33.super_class = PKAccountInvitationController;
  v11 = [(PKAccountInvitationController *)&v33 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, a3);
    v12->_context = a4;
    objc_storeStrong(&v12->_familyMemberCollection, a5);
    v12->_feature = [v9 feature];
    v13 = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v12->_accountService;
    v12->_accountService = v13;

    v15 = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v12->_paymentService;
    v12->_paymentService = v15;

    [(PKPaymentService *)v12->_paymentService registerObserver:v12];
    v17 = objc_alloc_init(MEMORY[0x1E69B87B0]);
    deviceCapabiltiesManager = v12->_deviceCapabiltiesManager;
    v12->_deviceCapabiltiesManager = v17;

    v12->_lockObservers._os_unfair_lock_opaque = 0;
    v19 = dispatch_queue_create("com.apple.passkitui.PKAccountInvitationController.reply", 0);
    replyQueue = v12->_replyQueue;
    v12->_replyQueue = v19;

    v21 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v12->_observers;
    v12->_observers = v21;

    v23 = [(PKAccount *)v12->_account applyServiceURL];
    if (v23)
    {
      v24 = [MEMORY[0x1E69B8EF8] sharedService];
      v25 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:v24];
      v26 = [[PKApplyControllerConfiguration alloc] initWithSetupDelegate:0 context:a4 provisioningController:v25];
      [(PKApplyControllerConfiguration *)v26 setFeature:v12->_feature];
      [(PKApplyControllerConfiguration *)v26 setAccount:v9];
      [(PKApplyControllerConfiguration *)v26 setApplicationType:2];
      v27 = [[PKApplyController alloc] initWithApplyConfiguration:v26];
      applyController = v12->_applyController;
      v12->_applyController = v27;

      [(PKApplyController *)v12->_applyController setApplyServiceURL:v23];
      v29 = v12->_applyController;
      v30 = [MEMORY[0x1E69B8330] analyticsAccountTypeForAccount:v9];
      [(PKApplyController *)v29 setAnalyticsExistingAccountType:v30];

      if (v12->_familyMemberCollection)
      {
        [(PKAccountInvitationController *)v12 _fetchFamilyMemberDeviceCapabilties];
      }
    }

    else
    {
      v24 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "Cannot create invitation controller without apply service URL", v32, 2u);
      }
    }
  }

  return v12;
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKAccountInvitationController;
  [(PKAccountInvitationController *)&v3 dealloc];
}

+ (BOOL)canInviteAccountUserWithAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountUserInvitationAllowed] && objc_msgSend(v3, "accessLevel") == 1 && objc_msgSend(v3, "state") == 1;

  return v4;
}

+ (void)presentCreateAccountUserInvitationWithViewController:(id)a3 account:(id)a4 accountUserCollection:(id)a5 familyMemberCollection:(id)a6 context:(int64_t)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  [v15 stateReason];
  if (PKAccountStateReasonIsInMerge())
  {
    v19 = PKLocalizedFeatureString();
    v20 = PKLocalizedFeatureString();
    v21 = PKDisplayableErrorCustom();

    v22 = PKAlertForDisplayableErrorWithHandlers(v21, 0, 0, 0);
    [v14 presentViewController:v22 animated:1 completion:0];
    if (v18)
    {
      v18[2](v18);
    }
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__33;
    v55 = __Block_byref_object_dispose__33;
    v56 = v15;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__33;
    v49 = __Block_byref_object_dispose__33;
    v50 = v17;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__33;
    v43 = __Block_byref_object_dispose__33;
    v44 = v16;
    objc_initWeak(&location, a1);
    if (!v52[5])
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke;
      v36[3] = &unk_1E801B6D0;
      objc_copyWeak(&v37, &location);
      v36[4] = &v51;
      [v21 addOperation:v36];
      objc_destroyWeak(&v37);
    }

    if (!v46[5])
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_4;
      v34[3] = &unk_1E801B6D0;
      objc_copyWeak(&v35, &location);
      v34[4] = &v45;
      [v21 addOperation:v34];
      objc_destroyWeak(&v35);
    }

    if (!v40[5])
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_7;
      v32[3] = &unk_1E801B6F8;
      objc_copyWeak(&v33, &location);
      v32[4] = &v51;
      v32[5] = &v39;
      [v21 addOperation:v32];
      objc_destroyWeak(&v33);
    }

    v23 = [MEMORY[0x1E695DFB0] null];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_10;
    v25[3] = &unk_1E801B748;
    objc_copyWeak(v31, &location);
    v27 = v18;
    v28 = &v51;
    v31[1] = a1;
    v31[2] = a7;
    v29 = &v39;
    v30 = &v45;
    v26 = v14;
    v24 = [v21 evaluateWithInput:v23 completion:v25];

    objc_destroyWeak(v31);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v39, 8);

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v51, 8);
  }
}

void __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = [MEMORY[0x1E69B8400] sharedInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_2;
    v10[3] = &unk_1E8012D30;
    v13 = *(a1 + 32);
    v12 = v7;
    v11 = v6;
    [v9 defaultAccountForFeature:2 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_3;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = [MEMORY[0x1E69B8DB8] paymentService];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_5;
    v10[3] = &unk_1E8012DD0;
    v13 = *(a1 + 32);
    v12 = v7;
    v11 = v6;
    [v9 familyMembersWithCompletion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_6;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_6(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:a1[4]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[6] + 16);

  return v5();
}

void __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = [MEMORY[0x1E69B8400] sharedInstance];
    v10 = [*(*(*(a1 + 32) + 8) + 40) accountIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_8;
    v11[3] = &unk_1E8012DA8;
    v14 = *(a1 + 40);
    v13 = v7;
    v12 = v6;
    [v9 accountUsersForAccountWithIdentifier:v10 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_9;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_9(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:a1[4]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[6] + 16);

  return v5();
}

void __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_10(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_11;
  v3[3] = &unk_1E801B720;
  objc_copyWeak(v8, (a1 + 72));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v2 = *(a1 + 88);
  v8[1] = *(a1 + 80);
  v8[2] = v2;
  v7 = *(a1 + 64);
  v4 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v3);

  objc_destroyWeak(v8);
}

void __158__PKAccountInvitationController_presentCreateAccountUserInvitationWithViewController_account_accountUserCollection_familyMemberCollection_context_completion___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if ([*(a1 + 80) canInviteAccountUserWithAccount:*(*(*(a1 + 48) + 8) + 40)])
    {
      v3 = [*(*(*(a1 + 56) + 8) + 40) activeAccountUsersExcludingCurrentAccountUser];
      v4 = [v3 count];

      v5 = [*(*(*(a1 + 48) + 8) + 40) accountUserInvitationAllowedFeatureDescriptor];
      v6 = [v5 maximumAccountUsers];

      if (v4 >= v6)
      {
        v7 = [[PKAccountUserLimitReachedViewController alloc] initWithAccount:*(*(*(a1 + 48) + 8) + 40) context:*(a1 + 88)];
        v8 = [[PKNavigationController alloc] initWithRootViewController:v7];
        [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
      }

      else
      {
        v7 = [[PKAccountInvitationController alloc] initWithAccount:*(*(*(a1 + 48) + 8) + 40) context:*(a1 + 88) familyMemberCollection:*(*(*(a1 + 64) + 8) + 40)];
        v8 = [[PKAccountInvitationOnboardingViewController alloc] initWithController:v7];
        v9 = [[PKNavigationController alloc] initWithRootViewController:v8];
        [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
      }
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(&v7->super.super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1BD026000, &v7->super.super.super.super, OS_LOG_TYPE_DEFAULT, "Not presenting account invitation as account is ineligible", v11, 2u);
      }
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

- (void)setFamilyMember:(id)a3
{
  v5 = a3;
  if (self->_familyMember != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_familyMember, a3);
    [(PKApplyController *)self->_applyController setFamilyMember:self->_familyMember];
    v5 = v6;
  }
}

- (void)setAccessLevel:(unint64_t)a3
{
  if (self->_accessLevel != a3)
  {
    self->_accessLevel = a3;
    [(PKApplyController *)self->_applyController setAccessLevel:?];
  }
}

- (void)didUpdateFamilyMembers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PKFamilyMemberCollection *)self->_familyMemberCollection familyMembers];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Family members did update from existing members %@ to new members %@", buf, 0x16u);
  }

  if (v4)
  {
    v7 = [(PKFamilyMemberCollection *)self->_familyMemberCollection familyMembers];
    v8 = PKEqualObjects();

    if ((v8 & 1) == 0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__PKAccountInvitationController_didUpdateFamilyMembers___block_invoke;
      v9[3] = &unk_1E8010A10;
      v9[4] = self;
      v10 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], v9);
    }
  }
}

void __56__PKAccountInvitationController_didUpdateFamilyMembers___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 96) altDSID];
  if (v2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = [v8 altDSID];
          v10 = v2;
          v11 = v10;
          if (v9 == v10)
          {

LABEL_16:
            objc_storeStrong((*(a1 + 32) + 96), v8);
            goto LABEL_17;
          }

          if (v9)
          {
            v12 = [v9 isEqualToString:v10];

            if (v12)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  v13 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 40)];
  v14 = *(a1 + 32);
  v15 = *(v14 + 88);
  *(v14 + 88) = v13;

  [*(a1 + 32) _fetchFamilyMemberDeviceCapabilties];
  [*(a1 + 32) _informObserversOfFamilyMemberChange];
}

- (void)nextViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!self->_familyMember)
  {
    v7 = PKAccountInvitationChooseMemberViewController;
LABEL_7:
    v8 = [[v7 alloc] initWithController:self];
    v9[2](v9, v8, 0);

    goto LABEL_8;
  }

  if (!self->_accessLevel)
  {
    v7 = PKAccountInvitationAccessLevelViewController;
    goto LABEL_7;
  }

  v5 = v4;
  applyController = self->_applyController;
  if (applyController)
  {
    [(PKApplyController *)applyController nextViewControllerWithCompletion:v5];
  }

  else
  {
    (*(v5 + 2))(v5, 0, 0);
  }

LABEL_8:
}

- (BOOL)isCurrentFamilyMemberAnOrganizer
{
  v2 = [(PKFamilyMemberCollection *)self->_familyMemberCollection currentUser];
  v3 = [v2 isOrganizer];

  return v3;
}

- (int64_t)familyCircleCount
{
  v2 = [(PKFamilyMemberCollection *)self->_familyMemberCollection familyMembers];
  v3 = [v2 count];

  return v3;
}

- (void)familyMembersForceReload:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v8 = v7;
    if (self->_familyMemberCollection)
    {
      v9 = !v4;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke;
      v37[3] = &unk_1E801B770;
      v37[4] = self;
      v38 = v4;
      [v7 addOperation:v37];
    }

    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = __Block_byref_object_copy__33;
    v35[4] = __Block_byref_object_dispose__33;
    v36 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_4;
    v33[3] = &unk_1E801B798;
    v34 = v4;
    v33[4] = self;
    v33[5] = v35;
    [v8 addOperation:v33];
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__33;
    v31[4] = __Block_byref_object_dispose__33;
    v32 = 0;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_7;
    v30[3] = &unk_1E8016750;
    v30[4] = self;
    v30[5] = v31;
    [v8 addOperation:v30];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__33;
    v28[4] = __Block_byref_object_dispose__33;
    v29 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_10;
    v27[3] = &unk_1E8016750;
    v27[4] = self;
    v27[5] = v28;
    [v8 addOperation:v27];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__33;
    v25[4] = __Block_byref_object_dispose__33;
    v26 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_13;
    v24[3] = &unk_1E801B830;
    v24[4] = self;
    v24[5] = v25;
    v24[6] = v31;
    v24[7] = v28;
    [v8 addOperation:v24];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__33;
    v22[4] = __Block_byref_object_dispose__33;
    v23 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_15;
    v21[3] = &unk_1E801B8C8;
    v21[4] = self;
    v21[5] = v25;
    v21[6] = v22;
    [v8 addOperation:v21];
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__33;
    v19[4] = __Block_byref_object_dispose__33;
    v20 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_19;
    v18[3] = &unk_1E8015E88;
    v18[4] = v35;
    v18[5] = v19;
    [v8 addOperation:v18];
    v10 = [MEMORY[0x1E695DFB0] null];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_20;
    v12[3] = &unk_1E801B8F0;
    v13 = v6;
    v14 = v25;
    v15 = v35;
    v16 = v22;
    v17 = v19;
    v11 = [v8 evaluateWithInput:v10 completion:v12];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v22, 8);

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v28, 8);

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v35, 8);
  }
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v10 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_2;
  v13[3] = &unk_1E80149E0;
  v14 = v6;
  v15 = v7;
  v13[4] = v8;
  v11 = v6;
  v12 = v7;
  [v9 familyMembersIgnoringCache:v10 completion:v13];
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_3;
  v5[3] = &unk_1E8014760;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_3(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:a1[5]];
  v3 = a1[4];
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  v5 = *(a1[7] + 16);

  return v5();
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_5;
  v13[3] = &unk_1E8012DD0;
  v10 = *(a1 + 40);
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v8 pendingFamilyMembersIgnoringCache:v9 completion:v13];
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_6;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_6(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = [*(v8 + 48) accountIdentifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_8;
  v14[3] = &unk_1E801B7C0;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v11;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [v9 updateAccountUsersForAccountWithIdentifier:v10 completion:v14];
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_9;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v10 = [*(v8 + 48) accountIdentifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_11;
  v14[3] = &unk_1E801B7E8;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v11;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [v9 updateFeatureApplicationsForAccountIdentifier:v10 completion:v14];
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_12;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_12(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_13(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a1[4];
  v7 = v6[11];
  v8 = a4;
  v9 = a3;
  v10 = [v7 familyMembers];
  v11 = [v6 _filteredFamilyMembersFromFamilyMembers:v10 accountUsers:*(*(a1[6] + 8) + 40) invitations:*(*(a1[7] + 8) + 40)];
  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(*(a1[5] + 8) + 40) pk_arrayByApplyingBlock:&__block_literal_global_136];
  [*(a1[4] + 80) fetchDeviceCapabilitesForAppleIDs:v14 associatedFamilyMembers:*(*(a1[5] + 8) + 40)];
  v8[2](v8, v9, 0);
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_15(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(*(*(a1 + 40) + 8) + 40) pk_arrayByApplyingBlock:&__block_literal_global_86];
  v9 = *(*(a1 + 32) + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_17;
  v12[3] = &unk_1E801B8A0;
  v15 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v9 photosForFamilyMembersWithDSIDs:v8 completion:v12];
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_18;
  block[3] = &unk_1E801B878;
  v4 = *(a1 + 56);
  v9 = v3;
  v12 = v4;
  v7 = *(a1 + 40);
  v5 = v7;
  v11 = v7;
  v10 = *(a1 + 32);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_18(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 dsid];
        v10 = [v8 altDSID];
        v11 = [*(a1 + 32) objectForKey:v9];
        if (v11)
        {
          v12 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v11];
          [v2 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v2 copy];
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  (*(*(a1 + 48) + 16))();
}

void __69__PKAccountInvitationController_familyMembersForceReload_completion___block_invoke_19(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v23 = a4;
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = a1;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 inviteEmail];
        if (v12)
        {
          v13 = getFAProfilePictureStoreClass[0]();
          v14 = [v11 contact];
          v15 = [v11 firstName];
          v16 = [v11 lastName];
          v17 = [(objc_class *)v13 profilePictureForContact:v14 serverImageData:0 firstName:v15 lastName:v16 diameter:80.0];

          if (v17)
          {
            v18 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v17];
            [v25 setObject:v18 forKeyedSubscript:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v19 = [v25 copy];
  v20 = *(*(v22 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v23[2](v23, v24, 0);
}

- (void)accessLevelOptionsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    paymentService = self->_paymentService;
    v6 = [(PKAccount *)self->_account accountIdentifier];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__PKAccountInvitationController_accessLevelOptionsWithCompletion___block_invoke;
    v7[3] = &unk_1E8010DF8;
    v7[4] = self;
    v8 = v4;
    [(PKPaymentService *)paymentService featureApplicationsForAccountIdentifier:v6 completion:v7];
  }
}

void __66__PKAccountInvitationController_accessLevelOptionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pk_objectsPassingTest:&__block_literal_global_92];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKAccountInvitationController_accessLevelOptionsWithCompletion___block_invoke_3;
  block[3] = &unk_1E8012300;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __66__PKAccountInvitationController_accessLevelOptionsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 invitationDetails];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 originatorAltDSID];
    v5 = PKAltDSIDIsCurrentUser();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __66__PKAccountInvitationController_accessLevelOptionsWithCompletion___block_invoke_3(uint64_t a1)
{
  v17 = [*(*(a1 + 32) + 48) accountUserInvitationAllowedFeatureDescriptor];
  v2 = [v17 minimumParticipantAge];
  v3 = [v17 minimumOwnerAge];
  v4 = [*(*(a1 + 32) + 96) age];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [*(a1 + 40) pk_firstObjectPassingTest:&__block_literal_global_96];

  if (([*(*(a1 + 32) + 48) isCoOwner] & 1) == 0 && !v6 && v4 >= v3)
  {
    v7 = [[PKAccountInvitationAccessLevelOption alloc] initWithAccessLevel:1];
    v8 = PKLocalizedFeatureString();
    [(PKAccountInvitationAccessLevelOption *)v7 setTitle:v8];

    v9 = PKLocalizedFeatureString();
    [(PKAccountInvitationAccessLevelOption *)v7 setSubtitle:v9];

    v10 = PKUIImageNamed(@"MadisonJointOwner");
    [(PKAccountInvitationAccessLevelOption *)v7 setImage:v10];

    [v5 addObject:v7];
  }

  if (v4 >= v2)
  {
    v11 = [[PKAccountInvitationAccessLevelOption alloc] initWithAccessLevel:2];
    v12 = PKLocalizedFeatureString();
    [(PKAccountInvitationAccessLevelOption *)v11 setTitle:v12];

    v13 = PKLocalizedFeatureString();
    [(PKAccountInvitationAccessLevelOption *)v11 setSubtitle:v13];

    v14 = PKUIImageNamed(@"MadisonParticipant");
    [(PKAccountInvitationAccessLevelOption *)v11 setImage:v14];

    [v5 addObject:v11];
  }

  v15 = *(a1 + 48);
  v16 = [v5 copy];
  (*(v15 + 16))(v15, v16);
}

uint64_t __66__PKAccountInvitationController_accessLevelOptionsWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 invitationDetails];
  v4 = v3;
  if (v3 && [v3 accountUserAccessLevel] == 1)
  {
    [v2 applicationState];
    IsPendingInvitation = PKFeatureApplicationStateIsPendingInvitation();
  }

  else
  {
    IsPendingInvitation = 0;
  }

  return IsPendingInvitation;
}

- (id)_filteredFamilyMembersFromFamilyMembers:(id)a3 accountUsers:(id)a4 invitations:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        [v16 accountState];
        v17 = [v16 altDSID];
        if (v17 && (PKAccountStateIsTerminal() & 1) == 0)
        {
          [v10 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v13);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        v24 = [v23 invitationDetails];
        v25 = [v24 accountUserAltDSID];

        if (v25)
        {
          [v23 applicationState];
          if (PKFeatureApplicationStateIsPendingInvitation())
          {
            [v10 addObject:v25];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v20);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __98__PKAccountInvitationController__filteredFamilyMembersFromFamilyMembers_accountUsers_invitations___block_invoke;
  v29[3] = &unk_1E801B938;
  v30 = v10;
  v26 = v10;
  v27 = [v7 pk_objectsPassingTest:v29];

  return v27;
}

uint64_t __98__PKAccountInvitationController__filteredFamilyMembersFromFamilyMembers_accountUsers_invitations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMe])
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 altDSID];
    v4 = [v5 containsObject:v6] ^ 1;
  }

  return v4;
}

- (void)_fetchFamilyMemberDeviceCapabilties
{
  v3 = [(PKFamilyMemberCollection *)self->_familyMemberCollection familyMembers];
  v5 = [(PKAccountInvitationController *)self _filteredFamilyMembersFromFamilyMembers:v3 accountUsers:0 invitations:0];

  v4 = [v5 pk_arrayByApplyingBlock:&__block_literal_global_119];
  [(PKDeviceSharingCapabilitiesManager *)self->_deviceCapabiltiesManager fetchDeviceCapabilitesForAppleIDs:v4 associatedFamilyMembers:v5];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    v4 = v5;
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    v4 = v5;
  }
}

- (void)_accessObserversWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    v5 = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_lockObservers);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__PKAccountInvitationController__accessObserversWithHandler___block_invoke;
    v8[3] = &unk_1E8010DD0;
    v9 = v5;
    v10 = v4;
    v7 = v5;
    dispatch_async(replyQueue, v8);
  }
}

void __61__PKAccountInvitationController__accessObserversWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __69__PKAccountInvitationController__informObserversOfFamilyMemberChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didUpdateInvitationControllerFamilyCircle];
  }
}

@end