@interface SUInstallPolicy
- (BOOL)isEqual:(id)a3;
- (SUInstallPolicy)initWithCoder:(id)a3;
- (SUInstallPolicy)initWithInstallPolicyType:(unint64_t)a3;
- (id)description;
- (void)_setAutoUpdateEnabled:(BOOL)a3;
- (void)_setClientName:(id)a3;
- (void)_setDarkBoolEnabled:(BOOL)a3;
- (void)_setType:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUInstallPolicy

- (SUInstallPolicy)initWithInstallPolicyType:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = SUInstallPolicy;
  v4 = [(SUInstallPolicy *)&v8 init];
  v5 = v4;
  if (v4)
  {
    clientName = v4->_clientName;
    v4->_clientName = 0;

    [(SUInstallPolicy *)v5 _setType:a3];
    *&v5->_autoUpdateEnabled = 0;
  }

  return v5;
}

- (void)_setClientName:(id)a3
{
  v5 = a3;
  clientName = self->_clientName;
  p_clientName = &self->_clientName;
  v8 = v5;
  if (![(NSString *)clientName isEqualToString:?])
  {
    objc_storeStrong(p_clientName, a3);
  }
}

- (void)_setType:(unint64_t)a3
{
  v12 = +[SUUtility currentReleaseTypeIsInternal];
  self->_type = a3;
  if (a3 == 1)
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

  else if (a3)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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

- (void)_setAutoUpdateEnabled:(BOOL)a3
{
  if (self->_autoUpdateEnabled != a3)
  {
    self->_autoUpdateEnabled = a3;
  }
}

- (void)_setDarkBoolEnabled:(BOOL)a3
{
  if (self->_useDarkBoot != a3)
  {
    self->_useDarkBoot = a3;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  if (self == v4)
  {
    LOBYTE(v11) = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(SUInstallPolicy *)self clientName];
    v8 = [(SUInstallPolicy *)v6 clientName];
    if ([v7 isEqualToString:v8] && (v9 = -[SUInstallPolicy type](self, "type"), v9 == -[SUInstallPolicy type](v6, "type")) && (v10 = -[SUInstallPolicy autoUpdateEnabled](self, "autoUpdateEnabled"), v10 == -[SUInstallPolicy autoUpdateEnabled](v6, "autoUpdateEnabled")))
    {
      v13 = [(SUInstallPolicy *)self useDarkBoot];
      v11 = v13 ^ [(SUInstallPolicy *)v6 useDarkBoot]^ 1;
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
  v4 = [(SUInstallPolicy *)self clientName];
  if (self->_type)
  {
    v5 = @"Required";
  }

  else
  {
    v5 = @"Default";
  }

  v6 = v5;
  v7 = [(SUInstallPolicy *)self skipsAllowed];
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

  v10 = [v3 stringWithFormat:@"\n            clientName:%@\n            type: %@\n            skipsAllowed: %d\n            autoUpdateEnabled: %@\n            DarkBoot: %@", v4, v6, v7, v8, v9];

  return v10;
}

- (SUInstallPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUInstallPolicy;
  v5 = [(SUInstallPolicy *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientName"];
    [(SUInstallPolicy *)v5 setClientName:v6];

    -[SUInstallPolicy setType:](v5, "setType:", [v4 decodeIntegerForKey:@"type"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"skipsAllowed"];
    -[SUInstallPolicy setSkipsAllowed:](v5, "setSkipsAllowed:", [v7 unsignedIntegerValue]);

    -[SUInstallPolicy _setAutoUpdateEnabled:](v5, "_setAutoUpdateEnabled:", [v4 decodeBoolForKey:@"autoUpdateEnabled"]);
    -[SUInstallPolicy _setDarkBoolEnabled:](v5, "_setDarkBoolEnabled:", [v4 decodeBoolForKey:@"darkBootEnabled"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  clientName = self->_clientName;
  v6 = a3;
  [v6 encodeObject:clientName forKey:@"clientName"];
  [v6 encodeInteger:self->_type forKey:@"type"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_skipsAllowed];
  [v6 encodeObject:v5 forKey:@"skipsAllowed"];

  [v6 encodeBool:self->_autoUpdateEnabled forKey:@"autoUpdateEnabled"];
  [v6 encodeBool:self->_useDarkBoot forKey:@"darkBootEnabled"];
}

@end