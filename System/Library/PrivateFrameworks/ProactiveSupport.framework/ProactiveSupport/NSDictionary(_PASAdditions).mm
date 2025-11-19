@interface NSDictionary(_PASAdditions)
+ (id)_pas_dictionaryNoCopyLeavesWithPropertyListData:()_PASAdditions error:;
- (id)_pas_unlazyDictionary;
@end

@implementation NSDictionary(_PASAdditions)

- (id)_pas_unlazyDictionary
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 _pas_overrideUnlazyDictionary];
  }

  else
  {
    v2 = [a1 copy];
  }

  return v2;
}

+ (id)_pas_dictionaryNoCopyLeavesWithPropertyListData:()_PASAdditions error:
{
  v5 = a3;
  v6 = [_PASLazyPlistWithBPlistSupport dictionaryWithData:v5 error:a4];
  v7 = [v6 _pas_unlazyDictionary];

  if (v7)
  {
    v8 = v7;
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