@interface SCUIResources
+ (id)localizedStringForKey:(id)a3;
+ (id)mainBundle;
@end

@implementation SCUIResources

+ (id)mainBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (id)localizedStringForKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() mainBundle];
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F3B30210 table:@"SensitiveContentAnalysisLocalizable"];

  return v5;
}

@end