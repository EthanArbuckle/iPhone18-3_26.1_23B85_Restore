@interface RBSConditionAttribute
+ (id)attributeWithCondition:(id)condition value:(int64_t)value;
- (BOOL)isEqual:(id)equal;
- (RBSConditionAttribute)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (void)_initWithCondition:(uint64_t)condition value:;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSConditionAttribute

+ (id)attributeWithCondition:(id)condition value:(int64_t)value
{
  conditionCopy = condition;
  v6 = [[RBSConditionAttribute alloc] _initWithCondition:conditionCopy value:value];

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSConditionAttribute;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_condition forKey:{@"_condition", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_value forKey:@"_value"];
}

- (RBSConditionAttribute)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RBSConditionAttribute;
  v5 = [(RBSAttribute *)&v10 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_condition"];
    v7 = [v6 copy];
    condition = v5->_condition;
    v5->_condition = v7;

    v5->_value = [coderCopy decodeInt64ForKey:@"_value"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = RBSConditionAttribute;
  if (![(RBSAttribute *)&v10 isEqual:equalCopy]|| self->_value != equalCopy[2])
  {
    goto LABEL_9;
  }

  condition = self->_condition;
  v6 = equalCopy[1];
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

- (void)_initWithCondition:(uint64_t)condition value:
{
  v5 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = RBSConditionAttribute;
    self = objc_msgSendSuper2(&v9, sel__init);
    if (self)
    {
      v6 = [v5 copy];
      v7 = self[1];
      self[1] = v6;

      self[2] = condition;
    }
  }

  return self;
}

@end