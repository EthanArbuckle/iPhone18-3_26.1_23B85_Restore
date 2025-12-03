@interface AggregatePropertyDescriptor
- (AggregatePropertyDescriptor)initWithCoder:(id)coder;
- (AggregatePropertyDescriptor)initWithName:(id)name expression:(id)expression resultType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AggregatePropertyDescriptor

- (AggregatePropertyDescriptor)initWithName:(id)name expression:(id)expression resultType:(unint64_t)type
{
  nameCopy = name;
  expressionCopy = expression;
  v14.receiver = self;
  v14.super_class = AggregatePropertyDescriptor;
  v11 = [(AggregatePropertyDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    objc_storeStrong(&v12->_expression, expression);
    v12->_resultType = type;
  }

  return v12;
}

- (AggregatePropertyDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AggregatePropertyDescriptor;
  v5 = [(AggregatePropertyDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expression"];
    expression = v5->_expression;
    v5->_expression = v8;

    v5->_resultType = [coderCopy decodeIntegerForKey:@"resultType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_expression forKey:@"expression"];
  [coderCopy encodeInteger:self->_resultType forKey:@"resultType"];
}

@end