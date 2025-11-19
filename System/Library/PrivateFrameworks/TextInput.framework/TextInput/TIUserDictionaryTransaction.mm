@interface TIUserDictionaryTransaction
- (TIUserDictionaryTransaction)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIUserDictionaryTransaction

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TIUserDictionaryTransaction *)self valueToDelete];
  v6 = [(TIUserDictionaryTransaction *)self valueToInsert];
  v7 = [v3 stringWithFormat:@"<%@: valueToDelete = %@, valueToInsert = %@>", v4, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  valueToDelete = self->_valueToDelete;
  v7 = v4;
  if (valueToDelete)
  {
    [v4 encodeObject:valueToDelete forKey:@"valueToDelete"];
    v4 = v7;
  }

  valueToInsert = self->_valueToInsert;
  if (valueToInsert)
  {
    [v7 encodeObject:valueToInsert forKey:@"valueToInsert"];
    v4 = v7;
  }
}

- (TIUserDictionaryTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TIUserDictionaryTransaction;
  v5 = [(TIUserDictionaryTransaction *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueToDelete"];
    valueToDelete = v5->_valueToDelete;
    v5->_valueToDelete = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueToInsert"];
    valueToInsert = v5->_valueToInsert;
    v5->_valueToInsert = v8;
  }

  return v5;
}

@end