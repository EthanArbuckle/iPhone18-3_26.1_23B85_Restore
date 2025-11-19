@interface PKPeerPaymentRecurringPaymentMemoCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldClear:(id)a3;
- (CGSize)_layoutWithBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPeerPaymentRecurringPaymentMemoCell)initWithFrame:(CGRect)a3;
- (PKPeerPaymentRecurringPaymentMemoCellDelegate)delegate;
- (void)layoutSubviews;
- (void)setItem:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentMemoCell

- (PKPeerPaymentRecurringPaymentMemoCell)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = PKPeerPaymentRecurringPaymentMemoCell;
  v3 = [(PKPeerPaymentRecurringPaymentMemoCell *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v4 = MEMORY[0x1E69DC738];
    v5 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v6 = MEMORY[0x1E69DC628];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __55__PKPeerPaymentRecurringPaymentMemoCell_initWithFrame___block_invoke;
    v20 = &unk_1E8010A60;
    objc_copyWeak(&v21, &location);
    v7 = [v6 actionWithHandler:&v17];
    v8 = [v4 buttonWithConfiguration:v5 primaryAction:{v7, v17, v18, v19, v20}];
    iconButton = v3->_iconButton;
    v3->_iconButton = v8;

    v10 = [(PKPeerPaymentRecurringPaymentMemoCell *)v3 contentView];
    [v10 addSubview:v3->_iconButton];

    v11 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    textField = v3->_textField;
    v3->_textField = v11;

    [(UITextField *)v3->_textField setDelegate:v3];
    [(UITextField *)v3->_textField setClearButtonMode:1];
    [(UITextField *)v3->_textField setReturnKeyType:9];
    v13 = v3->_textField;
    v14 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
    [(UITextField *)v13 setFont:v14];

    [(UITextField *)v3->_textField setAccessibilityIdentifier:*MEMORY[0x1E69B9938]];
    v15 = [(PKPeerPaymentRecurringPaymentMemoCell *)v3 contentView];
    [v15 addSubview:v3->_textField];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __55__PKPeerPaymentRecurringPaymentMemoCell_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[111] resignFirstResponder];
    v2 = objc_loadWeakRetained(v3 + 113);
    [v2 memoIconWasTapped];

    WeakRetained = v3;
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKPeerPaymentRecurringPaymentMemoCell;
  [(PKPeerPaymentRecurringPaymentMemoCell *)&v12 layoutSubviews];
  v3 = [(PKPeerPaymentRecurringPaymentMemoCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKPeerPaymentRecurringPaymentMemoCell *)self _layoutWithBounds:v5, v7, v9, v11];
}

