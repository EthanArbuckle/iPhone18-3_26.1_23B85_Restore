@interface PKApplyMultilevelListPickerSectionController
- (PKApplyMultilevelListPickerSectionController)initWithController:(id)a3 applyPage:(id)a4 picker:(id)a5;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)didSelectItem:(id)a3;
@end

@implementation PKApplyMultilevelListPickerSectionController

- (PKApplyMultilevelListPickerSectionController)initWithController:(id)a3 applyPage:(id)a4 picker:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PKApplyMultilevelListPickerSectionController;
  v10 = [(PKApplyCollectionViewSectionController *)&v13 initWithController:a3 applyPage:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_picker, a5);
  }

  return v11;
}

- (id)identifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(PKPaymentSetupFieldPicker *)self->_picker identifier];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v7 = [(PKPaymentSetupFieldPicker *)self->_picker identifier];
  v8 = v5;
  v9 = v7;
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

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(PKApplyCollectionViewSectionController *)self listLayoutConfigurationWithLayoutEnvironment:v6 sectionIdentifier:a4];
  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:v6];

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

- (void)didSelectItem:(id)a3
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v10;
    v5 = [PKApplyFocusedPickerViewController alloc];
    v6 = [v4 picker];

    v7 = [(PKApplyFocusedPickerViewController *)v5 initWithPicker:v6];
    v8 = [(PKApplyCollectionViewSectionController *)self dynamicCollectionDelegate];
    [(PKApplyFocusedPickerViewController *)v7 setDynamicCollectionDelegate:v8];

    v9 = [(PKApplyCollectionViewSectionController *)self dynamicCollectionDelegate];
    [v9 pushViewController:v7 animated:1];
  }
}

@end