@interface PKPaymentPassCombinedActionDataController
- (PKPaymentPassCombinedActionDataController)initWithPass:(id)a3 actionGroups:(id)a4 paymentDataProvider:(id)a5 webService:(id)a6 balanceModel:(id)a7 mode:(unint64_t)a8;
- (void)combinedActionViewControllerDidCancel:(id)a3;
- (void)combinedActionViewControllerDidFinish:(id)a3;
- (void)fetchViewController:(id)a3;
- (void)remoteGroupActionsViewControllerDidCancel:(id)a3;
- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)a3;
- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)a3;
@end

@implementation PKPaymentPassCombinedActionDataController

- (PKPaymentPassCombinedActionDataController)initWithPass:(id)a3 actionGroups:(id)a4 paymentDataProvider:(id)a5 webService:(id)a6 balanceModel:(id)a7 mode:(unint64_t)a8
{
  v25 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v26.receiver = self;
  v26.super_class = PKPaymentPassCombinedActionDataController;
  v18 = [(PKPaymentPassCombinedActionDataController *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, a3);
    objc_storeStrong(&v19->_actionGroups, a4);
    objc_storeStrong(&v19->_paymentDataProvider, a5);
    objc_storeStrong(&v19->_webService, a6);
    objc_storeStrong(&v19->_transitBalanceModel, a7);
    v19->_mode = a8;
    v20 = [v17 displayableCommutePlanActions];
    v21 = [v20 pk_objectsPassingTest:&__block_literal_global_110];
    actions = v19->_actions;
    v19->_actions = v21;
  }

  return v19;
}

uint64_t __120__PKPaymentPassCombinedActionDataController_initWithPass_actionGroups_paymentDataProvider_webService_balanceModel_mode___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 2)
  {
    v3 = [v2 isActionAvailable];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)fetchViewController:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_actionGroups count];
  v6 = [(NSArray *)self->_actions count];
  mode = self->_mode;
  if (mode == 1)
  {
    if (v6)
    {
      v12 = [[PKPaymentPassActionDataController alloc] initWithPass:self->_pass actions:self->_actions paymentDataProvider:self->_paymentDataProvider webService:self->_webService actionType:2 balanceModel:self->_transitBalanceModel];
      actionController = self->_actionController;
      self->_actionController = v12;

      v14 = self->_actionController;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65__PKPaymentPassCombinedActionDataController_fetchViewController___block_invoke;
      v17[3] = &unk_1E80198B8;
      v18 = v4;
      [(PKPaymentPassActionDataController *)v14 fetchViewController:v17];

      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (mode)
  {
    goto LABEL_14;
  }

  if (!v5)
  {
LABEL_9:
    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v8 = [(NSArray *)self->_actionGroups firstObject];
    if (v8)
    {
      v9 = [[PKRemoteActionGroupViewController alloc] initWithPass:self->_pass actionGroup:v8 paymentDataProvider:self->_paymentDataProvider webService:self->_webService];
      agController = self->_agController;
      self->_agController = v9;

      [(PKRemoteActionGroupViewController *)self->_agController setDelegate:self];
      v11 = self->_agController;
    }

    else
    {
      v11 = 0;
    }

    (*(v4 + 2))(v4, v11, 0);
  }

  else
  {
    v15 = [[PKCombinedActionViewController alloc] initWithPass:self->_pass actionGroups:self->_actionGroups paymentDataProvider:self->_paymentDataProvider webService:self->_webService balanceModel:self->_transitBalanceModel mode:self->_mode];
    combinedController = self->_combinedController;
    self->_combinedController = v15;

    [(PKCombinedActionViewController *)self->_combinedController setDelegate:self];
    (*(v4 + 2))(v4, self->_combinedController, 0);
  }

LABEL_14:
}

void __65__PKPaymentPassCombinedActionDataController_fetchViewController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
LABEL_6:
}

- (void)combinedActionViewControllerDidCancel:(id)a3
{
  v3 = a3;
  v5 = [v3 navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }

  [v3 setDelegate:0];
}

- (void)combinedActionViewControllerDidFinish:(id)a3
{
  v3 = a3;
  v5 = [v3 navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }

  [v3 setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidCancel:(id)a3
{
  v3 = a3;
  v5 = [v3 navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }

  [v3 setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)a3
{
  v3 = a3;
  v5 = [v3 navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }

  [v3 setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)a3
{
  v3 = a3;
  v5 = [v3 navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }

  [v3 setDelegate:0];
}

@end