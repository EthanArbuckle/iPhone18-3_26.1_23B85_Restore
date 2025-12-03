@interface SPSharedSecretsDataCheck
- (SPSharedSecretsDataCheck)initWithCoder:(id)coder;
- (SPSharedSecretsDataCheck)initWithCompleteness:(id)completeness secrets:(id)secrets;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPSharedSecretsDataCheck

- (SPSharedSecretsDataCheck)initWithCompleteness:(id)completeness secrets:(id)secrets
{
  completenessCopy = completeness;
  secretsCopy = secrets;
  v12.receiver = self;
  v12.super_class = SPSharedSecretsDataCheck;
  v9 = [(SPSharedSecretsDataCheck *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_completeness, completeness);
    objc_storeStrong(&v10->_secrets, secrets);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPSharedSecretsDataCheck alloc];
  completeness = [(SPSharedSecretsDataCheck *)self completeness];
  secrets = [(SPSharedSecretsDataCheck *)self secrets];
  v7 = [(SPSharedSecretsDataCheck *)v4 initWithCompleteness:completeness secrets:secrets];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  completeness = self->_completeness;
  coderCopy = coder;
  [coderCopy encodeObject:completeness forKey:@"completeness"];
  [coderCopy encodeObject:self->_secrets forKey:@"secrets"];
}

- (SPSharedSecretsDataCheck)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completeness"];
  completeness = self->_completeness;
  self->_completeness = v5;

  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"secrets"];

  secrets = self->_secrets;
  self->_secrets = v7;

  return self;
}

@end