@interface PKThresholdTopUpActionsSectionController
- (BOOL)shouldHighlightItem:(id)item;
- (NSArray)identifiers;
- (PKThresholdTopUpActionsSectionController)initWithExistingThresholdTopUp:(BOOL)up delegate:(id)delegate useSetupMargins:(BOOL)margins;
- (id)cellRegistrationForItem:(id)item;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
- (void)setCancelAutoReloadUnavailable:(BOOL)unavailable;
- (void)setCancelTitle:(id)title;
@end

@implementation PKThresholdTopUpActionsSectionController

- (PKThresholdTopUpActionsSectionController)initWithExistingThresholdTopUp:(BOOL)up delegate:(id)delegate useSetupMargins:(BOOL)margins
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKThresholdTopUpActionsSectionController;
  v9 = [(PKThresholdTopUpActionsSectionController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_existingThresholdTopUp = up;
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10->_cancelInProgress = 0;
    v10->_cancelAutoReloadUnavailable = 0;
    v10->_useSetupMargins = margins;
  }

  return v10;
}

- (void)setCancelAutoReloadUnavailable:(BOOL)unavailable
{
  if (self->_cancelAutoReloadUnavailable != unavailable)
  {
    self->_cancelAutoReloadUnavailable = unavailable;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadDataAnimated:1];
  }
}

- (void)setCancelTitle:(id)title
{
  objc_storeStrong(&self->_cancelTitle, title);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataAnimated:1];
}

- (NSArray)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"thresholdActions";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)shouldHighlightItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v5 = identifier;
  if (identifier == @"cancel" || identifier && (v6 = [(__CFString *)identifier isEqualToString:@"cancel"], v5, v6))
  {
    v7 = [itemCopy cancelInProgress] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = identifier;
  if (identifier == @"cancel" || identifier && (v7 = [(__CFString *)identifier isEqualToString:@"cancel"], v6, v7))
  {
    self->_cancelInProgress = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectCells];

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 reloadDataAnimated:1];

    objc_initWeak(&location, self);
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PKThresholdTopUpActionsSectionController_didSelectItem___block_invoke;
    v11[3] = &unk_1E8011180;
    objc_copyWeak(&v12, &location);
    [v10 performedCancelWithCompletion:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __58__PKThresholdTopUpActionsSectionController_didSelectItem___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKThresholdTopUpActionsSectionController_didSelectItem___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __58__PKThresholdTopUpActionsSectionController_didSelectItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 16) = 0;
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 1);
    [v2 reloadDataAnimated:1];

    WeakRetained = v3;
  }
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v7 = identifierCopy;
  v8 = v7;
  if (v7 == @"thresholdActions" || v7 && (v9 = [(__CFString *)v7 isEqualToString:@"thresholdActions"], v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self->_existingThresholdTopUp && [(NSString *)self->_cancelTitle length])
    {
      v11 = [[PKThresholdTopUpActionItem alloc] initWithIdentifier:@"cancel" cancelInProgress:self->_cancelInProgress cancelAutoReloadUnavailable:self->_cancelAutoReloadUnavailable];
      [v10 addObject:v11];
    }

    v12 = [v10 copy];
    [v6 appendItems:v12];
  }

  return v6;
}

- (id)cellRegistrationForItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  v5 = objc_opt_class();
  v6 = MEMORY[0x1E69DC800];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__PKThresholdTopUpActionsSectionController_cellRegistrationForItem___block_invoke;
  v9[3] = &unk_1E801F4E0;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v7 = [v6 registrationWithCellClass:v5 configurationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __68__PKThresholdTopUpActionsSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = [v7 identifier];
    v10 = v9;
    if (v9 == @"cancel" || v9 && (v11 = [(__CFString *)v9 isEqualToString:@"cancel"], v10, v11))
    {
      v12 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
      [v12 setText:*(*(a1 + 32) + 24)];
      v13 = [v7 cancelInProgress];
      v14 = [v12 textProperties];
      if (v13)
      {
        v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v14 setColor:v15];

        [v6 setHidden:0];
        v16 = +[PKCellAccessoryLoadingIndicator accessory];
        v19[0] = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        [v6 setAccessories:v17];
      }

      else
      {
        v18 = [MEMORY[0x1E69DC888] systemRedColor];
        [v14 setColor:v18];

        [v6 setHidden:{objc_msgSend(v7, "cancelAutoReloadUnavailable")}];
        [v6 setAccessories:MEMORY[0x1E695E0F0]];
      }

      [v6 setContentConfiguration:v12];
    }
  }
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E69DC7E0];
  environmentCopy = environment;
  v7 = [[v5 alloc] initWithAppearance:2];
  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:environmentCopy];

  if (self->_useSetupMargins)
  {
    [v8 contentInsets];
    [v8 setContentInsets:PKSetupViewConstantsListSectionInset(v9)];
  }

  return v8;
}

@end