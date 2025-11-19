@interface PLUUIDStringFromUUIDDataTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation PLUUIDStringFromUUIDDataTransformer

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length] == 16)
  {
    v4 = MEMORY[0x1E69BF320];
    v5 = v3;
    v6 = [[v4 alloc] initWithUUIDData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)transformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    if (v4 == objc_opt_class())
    {
      [v3 UUIDData];
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