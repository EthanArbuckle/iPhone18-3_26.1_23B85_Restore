@interface RBSInvalidateUnderConditionAttribute
+ (id)attributeWithCondition:(id)condition minValue:(int64_t)value;
- (BOOL)isEqual:(id)equal;
- (RBSInvalidateUnderConditionAttribute)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (void)_initWithCondition:(uint64_t)condition minValue:;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSInvalidateUnderConditionAttribute

+ (id)attributeWithCondition:(id)condition minValue:(int64_t)value
{
  conditionCopy = condition;
  v6 = [[RBSInvalidateUnderConditionAttribute alloc] _initWithCondition:conditionCopy minValue:value];

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSInvalidateUnderConditionAttribute;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_condition forKey:{@"_condition", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_minValue forKey:@"_minValue"];
}

- (RBSInvalidateUnderConditionAttribute)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RBSInvalidateUnderConditionAttribute;
  v5 = [(RBSAttribute *)&v10 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_condition"];
    v7 = [v6 copy];
    condition = v5->_condition;
    v5->_condition = v7;

    v5->_minValue = [coderCopy decodeInt64ForKey:@"_minValue"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = RBSInvalidateUnderConditionAttribute;
  if (![(RBSAttribute *)&v10 isEqual:equalCopy]|| self->_minValue != equalCopy[2])
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
  v6 = [v3 initWithFormat:@"<%@| condition:%@ minValue:%lld>", v4, condition, self->_minValue];

  return v6;
}

- (void)_initWithCondition:(uint64_t)condition minValue:
{
  v5 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = RBSInvalidateUnderConditionAttribute;
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