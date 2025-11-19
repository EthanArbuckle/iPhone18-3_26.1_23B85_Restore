@interface PKPaymentPassActionDataController
- (PKPaymentPassActionDataController)initWithPass:(id)a3 actions:(id)a4 paymentDataProvider:(id)a5 webService:(id)a6 actionType:(unint64_t)a7 balanceModel:(id)a8;
- (void)fetchViewController:(id)a3;
- (void)performActionViewControllerDidCancel:(id)a3;
- (void)performActionViewControllerDidPerformAction:(id)a3;
- (void)selectActionViewControllerDidCancel:(id)a3;
- (void)selectActionViewControllerDidPerformAction:(id)a3;
@end

@implementation PKPaymentPassActionDataController

- (PKPaymentPassActionDataController)initWithPass:(id)a3 actions:(id)a4 paymentDataProvider:(id)a5 webService:(id)a6 actionType:(unint64_t)a7 balanceModel:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = PKPaymentPassActionDataController;
  v18 = [(PKPaymentPassActionDataController *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, a3);
    objc_storeStrong(&v19->_actions, a4);
    objc_storeStrong(&v19->_paymentDataProvider, a5);
    objc_storeStrong(&v19->_webService, a6);
    v19->_actionType = a7;
    objc_storeStrong(&v19->_balanceModel, a8);
  }

  return v19;
}

- (void)fetchViewController:(id)a3
{
  v4 = a3;
  actions = self->_actions;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__PKPaymentPassActionDataController_fetchViewController___block_invoke;
  v22[3] = &unk_1E8020450;
  v22[4] = self;
  v6 = [(NSArray *)actions pk_objectsPassingTest:v22];
  v7 = v6;
  if (!v6)
  {
    v12 = 0;
    v13 = 0;
LABEL_16:
    v4[2](v4, v13, v12);

    goto LABEL_17;
  }

  v8 = [v6 count];
  if (v8)
  {
    if (v8 != 1)
    {
      v9 = [(PKTransitBalanceModel *)self->_balanceModel filteredActionsForDisplayableEntities];
      v14 = [(PKTransitBalanceModel *)self->_balanceModel balancesAndCountPlansByID];
      v13 = [[PKSelectActionViewController alloc] initWithPass:self->_pass actions:v9 actionType:self->_actionType paymentDataProvider:self->_paymentDataProvider webService:self->_webService balanceDictionary:v14];
      [(PKSelectActionViewController *)v13 setDelegate:self];

      v12 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v9 = [v7 firstObject];
    v20 = 0;
    v21 = 0;
    v10 = [(PKPaymentPass *)self->_pass canPerformAction:v9 unableReason:&v21 displayableError:&v20];
    v11 = v20;
    if ((v10 & 1) != 0 || v21 == 2)
    {
      if (![v9 hasExternalActionContent])
      {
        v13 = [[PKPerformActionViewController alloc] initWithPass:self->_pass action:v9 paymentDataProvider:self->_paymentDataProvider];
        [(PKSelectActionViewController *)v13 setDelegate:self];
        [(PKSelectActionViewController *)v13 setWebService:self->_webService];
        v12 = 0;
        goto LABEL_14;
      }

      pass = self->_pass;
      v16 = [v9 externalActionContent];
      v17 = [v9 title];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57__PKPaymentPassActionDataController_fetchViewController___block_invoke_2;
      v18[3] = &unk_1E8020478;
      v19 = v4;
      PKPaymentPassActionPerformExternalActionContent(pass, v16, v17, v18);

      v12 = 0;
    }

    else
    {
      v12 = [PKPerformActionViewController alertControllerForUnableReason:v21 action:v9 displayableError:v11 addCardActionHandler:0];
    }

    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v4[2](v4, 0, 0);
LABEL_17:
}

uint64_t __57__PKPaymentPassActionDataController_fetchViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  if (v4 == *(*(a1 + 32) + 40))
  {
    if ((v4 - 1) > 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = [v3 isActionAvailable];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __57__PKPaymentPassActionDataController_fetchViewController___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)selectActionViewControllerDidCancel:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  v5 = [v3 navigationController];

  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)selectActionViewControllerDidPerformAction:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  v5 = [v3 navigationController];

  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)performActionViewControllerDidCancel:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  v5 = [v3 navigationController];

  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)performActionViewControllerDidPerformAction:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  v5 = [v3 navigationController];

  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

@end