@interface PKTransactionSupportStatementNameSectionController
- (PKTransactionSupportStatementNameSectionController)initWithMerchantStatementName:(id)name;
- (id)_decorateListCell:(id)cell forRowItem:(id)item;
- (id)headerAttributedStringForIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
@end

@implementation PKTransactionSupportStatementNameSectionController

- (PKTransactionSupportStatementNameSectionController)initWithMerchantStatementName:(id)name
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = PKTransactionSupportStatementNameSectionController;
  v6 = [(PKPaymentSetupListSectionController *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_merchantStatementName, name);
    objc_initWeak(&location, v7);
    v8 = MEMORY[0x1E69DC800];
    v9 = objc_opt_class();
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __84__PKTransactionSupportStatementNameSectionController_initWithMerchantStatementName___block_invoke;
    v15 = &unk_1E8012088;
    objc_copyWeak(&v16, &location);
    v10 = [v8 registrationWithCellClass:v9 configurationHandler:&v12];
    [(PKPaymentSetupListSectionController *)v7 setCellRegistration:v10, v12, v13, v14, v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __84__PKTransactionSupportStatementNameSectionController_initWithMerchantStatementName___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained _decorateListCell:v9 forRowItem:v6];
  }
}

- (id)headerAttributedStringForIdentifier:(id)identifier
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = PKLocalizedPaymentString(&cfstr_TransactionDet_51.isa);
  localizedUppercaseString = [v3 localizedUppercaseString];

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11[0] = *MEMORY[0x1E69DB648];
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC70], 0, 0);
  v12[0] = v6;
  v11[1] = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v12[1] = secondaryLabelColor;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v5 initWithString:localizedUppercaseString attributes:v8];

  return v9;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v8[0] = self->_merchantStatementName;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 appendItems:v6];

  return v5;
}

- (id)_decorateListCell:(id)cell forRowItem:(id)item
{
  v5 = MEMORY[0x1E69DCC28];
  itemCopy = item;
  cellCopy = cell;
  valueCellConfiguration = [v5 valueCellConfiguration];
  [valueCellConfiguration setText:itemCopy];

  [cellCopy setContentConfiguration:valueCellConfiguration];

  return valueCellConfiguration;
}

@end