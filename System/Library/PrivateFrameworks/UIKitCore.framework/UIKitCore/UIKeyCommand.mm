@interface UIKeyCommand
+ (UIKeyCommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action input:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags propertyList:(id)propertyList;
+ (UIKeyCommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action input:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags propertyList:(id)propertyList alternates:(NSArray *)alternates;
+ (UIKeyCommand)commandWithTitle:(id)title imageName:(id)name action:(SEL)action input:(id)input modifierFlags:(int64_t)flags propertyList:(id)list leafOrCommandAlternates:(id)alternates;
+ (UIKeyCommand)keyCommandWithCompactInput:(id)input action:(SEL)action upAction:(SEL)upAction;
+ (UIKeyCommand)keyCommandWithInput:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags action:(SEL)action;
+ (UIKeyCommand)keyCommandWithInput:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags action:(SEL)action discoverabilityTitle:(NSString *)discoverabilityTitle;
+ (UIKeyCommand)keyCommandWithInput:(id)input modifierFlags:(int64_t)flags action:(SEL)action upAction:(SEL)upAction;
+ (UIKeyCommand)keyCommandWithInput:(id)input modifierFlags:(int64_t)flags action:(SEL)action upAction:(SEL)upAction discoverabilityTitle:(id)title;
+ (UIKeyCommand)keyCommandWithInput:(id)input modifierFlags:(int64_t)flags buttonType:(int64_t)type;
+ (UIKeyCommand)keyCommandWithKeyCode:(int64_t)code modifierFlags:(int64_t)flags action:(SEL)action;
+ (UIKeyCommand)keyCommandWithKeyCode:(int64_t)code modifierFlags:(int64_t)flags action:(SEL)action discoverabilityTitle:(id)title;
+ (UIKeyCommand)keyCommandWithKeyCodes:(id)codes modifierFlags:(int64_t)flags action:(SEL)action;
+ (UIKeyCommand)keyCommandWithKeyCodes:(id)codes modifierFlags:(int64_t)flags buttonType:(int64_t)type;
- (BOOL)_isKeyCommandLikelyMirrored;
- (BOOL)_isKeyCommandLocalized;
- (BOOL)isEqual:(id)equal;
- (NSIndexSet)_keyCodes;
- (NSIndexSet)_layoutAwareKeyCodes;
- (NSString)_layoutAwareDisplayInputOverride;
- (NSString)_layoutAwareInput;
- (NSString)discoverabilityInput;
- (NSString)input;
- (SEL)upAction;
- (UIKeyCommand)init;
- (UIKeyCommand)initWithCoder:(NSCoder *)coder;
- (UIKeyCommand)initWithCommand:(id)command;
- (UIKeyCommand)initWithKeyCommand:(id)command;
- (UIKeyCommand)initWithTitle:(id)title image:(id)image imageName:(id)name action:(SEL)action input:(id)input modifierFlags:(int64_t)flags propertyList:(id)list leafOrCommandAlternates:(id)self0 discoverabilityTitle:(id)self1 attributes:(unint64_t)self2 state:(int64_t)self3;
- (UIKeyCommand)initWithTitle:(id)title image:(id)image imageName:(id)name action:(SEL)action propertyList:(id)list leafOrCommandAlternates:(id)alternates discoverabilityTitle:(id)discoverabilityTitle attributes:(unint64_t)self0 state:(int64_t)self1;
- (UIKeyModifierFlags)modifierFlags;
- (__GSKeyboard)_currentGSKeyboard;
- (id)_allowGlobeModifierKeyCommand;
- (id)_enumerationPriorityNumber;
- (id)_initWithCommand:(id)command keyboardShortcut:(id)shortcut;
- (id)_initWithInput:(id)input modifierFlags:(int64_t)flags keyCodes:(id)codes action:(SEL)action upAction:(SEL)upAction discoverabilityTitle:(id)title buttonType:(int64_t)type;
- (id)_nonRepeatableKeyCommand;
- (id)_placeholderKeyCommand;
- (id)_readableStringForInputUsingWords:(BOOL)words forHUD:(BOOL)d outIsSingleCharacterOrKeySymbol:(BOOL *)symbol;
- (id)_readableStringForModifierFlagsUsingWords:(BOOL)words forHUD:(BOOL)d;
- (id)_safeCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_defaultEnumerationPriority;
- (int64_t)_layoutAwareModifierFlags;
- (unint64_t)hash;
- (void)_appendDescriptionComponentsToDescription:(id)description;
- (void)_localizeWithGSKeyboard:(__GSKeyboard *)keyboard automatically:(BOOL)automatically force:(BOOL)force;
- (void)_performDownActionWithSender:(id)sender target:(id)target;
- (void)_performFallbackActionWithSender:(id)sender target:(id)target;
- (void)_performKeyCommandActionWithSender:(id)sender target:(id)target actionHandler:(id)handler;
- (void)_performUpActionWithSender:(id)sender target:(id)target;
- (void)_setAllowsGlobeKeyModifier:(BOOL)modifier;
- (void)_setEnumerationPriority:(int64_t)priority;
- (void)_setEventDeferringEnvironment:(id)environment;
- (void)encodeWithCoder:(id)coder;
- (void)performWithSender:(id)sender target:(id)target;
- (void)setAllowsAutomaticLocalization:(BOOL)allowsAutomaticLocalization;
- (void)setAllowsAutomaticMirroring:(BOOL)allowsAutomaticMirroring;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWantsPriorityOverSystemBehavior:(BOOL)wantsPriorityOverSystemBehavior;
@end

@implementation UIKeyCommand

- (int64_t)_defaultEnumerationPriority
{
  input = [(UIKeyCommand *)self input];
  v4 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalent(@"+");
  if ([input isEqualToString:v4] && -[UIKeyCommand modifierFlags](self, "modifierFlags") == 0x100000)
  {

    return -1;
  }

  input2 = [(UIKeyCommand *)self input];
  if ([input2 isEqualToString:@"UIKeyInputEscape"])
  {
    modifierFlags = [(UIKeyCommand *)self modifierFlags];

    if (!modifierFlags)
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
  baseKeyCombination = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut baseKeyCombination];
  keyEquivalent = [baseKeyCombination keyEquivalent];

  return keyEquivalent;
}

- (unint64_t)hash
{
  modifierFlags = [(UIKeyCommand *)self modifierFlags];
  input = [(UIKeyCommand *)self input];
  v5 = [input hash] ^ modifierFlags;
  _keyCodes = [(UIKeyCommand *)self _keyCodes];
  v7 = v5 ^ [_keyCodes hash];
  v8 = *(self + 46);

  return v7 ^ v8;
}

- (NSIndexSet)_keyCodes
{
  baseKeyCombination = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut baseKeyCombination];
  keyCodes = [baseKeyCombination keyCodes];

  return keyCodes;
}

- (UIKeyModifierFlags)modifierFlags
{
  baseKeyCombination = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut baseKeyCombination];
  modifierFlags = [baseKeyCombination modifierFlags];

  return modifierFlags;
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (([keyCopy isEqualToString:@"_repeatable"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"repeatable"))
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
        if ([valueCopy BOOLValue])
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
    [(UIKeyCommand *)&v15 setValue:valueCopy forKey:keyCopy];
  }
}

