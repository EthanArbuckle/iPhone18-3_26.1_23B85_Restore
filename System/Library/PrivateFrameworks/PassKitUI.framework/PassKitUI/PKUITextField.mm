@interface PKUITextField
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (PKUITextField)init;
@end

@implementation PKUITextField

- (PKUITextField)init
{
  v3.receiver = self;
  v3.super_class = PKUITextField;
  result = [(PKUITextField *)&v3 init];
  if (result)
  {
    result->_allowsTextFromCamera = 1;
  }

  return result;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_captureTextFromCamera_ == a3)
  {
    if (!self->_allowsTextFromCamera)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v11.receiver = self;
    v7 = &v11;
  }

  else
  {
    v10 = self;
    v7 = &v10;
  }

  v7->super_class = PKUITextField;
  v8 = [(objc_super *)v7 canPerformAction:a3 withSender:v6, v10];
LABEL_6:

  return v8;
}

@end