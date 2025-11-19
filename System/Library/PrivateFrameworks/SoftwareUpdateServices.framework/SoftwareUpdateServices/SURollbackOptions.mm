@interface SURollbackOptions
- (SURollbackOptions)init;
- (SURollbackOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setPromptForConsent:(BOOL)a3;
- (void)setPromptForPasscode:(BOOL)a3;
@end

@implementation SURollbackOptions

- (SURollbackOptions)init
{
  v3.receiver = self;
  v3.super_class = SURollbackOptions;
  result = [(SUOptionsBase *)&v3 init];
  if (result)
  {
    result->_cancelActiveUpdate = 1;
    result->_promptForConsent = 1;
    result->_promptForPasscode = 1;
  }

  return result;
}

- (void)setPromptForConsent:(BOOL)a3
{
  if (self->_promptForConsent != a3)
  {
    self->_promptForConsent = a3;
  }
}

- (void)setPromptForPasscode:(BOOL)a3
{
  if (self->_promptForPasscode != a3)
  {
    self->_promptForPasscode = a3;
  }
}

- (SURollbackOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SURollbackOptions;
  v5 = [(SUOptionsBase *)&v7 init];
  if (v5)
  {
    -[SURollbackOptions setCancelActiveUpdate:](v5, "setCancelActiveUpdate:", [v4 decodeBoolForKey:@"cancelActiveUpdate"]);
    -[SURollbackOptions setPromptForConsent:](v5, "setPromptForConsent:", [v4 decodeBoolForKey:@"promptForConsent"]);
    -[SURollbackOptions setPromptForPasscode:](v5, "setPromptForPasscode:", [v4 decodeBoolForKey:@"promptForPasscode"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SURollbackOptions cancelActiveUpdate](self forKey:{"cancelActiveUpdate"), @"cancelActiveUpdate"}];
  [v4 encodeBool:-[SURollbackOptions promptForConsent](self forKey:{"promptForConsent"), @"promptForConsent"}];
  [v4 encodeBool:-[SURollbackOptions promptForPasscode](self forKey:{"promptForPasscode"), @"promptForPasscode"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setCancelActiveUpdate:{-[SURollbackOptions cancelActiveUpdate](self, "cancelActiveUpdate")}];
  [v4 setPromptForConsent:{-[SURollbackOptions promptForConsent](self, "promptForConsent")}];
  [v4 setPromptForPasscode:{-[SURollbackOptions promptForPasscode](self, "promptForPasscode")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(SURollbackOptions *)self cancelActiveUpdate])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(SURollbackOptions *)self promptForConsent])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(SURollbackOptions *)self promptForPasscode])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"        RollbackOptions:\n            CancelCurrentUpdate:%@\n                promptForConsent:%@\n                promptForPasscode:%@", v4, v5, v6];
}

@end