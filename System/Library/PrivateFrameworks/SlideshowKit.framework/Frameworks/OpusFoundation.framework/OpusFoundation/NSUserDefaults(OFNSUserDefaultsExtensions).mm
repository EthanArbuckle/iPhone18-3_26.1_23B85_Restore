@interface NSUserDefaults(OFNSUserDefaultsExtensions)
- (uint64_t)BOOLForKey:()OFNSUserDefaultsExtensions withDefaultValue:;
- (uint64_t)integerForSettingKey:()OFNSUserDefaultsExtensions withDefaultValue:;
- (uint64_t)stringForSettingKey:()OFNSUserDefaultsExtensions withDefaultValue:;
@end

@implementation NSUserDefaults(OFNSUserDefaultsExtensions)

- (uint64_t)BOOLForKey:()OFNSUserDefaultsExtensions withDefaultValue:
{
  if ([self objectForKey:?])
  {

    return [self BOOLForKey:a3];
  }

  else
  {
    [self setBool:a4 forKey:a3];
    [self synchronize];
    return a4;
  }
}

- (uint64_t)stringForSettingKey:()OFNSUserDefaultsExtensions withDefaultValue:
{
  if ([self objectForKey:?])
  {

    return [self stringForKey:a3];
  }

  else
  {
    [self setValue:a4 forKey:a3];
    [self synchronize];
    return a4;
  }
}

- (uint64_t)integerForSettingKey:()OFNSUserDefaultsExtensions withDefaultValue:
{
  if ([self objectForKey:?])
  {

    return [self integerForKey:a3];
  }

  else
  {
    [self setInteger:a4 forKey:a3];
    [self synchronize];
    return a4;
  }
}

@end