@interface SSRestrictionCondition
- (BOOL)evaluateWithContext:(id)a3;
- (SSRestrictionCondition)initWithDictionary:(id)a3;
- (void)dealloc;
@end

@implementation SSRestrictionCondition

- (SSRestrictionCondition)initWithDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = SSRestrictionCondition;
  v4 = [(SSProtocolCondition *)&v7 initWithDictionary:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"restriction-name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_restrictionName = v5;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSRestrictionCondition;
  [(SSProtocolCondition *)&v3 dealloc];
}

- (BOOL)evaluateWithContext:(id)a3
{
  if (self->_restrictionName)
  {
    v4 = [objc_msgSend(MEMORY[0x1E69ADFB8] sharedConnection] == 2;
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [self->super._value BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v5 ^ (self->super._operator == 1);
}

@end