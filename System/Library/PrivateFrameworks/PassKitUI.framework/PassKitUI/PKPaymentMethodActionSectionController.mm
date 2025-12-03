@interface PKPaymentMethodActionSectionController
- (BOOL)shouldHighlightItem:(id)item;
- (PKPaymentMethodActionSectionController)initWithDelegate:(id)delegate;
- (id)cellRegistrationForItem:(id)item;
- (id)identifiers;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
@end

@implementation PKPaymentMethodActionSectionController

- (PKPaymentMethodActionSectionController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PKPaymentMethodActionSectionController;
  v5 = [(PKPaymentMethodActionSectionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"actions";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)shouldHighlightItem:(id)item
{
  identifier = [item identifier];
  v5 = identifier;
  v7 = identifier != @"addPaymentMethod" && (!identifier || (v6 = [(__CFString *)identifier isEqualToString:@"addPaymentMethod"], v5, !v6)) || !self->_addInProgress;

  return v7;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = identifier;
  if (identifier == @"addPaymentMethod" || identifier && (v7 = [(__CFString *)identifier isEqualToString:@"addPaymentMethod"], v6, v7))
  {
    self->_addInProgress = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectCells];

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 reloadDataAnimated:1];

    objc_initWeak(&location, self);
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PKPaymentMethodActionSectionController_didSelectItem___block_invoke;
    v11[3] = &unk_1E8010998;
    objc_copyWeak(&v12, &location);
    [v10 performedAddPaymentMethodWithCompletion:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __56__PKPaymentMethodActionSectionController_didSelectItem___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKPaymentMethodActionSectionController_didSelectItem___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __56__PKPaymentMethodActionSectionController_didSelectItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 72) = 0;
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 8);
    [v2 reloadDataAnimated:1];

    WeakRetained = v3;
  }
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v4 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [[PKPaymentMethodSelectionItem alloc] initWithIdentifier:@"addPaymentMethod"];
  [v5 addObject:v6];

  v7 = [v5 copy];
  [v4 appendItems:v7];

  return v4;
}

- (id)cellRegistrationForItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  v5 = objc_opt_class();
  v6 = MEMORY[0x1E69DC800];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKPaymentMethodActionSectionController_cellRegistrationForItem___block_invoke;
  v9[3] = &unk_1E801A9D8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v7 = [v6 registrationWithCellClass:v5 configurationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __66__PKPaymentMethodActionSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = [v7 identifier];
    v10 = v9;
    if (v9 != @"addPaymentMethod")
    {
      if (!v9 || (v11 = [(__CFString *)v9 isEqualToString:@"addPaymentMethod"], v10, !v11))
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    v12 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    v13 = PKLocalizedPaymentString(&cfstr_AutoReloadAddP.isa);
    [v12 setText:v13];

    v14 = [v12 textProperties];
    v15 = v14;
    v16 = *(a1 + 32);
    if (*(v16 + 72))
    {
      v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      if (*(v16 + 80))
      {
        [v14 setColor:?];
LABEL_11:

        [v6 setContentConfiguration:v12];
        if (*(*(a1 + 32) + 72) == 1)
        {
          v19 = +[PKCellAccessoryLoadingIndicator accessory];
          v21[0] = v19;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
          [v6 setAccessories:v20];
        }

        else
        {
          [v6 setAccessories:MEMORY[0x1E695E0F0]];
        }

        goto LABEL_15;
      }

      v17 = [MEMORY[0x1E69DC888] linkColor];
    }

    v18 = v17;
    [v15 setColor:v17];

    goto LABEL_11;
  }

LABEL_16:
}

@end