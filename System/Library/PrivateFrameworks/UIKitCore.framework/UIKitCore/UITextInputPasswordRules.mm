@interface UITextInputPasswordRules
+ (UITextInputPasswordRules)passwordRulesWithDescriptor:(NSString *)passwordRulesDescriptor;
- (BOOL)isEqual:(id)equal;
- (UITextInputPasswordRules)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPasswordRulesWithDescriptor:(id)descriptor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UITextInputPasswordRules

- (id)initPasswordRulesWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = UITextInputPasswordRules;
  v6 = [(UITextInputPasswordRules *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passwordRulesDescriptor, descriptor);
  }

  return v7;
}

+ (UITextInputPasswordRules)passwordRulesWithDescriptor:(NSString *)passwordRulesDescriptor
{
  v4 = passwordRulesDescriptor;
  v5 = [[self alloc] initPasswordRulesWithDescriptor:v4];

  return v5;
}

- (UITextInputPasswordRules)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UITextInputPasswordRules;
  v5 = [(UITextInputPasswordRules *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passwordRulesDescriptor"];
    passwordRulesDescriptor = v5->_passwordRulesDescriptor;
    v5->_passwordRulesDescriptor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  passwordRulesDescriptor = self->_passwordRulesDescriptor;
  if (passwordRulesDescriptor)
  {
    [coder encodeObject:passwordRulesDescriptor forKey:@"passwordRulesDescriptor"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  passwordRulesDescriptor = [(UITextInputPasswordRules *)self passwordRulesDescriptor];
  v4 = [UITextInputPasswordRules passwordRulesWithDescriptor:passwordRulesDescriptor];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    passwordRulesDescriptor = [(UITextInputPasswordRules *)self passwordRulesDescriptor];
    passwordRulesDescriptor2 = [v5 passwordRulesDescriptor];
    if (passwordRulesDescriptor == passwordRulesDescriptor2)
    {
      v10 = 1;
    }

    else
    {
      passwordRulesDescriptor3 = [(UITextInputPasswordRules *)self passwordRulesDescriptor];
      passwordRulesDescriptor4 = [v5 passwordRulesDescriptor];
      v10 = [passwordRulesDescriptor3 isEqual:passwordRulesDescriptor4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  passwordRulesDescriptor = [(UITextInputPasswordRules *)self passwordRulesDescriptor];

  if (passwordRulesDescriptor)
  {
    passwordRulesDescriptor2 = [(UITextInputPasswordRules *)self passwordRulesDescriptor];
    [v3 appendFormat:@"; passwordRulesDescriptor = %@", passwordRulesDescriptor2];
  }

  [v3 appendString:@">"];

  return v3;
}

@end