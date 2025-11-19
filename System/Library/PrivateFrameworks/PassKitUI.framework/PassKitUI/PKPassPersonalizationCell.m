@interface PKPassPersonalizationCell
+ (double)minimumCellHeight;
+ (double)textLabelWidthForText:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (PKPassPersonalizationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PKPassPersonalizationCellDelegate)delegate;
- (void)_editableTextFieldChanged:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContext:(id)a3 andContact:(id)a4;
@end

@implementation PKPassPersonalizationCell

- (PKPassPersonalizationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v30.receiver = self;
  v30.super_class = PKPassPersonalizationCell;
  v4 = [(PKPassPersonalizationCell *)&v30 initWithStyle:1000 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PKPassPersonalizationCell *)v4 setSelectionStyle:0];
    v6 = [(PKPassPersonalizationCell *)v5 textLabel];
    v7 = [objc_opt_class() _textLabelFont];
    [v6 setFont:v7];

    v8 = [(PKPassPersonalizationCell *)v5 textLabel];
    [v8 setMinimumScaleFactor:0.7];

    v9 = [(PKPassPersonalizationCell *)v5 textLabel];
    [v9 setBaselineAdjustment:1];

    v10 = [(PKPassPersonalizationCell *)v5 textLabel];
    [v10 setAdjustsFontSizeToFitWidth:1];

    v11 = [(PKPassPersonalizationCell *)v5 textLabel];
    [v11 setText:0];

    v12 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v12 setText:0];

    v13 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v13 setSecureTextEntry:0];

    v14 = [(PKPassPersonalizationCell *)v5 editableTextField];
    v15 = [objc_opt_class() _textFieldFont];
    [v14 setFont:v15];

    v16 = [(PKPassPersonalizationCell *)v5 editableTextField];
    v17 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v16 setTextColor:v17];

    v18 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v18 setAdjustsFontSizeToFitWidth:0];

    v19 = [(PKPassPersonalizationCell *)v5 editableTextField];
    v20 = PKLocalizedPaymentString(&cfstr_Required.isa);
    [v19 setPlaceholder:v20];

    v21 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v21 setClearButtonMode:1];

    v22 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v22 setAutocorrectionType:1];

    v23 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v23 setKeyboardType:0];

    v24 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v24 setTextContentType:0];

    v25 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v25 setReturnKeyType:4];

    v26 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v26 setInputView:0];

    v27 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v27 setDelegate:v5];

    v28 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [v28 addTarget:v5 action:sel__editableTextFieldChanged_ forControlEvents:0x20000];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(PKPassPersonalizationCell *)self editableTextField];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = PKPassPersonalizationCell;
  [(PKPassPersonalizationCell *)&v4 dealloc];
}

- (BOOL)becomeFirstResponder
{
  v2 = [(PKPassPersonalizationCell *)self editableTextField];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = PKPassPersonalizationCell;
  [(PKPassPersonalizationCell *)&v10 prepareForReuse];
  [(PKPassPersonalizationCell *)self setContext:0 andContact:0];
  [(PKPassPersonalizationCell *)self setDelegate:0];
  v3 = [(PKPassPersonalizationCell *)self textLabel];
  [v3 setText:0];

  v4 = [(PKPassPersonalizationCell *)self editableTextField];
  [v4 setText:0];

  v5 = [(PKPassPersonalizationCell *)self editableTextField];
  v6 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v5 setTextColor:v6];

  v7 = [(PKPassPersonalizationCell *)self editableTextField];
  [v7 setKeyboardType:0];

  v8 = [(PKPassPersonalizationCell *)self editableTextField];
  [v8 setTextContentType:0];

  v9 = [(PKPassPersonalizationCell *)self editableTextField];
  [v9 setAutocapitalizationType:0];
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = PKPassPersonalizationCell;
  [(PKPassPersonalizationCell *)&v55 layoutSubviews];
  v3 = [(PKPassPersonalizationCell *)self textLabel];
  v4 = [(PKPassPersonalizationCell *)self editableTextField];
  if (v4)
  {
    v5 = [(PKPassPersonalizationCell *)self contentView];
    [v3 frame];
    v7 = v6;
    v50 = v9;
    v51 = v8;
    rect = v10;
    [v4 frame];
    v12 = v11;
    v53 = v14;
    v54 = v13;
    v49 = v15;
    v16 = [(PKPassPersonalizationCell *)self _shouldReverseLayoutDirection];
    [v5 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v46 = v23;
    [v5 layoutMargins];
    v26 = v25;
    v47 = v28;
    v48 = v27;
    v30 = fmax(v29, fmin(v7, v12) - v18);
    v56.origin.x = v18;
    v56.origin.y = v20;
    v56.size.width = v22;
    v56.size.height = v24;
    MaxX = CGRectGetMaxX(v56);
    v57.origin.x = v7;
    v57.size.width = v50;
    v57.origin.y = v51;
    v57.size.height = rect;
    v32 = CGRectGetMaxX(v57);
    v58.origin.x = v12;
    v58.size.height = v53;
    v58.origin.y = v54;
    v58.size.width = v49;
    v33 = fmax(v47, MaxX - fmax(v32, CGRectGetMaxX(v58)));
    v34 = v18 + v30;
    v35 = v20 + v26;
    v36 = v22 - (v30 + v33);
    v37 = v46 - (v26 + v48);
    [v3 sizeThatFits:{v36, v37}];
    v39 = v38;
    [(PKPassPersonalizationCellContext *)self->_context minimumTextLabelWidth];
    v41 = fmin(fmax(v39, v40), v36 + -122.0);
    if (v16)
    {
      v59.origin.x = v34;
      v59.origin.y = v35;
      v59.size.width = v36;
      v59.size.height = v37;
      v42 = CGRectGetMaxX(v59);
      v43 = v42 - v41;
      [v3 setFrame:{v42 - v41, v51, v41, rect}];
      v44 = v43 - v34 + -22.0;
    }

    else
    {
      [v3 setFrame:{v34, v51, v41, rect}];
      v60.origin.x = v34;
      v60.origin.y = v51;
      v60.size.width = v41;
      v60.size.height = rect;
      v45 = CGRectGetMaxX(v60) + 22.0;
      v61.origin.x = v34;
      v61.origin.y = v35;
      v61.size.width = v36;
      v61.size.height = v37;
      v44 = CGRectGetMaxX(v61) - v45;
      v34 = v45;
    }

    [v4 setFrame:{v34, v54, v44, v53}];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 personalizationCellShouldBeginEditing:self];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 personalizationCellShouldReturn:self];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (double)minimumCellHeight
{
  v2 = PKUIGetMinScreenWidthType();
  result = 60.0;
  if (!v2)
  {
    return 50.0;
  }

  return result;
}

