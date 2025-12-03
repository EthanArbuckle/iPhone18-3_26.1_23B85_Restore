@interface PKPassPersonalizationCell
+ (double)minimumCellHeight;
+ (double)textLabelWidthForText:(id)text;
- (BOOL)becomeFirstResponder;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (PKPassPersonalizationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PKPassPersonalizationCellDelegate)delegate;
- (void)_editableTextFieldChanged:(id)changed;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContext:(id)context andContact:(id)contact;
@end

@implementation PKPassPersonalizationCell

- (PKPassPersonalizationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v30.receiver = self;
  v30.super_class = PKPassPersonalizationCell;
  v4 = [(PKPassPersonalizationCell *)&v30 initWithStyle:1000 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PKPassPersonalizationCell *)v4 setSelectionStyle:0];
    textLabel = [(PKPassPersonalizationCell *)v5 textLabel];
    _textLabelFont = [objc_opt_class() _textLabelFont];
    [textLabel setFont:_textLabelFont];

    textLabel2 = [(PKPassPersonalizationCell *)v5 textLabel];
    [textLabel2 setMinimumScaleFactor:0.7];

    textLabel3 = [(PKPassPersonalizationCell *)v5 textLabel];
    [textLabel3 setBaselineAdjustment:1];

    textLabel4 = [(PKPassPersonalizationCell *)v5 textLabel];
    [textLabel4 setAdjustsFontSizeToFitWidth:1];

    textLabel5 = [(PKPassPersonalizationCell *)v5 textLabel];
    [textLabel5 setText:0];

    editableTextField = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField setText:0];

    editableTextField2 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField2 setSecureTextEntry:0];

    editableTextField3 = [(PKPassPersonalizationCell *)v5 editableTextField];
    _textFieldFont = [objc_opt_class() _textFieldFont];
    [editableTextField3 setFont:_textFieldFont];

    editableTextField4 = [(PKPassPersonalizationCell *)v5 editableTextField];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [editableTextField4 setTextColor:systemBlueColor];

    editableTextField5 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField5 setAdjustsFontSizeToFitWidth:0];

    editableTextField6 = [(PKPassPersonalizationCell *)v5 editableTextField];
    v20 = PKLocalizedPaymentString(&cfstr_Required.isa);
    [editableTextField6 setPlaceholder:v20];

    editableTextField7 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField7 setClearButtonMode:1];

    editableTextField8 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField8 setAutocorrectionType:1];

    editableTextField9 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField9 setKeyboardType:0];

    editableTextField10 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField10 setTextContentType:0];

    editableTextField11 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField11 setReturnKeyType:4];

    editableTextField12 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField12 setInputView:0];

    editableTextField13 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField13 setDelegate:v5];

    editableTextField14 = [(PKPassPersonalizationCell *)v5 editableTextField];
    [editableTextField14 addTarget:v5 action:sel__editableTextFieldChanged_ forControlEvents:0x20000];
  }

  return v5;
}

- (void)dealloc
{
  editableTextField = [(PKPassPersonalizationCell *)self editableTextField];
  [editableTextField setDelegate:0];

  v4.receiver = self;
  v4.super_class = PKPassPersonalizationCell;
  [(PKPassPersonalizationCell *)&v4 dealloc];
}

