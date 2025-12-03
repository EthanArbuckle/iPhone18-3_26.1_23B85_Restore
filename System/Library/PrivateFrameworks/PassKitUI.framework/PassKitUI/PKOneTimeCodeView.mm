@interface PKOneTimeCodeView
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKOneTimeCodeView)initWithCodeLength:(int64_t)length delegate:(id)delegate;
- (id)currentCode;
- (void)_passcodeFieldTapped:(id)tapped;
- (void)_updateLabels;
- (void)clearCurrentCode;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setDisableEntry:(BOOL)entry;
- (void)setEntryError:(unint64_t)error;
- (void)setEntrySpacing:(double)spacing;
@end

@implementation PKOneTimeCodeView

- (PKOneTimeCodeView)initWithCodeLength:(int64_t)length delegate:(id)delegate
{
  delegateCopy = delegate;
  v32.receiver = self;
  v32.super_class = PKOneTimeCodeView;
  v7 = [(PKOneTimeCodeView *)&v32 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_codeLength = length;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    value = v8->_value;
    v8->_value = v9;

    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];
    nonNumericCharSet = v8->_nonNumericCharSet;
    v8->_nonNumericCharSet = invertedSet;

    v14 = [[PKOneTimeCodeDigitFieldView alloc] initWithIndex:0];
    templateField = v8->_templateField;
    v8->_templateField = v14;

    [(PKOneTimeCodeDigitFieldView *)v8->_templateField setText:@"5"];
    v16 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    invisibleTextField = v8->_invisibleTextField;
    v8->_invisibleTextField = v16;

    [(UITextField *)v8->_invisibleTextField setHidden:1];
    [(UITextField *)v8->_invisibleTextField setDelegate:v8];
    [(UITextField *)v8->_invisibleTextField setKeyboardType:4];
    [(UITextField *)v8->_invisibleTextField setTextContentType:*MEMORY[0x1E69DE518]];
    [(PKOneTimeCodeView *)v8 addSubview:v8->_invisibleTextField];
    v18 = objc_alloc_init(PKIconTextLabel);
    entryErrorLabel = v8->_entryErrorLabel;
    v8->_entryErrorLabel = v18;

    v20 = v8->_entryErrorLabel;
    redColor = [MEMORY[0x1E69DC888] redColor];
    [(PKIconTextLabel *)v20 setTextColor:redColor];

    v22 = v8->_entryErrorLabel;
    v23 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, 0, 0);
    [(PKIconTextLabel *)v22 setTextFont:v23];

    [(PKOneTimeCodeView *)v8 addSubview:v8->_entryErrorLabel];
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v8->_codeLength > 0.0)
    {
      v25 = 0;
      do
      {
        v26 = [[PKOneTimeCodeDigitFieldView alloc] initWithIndex:v25];
        [(PKOneTimeCodeDigitFieldView *)v26 setPrimary:v25 == 0];
        [(PKOneTimeCodeView *)v8 addSubview:v26];
        [v24 addObject:v26];

        ++v25;
      }

      while (v8->_codeLength > v25);
    }

    v27 = [v24 copy];
    codeFields = v8->_codeFields;
    v8->_codeFields = v27;

    [(PKOneTimeCodeView *)v8 setEntrySpacing:8.0];
    v29 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v8 action:sel__passcodeFieldTapped_];
    tapGestureRecognizer = v8->_tapGestureRecognizer;
    v8->_tapGestureRecognizer = v29;

    [(PKOneTimeCodeView *)v8 addGestureRecognizer:v8->_tapGestureRecognizer];
    [(PKOneTimeCodeView *)v8 _updateLabels];
  }

  return v8;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  v11 = stringCopy;
  if (self->_invisibleTextField != fieldCopy || self->_disableEntry || ([stringCopy isEqualToString:@"\n"] & 1) != 0 || objc_msgSend(v11, "rangeOfCharacterFromSet:", self->_nonNumericCharSet) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    text = [(UITextField *)fieldCopy text];
    v13 = [text stringByReplacingCharactersInRange:location withString:{length, v11}];

    v14 = [v13 length];
    codeLength = self->_codeLength;
    v16 = codeLength >= v14;
    if (codeLength >= v14)
    {
      [(PKOneTimeCodeView *)self setEntryError:0];
      objc_storeStrong(&self->_value, v13);
      [(PKOneTimeCodeView *)self _updateLabels];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v18 = [(NSString *)self->_value copy];
      [WeakRetained oneTimeCodeView:self didEnterCode:v18];
    }
  }

  return v16;
}

- (id)currentCode
{
  v2 = [(NSString *)self->_value copy];

  return v2;
}

- (void)clearCurrentCode
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  value = self->_value;
  self->_value = v3;

  [(PKOneTimeCodeView *)self _updateLabels];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(NSString *)self->_value copy];
  [WeakRetained oneTimeCodeView:self didEnterCode:v5];
}

- (void)setEntrySpacing:(double)spacing
{
  if (self->_entrySpacing != spacing)
  {
    self->_entrySpacing = spacing;
    [(PKOneTimeCodeView *)self setNeedsLayout];
  }
}

