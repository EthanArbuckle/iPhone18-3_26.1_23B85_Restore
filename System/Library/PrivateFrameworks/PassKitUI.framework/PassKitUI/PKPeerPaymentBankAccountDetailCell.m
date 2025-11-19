@interface PKPeerPaymentBankAccountDetailCell
- (CGRect)_separatorFrame;
- (CGSize)_layoutSubviewsInBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPeerPaymentBankAccountDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setMinimumTextLabelWidth:(double)a3;
@end

@implementation PKPeerPaymentBankAccountDetailCell

- (PKPeerPaymentBankAccountDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v33.receiver = self;
  v33.super_class = PKPeerPaymentBankAccountDetailCell;
  v4 = [(PKPeerPaymentBankAccountDetailCell *)&v33 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
    referenceConfiguration = v4->_referenceConfiguration;
    v4->_referenceConfiguration = v5;

    [(PKPeerPaymentBankAccountDetailCell *)v4 setPreservesSuperviewLayoutMargins:0];
    [(PKPeerPaymentBankAccountDetailCell *)v4 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(PKPeerPaymentBankAccountDetailCell *)v4 setSelectionStyle:0];
    v7 = PKProvisioningSecondaryBackgroundColor();
    [(PKPeerPaymentBankAccountDetailCell *)v4 setBackgroundColor:v7];

    v8 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    v9 = *MEMORY[0x1E69DDCF8];
    v10 = *MEMORY[0x1E69DDC50];
    v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC50], 2, 0);
    [v8 setFont:v11];

    v12 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [v12 setMinimumScaleFactor:0.7];

    v13 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [v13 setBaselineAdjustment:1];

    v14 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [v14 setAdjustsFontSizeToFitWidth:1];

    v15 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [v15 setText:0];

    v16 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [v16 setNumberOfLines:0];

    v17 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [v17 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

    v18 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [v18 setText:0];

    v19 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [v19 setSecureTextEntry:1];

    v20 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [v20 setDisplaySecureTextUsingPlainText:1];

    v21 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    v22 = PKFontForDefaultDesign(v9, v10);
    [v21 setFont:v22];

    v23 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [v23 setAdjustsFontSizeToFitWidth:0];

    v24 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    v25 = PKLocalizedPaymentString(&cfstr_Required.isa);
    [v24 setPlaceholder:v25];

    v26 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [v26 setClearButtonMode:1];

    v27 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [v27 setAutocorrectionType:1];

    v28 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [v28 setAutocapitalizationType:1];

    v29 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [v29 setKeyboardType:11];

    v30 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [v30 setInputView:0];

    v31 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [v31 pkui_attachDoneToolbarWithAdditionalItems:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKPeerPaymentBankAccountDetailCell;
  [(PKPeerPaymentBankAccountDetailCell *)&v12 layoutSubviews];
  v3 = [(PKPeerPaymentBankAccountDetailCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKPeerPaymentBankAccountDetailCell *)self _layoutSubviewsInBounds:0 isTemplateLayout:v5, v7, v9, v11];
}

- (CGSize)_layoutSubviewsInBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(PKPeerPaymentBankAccountDetailCell *)self textLabel];
  v11 = [(PKPeerPaymentBankAccountDetailCell *)self editableTextField];
  if (v11)
  {
    v12 = [(PKPeerPaymentBankAccountDetailCell *)self _shouldReverseLayoutDirection];
    [(UIListContentConfiguration *)self->_referenceConfiguration directionalLayoutMargins];
    if (v12)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    v18 = x + v17;
    v19 = y + v13;
    v41 = width;
    v20 = width - (v16 + v14);
    v21 = v13 + v15;
    v22 = height - v21;
    v40 = v21 + 0.0;
    minimumTextLabelWidth = self->_minimumTextLabelWidth;
    memset(&slice, 0, sizeof(slice));
    remainder.origin.x = x + v17;
    remainder.origin.y = v19;
    remainder.size.width = v20;
    remainder.size.height = height - v21;
    if (minimumTextLabelWidth <= v20 + -122.0)
    {
      if (v12)
      {
        v31 = CGRectMaxXEdge;
      }

      else
      {
        v31 = CGRectMinXEdge;
      }

      [v10 sizeThatFits:{v20 + -122.0, 3.40282347e38}];
      v33 = v32;
      v35 = fmax(v34, self->_minimumTextLabelWidth);
      v49.origin.x = v18;
      v49.origin.y = v19;
      v49.size.width = v20;
      v49.size.height = v22;
      CGRectDivide(v49, &slice, &remainder, v35, v31);
      if (a4)
      {
        CGRectDivide(remainder, &slice, &remainder, 22.0, v31);
      }

      else
      {
        [v10 setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
        CGRectDivide(remainder, &slice, &remainder, 22.0, v31);
        [v11 setFrame:{remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height}];
      }

      width = v41;
      v30 = v40 + v33;
    }

    else
    {
      v39 = height;
      v45.origin.x = x + v17;
      v45.origin.y = v19;
      v45.size.width = v20;
      v45.size.height = v22;
      [v10 sizeThatFits:{CGRectGetWidth(v45), 3.40282347e38}];
      v25 = v24;
      v46.origin.x = v18;
      v46.origin.y = v19;
      v46.size.width = v20;
      v46.size.height = v22;
      [v11 sizeThatFits:{CGRectGetWidth(v46), 3.40282347e38}];
      v27 = v26;
      v28 = v25 + v26;
      v47.origin.x = v18;
      v47.origin.y = v19;
      v47.size.width = v20;
      v47.size.height = v22;
      CGRectDivide(v47, &slice, &remainder, v28, CGRectMinYEdge);
      PKRectCenteredYInRect();
      remainder = v48;
      CGRectDivide(v48, &slice, &remainder, v25, CGRectMinYEdge);
      if (!a4)
      {
        [v10 setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
      }

      v29 = v40 + v25;
      CGRectDivide(remainder, &slice, &remainder, v27, CGRectMinYEdge);
      width = v41;
      if (!a4)
      {
        [v11 setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
      }

      v30 = v29 + v27;
      height = v39;
    }
  }

  else
  {
    v30 = 0.0;
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v36 = CGRectGetWidth(v50);

  v37 = v36;
  v38 = v30;
  result.height = v38;
  result.width = v37;
  return result;
}

- (void)setMinimumTextLabelWidth:(double)a3
{
  if (self->_minimumTextLabelWidth != a3)
  {
    self->_minimumTextLabelWidth = a3;
    [(PKPeerPaymentBankAccountDetailCell *)self setNeedsLayout];
  }
}

- (CGRect)_separatorFrame
{
  v15.receiver = self;
  v15.super_class = PKPeerPaymentBankAccountDetailCell;
  [(PKPeerPaymentBankAccountDetailCell *)&v15 _separatorFrame];
  if (self->_shouldDrawSeperator)
  {
    v5 = v3;
    v6 = v4;
    if (self->_shouldDrawFullWidthSeperator)
    {
      [(PKPeerPaymentBankAccountDetailCell *)self bounds];
      Width = CGRectGetWidth(v16);
      v8 = 0.0;
    }

    else
    {
      [(UIListContentConfiguration *)self->_referenceConfiguration directionalLayoutMargins];
      v10 = v9;
      v11 = [(PKPeerPaymentBankAccountDetailCell *)self _shouldReverseLayoutDirection];
      [(PKPeerPaymentBankAccountDetailCell *)self bounds];
      CGRectGetWidth(v17);
      if (v11)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v10;
      }

      [(PKPeerPaymentBankAccountDetailCell *)self bounds];
      Width = CGRectGetWidth(v18) - v10;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    Width = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  v12 = v8;
  v13 = v5;
  v14 = v6;
  result.size.height = v14;
  result.size.width = Width;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKPeerPaymentBankAccountDetailCell *)self _layoutSubviewsInBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end