@interface SURedeemCodeTextField
- (NSString)placeholder;
- (NSString)text;
- (SURedeemCodeTextField)initWithHeight:(double)height;
- (UITextFieldDelegate)delegate;
- (void)_setupSubviews;
- (void)_setupTextField;
- (void)_setupVisualEffectView;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)setPlaceholder:(id)placeholder;
- (void)setText:(id)text;
@end

@implementation SURedeemCodeTextField

- (SURedeemCodeTextField)initWithHeight:(double)height
{
  v8.receiver = self;
  v8.super_class = SURedeemCodeTextField;
  v4 = [(SURedeemCodeTextField *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_height = height;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SURedeemCodeTextField *)v5 setBackgroundColor:clearColor];

    [(SURedeemCodeTextField *)v5 _setupSubviews];
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  textField = [(SURedeemCodeTextField *)self textField];
  [textField setDelegate:delegateCopy];
}

- (void)setPlaceholder:(id)placeholder
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB878];
  placeholderCopy = placeholder;
  v6 = [v4 systemFontOfSize:16.0];
  v7 = *MEMORY[0x1E69DB648];
  v15[0] = v6;
  v8 = *MEMORY[0x1E69DB650];
  v14[0] = v7;
  v14[1] = v8;
  tintColor = [(SURedeemCodeTextField *)self tintColor];
  v10 = tintColor;
  if (!tintColor)
  {
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.7 alpha:1.0];
  }

  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  if (!tintColor)
  {
  }

  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:placeholderCopy attributes:v11];
  textField = [(SURedeemCodeTextField *)self textField];
  [textField setAttributedPlaceholder:v12];
}

- (void)setText:(id)text
{
  textCopy = text;
  textField = [(SURedeemCodeTextField *)self textField];
  [textField setText:textCopy];
}

- (UITextFieldDelegate)delegate
{
  textField = [(SURedeemCodeTextField *)self textField];
  delegate = [textField delegate];

  return delegate;
}

- (NSString)placeholder
{
  textField = [(SURedeemCodeTextField *)self textField];
  placeholder = [textField placeholder];

  return placeholder;
}

- (NSString)text
{
  textField = [(SURedeemCodeTextField *)self textField];
  text = [textField text];

  return text;
}

- (void)_setupSubviews
{
  [(SURedeemCodeTextField *)self _setupVisualEffectView];

  [(SURedeemCodeTextField *)self _setupTextField];
}

- (void)_setupVisualEffectView
{
  v5 = [MEMORY[0x1E69DC730] effectWithStyle:10];
  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
  [(SURedeemCodeTextField *)self addSubview:v3];
  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v3;
}

- (void)_setupTextField
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITextField *)v3 setBackgroundColor:clearColor];

  [(UITextField *)v3 setAutocorrectionType:1];
  [(UITextField *)v3 setAutocapitalizationType:3];
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
  [(UITextField *)v3 setFont:v6];
  [(SURedeemCodeTextField *)self addSubview:v3];
  textField = self->_textField;
  self->_textField = v3;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SURedeemCodeTextField;
  [(SURedeemCodeTextField *)&v18 layoutSubviews];
  [(SURedeemCodeTextField *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SURedeemCodeTextField *)self safeAreaInsets];
  v12 = v11;
  [(SURedeemCodeTextField *)self safeAreaInsets];
  v14 = v13;
  visualEffectView = [(SURedeemCodeTextField *)self visualEffectView];
  [visualEffectView setFrame:{v4, v6, v8, v10}];

  textField = [(SURedeemCodeTextField *)self textField];
  [(SURedeemCodeTextField *)self height];
  [textField setFrame:{v12 + 16.0, v6, v8 - (v12 + 32.0 + v14), v17}];
}

@end