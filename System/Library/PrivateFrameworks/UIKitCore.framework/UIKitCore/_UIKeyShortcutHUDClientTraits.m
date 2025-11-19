@interface _UIKeyShortcutHUDClientTraits
+ (id)traitsWithReferenceTraitEnvironment:(id)a3 referenceKeyboardEvent:(id)a4;
- (_UIKeyShortcutHUDClientTraits)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIKeyShortcutHUDClientTraits

+ (id)traitsWithReferenceTraitEnvironment:(id)a3 referenceKeyboardEvent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 traitCollection];
  [v7 setLayoutDirection:{objc_msgSend(v8, "layoutDirection")}];

  v9 = [v6 traitCollection];

  [v7 setUserInterfaceStyle:{objc_msgSend(v9, "userInterfaceStyle")}];
  [v7 setHasArabicHardwareKeyboard:0];
  [v7 setGlobeKeyLabelHasGlobeSymbol:1];
  if (v5)
  {
    if ([v5 _hidEvent])
    {
      [v5 _hidEvent];
      SenderID = IOHIDEventGetSenderID();
    }

    else
    {
      SenderID = 0;
    }

    v11 = [UIApp getKeyboardDevicePropertiesForSenderID:SenderID shouldUpdate:0];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 language];
      [v7 setHasArabicHardwareKeyboard:{objc_msgSend(v13, "isEqualToString:", @"Arabic"}];

      [v7 setGlobeKeyLabelHasGlobeSymbol:{objc_msgSend(v12, "globeKeyLabelHasGlobeSymbol")}];
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  layoutDirection = self->_layoutDirection;
  v5 = a3;
  [v5 encodeInteger:layoutDirection forKey:@"layoutDirection"];
  [v5 encodeInteger:self->_userInterfaceStyle forKey:@"userInterfaceStyle"];
  [v5 encodeBool:self->_hasArabicHardwareKeyboard forKey:@"hasArabicHardwareKeyboard"];
  [v5 encodeBool:self->_globeKeyLabelHasGlobeSymbol forKey:@"globeKeyLabelHasGlobeSymbol"];
}

- (_UIKeyShortcutHUDClientTraits)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyShortcutHUDClientTraits *)self init];
  if (v5)
  {
    v5->_layoutDirection = [v4 decodeIntegerForKey:@"layoutDirection"];
    v5->_userInterfaceStyle = [v4 decodeIntegerForKey:@"userInterfaceStyle"];
    v5->_hasArabicHardwareKeyboard = [v4 decodeBoolForKey:@"hasArabicHardwareKeyboard"];
    v5->_globeKeyLabelHasGlobeSymbol = [v4 decodeBoolForKey:@"globeKeyLabelHasGlobeSymbol"];
  }

  return v5;
}

@end