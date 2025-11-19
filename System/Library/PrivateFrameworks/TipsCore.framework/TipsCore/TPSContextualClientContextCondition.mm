@interface TPSContextualClientContextCondition
- (TPSContextualClientContextCondition)initWithCoder:(id)a3;
- (TPSContextualClientContextCondition)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSContextualClientContextCondition

- (TPSContextualClientContextCondition)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPSContextualClientContextCondition;
  v5 = [(TPSContextualClientContextCondition *)&v11 init];
  if (v5)
  {
    v6 = [v4 TPSSafeStringForKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [v4 TPSSafeObjectForKey:@"value"];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

- (TPSContextualClientContextCondition)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TPSContextualClientContextCondition;
  v5 = [(TPSSerializableObject *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"value"];
    value = v5->_value;
    v5->_value = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSContextualClientContextCondition;
  v4 = a3;
  [(TPSSerializableObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_key forKey:{@"key", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_value forKey:@"value"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TPSContextualClientContextCondition;
  v4 = [(TPSSerializableObject *)&v6 copyWithZone:a3];
  [v4 setKey:self->_key];
  [v4 setValue:self->_value];
  return v4;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSContextualClientContextCondition;
  v4 = [(TPSSerializableObject *)&v9 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSContextualClientContextCondition *)self key];
  [v5 appendFormat:@"%@ = %@", @"key", v6];

  v7 = [(TPSContextualClientContextCondition *)self value];
  [v5 appendFormat:@" %@ = %@", @"value", v7];

  return v5;
}

@end