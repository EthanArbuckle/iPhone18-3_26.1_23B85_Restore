@interface PKPhysicalCardController
- (BOOL)_userSupportsActivatingPhysicalCard;
- (BOOL)_userSupportsRequestingPhysicalCard;
- (BOOL)canActivatePhysicalCard;
- (BOOL)canReplacePhysicalCard;
- (BOOL)canRequestNewPhysicalCard;
- (BOOL)physicalCardBlocked;
- (BOOL)primaryPhysicalCardEnabled;
- (NSDate)primaryPhysicalCardExpirationDate;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (PKPhysicalCardController)initWithAccountService:(id)a3 paymentPass:(id)a4 account:(id)a5 accountUser:(id)a6 physicalCards:(id)a7;
- (void)_updatePhysicalCards;
- (void)dealloc;
- (void)nextViewControllerWithCompletion:(id)a3;
- (void)orderFlowViewControllerForReason:(unint64_t)a3 content:(int64_t)a4 completion:(id)a5;
- (void)replaceFlowViewControllerForReason:(unint64_t)a3 content:(int64_t)a4 currentPhysicalCard:(id)a5 completion:(id)a6;
- (void)updateWithAccount:(id)a3;
- (void)updateWithPhysicalCards:(id)a3;
@end

@implementation PKPhysicalCardController

- (PKPhysicalCardController)initWithAccountService:(id)a3 paymentPass:(id)a4 account:(id)a5 accountUser:(id)a6 physicalCards:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = PKPhysicalCardController;
  v17 = [(PKPhysicalCardController *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_account, a5);
    objc_storeStrong(&v18->_accountService, a3);
    objc_storeStrong(&v18->_paymentPass, a4);
    objc_storeStrong(&v18->_accountUser, a6);
    v19 = [v16 copy];
    physicalCards = v18->_physicalCards;
    v18->_physicalCards = v19;

    [(PKPhysicalCardController *)v18 _updatePhysicalCards];
  }

  return v18;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPhysicalCardController;
  [(PKPhysicalCardController *)&v4 dealloc];
}

- (void)updateWithAccount:(id)a3
{
  objc_storeStrong(&self->_account, a3);

  [(PKPhysicalCardController *)self _updatePhysicalCards];
}

- (void)updateWithPhysicalCards:(id)a3
{
  v4 = [a3 copy];
  physicalCards = self->_physicalCards;
  self->_physicalCards = v4;

  [(PKPhysicalCardController *)self _updatePhysicalCards];
}

- (BOOL)canActivatePhysicalCard
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_unactivatedPhysicalCard && [(PKAccount *)self->_account state]== 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(PKPhysicalCard *)self->_unactivatedPhysicalCard orderActivity];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v9 + 1) + 8 * v7) activity] == 2)
          {

            return [(PKPhysicalCardController *)self _userSupportsActivatingPhysicalCard];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  return 0;
}

- (BOOL)canRequestNewPhysicalCard
{
  if ([(PKPhysicalCardController *)self canReplacePhysicalCard])
  {
    return 0;
  }

  if (self->_unactivatedPhysicalCard)
  {
    return 0;
  }

  if (self->_primaryPhysicalCard)
  {
    return 0;
  }

  if ([(PKAccount *)self->_account state]!= 1)
  {
    return 0;
  }

  if ([(PKAccountUser *)self->_accountUser accessLevel]== 2)
  {
    v3 = [(PKAccountUser *)self->_accountUser preferences];
    v4 = [v3 spendingEnabled];

    if (!v4)
    {
      return 0;
    }
  }

  return [(PKPhysicalCardController *)self _userSupportsRequestingPhysicalCard];
}

- (BOOL)canReplacePhysicalCard
{
  if (![(PKPhysicalCardController *)self hasPrimaryPhysicalCard]&& ![(PKPhysicalCardController *)self hasExpiredPhysicalCardOnly]|| self->_unactivatedPhysicalCard || [(PKAccount *)self->_account state]!= 1 || [(PKPhysicalCard *)self->_primaryPhysicalCard state]== 4)
  {
    return 0;
  }

  return [(PKPhysicalCardController *)self _userSupportsRequestingPhysicalCard];
}

- (BOOL)_userSupportsRequestingPhysicalCard
{
  p_accountUser = &self->_accountUser;
  accountUser = self->_accountUser;
  if (!accountUser || [(PKAccountUser *)accountUser isCurrentUser])
  {
    p_accountUser = &self->_account;
  }

  v5 = *p_accountUser;

  return [(PKAccountUser *)v5 supportsRequestPhysicalCard];
}

