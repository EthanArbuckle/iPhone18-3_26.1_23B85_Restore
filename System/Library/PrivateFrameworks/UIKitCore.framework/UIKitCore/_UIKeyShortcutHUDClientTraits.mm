@interface _UIKeyShortcutHUDClientTraits
+ (id)traitsWithReferenceTraitEnvironment:(id)environment referenceKeyboardEvent:(id)event;
- (_UIKeyShortcutHUDClientTraits)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIKeyShortcutHUDClientTraits

+ (id)traitsWithReferenceTraitEnvironment:(id)environment referenceKeyboardEvent:(id)event
{
  eventCopy = event;
  environmentCopy = environment;
  v7 = objc_opt_new();
  traitCollection = [environmentCopy traitCollection];
  [v7 setLayoutDirection:{objc_msgSend(traitCollection, "layoutDirection")}];

  traitCollection2 = [environmentCopy traitCollection];

  [v7 setUserInterfaceStyle:{objc_msgSend(traitCollection2, "userInterfaceStyle")}];
  [v7 setHasArabicHardwareKeyboard:0];
  [v7 setGlobeKeyLabelHasGlobeSymbol:1];
  if (eventCopy)
  {
    if ([eventCopy _hidEvent])
    {
      [eventCopy _hidEvent];
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
      language = [v11 language];
      [v7 setHasArabicHardwareKeyboard:{objc_msgSend(language, "isEqualToString:", @"Arabic"}];

      [v7 setGlobeKeyLabelHasGlobeSymbol:{objc_msgSend(v12, "globeKeyLabelHasGlobeSymbol")}];
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  layoutDirection = self->_layoutDirection;
  coderCopy = coder;
  [coderCopy encodeInteger:layoutDirection forKey:@"layoutDirection"];
  [coderCopy encodeInteger:self->_userInterfaceStyle forKey:@"userInterfaceStyle"];
  [coderCopy encodeBool:self->_hasArabicHardwareKeyboard forKey:@"hasArabicHardwareKeyboard"];
  [coderCopy encodeBool:self->_globeKeyLabelHasGlobeSymbol forKey:@"globeKeyLabelHasGlobeSymbol"];
}

- (_UIKeyShortcutHUDClientTraits)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIKeyShortcutHUDClientTraits *)self init];
  if (v5)
  {
    v5->_layoutDirection = [coderCopy decodeIntegerForKey:@"layoutDirection"];
    v5->_userInterfaceStyle = [coderCopy decodeIntegerForKey:@"userInterfaceStyle"];
    v5->_hasArabicHardwareKeyboard = [coderCopy decodeBoolForKey:@"hasArabicHardwareKeyboard"];
    v5->_globeKeyLabelHasGlobeSymbol = [coderCopy decodeBoolForKey:@"globeKeyLabelHasGlobeSymbol"];
  }

  return v5;
}

@end