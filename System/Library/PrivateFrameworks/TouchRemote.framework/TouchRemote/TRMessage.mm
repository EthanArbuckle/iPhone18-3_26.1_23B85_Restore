@interface TRMessage
- (TRMessage)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRMessage

- (void)encodeWithCoder:(id)coder
{
  userInfo = self->_userInfo;
  if (userInfo)
  {
    [coder encodeObject:userInfo forKey:@"TRMessage_userInfo"];
  }
}

- (TRMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TRMessage *)self init];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"TRMessage_userInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_userInfo, v6);
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_userInfo)
  {
    v5 = @"present";
  }

  else
  {
    v5 = @"absent";
  }

  return [v3 stringWithFormat:@"<%@:%p> userInfo: [-%@-]", v4, self, v5];
}

@end