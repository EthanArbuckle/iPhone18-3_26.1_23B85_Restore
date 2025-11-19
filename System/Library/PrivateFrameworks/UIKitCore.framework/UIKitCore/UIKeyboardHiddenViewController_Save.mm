@interface UIKeyboardHiddenViewController_Save
- (void)setAutofillVC:(id)a3;
@end

@implementation UIKeyboardHiddenViewController_Save

- (void)setAutofillVC:(id)a3
{
  objc_storeStrong(&self->super._autofillVC, a3);
  v5 = a3;
  [(_SFPasswordViewController *)self->super._autofillVC setDelegate:self];
}

@end