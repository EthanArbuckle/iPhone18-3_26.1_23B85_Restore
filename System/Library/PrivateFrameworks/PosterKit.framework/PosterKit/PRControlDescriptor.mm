@interface PRControlDescriptor
- (BOOL)providerHasMatchingDescriptor;
- (PRControlDescriptor)initWithCoder:(id)coder;
- (PRControlDescriptor)initWithPRSControl:(id)control;
- (PRControlDescriptor)initWithUniqueIdentifier:(id)identifier controlIdentity:(id)identity controlType:(unint64_t)type;
- (id)controlDescriptorFromProvider;
- (id)copyWithIntent:(id)intent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)intent;
- (id)prsControl;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRControlDescriptor

- (PRControlDescriptor)initWithUniqueIdentifier:(id)identifier controlIdentity:(id)identity controlType:(unint64_t)type
{
  identifierCopy = identifier;
  identityCopy = identity;
  v14.receiver = self;
  v14.super_class = PRControlDescriptor;
  v11 = [(PRControlDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uniqueIdentifier, identifier);
    objc_storeStrong(&v12->_controlIdentity, identity);
    v12->_controlType = type;
  }

  return v12;
}

- (PRControlDescriptor)initWithPRSControl:(id)control
{
  if (control)
  {
    controlCopy = control;
    uniqueIdentifier = [controlCopy uniqueIdentifier];
    controlIdentity = [controlCopy controlIdentity];
    controlType = [controlCopy controlType];

    self = [(PRControlDescriptor *)self initWithUniqueIdentifier:uniqueIdentifier controlIdentity:controlIdentity controlType:controlType];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)prsControl
{
  extensionIdentity = [(CHSControlIdentity *)self->_controlIdentity extensionIdentity];
  v4 = objc_alloc(MEMORY[0x1E69C4FE0]);
  uniqueIdentifier = self->_uniqueIdentifier;
  kind = [(CHSControlIdentity *)self->_controlIdentity kind];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  controlType = self->_controlType;
  intentReference = [(CHSControlIdentity *)self->_controlIdentity intentReference];
  intent = [intentReference intent];
  v12 = [v4 initWithUniqueIdentifier:uniqueIdentifier kind:kind extensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier controlType:controlType intent:intent];

  return v12;
}

- (id)controlDescriptorFromProvider
{
  v3 = PRSharedWidgetExtensionProvider();
  v4 = [v3 controlDescriptorForControl:self->_controlIdentity];

  return v4;
}

- (id)intent
{
  intentReference = [(CHSControlIdentity *)self->_controlIdentity intentReference];
  intent = [intentReference intent];

  return intent;
}

- (id)copyWithIntent:(id)intent
{
  v4 = MEMORY[0x1E6994260];
  intentCopy = intent;
  v6 = [v4 alloc];
  extensionIdentity = [(PRControlDescriptor *)self extensionIdentity];
  kind = [(CHSControlIdentity *)self->_controlIdentity kind];
  v9 = [v6 initWithExtensionIdentity:extensionIdentity kind:kind intent:intentCopy];

  v10 = [(PRControlDescriptor *)self copy];
  [v10 setControlIdentity:v9];

  return v10;
}

- (BOOL)providerHasMatchingDescriptor
{
  controlDescriptorFromProvider = [(PRControlDescriptor *)self controlDescriptorFromProvider];
  v3 = controlDescriptorFromProvider != 0;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRControlDescriptor alloc];
  v5 = [(NSString *)self->_uniqueIdentifier copy];
  v6 = [(CHSControlIdentity *)self->_controlIdentity copy];
  v7 = [(PRControlDescriptor *)v4 initWithUniqueIdentifier:v5 controlIdentity:v6 controlType:self->_controlType];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueIdentifier = self->_uniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_controlIdentity forKey:@"controlIdentity"];
  [coderCopy encodeInteger:self->_controlType forKey:@"controlType"];
}

- (PRControlDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"controlIdentity"];
  v7 = [coderCopy decodeIntegerForKey:@"controlType"];

  v8 = [(PRControlDescriptor *)self initWithUniqueIdentifier:v5 controlIdentity:v6 controlType:v7];
  return v8;
}

@end