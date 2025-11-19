@interface SUInstallOptions
- (SUInstallOptions)init;
- (SUInstallOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
    v4 = [(SUOptionsBase *)v2 defaultClientName];
    clientName = v3->_clientName;
    v3->_clientName = v4;

    v3->_ignorableConstraints = 0;
  }

  return v3;
}

- (SUInstallOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUInstallOptions;
  v5 = [(SUOptionsBase *)&v8 init];
  if (v5)
  {
    -[SUInstallOptions setDarkBoot:](v5, "setDarkBoot:", [v4 decodeBoolForKey:@"darkBootKey"]);
    -[SUInstallOptions setRequired:](v5, "setRequired:", [v4 decodeBoolForKey:@"requiredKey"]);
    -[SUInstallOptions setManaged:](v5, "setManaged:", [v4 decodeBoolForKey:@"managedKey"]);
    -[SUInstallOptions setSkipActivationCheck:](v5, "setSkipActivationCheck:", [v4 decodeBoolForKey:@"skipActivationCheck"]);
    -[SUInstallOptions setAutomaticInstallation:](v5, "setAutomaticInstallation:", [v4 decodeBoolForKey:@"automaticInstallation"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientNameKey"];
    [(SUInstallOptions *)v5 setClientName:v6];

    -[SUInstallOptions setIgnorableConstraints:](v5, "setIgnorableConstraints:", [v4 decodeIntegerForKey:@"ignorableConstraintsKey"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  darkBoot = self->_darkBoot;
  v5 = a3;
  [v5 encodeBool:darkBoot forKey:@"darkBootKey"];
  [v5 encodeBool:self->_required forKey:@"requiredKey"];
  [v5 encodeBool:self->_managed forKey:@"managedKey"];
  [v5 encodeBool:self->_skipActivationCheck forKey:@"skipActivationCheck"];
  [v5 encodeBool:self->_automaticInstallation forKey:@"automaticInstallation"];
  [v5 encodeObject:self->_clientName forKey:@"clientNameKey"];
  [v5 encodeInteger:self->_ignorableConstraints forKey:@"ignorableConstraintsKey"];
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [(SUInstallOptions *)self clientName];
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
  v11 = [v3 stringWithFormat:@"\n            ClientName: %@\n            DarkBoot: %@\n            isManaged: %@\n            skipActivationCheck: %@\n            automaticInstallation: %@\n            Installation required: %@\n            IgnorableConstraints: %@\n", v4, v6, v7, v8, v9, v5, v10];

  return v11;
}

@end