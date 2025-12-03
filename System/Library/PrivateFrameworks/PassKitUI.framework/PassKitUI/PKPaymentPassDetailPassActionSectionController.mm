@interface PKPaymentPassDetailPassActionSectionController
+ (BOOL)validForPaymentPass:(id)pass;
- (PKPaymentPassDetailPassActionSectionController)initWithPass:(id)pass viewStyle:(int64_t)style paymentDataProvider:(id)provider webService:(id)service transitBalanceModel:(id)model delegate:(id)delegate;
- (PKPaymentPassDetailPassActionSectionControllerDelegate)delegate;
- (id)_externalActionTitle;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)titleForFooterInSectionIdentifier:(id)identifier;
- (void)_computeActionBundle;
- (void)setPass:(id)pass;
- (void)setTransitBalanceModel:(id)model;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKPaymentPassDetailPassActionSectionController

- (PKPaymentPassDetailPassActionSectionController)initWithPass:(id)pass viewStyle:(int64_t)style paymentDataProvider:(id)provider webService:(id)service transitBalanceModel:(id)model delegate:(id)delegate
{
  passCopy = pass;
  providerCopy = provider;
  serviceCopy = service;
  modelCopy = model;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = PKPaymentPassDetailPassActionSectionController;
  v18 = [(PKPaymentPassDetailSectionController *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, pass);
    v19->_viewStyle = style;
    objc_storeWeak(&v19->_delegate, delegateCopy);
    objc_storeStrong(&v19->_transitBalanceModel, model);
    objc_storeStrong(&v19->_webService, service);
    v20 = [PKPaymentPassDetailAutoReloadSectionController enteredValueActionForPass:v19->_pass];
    action = v19->_action;
    v19->_action = v20;

    v22 = [PKPaymentPassDetailAutoReloadSectionController externalActionContentForPass:v19->_pass];
    externalActionContent = v19->_externalActionContent;
    v19->_externalActionContent = v22;

    objc_storeStrong(&v19->_paymentDataProvider, provider);
    [(PKPaymentPassDetailPassActionSectionController *)v19 _computeActionBundle];
  }

  return v19;
}

- (id)allSectionIdentifiers
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"AddMoneySection";
  v4[1] = @"BuyPassesSection";
  v4[2] = @"ExternalActionContentSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (void)setTransitBalanceModel:(id)model
{
  modelCopy = model;
  if (modelCopy && self->_transitBalanceModel != modelCopy)
  {
    v8 = modelCopy;
    objc_storeStrong(&self->_transitBalanceModel, model);
    [(PKPaymentPassDetailPassActionSectionController *)self _computeActionBundle];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    sectionIdentifiers = [(PKPaymentPassDetailPassActionSectionController *)self sectionIdentifiers];
    [WeakRetained reloadSections:sectionIdentifiers];

    modelCopy = v8;
  }
}

- (void)setPass:(id)pass
{
  objc_storeStrong(&self->_pass, pass);
  passCopy = pass;
  v5 = [PKPaymentPassDetailAutoReloadSectionController enteredValueActionForPass:self->_pass];
  action = self->_action;
  self->_action = v5;

  v7 = [PKPaymentPassDetailAutoReloadSectionController externalActionContentForPass:self->_pass];
  externalActionContent = self->_externalActionContent;
  self->_externalActionContent = v7;
}

