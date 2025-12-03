@interface STSAuxiliaryCredential
- (STSAuxiliaryCredential)initWithCoder:(id)coder;
- (STSAuxiliaryCredential)initWithType:(int64_t)type;
@end

@implementation STSAuxiliaryCredential

- (STSAuxiliaryCredential)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = STSAuxiliaryCredential;
  result = [(STSAuxiliaryCredential *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (STSAuxiliaryCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STSAuxiliaryCredential;
  v5 = [(STSAuxiliaryCredential *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"STSAuxiliaryCredentialKeyType"];
  }

  return v5;
}

@end