- (void)setDisableEntry:(BOOL)entry
{
  if (self->_disableEntry != entry)
  {
    self->_disableEntry = entry;
  }
}

- (void)setEntryError:(unint64_t)error
{
  if (self->_entryError != error)
  {
    self->_entryError = error;
    [(PKOneTimeCodeView *)self _updateLabels];

    [(PKOneTimeCodeView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKOneTimeCodeView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKOneTimeCodeView;
  [(PKOneTimeCodeView *)&v3 layoutSubviews];
  [(PKOneTimeCodeView *)self bounds];
  [(PKOneTimeCodeView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  width = bounds.size.width;
  y = bounds.origin.y;
  v8 = [(NSArray *)self->_codeFields count];
  entrySpacing = self->_entrySpacing;
  v10 = 0.0;
  if ([(NSArray *)self->_codeFields count])
  {
    v10 = (width - fmax(entrySpacing * (v8 - 1), 0.0)) / [(NSArray *)self->_codeFields count];
  }

  if ([(NSArray *)self->_codeFields count])
  {
    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = [(NSArray *)self->_codeFields objectAtIndexedSubscript:v11];
      [v13 frame];
      v14 = v10 + v12;
      if (++v11 < [(NSArray *)self->_codeFields count])
      {
        v14 = v14 + self->_entrySpacing;
      }

      if (!layout)
      {
        [v13 setFrame:{v12, y, v10, v10}];
      }

      v12 = v14;
    }

    while (v11 < [(NSArray *)self->_codeFields count]);
  }

  v15 = v10 + 0.0;
  if ([(PKIconTextLabel *)self->_entryErrorLabel hasContent])
  {
    [(PKIconTextLabel *)self->_entryErrorLabel sizeThatFits:width, 1.79769313e308];
    PKRectCenteredXInRect();
    v15 = v15 + v19 + 16.0;
    if (layout)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v18 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  if (!layout)
  {
LABEL_14:
    [(PKIconTextLabel *)self->_entryErrorLabel setFrame:v16, v17, v18, v19];
  }

LABEL_15:
  v20 = width;
  v21 = v15;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)setBackgroundColor:(id)color
{
  v16 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = PKOneTimeCodeView;
  [(PKOneTimeCodeView *)&v14 setBackgroundColor:colorCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_codeFields;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setBackgroundColor:{colorCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_updateLabels
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
  v4 = v3;
  v5 = 0;
  entryError = self->_entryError;
  if (entryError > 2)
  {
    switch(entryError)
    {
      case 3:
        v7 = @"EXPIRED_SMS_OTP_CODE";
        break;
      case 4:
        v7 = @"ATTEMPT_LIMIT_REACHED_SMS_OTP_CODE";
        break;
      case 5:
        v7 = @"REQUEST_LIMIT_REACHED_SMS_OTP_CODE";
        break;
      default:
        goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (entryError < 2)
  {

    v5 = 0;
    v25 = 0;
    goto LABEL_16;
  }

  if (entryError == 2)
  {
    v7 = @"INVALID_SMS_OTP_CODE";
LABEL_12:
    v5 = PKLocalizedPaymentString(&v7->isa);
  }

LABEL_13:
  if (v4)
  {
    v8 = MEMORY[0x1E69DCAD8];
    textFont = [(PKIconTextLabel *)self->_entryErrorLabel textFont];
    v10 = [v8 configurationWithFont:textFont scale:2];

    v11 = [v4 imageWithConfiguration:v10];
    textColor = [(PKIconTextLabel *)self->_entryErrorLabel textColor];
    v13 = [v11 imageWithTintColor:textColor];

    v25 = [v13 imageWithRenderingMode:1];
  }

  else
  {
    v25 = 0;
  }

LABEL_16:
  entryErrorLabel = self->_entryErrorLabel;
  pk_attributedString = [v5 pk_attributedString];
  [(PKIconTextLabel *)entryErrorLabel setText:pk_attributedString];

  [(PKIconTextLabel *)self->_entryErrorLabel setIcon:v25];
  if (self->_codeLength > 0.0)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if (v17 >= [(NSString *)self->_value length])
      {
        v18 = 0;
      }

      else
      {
        v18 = [(NSString *)self->_value substringWithRange:v17, 1];
      }

      v19 = [(NSArray *)self->_codeFields objectAtIndexedSubscript:v17];
      v20 = v19;
      v21 = self->_entryError;
      if (v21)
      {
        v22 = 2;
      }

      else
      {
        v22 = (v18 == 0) & (v16 ^ 1u);
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = (v18 == 0) & (v16 ^ 1);
      }

      v16 |= v23;
      [v19 setHighligtType:v22];
      [v20 setText:v18];

      ++v17;
    }

    while (self->_codeLength > v17);
  }

  [(PKOneTimeCodeView *)self setNeedsLayout];
}

- (void)_passcodeFieldTapped:(id)tapped
{
  if ([(PKOneTimeCodeView *)self canBecomeFirstResponder])
  {

    [(PKOneTimeCodeView *)self becomeFirstResponder];
  }
}

@end