- (NSString)_layoutAwareInput
{
  currentLocalizedKeyCombination = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination];
  keyEquivalent = [currentLocalizedKeyCombination keyEquivalent];

  return keyEquivalent;
}

- (int64_t)_layoutAwareModifierFlags
{
  currentLocalizedKeyCombination = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination];
  modifierFlags = [currentLocalizedKeyCombination modifierFlags];

  return modifierFlags;
}

- (NSIndexSet)_layoutAwareKeyCodes
{
  currentLocalizedKeyCombination = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination];
  keyCodes = [currentLocalizedKeyCombination keyCodes];

  return keyCodes;
}

- (void)setAllowsAutomaticLocalization:(BOOL)allowsAutomaticLocalization
{
  v3 = allowsAutomaticLocalization;
  if ([(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut isAutomaticLocalizationEnabled]!= allowsAutomaticLocalization)
  {
    [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut setAutomaticLocalizationEnabled:v3];
    if (v3)
    {
      _currentGSKeyboard = [(UIKeyCommand *)self _currentGSKeyboard];

      [(UIKeyCommand *)self _localizeWithGSKeyboard:_currentGSKeyboard automatically:0 force:1];
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
      _currentGSKeyboard = [(UIKeyCommand *)self _currentGSKeyboard];

      [(UIKeyCommand *)self _localizeWithGSKeyboard:_currentGSKeyboard automatically:0 force:1];
    }
  }
}

- (NSString)_layoutAwareDisplayInputOverride
{
  currentLocalizedKeyCombination = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination];
  displayKeyEquivalentOverride = [currentLocalizedKeyCombination displayKeyEquivalentOverride];

  return displayKeyEquivalentOverride;
}

