@interface RBSResistTerminationGrant
+ (id)grantWithResistance:(unsigned __int8)resistance;
- (BOOL)isEqual:(id)equal;
- (RBSResistTerminationGrant)initWithRBSXPCCoder:(id)coder;
- (id)_initWithResistance:(id)result;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)coder;
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

+ (id)grantWithResistance:(unsigned __int8)resistance
{
  v3 = [[RBSResistTerminationGrant alloc] _initWithResistance:resistance];

  return v3;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSResistTerminationGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_resistance forKey:{@"_resistance", v5.receiver, v5.super_class}];
}

- (RBSResistTerminationGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RBSResistTerminationGrant;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_resistance = [coderCopy decodeInt64ForKey:@"_resistance"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSResistTerminationGrant;
  v5 = [(RBSAttribute *)&v7 isEqual:equalCopy]&& self->_resistance == equalCopy[8];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithResistance_ object:v3 file:@"RBSResistTerminationGrant.m" lineNumber:65 description:@"initialized with invalid resistance"];
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