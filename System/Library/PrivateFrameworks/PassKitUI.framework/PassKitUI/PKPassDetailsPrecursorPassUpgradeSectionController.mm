@interface PKPassDetailsPrecursorPassUpgradeSectionController
- (PKPassDetailsPrecursorPassUpgradeSectionController)initWithPass:(id)pass webService:(id)service delegate:(id)delegate;
- (PKPassDetailsPrecursorPassUpgradeSectionControllerDelegate)delegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier;
- (void)_updateSectionIdentifiersNotify:(BOOL)notify animated:(BOOL)animated;
- (void)loadDescriptionWithAnimated:(BOOL)animated completion:(id)completion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKPassDetailsPrecursorPassUpgradeSectionController

- (PKPassDetailsPrecursorPassUpgradeSectionController)initWithPass:(id)pass webService:(id)service delegate:(id)delegate
{
  passCopy = pass;
  serviceCopy = service;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = PKPassDetailsPrecursorPassUpgradeSectionController;
  v12 = [(PKPaymentPassDetailSectionController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pass, pass);
    v14 = [objc_alloc(MEMORY[0x1E69B9088]) initWithPass:passCopy webService:serviceCopy];
    precursorController = v13->_precursorController;
    v13->_precursorController = v14;

    [(PKPrecursorPassUpgradeController *)v13->_precursorController setDelegate:v13];
    objc_storeWeak(&v13->_delegate, delegateCopy);
  }

  return v13;
}

- (void)_updateSectionIdentifiersNotify:(BOOL)notify animated:(BOOL)animated
{
  self->_mapped = self->_description != 0;
  if (notify)
  {
    animatedCopy = animated;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (animatedCopy)
    {
      sectionIdentifiers = [(PKPassDetailsPrecursorPassUpgradeSectionController *)self sectionIdentifiers];
      [WeakRetained reloadSections:sectionIdentifiers];
    }

    else
    {
      [WeakRetained reloadData:0];
    }
  }
}

- (void)loadDescriptionWithAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  devicePrimaryPrecursorRequest = [(PKPrecursorPassUpgradeController *)self->_precursorController devicePrimaryPrecursorRequest];
  precursorController = self->_precursorController;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__PKPassDetailsPrecursorPassUpgradeSectionController_loadDescriptionWithAnimated_completion___block_invoke;
  v10[3] = &unk_1E8018ED0;
  animatedCopy = animated;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(PKPrecursorPassUpgradeController *)precursorController requestDescriptionFor:devicePrimaryPrecursorRequest completion:v10];
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
    allSectionIdentifiers = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = [(PKPassDetailsPrecursorPassUpgradeSectionController *)self allSectionIdentifiers];
  }

  return allSectionIdentifiers;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  if (PKEqualObjects())
  {
    if ([pathCopy row])
    {
      localizedTitle = -[NSArray objectAtIndex:](self->_actions, "objectAtIndex:", [pathCopy row] - 1);
      localizedActionText = [localizedTitle localizedActionText];
      [(PKPaymentPassDetailSectionController *)self linkCellWithText:localizedActionText forTableView:viewCopy];
    }

    else
    {
      localizedTitle = [(PKPrecursorPassUpgradeRequestDescription *)self->_description localizedTitle];
      localizedActionText = [(PKPrecursorPassUpgradeRequestDescription *)self->_description localizedDescription];
      [(PKPaymentPassDetailSectionController *)self stackedInfoCellWithPrimaryText:localizedTitle detailText:localizedActionText cellStyle:1 forTableView:viewCopy];
    }
    v11 = ;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v11 = PKEqualObjects();

  if (v11)
  {
    if ([pathCopy row] >= 1)
    {
      v12 = [pathCopy row];
      if (v12 <= [(NSArray *)self->_actions count])
      {
        v13 = [viewCopy cellForRowAtIndexPath:pathCopy];
        [(PKPaymentPassDetailSectionController *)self showSpinner:1 inCell:v13 overrideTextColor:0];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v15 = -[NSArray objectAtIndex:](self->_actions, "objectAtIndex:", [pathCopy row] - 1);
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