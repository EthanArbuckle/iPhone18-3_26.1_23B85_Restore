@interface TUOptionalObject
- (TUOptionalObject)initWithValue:(id)value;
@end

@implementation TUOptionalObject

- (TUOptionalObject)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = TUOptionalObject;
  v5 = [(TUOptionalObject *)&v9 init];
  if (v5)
  {
    v6 = [valueCopy copyWithZone:0];
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

@end