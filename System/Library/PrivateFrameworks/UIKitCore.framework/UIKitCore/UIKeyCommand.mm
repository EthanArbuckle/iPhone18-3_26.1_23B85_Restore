@interface UIKeyCommand
+ (UIKeyCommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action input:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags propertyList:(id)propertyList;
+ (UIKeyCommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action input:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags propertyList:(id)propertyList alternates:(NSArray *)alternates;
+ (UIKeyCommand)commandWithTitle:(id)a3 imageName:(id)a4 action:(SEL)a5 input:(id)a6 modifierFlags:(int64_t)a7 propertyList:(id)a8 leafOrCommandAlternates:(id)a9;
+ (UIKeyCommand)keyCommandWithCompactInput:(id)a3 action:(SEL)a4 upAction:(SEL)a5;
+ (UIKeyCommand)keyCommandWithInput:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags action:(SEL)action;
+ (UIKeyCommand)keyCommandWithInput:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags action:(SEL)action discoverabilityTitle:(NSString *)discoverabilityTitle;
+ (UIKeyCommand)keyCommandWithInput:(id)a3 modifierFlags:(int64_t)a4 action:(SEL)a5 upAction:(SEL)a6;
+ (UIKeyCommand)keyCommandWithInput:(id)a3 modifierFlags:(int64_t)a4 action:(SEL)a5 upAction:(SEL)a6 discoverabilityTitle:(id)a7;
+ (UIKeyCommand)keyCommandWithInput:(id)a3 modifierFlags:(int64_t)a4 buttonType:(int64_t)a5;
+ (UIKeyCommand)keyCommandWithKeyCode:(int64_t)a3 modifierFlags:(int64_t)a4 action:(SEL)a5;
+ (UIKeyCommand)keyCommandWithKeyCode:(int64_t)a3 modifierFlags:(int64_t)a4 action:(SEL)a5 discoverabilityTitle:(id)a6;
+ (UIKeyCommand)keyCommandWithKeyCodes:(id)a3 modifierFlags:(int64_t)a4 action:(SEL)a5;
+ (UIKeyCommand)keyCommandWithKeyCodes:(id)a3 modifierFlags:(int64_t)a4 buttonType:(int64_t)a5;
- (BOOL)_isKeyCommandLikelyMirrored;
- (BOOL)_isKeyCommandLocalized;
- (BOOL)isEqual:(id)a3;
- (NSIndexSet)_keyCodes;
- (NSIndexSet)_layoutAwareKeyCodes;
- (NSString)_layoutAwareDisplayInputOverride;
- (NSString)_layoutAwareInput;
- (NSString)discoverabilityInput;
- (NSString)input;
- (SEL)upAction;
- (UIKeyCommand)init;
- (UIKeyCommand)initWithCoder:(NSCoder *)coder;
- (UIKeyCommand)initWithCommand:(id)a3;
- (UIKeyCommand)initWithKeyCommand:(id)a3;
- (UIKeyCommand)initWithTitle:(id)a3 image:(id)a4 imageName:(id)a5 action:(SEL)a6 input:(id)a7 modifierFlags:(int64_t)a8 propertyList:(id)a9 leafOrCommandAlternates:(id)a10 discoverabilityTitle:(id)a11 attributes:(unint64_t)a12 state:(int64_t)a13;
- (UIKeyCommand)initWithTitle:(id)a3 image:(id)a4 imageName:(id)a5 action:(SEL)a6 propertyList:(id)a7 leafOrCommandAlternates:(id)a8 discoverabilityTitle:(id)a9 attributes:(unint64_t)a10 state:(int64_t)a11;
- (UIKeyModifierFlags)modifierFlags;
- (__GSKeyboard)_currentGSKeyboard;
- (id)_allowGlobeModifierKeyCommand;
- (id)_enumerationPriorityNumber;
- (id)_initWithCommand:(id)a3 keyboardShortcut:(id)a4;
- (id)_initWithInput:(id)a3 modifierFlags:(int64_t)a4 keyCodes:(id)a5 action:(SEL)a6 upAction:(SEL)a7 discoverabilityTitle:(id)a8 buttonType:(int64_t)a9;
- (id)_nonRepeatableKeyCommand;
- (id)_placeholderKeyCommand;
- (id)_readableStringForInputUsingWords:(BOOL)a3 forHUD:(BOOL)a4 outIsSingleCharacterOrKeySymbol:(BOOL *)a5;
- (id)_readableStringForModifierFlagsUsingWords:(BOOL)a3 forHUD:(BOOL)a4;
- (id)_safeCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_defaultEnumerationPriority;
- (int64_t)_layoutAwareModifierFlags;
- (unint64_t)hash;
- (void)_appendDescriptionComponentsToDescription:(id)a3;
- (void)_localizeWithGSKeyboard:(__GSKeyboard *)a3 automatically:(BOOL)a4 force:(BOOL)a5;
- (void)_performDownActionWithSender:(id)a3 target:(id)a4;
- (void)_performFallbackActionWithSender:(id)a3 target:(id)a4;
- (void)_performKeyCommandActionWithSender:(id)a3 target:(id)a4 actionHandler:(id)a5;
- (void)_performUpActionWithSender:(id)a3 target:(id)a4;
- (void)_setAllowsGlobeKeyModifier:(BOOL)a3;
- (void)_setEnumerationPriority:(int64_t)a3;
- (void)_setEventDeferringEnvironment:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)performWithSender:(id)a3 target:(id)a4;
- (void)setAllowsAutomaticLocalization:(BOOL)allowsAutomaticLocalization;
- (void)setAllowsAutomaticMirroring:(BOOL)allowsAutomaticMirroring;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setWantsPriorityOverSystemBehavior:(BOOL)wantsPriorityOverSystemBehavior;
@end

@implementation UIKeyCommand

- (int64_t)_defaultEnumerationPriority
{
  v3 = [(UIKeyCommand *)self input];
  v4 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalent(@"+");
  if ([v3 isEqualToString:v4] && -[UIKeyCommand modifierFlags](self, "modifierFlags") == 0x100000)
  {

    return -1;
  }

  v5 = [(UIKeyCommand *)self input];
  if ([v5 isEqualToString:@"UIKeyInputEscape"])
  {
    v6 = [(UIKeyCommand *)self modifierFlags];

    if (!v6)
    {
      return -1;
    }
  }

  else
  {
  }

  return 0;
}

- (NSString)input
{
  v2 = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut baseKeyCombination];
  v3 = [v2 keyEquivalent];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(UIKeyCommand *)self modifierFlags];
  v4 = [(UIKeyCommand *)self input];
  v5 = [v4 hash] ^ v3;
  v6 = [(UIKeyCommand *)self _keyCodes];
  v7 = v5 ^ [v6 hash];
  v8 = *(self + 46);

  return v7 ^ v8;
}

