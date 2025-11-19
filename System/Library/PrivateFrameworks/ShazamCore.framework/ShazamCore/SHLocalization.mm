@interface SHLocalization
+ (id)localizedStringForKey:(id)a3;
+ (id)shFrameworkBundle;
@end

@implementation SHLocalization

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 shFrameworkBundle];
  v6 = [v5 localizedStringForKey:v4 value:&stru_2845D1F60 table:@"Localizable"];

  return v6;
}

+ (id)shFrameworkBundle
{
  if (shFrameworkBundle_onceToken != -1)
  {
    +[SHLocalization shFrameworkBundle];
  }

  v3 = shFrameworkBundle_bundle;

  return v3;
}

void __35__SHLocalization_shFrameworkBundle__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Foundation"];
  v1 = [v0 bundleURL];
  v2 = [v1 URLByDeletingLastPathComponent];
  v6 = [v2 URLByDeletingLastPathComponent];

  v3 = [v6 URLByAppendingPathComponent:@"Frameworks/ShazamKit.framework" isDirectory:1];
  v4 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithURL:v3];
  v5 = shFrameworkBundle_bundle;
  shFrameworkBundle_bundle = v4;
}

@end