- (void)_setEnumerationPriority:(int64_t)priority
{
  if (self->_enumerationPriority != priority)
  {
    self->_enumerationPriority = priority;
  }
}

- (void)_setEventDeferringEnvironment:(id)environment
{
  environmentCopy = environment;
  if (self->_eventDeferringEnvironment != environmentCopy)
  {
    v6 = environmentCopy;
    objc_storeStrong(&self->_eventDeferringEnvironment, environment);
    environmentCopy = v6;
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = UIKeyCommand;
  [(UICommand *)&v8 encodeWithCoder:coderCopy];
  input = [(UIKeyCommand *)self input];
  [coderCopy encodeObject:input forKey:@"input"];

  _keyCodes = [(UIKeyCommand *)self _keyCodes];

  if (_keyCodes)
  {
    _keyCodes2 = [(UIKeyCommand *)self _keyCodes];
    [coderCopy encodeObject:_keyCodes2 forKey:@"keyCodes"];
  }

  [coderCopy encodeInteger:-[UIKeyCommand modifierFlags](self forKey:{"modifierFlags"), @"modifierFlags"}];
  [coderCopy encodeBool:-[UIKeyCommand wantsPriorityOverSystemBehavior](self forKey:{"wantsPriorityOverSystemBehavior"), @"wantsPriorityOverSystemBehavior"}];
  [coderCopy encodeObject:self->_eventDeferringEnvironment forKey:@"eventDeferringEnvironment"];
  [coderCopy encodeBool:-[UIKeyCommand allowsAutomaticLocalization](self forKey:{"allowsAutomaticLocalization"), @"allowsAutomaticLocalization"}];
  [coderCopy encodeBool:-[UIKeyCommand allowsAutomaticMirroring](self forKey:{"allowsAutomaticMirroring"), @"allowsAutomaticMirroring"}];
  [coderCopy encodeInt32:LODWORD(self->_enumerationPriority) forKey:@"enumerationPriority"];
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
    keyboardFocusEnvironment = v13;
    if (!v13)
    {
      keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    }

    objc_storeStrong(&v6->_eventDeferringEnvironment, keyboardFocusEnvironment);
    if (!v13)
    {
    }

    v6->_enumerationPriority = [(NSCoder *)v4 decodeInt32ForKey:@"enumerationPriority"];
  }

  return v6;
}

- (UIKeyCommand)initWithTitle:(id)title image:(id)image imageName:(id)name action:(SEL)action propertyList:(id)list leafOrCommandAlternates:(id)alternates discoverabilityTitle:(id)discoverabilityTitle attributes:(unint64_t)self0 state:(int64_t)self1
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyCommand.m" lineNumber:245 description:@"Initializer is unavailable"];

  return 0;
}