- (NSIndexSet)_keyCodes
{
  v2 = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut baseKeyCombination];
  v3 = [v2 keyCodes];

  return v3;
}

- (UIKeyModifierFlags)modifierFlags
{
  v2 = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut baseKeyCombination];
  v3 = [v2 modifierFlags];

  return v3;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v8 isEqualToString:@"_repeatable"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"repeatable"))
  {
    if (dyld_program_sdk_at_least())
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = NSStringFromSelector(a2);
      v11 = [v9 stringWithFormat:@"Do not set repeatable on UIKeyCommand using %@. Use the repeatBehavior property.", v10];

      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v11}];
    }

    else
    {
      v12 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        if ([v7 BOOLValue])
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        [(UICommand *)self setRepeatBehavior:v14];
      }
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = UIKeyCommand;
    [(UIKeyCommand *)&v15 setValue:v7 forKey:v8];
  }
}

- (NSString)_layoutAwareInput
{
  v2 = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination];
  v3 = [v2 keyEquivalent];

  return v3;
}

- (int64_t)_layoutAwareModifierFlags
{
  v2 = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination];
  v3 = [v2 modifierFlags];

  return v3;
}

- (NSIndexSet)_layoutAwareKeyCodes
{
  v2 = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination];
  v3 = [v2 keyCodes];

  return v3;
}

