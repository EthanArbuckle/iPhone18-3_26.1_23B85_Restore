@interface PKPeerPaymentAssociatedAccountsController
- (PKPeerPaymentAssociatedAccountsController)initWithFamilyCollection:(id)collection avatarManager:(id)manager passLibraryDataProvider:(id)provider context:(int64_t)context;
- (PKPeerPaymentAssociatedAccountsController)initWithFamilyMembers:(id)members;
- (void)_peerPaymentAccountChanged:(id)changed;
- (void)addPeerPaymentAssociatedAccountSetupCompletedWithSucess:(BOOL)sucess updatedAccount:(id)account forFamilyMember:(id)member;
- (void)presentAssociatedAccountsFlowWithPresentationContext:(id)context fromNavigationController:(id)controller;
@end

@implementation PKPeerPaymentAssociatedAccountsController

- (PKPeerPaymentAssociatedAccountsController)initWithFamilyMembers:(id)members
{
  v27 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = membersCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = objc_alloc(MEMORY[0x1E69B8898]);
        v13 = [v12 initWithFAFamilyMember:{v11, v22}];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v14 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:v5];
  v15 = [PKContactAvatarManager alloc];
  defaultContactResolver = [MEMORY[0x1E69B8740] defaultContactResolver];
  defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
  v18 = [(PKContactAvatarManager *)v15 initWithContactResolver:defaultContactResolver paymentDataProvider:defaultDataProvider];

  v19 = objc_alloc_init(MEMORY[0x1E69B8A60]);
  v20 = [(PKPeerPaymentAssociatedAccountsController *)self initWithFamilyCollection:v14 avatarManager:v18 passLibraryDataProvider:v19 context:3];

  return v20;
}

- (PKPeerPaymentAssociatedAccountsController)initWithFamilyCollection:(id)collection avatarManager:(id)manager passLibraryDataProvider:(id)provider context:(int64_t)context
{
  collectionCopy = collection;
  managerCopy = manager;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = PKPeerPaymentAssociatedAccountsController;
  v14 = [(PKPeerPaymentAssociatedAccountsController *)&v23 init];
  if (v14)
  {
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v14->_paymentService;
    v14->_paymentService = paymentService;

    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    peerPaymentService = v14->_peerPaymentService;
    v14->_peerPaymentService = mEMORY[0x1E69B9000];

    account = [(PKPeerPaymentService *)v14->_peerPaymentService account];
    account = v14->_account;
    v14->_account = account;

    objc_storeStrong(&v14->_familyCollection, collection);
    objc_storeStrong(&v14->_avatarManager, manager);
    v14->_context = context;
    objc_storeStrong(&v14->_passLibraryDataProvider, provider);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__peerPaymentAccountChanged_ name:*MEMORY[0x1E69BC360] object:v14->_peerPaymentService];
  }

  return v14;
}