- (UIKeyCommand)initWithCommand:(id)command
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyCommand.m" lineNumber:250 description:@"Initializer is unavailable"];

  return 0;
}

- (UIKeyCommand)initWithTitle:(id)title image:(id)image imageName:(id)name action:(SEL)action input:(id)input modifierFlags:(int64_t)flags propertyList:(id)list leafOrCommandAlternates:(id)self0 discoverabilityTitle:(id)self1 attributes:(unint64_t)self2 state:(int64_t)self3
{
  inputCopy = input;
  v27.receiver = self;
  v27.super_class = UIKeyCommand;
  v20 = [(UICommand *)&v27 initWithTitle:title image:image imageName:name action:action propertyList:list leafOrCommandAlternates:alternates discoverabilityTitle:discoverabilityTitle attributes:attributes state:state];
  if (v20)
  {
    v21 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:flags keyEquivalent:inputCopy keyCodes:0];
    v22 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:v21];
    keyboardShortcut = v20->_keyboardShortcut;
    v20->_keyboardShortcut = v22;

    v20->_upAction = 0;
    *(v20 + 46) = -1;
    keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    eventDeferringEnvironment = v20->_eventDeferringEnvironment;
    v20->_eventDeferringEnvironment = keyboardFocusEnvironment;

    v20->_enumerationPriority = [(UIKeyCommand *)v20 _defaultEnumerationPriority];
    v20->_wantsPriorityOverSystemBehavior = dyld_program_sdk_at_least() ^ 1;
  }

  return v20;
}

- (id)_initWithInput:(id)input modifierFlags:(int64_t)flags keyCodes:(id)codes action:(SEL)action upAction:(SEL)upAction discoverabilityTitle:(id)title buttonType:(int64_t)type
{
  inputCopy = input;
  codesCopy = codes;
  if (title)
  {
    titleCopy = title;
  }

  else
  {
    titleCopy = &stru_1EFB14550;
  }

  v26.receiver = self;
  v26.super_class = UIKeyCommand;
  v18 = [(UICommand *)&v26 initWithTitle:titleCopy image:0 imageName:0 action:action propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:title attributes:0 state:0];
  if (v18)
  {
    v19 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:flags keyEquivalent:inputCopy keyCodes:codesCopy];
    v20 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:v19];
    keyboardShortcut = v18->_keyboardShortcut;
    v18->_keyboardShortcut = v20;

    if (upAction)
    {
      upActionCopy = upAction;
    }

    else
    {
      upActionCopy = 0;
    }

    v18->_upAction = upActionCopy;
    *(v18 + 46) = type;
    keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    eventDeferringEnvironment = v18->_eventDeferringEnvironment;
    v18->_eventDeferringEnvironment = keyboardFocusEnvironment;

    v18->_enumerationPriority = [(UIKeyCommand *)v18 _defaultEnumerationPriority];
    v18->_wantsPriorityOverSystemBehavior = dyld_program_sdk_at_least() ^ 1;
  }

  return v18;
}

- (id)_initWithCommand:(id)command keyboardShortcut:(id)shortcut
{
  commandCopy = command;
  shortcutCopy = shortcut;
  if (!shortcutCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyCommand.m" lineNumber:313 description:@"-[UIKeyCommand _initWithCommand:keyboardShortcut:] requires a non-nil keyboard shortcut"];
  }

  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(UIKeyCommand *)self initWithKeyCommand:commandCopy];
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v19.receiver = self;
  v19.super_class = UIKeyCommand;
  v12 = [(UICommand *)&v19 initWithCommand:commandCopy];
  v11 = v12;
  if (v12)
  {
    v12->_upAction = 0;
    *(v12 + 46) = -1;
    v12->_wantsPriorityOverSystemBehavior = dyld_program_sdk_at_least() ^ 1;
    keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    eventDeferringEnvironment = v11->_eventDeferringEnvironment;
    v11->_eventDeferringEnvironment = keyboardFocusEnvironment;

    v11->_enumerationPriority = [(UIKeyCommand *)v11 _defaultEnumerationPriority];
LABEL_8:
    v15 = [shortcutCopy copy];
    keyboardShortcut = v11->_keyboardShortcut;
    v11->_keyboardShortcut = v15;
  }

