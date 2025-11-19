@interface PKPassDetailsPrecursorPassUpgradeSectionController
- (PKPassDetailsPrecursorPassUpgradeSectionController)initWithPass:(id)a3 webService:(id)a4 delegate:(id)a5;
- (PKPassDetailsPrecursorPassUpgradeSectionControllerDelegate)delegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (int64_t)tableView:(id)a3 numberOfRowsInSectionIdentifier:(id)a4;
- (void)_updateSectionIdentifiersNotify:(BOOL)a3 animated:(BOOL)a4;
- (void)loadDescriptionWithAnimated:(BOOL)a3 completion:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKPassDetailsPrecursorPassUpgradeSectionController

- (PKPassDetailsPrecursorPassUpgradeSectionController)initWithPass:(id)a3 webService:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PKPassDetailsPrecursorPassUpgradeSectionController;
  v12 = [(PKPaymentPassDetailSectionController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pass, a3);
    v14 = [objc_alloc(MEMORY[0x1E69B9088]) initWithPass:v9 webService:v10];
    precursorController = v13->_precursorController;
    v13->_precursorController = v14;

    [(PKPrecursorPassUpgradeController *)v13->_precursorController setDelegate:v13];
    objc_storeWeak(&v13->_delegate, v11);
  }

  return v13;
}

- (void)_updateSectionIdentifiersNotify:(BOOL)a3 animated:(BOOL)a4
{
  self->_mapped = self->_description != 0;
  if (a3)
  {
    v4 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (v4)
    {
      v6 = [(PKPassDetailsPrecursorPassUpgradeSectionController *)self sectionIdentifiers];
      [WeakRetained reloadSections:v6];
    }

    else
    {
      [WeakRetained reloadData:0];
    }
  }
}

- (void)loadDescriptionWithAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(PKPrecursorPassUpgradeController *)self->_precursorController devicePrimaryPrecursorRequest];
  precursorController = self->_precursorController;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__PKPassDetailsPrecursorPassUpgradeSectionController_loadDescriptionWithAnimated_completion___block_invoke;
  v10[3] = &unk_1E8018ED0;
  v12 = a3;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(PKPrecursorPassUpgradeController *)precursorController requestDescriptionFor:v7 completion:v10];
}

void __93__PKPassDetailsPrecursorPassUpgradeSectionController_loadDescriptionWithAnimated_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_storeStrong((*(a1 + 32) + 88), a2);
  v4 = [v8 actions];
  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  *(v5 + 96) = v4;

  [*(a1 + 32) _updateSectionIdentifiersNotify:1 animated:*(a1 + 48)];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"PrecursorPassSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)sectionIdentifiers
{
  if (([(PKPaymentPassDetailSectionController *)self detailViewStyle]- 1) > 1 || [(PKPaymentPassDetailSectionController *)self currentSegment]|| !self->_mapped)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(PKPassDetailsPrecursorPassUpgradeSectionController *)self allSectionIdentifiers];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (PKEqualObjects())
  {
    if ([v8 row])
    {
      v9 = -[NSArray objectAtIndex:](self->_actions, "objectAtIndex:", [v8 row] - 1);
      v10 = [v9 localizedActionText];
      [(PKPaymentPassDetailSectionController *)self linkCellWithText:v10 forTableView:v7];
    }

    else
    {
      v9 = [(PKPrecursorPassUpgradeRequestDescription *)self->_description localizedTitle];
      v10 = [(PKPrecursorPassUpgradeRequestDescription *)self->_description localizedDescription];
      [(PKPaymentPassDetailSectionController *)self stackedInfoCellWithPrimaryText:v9 detailText:v10 cellStyle:1 forTableView:v7];
    }
    v11 = ;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSectionIdentifier:(id)a4
{
  if (!PKEqualObjects())
  {
    return 0;
  }

  result = self->_actions;
  if (result)
  {
    return [result count] + 1;
  }

  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 deselectRowAtIndexPath:v9 animated:1];
  v11 = PKEqualObjects();

  if (v11)
  {
    if ([v9 row] >= 1)
    {
      v12 = [v9 row];
      if (v12 <= [(NSArray *)self->_actions count])
      {
        v13 = [v8 cellForRowAtIndexPath:v9];
        [(PKPaymentPassDetailSectionController *)self showSpinner:1 inCell:v13 overrideTextColor:0];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v15 = -[NSArray objectAtIndex:](self->_actions, "objectAtIndex:", [v9 row] - 1);
        precursorController = self->_precursorController;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __106__PKPassDetailsPrecursorPassUpgradeSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke;
        v18[3] = &unk_1E8010A10;
        v18[4] = self;
        v19 = v13;
        v17 = v13;
        [WeakRetained didSelectPrecursorPassRequestForAction:v15 controller:precursorController sourceItem:v17 completion:v18];
      }
    }
  }
}

void __106__PKPassDetailsPrecursorPassUpgradeSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 linkTextColor];
  [v1 showSpinner:0 inCell:v2 overrideTextColor:v3];
}

- (PKPassDetailsPrecursorPassUpgradeSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end