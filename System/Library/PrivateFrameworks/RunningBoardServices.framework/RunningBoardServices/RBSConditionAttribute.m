@interface RBSConditionAttribute
+ (id)attributeWithCondition:(id)a3 value:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (RBSConditionAttribute)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (void)_initWithCondition:(uint64_t)a3 value:;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSConditionAttribute

+ (id)attributeWithCondition:(id)a3 value:(int64_t)a4
{
  v5 = a3;
  v6 = [[RBSConditionAttribute alloc] _initWithCondition:v5 value:a4];

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSConditionAttribute;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeObject:self->_condition forKey:{@"_condition", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_value forKey:@"_value"];
}

- (RBSConditionAttribute)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBSConditionAttribute;
  v5 = [(RBSAttribute *)&v10 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_condition"];
    v7 = [v6 copy];
    condition = v5->_condition;
    v5->_condition = v7;

    v5->_value = [v4 decodeInt64ForKey:@"_value"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBSConditionAttribute;
  if (![(RBSAttribute *)&v10 isEqual:v4]|| self->_value != v4[2])
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
  v6 = [v3 initWithFormat:@"<%@| condition:%@ value:%lld>", v4, condition, self->_value];

  return v6;
}

- (void)_initWithCondition:(uint64_t)a3 value:
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = RBSConditionAttribute;
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