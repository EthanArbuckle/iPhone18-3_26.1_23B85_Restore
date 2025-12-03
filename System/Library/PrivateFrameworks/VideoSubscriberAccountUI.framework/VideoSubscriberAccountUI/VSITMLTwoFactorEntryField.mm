@interface VSITMLTwoFactorEntryField
- (void)setAssociatedTextFieldElement:(id)element;
- (void)textDidChangeForKeyboard:(id)keyboard;
@end

@implementation VSITMLTwoFactorEntryField

- (void)setAssociatedTextFieldElement:(id)element
{
  elementCopy = element;
  associatedTextFieldElement = self->_associatedTextFieldElement;
  if (associatedTextFieldElement != elementCopy)
  {
    v9 = elementCopy;
    keyboard = [(IKTextFieldElement *)associatedTextFieldElement keyboard];
    [keyboard setDelegate:0];

    objc_storeStrong(&self->_associatedTextFieldElement, element);
    keyboard2 = [(IKTextFieldElement *)v9 keyboard];
    [keyboard2 setDelegate:self];
    [(VSITMLTwoFactorEntryField *)self textDidChangeForKeyboard:keyboard2];
  }

  MEMORY[0x2821F96F8]();
}

- (void)textDidChangeForKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  VSRequireMainThread();
  text = [keyboardCopy text];

  if (text)
  {
    v6 = text;
  }

  else
  {
    v6 = &stru_2880B8BB0;
  }

  v7 = v6;
  [(VSTwoFactorEntryTextField *)self setText:?];
}

@end