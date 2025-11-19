@interface SPSharedSecretsDataCheck
- (SPSharedSecretsDataCheck)initWithCoder:(id)a3;
- (SPSharedSecretsDataCheck)initWithCompleteness:(id)a3 secrets:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPSharedSecretsDataCheck

- (SPSharedSecretsDataCheck)initWithCompleteness:(id)a3 secrets:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPSharedSecretsDataCheck;
  v9 = [(SPSharedSecretsDataCheck *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_completeness, a3);
    objc_storeStrong(&v10->_secrets, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPSharedSecretsDataCheck alloc];
  v5 = [(SPSharedSecretsDataCheck *)self completeness];
  v6 = [(SPSharedSecretsDataCheck *)self secrets];
  v7 = [(SPSharedSecretsDataCheck *)v4 initWithCompleteness:v5 secrets:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  completeness = self->_completeness;
  v5 = a3;
  [v5 encodeObject:completeness forKey:@"completeness"];
  [v5 encodeObject:self->_secrets forKey:@"secrets"];
}

- (SPSharedSecretsDataCheck)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completeness"];
  completeness = self->_completeness;
  self->_completeness = v5;

  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"secrets"];

  secrets = self->_secrets;
  self->_secrets = v7;

  return self;
}

@end