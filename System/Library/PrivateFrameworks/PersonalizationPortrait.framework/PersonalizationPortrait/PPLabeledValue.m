@interface PPLabeledValue
+ (PPLabeledValue)labeledValueWithLabel:(id)a3 value:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLabeledValue:(id)a3;
- (PPLabeledValue)initWithCoder:(id)a3;
- (PPLabeledValue)initWithLabel:(id)a3 value:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPLabeledValue

- (BOOL)isEqualToLabeledValue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = self->_label;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_value;
  v10 = v9;
  if (v9 == v4[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSCopying *)v9 isEqual:?];
  }

LABEL_10:
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPLabeledValue *)self isEqualToLabeledValue:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v6 = [(NSString *)self->_label copyWithZone:a3];
  v7 = [(NSCopying *)self->_value copyWithZone:a3];
  v8 = [v5 labeledValueWithLabel:v6 value:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  label = self->_label;
  v5 = a3;
  [v5 encodeObject:label forKey:@"lab"];
  [v5 encodeObject:self->_value forKey:@"val"];
}

- (PPLabeledValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lab"];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"val"];

  if (v10)
  {
    self = [(PPLabeledValue *)self initWithLabel:v5 value:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPLabeledValue %@: '%@'>", self->_label, self->_value];

  return v2;
}

- (PPLabeledValue)initWithLabel:(id)a3 value:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PPLabeledValue.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"value"}];
  }

  v14.receiver = self;
  v14.super_class = PPLabeledValue;
  v10 = [(PPLabeledValue *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_label, a3);
    objc_storeStrong(&v11->_value, a4);
  }

  return v11;
}

+ (PPLabeledValue)labeledValueWithLabel:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PPLabeledValue alloc] initWithLabel:v6 value:v5];

  return v7;
}

@end