@interface UIDocumentPasswordView
- (UIDocumentPasswordView)initWithDocumentName:(id)name;
- (void)_passwordEntered:(id)entered;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation UIDocumentPasswordView

- (UIDocumentPasswordView)initWithDocumentName:(id)name
{
  v14.receiver = self;
  v14.super_class = UIDocumentPasswordView;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(UIView *)&v14 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  if (v8)
  {
    v9 = [[UILabel alloc] initWithFrame:v4, v5, v6, v7];
    v8->_label = v9;
    [(UILabel *)v9 setFont:[(UIDocumentPasswordView *)v8 _labelFont]];
    [(UILabel *)v8->_label setTextColor:[(UIDocumentPasswordView *)v8 _labelTextColor]];
    [(UILabel *)v8->_label setBaselineAdjustment:1];
    label = v8->_label;
    if (name)
    {
      name = [MEMORY[0x1E696AEC0] stringWithFormat:_UINSLocalizedStringWithDefaultValue(@"The document “%@” is password protected.", @"The document “%@” is password protected.", name];
    }

    else
    {
      name = _UINSLocalizedStringWithDefaultValue(@"This document is password protected.", @"This document is password protected.");
    }

    [(UILabel *)label setText:name];
    [(UILabel *)v8->_label setLineBreakMode:0];
    [(UIView *)v8->_label setBackgroundColor:+[UIColor clearColor]];
    [(UILabel *)v8->_label setTextAlignment:1];
    [(UILabel *)v8->_label setNumberOfLines:0];
    [(UIView *)v8 addSubview:v8->_label];
    v12 = [(UITextField *)[UIDocumentPasswordField alloc] initWithFrame:v4, v5, v6, v7];
    v8->_passwordTextField = v12;
    [(UITextField *)v12 setPlaceholder:_UINSLocalizedStringWithDefaultValue(@"Password", @"Password")];
    [(UITextField *)v8->_passwordTextField setContentVerticalAlignment:0];
    [(UIDocumentPasswordField *)v8->_passwordTextField setAutocapitalizationType:0];
    [(UIDocumentPasswordField *)v8->_passwordTextField setAutocorrectionType:1];
    [(UITextField *)v8->_passwordTextField setBorderStyle:3];
    [(UITextField *)v8->_passwordTextField setTextAlignment:1];
    [(UIDocumentPasswordField *)v8->_passwordTextField setReturnKeyType:1];
    [(UITextField *)v8->_passwordTextField setClearsOnBeginEditing:1];
    [(UITextField *)v8->_passwordTextField setSecureTextEntry:1];
    [(UITextField *)v8->_passwordTextField setDelegate:v8];
    [(UIView *)v8 addSubview:v8->_passwordTextField];
    [(UIControl *)v8->_passwordTextField addTarget:v8 action:sel__passwordEntered_ forControlEvents:0x80000];
    [(UIView *)v8 setBackgroundColor:+[UIColor systemGroupedBackgroundColor]];
  }

  return v8;
}

- (void)dealloc
{
  [(UIView *)self->_label removeFromSuperview];

  [(UITextField *)self->_passwordTextField removeFromSuperview];
  v3.receiver = self;
  v3.super_class = UIDocumentPasswordView;
  [(UIView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = UIDocumentPasswordView;
  [(UIView *)&v14 layoutSubviews];
  [(UIView *)self bounds];
  width = v15.size.width;
  if (!CGRectIsEmpty(v15))
  {
    [(UIDocumentPasswordView *)self _labelHorizontalOffset];
    v5 = v4;
    [(UIView *)self bounds];
    UIRoundToViewScale(self);
    v7 = v6;
    [(UIDocumentPasswordView *)self _labelHorizontalOffset];
    v9 = width - (v8 + v8);
    [(UIDocumentPasswordView *)self _textFieldWidth];
    v11 = (width - v10) * 0.5;
    [(UIDocumentPasswordView *)self _textFieldWidth];
    v13 = v12;
    [(UILabel *)self->_label setFrame:v5, v7, v9, 62.0];
    [(UITextField *)self->_passwordTextField setFrame:v11, v7 + 62.0 + 8.0, v13, 31.0];
  }
}

- (void)drawRect:(CGRect)rect
{
  v16.receiver = self;
  v16.super_class = UIDocumentPasswordView;
  [(UIView *)&v16 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v5);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v7 = DeviceRGB;
    v8 = CGGradientCreateWithColorComponents(DeviceRGB, components, locations, 2uLL);
    if (v8)
    {
      v9 = v8;
      [(UIView *)self bounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      MidX = CGRectGetMidX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v15 = CGRectGetMaxY(v20) * 0.5;
      v17.y = 0.0;
      v17.x = MidX;
      v18.x = MidX;
      v18.y = v15;
      CGContextDrawLinearGradient(v5, v9, v17, v18, 0);
      CGContextSetFillColor(v5, dbl_18A683D30);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v22.size.width = CGRectGetWidth(v21);
      v22.origin.x = 0.0;
      v22.origin.y = v15;
      v22.size.height = v15;
      CGContextFillRect(v5, v22);
      CGGradientRelease(v9);
    }

    CGColorSpaceRelease(v7);
  }

  CGContextRestoreGState(v5);
}

- (void)textFieldDidBeginEditing:(id)editing
{
  if (objc_opt_respondsToSelector())
  {
    passwordDelegate = self->passwordDelegate;

    [(UIDocumentPasswordViewDelegate *)passwordDelegate didBeginEditingPassword:editing inView:self];
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  if (objc_opt_respondsToSelector())
  {
    passwordDelegate = self->passwordDelegate;

    [(UIDocumentPasswordViewDelegate *)passwordDelegate didEndEditingPassword:editing inView:self];
  }
}

- (void)_passwordEntered:(id)entered
{
  passwordDelegate = self->passwordDelegate;
  text = [(UITextField *)self->_passwordTextField text];

  [(UIDocumentPasswordViewDelegate *)passwordDelegate userDidEnterPassword:text forPasswordView:self];
}

@end