- (void)presentAssociatedAccountsFlowWithPresentationContext:(id)context fromNavigationController:(id)controller
{
  v83 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  controllerCopy = controller;
  if (controllerCopy)
  {
    account = self->_account;
    if (account)
    {
      if (([(PKPeerPaymentAccount *)account supportsFamilySharing]& 1) != 0)
      {
        objc_storeStrong(&self->_navigationController, controller);
        objc_storeStrong(&self->_presentationContext, context);
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          presentationContext = self->_presentationContext;
          *buf = 138412290;
          v82 = presentationContext;
          _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Presenting peer payment associated account view with configuration %@", buf, 0xCu);
        }

        member = [(PKPeerPaymentAssociatedAccountPresentationContext *)self->_presentationContext member];
        setupType = [(PKPeerPaymentAssociatedAccountPresentationContext *)self->_presentationContext setupType];
        if (member)
        {
          v14 = setupType;
          altDSID = [member altDSID];
          v16 = [(PKPeerPaymentAccount *)self->_account peerPaymentAccountWithAltDSID:altDSID];
          v17 = [(PKPeerPaymentAccount *)self->_account accountInvitationWithAltDSID:altDSID];
          v18 = v17;
          if (v16 | v17)
          {
            if (v16)
            {
              transaction = [(PKPeerPaymentAssociatedAccountPresentationContext *)self->_presentationContext transaction];
              if (transaction)
              {
                v76 = altDSID;
                v77 = v16;
                v20 = [[PKPeerPaymentAssociatedAccountControllerDoneTapHelper alloc] initWithNavigationController:self->_navigationController];
                doneTapHelper = self->_doneTapHelper;
                self->_doneTapHelper = v20;

                v22 = [[PKPeerPaymentAssociatedAccountViewController alloc] initWithFamilyMember:member familyCollection:self->_familyCollection account:self->_account context:self->_context];
                [(PKPeerPaymentAssociatedAccountViewController *)v22 navigationItem];
                v24 = v23 = transaction;
                v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self->_doneTapHelper action:sel_doneTapped];
                [v24 setRightBarButtonItem:v25];

                familyMemberTransactionViewController = [(PKPeerPaymentAssociatedAccountViewController *)v22 familyMemberTransactionViewController];
                v78 = v23;
                v27 = v23;
                v28 = familyMemberTransactionViewController;
                v29 = [familyMemberTransactionViewController transactionViewControllerForTransaction:v27];
                navigationItem = [v29 navigationItem];
                v31 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self->_doneTapHelper action:sel_doneTapped];
                [navigationItem setRightBarButtonItem:v31];

                if (v22)
                {
                  v32 = v28 == 0;
                }

                else
                {
                  v32 = 1;
                }

                v34 = !v32 && v29 != 0;
                v35 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
                v75 = v34;
                if (v34 == 1)
                {
                  if (v35)
                  {
                    *buf = 138412290;
                    v82 = v78;
                    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Presenting associated account transaction %@", buf, 0xCu);
                  }

                  v36 = objc_alloc_init(PKNavigationController);
                  v80[0] = v22;
                  v80[1] = v28;
                  v80[2] = v29;
                  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:3];
                  [(PKNavigationController *)v36 setViewControllers:v10];
                  v37 = v28;
                  v16 = v77;
                }

                else
                {
                  v74 = v28;
                  if (v35)
                  {
                    *buf = 138412290;
                    v82 = v78;
                    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Cannot presenting associated account transaction for a nil view controllers %@", buf, 0xCu);
                  }

                  v36 = 0;
                  v16 = v77;
                  v37 = v74;
                }

                transaction = v78;
                v57 = v75;
                altDSID = v76;
              }

              else
              {
                v36 = [[PKPeerPaymentAssociatedAccountViewController alloc] initWithFamilyMember:member familyCollection:self->_familyCollection account:self->_account context:self->_context];
                v57 = 0;
              }
            }

            else
            {
              v64 = MEMORY[0x1E69DC650];
              v65 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_3.isa);
              v66 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_4.isa);
              v36 = [v64 alertControllerWithTitle:v65 message:v66 preferredStyle:1];

              v67 = MEMORY[0x1E69DC648];
              v68 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
              v69 = [v67 actionWithTitle:v68 style:0 handler:0];
              [(PKNavigationController *)v36 addAction:v69];

              v57 = 1;
            }
          }

          else
          {
            v79 = v17;
            currentUser = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
            isOrganizer = [currentUser isOrganizer];

            if (isOrganizer)
            {
              if (v14 == 1)
              {
                v70 = [PKPeerPaymentAddAssociatedAccountViewController alloc];
                familyCollection = self->_familyCollection;
                mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
                v57 = 1;
                v73 = [(PKPeerPaymentAddAssociatedAccountViewController *)v70 initWithFamilyMember:member familyCollection:familyCollection webService:mEMORY[0x1E69B9020] passLibraryDataProvider:self->_passLibraryDataProvider delegate:self context:self->_context setupType:1];

                v36 = [[PKNavigationController alloc] initWithRootViewController:v73];
                [(PKNavigationController *)v36 setModalInPresentation:1];
              }

              else if (v14)
              {
                v57 = 0;
                v36 = 0;
              }

              else
              {
                v36 = [[PKPeerPaymentTurnOnAssociatedAccountViewController alloc] initWithFamilyMember:member familyCollection:self->_familyCollection delegate:self passLibraryDataProvider:self->_passLibraryDataProvider context:self->_context setupType:0];
                v57 = 0;
              }
            }

            else
            {
              v58 = MEMORY[0x1E69DC650];
              v59 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCan.isa);
              v60 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCan_0.isa);
              v57 = 1;
              v36 = [v58 alertControllerWithTitle:v59 message:v60 preferredStyle:1];

              v61 = MEMORY[0x1E69DC648];
              v62 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
              v63 = [v61 actionWithTitle:v62 style:0 handler:0];
              [(PKNavigationController *)v36 addAction:v63];
            }

            v18 = v79;
          }

          if (v36)
          {
            if (v57)
            {
              [controllerCopy presentViewController:v36 animated:1 completion:0];
LABEL_63:

              goto LABEL_64;
            }

LABEL_60:
            if ([controllerCopy pk_settings_useStateDrivenNavigation])
            {
              [controllerCopy pk_settings_pushViewController:v36];
            }

            else
            {
              [controllerCopy pushViewController:v36 animated:1];
            }

            goto LABEL_63;
          }
        }

        else
        {
          v36 = [[PKPeerPaymentFamilyCircleViewController alloc] initWithFamilyCollection:self->_familyCollection avatarManager:self->_avatarManager passLibraryDataProvider:self->_passLibraryDataProvider context:self->_context];
          if (v36)
          {
            goto LABEL_60;
          }

          member = 0;
        }
      }

      else
      {
        v39 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v39, OS_LOG_TYPE_DEFAULT, "Peer Payment family sharing feature not supported.", buf, 2u);
        }

        v40 = MEMORY[0x1E69DC650];
        v41 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFea.isa);
        v42 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFea_0.isa);
        member = [v40 alertControllerWithTitle:v41 message:v42 preferredStyle:1];

        v43 = MEMORY[0x1E69DC648];
        v44 = PKLocalizedString(&cfstr_Ok.isa);
        v45 = [v43 actionWithTitle:v44 style:0 handler:0];

        [member addAction:v45];
        [controllerCopy presentViewController:member animated:1 completion:0];
      }
    }

    else
    {
      v38 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v38, OS_LOG_TYPE_DEFAULT, "There is no peer payment account. Guide user to setup apple cash prior to viewing children.", buf, 2u);
      }

      if (PKPassbookIsCurrentlyDeletedByUser())
      {
        member = PKCreateAlertControllerForWalletUninstalled(0);
      }

      else
      {
        HasDisabledPeerPayment = PKUserHasDisabledPeerPayment();
        v47 = HasDisabledPeerPayment == 0;
        if (HasDisabledPeerPayment)
        {
          v48 = @"PEER_PAYMENT_ERROR_APPLE_CASH_REENABLE_TITLE";
        }

        else
        {
          v48 = @"PEER_PAYMENT_ERROR_APPLE_CASH_NOT_ENABLED_TITLE";
        }

        if (v47)
        {
          v49 = @"PEER_PAYMENT_ERROR_APPLE_CASH_NOT_ENABLED_MESSAGE";
        }

        else
        {
          v49 = @"PEER_PAYMENT_ERROR_APPLE_CASH_REENABLE_MESSAGE";
        }

        v50 = PKLocalizedPeerPaymentString(&v48->isa);
        v51 = PKLocalizedPeerPaymentString(&v49->isa);
        member = [MEMORY[0x1E69DC650] alertControllerWithTitle:v50 message:v51 preferredStyle:1];
        v52 = MEMORY[0x1E69DC648];
        v53 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_5.isa);
        v54 = [v52 actionWithTitle:v53 style:0 handler:&__block_literal_global_111];

        [member addAction:v54];
      }

      [controllerCopy presentViewController:member animated:1 completion:0];
    }
  }

  else
  {
    member = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(member, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, member, OS_LOG_TYPE_DEFAULT, "Error: no navigation controller defined.", buf, 2u);
    }
  }

