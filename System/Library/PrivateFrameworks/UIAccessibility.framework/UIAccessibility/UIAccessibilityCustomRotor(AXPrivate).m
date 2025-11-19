@interface UIAccessibilityCustomRotor(AXPrivate)
- (id)_accessibilityAXAttributedName;
@end

@implementation UIAccessibilityCustomRotor(AXPrivate)

- (id)_accessibilityAXAttributedName
{
  if (_accessibilityAXAttributedName_onceToken != -1)
  {
    [UIAccessibilityCustomRotor(AXPrivate) _accessibilityAXAttributedName];
  }

  v2 = objc_opt_class();
  v3 = sel_name;
  InstanceMethod = class_getInstanceMethod(v2, sel_name);
  v5 = objc_opt_class();
  v6 = class_getInstanceMethod(v5, sel_attributedName);
  v7 = InstanceMethod != _accessibilityAXAttributedName_baseNameMethod && v6 == _accessibilityAXAttributedName_baseAttributedNameMethod;
  if (v7)
  {
    v8 = sel_attributedName;
  }

  else
  {
    v8 = sel_name;
  }

  if (!v7)
  {
    v3 = sel_attributedName;
  }

  v9 = [a1 impOrNullForSelector:v3];
  if (!v9 || (v9(a1, v3), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [a1 impOrNullForSelector:v8];
    if (v11)
    {
      v10 = v11(a1, v8);
    }

    else
    {
      v10 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:v10];

    v10 = v12;
  }

  return v10;
}

@end