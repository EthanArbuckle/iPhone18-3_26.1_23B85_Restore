@interface PCLocalizedString
+ (id)keyValueForKey:(unint64_t)a3;
+ (id)localizedStringForKey:(unint64_t)a3;
@end

@implementation PCLocalizedString

+ (id)keyValueForKey:(unint64_t)a3
{
  if (a3 - 1 > 0x15)
  {
    return @"ALARM_DEFAULT_TEXT";
  }

  else
  {
    return off_279AD1B48[a3 - 1];
  }
}

+ (id)localizedStringForKey:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ProximityControl"];
  v5 = [PCLocalizedString keyValueForKey:a3];
  v6 = [PCLocalizedString tableNameForKey:a3];
  v7 = [v4 localizedStringForKey:v5 value:&stru_2873A1B00 table:v6];

  return v7;
}

@end