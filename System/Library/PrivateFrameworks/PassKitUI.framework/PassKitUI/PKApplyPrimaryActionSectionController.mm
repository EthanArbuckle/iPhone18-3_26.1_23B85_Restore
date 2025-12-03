@interface PKApplyPrimaryActionSectionController
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)listLayoutConfigurationWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_configureContentSection:(id)section;
@end

@implementation PKApplyPrimaryActionSectionController

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"primaryAction";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v7 = identifierCopy;
  v8 = v7;
  if (v7 == @"primaryAction" || v7 && (v9 = [(__CFString *)v7 isEqualToString:@"primaryAction"], v8, v9))
  {
    [(PKApplyPrimaryActionSectionController *)self _configureContentSection:v6];
  }

  return v6;
}

- (id)listLayoutConfigurationWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = PKApplyPrimaryActionSectionController;
  v4 = [(PKApplyCollectionViewSectionController *)&v6 listLayoutConfigurationWithLayoutEnvironment:environment sectionIdentifier:identifier];
  [v4 setItemSeparatorHandler:&__block_literal_global_153];

  return v4;
}

id __104__PKApplyPrimaryActionSectionController_listLayoutConfigurationWithLayoutEnvironment_sectionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (![a2 row])
  {
    [v4 setBottomSeparatorVisibility:2];
  }

  return v4;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identifierCopy == @"primaryAction")
  {
    v9 = 1;
  }

  else if (identifierCopy)
  {
    v9 = [(__CFString *)identifierCopy isEqualToString:@"primaryAction"];
  }

  else
  {
    v9 = 0;
  }

  v17.receiver = self;
  v17.super_class = PKApplyPrimaryActionSectionController;
  v10 = [(PKApplyCollectionViewSectionController *)&v17 layoutWithLayoutEnvironment:environmentCopy sectionIdentifier:v8];
  [v10 contentInsets];
  v13 = v12;
  if (v9)
  {
    v14 = 16.0;
  }

  else
  {
    v14 = v11;
  }

  v15 = PKSetupListViewConstantsViewMargin();
  [v10 setContentInsets:{v14, v15, v13, v15}];

  return v10;
}

- (void)_configureContentSection:(id)section
{
  v18[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v5 = [PKApplyPrimaryActionRow alloc];
  page = [(PKApplyCollectionViewSectionController *)self page];
  primaryActionTitle = [page primaryActionTitle];
  v8 = [(PKApplyPrimaryActionRow *)v5 initWithTitle:primaryActionTitle];

  [(PKApplyPrimaryActionRow *)v8 setLoading:self->_primaryButtonLoading];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v8);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __66__PKApplyPrimaryActionSectionController__configureContentSection___block_invoke;
  v13 = &unk_1E801C7B8;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  [(PKApplyPrimaryActionRow *)v8 setAction:&v10];
  v18[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:{1, v10, v11, v12, v13}];
  [sectionCopy appendItems:v9];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __66__PKApplyPrimaryActionSectionController__configureContentSection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [WeakRetained dynamicCollectionDelegate];
    if (v3)
    {
      [v2 setLoading:1];
      WeakRetained[88] = 1;
      [v3 primaryButtonTapped];
    }
  }
}

@end