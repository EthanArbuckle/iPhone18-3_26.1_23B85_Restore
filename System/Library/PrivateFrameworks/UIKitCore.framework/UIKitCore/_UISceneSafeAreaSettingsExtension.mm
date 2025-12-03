@interface _UISceneSafeAreaSettingsExtension
- (UIEdgeInsets)safeAreaEdgeInsets;
- (_UICornerInsets)safeAreaCornerInsets;
- (void)safeAreaCornerInsets:(_UICornerInsets *)insets;
- (void)safeAreaEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation _UISceneSafeAreaSettingsExtension

- (UIEdgeInsets)safeAreaEdgeInsets
{
  v2 = [(_UISceneSafeAreaSettingsExtension *)self valueForProperty:sel_safeAreaEdgeInsetResolver expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    [v2 safeAreaEdgeInsetsForOrientation:0];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
    v9 = 0.0;
    v7 = 0.0;
    v5 = 0.0;
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)safeAreaEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8 = [(_UISceneSafeAreaSettingsExtension *)self valueForProperty:sel_safeAreaEdgeInsetResolver expectedClass:objc_opt_class()];
  if (!v8)
  {
    right = [[_UISceneSafeAreaEdgeInsetConcreteResolver alloc] initWithSafeAreaEdgeInsets:top, left, bottom, right];
    [(_UISceneSafeAreaSettingsExtension *)self setValue:right forProperty:sel_safeAreaEdgeInsetResolver];
    v8 = right;
  }
}

- (_UICornerInsets)safeAreaCornerInsets
{
  v4 = [(_UISceneSafeAreaSettingsExtension *)self valueForProperty:sel_safeAreaCornerInsetResolver expectedClass:objc_opt_class()];
  retstr->topLeft = 0u;
  retstr->bottomLeft = 0u;
  retstr->bottomRight = 0u;
  retstr->topRight = 0u;
  if (v4)
  {
    v6 = v4;
    [v4 safeAreaCornerInsetsForOrientation:0];
    v4 = v6;
  }

  return result;
}

- (void)safeAreaCornerInsets:(_UICornerInsets *)insets
{
  v5 = [_UISceneSafeAreaCornerInsetConcreteResolver alloc];
  bottomLeft = insets->bottomLeft;
  v9[0] = insets->topLeft;
  v9[1] = bottomLeft;
  topRight = insets->topRight;
  v9[2] = insets->bottomRight;
  v9[3] = topRight;
  v8 = [(_UISceneSafeAreaCornerInsetConcreteResolver *)v5 initWithSafeAreaCornerInsets:v9];
  [(_UISceneSafeAreaSettingsExtension *)self setValue:v8 forProperty:sel_safeAreaCornerInsetResolver];
}

@end