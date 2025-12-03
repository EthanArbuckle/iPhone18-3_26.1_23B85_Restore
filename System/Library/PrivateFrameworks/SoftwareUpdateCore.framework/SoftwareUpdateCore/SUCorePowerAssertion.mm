@interface SUCorePowerAssertion
- (BOOL)isEqual:(id)equal;
- (SUCorePowerAssertion)init;
- (SUCorePowerAssertion)initWithCoder:(id)coder;
- (id)copy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePowerAssertion

- (SUCorePowerAssertion)init
{
  v3.receiver = self;
  v3.super_class = SUCorePowerAssertion;
  result = [(SUCorePowerAssertion *)&v3 init];
  if (result)
  {
    *&result->_activeAssertionCount = 0xFFFFFFFF00000000;
  }

  return result;
}

- (SUCorePowerAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SUCorePowerAssertion;
  v5 = [(SUCorePowerAssertion *)&v7 init];
  if (v5)
  {
    v5->_activeAssertionCount = [coderCopy decodeIntegerForKey:@"activeAssertionCount"];
    v5->_assertionID = [coderCopy decodeIntegerForKey:@"assertionID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SUCorePowerAssertion activeAssertionCount](self forKey:{"activeAssertionCount"), @"activeAssertionCount"}];
  [coderCopy encodeInteger:-[SUCorePowerAssertion assertionID](self forKey:{"assertionID"), @"assertionID"}];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      activeAssertionCount = [(SUCorePowerAssertion *)v5 activeAssertionCount];
      if (activeAssertionCount == [(SUCorePowerAssertion *)self activeAssertionCount])
      {
        assertionID = [(SUCorePowerAssertion *)v5 assertionID];
        v8 = assertionID == [(SUCorePowerAssertion *)self assertionID];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end