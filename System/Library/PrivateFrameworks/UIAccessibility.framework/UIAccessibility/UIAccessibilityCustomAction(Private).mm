@interface UIAccessibilityCustomAction(Private)
- (id)_accessibilityAXAttributedName;
- (id)_accessibilityCustomActionIdentifier;
- (uint64_t)_accessibilityMatchesCustomActionIdentifier:()Private;
@end

@implementation UIAccessibilityCustomAction(Private)

- (id)_accessibilityCustomActionIdentifier
{
  _accessibilityInternalCustomActionIdentifier = [self _accessibilityInternalCustomActionIdentifier];

  if (_accessibilityInternalCustomActionIdentifier)
  {
    _accessibilityInternalCustomActionIdentifier2 = [self _accessibilityInternalCustomActionIdentifier];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    _accessibilityAXAttributedName = [self _accessibilityAXAttributedName];
    target = [self target];
    v7 = NSStringFromSelector([self selector]);
    _accessibilityInternalCustomActionIdentifier2 = [v4 stringWithFormat:@"Name:%@\nTarget:%p\nSelector:%@", _accessibilityAXAttributedName, target, v7];
  }

  return _accessibilityInternalCustomActionIdentifier2;
}

- (uint64_t)_accessibilityMatchesCustomActionIdentifier:()Private
{
  v4 = a3;
  _accessibilityCustomActionIdentifier = [self _accessibilityCustomActionIdentifier];
  v6 = [_accessibilityCustomActionIdentifier isEqualToString:v4];

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

  v9 = [self impOrNullForSelector:v3];
  if (!v9 || (v9(self, v3), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [self impOrNullForSelector:v8];
    if (v11)
    {
      v10 = v11(self, v8);
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