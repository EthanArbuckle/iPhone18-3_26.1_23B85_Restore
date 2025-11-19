@interface VSITMLCredentialEntryField
- (void)setAssociatedTextFieldElement:(id)a3;
- (void)textDidChangeForKeyboard:(id)a3;
@end

@implementation VSITMLCredentialEntryField

- (void)setAssociatedTextFieldElement:(id)a3
{
  v5 = a3;
  associatedTextFieldElement = self->_associatedTextFieldElement;
  if (associatedTextFieldElement != v5)
  {
    v9 = v5;
    v7 = [(IKTextFieldElement *)associatedTextFieldElement keyboard];
    [v7 setDelegate:0];

    objc_storeStrong(&self->_associatedTextFieldElement, a3);
    v8 = [(IKTextFieldElement *)v9 keyboard];
    [v8 setDelegate:self];
    [(VSITMLCredentialEntryField *)self textDidChangeForKeyboard:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)textDidChangeForKeyboard:(id)a3
{
  v4 = a3;
  VSRequireMainThread();
  v5 = [v4 text];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_2880B8BB0;
  }

  v7 = v6;
  [(VSCredentialEntryField *)self setText:?];
}

@end