LABEL_64:
}

void __123__PKPeerPaymentAssociatedAccountsController_presentAssociatedAccountsFlowWithPresentationContext_fromNavigationController___block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSBOOK"];
  PKOpenURL();
}

- (void)addPeerPaymentAssociatedAccountSetupCompletedWithSucess:(BOOL)sucess updatedAccount:(id)account forFamilyMember:(id)member
{
  sucessCopy = sucess;
  accountCopy = account;
  memberCopy = member;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentAssociatedAccountsController addPeerPaymentAssociatedAccountSetupCompletedWithSucess: called", v22, 2u);
  }

  if (!sucessCopy)
  {
    [(UINavigationController *)self->_navigationController dismissViewControllerAnimated:1 completion:0];
    goto LABEL_17;
  }

  if (accountCopy)
  {
    objc_storeStrong(&self->_account, account);
  }

  account = self->_account;
  altDSID = [memberCopy altDSID];
  v14 = [(PKPeerPaymentAccount *)account peerPaymentAccountWithAltDSID:altDSID];

  if (v14)
  {
    v15 = [[PKPeerPaymentAssociatedAccountViewController alloc] initWithFamilyMember:memberCopy familyCollection:self->_familyCollection account:self->_account context:self->_context];
  }

  else
  {
    if (!self->_context)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v15 = [[PKPeerPaymentFamilyCircleViewController alloc] initWithFamilyCollection:self->_familyCollection avatarManager:self->_avatarManager passLibraryDataProvider:self->_passLibraryDataProvider context:self->_context];
  }

  v16 = v15;
LABEL_12:
  viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
  v18 = [viewControllers mutableCopy];

  lastObject = [v18 lastObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v18 removeLastObject];
  }

  if (v16)
  {
    [v18 addObject:v16];
  }

  navigationController = self->_navigationController;
  v21 = [v18 copy];
  [(UINavigationController *)navigationController setViewControllers:v21];

  [(UINavigationController *)self->_navigationController dismissViewControllerAnimated:1 completion:0];
LABEL_17:
}

- (void)_peerPaymentAccountChanged:(id)changed
{
  peerPaymentService = self->_peerPaymentService;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__PKPeerPaymentAssociatedAccountsController__peerPaymentAccountChanged___block_invoke;
  v4[3] = &unk_1E80140E8;
  v4[4] = self;
  [(PKPeerPaymentService *)peerPaymentService updateAccountWithCompletion:v4];
}

void __72__PKPeerPaymentAssociatedAccountsController__peerPaymentAccountChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PKPeerPaymentAssociatedAccountsController__peerPaymentAccountChanged___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

@end