@interface NSUserDefaults(TelephonyUtilities)
+ (id)sb_defaults;
+ (id)tu_defaults;
- (uint64_t)BOOLForKey:()TelephonyUtilities withDefault:;
@end

@implementation NSUserDefaults(TelephonyUtilities)

+ (id)tu_defaults
{
  if (tu_defaults_onceToken != -1)
  {
    +[NSUserDefaults(TelephonyUtilities) tu_defaults];
  }

  v1 = tu_defaults_tu_defaults;

  return v1;
}

+ (id)sb_defaults
{
  if (sb_defaults_onceToken != -1)
  {
    +[NSUserDefaults(TelephonyUtilities) sb_defaults];
  }

  v1 = sb_defaults_sb_defaults;

  return v1;
}

- (uint64_t)BOOLForKey:()TelephonyUtilities withDefault:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];

  if (v7)
  {
    a4 = [a1 BOOLForKey:v6];
  }

  return a4;
}

@end