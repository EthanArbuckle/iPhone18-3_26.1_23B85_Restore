@interface NSDictionary(HKSPSerialization)
- (id)hksp_serializedClassName;
- (id)hksp_serializedKey;
- (id)hksp_serializedProperties;
- (uint64_t)hksp_isSerialized;
@end

@implementation NSDictionary(HKSPSerialization)

- (uint64_t)hksp_isSerialized
{
  if ([self count] != 1)
  {
    return 0;
  }

  hksp_serializedKey = [self hksp_serializedKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hksp_serializedKey2 = [self hksp_serializedKey];
    v4 = [hksp_serializedKey2 hasPrefix:@"$"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)hksp_serializedKey
{
  allKeys = [self allKeys];
  firstObject = [allKeys firstObject];

  return firstObject;
}

- (id)hksp_serializedClassName
{
  hksp_serializedKey = [self hksp_serializedKey];
  v2 = [hksp_serializedKey substringFromIndex:1];

  return v2;
}

- (id)hksp_serializedProperties
{
  if ([self hksp_isSerialized])
  {
    hksp_serializedKey = [self hksp_serializedKey];
    v3 = [self objectForKeyedSubscript:hksp_serializedKey];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end