- (void)setAllowsAutomaticLocalization:(BOOL)allowsAutomaticLocalization
{
  v3 = allowsAutomaticLocalization;
  if ([(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut isAutomaticLocalizationEnabled]!= allowsAutomaticLocalization)
  {
    [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut setAutomaticLocalizationEnabled:v3];
    if (v3)
    {
      v5 = [(UIKeyCommand *)self _currentGSKeyboard];

      [(UIKeyCommand *)self _localizeWithGSKeyboard:v5 automatically:0 force:1];
    }
  }
}

- (void)setAllowsAutomaticMirroring:(BOOL)allowsAutomaticMirroring
{
  v3 = allowsAutomaticMirroring;
  if ([(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut isAutomaticMirroringEnabled]!= allowsAutomaticMirroring)
  {
    [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut setAutomaticMirroringEnabled:v3];
    if (v3)
    {
      v5 = [(UIKeyCommand *)self _currentGSKeyboard];

      [(UIKeyCommand *)self _localizeWithGSKeyboard:v5 automatically:0 force:1];
    }
  }
}

- (NSString)_layoutAwareDisplayInputOverride
{
  v2 = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination];
  v3 = [v2 displayKeyEquivalentOverride];

  return v3;
}

- (void)_setEnumerationPriority:(int64_t)a3
{
  if (self->_enumerationPriority != a3)
  {
    self->_enumerationPriority = a3;
  }
}

- (void)_setEventDeferringEnvironment:(id)a3
{
  v5 = a3;
  if (self->_eventDeferringEnvironment != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_eventDeferringEnvironment, a3);
    v5 = v6;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIKeyCommand;
  [(UICommand *)&v8 encodeWithCoder:v4];
  v5 = [(UIKeyCommand *)self input];
  [v4 encodeObject:v5 forKey:@"input"];

  v6 = [(UIKeyCommand *)self _keyCodes];

  if (v6)
  {
    v7 = [(UIKeyCommand *)self _keyCodes];
    [v4 encodeObject:v7 forKey:@"keyCodes"];
  }

  [v4 encodeInteger:-[UIKeyCommand modifierFlags](self forKey:{"modifierFlags"), @"modifierFlags"}];
  [v4 encodeBool:-[UIKeyCommand wantsPriorityOverSystemBehavior](self forKey:{"wantsPriorityOverSystemBehavior"), @"wantsPriorityOverSystemBehavior"}];
  [v4 encodeObject:self->_eventDeferringEnvironment forKey:@"eventDeferringEnvironment"];
  [v4 encodeBool:-[UIKeyCommand allowsAutomaticLocalization](self forKey:{"allowsAutomaticLocalization"), @"allowsAutomaticLocalization"}];
  [v4 encodeBool:-[UIKeyCommand allowsAutomaticMirroring](self forKey:{"allowsAutomaticMirroring"), @"allowsAutomaticMirroring"}];
  [v4 encodeInt32:LODWORD(self->_enumerationPriority) forKey:@"enumerationPriority"];
}

- (UIKeyCommand)init
{
  v3.receiver = self;
  v3.super_class = UIKeyCommand;
  return [(UICommand *)&v3 initWithTitle:&stru_1EFB14550 image:0 imageName:0 action:sel__nop propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];
}

- (UIKeyCommand)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v16.receiver = self;
  v16.super_class = UIKeyCommand;
  v5 = [(UICommand *)&v16 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    *(v5 + 46) = -1;
    v7 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    v8 = [(NSCoder *)v4 decodeIntegerForKey:@"modifierFlags"];
    if ([(NSCoder *)v4 containsValueForKey:@"keyCodes"])
    {
      v9 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyCodes"];
    }

    else
    {
      v9 = 0;
    }

    v10 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:v8 keyEquivalent:v7 keyCodes:v9];
    v11 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:v10];
    keyboardShortcut = v6->_keyboardShortcut;
    v6->_keyboardShortcut = v11;

    v6->_wantsPriorityOverSystemBehavior = [(NSCoder *)v4 _ui_decodeBoolForKey:@"wantsPriorityOverSystemBehavior" defaultValue:dyld_program_sdk_at_least() ^ 1];
    if ([(NSCoder *)v4 containsValueForKey:@"allowsAutomaticLocalization"])
    {
      [(_UIMenuLeafKeyboardShortcut *)v6->_keyboardShortcut setAutomaticLocalizationEnabled:[(NSCoder *)v4 decodeBoolForKey:@"allowsAutomaticLocalization"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"allowsAutomaticMirroring"])
    {
      [(_UIMenuLeafKeyboardShortcut *)v6->_keyboardShortcut setAutomaticMirroringEnabled:[(NSCoder *)v4 decodeBoolForKey:@"allowsAutomaticMirroring"]];
    }

    v13 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDeferringEnvironment"];
    v14 = v13;
    if (!v13)
    {
      v14 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    }

    objc_storeStrong(&v6->_eventDeferringEnvironment, v14);
    if (!v13)
    {
    }

    v6->_enumerationPriority = [(NSCoder *)v4 decodeInt32ForKey:@"enumerationPriority"];
  }

  return v6;
}