LABEL_9:

  return v11;
}

- (UIKeyCommand)initWithKeyCommand:(id)command
{
  commandCopy = command;
  v9.receiver = self;
  v9.super_class = UIKeyCommand;
  v5 = [(UICommand *)&v9 initWithCommand:commandCopy];
  if (v5)
  {
    v6 = [commandCopy[24] copy];
    keyboardShortcut = v5->_keyboardShortcut;
    v5->_keyboardShortcut = v6;

    v5->_upAction = commandCopy[20];
    *(v5 + 188) = *(v5 + 188) & 0xFE | *(commandCopy + 188) & 1;
    *(v5 + 46) = *(commandCopy + 46);
    objc_storeStrong(&v5->_eventDeferringEnvironment, commandCopy[21]);
    v5->_enumerationPriority = commandCopy[22];
    v5->_allowsGlobeKeyModifier = *(commandCopy + 200);
    *(v5 + 188) = *(v5 + 188) & 0xFD | *(commandCopy + 188) & 2;
    v5->_wantsPriorityOverSystemBehavior = *(commandCopy + 201);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIKeyCommand alloc];

  return [(UIKeyCommand *)v4 initWithKeyCommand:self];
}

- (id)_safeCopy
{
  v2 = [[UIKeyCommand alloc] initWithKeyCommand:self];

  return v2;
}

+ (UIKeyCommand)commandWithTitle:(id)title imageName:(id)name action:(SEL)action input:(id)input modifierFlags:(int64_t)flags propertyList:(id)list leafOrCommandAlternates:(id)alternates
{
  alternatesCopy = alternates;
  listCopy = list;
  inputCopy = input;
  nameCopy = name;
  titleCopy = title;
  v21 = [[self alloc] initWithTitle:titleCopy image:0 imageName:nameCopy action:action input:inputCopy modifierFlags:flags propertyList:listCopy leafOrCommandAlternates:alternatesCopy discoverabilityTitle:0 attributes:0 state:0];

  return v21;
}

+ (UIKeyCommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action input:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags propertyList:(id)propertyList
{
  v14 = propertyList;
  v15 = input;
  v16 = image;
  v17 = title;
  v18 = [self alloc];
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
  v21 = [[self alloc] initWithTitle:v20 image:v19 imageName:0 action:action input:v18 modifierFlags:modifierFlags propertyList:v17 leafOrCommandAlternates:v16 discoverabilityTitle:0 attributes:0 state:0];

  return v21;
}

+ (UIKeyCommand)keyCommandWithInput:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags action:(SEL)action
{
  v8 = input;
  v9 = [[self alloc] _initWithInput:v8 modifierFlags:modifierFlags keyCodes:0 action:action upAction:0 discoverabilityTitle:0 buttonType:-1];

  return v9;
}

+ (UIKeyCommand)keyCommandWithInput:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags action:(SEL)action discoverabilityTitle:(NSString *)discoverabilityTitle
{
  v10 = discoverabilityTitle;
  v11 = input;
  v12 = [[self alloc] _initWithInput:v11 modifierFlags:modifierFlags keyCodes:0 action:action upAction:0 discoverabilityTitle:v10 buttonType:-1];

  return v12;
}

+ (UIKeyCommand)keyCommandWithInput:(id)input modifierFlags:(int64_t)flags action:(SEL)action upAction:(SEL)upAction
{
  inputCopy = input;
  v11 = [[self alloc] _initWithInput:inputCopy modifierFlags:flags keyCodes:0 action:action upAction:upAction discoverabilityTitle:0 buttonType:-1];

  return v11;
}

+ (UIKeyCommand)keyCommandWithCompactInput:(id)input action:(SEL)action upAction:(SEL)upAction
{
  inputCopy = input;
  v9 = [inputCopy mutableCopy];
  [v9 replaceOccurrencesOfString:@"⌘" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"⌥" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"⌃" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"⇧" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v9, "length")}];
  v10 = inputCopy;
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

  v15 = [self keyCommandWithInput:v9 modifierFlags:v14 action:action upAction:upAction];

  return v15;
}

