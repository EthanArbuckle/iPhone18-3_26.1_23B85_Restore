@interface UITextInputPasswordRules
+ (UITextInputPasswordRules)passwordRulesWithDescriptor:(NSString *)passwordRulesDescriptor;
- (BOOL)isEqual:(id)a3;
- (UITextInputPasswordRules)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initPasswordRulesWithDescriptor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UITextInputPasswordRules

- (id)initPasswordRulesWithDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UITextInputPasswordRules;
  v6 = [(UITextInputPasswordRules *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passwordRulesDescriptor, a3);
  }

  return v7;
}

+ (UITextInputPasswordRules)passwordRulesWithDescriptor:(NSString *)passwordRulesDescriptor
{
  v4 = passwordRulesDescriptor;
  v5 = [[a1 alloc] initPasswordRulesWithDescriptor:v4];

  return v5;
}

- (UITextInputPasswordRules)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UITextInputPasswordRules;
  v5 = [(UITextInputPasswordRules *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passwordRulesDescriptor"];
    passwordRulesDescriptor = v5->_passwordRulesDescriptor;
    v5->_passwordRulesDescriptor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  passwordRulesDescriptor = self->_passwordRulesDescriptor;
  if (passwordRulesDescriptor)
  {
    [a3 encodeObject:passwordRulesDescriptor forKey:@"passwordRulesDescriptor"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(UITextInputPasswordRules *)self passwordRulesDescriptor];
  v4 = [UITextInputPasswordRules passwordRulesWithDescriptor:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UITextInputPasswordRules *)self passwordRulesDescriptor];
    v7 = [v5 passwordRulesDescriptor];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(UITextInputPasswordRules *)self passwordRulesDescriptor];
      v9 = [v5 passwordRulesDescriptor];
      v10 = [v8 isEqual:v9];
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
  v4 = [(UITextInputPasswordRules *)self passwordRulesDescriptor];

  if (v4)
  {
    v5 = [(UITextInputPasswordRules *)self passwordRulesDescriptor];
    [v3 appendFormat:@"; passwordRulesDescriptor = %@", v5];
  }

  [v3 appendString:@">"];

  return v3;
}

@end