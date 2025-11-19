@interface UITextField(SUScriptTextFieldAdditions)
- (uint64_t)configureFromScriptTextField:()SUScriptTextFieldAdditions;
@end

@implementation UITextField(SUScriptTextFieldAdditions)

- (uint64_t)configureFromScriptTextField:()SUScriptTextFieldAdditions
{
  [a1 setAutocapitalizationType:{__SUAutocapitalizationTypeForString(objc_msgSend(a3, "_autocapitalizationType"))}];
  [a1 setAutocorrectionType:{__SUAutocorrectionTypeForString(objc_msgSend(a3, "_autocorrectionType"))}];
  [a1 setKeyboardType:{__SUKeyboardTypeForString(objc_msgSend(a3, "_keyboardType"))}];
  [a1 setPlaceholder:{objc_msgSend(a3, "_copyPlaceholder")}];
  v5 = [a3 _copyValue];

  return [a1 setText:v5];
}

@end