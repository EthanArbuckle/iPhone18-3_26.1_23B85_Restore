@interface UIAction
+ (UIAction)actionWithHandler:(UIActionHandler)handler;
+ (UIAction)actionWithTitle:(NSString *)title image:(UIImage *)image identifier:(UIActionIdentifier)identifier handler:(UIActionHandler)handler;
+ (UIAction)captureTextFromCameraActionForResponder:(UIResponder *)responder identifier:(UIActionIdentifier)identifier;
+ (UIAction)textInteractableItemDefaultAction;
+ (UIImage)_textFromCameraImage;
+ (id)_textFromCameraTitleForResponder:(id)responder;
- (BOOL)_acceptBoolMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit;
- (BOOL)_acceptBoolMenuVisit:(id)visit leafVisit:(id)leafVisit;
- (BOOL)isEqual:(id)equal;
- (NSArray)_leafAlternates;
- (NSString)description;
- (UIAction)initWithAction:(id)action;
- (UIAction)initWithCoder:(id)coder;
- (UIAction)initWithTitle:(id)title image:(id)image identifier:(id)identifier discoverabilityTitle:(id)discoverabilityTitle attributes:(unint64_t)attributes state:(int64_t)state handler:(id)handler;
- (id)_menuLeafWithKeyboardShortcut:(id)shortcut;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_acceptMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit deferredElementVisit:(id)elementVisit;
- (void)_acceptMenuVisit:(id)visit leafVisit:(id)leafVisit;
- (void)_setEnumerationPriority:(int64_t)priority;
- (void)_setKeyboardShortcut:(id)shortcut;
- (void)_setLeafAlternates:(id)alternates;
- (void)_setState:(int64_t)state notifyingObservers:(BOOL)observers;
- (void)encodeWithCoder:(id)coder;
- (void)performWithSender:(id)sender target:(id)target;
- (void)setImage:(UIImage *)image;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(NSString *)title;
@end

@implementation UIAction

+ (UIAction)textInteractableItemDefaultAction
{
  if (_MergedGlobals_996 != -1)
  {
    dispatch_once(&_MergedGlobals_996, &__block_literal_global_42);
  }

  v3 = qword_1ED49C8B0;

  return v3;
}

void __82__UIAction_UITextInteractableItemDefaultAction__textInteractableItemDefaultAction__block_invoke()
{
  v0 = [UIAction actionWithTitle:&stru_1EFB14550 image:0 identifier:@"UITextInteractableItemDefaultAction" handler:&__block_literal_global_7];
  v1 = qword_1ED49C8B0;
  qword_1ED49C8B0 = v0;
}

+ (UIAction)actionWithTitle:(NSString *)title image:(UIImage *)image identifier:(UIActionIdentifier)identifier handler:(UIActionHandler)handler
{
  v10 = handler;
  v11 = identifier;
  v12 = image;
  v13 = title;
  v14 = [[self alloc] initWithTitle:v13 image:v12 identifier:v11 discoverabilityTitle:0 attributes:0 state:0 handler:v10];

  return v14;
}

+ (UIAction)actionWithHandler:(UIActionHandler)handler
{
  v4 = handler;
  v5 = [[self alloc] initWithTitle:&stru_1EFB14550 image:0 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v4];

  return v5;
}