- (UIKeyCommand)initWithTitle:(id)a3 image:(id)a4 imageName:(id)a5 action:(SEL)a6 propertyList:(id)a7 leafOrCommandAlternates:(id)a8 discoverabilityTitle:(id)a9 attributes:(unint64_t)a10 state:(int64_t)a11
{
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"UIKeyCommand.m" lineNumber:245 description:@"Initializer is unavailable"];

  return 0;
}

- (UIKeyCommand)initWithCommand:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIKeyCommand.m" lineNumber:250 description:@"Initializer is unavailable"];

  return 0;
}

- (UIKeyCommand)initWithTitle:(id)a3 image:(id)a4 imageName:(id)a5 action:(SEL)a6 input:(id)a7 modifierFlags:(int64_t)a8 propertyList:(id)a9 leafOrCommandAlternates:(id)a10 discoverabilityTitle:(id)a11 attributes:(unint64_t)a12 state:(int64_t)a13
{
  v19 = a7;
  v27.receiver = self;
  v27.super_class = UIKeyCommand;
  v20 = [(UICommand *)&v27 initWithTitle:a3 image:a4 imageName:a5 action:a6 propertyList:a9 leafOrCommandAlternates:a10 discoverabilityTitle:a11 attributes:a12 state:a13];
  if (v20)
  {
    v21 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:a8 keyEquivalent:v19 keyCodes:0];
    v22 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:v21];
    keyboardShortcut = v20->_keyboardShortcut;
    v20->_keyboardShortcut = v22;

    v20->_upAction = 0;
    *(v20 + 46) = -1;
    v24 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    eventDeferringEnvironment = v20->_eventDeferringEnvironment;
    v20->_eventDeferringEnvironment = v24;

    v20->_enumerationPriority = [(UIKeyCommand *)v20 _defaultEnumerationPriority];
    v20->_wantsPriorityOverSystemBehavior = dyld_program_sdk_at_least() ^ 1;
  }

  return v20;
}

- (id)_initWithInput:(id)a3 modifierFlags:(int64_t)a4 keyCodes:(id)a5 action:(SEL)a6 upAction:(SEL)a7 discoverabilityTitle:(id)a8 buttonType:(int64_t)a9
{
  v15 = a3;
  v16 = a5;
  if (a8)
  {
    v17 = a8;
  }

  else
  {
    v17 = &stru_1EFB14550;
  }

  v26.receiver = self;
  v26.super_class = UIKeyCommand;
  v18 = [(UICommand *)&v26 initWithTitle:v17 image:0 imageName:0 action:a6 propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:a8 attributes:0 state:0];
  if (v18)
  {
    v19 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:a4 keyEquivalent:v15 keyCodes:v16];
    v20 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:v19];
    keyboardShortcut = v18->_keyboardShortcut;
    v18->_keyboardShortcut = v20;

    if (a7)
    {
      v22 = a7;
    }

    else
    {
      v22 = 0;
    }

    v18->_upAction = v22;
    *(v18 + 46) = a9;
    v23 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    eventDeferringEnvironment = v18->_eventDeferringEnvironment;
    v18->_eventDeferringEnvironment = v23;

    v18->_enumerationPriority = [(UIKeyCommand *)v18 _defaultEnumerationPriority];
    v18->_wantsPriorityOverSystemBehavior = dyld_program_sdk_at_least() ^ 1;
  }

  return v18;
}

