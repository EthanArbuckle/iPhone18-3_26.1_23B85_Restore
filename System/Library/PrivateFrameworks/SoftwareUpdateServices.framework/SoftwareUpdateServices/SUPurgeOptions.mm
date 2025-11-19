@interface SUPurgeOptions
- (SUPurgeOptions)init;
- (SUPurgeOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUPurgeOptions

- (SUPurgeOptions)init
{
  v3.receiver = self;
  v3.super_class = SUPurgeOptions;
  result = [(SUOptionsBase *)&v3 init];
  if (result)
  {
    result->_notifyUser = 0;
    result->_userRequested = 0;
  }

  return result;
}

- (SUPurgeOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SUPurgeOptions;
  v5 = [(SUOptionsBase *)&v7 init];
  if (v5)
  {
    -[SUPurgeOptions setNotifyUser:](v5, "setNotifyUser:", [v4 decodeBoolForKey:@"notify"]);
    -[SUPurgeOptions setUserRequested:](v5, "setUserRequested:", [v4 decodeBoolForKey:@"userRequested"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SUPurgeOptions notifyUser](self forKey:{"notifyUser"), @"notify"}];
  [v4 encodeBool:-[SUPurgeOptions userRequested](self forKey:{"userRequested"), @"userRequested"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setNotifyUser:{-[SUPurgeOptions notifyUser](self, "notifyUser")}];
  [v4 setUserRequested:{-[SUPurgeOptions userRequested](self, "userRequested")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(SUPurgeOptions *)self notifyUser])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(SUPurgeOptions *)self userRequested])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"        SUPurgeOptions:\n        notifyUser:%@\n        userRequested:%@", v4, v5];
}

@end