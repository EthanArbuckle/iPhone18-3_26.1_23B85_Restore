@interface PKPaymentSetupDevicePickerListSectionController
- (PKPaymentSetupDevicePickerListSectionController)initWithWebServices:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6;
- (PKPaymentSetupDevicePickerListSectionControllerDelegate)delegate;
- (id)decorateListCell:(id)a3 forRowItem:(id)a4;
- (id)defaultListLayout;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)didSelectItem:(id)a3;
@end

@implementation PKPaymentSetupDevicePickerListSectionController

- (PKPaymentSetupDevicePickerListSectionController)initWithWebServices:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = PKPaymentSetupDevicePickerListSectionController;
  v15 = [(PKPaymentSetupDevicePickerListSectionController *)&v27 init];
  v16 = v15;
  if (v15)
  {
    [(PKDynamicListSectionController *)v15 setIdentifiers:&unk_1F3CC8450];
    objc_storeStrong(&v16->_items, a3);
    objc_storeStrong(&v16->_title, a4);
    objc_storeStrong(&v16->_subtitle, a5);
    objc_storeStrong(&v16->_cardImage, a6);
    objc_initWeak(&location, v16);
    v17 = MEMORY[0x1E69DC800];
    v18 = objc_opt_class();
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __92__PKPaymentSetupDevicePickerListSectionController_initWithWebServices_title_subtitle_image___block_invoke;
    v24 = &unk_1E801A0F8;
    objc_copyWeak(&v25, &location);
    v19 = [v17 registrationWithCellClass:v18 configurationHandler:&v21];
    [(PKPaymentSetupDevicePickerListSectionController *)v16 setCellRegistration:v19, v21, v22, v23, v24];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __92__PKPaymentSetupDevicePickerListSectionController_initWithWebServices_title_subtitle_image___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decorateListCell:v9 forRowItem:v6];
  }
}

- (id)decorateListCell:(id)a3 forRowItem:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCC28];
  v6 = a4;
  v7 = a3;
  v8 = [v5 subtitleCellConfiguration];
  v9 = [v6 targetDevice];
  v10 = [v9 deviceDescriptionForPaymentWebService:v6];

  [v8 setText:v10];
  [v8 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  [v7 setContentConfiguration:v8];
  [v7 setConfigurationUpdateHandler:&__block_literal_global_118];
  v11 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
  v14[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v7 setAccessories:v12];

  return v8;
}

void __79__PKPaymentSetupDevicePickerListSectionController_decorateListCell_forRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v4 = MEMORY[0x1E69DC6E8];
  v5 = a2;
  v6 = [v4 listCellConfiguration];
  if ([v9 isHighlighted] & 1) != 0 || (objc_msgSend(v9, "isSelected"))
  {
    v7 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }

  else
  {
    v7 = PKProvisioningSecondaryBackgroundColor();
  }

  v8 = v7;
  [v6 setBackgroundColor:v7];

  [v5 setBackgroundConfiguration:v6];
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_items];

  return v5;
}

- (void)didSelectItem:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didSelectWebService:v5];
  }
}

- (id)defaultListLayout
{
  v2 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v3 = PKProvisioningBackgroundColor();
  [v2 setBackgroundColor:v3];

  return v2;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v5 = a3;
  v6 = [(PKPaymentSetupDevicePickerListSectionController *)self defaultListLayout];
  [v6 setHeaderMode:1];
  v7 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:v5];

  [v7 contentInsets];
  [v7 setContentInsets:PKSetupViewConstantsListSectionInset(v8)];

  return v7;
}

- (PKPaymentSetupDevicePickerListSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end