+ (UIKeyCommand)keyCommandWithKeyCode:(int64_t)code modifierFlags:(int64_t)flags action:(SEL)action
{
  v8 = [self alloc];
  v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:code];
  v10 = [v8 _initWithInput:0 modifierFlags:flags keyCodes:v9 action:action upAction:0 discoverabilityTitle:0 buttonType:-1];

  return v10;
}

+ (UIKeyCommand)keyCommandWithKeyCode:(int64_t)code modifierFlags:(int64_t)flags action:(SEL)action discoverabilityTitle:(id)title
{
  titleCopy = title;
  v11 = [self alloc];
  v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:code];
  v13 = [v11 _initWithInput:0 modifierFlags:flags keyCodes:v12 action:action upAction:0 discoverabilityTitle:titleCopy buttonType:-1];

  return v13;
}

+ (UIKeyCommand)keyCommandWithKeyCodes:(id)codes modifierFlags:(int64_t)flags action:(SEL)action
{
  codesCopy = codes;
  v9 = [[self alloc] _initWithInput:0 modifierFlags:flags keyCodes:codesCopy action:action upAction:0 discoverabilityTitle:0 buttonType:-1];

  return v9;
}

+ (UIKeyCommand)keyCommandWithKeyCodes:(id)codes modifierFlags:(int64_t)flags buttonType:(int64_t)type
{
  codesCopy = codes;
  v9 = [[self alloc] _initWithInput:0 modifierFlags:flags keyCodes:codesCopy action:0 upAction:0 discoverabilityTitle:0 buttonType:type];

  return v9;
}

+ (UIKeyCommand)keyCommandWithInput:(id)input modifierFlags:(int64_t)flags buttonType:(int64_t)type
{
  inputCopy = input;
  v9 = [[self alloc] _initWithInput:inputCopy modifierFlags:flags keyCodes:0 action:0 upAction:0 discoverabilityTitle:0 buttonType:type];

  return v9;
}

+ (UIKeyCommand)keyCommandWithInput:(id)input modifierFlags:(int64_t)flags action:(SEL)action upAction:(SEL)upAction discoverabilityTitle:(id)title
{
  titleCopy = title;
  inputCopy = input;
  v14 = [[self alloc] _initWithInput:inputCopy modifierFlags:flags keyCodes:0 action:action upAction:upAction discoverabilityTitle:titleCopy buttonType:-1];

  return v14;
}

