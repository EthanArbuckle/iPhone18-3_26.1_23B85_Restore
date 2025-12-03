@interface SURollbackOptions
- (SURollbackOptions)init;
- (SURollbackOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setPromptForConsent:(BOOL)consent;
- (void)setPromptForPasscode:(BOOL)passcode;
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

- (void)setPromptForConsent:(BOOL)consent
{
  if (self->_promptForConsent != consent)
  {
    self->_promptForConsent = consent;
  }
}

- (void)setPromptForPasscode:(BOOL)passcode
{
  if (self->_promptForPasscode != passcode)
  {
    self->_promptForPasscode = passcode;
  }
}

- (SURollbackOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SURollbackOptions;
  v5 = [(SUOptionsBase *)&v7 init];
  if (v5)
  {
    -[SURollbackOptions setCancelActiveUpdate:](v5, "setCancelActiveUpdate:", [coderCopy decodeBoolForKey:@"cancelActiveUpdate"]);
    -[SURollbackOptions setPromptForConsent:](v5, "setPromptForConsent:", [coderCopy decodeBoolForKey:@"promptForConsent"]);
    -[SURollbackOptions setPromptForPasscode:](v5, "setPromptForPasscode:", [coderCopy decodeBoolForKey:@"promptForPasscode"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SURollbackOptions cancelActiveUpdate](self forKey:{"cancelActiveUpdate"), @"cancelActiveUpdate"}];
  [coderCopy encodeBool:-[SURollbackOptions promptForConsent](self forKey:{"promptForConsent"), @"promptForConsent"}];
  [coderCopy encodeBool:-[SURollbackOptions promptForPasscode](self forKey:{"promptForPasscode"), @"promptForPasscode"}];
}

- (id)copyWithZone:(_NSZone *)zone
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