- (UIAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = UIAction;
  v5 = [(UIMenuElement *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discoverabilityTitle"];
    discoverabilityTitle = v5->_discoverabilityTitle;
    v5->_discoverabilityTitle = v8;

    v5->_attributes = [coderCopy decodeIntegerForKey:@"attributes"];
    v5->_state = [coderCopy decodeIntegerForKey:@"states"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedImage"];
    selectedImage = v5->_selectedImage;
    v5->_selectedImage = v10;

    v5->_repeatBehavior = [coderCopy decodeIntegerForKey:@"repeatBehavior"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = [v12 setWithObjects:{v13, v14, 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"leafAlternates"];
    leafAlternates = v5->_leafAlternates;
    v5->_leafAlternates = v16;

    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"keyboardShortcut"];
    keyboardShortcut = v5->_keyboardShortcut;
    v5->_keyboardShortcut = v19;

    v21 = [coderCopy containsValueForKey:@"enumerationPriority"];
    v22 = 0;
    if (v21)
    {
      v22 = [coderCopy decodeIntegerForKey:@"enumerationPriority"];
    }

    v5->_enumerationPriority = v22;
    if ([coderCopy containsValueForKey:@"systemBehaviorsToOutPrioritize"])
    {
      v23 = [coderCopy decodeIntegerForKey:@"systemBehaviorsToOutPrioritize"];
    }

    else
    {
      v23 = 0;
    }

    v5->_systemBehaviorsToOutPrioritize = v23;
  }

  return v5;
}

- (UIAction)initWithTitle:(id)title image:(id)image identifier:(id)identifier discoverabilityTitle:(id)discoverabilityTitle attributes:(unint64_t)attributes state:(int64_t)state handler:(id)handler
{
  identifierCopy = identifier;
  discoverabilityTitleCopy = discoverabilityTitle;
  handlerCopy = handler;
  v26.receiver = self;
  v26.super_class = UIAction;
  v18 = [(UIMenuElement *)&v26 initWithTitle:title image:image imageName:0];
  if (v18)
  {
    if (identifierCopy)
    {
      titleCopy = [identifierCopy copy];
    }

    else
    {
      v20 = MEMORY[0x1E696AEC0];
      title = [MEMORY[0x1E696AFB0] UUID];
      titleCopy = [v20 stringWithFormat:@"com.apple.action.dynamic.%@", title];
    }

    objc_storeStrong(&v18->_identifier, titleCopy);
    if (!identifierCopy)
    {

      titleCopy = title;
    }

    v21 = [discoverabilityTitleCopy copy];
    discoverabilityTitle = v18->_discoverabilityTitle;
    v18->_discoverabilityTitle = v21;

    v18->_attributes = attributes;
    v18->_state = state;
    v23 = [handlerCopy copy];
    handler = v18->_handler;
    v18->_handler = v23;
  }

  return v18;
}

- (UIAction)initWithAction:(id)action
{
  actionCopy = action;
  title = [actionCopy title];
  image = [actionCopy image];
  identifier = [actionCopy identifier];
  discoverabilityTitle = [actionCopy discoverabilityTitle];
  attributes = [actionCopy attributes];
  state = [actionCopy state];
  handler = [actionCopy handler];
  v12 = [(UIAction *)self initWithTitle:title image:image identifier:identifier discoverabilityTitle:discoverabilityTitle attributes:attributes state:state handler:handler];

  objc_storeStrong(&v12->super._attributedTitle, *(actionCopy + 1));
  objc_storeStrong(&v12->super._subtitle, *(actionCopy + 2));
  accessibilityIdentifier = [actionCopy accessibilityIdentifier];
  accessibilityIdentifier = v12->super._accessibilityIdentifier;
  v12->super._accessibilityIdentifier = accessibilityIdentifier;

  _accessoryAction = [actionCopy _accessoryAction];
  [(UIMenuElement *)v12 set_accessoryAction:_accessoryAction];

  v12->super.__preferredDisplayMode = [actionCopy _preferredDisplayMode];
  objc_storeStrong(&v12->_selectedImage, *(actionCopy + 12));
  v12->_repeatBehavior = *(actionCopy + 13);
  [(UIAction *)v12 _setLeafAlternates:*(actionCopy + 14)];
  [(UIAction *)v12 _setKeyboardShortcut:*(actionCopy + 15)];
  v12->_allowsGlobeKeyModifier = *(actionCopy + 72);
  v12->_enumerationPriority = *(actionCopy + 16);
  v16 = *(actionCopy + 17);

  v12->_systemBehaviorsToOutPrioritize = v16;
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UIAction;
  [(UIMenuElement *)&v13 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  discoverabilityTitle = self->_discoverabilityTitle;
  if (discoverabilityTitle)
  {
    [coderCopy encodeObject:discoverabilityTitle forKey:@"discoverabilityTitle"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    [coderCopy encodeInteger:attributes forKey:@"attributes"];
  }

  state = self->_state;
  if (state)
  {
    [coderCopy encodeInteger:state forKey:@"states"];
  }

  selectedImage = self->_selectedImage;
  if (selectedImage)
  {
    [coderCopy encodeObject:selectedImage forKey:@"selectedImage"];
  }

  repeatBehavior = self->_repeatBehavior;
  if (repeatBehavior)
  {
    [coderCopy encodeInteger:repeatBehavior forKey:@"repeatBehavior"];
  }

  if ([(NSArray *)self->_leafAlternates count])
  {
    [coderCopy encodeObject:self->_leafAlternates forKey:@"leafAlternates"];
  }

  keyboardShortcut = self->_keyboardShortcut;
  if (keyboardShortcut)
  {
    [coderCopy encodeObject:keyboardShortcut forKey:@"keyboardShortcut"];
  }

  enumerationPriority = self->_enumerationPriority;
  if (enumerationPriority)
  {
    [coderCopy encodeInteger:enumerationPriority forKey:@"enumerationPriority"];
  }

  systemBehaviorsToOutPrioritize = self->_systemBehaviorsToOutPrioritize;
  if (systemBehaviorsToOutPrioritize)
  {
    [coderCopy encodeInteger:systemBehaviorsToOutPrioritize forKey:@"systemBehaviorsToOutPrioritize"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_identifier isEqualToString:equalCopy[19]];

  return v5;
}

- (void)setTitle:(NSString *)title
{
  v3.receiver = self;
  v3.super_class = UIAction;
  [(UIMenuElement *)&v3 _setTitle:title];
}

- (void)setSubtitle:(id)subtitle
{
  v3.receiver = self;
  v3.super_class = UIAction;
  [(UIMenuElement *)&v3 _setSubtitle:subtitle];
}

- (void)setImage:(UIImage *)image
{
  v3.receiver = self;
  v3.super_class = UIAction;
  [(UIMenuElement *)&v3 _setImage:image];
}

- (void)_acceptMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit deferredElementVisit:(id)elementVisit
{
  if (actionVisit)
  {
    (*(actionVisit + 2))(actionVisit, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit
{
  if (actionVisit)
  {
    return (*(actionVisit + 2))(actionVisit, self);
  }

  else
  {
    return 0;
  }
}

- (void)_acceptMenuVisit:(id)visit leafVisit:(id)leafVisit
{
  if (leafVisit)
  {
    (*(leafVisit + 2))(leafVisit, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)visit leafVisit:(id)leafVisit
{
  if (leafVisit)
  {
    return (*(leafVisit + 2))(leafVisit, self);
  }

  else
  {
    return 0;
  }
}

- (NSArray)_leafAlternates
{
  if (self->_leafAlternates)
  {
    return self->_leafAlternates;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_setLeafAlternates:(id)alternates
{
  if (self->_leafAlternates != alternates)
  {
    v4 = MEMORY[0x1E695DEC8];
    alternatesCopy = alternates;
    v6 = [[v4 alloc] initWithArray:alternatesCopy copyItems:1];

    leafAlternates = self->_leafAlternates;
    self->_leafAlternates = v6;
  }
}

- (void)_setKeyboardShortcut:(id)shortcut
{
  if (self->_keyboardShortcut != shortcut)
  {
    v4 = [shortcut copy];
    keyboardShortcut = self->_keyboardShortcut;
    self->_keyboardShortcut = v4;
  }
}

- (void)_setEnumerationPriority:(int64_t)priority
{
  if (self->_enumerationPriority != priority)
  {
    self->_enumerationPriority = priority;
  }
}

- (id)_menuLeafWithKeyboardShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v5 = [(UIAction *)self copy];
  [v5 _setKeyboardShortcut:shortcutCopy];

  return v5;
}

- (void)performWithSender:(id)sender target:(id)target
{
  senderCopy = sender;
  _UIMenuStateObserverableLeafWillPerformAction(self);
  if (self->_handler)
  {
    objc_storeStrong(&self->_sender, sender);
    selfCopy = self;
    (*(self->_handler + 2))();
    sender = self->_sender;
    self->_sender = 0;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIAction alloc];

  return [(UIAction *)v4 initWithAction:self];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  title = [(UIMenuElement *)self title];
  v5 = [title length];

  if (v5)
  {
    title2 = [(UIMenuElement *)self title];
    [v3 appendFormat:@"; title = %@", title2];
  }

  image = [(UIMenuElement *)self image];
  if (image)
  {
    [v3 appendFormat:@"; image = <%@: %p", objc_opt_class(), image];
    if ([image isSymbolImage])
    {
      v8 = _UIImageName(image);
      [v3 appendFormat:@"; symbol = (%@)", v8];
    }

    [v3 appendString:@">"];
  }

  if ([(UIAction *)self attributes])
  {
    array = [MEMORY[0x1E695DF70] array];
    if (([(UIAction *)self attributes]& 1) != 0)
    {
      [array addObject:@"Disabled"];
    }

    if (([(UIAction *)self attributes]& 2) != 0)
    {
      [array addObject:@"Destructive"];
    }

    if (([(UIAction *)self attributes]& 4) != 0)
    {
      [array addObject:@"Hidden"];
    }

    if ([(UIAction *)self keepsMenuPresented])
    {
      [array addObject:@"KeepsMenuPresented"];
    }

    v10 = [array componentsJoinedByString:@"|"];
    [v3 appendFormat:@"; attributes = (%@)", v10];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)_setState:(int64_t)state notifyingObservers:(BOOL)observers
{
  if (self->_state != state)
  {
    self->_state = state;
    if (observers)
    {
      _UIMenuStateObserverableLeafStateDidChange(self);
    }
  }
}

+ (UIAction)captureTextFromCameraActionForResponder:(UIResponder *)responder identifier:(UIActionIdentifier)identifier
{
  v5 = responder;
  v6 = identifier;
  v7 = [UIAction _textFromCameraTitleForResponder:v5];
  v8 = +[UIAction _textFromCameraImage];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__UIAction_UICaptureTextFromCameraSupporting__captureTextFromCameraActionForResponder_identifier___block_invoke;
  v12[3] = &unk_1E70F4708;
  v13 = v5;
  v9 = v5;
  v10 = [UIAction actionWithTitle:v7 image:v8 identifier:v6 handler:v12];

  return v10;
}

+ (id)_textFromCameraTitleForResponder:(id)responder
{
  v3 = [UIKeyboardCameraSession keyboardCameraContentTypeForResponder:responder];
  if ([v3 isEqualToString:@"tel"])
  {
    v4 = @"Scan Phone Number";
  }

  else if ([v3 isEqualToString:@"street-address"])
  {
    v4 = @"Scan Address";
  }

  else if ([v3 isEqualToString:@"url"])
  {
    v4 = @"Scan URL";
  }

  else if ([v3 isEqualToString:@"email"])
  {
    v4 = @"Scan Email Address";
  }

  else if ([v3 isEqualToString:@"flight-number"])
  {
    v4 = @"Scan Flight Number";
  }

  else if ([v3 isEqualToString:@"shipment-tracking-number"])
  {
    v4 = @"Scan Tracking Number";
  }

  else if ([v3 isEqualToString:@"date-time"])
  {
    v4 = @"Scan Date or Time";
  }

  else
  {
    v4 = @"Scan Text";
  }

  v5 = _UINSLocalizedStringWithDefaultValue(v4, v4);

  return v5;
}

+ (UIImage)_textFromCameraImage
{
  v2 = +[UIAction _textFromCameraImageName];
  v3 = [UIImage systemImageNamed:v2];

  return v3;
}

@end