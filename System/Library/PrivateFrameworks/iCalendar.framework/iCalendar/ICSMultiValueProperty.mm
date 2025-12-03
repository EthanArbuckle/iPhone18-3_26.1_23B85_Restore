@interface ICSMultiValueProperty
- (ICSMultiValueProperty)initWithValue:(id)value type:(unint64_t)type;
- (id)value;
- (id)values;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)setValue:(id)value type:(unint64_t)type;
- (void)setValues:(id)values valueType:(unint64_t)type;
@end

@implementation ICSMultiValueProperty

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  type = [(ICSProperty *)self type];
  if (type == 5010 || type == 5007)
  {
    parameters = [(ICSProperty *)self parameters];

    if (parameters)
    {
      [(ICSProperty *)self _ICSStringWithOptions:options appendingToString:stringCopy additionalParameters:0];
    }

    values = [(ICSMultiValueProperty *)self values];
    if (values)
    {
      v10 = values;
      values2 = [(ICSMultiValueProperty *)self values];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        value = [(ICSMultiValueProperty *)self value];
        NSLog(&cfstr_PropertyvalueS.isa, value);
      }
    }

    [stringCopy appendString:@":"];
    values3 = [(ICSMultiValueProperty *)self values];
    [values3 _ICSStringsForPropertyValuesWithOptions:options appendingToString:stringCopy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICSMultiValueProperty;
    [(ICSProperty *)&v15 _ICSStringWithOptions:options appendingToString:stringCopy];
  }
}

- (ICSMultiValueProperty)initWithValue:(id)value type:(unint64_t)type
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = ICSMultiValueProperty;
  v7 = [(ICSMultiValueProperty *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICSMultiValueProperty *)v7 setValue:valueCopy type:type];
  }

  return v8;
}

- (id)value
{
  values = [(ICSMultiValueProperty *)self values];
  if ([values count])
  {
    v3 = [values objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setValue:(id)value type:(unint64_t)type
{
  if (value)
  {
    v6 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(ICSMultiValueProperty *)self setValues:v6 valueType:type];
}

- (id)values
{
  v4.receiver = self;
  v4.super_class = ICSMultiValueProperty;
  value = [(ICSProperty *)&v4 value];

  return value;
}

- (void)setValues:(id)values valueType:(unint64_t)type
{
  v4.receiver = self;
  v4.super_class = ICSMultiValueProperty;
  [(ICSProperty *)&v4 setValue:values type:type];
}

@end