@interface SUInstallOptions
- (SUInstallOptions)init;
- (SUInstallOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUInstallOptions

- (SUInstallOptions)init
{
  v7.receiver = self;
  v7.super_class = SUInstallOptions;
  v2 = [(SUOptionsBase *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_darkBoot = 0;
    v2->_required = 0;
    v2->_managed = 0;
    v2->_skipActivationCheck = 0;
    v2->_automaticInstallation = 0;
    defaultClientName = [(SUOptionsBase *)v2 defaultClientName];
    clientName = v3->_clientName;
    v3->_clientName = defaultClientName;

    v3->_ignorableConstraints = 0;
  }

  return v3;
}

- (SUInstallOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SUInstallOptions;
  v5 = [(SUOptionsBase *)&v8 init];
  if (v5)
  {
    -[SUInstallOptions setDarkBoot:](v5, "setDarkBoot:", [coderCopy decodeBoolForKey:@"darkBootKey"]);
    -[SUInstallOptions setRequired:](v5, "setRequired:", [coderCopy decodeBoolForKey:@"requiredKey"]);
    -[SUInstallOptions setManaged:](v5, "setManaged:", [coderCopy decodeBoolForKey:@"managedKey"]);
    -[SUInstallOptions setSkipActivationCheck:](v5, "setSkipActivationCheck:", [coderCopy decodeBoolForKey:@"skipActivationCheck"]);
    -[SUInstallOptions setAutomaticInstallation:](v5, "setAutomaticInstallation:", [coderCopy decodeBoolForKey:@"automaticInstallation"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientNameKey"];
    [(SUInstallOptions *)v5 setClientName:v6];

    -[SUInstallOptions setIgnorableConstraints:](v5, "setIgnorableConstraints:", [coderCopy decodeIntegerForKey:@"ignorableConstraintsKey"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  darkBoot = self->_darkBoot;
  coderCopy = coder;
  [coderCopy encodeBool:darkBoot forKey:@"darkBootKey"];
  [coderCopy encodeBool:self->_required forKey:@"requiredKey"];
  [coderCopy encodeBool:self->_managed forKey:@"managedKey"];
  [coderCopy encodeBool:self->_skipActivationCheck forKey:@"skipActivationCheck"];
  [coderCopy encodeBool:self->_automaticInstallation forKey:@"automaticInstallation"];
  [coderCopy encodeObject:self->_clientName forKey:@"clientNameKey"];
  [coderCopy encodeInteger:self->_ignorableConstraints forKey:@"ignorableConstraintsKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDarkBoot:self->_darkBoot];
  [v4 setRequired:self->_required];
  [v4 setManaged:self->_managed];
  [v4 setSkipActivationCheck:self->_skipActivationCheck];
  [v4 setAutomaticInstallation:self->_automaticInstallation];
  [v4 setClientName:self->_clientName];
  [v4 setIgnorableConstraints:self->_ignorableConstraints];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  clientName = [(SUInstallOptions *)self clientName];
  v5 = @"NO";
  if ([(SUInstallOptions *)self isDarkBoot])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(SUInstallOptions *)self isManaged])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(SUInstallOptions *)self skipActivationCheck])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(SUInstallOptions *)self automaticInstallation])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(SUInstallOptions *)self isRequired])
  {
    v5 = @"YES";
  }

  v10 = SUStringFromInstallationConstraints([(SUInstallOptions *)self ignorableConstraints]);
  v11 = [v3 stringWithFormat:@"\n            ClientName: %@\n            DarkBoot: %@\n            isManaged: %@\n            skipActivationCheck: %@\n            automaticInstallation: %@\n            Installation required: %@\n            IgnorableConstraints: %@\n", clientName, v6, v7, v8, v9, v5, v10];

  return v11;
}

@end