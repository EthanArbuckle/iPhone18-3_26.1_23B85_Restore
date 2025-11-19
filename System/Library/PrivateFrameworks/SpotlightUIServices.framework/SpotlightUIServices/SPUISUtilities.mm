@interface SPUISUtilities
+ (id)indexedBundleIdentifierForResult:(id)a3;
+ (id)localizedStringForKey:(id)a3;
@end

@implementation SPUISUtilities

+ (id)localizedStringForKey:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:a1];
  v7 = [v6 localizedStringForKey:v5 value:&stru_287C50EE8 table:0];

  return v7;
}

+ (id)indexedBundleIdentifierForResult:(id)a3
{
  v3 = a3;
  if (indexedBundleIdentifierForResult__onceToken != -1)
  {
    +[SPUISUtilities indexedBundleIdentifierForResult:];
  }

  v4 = [v3 resultBundleId];
  if (v4)
  {
    v5 = [indexedBundleIdentifierForResult__indexedBundleIdentifierForResultBundleIds objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __51__SPUISUtilities_indexedBundleIdentifierForResult___block_invoke()
{
  v0 = indexedBundleIdentifierForResult__indexedBundleIdentifierForResultBundleIds;
  indexedBundleIdentifierForResult__indexedBundleIdentifierForResultBundleIds = MEMORY[0x277CBEC10];
}

@end