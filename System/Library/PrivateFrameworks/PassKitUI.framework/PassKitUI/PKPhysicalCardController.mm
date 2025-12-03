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
- (PKPhysicalCardController)initWithAccountService:(id)service paymentPass:(id)pass account:(id)account accountUser:(id)user physicalCards:(id)cards;
- (void)_updatePhysicalCards;
- (void)dealloc;
- (void)nextViewControllerWithCompletion:(id)completion;
- (void)orderFlowViewControllerForReason:(unint64_t)reason content:(int64_t)content completion:(id)completion;
- (void)replaceFlowViewControllerForReason:(unint64_t)reason content:(int64_t)content currentPhysicalCard:(id)card completion:(id)completion;
- (void)updateWithAccount:(id)account;
- (void)updateWithPhysicalCards:(id)cards;
@end

@implementation PKPhysicalCardController

- (PKPhysicalCardController)initWithAccountService:(id)service paymentPass:(id)pass account:(id)account accountUser:(id)user physicalCards:(id)cards
{
  serviceCopy = service;
  passCopy = pass;
  accountCopy = account;
  userCopy = user;
  cardsCopy = cards;
  v23.receiver = self;
  v23.super_class = PKPhysicalCardController;
  v17 = [(PKPhysicalCardController *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_account, account);
    objc_storeStrong(&v18->_accountService, service);
    objc_storeStrong(&v18->_paymentPass, pass);
    objc_storeStrong(&v18->_accountUser, user);
    v19 = [cardsCopy copy];
    physicalCards = v18->_physicalCards;
    v18->_physicalCards = v19;

    [(PKPhysicalCardController *)v18 _updatePhysicalCards];
  }

  return v18;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPhysicalCardController;
  [(PKPhysicalCardController *)&v4 dealloc];
}

- (void)updateWithAccount:(id)account
{
  objc_storeStrong(&self->_account, account);

  [(PKPhysicalCardController *)self _updatePhysicalCards];
}

- (void)updateWithPhysicalCards:(id)cards
{
  v4 = [cards copy];
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
    orderActivity = [(PKPhysicalCard *)self->_unactivatedPhysicalCard orderActivity];
    v4 = [orderActivity countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(orderActivity);
          }

          if ([*(*(&v9 + 1) + 8 * v7) activity] == 2)
          {

            return [(PKPhysicalCardController *)self _userSupportsActivatingPhysicalCard];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [orderActivity countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    preferences = [(PKAccountUser *)self->_accountUser preferences];
    spendingEnabled = [preferences spendingEnabled];

    if (!spendingEnabled)
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
  hasPrimaryPhysicalCard = [(PKPhysicalCardController *)self hasPrimaryPhysicalCard];
  if (hasPrimaryPhysicalCard)
  {
    LOBYTE(hasPrimaryPhysicalCard) = [(PKPhysicalCard *)self->_primaryPhysicalCard state]== 2;
  }

  return hasPrimaryPhysicalCard;
}

- (BOOL)physicalCardBlocked
{
  hasPrimaryPhysicalCard = [(PKPhysicalCardController *)self hasPrimaryPhysicalCard];
  if (hasPrimaryPhysicalCard)
  {
    LOBYTE(hasPrimaryPhysicalCard) = [(PKPhysicalCard *)self->_primaryPhysicalCard state]== 4 && self->_unactivatedPhysicalCard == 0;
  }

  return hasPrimaryPhysicalCard;
}

- (NSDate)primaryPhysicalCardExpirationDate
{
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  productTimeZone = [(PKAccount *)self->_account productTimeZone];
  [v4 setTimeZone:productTimeZone];

  v6 = [(PKPhysicalCard *)self->_primaryPhysicalCard expirationDateInCalendar:v4];

  return v6;
}

- (void)replaceFlowViewControllerForReason:(unint64_t)reason content:(int64_t)content currentPhysicalCard:(id)card completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    cardCopy = card;
    v12 = [PKOrderPhysicalCardController alloc];
    accountService = self->_accountService;
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    v15 = [(PKOrderPhysicalCardController *)v12 initWithAccountService:accountService paymentWebService:mEMORY[0x1E69B8EF8] paymentPass:self->_paymentPass account:self->_account accountUser:self->_accountUser orderReason:reason context:content currentPhysicalCard:cardCopy];

    [(PKOrderPhysicalCardController *)v15 setParentFlowController:self];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102__PKPhysicalCardController_replaceFlowViewControllerForReason_content_currentPhysicalCard_completion___block_invoke;
    v17[3] = &unk_1E8017470;
    v18 = v15;
    selfCopy = self;
    v20 = completionCopy;
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

- (void)orderFlowViewControllerForReason:(unint64_t)reason content:(int64_t)content completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = [PKOrderPhysicalCardController alloc];
    accountService = self->_accountService;
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    v12 = [(PKOrderPhysicalCardController *)v9 initWithAccountService:accountService paymentWebService:mEMORY[0x1E69B8EF8] paymentPass:self->_paymentPass account:self->_account accountUser:self->_accountUser orderReason:reason context:content currentPhysicalCard:0];

    [(PKOrderPhysicalCardController *)v12 setParentFlowController:self];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__PKPhysicalCardController_orderFlowViewControllerForReason_content_completion___block_invoke;
    v14[3] = &unk_1E8017470;
    v15 = v12;
    selfCopy = self;
    v17 = completionCopy;
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

- (void)nextViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  parentFlowController = self->_parentFlowController;
  if (parentFlowController)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PKPhysicalCardController_nextViewControllerWithCompletion___block_invoke;
    v7[3] = &unk_1E8019EA0;
    v7[4] = self;
    v8 = completionCopy;
    [(PKSetupFlowControllerProtocol *)parentFlowController nextViewControllerWithCompletion:v7];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
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
  altDSID = [(PKAccountUser *)self->_accountUser altDSID];
  v5 = altDSID;
  v43 = v3;
  if (altDSID)
  {
    v6 = altDSID;
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
  selfCopy = self;
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
      accountUserAltDSID = [v14 accountUserAltDSID];
      v16 = accountUserAltDSID;
      v17 = v43;
      if (accountUserAltDSID)
      {
        v17 = accountUserAltDSID;
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
        state = [v14 state];
        if ((state - 2) >= 3)
        {
          if (state == 5)
          {
            v29 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v38];
            productTimeZone = [(PKAccount *)selfCopy->_account productTimeZone];
            [v29 setTimeZone:productTimeZone];

            if ([v14 isExpiredInCalendar:v29])
            {
              v31 = v14;

              v40 = v31;
            }
          }

          else
          {
            if (state != 1)
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

  unactivatedPhysicalCard = selfCopy->_unactivatedPhysicalCard;
  selfCopy->_unactivatedPhysicalCard = v10;
  v33 = v10;

  primaryPhysicalCard = selfCopy->_primaryPhysicalCard;
  selfCopy->_primaryPhysicalCard = v11;
  v35 = v11;

  expiredPhysicalCard = selfCopy->_expiredPhysicalCard;
  selfCopy->_expiredPhysicalCard = v40;
  v37 = v40;
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end