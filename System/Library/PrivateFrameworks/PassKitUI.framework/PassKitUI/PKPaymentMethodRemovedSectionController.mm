@interface PKPaymentMethodRemovedSectionController
- (PKPaymentMethodRemovedSectionController)initWithPaymentMethodName:(id)name paymentMethodIdentifier:(id)identifier;
- (id)cellRegistrationForItem:(id)item;
- (id)identifiers;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
@end

@implementation PKPaymentMethodRemovedSectionController

- (PKPaymentMethodRemovedSectionController)initWithPaymentMethodName:(id)name paymentMethodIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = PKPaymentMethodRemovedSectionController;
  v9 = [(PKPaymentMethodRemovedSectionController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_removedPaymentMethodName, name);
    objc_storeStrong(&v10->_removedPaymentMethodIdentifier, identifier);
    v11 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_3.isa);
    pk_uppercaseStringForPreferredLocale = [v11 pk_uppercaseStringForPreferredLocale];
    [(PKDynamicListSectionController *)v10 setHeaderText:pk_uppercaseStringForPreferredLocale];
  }

  return v10;
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"removedpass";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if (self->_removedPaymentMethodName && self->_removedPaymentMethodIdentifier)
  {
    v6 = [[PKPaymentMethodSelectionItem alloc] initWithIdentifier:self->_removedPaymentMethodIdentifier];
    [(PKPaymentMethodSelectionItem *)v6 setPaymentMethodName:self->_removedPaymentMethodName];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v5 appendItems:v7];
  }

  return v5;
}

- (id)cellRegistrationForItem:(id)item
{
  v3 = MEMORY[0x1E69DC800];
  v4 = objc_opt_class();

  return [v3 registrationWithCellClass:v4 configurationHandler:&__block_literal_global_289];
}

@end