- (id)_initWithCommand:(id)a3 keyboardShortcut:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UIKeyCommand.m" lineNumber:313 description:@"-[UIKeyCommand _initWithCommand:keyboardShortcut:] requires a non-nil keyboard shortcut"];
  }

  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(UIKeyCommand *)self initWithKeyCommand:v7];
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v19.receiver = self;
  v19.super_class = UIKeyCommand;
  v12 = [(UICommand *)&v19 initWithCommand:v7];
  v11 = v12;
  if (v12)
  {
    v12->_upAction = 0;
    *(v12 + 46) = -1;
    v12->_wantsPriorityOverSystemBehavior = dyld_program_sdk_at_least() ^ 1;
    v13 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    eventDeferringEnvironment = v11->_eventDeferringEnvironment;
    v11->_eventDeferringEnvironment = v13;

    v11->_enumerationPriority = [(UIKeyCommand *)v11 _defaultEnumerationPriority];
LABEL_8:
    v15 = [v8 copy];
    keyboardShortcut = v11->_keyboardShortcut;
    v11->_keyboardShortcut = v15;
  }

LABEL_9:

  return v11;
}

- (UIKeyCommand)initWithKeyCommand:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIKeyCommand;
  v5 = [(UICommand *)&v9 initWithCommand:v4];
  if (v5)
  {
    v6 = [v4[24] copy];
    keyboardShortcut = v5->_keyboardShortcut;
    v5->_keyboardShortcut = v6;

    v5->_upAction = v4[20];
    *(v5 + 188) = *(v5 + 188) & 0xFE | *(v4 + 188) & 1;
    *(v5 + 46) = *(v4 + 46);
    objc_storeStrong(&v5->_eventDeferringEnvironment, v4[21]);
    v5->_enumerationPriority = v4[22];
    v5->_allowsGlobeKeyModifier = *(v4 + 200);
    *(v5 + 188) = *(v5 + 188) & 0xFD | *(v4 + 188) & 2;
    v5->_wantsPriorityOverSystemBehavior = *(v4 + 201);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIKeyCommand alloc];

  return [(UIKeyCommand *)v4 initWithKeyCommand:self];
}

- (id)_safeCopy
{
  v2 = [[UIKeyCommand alloc] initWithKeyCommand:self];

  return v2;
}

+ (UIKeyCommand)commandWithTitle:(id)a3 imageName:(id)a4 action:(SEL)a5 input:(id)a6 modifierFlags:(int64_t)a7 propertyList:(id)a8 leafOrCommandAlternates:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a6;
  v19 = a4;
  v20 = a3;
  v21 = [[a1 alloc] initWithTitle:v20 image:0 imageName:v19 action:a5 input:v18 modifierFlags:a7 propertyList:v17 leafOrCommandAlternates:v16 discoverabilityTitle:0 attributes:0 state:0];

  return v21;
}

+ (UIKeyCommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action input:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags propertyList:(id)propertyList
{
  v14 = propertyList;
  v15 = input;
  v16 = image;
  v17 = title;
  v18 = [a1 alloc];
  v19 = [v18 initWithTitle:v17 image:v16 imageName:0 action:action input:v15 modifierFlags:modifierFlags propertyList:v14 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];

  return v19;
}

+ (UIKeyCommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action input:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags propertyList:(id)propertyList alternates:(NSArray *)alternates
{
  v16 = alternates;
  v17 = propertyList;
  v18 = input;
  v19 = image;
  v20 = title;
  v21 = [[a1 alloc] initWithTitle:v20 image:v19 imageName:0 action:action input:v18 modifierFlags:modifierFlags propertyList:v17 leafOrCommandAlternates:v16 discoverabilityTitle:0 attributes:0 state:0];

  return v21;
}

+ (UIKeyCommand)keyCommandWithInput:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags action:(SEL)action
{
  v8 = input;
  v9 = [[a1 alloc] _initWithInput:v8 modifierFlags:modifierFlags keyCodes:0 action:action upAction:0 discoverabilityTitle:0 buttonType:-1];

  return v9;
}

+ (UIKeyCommand)keyCommandWithInput:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags action:(SEL)action discoverabilityTitle:(NSString *)discoverabilityTitle
{
  v10 = discoverabilityTitle;
  v11 = input;
  v12 = [[a1 alloc] _initWithInput:v11 modifierFlags:modifierFlags keyCodes:0 action:action upAction:0 discoverabilityTitle:v10 buttonType:-1];

  return v12;
}

+ (UIKeyCommand)keyCommandWithInput:(id)a3 modifierFlags:(int64_t)a4 action:(SEL)a5 upAction:(SEL)a6
{
  v10 = a3;
  v11 = [[a1 alloc] _initWithInput:v10 modifierFlags:a4 keyCodes:0 action:a5 upAction:a6 discoverabilityTitle:0 buttonType:-1];

  return v11;
}

+ (UIKeyCommand)keyCommandWithCompactInput:(id)a3 action:(SEL)a4 upAction:(SEL)a5
{
  v8 = a3;
  v9 = [v8 mutableCopy];
  [v9 replaceOccurrencesOfString:@"⌘" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"⌥" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"⌃" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"⇧" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v9, "length")}];
  v10 = v8;
  if ([v10 containsString:@"⌘"])
  {
    v11 = 0x100000;
  }

  else
  {
    v11 = 0;
  }

  if ([v10 containsString:@"⌥"])
  {
    v11 |= 0x80000uLL;
  }

  if ([v10 containsString:@"⌃"])
  {
    v12 = v11 | 0x40000;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 containsString:@"⇧"];

  if (v13)
  {
    v14 = v12 | 0x20000;
  }

  else
  {
    v14 = v12;
  }

  v15 = [a1 keyCommandWithInput:v9 modifierFlags:v14 action:a4 upAction:a5];

  return v15;
}

