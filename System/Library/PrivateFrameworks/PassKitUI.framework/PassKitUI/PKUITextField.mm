@interface PKUITextField
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_captureTextFromCamera_ == action)
  {
    if (!self->_allowsTextFromCamera)
    {
      selfCopy = 0;
      goto LABEL_6;
    }

    v11.receiver = self;
    v7 = &v11;
  }

  else
  {
    selfCopy = self;
    v7 = &selfCopy;
  }

  v7->super_class = PKUITextField;
  selfCopy = [(objc_super *)v7 canPerformAction:action withSender:senderCopy, selfCopy];
LABEL_6:

  return selfCopy;
}

@end