+ (double)textLabelWidthForText:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69DB648];
  v4 = a3;
  v5 = [a1 _textLabelFont];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [v4 sizeWithAttributes:v6];
  v8 = v7;

  return v8;
}

- (void)setContext:(id)a3 andContact:(id)a4
{
  v17 = a3;
  v7 = a4;
  if (self->_context != v17)
  {
    objc_storeStrong(&self->_context, a3);
  }

  if (self->_contact != v7)
  {
    objc_storeStrong(&self->_contact, a4);
  }

  if (self->_context)
  {
    v8 = [(PKPassPersonalizationCell *)self textLabel];
    v9 = [(PKPassPersonalizationCellContext *)v17 title];
    [v8 setText:v9];

    v10 = [(PKPassPersonalizationCell *)self editableTextField];
    [v10 setKeyboardType:{-[PKPassPersonalizationCellContext keyboardType](v17, "keyboardType")}];

    v11 = [(PKPassPersonalizationCell *)self editableTextField];
    v12 = [(PKPassPersonalizationCellContext *)v17 textContentType];
    [v11 setTextContentType:v12];

    v13 = [(PKPassPersonalizationCell *)self editableTextField];
    [v13 setAutocapitalizationType:{-[PKPassPersonalizationCellContext autocapitalizationType](v17, "autocapitalizationType")}];

    if (self->_contact)
    {
      v14 = [(PKPassPersonalizationCellContext *)self->_context stringRepresentationBlock];
      if (v14)
      {
        v15 = [(PKPassPersonalizationCell *)self editableTextField];
        v16 = (v14)[2](v14, self->_contact);
        [v15 setText:v16];
      }
    }

    [(PKPassPersonalizationCell *)self setNeedsLayout];
  }
}

- (void)_editableTextFieldChanged:(id)a3
{
  v12 = [(PKPassPersonalizationCellContext *)self->_context contactUpdateBlock];
  v4 = [(PKPassPersonalizationCellContext *)self->_context stringRepresentationBlock];
  v5 = [(PKPassPersonalizationCell *)self editableTextField];
  v6 = [MEMORY[0x1E69DC888] labelColor];
  [v5 setTextColor:v6];

  if (v12)
  {
    v7 = [(PKPassPersonalizationCell *)self editableTextField];
    v8 = [v7 text];
    v12[2](v12, v8, self->_contact);

    if ([(PKPassPersonalizationCellContext *)self->_context bindTextToStringRepresentation])
    {
      v9 = [(PKPassPersonalizationCell *)self editableTextField];
      v10 = (v4)[2](v4, self->_contact);
      [v9 setText:v10];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained personalizationCellDidChangeValue:self];
}

- (PKPassPersonalizationCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end