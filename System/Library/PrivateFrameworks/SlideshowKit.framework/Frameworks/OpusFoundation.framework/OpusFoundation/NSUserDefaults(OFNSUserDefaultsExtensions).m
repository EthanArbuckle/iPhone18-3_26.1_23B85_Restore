@interface NSUserDefaults(OFNSUserDefaultsExtensions)
- (uint64_t)BOOLForKey:()OFNSUserDefaultsExtensions withDefaultValue:;
- (uint64_t)integerForSettingKey:()OFNSUserDefaultsExtensions withDefaultValue:;
- (uint64_t)stringForSettingKey:()OFNSUserDefaultsExtensions withDefaultValue:;
@end

@implementation NSUserDefaults(OFNSUserDefaultsExtensions)

- (uint64_t)BOOLForKey:()OFNSUserDefaultsExtensions withDefaultValue:
{
  if ([a1 objectForKey:?])
  {

    return [a1 BOOLForKey:a3];
  }

  else
  {
    [a1 setBool:a4 forKey:a3];
    [a1 synchronize];
    return a4;
  }
}

- (uint64_t)stringForSettingKey:()OFNSUserDefaultsExtensions withDefaultValue:
{
  if ([a1 objectForKey:?])
  {

    return [a1 stringForKey:a3];
  }

  else
  {
    [a1 setValue:a4 forKey:a3];
    [a1 synchronize];
    return a4;
  }
}

- (uint64_t)integerForSettingKey:()OFNSUserDefaultsExtensions withDefaultValue:
{
  if ([a1 objectForKey:?])
  {

    return [a1 integerForKey:a3];
  }

  else
  {
    [a1 setInteger:a4 forKey:a3];
    [a1 synchronize];
    return a4;
  }
}

@end