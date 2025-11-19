@interface TUOptionalObject
- (TUOptionalObject)initWithValue:(id)a3;
@end

@implementation TUOptionalObject

- (TUOptionalObject)initWithValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUOptionalObject;
  v5 = [(TUOptionalObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copyWithZone:0];
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

@end