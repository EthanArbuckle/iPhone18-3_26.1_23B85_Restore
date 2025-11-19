@interface STSAuxiliaryCredential
- (STSAuxiliaryCredential)initWithCoder:(id)a3;
- (STSAuxiliaryCredential)initWithType:(int64_t)a3;
@end

@implementation STSAuxiliaryCredential

- (STSAuxiliaryCredential)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = STSAuxiliaryCredential;
  result = [(STSAuxiliaryCredential *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (STSAuxiliaryCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STSAuxiliaryCredential;
  v5 = [(STSAuxiliaryCredential *)&v7 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"STSAuxiliaryCredentialKeyType"];
  }

  return v5;
}

@end