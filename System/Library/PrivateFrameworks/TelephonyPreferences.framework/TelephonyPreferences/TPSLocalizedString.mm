@interface TPSLocalizedString
+ (NSBundle)classBundle;
+ (id)localizedStringForKey:(id)a3;
+ (id)localizedStringFromTable:(id)a3 forKey:(id)a4;
@end

@implementation TPSLocalizedString

+ (NSBundle)classBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 localizationTableName];
  v6 = [a1 localizedStringFromTable:v5 forKey:v4];

  return v6;
}

+ (id)localizedStringFromTable:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 classBundle];
  v9 = [v8 localizedStringForKey:v6 value:&stru_282D54710 table:v7];

  return v9;
}

@end