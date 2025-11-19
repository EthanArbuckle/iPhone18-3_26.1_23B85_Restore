@interface UIAccessibilityCustomAction(Private)
- (id)_accessibilityAXAttributedName;
- (id)_accessibilityCustomActionIdentifier;
- (uint64_t)_accessibilityMatchesCustomActionIdentifier:()Private;
@end

@implementation UIAccessibilityCustomAction(Private)

- (id)_accessibilityCustomActionIdentifier
{
  v2 = [a1 _accessibilityInternalCustomActionIdentifier];

  if (v2)
  {
    v3 = [a1 _accessibilityInternalCustomActionIdentifier];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [a1 _accessibilityAXAttributedName];
    v6 = [a1 target];
    v7 = NSStringFromSelector([a1 selector]);
    v3 = [v4 stringWithFormat:@"Name:%@\nTarget:%p\nSelector:%@", v5, v6, v7];
  }

  return v3;
}

- (uint64_t)_accessibilityMatchesCustomActionIdentifier:()Private
{
  v4 = a3;
  v5 = [a1 _accessibilityCustomActionIdentifier];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (id)_accessibilityAXAttributedName
{
  if (_accessibilityAXAttributedName_onceToken_0 != -1)
  {
    [UIAccessibilityCustomAction(Private) _accessibilityAXAttributedName];
  }

  v2 = objc_opt_class();
  v3 = sel_name;
  InstanceMethod = class_getInstanceMethod(v2, sel_name);
  v5 = objc_opt_class();
  v6 = class_getInstanceMethod(v5, sel_attributedName);
  v7 = InstanceMethod != _accessibilityAXAttributedName_baseNameMethod_0 && v6 == _accessibilityAXAttributedName_baseAttributedNameMethod_0;
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