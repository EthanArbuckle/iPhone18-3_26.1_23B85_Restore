@interface UIAccessibilityCustomRotor
@end

@implementation UIAccessibilityCustomRotor

Method __71__UIAccessibilityCustomRotor_AXPrivate___accessibilityAXAttributedName__block_invoke()
{
  v0 = objc_opt_class();
  _accessibilityAXAttributedName_baseNameMethod = class_getInstanceMethod(v0, sel_name);
  v1 = objc_opt_class();
  result = class_getInstanceMethod(v1, sel_attributedName);
  _accessibilityAXAttributedName_baseAttributedNameMethod = result;
  return result;
}

@end