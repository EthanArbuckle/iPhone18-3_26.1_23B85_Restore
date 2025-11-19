@interface RBSAppNapPreventTimerThrottleGrant
+ (id)grantWithTier:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (RBSAppNapPreventTimerThrottleGrant)initWithRBSXPCCoder:(id)a3;
- (_BYTE)_initWithTier:(_BYTE *)result;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSAppNapPreventTimerThrottleGrant

+ (id)grantWithTier:(unsigned __int8)a3
{
  v3 = [[RBSAppNapPreventTimerThrottleGrant alloc] _initWithTier:a3];

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

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSAppNapPreventTimerThrottleGrant;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeInt64:self->_tier forKey:{@"_tier", v5.receiver, v5.super_class}];
}

- (RBSAppNapPreventTimerThrottleGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSAppNapPreventTimerThrottleGrant;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v5->_tier = [v4 decodeInt64ForKey:@"_tier"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSAppNapPreventTimerThrottleGrant;
  if ([(RBSAttribute *)&v7 isEqual:v4])
  {
    v5 = self->_tier == v4[8];
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