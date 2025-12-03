@interface RBSAppNapPreventTimerThrottleGrant
+ (id)grantWithTier:(unsigned __int8)tier;
- (BOOL)isEqual:(id)equal;
- (RBSAppNapPreventTimerThrottleGrant)initWithRBSXPCCoder:(id)coder;
- (_BYTE)_initWithTier:(_BYTE *)result;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSAppNapPreventTimerThrottleGrant

+ (id)grantWithTier:(unsigned __int8)tier
{
  v3 = [[RBSAppNapPreventTimerThrottleGrant alloc] _initWithTier:tier];

  return v3;
}

- (_BYTE)_initWithTier:(_BYTE *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = RBSAppNapPreventTimerThrottleGrant;
    result = objc_msgSendSuper2(&v3, sel__init);
    if (result)
    {
      if (a2 >= 6)
      {
        [RBSAppNapPreventTimerThrottleGrant _initWithTier:];
      }

      result[8] = a2;
    }
  }

  return result;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSAppNapPreventTimerThrottleGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_tier forKey:{@"_tier", v5.receiver, v5.super_class}];
}

- (RBSAppNapPreventTimerThrottleGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RBSAppNapPreventTimerThrottleGrant;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_tier = [coderCopy decodeInt64ForKey:@"_tier"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSAppNapPreventTimerThrottleGrant;
  if ([(RBSAttribute *)&v7 isEqual:equalCopy])
  {
    v5 = self->_tier == equalCopy[8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| tier:%d>", v4, self->_tier];

  return v5;
}

@end