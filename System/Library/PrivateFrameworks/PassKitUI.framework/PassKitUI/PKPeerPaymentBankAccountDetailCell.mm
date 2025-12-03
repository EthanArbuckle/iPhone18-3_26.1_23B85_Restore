@interface PKPeerPaymentBankAccountDetailCell
- (CGRect)_separatorFrame;
- (CGSize)_layoutSubviewsInBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPeerPaymentBankAccountDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setMinimumTextLabelWidth:(double)width;
@end

@implementation PKPeerPaymentBankAccountDetailCell

- (PKPeerPaymentBankAccountDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v33.receiver = self;
  v33.super_class = PKPeerPaymentBankAccountDetailCell;
  v4 = [(PKPeerPaymentBankAccountDetailCell *)&v33 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
    referenceConfiguration = v4->_referenceConfiguration;
    v4->_referenceConfiguration = valueCellConfiguration;

    [(PKPeerPaymentBankAccountDetailCell *)v4 setPreservesSuperviewLayoutMargins:0];
    [(PKPeerPaymentBankAccountDetailCell *)v4 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(PKPeerPaymentBankAccountDetailCell *)v4 setSelectionStyle:0];
    v7 = PKProvisioningSecondaryBackgroundColor();
    [(PKPeerPaymentBankAccountDetailCell *)v4 setBackgroundColor:v7];

    textLabel = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    v9 = *MEMORY[0x1E69DDCF8];
    v10 = *MEMORY[0x1E69DDC50];
    v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC50], 2, 0);
    [textLabel setFont:v11];

    textLabel2 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [textLabel2 setMinimumScaleFactor:0.7];

    textLabel3 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [textLabel3 setBaselineAdjustment:1];

    textLabel4 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [textLabel4 setAdjustsFontSizeToFitWidth:1];

    textLabel5 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [textLabel5 setText:0];

    textLabel6 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [textLabel6 setNumberOfLines:0];

    textLabel7 = [(PKPeerPaymentBankAccountDetailCell *)v4 textLabel];
    [textLabel7 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

    editableTextField = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [editableTextField setText:0];

    editableTextField2 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [editableTextField2 setSecureTextEntry:1];

    editableTextField3 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [editableTextField3 setDisplaySecureTextUsingPlainText:1];

    editableTextField4 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    v22 = PKFontForDefaultDesign(v9, v10);
    [editableTextField4 setFont:v22];

    editableTextField5 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [editableTextField5 setAdjustsFontSizeToFitWidth:0];

    editableTextField6 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    v25 = PKLocalizedPaymentString(&cfstr_Required.isa);
    [editableTextField6 setPlaceholder:v25];

    editableTextField7 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [editableTextField7 setClearButtonMode:1];

    editableTextField8 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [editableTextField8 setAutocorrectionType:1];

    editableTextField9 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [editableTextField9 setAutocapitalizationType:1];

    editableTextField10 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [editableTextField10 setKeyboardType:11];

    editableTextField11 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [editableTextField11 setInputView:0];

    editableTextField12 = [(PKPeerPaymentBankAccountDetailCell *)v4 editableTextField];
    [editableTextField12 pkui_attachDoneToolbarWithAdditionalItems:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKPeerPaymentBankAccountDetailCell;
  [(PKPeerPaymentBankAccountDetailCell *)&v12 layoutSubviews];
  contentView = [(PKPeerPaymentBankAccountDetailCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKPeerPaymentBankAccountDetailCell *)self _layoutSubviewsInBounds:0 isTemplateLayout:v5, v7, v9, v11];
}

- (CGSize)_layoutSubviewsInBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  textLabel = [(PKPeerPaymentBankAccountDetailCell *)self textLabel];
  editableTextField = [(PKPeerPaymentBankAccountDetailCell *)self editableTextField];
  if (editableTextField)
  {
    _shouldReverseLayoutDirection = [(PKPeerPaymentBankAccountDetailCell *)self _shouldReverseLayoutDirection];
    [(UIListContentConfiguration *)self->_referenceConfiguration directionalLayoutMargins];
    if (_shouldReverseLayoutDirection)
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
      if (_shouldReverseLayoutDirection)
      {
        v31 = CGRectMaxXEdge;
      }

      else
      {
        v31 = CGRectMinXEdge;
      }

      [textLabel sizeThatFits:{v20 + -122.0, 3.40282347e38}];
      v33 = v32;
      v35 = fmax(v34, self->_minimumTextLabelWidth);
      v49.origin.x = v18;
      v49.origin.y = v19;
      v49.size.width = v20;
      v49.size.height = v22;
      CGRectDivide(v49, &slice, &remainder, v35, v31);
      if (layout)
      {
        CGRectDivide(remainder, &slice, &remainder, 22.0, v31);
      }

      else
      {
        [textLabel setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
        CGRectDivide(remainder, &slice, &remainder, 22.0, v31);
        [editableTextField setFrame:{remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height}];
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
      [textLabel sizeThatFits:{CGRectGetWidth(v45), 3.40282347e38}];
      v25 = v24;
      v46.origin.x = v18;
      v46.origin.y = v19;
      v46.size.width = v20;
      v46.size.height = v22;
      [editableTextField sizeThatFits:{CGRectGetWidth(v46), 3.40282347e38}];
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
      if (!layout)
      {
        [textLabel setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
      }

      v29 = v40 + v25;
      CGRectDivide(remainder, &slice, &remainder, v27, CGRectMinYEdge);
      width = v41;
      if (!layout)
      {
        [editableTextField setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
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

- (void)setMinimumTextLabelWidth:(double)width
{
  if (self->_minimumTextLabelWidth != width)
  {
    self->_minimumTextLabelWidth = width;
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
      _shouldReverseLayoutDirection = [(PKPeerPaymentBankAccountDetailCell *)self _shouldReverseLayoutDirection];
      [(PKPeerPaymentBankAccountDetailCell *)self bounds];
      CGRectGetWidth(v17);
      if (_shouldReverseLayoutDirection)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPeerPaymentBankAccountDetailCell *)self _layoutSubviewsInBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end