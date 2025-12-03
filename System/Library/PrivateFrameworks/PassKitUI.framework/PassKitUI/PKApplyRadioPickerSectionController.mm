@interface PKApplyRadioPickerSectionController
- (PKApplyRadioPickerSectionController)initWithController:(id)controller applyPage:(id)page picker:(id)picker;
- (id)identifiers;
- (id)listLayoutConfigurationWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_configureContentSection:(id)section;
@end

@implementation PKApplyRadioPickerSectionController

- (PKApplyRadioPickerSectionController)initWithController:(id)controller applyPage:(id)page picker:(id)picker
{
  pickerCopy = picker;
  v13.receiver = self;
  v13.super_class = PKApplyRadioPickerSectionController;
  v10 = [(PKApplyCollectionViewSectionController *)&v13 initWithController:controller applyPage:page];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_picker, picker);
  }

  return v11;
}

- (id)identifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  identifier = [(PKPaymentSetupFieldPicker *)self->_picker identifier];
  v5[0] = identifier;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  identifier = [(PKPaymentSetupFieldPicker *)self->_picker identifier];
  v8 = identifierCopy;
  v9 = identifier;
  v10 = v9;
  if (v9 == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !v9)
  {

    goto LABEL_9;
  }

  v11 = [v8 isEqualToString:v9];

  if (v11)
  {
LABEL_7:
    [(PKApplyRadioPickerSectionController *)self _configureContentSection:v6];
  }

LABEL_9:

  return v6;
}

- (id)listLayoutConfigurationWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = PKApplyRadioPickerSectionController;
  v4 = [(PKApplyCollectionViewSectionController *)&v6 listLayoutConfigurationWithLayoutEnvironment:environment sectionIdentifier:identifier];
  [v4 setItemSeparatorHandler:&__block_literal_global_22];

  return v4;
}

id __102__PKApplyRadioPickerSectionController_listLayoutConfigurationWithLayoutEnvironment_sectionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (![a2 row])
  {
    [v4 setBottomSeparatorVisibility:2];
  }

  return v4;
}

- (void)_configureContentSection:(id)section
{
  v32[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v4 = [PKApplyRadioPickerTitleRow alloc];
  localizedDisplayName = [(PKPaymentSetupFieldPicker *)self->_picker localizedDisplayName];
  v6 = [(PKApplyRadioPickerTitleRow *)v4 initWithTitle:localizedDisplayName];

  v20 = v6;
  v32[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [sectionCopy appendItems:v7];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(PKPaymentSetupFieldPicker *)self->_picker pickerItems];
  v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [PKApplyRadioPickerRow alloc];
        localizedDisplayName2 = [v11 localizedDisplayName];
        submissionValue = [v11 submissionValue];
        v15 = [(PKApplyRadioPickerRow *)v12 initWithTitle:localizedDisplayName2 submissionValue:submissionValue];

        currentValue = [(PKPaymentSetupFieldPicker *)self->_picker currentValue];
        submissionValue2 = [currentValue submissionValue];
        submissionValue3 = [v11 submissionValue];
        [(PKApplyRadioPickerRow *)v15 setSelected:PKEqualObjects()];

        objc_initWeak(&location, self);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __64__PKApplyRadioPickerSectionController__configureContentSection___block_invoke;
        v23[3] = &unk_1E80110E0;
        objc_copyWeak(&v24, &location);
        v23[4] = v11;
        [(PKApplyRadioPickerRow *)v15 setAction:v23];
        v30 = v15;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [sectionCopy appendItems:v19];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }
}

void __64__PKApplyRadioPickerSectionController__configureContentSection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = WeakRetained[11];
    [v3 setCurrentValue:*(a1 + 32)];
    v4 = [v7 dynamicCollectionDelegate];
    v5 = v4;
    if (v4)
    {
      [v4 recomputeSectionsWithReload:1];
      v6 = [v3 identifier];
      [v5 reloadDataForSectionIdentifier:v6 animated:1];
    }

    WeakRetained = v7;
  }
}

@end