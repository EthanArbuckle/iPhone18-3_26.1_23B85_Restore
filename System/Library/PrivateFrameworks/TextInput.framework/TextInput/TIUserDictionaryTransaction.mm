@interface TIUserDictionaryTransaction
- (TIUserDictionaryTransaction)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIUserDictionaryTransaction

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  valueToDelete = [(TIUserDictionaryTransaction *)self valueToDelete];
  valueToInsert = [(TIUserDictionaryTransaction *)self valueToInsert];
  v7 = [v3 stringWithFormat:@"<%@: valueToDelete = %@, valueToInsert = %@>", v4, valueToDelete, valueToInsert];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  valueToDelete = self->_valueToDelete;
  v7 = coderCopy;
  if (valueToDelete)
  {
    [coderCopy encodeObject:valueToDelete forKey:@"valueToDelete"];
    coderCopy = v7;
  }

  valueToInsert = self->_valueToInsert;
  if (valueToInsert)
  {
    [v7 encodeObject:valueToInsert forKey:@"valueToInsert"];
    coderCopy = v7;
  }
}

- (TIUserDictionaryTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TIUserDictionaryTransaction;
  v5 = [(TIUserDictionaryTransaction *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueToDelete"];
    valueToDelete = v5->_valueToDelete;
    v5->_valueToDelete = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueToInsert"];
    valueToInsert = v5->_valueToInsert;
    v5->_valueToInsert = v8;
  }

  return v5;
}

@end