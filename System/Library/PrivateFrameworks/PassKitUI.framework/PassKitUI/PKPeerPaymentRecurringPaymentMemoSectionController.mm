@interface PKPeerPaymentRecurringPaymentMemoSectionController
- (PKPeerPaymentRecurringPaymentMemo)recurringPaymentMemo;
- (PKPeerPaymentRecurringPaymentMemoSectionController)initWithRecurringPaymentMemo:(id)memo contact:(id)contact delegate:(id)delegate;
- (id)cellRegistrationForItem:(id)item;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_reloadItemWithMemo:(id)memo animated:(BOOL)animated;
- (void)_resetItemWithMemo:(id)memo suggestedText:(id)text;
- (void)memoIconWasTapped;
- (void)memoTextWasUpdated:(id)updated;
- (void)requestBecomeFirstResponder;
- (void)setIsEditable:(BOOL)editable;
- (void)setMemoTextColor:(id)color;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
- (void)setRecurringPaymentMemo:(id)memo;
- (void)setRecurringPaymentMemoWithTextSuggestion:(id)suggestion;
@end

@implementation PKPeerPaymentRecurringPaymentMemoSectionController

- (PKPeerPaymentRecurringPaymentMemoSectionController)initWithRecurringPaymentMemo:(id)memo contact:(id)contact delegate:(id)delegate
{
  memoCopy = memo;
  contactCopy = contact;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = PKPeerPaymentRecurringPaymentMemoSectionController;
  v11 = [(PKPeerPaymentRecurringPaymentMemoSectionController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    memoTextColor = v12->_memoTextColor;
    v12->_memoTextColor = labelColor;

    v15 = PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsMemoSec.isa);
    [(PKDynamicListSectionController *)v12 setHeaderText:v15];

    givenName = [contactCopy givenName];
    if ([givenName length])
    {
      PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsMemoSec_0.isa, &stru_1F3BD5BF0.isa, givenName);
    }

    else
    {
      PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsMemoSec_1.isa);
    }
    v17 = ;
    [(PKDynamicListSectionController *)v12 setFooterText:v17];

    if (!memoCopy)
    {
      memoCopy = objc_alloc_init(MEMORY[0x1E69B8FE0]);
    }

    v18 = [memoCopy copy];
    [(PKPeerPaymentRecurringPaymentMemoSectionController *)v12 _reloadItemWithMemo:v18 animated:0];
  }

  return v12;
}

- (void)_resetItemWithMemo:(id)memo suggestedText:(id)text
{
  textCopy = text;
  memoCopy = memo;
  v8 = [[PKPeerPaymentRecurringPaymentMemoRowItem alloc] initWithIdentifier:@"memo" isEditable:self->_isEditable titleColor:self->_memoTextColor];
  item = self->_item;
  self->_item = v8;

  [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item setMemo:memoCopy];
  [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item setSuggestedText:textCopy];

  v10 = self->_item;
  overrideUserInterfaceStyle = self->_overrideUserInterfaceStyle;

  [(PKPeerPaymentRecurringPaymentMemoRowItem *)v10 setOverrideUserInterfaceStyle:overrideUserInterfaceStyle];
}

- (void)_reloadItemWithMemo:(id)memo animated:(BOOL)animated
{
  animatedCopy = animated;
  [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _resetItemWithMemo:memo suggestedText:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataAnimated:animatedCopy];
}

- (void)setRecurringPaymentMemo:(id)memo
{
  v4 = [memo copy];
  [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _resetItemWithMemo:v4 suggestedText:0];
}

- (void)setRecurringPaymentMemoWithTextSuggestion:(id)suggestion
{
  v7 = [suggestion copy];
  text = [v7 text];
  memo = [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item memo];
  text2 = [memo text];
  [v7 setText:text2];

  [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _resetItemWithMemo:v7 suggestedText:text];
}

- (PKPeerPaymentRecurringPaymentMemo)recurringPaymentMemo
{
  memo = [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item memo];
  v4 = [memo copy];

  suggestedText = [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item suggestedText];
  text = [v4 text];
  if ([text length])
  {
  }

  else
  {
    v7 = [suggestedText length];

    if (v7)
    {
      [v4 setText:suggestedText];
    }
  }

  return v4;
}

- (void)setIsEditable:(BOOL)editable
{
  if (self->_isEditable != editable)
  {
    self->_isEditable = editable;
    recurringPaymentMemo = [(PKPeerPaymentRecurringPaymentMemoSectionController *)self recurringPaymentMemo];
    [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _reloadItemWithMemo:recurringPaymentMemo animated:1];
  }
}

- (void)setMemoTextColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_memoTextColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_memoTextColor, color);
    recurringPaymentMemo = [(PKPeerPaymentRecurringPaymentMemoSectionController *)self recurringPaymentMemo];
    [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _reloadItemWithMemo:recurringPaymentMemo animated:1];
  }
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  if (self->_overrideUserInterfaceStyle != style)
  {
    self->_overrideUserInterfaceStyle = style;
    recurringPaymentMemo = [(PKPeerPaymentRecurringPaymentMemoSectionController *)self recurringPaymentMemo];
    [(PKPeerPaymentRecurringPaymentMemoSectionController *)self _reloadItemWithMemo:recurringPaymentMemo animated:1];
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

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v8[0] = self->_item;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 appendItems:v6];

  return v5;
}

- (id)cellRegistrationForItem:(id)item
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

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  v6 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  headerText = [(PKDynamicListSectionController *)self headerText];
  if (headerText)
  {
  }

  else
  {
    attributedHeaderText = [(PKDynamicListSectionController *)self attributedHeaderText];

    if (!attributedHeaderText)
    {
      goto LABEL_5;
    }
  }

  [v6 setHeaderMode:1];
LABEL_5:
  footerText = [(PKDynamicListSectionController *)self footerText];
  if (footerText)
  {
  }

  else
  {
    attributedFooterText = [(PKDynamicListSectionController *)self attributedFooterText];

    if (!attributedFooterText)
    {
      goto LABEL_9;
    }
  }

  [v6 setFooterMode:1];
LABEL_9:
  v12 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:environmentCopy];

  return v12;
}

- (void)memoIconWasTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained memoIconWasTapped];
}

- (void)memoTextWasUpdated:(id)updated
{
  item = self->_item;
  updatedCopy = updated;
  memo = [(PKPeerPaymentRecurringPaymentMemoRowItem *)item memo];
  [memo setText:updatedCopy];
}

@end