@interface NSDictionary(_PASAdditions)
+ (id)_pas_dictionaryNoCopyLeavesWithPropertyListData:()_PASAdditions error:;
- (id)_pas_unlazyDictionary;
@end

@implementation NSDictionary(_PASAdditions)

- (id)_pas_unlazyDictionary
{
  if (objc_opt_respondsToSelector())
  {
    _pas_overrideUnlazyDictionary = [self _pas_overrideUnlazyDictionary];
  }

  else
  {
    _pas_overrideUnlazyDictionary = [self copy];
  }

  return _pas_overrideUnlazyDictionary;
}

+ (id)_pas_dictionaryNoCopyLeavesWithPropertyListData:()_PASAdditions error:
{
  v5 = a3;
  v6 = [_PASLazyPlistWithBPlistSupport dictionaryWithData:v5 error:a4];
  _pas_unlazyDictionary = [v6 _pas_unlazyDictionary];

  if (_pas_unlazyDictionary)
  {
    v8 = _pas_unlazyDictionary;
  }

  else
  {
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:a4];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = 0;
    if (isKindOfClass)
    {
      v11 = v9;
      if (a4)
      {
        *a4 = 0;
      }
    }

    v8 = v11;
  }

  return v8;
}

@end