- (id)sectionIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![(PKPaymentPassDetailSectionController *)self currentSegment])
  {
    if (self->_externalActionContent)
    {
      v4 = @"ExternalActionContentSection";
LABEL_9:
      [v3 addObject:v4];
      goto LABEL_10;
    }

    if (self->_action && [(PKTransitBalanceModel *)self->_transitBalanceModel hasBalanceContent])
    {
      [v3 addObject:@"AddMoneySection"];
    }

    actionGroups = [(PKPaymentPass *)self->_pass actionGroups];
    v6 = [actionGroups count];

    if (v6)
    {
      v4 = @"BuyPassesSection";
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = [v3 copy];

  return v7;
}

+ (BOOL)validForPaymentPass:(id)pass
{
  passCopy = pass;
  devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
  [devicePrimaryPaymentApplication state];
  IsPersonalized = PKPaymentApplicationStateIsPersonalized();

  if (IsPersonalized)
  {
    v6 = [PKPaymentPassDetailAutoReloadSectionController enteredValueActionForPass:passCopy];

    v7 = [PKPaymentPassDetailAutoReloadSectionController externalActionContentForPass:passCopy];
    v8 = v6 | v7;

    if (v8)
    {
      isAutoTopEnabled = 1;
    }

    else
    {
      actionGroups = [passCopy actionGroups];
      if ([actionGroups count])
      {
        isAutoTopEnabled = 1;
      }

      else
      {
        isAutoTopEnabled = [passCopy isAutoTopEnabled];
      }
    }
  }

  else
  {
    isAutoTopEnabled = 0;
  }

  return isAutoTopEnabled;
}

- (id)titleForFooterInSectionIdentifier:(id)identifier
{
  if (PKEqualObjects())
  {
    [(PKTransitBalanceModel *)self->_transitBalanceModel hasBalanceContent];
    [(PKTransitBalanceModel *)self->_transitBalanceModel hasCommutePlanContent];
    displayName = [(PKPaymentPassActionExternalActionContent *)self->_externalActionContent displayName];
    v5 = displayName;
    if (displayName)
    {
      organizationName = displayName;
    }

    else
    {
      organizationName = [(PKPaymentPass *)self->_pass organizationName];
    }

    v8 = organizationName;

    v7 = PKPassLocalizedStringWithFormat();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  if (PKEqualObjects())
  {
    v9 = PKPassLocalizedStringWithFormat();
    v10 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v9 forTableView:viewCopy, 0];

    v11 = MEMORY[0x1E69B93F0];
LABEL_3:
    PKAccessibilityIDCellSet(v10, *v11);
    goto LABEL_16;
  }

  if (PKEqualObjects())
  {
    actionGroups = [(PKPaymentPass *)self->_pass actionGroups];
    firstObject = [actionGroups firstObject];
    title = [firstObject title];

    paymentPass = [(PKPaymentPass *)self->_pass paymentPass];
    actionLocalizations = [paymentPass actionLocalizations];

    if (title)
    {
      v17 = actionLocalizations == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = [actionLocalizations objectForKeyedSubscript:title];

      title = v18;
    }

    if (!title)
    {
      v22 = 0;
      v19 = PKPassLocalizedStringWithFormat();
    }

    v10 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:title forTableView:viewCopy, v22];
    PKAccessibilityIDCellSet(v10, *MEMORY[0x1E69B9580]);
  }

  else
  {
    if (PKEqualObjects())
    {
      _externalActionTitle = [(PKPaymentPassDetailPassActionSectionController *)self _externalActionTitle];
      v10 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:_externalActionTitle forTableView:viewCopy];

      v11 = MEMORY[0x1E69B9580];
      goto LABEL_3;
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [view deselectRowAtIndexPath:path animated:1];
  if (PKEqualObjects())
  {
    v21 = 0;
    v22 = 1;
    v9 = [(PKPaymentPass *)self->_pass canPerformAction:self->_action unableReason:&v22 displayableError:&v21];
    v10 = v21;
    if ((v9 & 1) == 0 && v22 != 2)
    {
      v11 = [PKPerformActionViewController alertControllerForUnableReason:v22 action:self->_action displayableError:v10 addCardActionHandler:0];
LABEL_12:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained presentPassActionViewController:v11];

      goto LABEL_13;
    }

    if (![(PKPaymentPassAction *)self->_action hasExternalActionContent])
    {
      v11 = [[PKPerformActionViewController alloc] initWithPass:self->_pass action:self->_action viewStyle:self->_viewStyle paymentDataProvider:self->_paymentDataProvider];
      goto LABEL_12;
    }

    pass = self->_pass;
    externalActionContent = [(PKPaymentPassAction *)self->_action externalActionContent];
    title = [(PKPaymentPassAction *)self->_action title];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __102__PKPaymentPassDetailPassActionSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke;
    v20[3] = &unk_1E8014560;
    v20[4] = self;
    PKPaymentPassActionPerformExternalActionContent(pass, externalActionContent, title, v20);

LABEL_13:
    goto LABEL_14;
  }

  if (PKEqualObjects())
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 presentCombinedPassActionViewControllerFromBundle:self->_actionBundle];
    goto LABEL_13;
  }

  if (PKEqualObjects())
  {
    v15 = self->_pass;
    externalActionContent = self->_externalActionContent;
    _externalActionTitle = [(PKPaymentPassDetailPassActionSectionController *)self _externalActionTitle];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __102__PKPaymentPassDetailPassActionSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke_2;
    v19[3] = &unk_1E8014560;
    v19[4] = self;
    PKPaymentPassActionPerformExternalActionContent(v15, externalActionContent, _externalActionTitle, v19);
  }

LABEL_14:
}

void __102__PKPaymentPassDetailPassActionSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = a3;
    WeakRetained = objc_loadWeakRetained((v3 + 112));
    [WeakRetained presentPassActionViewController:v4];
  }
}

void __102__PKPaymentPassDetailPassActionSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = a3;
    WeakRetained = objc_loadWeakRetained((v3 + 112));
    [WeakRetained presentPassActionViewController:v4];
  }
}

- (id)_externalActionTitle
{
  [(PKTransitBalanceModel *)self->_transitBalanceModel hasBalanceContent];
  [(PKTransitBalanceModel *)self->_transitBalanceModel hasCommutePlanContent];
  displayName = [(PKPaymentPassActionExternalActionContent *)self->_externalActionContent displayName];
  if (displayName)
  {
    v4 = PKPassLocalizedStringWithFormat();
  }

  else
  {
    organizationName = [(PKPaymentPass *)self->_pass organizationName];
    v4 = PKPassLocalizedStringWithFormat();
  }

  return v4;
}

- (void)_computeActionBundle
{
  v19 = *MEMORY[0x1E69E9840];
  actionGroups = [(PKPaymentPass *)self->_pass actionGroups];
  v4 = objc_alloc_init(MEMORY[0x1E69B8D18]);
  [v4 setActionGroups:actionGroups];
  filteredActionsForDisplayableEntities = [(PKTransitBalanceModel *)self->_transitBalanceModel filteredActionsForDisplayableEntities];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = filteredActionsForDisplayableEntities;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 type] == 2 && objc_msgSend(v12, "isActionAvailable") && (objc_msgSend(v12, "unavailableActionBehavior") & 2) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v4 setOrAddActions:v6];
  actionBundle = self->_actionBundle;
  self->_actionBundle = v4;
}

- (PKPaymentPassDetailPassActionSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end