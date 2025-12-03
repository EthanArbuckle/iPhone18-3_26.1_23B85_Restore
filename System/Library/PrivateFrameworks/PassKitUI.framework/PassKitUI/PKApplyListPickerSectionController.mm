@interface PKApplyListPickerSectionController
- (PKApplyListPickerSectionController)initWithPicker:(id)picker;
- (id)headerAttributedStringForIdentifier:(id)identifier;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
@end

@implementation PKApplyListPickerSectionController

- (PKApplyListPickerSectionController)initWithPicker:(id)picker
{
  pickerCopy = picker;
  v9.receiver = self;
  v9.super_class = PKApplyListPickerSectionController;
  v6 = [(PKApplyCollectionViewSectionController *)&v9 initWithController:0 applyPage:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_picker, picker);
  }

  return v7;
}

- (id)identifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  identifier = [(PKPaymentSetupFieldPicker *)self->_picker identifier];
  v5[0] = identifier;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)headerAttributedStringForIdentifier:(id)identifier
{
  v20[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  localizedDescription = [(PKPaymentSetupFieldPicker *)self->_picker localizedDescription];
  uppercaseString = [localizedDescription uppercaseString];

  identifier = [(PKPaymentSetupFieldPicker *)self->_picker identifier];
  v8 = identifierCopy;
  v9 = identifier;
  v10 = v9;
  if (v9 == v8)
  {
  }

  else
  {
    if (!v8 || !v9)
    {

LABEL_10:
      goto LABEL_11;
    }

    v11 = [v8 isEqualToString:v9];

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  v12 = [uppercaseString length];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19[0] = *MEMORY[0x1E69DB648];
    v14 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC70], 0, 0);
    v20[0] = v14;
    v19[1] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v20[1] = secondaryLabelColor;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v17 = [v13 initWithString:uppercaseString attributes:v16];

    goto LABEL_12;
  }

LABEL_11:
  v17 = 0;
LABEL_12:

  return v17;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  identifier = [(PKPaymentSetupFieldPicker *)self->_picker identifier];
  v8 = identifierCopy;
  v9 = identifier;
  v10 = v9;
  if (v9 == v8)
  {

LABEL_7:
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [(PKPaymentSetupFieldPicker *)self->_picker pickerItems];
    v12 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [[PKApplyListPickerRow alloc] initWithPickerItem:v16];
          currentValue = [(PKPaymentSetupFieldPicker *)self->_picker currentValue];
          [(PKApplyListPickerRow *)v17 setSelected:currentValue == v16];

          v27 = v17;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
          [v6 appendItems:v19];
        }

        v13 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    v8 = v21;
    goto LABEL_16;
  }

  if (!v8 || !v9)
  {

    goto LABEL_16;
  }

  v11 = [v8 isEqualToString:v9];

  if (v11)
  {
    goto LABEL_7;
  }

LABEL_16:

  return v6;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  v7 = [(PKApplyCollectionViewSectionController *)self listLayoutConfigurationWithLayoutEnvironment:environmentCopy sectionIdentifier:identifier];
  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:environmentCopy];

  [v8 contentInsets];
  v10 = v9;
  v12 = v11;
  v13 = PKSetupListViewConstantsViewMargin();
  [v8 setContentInsets:{v10, v13, v12, v13}];

  return v8;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = itemCopy;
  if (isKindOfClass)
  {
    picker = self->_picker;
    pickerItem = [itemCopy pickerItem];
    [(PKPaymentSetupFieldPicker *)picker setCurrentValue:pickerItem];

    dynamicCollectionDelegate = [(PKApplyCollectionViewSectionController *)self dynamicCollectionDelegate];
    v9 = dynamicCollectionDelegate;
    if (dynamicCollectionDelegate)
    {
      [dynamicCollectionDelegate recomputeSectionsWithReload:1];
      identifier = [(PKPaymentSetupFieldPicker *)self->_picker identifier];
      [v9 reloadDataForSectionIdentifier:identifier animated:1];

      [v9 deselectCells];
      if (objc_opt_respondsToSelector())
      {
        [v9 didSelectCell];
      }
    }

    v5 = itemCopy;
  }
}

@end