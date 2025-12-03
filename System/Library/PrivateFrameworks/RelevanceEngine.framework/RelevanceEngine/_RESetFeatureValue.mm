@interface _RESetFeatureValue
+ (id)featureValueWithSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (unint64_t)_integralFeatureValue;
- (unint64_t)hash;
@end

@implementation _RESetFeatureValue

+ (id)featureValueWithSet:(id)set
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  setCopy = set;
  v4 = [setCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(setCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_12;
        }
      }

      v5 = [setCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (!setCopy)
  {
LABEL_12:
    v9 = [MEMORY[0x277CBEB98] set];

    setCopy = v9;
  }

  v10 = [setCopy count];
  v11 = off_2785F9270;
  if (v10 >= 3)
  {
    v11 = off_2785F91B0;
  }

  v12 = [objc_alloc(*v11) initWithSet:setCopy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      setValue = [(REFeatureValue *)self setValue];
      setValue2 = [(REFeatureValue *)v5 setValue];
      if (setValue == setValue2)
      {
        v8 = 1;
      }

      else
      {
        v8 = [setValue isEqual:setValue2];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  setValue = [(REFeatureValue *)self setValue];
  v3 = [setValue countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(setValue);
        }

        v5 ^= [*(*(&v10 + 1) + 8 * i) hash];
      }

      v4 = [setValue countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)_integralFeatureValue
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  setValue = [(REFeatureValue *)self setValue];
  v3 = [setValue countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(setValue);
        }

        v5 ^= [*(*(&v10 + 1) + 8 * i) _integralFeatureValue];
      }

      v4 = [setValue countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

@end