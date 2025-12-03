@interface SUInstallPolicy
- (BOOL)isEqual:(id)equal;
- (SUInstallPolicy)initWithCoder:(id)coder;
- (SUInstallPolicy)initWithInstallPolicyType:(unint64_t)type;
- (id)description;
- (void)_setAutoUpdateEnabled:(BOOL)enabled;
- (void)_setClientName:(id)name;
- (void)_setDarkBoolEnabled:(BOOL)enabled;
- (void)_setType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUInstallPolicy

- (SUInstallPolicy)initWithInstallPolicyType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = SUInstallPolicy;
  v4 = [(SUInstallPolicy *)&v8 init];
  v5 = v4;
  if (v4)
  {
    clientName = v4->_clientName;
    v4->_clientName = 0;

    [(SUInstallPolicy *)v5 _setType:type];
    *&v5->_autoUpdateEnabled = 0;
  }

  return v5;
}

- (void)_setClientName:(id)name
{
  nameCopy = name;
  clientName = self->_clientName;
  p_clientName = &self->_clientName;
  v8 = nameCopy;
  if (![(NSString *)clientName isEqualToString:?])
  {
    objc_storeStrong(p_clientName, name);
  }
}

- (void)_setType:(unint64_t)type
{
  v12 = +[SUUtility currentReleaseTypeIsInternal];
  self->_type = type;
  if (type == 1)
  {
    SULogInfo(@"Setting required install policy of 3 days", v5, v6, v7, v8, v9, v10, v11, v36);
    [(SUInstallPolicy *)self setSkipsAllowed:3];
    if (!v12)
    {
      return;
    }

    SULogInfo(@"[Apple Internal] Reducing required install policy to 1", v21, v22, v23, v24, v25, v26, v27, v38);
    v20 = 1;
  }

  else if (type)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    SULogInfo(@"Unknown InstallPolicyType provided: %@", v29, v30, v31, v32, v33, v34, v35, v28);

    v20 = -1;
  }

  else
  {
    SULogInfo(@"Setting default install policy of 7 days", v5, v6, v7, v8, v9, v10, v11, v36);
    [(SUInstallPolicy *)self setSkipsAllowed:7];
    if (!v12)
    {
      return;
    }

    SULogInfo(@"[Apple Internal] Reducing required install policy to 3", v13, v14, v15, v16, v17, v18, v19, v37);
    v20 = 3;
  }

  [(SUInstallPolicy *)self setSkipsAllowed:v20];
}

- (void)_setAutoUpdateEnabled:(BOOL)enabled
{
  if (self->_autoUpdateEnabled != enabled)
  {
    self->_autoUpdateEnabled = enabled;
  }
}

- (void)_setDarkBoolEnabled:(BOOL)enabled
{
  if (self->_useDarkBoot != enabled)
  {
    self->_useDarkBoot = enabled;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_9;
  }

  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    clientName = [(SUInstallPolicy *)self clientName];
    clientName2 = [(SUInstallPolicy *)v6 clientName];
    if ([clientName isEqualToString:clientName2] && (v9 = -[SUInstallPolicy type](self, "type"), v9 == -[SUInstallPolicy type](v6, "type")) && (v10 = -[SUInstallPolicy autoUpdateEnabled](self, "autoUpdateEnabled"), v10 == -[SUInstallPolicy autoUpdateEnabled](v6, "autoUpdateEnabled")))
    {
      useDarkBoot = [(SUInstallPolicy *)self useDarkBoot];
      v11 = useDarkBoot ^ [(SUInstallPolicy *)v6 useDarkBoot]^ 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v11) = 0;
  }

LABEL_11:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  clientName = [(SUInstallPolicy *)self clientName];
  if (self->_type)
  {
    v5 = @"Required";
  }

  else
  {
    v5 = @"Default";
  }

  v6 = v5;
  skipsAllowed = [(SUInstallPolicy *)self skipsAllowed];
  if ([(SUInstallPolicy *)self autoUpdateEnabled])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(SUInstallPolicy *)self useDarkBoot])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"\n            clientName:%@\n            type: %@\n            skipsAllowed: %d\n            autoUpdateEnabled: %@\n            DarkBoot: %@", clientName, v6, skipsAllowed, v8, v9];

  return v10;
}

- (SUInstallPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUInstallPolicy;
  v5 = [(SUInstallPolicy *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientName"];
    [(SUInstallPolicy *)v5 setClientName:v6];

    -[SUInstallPolicy setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"skipsAllowed"];
    -[SUInstallPolicy setSkipsAllowed:](v5, "setSkipsAllowed:", [v7 unsignedIntegerValue]);

    -[SUInstallPolicy _setAutoUpdateEnabled:](v5, "_setAutoUpdateEnabled:", [coderCopy decodeBoolForKey:@"autoUpdateEnabled"]);
    -[SUInstallPolicy _setDarkBoolEnabled:](v5, "_setDarkBoolEnabled:", [coderCopy decodeBoolForKey:@"darkBootEnabled"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clientName = self->_clientName;
  coderCopy = coder;
  [coderCopy encodeObject:clientName forKey:@"clientName"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_skipsAllowed];
  [coderCopy encodeObject:v5 forKey:@"skipsAllowed"];

  [coderCopy encodeBool:self->_autoUpdateEnabled forKey:@"autoUpdateEnabled"];
  [coderCopy encodeBool:self->_useDarkBoot forKey:@"darkBootEnabled"];
}

@end