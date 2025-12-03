@interface TPSLocalizedString
+ (NSBundle)classBundle;
+ (id)localizedStringForKey:(id)key;
+ (id)localizedStringFromTable:(id)table forKey:(id)key;
@end

@implementation TPSLocalizedString

+ (NSBundle)classBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  localizationTableName = [self localizationTableName];
  v6 = [self localizedStringFromTable:localizationTableName forKey:keyCopy];

  return v6;
}

+ (id)localizedStringFromTable:(id)table forKey:(id)key
{
  keyCopy = key;
  tableCopy = table;
  classBundle = [self classBundle];
  v9 = [classBundle localizedStringForKey:keyCopy value:&stru_282D54710 table:tableCopy];

  return v9;
}

@end