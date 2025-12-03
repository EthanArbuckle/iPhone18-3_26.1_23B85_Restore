@interface PKPaymentMethodPassesSectionController
- (PKPaymentMethodPassesSectionController)initWithDelegate:(id)delegate request:(id)request selectedPass:(id)pass;
- (id)cellRegistrationForItem:(id)item;
- (id)identifiers;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
@end

@implementation PKPaymentMethodPassesSectionController

- (PKPaymentMethodPassesSectionController)initWithDelegate:(id)delegate request:(id)request selectedPass:(id)pass
{
  delegateCopy = delegate;
  requestCopy = request;
  passCopy = pass;
  v15.receiver = self;
  v15.super_class = PKPaymentMethodPassesSectionController;
  v11 = [(PKPaymentMethodPassesSectionController *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v12->_selectedPass, pass);
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

- (void)didSelectItem:(id)item
{
  paymentPass = [item paymentPass];
  selectedPass = self->_selectedPass;
  self->_selectedPass = paymentPass;
  v6 = paymentPass;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataAnimated:1];

  v8 = objc_loadWeakRetained(&self->_delegate);
  [v8 selectedPass:v6];
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
  v6 = [mEMORY[0x1E69B8A58] _sortedPaymentPassesForPaymentRequest:self->_request];
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
        uniqueID = [v13 uniqueID];
        v16 = [(PKPaymentMethodSelectionItem *)v14 initWithIdentifier:uniqueID];

        [(PKPaymentMethodSelectionItem *)v16 setPaymentPass:v13];
        uniqueID2 = [(PKPaymentPass *)self->_selectedPass uniqueID];
        uniqueID3 = [v13 uniqueID];
        v19 = uniqueID2;
        v20 = uniqueID3;
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

- (id)cellRegistrationForItem:(id)item
{
  v3 = MEMORY[0x1E69DC800];
  v4 = objc_opt_class();

  return [v3 registrationWithCellClass:v4 configurationHandler:&__block_literal_global_274];
}

@end