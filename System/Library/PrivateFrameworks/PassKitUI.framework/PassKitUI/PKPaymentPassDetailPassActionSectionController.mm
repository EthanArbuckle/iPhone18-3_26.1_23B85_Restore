@interface PKPaymentPassDetailPassActionSectionController
+ (BOOL)validForPaymentPass:(id)a3;
- (PKPaymentPassDetailPassActionSectionController)initWithPass:(id)a3 viewStyle:(int64_t)a4 paymentDataProvider:(id)a5 webService:(id)a6 transitBalanceModel:(id)a7 delegate:(id)a8;
- (PKPaymentPassDetailPassActionSectionControllerDelegate)delegate;
- (id)_externalActionTitle;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)titleForFooterInSectionIdentifier:(id)a3;
- (void)_computeActionBundle;
- (void)setPass:(id)a3;
- (void)setTransitBalanceModel:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKPaymentPassDetailPassActionSectionController

- (PKPaymentPassDetailPassActionSectionController)initWithPass:(id)a3 viewStyle:(int64_t)a4 paymentDataProvider:(id)a5 webService:(id)a6 transitBalanceModel:(id)a7 delegate:(id)a8
{
  v15 = a3;
  v16 = a5;
  v26 = a6;
  v25 = a7;
  v17 = a8;
  v27.receiver = self;
  v27.super_class = PKPaymentPassDetailPassActionSectionController;
  v18 = [(PKPaymentPassDetailSectionController *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, a3);
    v19->_viewStyle = a4;
    objc_storeWeak(&v19->_delegate, v17);
    objc_storeStrong(&v19->_transitBalanceModel, a7);
    objc_storeStrong(&v19->_webService, a6);
    v20 = [PKPaymentPassDetailAutoReloadSectionController enteredValueActionForPass:v19->_pass];
    action = v19->_action;
    v19->_action = v20;

    v22 = [PKPaymentPassDetailAutoReloadSectionController externalActionContentForPass:v19->_pass];
    externalActionContent = v19->_externalActionContent;
    v19->_externalActionContent = v22;

    objc_storeStrong(&v19->_paymentDataProvider, a5);
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

- (void)setTransitBalanceModel:(id)a3
{
  v5 = a3;
  if (v5 && self->_transitBalanceModel != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_transitBalanceModel, a3);
    [(PKPaymentPassDetailPassActionSectionController *)self _computeActionBundle];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [(PKPaymentPassDetailPassActionSectionController *)self sectionIdentifiers];
    [WeakRetained reloadSections:v7];

    v5 = v8;
  }
}

- (void)setPass:(id)a3
{
  objc_storeStrong(&self->_pass, a3);
  v9 = a3;
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

    v5 = [(PKPaymentPass *)self->_pass actionGroups];
    v6 = [v5 count];

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

+ (BOOL)validForPaymentPass:(id)a3
{
  v3 = a3;
  v4 = [v3 devicePrimaryPaymentApplication];
  [v4 state];
  IsPersonalized = PKPaymentApplicationStateIsPersonalized();

  if (IsPersonalized)
  {
    v6 = [PKPaymentPassDetailAutoReloadSectionController enteredValueActionForPass:v3];

    v7 = [PKPaymentPassDetailAutoReloadSectionController externalActionContentForPass:v3];
    v8 = v6 | v7;

    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v9 = [v3 actionGroups];
      if ([v9 count])
      {
        v10 = 1;
      }

      else
      {
        v10 = [v3 isAutoTopEnabled];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)titleForFooterInSectionIdentifier:(id)a3
{
  if (PKEqualObjects())
  {
    [(PKTransitBalanceModel *)self->_transitBalanceModel hasBalanceContent];
    [(PKTransitBalanceModel *)self->_transitBalanceModel hasCommutePlanContent];
    v4 = [(PKPaymentPassActionExternalActionContent *)self->_externalActionContent displayName];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(PKPaymentPass *)self->_pass organizationName];
    }

    v8 = v6;

    v7 = PKPassLocalizedStringWithFormat();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (PKEqualObjects())
  {
    v9 = PKPassLocalizedStringWithFormat();
    v10 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v9 forTableView:v7, 0];

    v11 = MEMORY[0x1E69B93F0];
LABEL_3:
    PKAccessibilityIDCellSet(v10, *v11);
    goto LABEL_16;
  }

  if (PKEqualObjects())
  {
    v12 = [(PKPaymentPass *)self->_pass actionGroups];
    v13 = [v12 firstObject];
    v14 = [v13 title];

    v15 = [(PKPaymentPass *)self->_pass paymentPass];
    v16 = [v15 actionLocalizations];

    if (v14)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = [v16 objectForKeyedSubscript:v14];

      v14 = v18;
    }

    if (!v14)
    {
      v22 = 0;
      v19 = PKPassLocalizedStringWithFormat();
    }

    v10 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v14 forTableView:v7, v22];
    PKAccessibilityIDCellSet(v10, *MEMORY[0x1E69B9580]);
  }

  else
  {
    if (PKEqualObjects())
    {
      v20 = [(PKPaymentPassDetailPassActionSectionController *)self _externalActionTitle];
      v10 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v20 forTableView:v7];

      v11 = MEMORY[0x1E69B9580];
      goto LABEL_3;
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a5;
  [a3 deselectRowAtIndexPath:a4 animated:1];
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
    v13 = [(PKPaymentPassAction *)self->_action externalActionContent];
    v14 = [(PKPaymentPassAction *)self->_action title];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __102__PKPaymentPassDetailPassActionSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke;
    v20[3] = &unk_1E8014560;
    v20[4] = self;
    PKPaymentPassActionPerformExternalActionContent(pass, v13, v14, v20);

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
    v17 = [(PKPaymentPassDetailPassActionSectionController *)self _externalActionTitle];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __102__PKPaymentPassDetailPassActionSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke_2;
    v19[3] = &unk_1E8014560;
    v19[4] = self;
    PKPaymentPassActionPerformExternalActionContent(v15, externalActionContent, v17, v19);
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
  v3 = [(PKPaymentPassActionExternalActionContent *)self->_externalActionContent displayName];
  if (v3)
  {
    v4 = PKPassLocalizedStringWithFormat();
  }

  else
  {
    v6 = [(PKPaymentPass *)self->_pass organizationName];
    v4 = PKPassLocalizedStringWithFormat();
  }

  return v4;
}

- (void)_computeActionBundle
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentPass *)self->_pass actionGroups];
  v4 = objc_alloc_init(MEMORY[0x1E69B8D18]);
  [v4 setActionGroups:v3];
  v5 = [(PKTransitBalanceModel *)self->_transitBalanceModel filteredActionsForDisplayableEntities];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
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