@interface PRControlDescriptor
- (BOOL)providerHasMatchingDescriptor;
- (PRControlDescriptor)initWithCoder:(id)a3;
- (PRControlDescriptor)initWithPRSControl:(id)a3;
- (PRControlDescriptor)initWithUniqueIdentifier:(id)a3 controlIdentity:(id)a4 controlType:(unint64_t)a5;
- (id)controlDescriptorFromProvider;
- (id)copyWithIntent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)intent;
- (id)prsControl;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRControlDescriptor

- (PRControlDescriptor)initWithUniqueIdentifier:(id)a3 controlIdentity:(id)a4 controlType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PRControlDescriptor;
  v11 = [(PRControlDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uniqueIdentifier, a3);
    objc_storeStrong(&v12->_controlIdentity, a4);
    v12->_controlType = a5;
  }

  return v12;
}

- (PRControlDescriptor)initWithPRSControl:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 uniqueIdentifier];
    v6 = [v4 controlIdentity];
    v7 = [v4 controlType];

    self = [(PRControlDescriptor *)self initWithUniqueIdentifier:v5 controlIdentity:v6 controlType:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)prsControl
{
  v3 = [(CHSControlIdentity *)self->_controlIdentity extensionIdentity];
  v4 = objc_alloc(MEMORY[0x1E69C4FE0]);
  uniqueIdentifier = self->_uniqueIdentifier;
  v6 = [(CHSControlIdentity *)self->_controlIdentity kind];
  v7 = [v3 extensionBundleIdentifier];
  v8 = [v3 containerBundleIdentifier];
  controlType = self->_controlType;
  v10 = [(CHSControlIdentity *)self->_controlIdentity intentReference];
  v11 = [v10 intent];
  v12 = [v4 initWithUniqueIdentifier:uniqueIdentifier kind:v6 extensionBundleIdentifier:v7 containerBundleIdentifier:v8 controlType:controlType intent:v11];

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
  v2 = [(CHSControlIdentity *)self->_controlIdentity intentReference];
  v3 = [v2 intent];

  return v3;
}

- (id)copyWithIntent:(id)a3
{
  v4 = MEMORY[0x1E6994260];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(PRControlDescriptor *)self extensionIdentity];
  v8 = [(CHSControlIdentity *)self->_controlIdentity kind];
  v9 = [v6 initWithExtensionIdentity:v7 kind:v8 intent:v5];

  v10 = [(PRControlDescriptor *)self copy];
  [v10 setControlIdentity:v9];

  return v10;
}

- (BOOL)providerHasMatchingDescriptor
{
  v2 = [(PRControlDescriptor *)self controlDescriptorFromProvider];
  v3 = v2 != 0;

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRControlDescriptor alloc];
  v5 = [(NSString *)self->_uniqueIdentifier copy];
  v6 = [(CHSControlIdentity *)self->_controlIdentity copy];
  v7 = [(PRControlDescriptor *)v4 initWithUniqueIdentifier:v5 controlIdentity:v6 controlType:self->_controlType];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v5 encodeObject:self->_controlIdentity forKey:@"controlIdentity"];
  [v5 encodeInteger:self->_controlType forKey:@"controlType"];
}

- (PRControlDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"controlIdentity"];
  v7 = [v4 decodeIntegerForKey:@"controlType"];

  v8 = [(PRControlDescriptor *)self initWithUniqueIdentifier:v5 controlIdentity:v6 controlType:v7];
  return v8;
}

@end