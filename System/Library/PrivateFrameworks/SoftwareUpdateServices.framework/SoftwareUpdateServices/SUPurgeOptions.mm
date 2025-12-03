@interface SUPurgeOptions
- (SUPurgeOptions)init;
- (SUPurgeOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (SUPurgeOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SUPurgeOptions;
  v5 = [(SUOptionsBase *)&v7 init];
  if (v5)
  {
    -[SUPurgeOptions setNotifyUser:](v5, "setNotifyUser:", [coderCopy decodeBoolForKey:@"notify"]);
    -[SUPurgeOptions setUserRequested:](v5, "setUserRequested:", [coderCopy decodeBoolForKey:@"userRequested"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SUPurgeOptions notifyUser](self forKey:{"notifyUser"), @"notify"}];
  [coderCopy encodeBool:-[SUPurgeOptions userRequested](self forKey:{"userRequested"), @"userRequested"}];
}

- (id)copyWithZone:(_NSZone *)zone
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