@interface VSImageDataValueTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation VSImageDataValueTransformer

- (id)transformedValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = MEMORY[0x277CBEAD8];
        v7 = *MEMORY[0x277CBE660];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        [v6 raise:v7 format:{@"Unexpectedly, value was %@, instead of UIImage.", v9}];
      }

      v10 = UIImagePNGRepresentation(v5);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = MEMORY[0x277CBEAD8];
        v7 = *MEMORY[0x277CBE660];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        [v6 raise:v7 format:{@"Unexpectedly, value was %@, instead of NSData.", v9}];
      }

      v10 = [MEMORY[0x277D755B8] imageWithData:v5];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end