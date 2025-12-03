@interface PKPassDetailSharesSectionController
- (PKPassDetailSharesSectionController)initWithSharesController:(id)controller delegate:(id)delegate;
- (PKPassDetailSharesSectionControllerDelegate)delegate;
- (id)_localizedEntitlementSummary;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)_updateSectionIdentifiers;
- (void)dealloc;
- (void)preflight:(id)preflight;
- (void)sharedPassSharesControllerDidUpdateShares:(id)shares;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKPassDetailSharesSectionController

- (PKPassDetailSharesSectionController)initWithSharesController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKPassDetailSharesSectionController;
  v9 = [(PKPaymentPassDetailSectionController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharesController, controller);
    [(PKSharedPassSharesController *)v10->_sharesController addDelegate:v10];
    objc_storeWeak(&v10->_delegate, delegateCopy);
    [(PKPassDetailSharesSectionController *)v10 _updateSectionIdentifiers];
  }

  return v10;
}

- (void)dealloc
{
  [(PKSharedPassSharesController *)self->_sharesController removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKPassDetailSharesSectionController;
  [(PKPassDetailSharesSectionController *)&v3 dealloc];
}

- (void)_updateSectionIdentifiers
{
  myEntitlements = [(PKSharedPassSharesController *)self->_sharesController myEntitlements];
  mapped = self->_mapped;
  v8 = myEntitlements;
  if (myEntitlements)
  {
    v5 = [myEntitlements count] != 0;
  }

  else
  {
    v5 = 0;
  }

  self->_mapped = v5;
  if (mapped != v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    sectionIdentifiers = [(PKPassDetailSharesSectionController *)self sectionIdentifiers];
    [WeakRetained reloadSections:sectionIdentifiers];
  }
}

- (void)preflight:(id)preflight
{
  preflightCopy = preflight;
  objc_initWeak(&location, self);
  sharesController = self->_sharesController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PKPassDetailSharesSectionController_preflight___block_invoke;
  v7[3] = &unk_1E80111D0;
  objc_copyWeak(&v9, &location);
  v6 = preflightCopy;
  v8 = v6;
  [(PKSharedPassSharesController *)sharesController updateSharesWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__PKPassDetailSharesSectionController_preflight___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = objc_alloc(MEMORY[0x1E69B8A38]);
    v4 = [v8[10] myEntitlements];
    v5 = [v8[10] possiblePredefinedEntitlements];
    v6 = [v3 initWithMyEntitlements:v4 predefinedSharedEntitlements:v5];
    v7 = v8[9];
    v8[9] = v6;

    *(v8 + 64) = 1;
    [v8 _updateSectionIdentifiers];
    (*(*(a1 + 32) + 16))();
    WeakRetained = v8;
  }
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"EntitlementsSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)_localizedEntitlementSummary
{
  entitlementComposer = self->_entitlementComposer;
  pass = [(PKSharedPassSharesController *)self->_sharesController pass];
  v4 = -[PKPassEntitlementsComposer localizedSelectedEntitlementSummaryForAccessType:](entitlementComposer, "localizedSelectedEntitlementSummaryForAccessType:", [pass accessType]);

  return v4;
}

- (id)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self currentSegment]|| !self->_mapped)
  {
    allSectionIdentifiers = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = [(PKPassDetailSharesSectionController *)self allSectionIdentifiers];
  }

  return allSectionIdentifiers;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  if (PKEqualObjects())
  {
    pass = [(PKSharedPassSharesController *)self->_sharesController pass];
    accessType = [pass accessType];

    if (accessType == 4)
    {
      v9 = PKLocalizedShareableCredentialString(&cfstr_MyEntitlements.isa);
      _localizedEntitlementSummary = [(PKPassDetailSharesSectionController *)self _localizedEntitlementSummary];
      v11 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v9 detailText:_localizedEntitlementSummary cellStyle:1 forTableView:viewCopy];
    }

    else
    {
      v9 = PKLocalizedShareableCredentialString(&cfstr_MyEntitlements_0.isa);
      v11 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v9 detailText:0 cellStyle:1 forTableView:viewCopy];
    }

    [v11 setAccessoryType:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  if (PKEqualObjects())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sharesSectionControllerDidSelectViewEntitlements:self];
  }
}

- (void)sharedPassSharesControllerDidUpdateShares:(id)shares
{
  if (self->_hasLoadedInitialData)
  {
    [(PKPassDetailSharesSectionController *)self _updateSectionIdentifiers];
  }
}

- (PKPassDetailSharesSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end