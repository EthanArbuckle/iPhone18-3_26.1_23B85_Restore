@interface PKRewardsEducationViewController
- (PKRewardsEducationViewController)initWithAccount:(id)a3 accountService:(id)a4 paymentPass:(id)a5 enhancedMerchantsFetcher:(id)a6;
- (id)_linkTableViewCellForIndexPath:(id)a3;
- (id)_tierTableViewCellForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_close:(id)a3;
- (void)_presentMerchantBenefitsView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PKRewardsEducationViewController

- (PKRewardsEducationViewController)initWithAccount:(id)a3 accountService:(id)a4 paymentPass:(id)a5 enhancedMerchantsFetcher:(id)a6
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = PKRewardsEducationViewController;
  v15 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v22, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1], 2);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, a3);
    objc_storeStrong(&v16->_accountService, a4);
    objc_storeStrong(&v16->_paymentPass, a5);
    objc_storeStrong(&v16->_enhancedMerchantsFetcher, a6);
    v17 = [(PKRewardsEducationViewController *)v16 navigationItem];
    v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v16 action:sel__close_];
    [v17 setLeftBarButtonItem:v18];

    v23[0] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v20 = [(PKRewardsEducationViewController *)v16 registerForTraitChanges:v19 withHandler:&__block_literal_global_6];
  }

  return v16;
}

void __104__PKRewardsEducationViewController_initWithAccount_accountService_paymentPass_enhancedMerchantsFetcher___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 tableView];
  [v2 reloadData];
}

- (void)viewDidLoad
{
  v23[4] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PKRewardsEducationViewController;
  [(PKSectionTableViewController *)&v22 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69B9160]);
  v4 = PKLocalizedFeatureString();
  v5 = PKLocalizedFeatureString();
  v6 = [v3 initWithTier:3 localizedTitle:v4 localizedSubtitle:v5];

  v7 = objc_alloc(MEMORY[0x1E69B9160]);
  v8 = PKLocalizedFeatureString();
  v9 = PKLocalizedFeatureString();
  v10 = [v7 initWithTier:2 localizedTitle:v8 localizedSubtitle:v9];

  v11 = objc_alloc(MEMORY[0x1E69B9160]);
  v12 = PKLocalizedFeatureString();
  v13 = PKLocalizedFeatureString();
  v14 = [v11 initWithTier:1 localizedTitle:v12 localizedSubtitle:v13];

  v15 = objc_alloc(MEMORY[0x1E69B9160]);
  v16 = PKLocalizedFeatureString();
  v17 = PKLocalizedFeatureString();
  v18 = [v15 initWithTier:4 localizedTitle:v16 localizedSubtitle:v17];

  v23[0] = v6;
  v23[1] = v10;
  v23[2] = v14;
  v23[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  tiers = self->_tiers;
  self->_tiers = v19;

  v21 = [(PKRewardsEducationViewController *)self tableView];
  [v21 registerClass:objc_opt_class() forCellReuseIdentifier:@"RewardsTierEducationCellIdentifier"];
  [v21 registerClass:objc_opt_class() forCellReuseIdentifier:@"LinkEducationCellIdentifier"];
  [v21 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"HeaderIdentifier"];
  [v21 setDataSource:self];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(PKRewardsEducationViewController *)self _shouldShowLinkSection])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(PKRewardsEducationViewController *)self _shouldShowLinkSection];
  }

  else if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_tiers count];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 == 1)
  {
    v7 = [(PKRewardsEducationViewController *)self _linkTableViewCellForIndexPath:v5];
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = [(PKRewardsEducationViewController *)self _tierTableViewCellForIndexPath:v5];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_tierTableViewCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PKRewardsEducationViewController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:@"RewardsTierEducationCellIdentifier" forIndexPath:v4];

  tiers = self->_tiers;
  v8 = [v4 row];

  v9 = [(NSArray *)tiers objectAtIndex:v8];
  v10 = [v9 localizedTitle];
  [v6 setTitle:v10];

  v11 = [v9 localizedSubtitle];
  [v6 setSubtitle:v11];

  v12 = [v9 tier] - 1;
  if (v12 > 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = PKUIImageNamed(off_1E8011CD8[v12]);
  }

  v14 = [v6 tierIcon];
  [v14 setImage:v13];

  [v6 setLink:0];
  [v6 setSelectionStyle:0];

  return v6;
}

- (id)_linkTableViewCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PKRewardsEducationViewController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:@"LinkEducationCellIdentifier" forIndexPath:v4];

  v7 = [v6 textLabel];
  v8 = PKLocalizedFeatureString();
  [v7 setText:v8];

  v9 = [v6 textLabel];
  v10 = [MEMORY[0x1E69DC888] linkColor];
  [v9 setTextColor:v10];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [v6 section];

  if (v7 == 1)
  {

    [(PKRewardsEducationViewController *)self _presentMerchantBenefitsView];
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PKRewardsEducationViewController *)self tableView];
    v4 = [v5 dequeueReusableHeaderFooterViewWithIdentifier:@"HeaderIdentifier"];
  }

  return v4;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([a3 numberOfSections] - 1 == a4)
  {
    v4 = PKLocalizedFeatureString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_presentMerchantBenefitsView
{
  v3 = [[PKEnhancedMerchantsViewController alloc] initWithAccount:self->_account accountService:self->_accountService paymentPass:self->_paymentPass enhancedMerchantsFetcher:self->_enhancedMerchantsFetcher];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKRewardsEducationViewController__presentMerchantBenefitsView__block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v10, &location);
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__PKRewardsEducationViewController__presentMerchantBenefitsView__block_invoke_3;
    v6[3] = &unk_1E8010AD8;
    v7 = v5;
    [(PKEnhancedMerchantsViewController *)v4 preflightWithCompletion:v6];
  }

  else
  {
    v5[2](v5);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __64__PKRewardsEducationViewController__presentMerchantBenefitsView__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__PKRewardsEducationViewController__presentMerchantBenefitsView__block_invoke_2;
  v2[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __64__PKRewardsEducationViewController__presentMerchantBenefitsView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:*(a1 + 32)];
  [WeakRetained presentViewController:v2 animated:1 completion:0];
}

- (void)_close:(id)a3
{
  v3 = [(PKRewardsEducationViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

@end