@interface PCLocalizedString
+ (id)keyValueForKey:(unint64_t)key;
+ (id)localizedStringForKey:(unint64_t)key;
@end

@implementation PCLocalizedString

+ (id)keyValueForKey:(unint64_t)key
{
  if (key - 1 > 0x15)
  {
    return @"ALARM_DEFAULT_TEXT";
  }

  else
  {
    return off_279AD1B48[key - 1];
  }
}

+ (id)localizedStringForKey:(unint64_t)key
{
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ProximityControl"];
  v5 = [PCLocalizedString keyValueForKey:key];
  v6 = [PCLocalizedString tableNameForKey:key];
  v7 = [v4 localizedStringForKey:v5 value:&stru_2873A1B00 table:v6];

  return v7;
}

@end