+ (UIKeyCommand)keyCommandWithKeyCode:(int64_t)a3 modifierFlags:(int64_t)a4 action:(SEL)a5
{
  v8 = [a1 alloc];
  v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  v10 = [v8 _initWithInput:0 modifierFlags:a4 keyCodes:v9 action:a5 upAction:0 discoverabilityTitle:0 buttonType:-1];

  return v10;
}

+ (UIKeyCommand)keyCommandWithKeyCode:(int64_t)a3 modifierFlags:(int64_t)a4 action:(SEL)a5 discoverabilityTitle:(id)a6
{
  v10 = a6;
  v11 = [a1 alloc];
  v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  v13 = [v11 _initWithInput:0 modifierFlags:a4 keyCodes:v12 action:a5 upAction:0 discoverabilityTitle:v10 buttonType:-1];

  return v13;
}

+ (UIKeyCommand)keyCommandWithKeyCodes:(id)a3 modifierFlags:(int64_t)a4 action:(SEL)a5
{
  v8 = a3;
  v9 = [[a1 alloc] _initWithInput:0 modifierFlags:a4 keyCodes:v8 action:a5 upAction:0 discoverabilityTitle:0 buttonType:-1];

  return v9;
}

+ (UIKeyCommand)keyCommandWithKeyCodes:(id)a3 modifierFlags:(int64_t)a4 buttonType:(int64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] _initWithInput:0 modifierFlags:a4 keyCodes:v8 action:0 upAction:0 discoverabilityTitle:0 buttonType:a5];

  return v9;
}

+ (UIKeyCommand)keyCommandWithInput:(id)a3 modifierFlags:(int64_t)a4 buttonType:(int64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] _initWithInput:v8 modifierFlags:a4 keyCodes:0 action:0 upAction:0 discoverabilityTitle:0 buttonType:a5];

  return v9;
}

+ (UIKeyCommand)keyCommandWithInput:(id)a3 modifierFlags:(int64_t)a4 action:(SEL)a5 upAction:(SEL)a6 discoverabilityTitle:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = [[a1 alloc] _initWithInput:v13 modifierFlags:a4 keyCodes:0 action:a5 upAction:a6 discoverabilityTitle:v12 buttonType:-1];

  return v14;
}