- (BOOL)_userSupportsActivatingPhysicalCard
{
  p_accountUser = &self->_accountUser;
  accountUser = self->_accountUser;
  if (!accountUser || [(PKAccountUser *)accountUser isCurrentUser])
  {
    p_accountUser = &self->_account;
  }

  v5 = *p_accountUser;

  return [(PKAccountUser *)v5 supportsPhysicalCardActivation];
}

- (BOOL)primaryPhysicalCardEnabled
{
  v3 = [(PKPhysicalCardController *)self hasPrimaryPhysicalCard];
  if (v3)
  {
    LOBYTE(v3) = [(PKPhysicalCard *)self->_primaryPhysicalCard state]== 2;
  }

  return v3;
}

- (BOOL)physicalCardBlocked
{
  v3 = [(PKPhysicalCardController *)self hasPrimaryPhysicalCard];
  if (v3)
  {
    LOBYTE(v3) = [(PKPhysicalCard *)self->_primaryPhysicalCard state]== 4 && self->_unactivatedPhysicalCard == 0;
  }

  return v3;
}

- (NSDate)primaryPhysicalCardExpirationDate
{
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v5 = [(PKAccount *)self->_account productTimeZone];
  [v4 setTimeZone:v5];

  v6 = [(PKPhysicalCard *)self->_primaryPhysicalCard expirationDateInCalendar:v4];

  return v6;
}

- (void)replaceFlowViewControllerForReason:(unint64_t)a3 content:(int64_t)a4 currentPhysicalCard:(id)a5 completion:(id)a6
{
  v10 = a6;
  if (v10)
  {
    v11 = a5;
    v12 = [PKOrderPhysicalCardController alloc];
    accountService = self->_accountService;
    v14 = [MEMORY[0x1E69B8EF8] sharedService];
    v15 = [(PKOrderPhysicalCardController *)v12 initWithAccountService:accountService paymentWebService:v14 paymentPass:self->_paymentPass account:self->_account accountUser:self->_accountUser orderReason:a3 context:a4 currentPhysicalCard:v11];

    [(PKOrderPhysicalCardController *)v15 setParentFlowController:self];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102__PKPhysicalCardController_replaceFlowViewControllerForReason_content_currentPhysicalCard_completion___block_invoke;
    v17[3] = &unk_1E8017470;
    v18 = v15;
    v19 = self;
    v20 = v10;
    v16 = v15;
    [(PKOrderPhysicalCardController *)v16 updateCustomizationOptionsWithCompletion:v17];
  }
}

void __102__PKPhysicalCardController_replaceFlowViewControllerForReason_content_currentPhysicalCard_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PKPhysicalCardController_replaceFlowViewControllerForReason_content_currentPhysicalCard_completion___block_invoke_2;
  block[3] = &unk_1E8014940;
  v15 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __102__PKPhysicalCardController_replaceFlowViewControllerForReason_content_currentPhysicalCard_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [[PKOrderPhysicalCardAddressConfirmationViewController alloc] initWithOrderPhysicalCardController:*(a1 + 32)];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
    [(PKOrderPhysicalCardAddressConfirmationViewController *)v2 setDelegate:WeakRetained];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __102__PKPhysicalCardController_replaceFlowViewControllerForReason_content_currentPhysicalCard_completion___block_invoke_3;
    v7[3] = &unk_1E80109C0;
    v4 = *(a1 + 56);
    v8 = v2;
    v9 = v4;
    v5 = v2;
    [(PKOrderPhysicalCardAddressConfirmationViewController *)v5 preflightWithCompletion:v7];
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

uint64_t __102__PKPhysicalCardController_replaceFlowViewControllerForReason_content_currentPhysicalCard_completion___block_invoke_3(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Failed to preflight: %@", &v8, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

- (void)orderFlowViewControllerForReason:(unint64_t)a3 content:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = [PKOrderPhysicalCardController alloc];
    accountService = self->_accountService;
    v11 = [MEMORY[0x1E69B8EF8] sharedService];
    v12 = [(PKOrderPhysicalCardController *)v9 initWithAccountService:accountService paymentWebService:v11 paymentPass:self->_paymentPass account:self->_account accountUser:self->_accountUser orderReason:a3 context:a4 currentPhysicalCard:0];

    [(PKOrderPhysicalCardController *)v12 setParentFlowController:self];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__PKPhysicalCardController_orderFlowViewControllerForReason_content_completion___block_invoke;
    v14[3] = &unk_1E8017470;
    v15 = v12;
    v16 = self;
    v17 = v8;
    v13 = v12;
    [(PKOrderPhysicalCardController *)v13 updateCustomizationOptionsWithCompletion:v14];
  }
}

