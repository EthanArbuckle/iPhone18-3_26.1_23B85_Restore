@interface RBSInvalidateUnderConditionAttribute
+ (id)attributeWithCondition:(id)a3 minValue:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (RBSInvalidateUnderConditionAttribute)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (void)_initWithCondition:(uint64_t)a3 minValue:;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSInvalidateUnderConditionAttribute

+ (id)attributeWithCondition:(id)a3 minValue:(int64_t)a4
{
  v5 = a3;
  v6 = [[RBSInvalidateUnderConditionAttribute alloc] _initWithCondition:v5 minValue:a4];

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSInvalidateUnderConditionAttribute;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeObject:self->_condition forKey:{@"_condition", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_minValue forKey:@"_minValue"];
}

- (RBSInvalidateUnderConditionAttribute)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBSInvalidateUnderConditionAttribute;
  v5 = [(RBSAttribute *)&v10 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_condition"];
    v7 = [v6 copy];
    condition = v5->_condition;
    v5->_condition = v7;

    v5->_minValue = [v4 decodeInt64ForKey:@"_minValue"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBSInvalidateUnderConditionAttribute;
  if (![(RBSAttribute *)&v10 isEqual:v4]|| self->_minValue != v4[2])
  {
    goto LABEL_9;
  }

  condition = self->_condition;
  v6 = v4[1];
  if (condition == v6)
  {
    v9 = 1;
    goto LABEL_10;
  }

  if (condition && v6 != 0)
  {
    v9 = [(NSString *)condition isEqual:?];
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  condition = self->_condition;
  v6 = [v3 initWithFormat:@"<%@| condition:%@ minValue:%lld>", v4, condition, self->_minValue];

  return v6;
}

- (void)_initWithCondition:(uint64_t)a3 minValue:
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = RBSInvalidateUnderConditionAttribute;
    a1 = objc_msgSendSuper2(&v9, sel__init);
    if (a1)
    {
      v6 = [v5 copy];
      v7 = a1[1];
      a1[1] = v6;

      a1[2] = a3;
    }
  }

  return a1;
}

@end