- (BOOL)becomeFirstResponder
{
  editableTextField = [(PKPassPersonalizationCell *)self editableTextField];
  becomeFirstResponder = [editableTextField becomeFirstResponder];

  return becomeFirstResponder;
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = PKPassPersonalizationCell;
  [(PKPassPersonalizationCell *)&v10 prepareForReuse];
  [(PKPassPersonalizationCell *)self setContext:0 andContact:0];
  [(PKPassPersonalizationCell *)self setDelegate:0];
  textLabel = [(PKPassPersonalizationCell *)self textLabel];
  [textLabel setText:0];

  editableTextField = [(PKPassPersonalizationCell *)self editableTextField];
  [editableTextField setText:0];

  editableTextField2 = [(PKPassPersonalizationCell *)self editableTextField];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [editableTextField2 setTextColor:systemBlueColor];

  editableTextField3 = [(PKPassPersonalizationCell *)self editableTextField];
  [editableTextField3 setKeyboardType:0];

  editableTextField4 = [(PKPassPersonalizationCell *)self editableTextField];
  [editableTextField4 setTextContentType:0];

  editableTextField5 = [(PKPassPersonalizationCell *)self editableTextField];
  [editableTextField5 setAutocapitalizationType:0];
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = PKPassPersonalizationCell;
  [(PKPassPersonalizationCell *)&v55 layoutSubviews];
  textLabel = [(PKPassPersonalizationCell *)self textLabel];
  editableTextField = [(PKPassPersonalizationCell *)self editableTextField];
  if (editableTextField)
  {
    contentView = [(PKPassPersonalizationCell *)self contentView];
    [textLabel frame];
    v7 = v6;
    v50 = v9;
    v51 = v8;
    rect = v10;
    [editableTextField frame];
    v12 = v11;
    v53 = v14;
    v54 = v13;
    v49 = v15;
    _shouldReverseLayoutDirection = [(PKPassPersonalizationCell *)self _shouldReverseLayoutDirection];
    [contentView bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v46 = v23;
    [contentView layoutMargins];
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
    [textLabel sizeThatFits:{v36, v37}];
    v39 = v38;
    [(PKPassPersonalizationCellContext *)self->_context minimumTextLabelWidth];
    v41 = fmin(fmax(v39, v40), v36 + -122.0);
    if (_shouldReverseLayoutDirection)
    {
      v59.origin.x = v34;
      v59.origin.y = v35;
      v59.size.width = v36;
      v59.size.height = v37;
      v42 = CGRectGetMaxX(v59);
      v43 = v42 - v41;
      [textLabel setFrame:{v42 - v41, v51, v41, rect}];
      v44 = v43 - v34 + -22.0;
    }

    else
    {
      [textLabel setFrame:{v34, v51, v41, rect}];
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

    [editableTextField setFrame:{v34, v54, v44, v53}];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
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

- (BOOL)textFieldShouldReturn:(id)return
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

+ (double)textLabelWidthForText:(id)text
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69DB648];
  textCopy = text;
  _textLabelFont = [self _textLabelFont];
  v11[0] = _textLabelFont;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [textCopy sizeWithAttributes:v6];
  v8 = v7;

  return v8;
}

- (void)setContext:(id)context andContact:(id)contact
{
  contextCopy = context;
  contactCopy = contact;
  if (self->_context != contextCopy)
  {
    objc_storeStrong(&self->_context, context);
  }

  if (self->_contact != contactCopy)
  {
    objc_storeStrong(&self->_contact, contact);
  }

  if (self->_context)
  {
    textLabel = [(PKPassPersonalizationCell *)self textLabel];
    title = [(PKPassPersonalizationCellContext *)contextCopy title];
    [textLabel setText:title];

    editableTextField = [(PKPassPersonalizationCell *)self editableTextField];
    [editableTextField setKeyboardType:{-[PKPassPersonalizationCellContext keyboardType](contextCopy, "keyboardType")}];

    editableTextField2 = [(PKPassPersonalizationCell *)self editableTextField];
    textContentType = [(PKPassPersonalizationCellContext *)contextCopy textContentType];
    [editableTextField2 setTextContentType:textContentType];

    editableTextField3 = [(PKPassPersonalizationCell *)self editableTextField];
    [editableTextField3 setAutocapitalizationType:{-[PKPassPersonalizationCellContext autocapitalizationType](contextCopy, "autocapitalizationType")}];

    if (self->_contact)
    {
      stringRepresentationBlock = [(PKPassPersonalizationCellContext *)self->_context stringRepresentationBlock];
      if (stringRepresentationBlock)
      {
        editableTextField4 = [(PKPassPersonalizationCell *)self editableTextField];
        v16 = (stringRepresentationBlock)[2](stringRepresentationBlock, self->_contact);
        [editableTextField4 setText:v16];
      }
    }

    [(PKPassPersonalizationCell *)self setNeedsLayout];
  }
}

- (void)_editableTextFieldChanged:(id)changed
{
  contactUpdateBlock = [(PKPassPersonalizationCellContext *)self->_context contactUpdateBlock];
  stringRepresentationBlock = [(PKPassPersonalizationCellContext *)self->_context stringRepresentationBlock];
  editableTextField = [(PKPassPersonalizationCell *)self editableTextField];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [editableTextField setTextColor:labelColor];

  if (contactUpdateBlock)
  {
    editableTextField2 = [(PKPassPersonalizationCell *)self editableTextField];
    text = [editableTextField2 text];
    contactUpdateBlock[2](contactUpdateBlock, text, self->_contact);

    if ([(PKPassPersonalizationCellContext *)self->_context bindTextToStringRepresentation])
    {
      editableTextField3 = [(PKPassPersonalizationCell *)self editableTextField];
      v10 = (stringRepresentationBlock)[2](stringRepresentationBlock, self->_contact);
      [editableTextField3 setText:v10];
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