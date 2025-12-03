@interface UITextField(SUScriptTextFieldAdditions)
- (uint64_t)configureFromScriptTextField:()SUScriptTextFieldAdditions;
@end

@implementation UITextField(SUScriptTextFieldAdditions)

- (uint64_t)configureFromScriptTextField:()SUScriptTextFieldAdditions
{
  [self setAutocapitalizationType:{__SUAutocapitalizationTypeForString(objc_msgSend(a3, "_autocapitalizationType"))}];
  [self setAutocorrectionType:{__SUAutocorrectionTypeForString(objc_msgSend(a3, "_autocorrectionType"))}];
  [self setKeyboardType:{__SUKeyboardTypeForString(objc_msgSend(a3, "_keyboardType"))}];
  [self setPlaceholder:{objc_msgSend(a3, "_copyPlaceholder")}];
  _copyValue = [a3 _copyValue];

  return [self setText:_copyValue];
}

@end