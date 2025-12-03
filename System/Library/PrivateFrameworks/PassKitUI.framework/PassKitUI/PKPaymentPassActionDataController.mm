@interface PKPaymentPassActionDataController
- (PKPaymentPassActionDataController)initWithPass:(id)pass actions:(id)actions paymentDataProvider:(id)provider webService:(id)service actionType:(unint64_t)type balanceModel:(id)model;
- (void)fetchViewController:(id)controller;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)selectActionViewControllerDidCancel:(id)cancel;
- (void)selectActionViewControllerDidPerformAction:(id)action;
@end

@implementation PKPaymentPassActionDataController

- (PKPaymentPassActionDataController)initWithPass:(id)pass actions:(id)actions paymentDataProvider:(id)provider webService:(id)service actionType:(unint64_t)type balanceModel:(id)model
{
  passCopy = pass;
  actionsCopy = actions;
  providerCopy = provider;
  serviceCopy = service;
  modelCopy = model;
  v23.receiver = self;
  v23.super_class = PKPaymentPassActionDataController;
  v18 = [(PKPaymentPassActionDataController *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, pass);
    objc_storeStrong(&v19->_actions, actions);
    objc_storeStrong(&v19->_paymentDataProvider, provider);
    objc_storeStrong(&v19->_webService, service);
    v19->_actionType = type;
    objc_storeStrong(&v19->_balanceModel, model);
  }

  return v19;
}

- (void)fetchViewController:(id)controller
{
  controllerCopy = controller;
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
    controllerCopy[2](controllerCopy, v13, v12);

    goto LABEL_17;
  }

  v8 = [v6 count];
  if (v8)
  {
    if (v8 != 1)
    {
      filteredActionsForDisplayableEntities = [(PKTransitBalanceModel *)self->_balanceModel filteredActionsForDisplayableEntities];
      balancesAndCountPlansByID = [(PKTransitBalanceModel *)self->_balanceModel balancesAndCountPlansByID];
      v13 = [[PKSelectActionViewController alloc] initWithPass:self->_pass actions:filteredActionsForDisplayableEntities actionType:self->_actionType paymentDataProvider:self->_paymentDataProvider webService:self->_webService balanceDictionary:balancesAndCountPlansByID];
      [(PKSelectActionViewController *)v13 setDelegate:self];

      v12 = 0;
LABEL_15:

      goto LABEL_16;
    }

    filteredActionsForDisplayableEntities = [v7 firstObject];
    v20 = 0;
    v21 = 0;
    v10 = [(PKPaymentPass *)self->_pass canPerformAction:filteredActionsForDisplayableEntities unableReason:&v21 displayableError:&v20];
    v11 = v20;
    if ((v10 & 1) != 0 || v21 == 2)
    {
      if (![filteredActionsForDisplayableEntities hasExternalActionContent])
      {
        v13 = [[PKPerformActionViewController alloc] initWithPass:self->_pass action:filteredActionsForDisplayableEntities paymentDataProvider:self->_paymentDataProvider];
        [(PKSelectActionViewController *)v13 setDelegate:self];
        [(PKSelectActionViewController *)v13 setWebService:self->_webService];
        v12 = 0;
        goto LABEL_14;
      }

      pass = self->_pass;
      externalActionContent = [filteredActionsForDisplayableEntities externalActionContent];
      title = [filteredActionsForDisplayableEntities title];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57__PKPaymentPassActionDataController_fetchViewController___block_invoke_2;
      v18[3] = &unk_1E8020478;
      v19 = controllerCopy;
      PKPaymentPassActionPerformExternalActionContent(pass, externalActionContent, title, v18);

      v12 = 0;
    }

    else
    {
      v12 = [PKPerformActionViewController alertControllerForUnableReason:v21 action:filteredActionsForDisplayableEntities displayableError:v11 addCardActionHandler:0];
    }

    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  controllerCopy[2](controllerCopy, 0, 0);
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

- (void)selectActionViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  [cancelCopy setDelegate:0];
  navigationController = [cancelCopy navigationController];

  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)selectActionViewControllerDidPerformAction:(id)action
{
  actionCopy = action;
  [actionCopy setDelegate:0];
  navigationController = [actionCopy navigationController];

  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)performActionViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  [cancelCopy setDelegate:0];
  navigationController = [cancelCopy navigationController];

  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)performActionViewControllerDidPerformAction:(id)action
{
  actionCopy = action;
  [actionCopy setDelegate:0];
  navigationController = [actionCopy navigationController];

  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

@end