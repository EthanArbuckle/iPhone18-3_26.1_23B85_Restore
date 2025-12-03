@interface UIUserNotificationAction
- (BOOL)isEqual:(id)equal;
- (NSString)activationModeString;
- (NSString)behaviorString;
- (UIUserNotificationAction)init;
- (UIUserNotificationAction)initWithCoder:(NSCoder *)coder;
- (UIUserNotificationAction)initWithIdentifier:(id)identifier title:(id)title behavior:(unint64_t)behavior parameters:(id)parameters activationMode:(unint64_t)mode isAuthenticationRequired:(BOOL)required isDestructive:(BOOL)destructive;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)validatedAction;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIUserNotificationAction

- (UIUserNotificationAction)initWithIdentifier:(id)identifier title:(id)title behavior:(unint64_t)behavior parameters:(id)parameters activationMode:(unint64_t)mode isAuthenticationRequired:(BOOL)required isDestructive:(BOOL)destructive
{
  identifierCopy = identifier;
  titleCopy = title;
  parametersCopy = parameters;
  v18 = [(UIUserNotificationAction *)self init];
  v19 = v18;
  if (v18)
  {
    UIUserNotificationActionCommonSetup(v18, identifierCopy, titleCopy, behavior, parametersCopy, mode, required, destructive);
  }

  return v19;
}

- (UIUserNotificationAction)init
{
  v3.receiver = self;
  v3.super_class = UIUserNotificationAction;
  return [(UIUserNotificationAction *)&v3 init];
}

- (UIUserNotificationAction)initWithCoder:(NSCoder *)coder
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = coder;
  v5 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
  v6 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTitleKey"];
  v7 = [(NSCoder *)v4 decodeIntegerForKey:@"kBehaviorKey"];
  v8 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:3];
  v10 = [v8 setWithArray:{v9, v15, v16}];
  v11 = [(NSCoder *)v4 decodeObjectOfClasses:v10 forKey:@"kParametersKey"];

  v12 = [(NSCoder *)v4 decodeIntegerForKey:@"kActivationModeKey"];
  LOBYTE(v9) = [(NSCoder *)v4 decodeBoolForKey:@"kIsAuthenticationRequiredKey"];
  v13 = [(NSCoder *)v4 decodeBoolForKey:@"kIsDestructiveKey"];

  UIUserNotificationActionCommonSetup(self, v5, v6, v7, v11, v12, v9, v13);
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"kIdentifierKey"];
  [coderCopy encodeObject:self->_title forKey:@"kTitleKey"];
  [coderCopy encodeInteger:self->_behavior forKey:@"kBehaviorKey"];
  [coderCopy encodeObject:self->_parameters forKey:@"kParametersKey"];
  [coderCopy encodeInteger:self->_activationMode forKey:@"kActivationModeKey"];
  [coderCopy encodeBool:self->_authenticationRequired forKey:@"kIsAuthenticationRequiredKey"];
  [coderCopy encodeBool:self->_destructive forKey:@"kIsDestructiveKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UIMutableUserNotificationAction alloc];
  LOBYTE(v6) = self->_destructive;
  return [(UIUserNotificationAction *)v4 initWithIdentifier:self->_identifier title:self->_title behavior:self->_behavior parameters:self->_parameters activationMode:self->_activationMode isAuthenticationRequired:self->_authenticationRequired isDestructive:v6];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  behavior_low = SLODWORD(self->_behavior);
  return v4 ^ behavior_low ^ [(NSDictionary *)self->_parameters hash]^ self->_activationMode ^ self->_authenticationRequired ^ self->_destructive;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = equalCopy;
    identifier = [v6 identifier];
    LODWORD(identifier) = [(NSString *)identifier isEqualToString:identifier];

    title = self->_title;
    title = [v6 title];
    v10 = identifier & [(NSString *)title isEqualToString:title];

    behavior = self->_behavior;
    if (behavior == [v6 behavior])
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    parameters = self->_parameters;
    parameters = [v6 parameters];
    v15 = v12 & [(NSDictionary *)parameters isEqualToDictionary:parameters];

    activationMode = self->_activationMode;
    if (activationMode != [v6 activationMode])
    {
      LOBYTE(v15) = 0;
    }

    authenticationRequired = self->_authenticationRequired;
    if (authenticationRequired != [v6 isAuthenticationRequired])
    {
      LOBYTE(v15) = 0;
    }

    destructive = self->_destructive;
    isDestructive = [v6 isDestructive];

    v20 = destructive == isDestructive && v15;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (NSString)activationModeString
{
  activationModeString = self->_activationModeString;
  if (!activationModeString)
  {
    activationMode = self->_activationMode;
    if (activationMode == 1)
    {
      activationModeString = @"UIUserNotificationActivationModeBackground";
    }

    else
    {
      if (activationMode)
      {
        activationModeString = 0;
        return activationModeString;
      }

      activationModeString = @"UIUserNotificationActivationModeForeground";
    }

    self->_activationModeString = &activationModeString->isa;
  }

  return activationModeString;
}

- (NSString)behaviorString
{
  if (!self->_activationModeString)
  {
    behavior = self->_behavior;
    if (!behavior)
    {
      v3 = @"UIUserNotificationActionBehaviorDefault";
      goto LABEL_6;
    }

    if (behavior == 1)
    {
      v3 = @"UIUserNotificationActionBehaviorTextInput";
LABEL_6:
      self->_behaviorString = &v3->isa;
    }
  }

  return self->_behaviorString;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = self->_identifier;
  title = self->_title;
  behaviorString = [(UIUserNotificationAction *)self behaviorString];
  activationModeString = [(UIUserNotificationAction *)self activationModeString];
  v9 = NSStringFromBOOL();
  v10 = NSStringFromBOOL();
  v11 = [(NSDictionary *)self->_parameters description];
  v12 = [v3 stringWithFormat:@"<%@: %p identifier: %@, title: %@, behavior: %@, activationMode: %@, isAuthenticationRequired:%@, isDestructive:%@, parameters: %@>", v4, self, identifier, title, behaviorString, activationModeString, v9, v10, v11];;

  return v12;
}

- (id)validatedAction
{
  selfCopy = self;
  v3 = selfCopy;
  if (!selfCopy->_activationMode && !selfCopy->_authenticationRequired)
  {
    v4 = [(UIUserNotificationAction *)selfCopy copy];

    *(v4 + 8) = 1;
    v3 = v4;
  }

  return v3;
}

@end