- (void)_localizeWithGSKeyboard:(__GSKeyboard *)a3 automatically:(BOOL)a4 force:(BOOL)a5
{
  if ((*(self + 188) & 1) == 0)
  {
    v6 = a5;
    v7 = a4;
    keyboardShortcut = self->_keyboardShortcut;
    v11 = [(UICommand *)self _isDefaultCommand];
    v12 = [(UICommand *)self action];

    [(_UIMenuLeafKeyboardShortcut *)keyboardShortcut _localizeWithGSKeyboard:a3 automatically:v7 force:v6 forDefaultShortcut:v11 action:v12];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(UIKeyCommand *)self modifierFlags];
      if (v8 == [(UIKeyCommand *)v7 modifierFlags])
      {
        v9 = [(UIKeyCommand *)self input];
        v10 = [(UIKeyCommand *)v7 input];
        if (v9 == v10 || [v9 isEqual:v10])
        {
          v11 = [(UIKeyCommand *)self _keyCodes];
          v12 = [(UIKeyCommand *)v7 _keyCodes];
          if (v11 == v12 || [v11 isEqual:v12])
          {
            v13 = *(self + 46);
            v14 = [(UIKeyCommand *)v7 _buttonType]== v13;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (NSString)discoverabilityInput
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyCommand *)self _layoutAwareInput];

  if (v3)
  {
    v4 = [(UIKeyCommand *)self _layoutAwareInput];
  }

  else
  {
    v5 = [(UIKeyCommand *)self input];

    if (v5)
    {
      v4 = [(UIKeyCommand *)self input];
    }

    else
    {
      v4 = [UIApp _hardwareKeyboard];
      if (v4)
      {
        HIWORD(v9) = 0;
        v7 = [(UIKeyCommand *)self _layoutAwareKeyCodes];
        [v7 firstIndex];
        GSKeyboardTranslateKeyExtendedCommandWithUsagePage();

        v8 = [(UIKeyCommand *)self _layoutAwareKeyCodes:&v9 + 2];
        [v8 firstIndex];
        GSKeyboardTranslateKeyExtendedCommandWithUsagePage();

        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)_nonRepeatableKeyCommand
{
  v2 = [objc_alloc(objc_opt_class()) initWithKeyCommand:self];
  [v2 setRepeatBehavior:2];

  return v2;
}

- (id)_placeholderKeyCommand
{
  v2 = [objc_alloc(objc_opt_class()) initWithKeyCommand:self];
  v2[188] |= 1u;

  return v2;
}

- (id)_allowGlobeModifierKeyCommand
{
  v2 = [objc_alloc(objc_opt_class()) initWithKeyCommand:self];
  v2[200] = 1;

  return v2;
}

- (void)_setAllowsGlobeKeyModifier:(BOOL)a3
{
  if (self->_allowsGlobeKeyModifier != a3)
  {
    self->_allowsGlobeKeyModifier = a3;
  }
}

- (void)setWantsPriorityOverSystemBehavior:(BOOL)wantsPriorityOverSystemBehavior
{
  if (self->_wantsPriorityOverSystemBehavior != wantsPriorityOverSystemBehavior)
  {
    self->_wantsPriorityOverSystemBehavior = wantsPriorityOverSystemBehavior;
  }
}

- (SEL)upAction
{
  if (self->_upAction)
  {
    return self->_upAction;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isKeyCommandLocalized
{
  v3 = [(UIKeyCommand *)self _layoutAwareInput];
  if (v3)
  {
    v4 = [(UIKeyCommand *)self _layoutAwareInput];
    v5 = [(UIKeyCommand *)self input];
    if ([v4 isEqualToString:v5])
    {
      v6 = [(UIKeyCommand *)self _layoutAwareModifierFlags];
      v7 = v6 != [(UIKeyCommand *)self modifierFlags];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isKeyCommandLikelyMirrored
{
  if ([UIApp userInterfaceLayoutDirection] != 1)
  {
    return 0;
  }

  if (([(UIKeyCommand *)self modifierFlags]& 0x100000) == 0)
  {
    return 0;
  }

  if (![(UIKeyCommand *)self _isKeyCommandLocalized])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E69D9658];
  v4 = [(UIKeyCommand *)self _layoutAwareInput];
  LOBYTE(v3) = [v3 isMirroringCandidate:v4];

  return v3;
}

- (__GSKeyboard)_currentGSKeyboard
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _isHardwareKeyboardAvailable];

  if (!v3)
  {
    return 0;
  }

  v4 = UIApp;

  return [v4 _hardwareKeyboard:0];
}

- (void)_appendDescriptionComponentsToDescription:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = UIKeyCommand;
  [(UICommand *)&v19 _appendDescriptionComponentsToDescription:v4];
  upAction = self->_upAction;
  if (upAction)
  {
    v6 = NSStringFromSelector(upAction);
    [v4 appendFormat:@"; _upAction: %@", v6];
  }

  v7 = [(UIKeyCommand *)self input];
  v8 = [(UIKeyCommand *)self _keyCodes];
  if (![v7 length] && objc_msgSend(v8, "count"))
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __58__UIKeyCommand__appendDescriptionComponentsToDescription___block_invoke;
    v17 = &unk_1E70F3B48;
    v18 = v10;
    v11 = v10;
    [v8 enumerateIndexesUsingBlock:&v14];
    v12 = [v11 componentsJoinedByString:{@", "}];
    [v4 appendFormat:@"; keyCodes: {%@}", v12, v14, v15, v16, v17];

    goto LABEL_18;
  }

  if ([v7 isEqualToString:@" "])
  {
    v9 = @"<space>";
LABEL_16:

    v7 = v9;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"\t"])
  {
    v9 = @"<tab>";
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"\r"])
  {
    v9 = @"<return (\\r)>";
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"\n"])
  {
    v9 = @"<return (\\n)>";
    goto LABEL_16;
  }

  if (![v7 length])
  {
    v9 = @"<none>";
    goto LABEL_16;
  }

LABEL_17:
  [v4 appendFormat:@"; input: %@", v7];
LABEL_18:
  v13 = _UIKeyModiferFlagsDescription([(UIKeyCommand *)self modifierFlags]);
  if ([v13 length])
  {
    [v4 appendFormat:@"; modifierFlags: %@", v13];
  }
}

void __58__UIKeyCommand__appendDescriptionComponentsToDescription___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%lX", a2];
  [v2 addObject:v3];
}

