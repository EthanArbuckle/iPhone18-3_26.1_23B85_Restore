@interface PLUUIDStringFromUUIDDataTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation PLUUIDStringFromUUIDDataTransformer

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy length] == 16)
  {
    v4 = MEMORY[0x1E69BF320];
    v5 = valueCopy;
    v6 = [[v4 alloc] initWithUUIDData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    if (v4 == objc_opt_class())
    {
      [valueCopy UUIDData];
    }

    else
    {
      PLUUIDDataFromString();
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end