@interface PKApplyMultilevelListPickerSectionController
- (PKApplyMultilevelListPickerSectionController)initWithController:(id)controller applyPage:(id)page picker:(id)picker;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
@end

@implementation PKApplyMultilevelListPickerSectionController

- (PKApplyMultilevelListPickerSectionController)initWithController:(id)controller applyPage:(id)page picker:(id)picker
{
  pickerCopy = picker;
  v13.receiver = self;
  v13.super_class = PKApplyMultilevelListPickerSectionController;
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
  v15[1] = *MEMORY[0x1E69E9840];
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
    v12 = [[PKApplyMultilevelPickerRow alloc] initWithPicker:self->_picker];
    v15[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v6 appendItems:v13];
  }

LABEL_9:

  return v6;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  v7 = [(PKApplyCollectionViewSectionController *)self listLayoutConfigurationWithLayoutEnvironment:environmentCopy sectionIdentifier:identifier];
  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:environmentCopy];

  [v8 contentInsets];
  v11 = v10;
  if (self->_isTopmostSection)
  {
    v12 = 7.0;
  }

  else
  {
    v12 = v9;
  }

  v13 = PKSetupListViewConstantsViewMargin();
  [v8 setContentInsets:{v12, v13, v11, v13}];

  return v8;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = itemCopy;
    v5 = [PKApplyFocusedPickerViewController alloc];
    picker = [v4 picker];

    v7 = [(PKApplyFocusedPickerViewController *)v5 initWithPicker:picker];
    dynamicCollectionDelegate = [(PKApplyCollectionViewSectionController *)self dynamicCollectionDelegate];
    [(PKApplyFocusedPickerViewController *)v7 setDynamicCollectionDelegate:dynamicCollectionDelegate];

    dynamicCollectionDelegate2 = [(PKApplyCollectionViewSectionController *)self dynamicCollectionDelegate];
    [dynamicCollectionDelegate2 pushViewController:v7 animated:1];
  }
}

@end