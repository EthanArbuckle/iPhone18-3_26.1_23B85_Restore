@interface PKApplySavingsInlineTermsRow
- (PKApplySavingsInlineTermsRow)initWithContent:(id)content delegate:(id)delegate;
- (void)configureCell:(id)cell;
- (void)didTapFooterLink:(id)link;
@end

@implementation PKApplySavingsInlineTermsRow

- (PKApplySavingsInlineTermsRow)initWithContent:(id)content delegate:(id)delegate
{
  contentCopy = content;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKApplySavingsInlineTermsRow;
  v9 = [(PKApplySavingsInlineTermsRow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_content, content);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  [(PKApplySavingsInlineTermsRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v5 = cellCopy;
    content = self->_content;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __46__PKApplySavingsInlineTermsRow_configureCell___block_invoke;
    v16 = &unk_1E80126D0;
    objc_copyWeak(&v17, &location);
    v7 = [PKTextRangeHyperlink hyperlinkSourcesFromApplyFooter:content linkTapped:&v13];
    v8 = [(PKApplyFooterContent *)self->_content footerText:v13];
    [v5 setText:v8];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v5 setTextColor:labelColor];

    [v5 setTextAlignment:4];
    v10 = PKTableViewCellTextInset();
    [v5 setEdgeInsets:{8.0, v10, 8.0, PKTableViewCellTextInset()}];
    [v5 setSources:v7];
    listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v12 = PKProvisioningSecondaryBackgroundColor();
    [listCellConfiguration setBackgroundColor:v12];

    [v5 setBackgroundConfiguration:listCellConfiguration];
    [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9D08]];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __46__PKApplySavingsInlineTermsRow_configureCell___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained didTapFooterLink:v5];
  }
}

- (void)didTapFooterLink:(id)link
{
  linkCopy = link;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained didTapFooterLink:linkCopy];
  }
}

@end