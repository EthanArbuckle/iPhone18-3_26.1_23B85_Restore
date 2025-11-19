@interface UIAccessibilityCustomAction
@end

@implementation UIAccessibilityCustomAction

Method __70__UIAccessibilityCustomAction_Private___accessibilityAXAttributedName__block_invoke()
{
  v0 = objc_opt_class();
  _accessibilityAXAttributedName_baseNameMethod_0 = class_getInstanceMethod(v0, sel_name);
  v1 = objc_opt_class();
  result = class_getInstanceMethod(v1, sel_attributedName);
  _accessibilityAXAttributedName_baseAttributedNameMethod_0 = result;
  return result;
}

@end