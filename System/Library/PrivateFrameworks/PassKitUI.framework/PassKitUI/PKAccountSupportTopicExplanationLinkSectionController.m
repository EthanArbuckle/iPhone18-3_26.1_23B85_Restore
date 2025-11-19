@interface PKAccountSupportTopicExplanationLinkSectionController
- (PKAccountSupportTopicExplanationLinkSectionController)initWithLink:(id)a3 delegate:(id)a4;
- (id)_decorateListCell:(id)a3 forExplanationLink:(id)a4;
- (id)cellRegistrationForItem:(id)a3;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)didSelectItem:(id)a3;
@end

@implementation PKAccountSupportTopicExplanationLinkSectionController

- (PKAccountSupportTopicExplanationLinkSectionController)initWithLink:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKAccountSupportTopicExplanationLinkSectionController;
  v9 = [(PKPaymentSetupListSectionController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    if (v7)
    {
      if ([v8 shouldShowSupportLink:v7])
      {
        objc_storeStrong(&v10->_link, a3);
      }
    }
  }

  return v10;
}

- (void)didSelectItem:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectCells];

    v5 = v7;
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 openSupportLink:v5];
  }
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v6 = v5;
  if (self->_link)
  {
    v9[0] = self->_link;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 appendItems:v7];
  }

  else
  {
    [v5 appendItems:MEMORY[0x1E695E0F0]];
  }

  return v6;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC800];
  v6 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PKAccountSupportTopicExplanationLinkSectionController_cellRegistrationForItem___block_invoke;
  v9[3] = &unk_1E801ED08;
  objc_copyWeak(&v10, &location);
  v7 = [v5 registrationWithCellClass:v6 configurationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __81__PKAccountSupportTopicExplanationLinkSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _decorateListCell:v9 forExplanationLink:v6];
}

- (id)_decorateListCell:(id)a3 forExplanationLink:(id)a4
{
  v5 = MEMORY[0x1E69DCC28];
  v6 = a4;
  v7 = a3;
  v8 = [v5 valueCellConfiguration];
  v9 = [v6 text];

  [v8 setText:v9];
  v10 = [v8 textProperties];
  v11 = [MEMORY[0x1E69DC888] tintColor];
  [v10 setColor:v11];

  [v8 setDirectionalLayoutMargins:{12.0, 0.0, 12.0, 0.0}];
  [v7 setContentConfiguration:v8];

  return v8;
}

@end