@interface AggregatePropertyDescriptor
- (AggregatePropertyDescriptor)initWithCoder:(id)a3;
- (AggregatePropertyDescriptor)initWithName:(id)a3 expression:(id)a4 resultType:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AggregatePropertyDescriptor

- (AggregatePropertyDescriptor)initWithName:(id)a3 expression:(id)a4 resultType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AggregatePropertyDescriptor;
  v11 = [(AggregatePropertyDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    objc_storeStrong(&v12->_expression, a4);
    v12->_resultType = a5;
  }

  return v12;
}

- (AggregatePropertyDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AggregatePropertyDescriptor;
  v5 = [(AggregatePropertyDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expression"];
    expression = v5->_expression;
    v5->_expression = v8;

    v5->_resultType = [v4 decodeIntegerForKey:@"resultType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_expression forKey:@"expression"];
  [v5 encodeInteger:self->_resultType forKey:@"resultType"];
}

@end