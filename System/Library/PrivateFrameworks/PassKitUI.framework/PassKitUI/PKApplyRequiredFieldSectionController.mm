@interface PKApplyRequiredFieldSectionController
- (PKApplyRequiredFieldSectionController)initWithController:(id)controller applyPage:(id)page field:(id)field;
- (id)headerAttributedStringForIdentifier:(id)identifier;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
- (void)textFieldDidChangeSelection:(id)selection forListCell:(id)cell;
@end

@implementation PKApplyRequiredFieldSectionController

- (PKApplyRequiredFieldSectionController)initWithController:(id)controller applyPage:(id)page field:(id)field
{
  v17[1] = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  v16.receiver = self;
  v16.super_class = PKApplyRequiredFieldSectionController;
  v10 = [(PKApplyCollectionViewSectionController *)&v16 initWithController:controller applyPage:page];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_field, field);
    v12 = [[PKApplyRequiredFieldRow alloc] initWithField:v11->_field cellDelegate:v11];
    v17[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    items = v11->_items;
    v11->_items = v13;
  }

  return v11;
}

- (id)identifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  identifier = [(PKPaymentSetupField *)self->_field identifier];
  v5[0] = identifier;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)headerAttributedStringForIdentifier:(id)identifier
{
  v20[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  localizedDisplayName = [(PKPaymentSetupField *)self->_field localizedDisplayName];
  uppercaseString = [localizedDisplayName uppercaseString];

  identifier = [(PKPaymentSetupField *)self->_field identifier];
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
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  identifier = [(PKPaymentSetupField *)self->_field identifier];
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
    [v6 appendItems:self->_items];
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
  if (objc_opt_isKindOfClass())
  {
    dynamicCollectionDelegate = [(PKApplyCollectionViewSectionController *)self dynamicCollectionDelegate];
    v5 = [dynamicCollectionDelegate cellForItem:itemCopy];

    [v5 beginEditing];
  }
}

- (void)textFieldDidChangeSelection:(id)selection forListCell:(id)cell
{
  text = [selection text];
  [(PKPaymentSetupField *)self->_field setCurrentValue:?];
  if (([(PKPaymentSetupField *)self->_field submissionStringMeetsAllRequirements]& 1) == 0)
  {
    [(PKPaymentSetupField *)self->_field setCurrentValue:0];
  }

  dynamicCollectionDelegate = [(PKApplyCollectionViewSectionController *)self dynamicCollectionDelegate];
  [dynamicCollectionDelegate recomputeSectionsWithReload:0];
}

@end