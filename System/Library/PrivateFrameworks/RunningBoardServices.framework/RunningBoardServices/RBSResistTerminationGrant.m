@interface RBSResistTerminationGrant
+ (id)grantWithResistance:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (RBSResistTerminationGrant)initWithRBSXPCCoder:(id)a3;
- (id)_initWithResistance:(id)result;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSResistTerminationGrant

- (unint64_t)hash
{
  v2 = NSStringFromRBSTerminationResistance(self->_resistance);
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = NSStringFromRBSTerminationResistance(self->_resistance);
  v6 = [v3 initWithFormat:@"<%@| terminationResistance:%@>", v4, v5];

  return v6;
}

+ (id)grantWithResistance:(unsigned __int8)a3
{
  v3 = [[RBSResistTerminationGrant alloc] _initWithResistance:a3];

  return v3;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSResistTerminationGrant;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeInt64:self->_resistance forKey:{@"_resistance", v5.receiver, v5.super_class}];
}

- (RBSResistTerminationGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSResistTerminationGrant;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v5->_resistance = [v4 decodeInt64ForKey:@"_resistance"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSResistTerminationGrant;
  v5 = [(RBSAttribute *)&v7 isEqual:v4]&& self->_resistance == v4[8];

  return v5;
}

- (id)_initWithResistance:(id)result
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if ((a2 - 51) <= 0xFFFFFFCD)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel__initWithResistance_ object:v3 file:@"RBSResistTerminationGrant.m" lineNumber:65 description:@"initialized with invalid resistance"];
    }

    v5.receiver = v3;
    v5.super_class = RBSResistTerminationGrant;
    result = objc_msgSendSuper2(&v5, sel__init);
    if (result)
    {
      *(result + 8) = v2;
    }
  }

  return result;
}

@end