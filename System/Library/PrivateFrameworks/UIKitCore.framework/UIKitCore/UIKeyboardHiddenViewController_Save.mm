@interface UIKeyboardHiddenViewController_Save
- (void)setAutofillVC:(id)c;
@end

@implementation UIKeyboardHiddenViewController_Save

- (void)setAutofillVC:(id)c
{
  objc_storeStrong(&self->super._autofillVC, c);
  cCopy = c;
  [(_SFPasswordViewController *)self->super._autofillVC setDelegate:self];
}

@end