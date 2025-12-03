@interface PKPaymentPassCombinedActionDataController
- (PKPaymentPassCombinedActionDataController)initWithPass:(id)pass actionGroups:(id)groups paymentDataProvider:(id)provider webService:(id)service balanceModel:(id)model mode:(unint64_t)mode;
- (void)combinedActionViewControllerDidCancel:(id)cancel;
- (void)combinedActionViewControllerDidFinish:(id)finish;
- (void)fetchViewController:(id)controller;
- (void)remoteGroupActionsViewControllerDidCancel:(id)cancel;
- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)group;
- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)payment;
@end

@implementation PKPaymentPassCombinedActionDataController

- (PKPaymentPassCombinedActionDataController)initWithPass:(id)pass actionGroups:(id)groups paymentDataProvider:(id)provider webService:(id)service balanceModel:(id)model mode:(unint64_t)mode
{
  passCopy = pass;
  groupsCopy = groups;
  providerCopy = provider;
  serviceCopy = service;
  modelCopy = model;
  v26.receiver = self;
  v26.super_class = PKPaymentPassCombinedActionDataController;
  v18 = [(PKPaymentPassCombinedActionDataController *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, pass);
    objc_storeStrong(&v19->_actionGroups, groups);
    objc_storeStrong(&v19->_paymentDataProvider, provider);
    objc_storeStrong(&v19->_webService, service);
    objc_storeStrong(&v19->_transitBalanceModel, model);
    v19->_mode = mode;
    displayableCommutePlanActions = [modelCopy displayableCommutePlanActions];
    v21 = [displayableCommutePlanActions pk_objectsPassingTest:&__block_literal_global_110];
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

- (void)fetchViewController:(id)controller
{
  controllerCopy = controller;
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
      v18 = controllerCopy;
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
    (*(controllerCopy + 2))(controllerCopy, 0, 0);
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    firstObject = [(NSArray *)self->_actionGroups firstObject];
    if (firstObject)
    {
      v9 = [[PKRemoteActionGroupViewController alloc] initWithPass:self->_pass actionGroup:firstObject paymentDataProvider:self->_paymentDataProvider webService:self->_webService];
      agController = self->_agController;
      self->_agController = v9;

      [(PKRemoteActionGroupViewController *)self->_agController setDelegate:self];
      v11 = self->_agController;
    }

    else
    {
      v11 = 0;
    }

    (*(controllerCopy + 2))(controllerCopy, v11, 0);
  }

  else
  {
    v15 = [[PKCombinedActionViewController alloc] initWithPass:self->_pass actionGroups:self->_actionGroups paymentDataProvider:self->_paymentDataProvider webService:self->_webService balanceModel:self->_transitBalanceModel mode:self->_mode];
    combinedController = self->_combinedController;
    self->_combinedController = v15;

    [(PKCombinedActionViewController *)self->_combinedController setDelegate:self];
    (*(controllerCopy + 2))(controllerCopy, self->_combinedController, 0);
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

- (void)combinedActionViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  navigationController = [cancelCopy navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v4 = [navigationController popViewControllerAnimated:1];
  }

  [cancelCopy setDelegate:0];
}

- (void)combinedActionViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  navigationController = [finishCopy navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v4 = [navigationController popViewControllerAnimated:1];
  }

  [finishCopy setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  navigationController = [cancelCopy navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v4 = [navigationController popViewControllerAnimated:1];
  }

  [cancelCopy setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)group
{
  groupCopy = group;
  navigationController = [groupCopy navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v4 = [navigationController popViewControllerAnimated:1];
  }

  [groupCopy setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)payment
{
  paymentCopy = payment;
  navigationController = [paymentCopy navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v4 = [navigationController popViewControllerAnimated:1];
  }

  [paymentCopy setDelegate:0];
}

@end