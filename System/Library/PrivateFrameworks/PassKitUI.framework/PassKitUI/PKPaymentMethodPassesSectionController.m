@interface PKPaymentMethodPassesSectionController
- (PKPaymentMethodPassesSectionController)initWithDelegate:(id)a3 request:(id)a4 selectedPass:(id)a5;
- (id)cellRegistrationForItem:(id)a3;
- (id)identifiers;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)didSelectItem:(id)a3;
@end

@implementation PKPaymentMethodPassesSectionController

- (PKPaymentMethodPassesSectionController)initWithDelegate:(id)a3 request:(id)a4 selectedPass:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PKPaymentMethodPassesSectionController;
  v11 = [(PKPaymentMethodPassesSectionController *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeStrong(&v12->_request, a4);
    objc_storeStrong(&v12->_selectedPass, a5);
    v13 = PKLocalizedPaymentString(&cfstr_PaymentMethodP.isa);
    [(PKDynamicListSectionController *)v12 setHeaderText:v13];
  }

  return v12;
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"passes";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)didSelectItem:(id)a3
{
  v4 = [a3 paymentPass];
  selectedPass = self->_selectedPass;
  self->_selectedPass = v4;
  v6 = v4;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataAnimated:1];

  v8 = objc_loadWeakRetained(&self->_delegate);
  [v8 selectedPass:v6];
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v5 = [MEMORY[0x1E69B8A58] sharedInstance];
  v6 = [v5 _sortedPaymentPassesForPaymentRequest:self->_request];
  passes = self->_passes;
  self->_passes = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_passes;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [PKPaymentMethodSelectionItem alloc];
        v15 = [v13 uniqueID];
        v16 = [(PKPaymentMethodSelectionItem *)v14 initWithIdentifier:v15];

        [(PKPaymentMethodSelectionItem *)v16 setPaymentPass:v13];
        v17 = [(PKPaymentPass *)self->_selectedPass uniqueID];
        v18 = [v13 uniqueID];
        v19 = v17;
        v20 = v18;
        v21 = v20;
        if (v19 == v20)
        {
          v23 = 1;
        }

        else
        {
          if (v19)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = [v19 isEqualToString:v20];
          }
        }

        [(PKPaymentMethodSelectionItem *)v16 setSelected:v23];
        [v8 addObject:v16];
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  v24 = [v8 copy];
  [v26 appendItems:v24];

  return v26;
}

- (id)cellRegistrationForItem:(id)a3
{
  v3 = MEMORY[0x1E69DC800];
  v4 = objc_opt_class();

  return [v3 registrationWithCellClass:v4 configurationHandler:&__block_literal_global_274];
}

@end