- (void)_localizeWithGSKeyboard:(__GSKeyboard *)keyboard automatically:(BOOL)automatically force:(BOOL)force
{
  if ((*(self + 188) & 1) == 0)
  {
    forceCopy = force;
    automaticallyCopy = automatically;
    keyboardShortcut = self->_keyboardShortcut;
    _isDefaultCommand = [(UICommand *)self _isDefaultCommand];
    action = [(UICommand *)self action];

    [(_UIMenuLeafKeyboardShortcut *)keyboardShortcut _localizeWithGSKeyboard:keyboard automatically:automaticallyCopy force:forceCopy forDefaultShortcut:_isDefaultCommand action:action];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      modifierFlags = [(UIKeyCommand *)self modifierFlags];
      if (modifierFlags == [(UIKeyCommand *)v7 modifierFlags])
      {
        input = [(UIKeyCommand *)self input];
        input2 = [(UIKeyCommand *)v7 input];
        if (input == input2 || [input isEqual:input2])
        {
          _keyCodes = [(UIKeyCommand *)self _keyCodes];
          _keyCodes2 = [(UIKeyCommand *)v7 _keyCodes];
          if (_keyCodes == _keyCodes2 || [_keyCodes isEqual:_keyCodes2])
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
  _layoutAwareInput = [(UIKeyCommand *)self _layoutAwareInput];

  if (_layoutAwareInput)
  {
    _layoutAwareInput2 = [(UIKeyCommand *)self _layoutAwareInput];
  }

  else
  {
    input = [(UIKeyCommand *)self input];

    if (input)
    {
      _layoutAwareInput2 = [(UIKeyCommand *)self input];
    }

    else
    {
      _layoutAwareInput2 = [UIApp _hardwareKeyboard];
      if (_layoutAwareInput2)
      {
        HIWORD(v9) = 0;
        _layoutAwareKeyCodes = [(UIKeyCommand *)self _layoutAwareKeyCodes];
        [_layoutAwareKeyCodes firstIndex];
        GSKeyboardTranslateKeyExtendedCommandWithUsagePage();

        v8 = [(UIKeyCommand *)self _layoutAwareKeyCodes:&v9 + 2];
        [v8 firstIndex];
        GSKeyboardTranslateKeyExtendedCommandWithUsagePage();

        _layoutAwareInput2 = 0;
      }
    }
  }

  return _layoutAwareInput2;
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

- (void)_setAllowsGlobeKeyModifier:(BOOL)modifier
{
  if (self->_allowsGlobeKeyModifier != modifier)
  {
    self->_allowsGlobeKeyModifier = modifier;
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
  _layoutAwareInput = [(UIKeyCommand *)self _layoutAwareInput];
  if (_layoutAwareInput)
  {
    _layoutAwareInput2 = [(UIKeyCommand *)self _layoutAwareInput];
    input = [(UIKeyCommand *)self input];
    if ([_layoutAwareInput2 isEqualToString:input])
    {
      _layoutAwareModifierFlags = [(UIKeyCommand *)self _layoutAwareModifierFlags];
      v7 = _layoutAwareModifierFlags != [(UIKeyCommand *)self modifierFlags];
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
  _layoutAwareInput = [(UIKeyCommand *)self _layoutAwareInput];
  LOBYTE(v3) = [v3 isMirroringCandidate:_layoutAwareInput];

  return v3;
}

- (__GSKeyboard)_currentGSKeyboard
{
  v2 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v2 _isHardwareKeyboardAvailable];

  if (!_isHardwareKeyboardAvailable)
  {
    return 0;
  }

  v4 = UIApp;

  return [v4 _hardwareKeyboard:0];
}

- (void)_appendDescriptionComponentsToDescription:(id)description
{
  descriptionCopy = description;
  v19.receiver = self;
  v19.super_class = UIKeyCommand;
  [(UICommand *)&v19 _appendDescriptionComponentsToDescription:descriptionCopy];
  upAction = self->_upAction;
  if (upAction)
  {
    v6 = NSStringFromSelector(upAction);
    [descriptionCopy appendFormat:@"; _upAction: %@", v6];
  }

  input = [(UIKeyCommand *)self input];
  _keyCodes = [(UIKeyCommand *)self _keyCodes];
  if (![input length] && objc_msgSend(_keyCodes, "count"))
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __58__UIKeyCommand__appendDescriptionComponentsToDescription___block_invoke;
    v17 = &unk_1E70F3B48;
    v18 = array;
    v11 = array;
    [_keyCodes enumerateIndexesUsingBlock:&v14];
    v12 = [v11 componentsJoinedByString:{@", "}];
    [descriptionCopy appendFormat:@"; keyCodes: {%@}", v12, v14, v15, v16, v17];

    goto LABEL_18;
  }

  if ([input isEqualToString:@" "])
  {
    v9 = @"<space>";
LABEL_16:

    input = v9;
    goto LABEL_17;
  }

  if ([input isEqualToString:@"\t"])
  {
    v9 = @"<tab>";
    goto LABEL_16;
  }

  if ([input isEqualToString:@"\r"])
  {
    v9 = @"<return (\\r)>";
    goto LABEL_16;
  }

  if ([input isEqualToString:@"\n"])
  {
    v9 = @"<return (\\n)>";
    goto LABEL_16;
  }

  if (![input length])
  {
    v9 = @"<none>";
    goto LABEL_16;
  }

LABEL_17:
  [descriptionCopy appendFormat:@"; input: %@", input];
LABEL_18:
  v13 = _UIKeyModiferFlagsDescription([(UIKeyCommand *)self modifierFlags]);
  if ([v13 length])
  {
    [descriptionCopy appendFormat:@"; modifierFlags: %@", v13];
  }
}

void __58__UIKeyCommand__appendDescriptionComponentsToDescription___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%lX", a2];
  [v2 addObject:v3];
}

- (id)_readableStringForModifierFlagsUsingWords:(BOOL)words forHUD:(BOOL)d
{
  dCopy = d;
  wordsCopy = words;
  currentLocalizedKeyCombination = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination];
  v7 = [currentLocalizedKeyCombination _readableStringForModifierFlagsUsingWords:wordsCopy forHUD:dCopy];

  return v7;
}

- (id)_readableStringForInputUsingWords:(BOOL)words forHUD:(BOOL)d outIsSingleCharacterOrKeySymbol:(BOOL *)symbol
{
  dCopy = d;
  wordsCopy = words;
  v7 = [(_UIMenuLeafKeyboardShortcut *)self->_keyboardShortcut currentLocalizedKeyCombination:words];
  v8 = [v7 _readableStringForKeyEquivalentUsingWords:wordsCopy forHUD:dCopy isSingleCharacterOrKeySymbol:0];

  return v8;
}

- (void)_performKeyCommandActionWithSender:(id)sender target:(id)target actionHandler:(id)handler
{
  senderCopy = sender;
  targetCopy = target;
  handlerCopy = handler;
  if (![(UIKeyCommand *)self isPlaceholder])
  {
    handlerCopy[2](handlerCopy);
    [(UIKeyCommand *)self _performUpActionWithSender:senderCopy target:targetCopy];
  }
}

- (void)performWithSender:(id)sender target:(id)target
{
  senderCopy = sender;
  targetCopy = target;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__UIKeyCommand_performWithSender_target___block_invoke;
  v10[3] = &unk_1E70F6228;
  v11 = senderCopy;
  v12 = targetCopy;
  selfCopy = self;
  v8 = targetCopy;
  v9 = senderCopy;
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

- (void)_performFallbackActionWithSender:(id)sender target:(id)target
{
  senderCopy = sender;
  targetCopy = target;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__UIKeyCommand__performFallbackActionWithSender_target___block_invoke;
  v10[3] = &unk_1E70F6228;
  v11 = senderCopy;
  v12 = targetCopy;
  selfCopy = self;
  v8 = targetCopy;
  v9 = senderCopy;
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

- (void)_performDownActionWithSender:(id)sender target:(id)target
{
  targetCopy = target;
  senderCopy = sender;
  [(UICommand *)self _performAction:[(UICommand *)self action] withSender:senderCopy target:targetCopy notifyingStateObservers:1];
}

- (void)_performUpActionWithSender:(id)sender target:(id)target
{
  senderCopy = sender;
  targetCopy = target;
  upAction = self->_upAction;
  if (upAction)
  {
    [(UICommand *)self _performAction:upAction withSender:senderCopy target:targetCopy notifyingStateObservers:0];
  }
}

- (id)_enumerationPriorityNumber
{
  if (self)
  {
    self = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "_enumerationPriority")}];
    v1 = vars8;
  }

  return self;
}

@end