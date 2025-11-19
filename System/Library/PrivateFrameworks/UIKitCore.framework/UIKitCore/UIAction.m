@interface UIAction
+ (UIAction)actionWithHandler:(UIActionHandler)handler;
+ (UIAction)actionWithTitle:(NSString *)title image:(UIImage *)image identifier:(UIActionIdentifier)identifier handler:(UIActionHandler)handler;
+ (UIAction)captureTextFromCameraActionForResponder:(UIResponder *)responder identifier:(UIActionIdentifier)identifier;
+ (UIAction)textInteractableItemDefaultAction;
+ (UIImage)_textFromCameraImage;
+ (id)_textFromCameraTitleForResponder:(id)a3;
- (BOOL)_acceptBoolMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5;
- (BOOL)_acceptBoolMenuVisit:(id)a3 leafVisit:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSArray)_leafAlternates;
- (NSString)description;
- (UIAction)initWithAction:(id)a3;
- (UIAction)initWithCoder:(id)a3;
- (UIAction)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 discoverabilityTitle:(id)a6 attributes:(unint64_t)a7 state:(int64_t)a8 handler:(id)a9;
- (id)_menuLeafWithKeyboardShortcut:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_acceptMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5 deferredElementVisit:(id)a6;
- (void)_acceptMenuVisit:(id)a3 leafVisit:(id)a4;
- (void)_setEnumerationPriority:(int64_t)a3;
- (void)_setKeyboardShortcut:(id)a3;
- (void)_setLeafAlternates:(id)a3;
- (void)_setState:(int64_t)a3 notifyingObservers:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)performWithSender:(id)a3 target:(id)a4;
- (void)setImage:(UIImage *)image;
- (void)setSubtitle:(id)a3;
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
  v14 = [[a1 alloc] initWithTitle:v13 image:v12 identifier:v11 discoverabilityTitle:0 attributes:0 state:0 handler:v10];

  return v14;
}

+ (UIAction)actionWithHandler:(UIActionHandler)handler
{
  v4 = handler;
  v5 = [[a1 alloc] initWithTitle:&stru_1EFB14550 image:0 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v4];

  return v5;
}

