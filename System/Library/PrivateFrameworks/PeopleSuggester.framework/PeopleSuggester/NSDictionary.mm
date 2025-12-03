@interface NSDictionary
- (_PSFeatureDictionary)_ps_dictionaryByAddingEntryForObject:(void *)object withKey:;
@end

@implementation NSDictionary

- (_PSFeatureDictionary)_ps_dictionaryByAddingEntryForObject:(void *)object withKey:
{
  v5 = a2;
  objectCopy = object;
  if (self)
  {
    v7 = [(_PSFeatureDictionary *)self objectForKeyedSubscript:objectCopy];

    if (v7 == v5)
    {
      v9 = [(_PSFeatureDictionary *)self copy];
    }

    else
    {
      if ([(_PSFeatureDictionary *)self count])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [(_PSFeatureDictionary *)self mutableCopy];
        }

        else
        {
          v8 = [[_PSFeatureDictionary alloc] initWithDictionary:self];
        }

        self = v8;
        [(_PSFeatureDictionary *)v8 setObject:v5 forKeyedSubscript:objectCopy];
        goto LABEL_11;
      }

      v9 = [[_PSFeatureDictionary alloc] initWithObjectsAndKeys:v5, objectCopy, 0];
    }

    self = v9;
  }

LABEL_11:

  return self;
}

@end