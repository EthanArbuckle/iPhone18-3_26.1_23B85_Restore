@interface NSDictionary(UICollectionAdditions)
- (uint64_t)_BOOLForKey:()UICollectionAdditions;
@end

@implementation NSDictionary(UICollectionAdditions)

- (uint64_t)_BOOLForKey:()UICollectionAdditions
{
  v1 = [self objectForKey:?];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v2 isEqual:@"YES"])
    {
      return 1;
    }

    v5 = [v2 length];
    v3 = 1;
    if ([v2 compare:@"YES" options:1 range:{0, v5}])
    {
      v3 = 1;
      if ([v2 compare:@"Y" options:1 range:{0, v5}])
      {
        return [v2 intValue] != 0;
      }
    }

    return v3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

@end