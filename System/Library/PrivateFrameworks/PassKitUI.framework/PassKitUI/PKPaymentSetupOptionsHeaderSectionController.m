@interface PKPaymentSetupOptionsHeaderSectionController
- (PKPaymentSetupOptionsHeaderSectionController)init;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
@end

@implementation PKPaymentSetupOptionsHeaderSectionController

- (PKPaymentSetupOptionsHeaderSectionController)init
{
  v15.receiver = self;
  v15.super_class = PKPaymentSetupOptionsHeaderSectionController;
  v2 = [(PKPaymentSetupListSectionController *)&v15 initWithIdentifiers:&unk_1F3CC84C8];
  if (v2)
  {
    v3 = objc_alloc_init(PKPaymentSetupListItem);
    item = v2->_item;
    v2->_item = v3;

    objc_initWeak(&location, v2);
    v5 = MEMORY[0x1E69DC800];
    v6 = objc_opt_class();
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __52__PKPaymentSetupOptionsHeaderSectionController_init__block_invoke;
    v12 = &unk_1E801CF78;
    objc_copyWeak(&v13, &location);
    v7 = [v5 registrationWithCellClass:v6 configurationHandler:&v9];
    [(PKPaymentSetupListSectionController *)v2 setCellRegistration:v7, v9, v10, v11, v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __52__PKPaymentSetupOptionsHeaderSectionController_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [v5 setHeaderView:*(WeakRetained + 10)];
  }
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if (!self->_hidden)
  {
    v8[0] = self->_item;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v5 appendItems:v6];
  }

  return v5;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v4 = MEMORY[0x1E69DC7E0];
  v5 = a3;
  v6 = [[v4 alloc] initWithAppearance:0];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setShowsSeparators:0];
  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:v5];

  [v8 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];

  return v8;
}

@end