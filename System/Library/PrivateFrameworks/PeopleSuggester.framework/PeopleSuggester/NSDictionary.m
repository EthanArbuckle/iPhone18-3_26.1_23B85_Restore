@interface NSDictionary
- (_PSFeatureDictionary)_ps_dictionaryByAddingEntryForObject:(void *)a3 withKey:;
@end

@implementation NSDictionary

- (_PSFeatureDictionary)_ps_dictionaryByAddingEntryForObject:(void *)a3 withKey:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [(_PSFeatureDictionary *)a1 objectForKeyedSubscript:v6];

    if (v7 == v5)
    {
      v9 = [(_PSFeatureDictionary *)a1 copy];
    }

    else
    {
      if ([(_PSFeatureDictionary *)a1 count])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [(_PSFeatureDictionary *)a1 mutableCopy];
        }

        else
        {
          v8 = [[_PSFeatureDictionary alloc] initWithDictionary:a1];
        }

        a1 = v8;
        [(_PSFeatureDictionary *)v8 setObject:v5 forKeyedSubscript:v6];
        goto LABEL_11;
      }

      v9 = [[_PSFeatureDictionary alloc] initWithObjectsAndKeys:v5, v6, 0];
    }

    a1 = v9;
  }

LABEL_11:

  return a1;
}

@end