- (CGSize)_layoutWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (_UISolariumFeatureFlagEnabled())
  {
    v8 = 38.0;
  }

  else
  {
    v8 = 45.0;
  }

  [(UITextField *)self->_textField sizeThatFits:width, height];
  v10 = v9 + 16.0;
  if ([(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item hasIcon]|| [(PKPeerPaymentRecurringPaymentDetailRowItem *)self->_item isEditable])
  {
    v11 = 1;
LABEL_7:
    v12 = fmax(fmax(v10, v8 + 16.0), 68.0);
    goto LABEL_8;
  }

  v11 = 0;
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = fmax(v10, 52.0);
LABEL_8:
  memset(&slice, 0, sizeof(slice));
  if ([(PKPeerPaymentRecurringPaymentMemoCell *)self _shouldReverseLayoutDirection])
  {
    v13 = 2;
  }

  else
  {
    v13 = 0x200000000;
  }

  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = v12;
  if (_UISolariumFeatureFlagEnabled())
  {
    v14 = 20.0;
  }

  else
  {
    v14 = 16.0;
  }

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = v12;
  CGRectDivide(v26, &slice, &v23, 8.0, CGRectMinYEdge);
  CGRectDivide(v23, &slice, &v23, 8.0, CGRectMaxYEdge);
  CGRectDivide(v23, &slice, &v23, v14, v13);
  CGRectDivide(v23, &slice, &v23, v14, HIDWORD(v13));
  if (v11)
  {
    CGRectDivide(v23, &slice, &v23, v8, CGRectMinXEdge);
    iconButton = self->_iconButton;
    PKSizeAlignedInRect();
    [(UIButton *)iconButton setFrame:?];
    emojiLabel = self->_emojiLabel;
    [(UIButton *)self->_iconButton bounds];
    [(UILabel *)emojiLabel setFrame:?];
  }

  [(UIButton *)self->_iconButton setHidden:v11 ^ 1u, *&v23.origin.x, *&v23.origin.y, *&v23.size.width, *&v23.size.height, *&slice.origin.x, *&slice.origin.y, *&slice.size.width, *&slice.size.height];
  [(UILabel *)self->_emojiLabel setHidden:v11 ^ 1u];
  if (-[PKPeerPaymentRecurringPaymentDetailRowItem isEditable](self->_item, "isEditable") || ((-[PKPeerPaymentRecurringPaymentMemoRowItem memo](self->_item, "memo"), v17 = objc_claimAutoreleasedReturnValue(), [v17 text], v18 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v18, "length")) ? (v19 = v11) : (v19 = 0), v18, v17, (v19 & 1) == 0))
  {
    if (v11)
    {
      CGRectDivide(v23, &slice, &v23, v14, CGRectMinXEdge);
    }

    [(UITextField *)self->_textField setFrame:v23.origin.x, v23.origin.y, v23.size.width, v23.size.height];
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  [(UITextField *)self->_textField setHidden:v20];
  v21 = width;
  v22 = v12;
  result.height = v22;
  result.width = v21;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKPeerPaymentRecurringPaymentMemoCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setItem:(id)a3
{
  v35 = a3;
  objc_storeStrong(&self->_item, a3);
  v5 = [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item memo];
  v6 = [(UIButton *)self->_iconButton configuration];
  v7 = [v6 background];
  if (_UISolariumFeatureFlagEnabled())
  {
    v8 = 10.0;
  }

  else
  {
    v8 = 6.0;
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v9 = 38.0;
  }

  else
  {
    v9 = 45.0;
  }

  [v7 setCornerRadius:v8];
  if ([(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item hasIcon])
  {
    [v7 setImage:0];
    v10 = PKPeerPaymentMessageColorFromSemanticColor([v5 color]);
    [v7 setBackgroundColor:v10];

    if (!self->_emojiLabel)
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      emojiLabel = self->_emojiLabel;
      self->_emojiLabel = v11;

      [(UILabel *)self->_emojiLabel setTextAlignment:1];
      v13 = self->_emojiLabel;
      v14 = [MEMORY[0x1E69DB878] systemFontOfSize:v9 * 0.55];
      [(UILabel *)v13 setFont:v14];

      [(UIButton *)self->_iconButton addSubview:self->_emojiLabel];
    }
  }

  else
  {
    v15 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v9 * 0.6];
    v16 = MEMORY[0x1E69DCAD8];
    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v18 = [v16 configurationWithHierarchicalColor:v17];
    v19 = [v15 configurationByApplyingConfiguration:v18];

    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus" withConfiguration:v19];
    [v7 setImage:v20];
    [v7 setImageContentMode:4];
    v21 = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    [v7 setBackgroundColor:v21];
  }

  [(UIButton *)self->_iconButton setConfiguration:v6];
  v22 = self->_emojiLabel;
  v23 = [v5 emoji];
  [(UILabel *)v22 setText:v23];

  v24 = [v5 text];
  v25 = [v24 length];

  textField = self->_textField;
  if (v25)
  {
    [v5 text];
  }

  else
  {
    [(PKPeerPaymentRecurringPaymentMemoRowItem *)self->_item suggestedText];
  }
  v27 = ;
  [(UITextField *)textField setText:v27];

  v28 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)self->_item isEditable];
  [(UIButton *)self->_iconButton setUserInteractionEnabled:v28];
  [(UITextField *)self->_textField setUserInteractionEnabled:v28];
  if (v28)
  {
    v29 = @"DETAILS_MEMO_TEXT_PLACEHOLDER_EDITING";
  }

  else
  {
    v29 = @"DETAILS_MEMO_TEXT_PLACEHOLDER_NOT_EDITING";
  }

  v30 = self->_textField;
  v31 = PKLocalizedPeerPaymentRecurringString(&v29->isa);
  [(UITextField *)v30 setPlaceholder:v31];

  if ([v35 overrideUserInterfaceStyle] == 2)
  {
    v32 = +[PKPeerPaymentTheme primaryTextColor];
  }

  else
  {
    v32 = 0;
  }

  [(UITextField *)self->_textField setTintColor:v32];
  v33 = self->_textField;
  v34 = [v35 titleColor];
  [(UITextField *)v33 setTextColor:v34];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  v12 = [v11 length];
  if (v12 <= 0x24)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained memoTextWasUpdated:v11];
  }

  return v12 < 0x25;
}

- (BOOL)textFieldShouldClear:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained memoTextWasUpdated:0];

  return 1;
}

- (PKPeerPaymentRecurringPaymentMemoCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end