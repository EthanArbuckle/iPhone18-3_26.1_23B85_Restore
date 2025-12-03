@interface PPLabeledValue
+ (PPLabeledValue)labeledValueWithLabel:(id)label value:(id)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLabeledValue:(id)value;
- (PPLabeledValue)initWithCoder:(id)coder;
- (PPLabeledValue)initWithLabel:(id)label value:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPLabeledValue

- (BOOL)isEqualToLabeledValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_4;
  }

  v5 = self->_label;
  v6 = v5;
  if (v5 == valueCopy[1])
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
  if (v9 == valueCopy[2])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPLabeledValue *)self isEqualToLabeledValue:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v6 = [(NSString *)self->_label copyWithZone:zone];
  v7 = [(NSCopying *)self->_value copyWithZone:zone];
  v8 = [v5 labeledValueWithLabel:v6 value:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  label = self->_label;
  coderCopy = coder;
  [coderCopy encodeObject:label forKey:@"lab"];
  [coderCopy encodeObject:self->_value forKey:@"val"];
}

- (PPLabeledValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lab"];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"val"];

  if (v10)
  {
    self = [(PPLabeledValue *)self initWithLabel:v5 value:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPLabeledValue %@: '%@'>", self->_label, self->_value];

  return v2;
}

- (PPLabeledValue)initWithLabel:(id)label value:(id)value
{
  labelCopy = label;
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLabeledValue.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"value"}];
  }

  v14.receiver = self;
  v14.super_class = PPLabeledValue;
  v10 = [(PPLabeledValue *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_label, label);
    objc_storeStrong(&v11->_value, value);
  }

  return v11;
}

+ (PPLabeledValue)labeledValueWithLabel:(id)label value:(id)value
{
  valueCopy = value;
  labelCopy = label;
  v7 = [[PPLabeledValue alloc] initWithLabel:labelCopy value:valueCopy];

  return v7;
}

@end