@interface SPUISUtilities
+ (id)indexedBundleIdentifierForResult:(id)result;
+ (id)localizedStringForKey:(id)key;
@end

@implementation SPUISUtilities

+ (id)localizedStringForKey:(id)key
{
  v4 = MEMORY[0x277CCA8D8];
  keyCopy = key;
  v6 = [v4 bundleForClass:self];
  v7 = [v6 localizedStringForKey:keyCopy value:&stru_287C50EE8 table:0];

  return v7;
}

+ (id)indexedBundleIdentifierForResult:(id)result
{
  resultCopy = result;
  if (indexedBundleIdentifierForResult__onceToken != -1)
  {
    +[SPUISUtilities indexedBundleIdentifierForResult:];
  }

  resultBundleId = [resultCopy resultBundleId];
  if (resultBundleId)
  {
    v5 = [indexedBundleIdentifierForResult__indexedBundleIdentifierForResultBundleIds objectForKeyedSubscript:resultBundleId];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = resultBundleId;
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