void __80__PKPhysicalCardController_orderFlowViewControllerForReason_content_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKPhysicalCardController_orderFlowViewControllerForReason_content_completion___block_invoke_2;
  block[3] = &unk_1E8014940;
  v15 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PKPhysicalCardController_orderFlowViewControllerForReason_content_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [[PKOrderPhysicalCardViewController alloc] initWithController:*(a1 + 32)];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
    [(PKOrderPhysicalCardViewController *)v2 setDelegate:WeakRetained];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__PKPhysicalCardController_orderFlowViewControllerForReason_content_completion___block_invoke_3;
    v7[3] = &unk_1E80109C0;
    v4 = *(a1 + 56);
    v8 = v2;
    v9 = v4;
    v5 = v2;
    [(PKOrderPhysicalCardViewController *)v5 preflightWithCompletion:v7];
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

uint64_t __80__PKPhysicalCardController_orderFlowViewControllerForReason_content_completion___block_invoke_3(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Failed to preflight: %@", &v8, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

- (void)nextViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  parentFlowController = self->_parentFlowController;
  if (parentFlowController)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PKPhysicalCardController_nextViewControllerWithCompletion___block_invoke;
    v7[3] = &unk_1E8019EA0;
    v7[4] = self;
    v8 = v4;
    [(PKSetupFlowControllerProtocol *)parentFlowController nextViewControllerWithCompletion:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __61__PKPhysicalCardController_nextViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;
}

- (void)_updatePhysicalCards
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = PKCurrentUserAltDSID();
  v4 = [(PKAccountUser *)self->_accountUser altDSID];
  v5 = v4;
  v43 = v3;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = self;
  obj = self->_physicalCards;
  v8 = [(NSSet *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v8)
  {
    v40 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_34;
  }

  v9 = v8;
  v40 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v45;
  v38 = *MEMORY[0x1E695D850];
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v45 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v44 + 1) + 8 * i);
      v15 = [v14 accountUserAltDSID];
      v16 = v15;
      v17 = v43;
      if (v15)
      {
        v17 = v15;
      }

      v18 = v17;

      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = v18;
      v20 = v7;
      v21 = v7;
      v22 = v20;
      if (v19 == v20)
      {

        v7 = v21;
LABEL_17:
        v28 = [v14 state];
        if ((v28 - 2) >= 3)
        {
          if (v28 == 5)
          {
            v29 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v38];
            v30 = [(PKAccount *)v39->_account productTimeZone];
            [v29 setTimeZone:v30];

            if ([v14 isExpiredInCalendar:v29])
            {
              v31 = v14;

              v40 = v31;
            }
          }

          else
          {
            if (v28 != 1)
            {
LABEL_26:
              if (v11 && v10 && v40)
              {

                goto LABEL_34;
              }

              goto LABEL_29;
            }

            v29 = v10;
            v10 = v14;
          }
        }

        else
        {
          v29 = v11;
          v11 = v14;
        }

        goto LABEL_26;
      }

      v42 = v18;
      v23 = v9;
      v24 = v12;
      v25 = v10;
      v26 = v21;
      if (!v21)
      {

        v7 = 0;
        v10 = v25;
        v12 = v24;
        v9 = v23;
        v18 = v42;
        goto LABEL_29;
      }

      v27 = [v19 isEqualToString:v20];

      v7 = v26;
      v10 = v25;
      v12 = v24;
      v9 = v23;
      v18 = v42;
      if (v27)
      {
        goto LABEL_17;
      }

LABEL_29:
    }

    v9 = [(NSSet *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_34:

  unactivatedPhysicalCard = v39->_unactivatedPhysicalCard;
  v39->_unactivatedPhysicalCard = v10;
  v33 = v10;

  primaryPhysicalCard = v39->_primaryPhysicalCard;
  v39->_primaryPhysicalCard = v11;
  v35 = v11;

  expiredPhysicalCard = v39->_expiredPhysicalCard;
  v39->_expiredPhysicalCard = v40;
  v37 = v40;
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end