- (id)_readableStringForModifierFlagsUsingWords:(BOOL)a3 forHUD:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination];
  v7 = [v6 _readableStringForModifierFlagsUsingWords:v5 forHUD:v4];

  return v7;
}

- (id)_readableStringForInputUsingWords:(BOOL)a3 forHUD:(BOOL)a4 outIsSingleCharacterOrKeySymbol:(BOOL *)a5
{
  v5 = a4;
  v6 = a3;
  v7 = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination:a3];
  v8 = [v7 _readableStringForKeyEquivalentUsingWords:v6 forHUD:v5 isSingleCharacterOrKeySymbol:0];

  return v8;
}

- (void)_performKeyCommandActionWithSender:(id)a3 target:(id)a4 actionHandler:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (![(UIKeyCommand *)self isPlaceholder])
  {
    v9[2](v9);
    [(UIKeyCommand *)self _performUpActionWithSender:v10 target:v8];
  }
}

- (void)performWithSender:(id)a3 target:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__UIKeyCommand_performWithSender_target___block_invoke;
  v10[3] = &unk_1E70F6228;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  [(UIKeyCommand *)self _performKeyCommandActionWithSender:v9 target:v8 actionHandler:v10];
}

id __41__UIKeyCommand_performWithSender_target___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = UIKeyCommand;
  return objc_msgSendSuper2(&v4, sel_performWithSender_target_, v2, v1);
}

- (void)_performFallbackActionWithSender:(id)a3 target:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__UIKeyCommand__performFallbackActionWithSender_target___block_invoke;
  v10[3] = &unk_1E70F6228;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  [(UIKeyCommand *)self _performKeyCommandActionWithSender:v9 target:v8 actionHandler:v10];
}

id __56__UIKeyCommand__performFallbackActionWithSender_target___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = UIKeyCommand;
  return objc_msgSendSuper2(&v4, sel__performFallbackActionWithSender_target_, v2, v1);
}

- (void)_performDownActionWithSender:(id)a3 target:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UICommand *)self _performAction:[(UICommand *)self action] withSender:v7 target:v6 notifyingStateObservers:1];
}

- (void)_performUpActionWithSender:(id)a3 target:(id)a4
{
  v8 = a3;
  v6 = a4;
  upAction = self->_upAction;
  if (upAction)
  {
    [(UICommand *)self _performAction:upAction withSender:v8 target:v6 notifyingStateObservers:0];
  }
}

- (id)_enumerationPriorityNumber
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "_enumerationPriority")}];
    v1 = vars8;
  }

  return a1;
}

@end