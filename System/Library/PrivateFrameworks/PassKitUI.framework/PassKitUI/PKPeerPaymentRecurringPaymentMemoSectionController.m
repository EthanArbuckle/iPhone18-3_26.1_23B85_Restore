@interface PKPeerPaymentRecurringPaymentMemoSectionController
- (PKPeerPaymentRecurringPaymentMemo)recurringPaymentMemo;
- (PKPeerPaymentRecurringPaymentMemoSectionController)initWithRecurringPaymentMemo:(id)a3 contact:(id)a4 delegate:(id)a5;
- (id)cellRegistrationForItem:(id)a3;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_reloadItemWithMemo:(id)a3 animated:(BOOL)a4;
- (void)_resetItemWithMemo:(id)a3 suggestedText:(id)a4;
- (void)memoIconWasTapped;
- (void)memoTextWasUpdated:(id)a3;
- (void)requestBecomeFirstResponder;
- (void)setIsEditable:(BOOL)a3;
- (void)setMemoTextColor:(id)a3;
- (void)setOverrideUserInterfaceStyle:(int64_t)a3;
- (void)setRecurringPaymentMemo:(id)a3;
- (void)setRecurringPaymentMemoWithTextSuggestion:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentMemoSectionController

- (PKPeerPaymentRecurringPaymentMemoSectionController)initWithRecurringPaymentMemo:(id)a3 contact:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PKPeerPaymentRecurringPaymentMemoSectionController;
  v11 = [(PKPeerPaymentRecurringPaymentMemoSectionController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v10);
    v13 = [MEMORY[0x1E69DC888] labelColor];
    memoTextColor = v12->_memoTextColor;
    v12->_memoTextColor = v13;

    v15 = PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsMemoSec.isa);
    [(PKDynamicListSectionController *)v12 setHeaderText:v15];

    v16 = [v9 givenName];
    if ([v16 length])
    {
      PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsMemoSec_0.isa, &stru_1F3BD5BF0.isa, v16);
    }

    else
    {
      PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsMemoSec_1.isa);
    }
    v17 = ;
    [(PKDynamicListSectionController *)v12 setFooterText:v17];

    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69B8FE0]);
    }

    v18 = [v8 copy];
    [(PKPeerPaymentRecurringPaymentMemoSectionController *)v12 _reloadItemWithMemo:v18 animated:0];
  }

  return v12;
}

- (void)_resetItemWithMemo:(id)a3 suggestedText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PKPeerPaymentRecurringPaymentMemoRowItem alloc] initWithIdentifier:@"memo" isEditable:self->_isEditable titleColor:self->_memoTextColor];
  item = self->_item;
  self->_item = v8;

  [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item setMemo:v7];
  [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item setSuggestedText:v6];

  v10 = self->_item;
  overrideUserInterfaceStyle = self->_overrideUserInterfaceStyle;

  [(PKPeerPaymentRecurringPaymentMemoRowItem *)v10 setOverrideUserInterfaceStyle:overrideUserInterfaceStyle];
}

- (void)_reloadItemWithMemo:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _resetItemWithMemo:a3 suggestedText:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataAnimated:v4];
}

- (void)setRecurringPaymentMemo:(id)a3
{
  v4 = [a3 copy];
  [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _resetItemWithMemo:v4 suggestedText:0];
}

- (void)setRecurringPaymentMemoWithTextSuggestion:(id)a3
{
  v7 = [a3 copy];
  v4 = [v7 text];
  v5 = [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item memo];
  v6 = [v5 text];
  [v7 setText:v6];

  [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _resetItemWithMemo:v7 suggestedText:v4];
}

- (PKPeerPaymentRecurringPaymentMemo)recurringPaymentMemo
{
  v3 = [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item memo];
  v4 = [v3 copy];

  v5 = [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item suggestedText];
  v6 = [v4 text];
  if ([v6 length])
  {
  }

  else
  {
    v7 = [v5 length];

    if (v7)
    {
      [v4 setText:v5];
    }
  }

  return v4;
}

- (void)setIsEditable:(BOOL)a3
{
  if (self->_isEditable != a3)
  {
    self->_isEditable = a3;
    v5 = [(PKPeerPaymentRecurringPaymentMemoSectionController *)self recurringPaymentMemo];
    [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _reloadItemWithMemo:v5 animated:1];
  }
}

- (void)setMemoTextColor:(id)a3
{
  v6 = a3;
  if (([(UIColor *)self->_memoTextColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_memoTextColor, a3);
    v5 = [(PKPeerPaymentRecurringPaymentMemoSectionController *)self recurringPaymentMemo];
    [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _reloadItemWithMemo:v5 animated:1];
  }
}

- (void)setOverrideUserInterfaceStyle:(int64_t)a3
{
  if (self->_overrideUserInterfaceStyle != a3)
  {
    self->_overrideUserInterfaceStyle = a3;
    v5 = [(PKPeerPaymentRecurringPaymentMemoSectionController *)self recurringPaymentMemo];
    [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _reloadItemWithMemo:v5 animated:1];
  }
}

- (void)requestBecomeFirstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained makeCellFirstResponderWithItem:self->_item];
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"memo";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v8[0] = self->_item;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 appendItems:v6];

  return v5;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = MEMORY[0x1E69DC800];
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PKPeerPaymentRecurringPaymentMemoSectionController_cellRegistrationForItem___block_invoke;
  v8[3] = &unk_1E8013248;
  v8[4] = self;
  v6 = [v4 registrationWithCellClass:v5 configurationHandler:v8];

  return v6;
}

void __78__PKPeerPaymentRecurringPaymentMemoSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  [v6 setItem:a4];
  [v6 setDelegate:*(a1 + 32)];
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v7];

  v8 = [(PKDynamicListSectionController *)self headerText];
  if (v8)
  {
  }

  else
  {
    v9 = [(PKDynamicListSectionController *)self attributedHeaderText];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  [v6 setHeaderMode:1];
LABEL_5:
  v10 = [(PKDynamicListSectionController *)self footerText];
  if (v10)
  {
  }

  else
  {
    v11 = [(PKDynamicListSectionController *)self attributedFooterText];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  [v6 setFooterMode:1];
LABEL_9:
  v12 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:v5];

  return v12;
}

- (void)memoIconWasTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained memoIconWasTapped];
}

- (void)memoTextWasUpdated:(id)a3
{
  item = self->_item;
  v4 = a3;
  v5 = [(PKPeerPaymentRecurringPaymentMemoRowItem *)item memo];
  [v5 setText:v4];
}

@end