- (UIAction)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = UIAction;
  v5 = [(UIMenuElement *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoverabilityTitle"];
    discoverabilityTitle = v5->_discoverabilityTitle;
    v5->_discoverabilityTitle = v8;

    v5->_attributes = [v4 decodeIntegerForKey:@"attributes"];
    v5->_state = [v4 decodeIntegerForKey:@"states"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedImage"];
    selectedImage = v5->_selectedImage;
    v5->_selectedImage = v10;

    v5->_repeatBehavior = [v4 decodeIntegerForKey:@"repeatBehavior"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = [v12 setWithObjects:{v13, v14, 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"leafAlternates"];
    leafAlternates = v5->_leafAlternates;
    v5->_leafAlternates = v16;

    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"keyboardShortcut"];
    keyboardShortcut = v5->_keyboardShortcut;
    v5->_keyboardShortcut = v19;

    v21 = [v4 containsValueForKey:@"enumerationPriority"];
    v22 = 0;
    if (v21)
    {
      v22 = [v4 decodeIntegerForKey:@"enumerationPriority"];
    }

    v5->_enumerationPriority = v22;
    if ([v4 containsValueForKey:@"systemBehaviorsToOutPrioritize"])
    {
      v23 = [v4 decodeIntegerForKey:@"systemBehaviorsToOutPrioritize"];
    }

    else
    {
      v23 = 0;
    }

    v5->_systemBehaviorsToOutPrioritize = v23;
  }

  return v5;
}

- (UIAction)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 discoverabilityTitle:(id)a6 attributes:(unint64_t)a7 state:(int64_t)a8 handler:(id)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = UIAction;
  v18 = [(UIMenuElement *)&v26 initWithTitle:a3 image:a4 imageName:0];
  if (v18)
  {
    if (v15)
    {
      v19 = [v15 copy];
    }

    else
    {
      v20 = MEMORY[0x1E696AEC0];
      a3 = [MEMORY[0x1E696AFB0] UUID];
      v19 = [v20 stringWithFormat:@"com.apple.action.dynamic.%@", a3];
    }

    objc_storeStrong(&v18->_identifier, v19);
    if (!v15)
    {

      v19 = a3;
    }

    v21 = [v16 copy];
    discoverabilityTitle = v18->_discoverabilityTitle;
    v18->_discoverabilityTitle = v21;

    v18->_attributes = a7;
    v18->_state = a8;
    v23 = [v17 copy];
    handler = v18->_handler;
    v18->_handler = v23;
  }

  return v18;
}

- (UIAction)initWithAction:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [v4 image];
  v7 = [v4 identifier];
  v8 = [v4 discoverabilityTitle];
  v9 = [v4 attributes];
  v10 = [v4 state];
  v11 = [v4 handler];
  v12 = [(UIAction *)self initWithTitle:v5 image:v6 identifier:v7 discoverabilityTitle:v8 attributes:v9 state:v10 handler:v11];

  objc_storeStrong(&v12->super._attributedTitle, *(v4 + 1));
  objc_storeStrong(&v12->super._subtitle, *(v4 + 2));
  v13 = [v4 accessibilityIdentifier];
  accessibilityIdentifier = v12->super._accessibilityIdentifier;
  v12->super._accessibilityIdentifier = v13;

  v15 = [v4 _accessoryAction];
  [(UIMenuElement *)v12 set_accessoryAction:v15];

  v12->super.__preferredDisplayMode = [v4 _preferredDisplayMode];
  objc_storeStrong(&v12->_selectedImage, *(v4 + 12));
  v12->_repeatBehavior = *(v4 + 13);
  [(UIAction *)v12 _setLeafAlternates:*(v4 + 14)];
  [(UIAction *)v12 _setKeyboardShortcut:*(v4 + 15)];
  v12->_allowsGlobeKeyModifier = *(v4 + 72);
  v12->_enumerationPriority = *(v4 + 16);
  v16 = *(v4 + 17);

  v12->_systemBehaviorsToOutPrioritize = v16;
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UIAction;
  [(UIMenuElement *)&v13 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  discoverabilityTitle = self->_discoverabilityTitle;
  if (discoverabilityTitle)
  {
    [v4 encodeObject:discoverabilityTitle forKey:@"discoverabilityTitle"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    [v4 encodeInteger:attributes forKey:@"attributes"];
  }

  state = self->_state;
  if (state)
  {
    [v4 encodeInteger:state forKey:@"states"];
  }

  selectedImage = self->_selectedImage;
  if (selectedImage)
  {
    [v4 encodeObject:selectedImage forKey:@"selectedImage"];
  }

  repeatBehavior = self->_repeatBehavior;
  if (repeatBehavior)
  {
    [v4 encodeInteger:repeatBehavior forKey:@"repeatBehavior"];
  }

  if ([(NSArray *)self->_leafAlternates count])
  {
    [v4 encodeObject:self->_leafAlternates forKey:@"leafAlternates"];
  }

  keyboardShortcut = self->_keyboardShortcut;
  if (keyboardShortcut)
  {
    [v4 encodeObject:keyboardShortcut forKey:@"keyboardShortcut"];
  }

  enumerationPriority = self->_enumerationPriority;
  if (enumerationPriority)
  {
    [v4 encodeInteger:enumerationPriority forKey:@"enumerationPriority"];
  }

  systemBehaviorsToOutPrioritize = self->_systemBehaviorsToOutPrioritize;
  if (systemBehaviorsToOutPrioritize)
  {
    [v4 encodeInteger:systemBehaviorsToOutPrioritize forKey:@"systemBehaviorsToOutPrioritize"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_identifier isEqualToString:v4[19]];

  return v5;
}

- (void)setTitle:(NSString *)title
{
  v3.receiver = self;
  v3.super_class = UIAction;
  [(UIMenuElement *)&v3 _setTitle:title];
}

- (void)setSubtitle:(id)a3
{
  v3.receiver = self;
  v3.super_class = UIAction;
  [(UIMenuElement *)&v3 _setSubtitle:a3];
}

- (void)setImage:(UIImage *)image
{
  v3.receiver = self;
  v3.super_class = UIAction;
  [(UIMenuElement *)&v3 _setImage:image];
}

- (void)_acceptMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5 deferredElementVisit:(id)a6
{
  if (a5)
  {
    (*(a5 + 2))(a5, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5
{
  if (a5)
  {
    return (*(a5 + 2))(a5, self);
  }

  else
  {
    return 0;
  }
}

- (void)_acceptMenuVisit:(id)a3 leafVisit:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)a3 leafVisit:(id)a4
{
  if (a4)
  {
    return (*(a4 + 2))(a4, self);
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

- (void)_setLeafAlternates:(id)a3
{
  if (self->_leafAlternates != a3)
  {
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [[v4 alloc] initWithArray:v5 copyItems:1];

    leafAlternates = self->_leafAlternates;
    self->_leafAlternates = v6;
  }
}

- (void)_setKeyboardShortcut:(id)a3
{
  if (self->_keyboardShortcut != a3)
  {
    v4 = [a3 copy];
    keyboardShortcut = self->_keyboardShortcut;
    self->_keyboardShortcut = v4;
  }
}

- (void)_setEnumerationPriority:(int64_t)a3
{
  if (self->_enumerationPriority != a3)
  {
    self->_enumerationPriority = a3;
  }
}

- (id)_menuLeafWithKeyboardShortcut:(id)a3
{
  v4 = a3;
  v5 = [(UIAction *)self copy];
  [v5 _setKeyboardShortcut:v4];

  return v5;
}

- (void)performWithSender:(id)a3 target:(id)a4
{
  v8 = a3;
  _UIMenuStateObserverableLeafWillPerformAction(self);
  if (self->_handler)
  {
    objc_storeStrong(&self->_sender, a3);
    v6 = self;
    (*(self->_handler + 2))();
    sender = self->_sender;
    self->_sender = 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIAction alloc];

  return [(UIAction *)v4 initWithAction:self];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(UIMenuElement *)self title];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(UIMenuElement *)self title];
    [v3 appendFormat:@"; title = %@", v6];
  }

  v7 = [(UIMenuElement *)self image];
  if (v7)
  {
    [v3 appendFormat:@"; image = <%@: %p", objc_opt_class(), v7];
    if ([v7 isSymbolImage])
    {
      v8 = _UIImageName(v7);
      [v3 appendFormat:@"; symbol = (%@)", v8];
    }

    [v3 appendString:@">"];
  }

  if ([(UIAction *)self attributes])
  {
    v9 = [MEMORY[0x1E695DF70] array];
    if (([(UIAction *)self attributes]& 1) != 0)
    {
      [v9 addObject:@"Disabled"];
    }

    if (([(UIAction *)self attributes]& 2) != 0)
    {
      [v9 addObject:@"Destructive"];
    }

    if (([(UIAction *)self attributes]& 4) != 0)
    {
      [v9 addObject:@"Hidden"];
    }

    if ([(UIAction *)self keepsMenuPresented])
    {
      [v9 addObject:@"KeepsMenuPresented"];
    }

    v10 = [v9 componentsJoinedByString:@"|"];
    [v3 appendFormat:@"; attributes = (%@)", v10];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)_setState:(int64_t)a3 notifyingObservers:(BOOL)a4
{
  if (self->_state != a3)
  {
    self->_state = a3;
    if (a4)
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

+ (id)_textFromCameraTitleForResponder:(id)a3
{
  v3 = [UIKeyboardCameraSession keyboardCameraContentTypeForResponder:a3];
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