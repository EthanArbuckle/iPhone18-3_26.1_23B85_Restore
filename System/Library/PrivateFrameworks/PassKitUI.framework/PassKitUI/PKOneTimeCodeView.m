@interface PKOneTimeCodeView
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKOneTimeCodeView)initWithCodeLength:(int64_t)a3 delegate:(id)a4;
- (id)currentCode;
- (void)_passcodeFieldTapped:(id)a3;
- (void)_updateLabels;
- (void)clearCurrentCode;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setDisableEntry:(BOOL)a3;
- (void)setEntryError:(unint64_t)a3;
- (void)setEntrySpacing:(double)a3;
@end

@implementation PKOneTimeCodeView

- (PKOneTimeCodeView)initWithCodeLength:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v32.receiver = self;
  v32.super_class = PKOneTimeCodeView;
  v7 = [(PKOneTimeCodeView *)&v32 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_codeLength = a3;
    objc_storeWeak(&v7->_delegate, v6);
    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    value = v8->_value;
    v8->_value = v9;

    v11 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v12 = [v11 invertedSet];
    nonNumericCharSet = v8->_nonNumericCharSet;
    v8->_nonNumericCharSet = v12;

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
    v21 = [MEMORY[0x1E69DC888] redColor];
    [(PKIconTextLabel *)v20 setTextColor:v21];

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

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (self->_invisibleTextField != v9 || self->_disableEntry || ([v10 isEqualToString:@"\n"] & 1) != 0 || objc_msgSend(v11, "rangeOfCharacterFromSet:", self->_nonNumericCharSet) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v12 = [(UITextField *)v9 text];
    v13 = [v12 stringByReplacingCharactersInRange:location withString:{length, v11}];

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

- (void)setEntrySpacing:(double)a3
{
  if (self->_entrySpacing != a3)
  {
    self->_entrySpacing = a3;
    [(PKOneTimeCodeView *)self setNeedsLayout];
  }
}

- (void)setDisableEntry:(BOOL)a3
{
  if (self->_disableEntry != a3)
  {
    self->_disableEntry = a3;
  }
}

- (void)setEntryError:(unint64_t)a3
{
  if (self->_entryError != a3)
  {
    self->_entryError = a3;
    [(PKOneTimeCodeView *)self _updateLabels];

    [(PKOneTimeCodeView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKOneTimeCodeView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
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

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  width = a3.size.width;
  y = a3.origin.y;
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

      if (!a4)
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
    if (a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v18 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  if (!a4)
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

- (void)setBackgroundColor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKOneTimeCodeView;
  [(PKOneTimeCodeView *)&v14 setBackgroundColor:v4];
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

        [*(*(&v10 + 1) + 8 * v9++) setBackgroundColor:{v4, v10}];
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
    v9 = [(PKIconTextLabel *)self->_entryErrorLabel textFont];
    v10 = [v8 configurationWithFont:v9 scale:2];

    v11 = [v4 imageWithConfiguration:v10];
    v12 = [(PKIconTextLabel *)self->_entryErrorLabel textColor];
    v13 = [v11 imageWithTintColor:v12];

    v25 = [v13 imageWithRenderingMode:1];
  }

  else
  {
    v25 = 0;
  }

LABEL_16:
  entryErrorLabel = self->_entryErrorLabel;
  v15 = [v5 pk_attributedString];
  [(PKIconTextLabel *)entryErrorLabel setText:v15];

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

- (void)_passcodeFieldTapped:(id)a3
{
  if ([(PKOneTimeCodeView *)self canBecomeFirstResponder])
  {

    [(PKOneTimeCodeView *)self becomeFirstResponder];
  }
}

@end