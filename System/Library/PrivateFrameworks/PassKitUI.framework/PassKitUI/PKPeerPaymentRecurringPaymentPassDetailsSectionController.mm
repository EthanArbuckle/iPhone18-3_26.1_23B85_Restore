@interface PKPeerPaymentRecurringPaymentPassDetailsSectionController
+ (BOOL)validForPaymentPass:(id)a3;
- (BOOL)_sectionAvailable;
- (PKPeerPaymentRecurringPaymentPassDetailsSectionController)initWithDelegate:(id)a3 pass:(id)a4 context:(int64_t)a5 passLibraryDataProvider:(id)a6;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (void)_presentRecurringPaymentsWithIdentifier:(id)a3;
- (void)_updateRecurringPaymentsWithCompletion:(id)a3;
- (void)preflight:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKPeerPaymentRecurringPaymentPassDetailsSectionController

- (PKPeerPaymentRecurringPaymentPassDetailsSectionController)initWithDelegate:(id)a3 pass:(id)a4 context:(int64_t)a5 passLibraryDataProvider:(id)a6
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = PKPeerPaymentRecurringPaymentPassDetailsSectionController;
  v9 = [(PKPaymentPassDetailSectionController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v10->_context = a5;
    v11 = [MEMORY[0x1E69B9000] sharedInstance];
    v12 = [v11 account];
    account = v10->_account;
    v10->_account = v12;

    [v11 registerObserver:v10];
  }

  return v10;
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"PeerPaymentRecurringPaymentsSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self currentSegment]|| ![(PKPeerPaymentRecurringPaymentPassDetailsSectionController *)self _sectionAvailable])
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(PKPeerPaymentRecurringPaymentPassDetailsSectionController *)self allSectionIdentifiers];
  }

  return v3;
}

+ (BOOL)validForPaymentPass:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69B9000] sharedInstance];
  v5 = [v4 account];

  if ([v3 hasAssociatedPeerPaymentAccount] && !objc_msgSend(v3, "passActivationState"))
  {
    v6 = [v5 supportsRecurringPayments];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)preflight:(id)a3
{
  v4 = MEMORY[0x1E69B9000];
  v8 = a3;
  v5 = [v4 sharedInstance];
  v6 = [v5 account];
  account = self->_account;
  self->_account = v6;

  [(PKPeerPaymentRecurringPaymentPassDetailsSectionController *)self _updateRecurringPaymentsWithCompletion:v8];
}

- (BOOL)_sectionAvailable
{
  if ([(PKPeerPaymentAccount *)self->_account supportsRecurringPayments])
  {
    account = self->_account;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained familyCollection];
    v6 = [v5 currentUser];
    if ([(PKPeerPaymentAccount *)account isEligibleForRecurringPaymentsForUser:v6])
    {
      v7 = PKIsVision() ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_updateRecurringPaymentsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B9000] sharedInstance];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__PKPeerPaymentRecurringPaymentPassDetailsSectionController__updateRecurringPaymentsWithCompletion___block_invoke;
  v7[3] = &unk_1E8012940;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 recurringPaymentsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __100__PKPeerPaymentRecurringPaymentPassDetailsSectionController__updateRecurringPaymentsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pk_objectsPassingTest:&__block_literal_global_80];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPeerPaymentRecurringPaymentPassDetailsSectionController__updateRecurringPaymentsWithCompletion___block_invoke_3;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

