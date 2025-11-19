@interface SUCorePowerAssertion
- (BOOL)isEqual:(id)a3;
- (SUCorePowerAssertion)init;
- (SUCorePowerAssertion)initWithCoder:(id)a3;
- (id)copy;
- (void)encodeWithCoder:(id)a3;
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

- (SUCorePowerAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SUCorePowerAssertion;
  v5 = [(SUCorePowerAssertion *)&v7 init];
  if (v5)
  {
    v5->_activeAssertionCount = [v4 decodeIntegerForKey:@"activeAssertionCount"];
    v5->_assertionID = [v4 decodeIntegerForKey:@"assertionID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SUCorePowerAssertion activeAssertionCount](self forKey:{"activeAssertionCount"), @"activeAssertionCount"}];
  [v4 encodeInteger:-[SUCorePowerAssertion assertionID](self forKey:{"assertionID"), @"assertionID"}];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCorePowerAssertion *)v5 activeAssertionCount];
      if (v6 == [(SUCorePowerAssertion *)self activeAssertionCount])
      {
        v7 = [(SUCorePowerAssertion *)v5 assertionID];
        v8 = v7 == [(SUCorePowerAssertion *)self assertionID];
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