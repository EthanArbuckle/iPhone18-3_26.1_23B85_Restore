@interface SCUIResources
+ (id)localizedStringForKey:(id)key;
+ (id)mainBundle;
@end

@implementation SCUIResources

+ (id)mainBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  mainBundle = [objc_opt_class() mainBundle];
  v5 = [mainBundle localizedStringForKey:keyCopy value:&stru_1F3B30210 table:@"SensitiveContentAnalysisLocalizable"];

  return v5;
}

@end