uint64_t __100__PKPeerPaymentRecurringPaymentPassDetailsSectionController__updateRecurringPaymentsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 1)
  {
    v3 = [v2 sentByMe];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __100__PKPeerPaymentRecurringPaymentPassDetailsSectionController__updateRecurringPaymentsWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    objc_storeStrong(WeakRetained + 8, *(a1 + 32));
    v4 = objc_loadWeakRetained(v7 + 11);
    v5 = [v7 sectionIdentifiers];
    [v4 reloadSections:v5];

    v3 = v7;
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))();
      v3 = v7;
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v6 = [a3 dequeueReusableCellWithIdentifier:{@"PeerPaymentRecurringPayments", a4, a5}];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:2 reuseIdentifier:@"PeerPaymentRecurringPayments"];
  }

  v7 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v8 = PKLocalizedPeerPaymentRecurringString(&cfstr_DashboardMoreM.isa);
  [v7 setText:v8];

  v9 = [(NSArray *)self->_recurringPayments count];
  if (v9)
  {
    v10 = MEMORY[0x1E696ADA0];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    v12 = [v10 localizedStringFromNumber:v11 numberStyle:0];

    [v7 setSecondaryText:v12];
  }

  [v6 setAccessoryType:1];
  [v6 setContentConfiguration:v7];
  PKAccessibilityIDCellSet(v6, *MEMORY[0x1E69B9B40]);

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_context != 3 || (PKPeerPaymentRecurringPaymentHasShownEducationMessage() & 1) != 0 || [(NSArray *)self->_recurringPayments count])
  {
    [(PKPeerPaymentRecurringPaymentPassDetailsSectionController *)self _presentRecurringPaymentsWithIdentifier:0];
  }

  else
  {
    objc_initWeak(&location, self);
    v11 = [PKPeerPaymentRecurringPaymentEducationViewController alloc];
    context = self->_context;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [WeakRetained transactionSourceCollection];
    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = [v15 familyCollection];
    v17 = [(PKPeerPaymentRecurringPaymentEducationViewController *)v11 initWithContext:context transactionSourceCollection:v14 familyCollection:v16];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __113__PKPeerPaymentRecurringPaymentPassDetailsSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke;
    v21[3] = &unk_1E8010998;
    objc_copyWeak(&v22, &location);
    [(PKPeerPaymentRecurringPaymentEducationViewController *)v17 setAddCardHandler:v21];
    v18 = [[PKNavigationController alloc] initWithRootViewController:v17];
    if ([(UIViewController *)v18 pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [(PKNavigationController *)v18 setModalPresentationStyle:2];
    }

    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = [v19 navigationController];
    [v20 presentViewController:v18 animated:1 completion:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  [v8 deselectRowAtIndexPath:v9 animated:1];
}

void __113__PKPeerPaymentRecurringPaymentPassDetailsSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 11);
    [v2 presentAddCard];

    WeakRetained = v3;
  }
}

- (void)_presentRecurringPaymentsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [PKPeerPaymentRecurringPaymentViewController alloc];
  context = self->_context;
  v7 = [MEMORY[0x1E69B9000] sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained transactionSourceCollection];
  v10 = objc_loadWeakRetained(&self->_delegate);
  v11 = [v10 familyCollection];
  v12 = [(PKPeerPaymentRecurringPaymentViewController *)v5 initWithContext:context peerPaymentService:v7 transactionSourceCollection:v9 familyCollection:v11];

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__PKPeerPaymentRecurringPaymentPassDetailsSectionController__presentRecurringPaymentsWithIdentifier___block_invoke;
  v15[3] = &unk_1E8013220;
  objc_copyWeak(&v18, &location);
  v13 = v12;
  v16 = v13;
  v14 = v4;
  v17 = v14;
  [(PKPeerPaymentRecurringPaymentViewController *)v13 preflightWithCompletion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __101__PKPeerPaymentRecurringPaymentPassDetailsSectionController__presentRecurringPaymentsWithIdentifier___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && a2)
  {
    v9 = WeakRetained;
    v5 = objc_loadWeakRetained(WeakRetained + 11);
    v6 = [v5 navigationController];

    v7 = [v6 pk_settings_useStateDrivenNavigation];
    v8 = *(a1 + 32);
    if (v7)
    {
      [v6 pk_settings_pushViewController:v8];
    }

    else
    {
      [v6 pushViewController:v8 animated:1];
    }

    if (*(a1 + 40))
    {
      [*(a1 + 32) showDetailsForRecurringPaymentIdentifier:?];
    }

    WeakRetained = v9;
  }
}

@end