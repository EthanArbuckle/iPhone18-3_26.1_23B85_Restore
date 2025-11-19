@interface NSCharacterSet(ZhuyinAddition)
+ (id)punctuationAndSymbolCharacterSet;
+ (id)zhuyinCharacterSet;
+ (id)zhuyinConsonantCharacterSet;
+ (id)zhuyinMedialCharacterSet;
+ (id)zhuyinPhonemeCharacterSet;
+ (id)zhuyinToneCharacterSet;
+ (id)zhuyinVowelCharacterSet;
@end

@implementation NSCharacterSet(ZhuyinAddition)

+ (id)punctuationAndSymbolCharacterSet
{
  if (punctuationAndSymbolCharacterSet___onceToken != -1)
  {
    dispatch_once(&punctuationAndSymbolCharacterSet___onceToken, &__block_literal_global_28);
  }

  v1 = punctuationAndSymbolCharacterSet___punctuationAndSymbolCharacterSet;

  return v1;
}

+ (id)zhuyinCharacterSet
{
  if (zhuyinCharacterSet___onceToken != -1)
  {
    dispatch_once(&zhuyinCharacterSet___onceToken, &__block_literal_global_23_17024);
  }

  v1 = zhuyinCharacterSet___zhuyinCharacterSet;

  return v1;
}

+ (id)zhuyinToneCharacterSet
{
  if (zhuyinToneCharacterSet___onceToken != -1)
  {
    dispatch_once(&zhuyinToneCharacterSet___onceToken, &__block_literal_global_18);
  }

  v1 = zhuyinToneCharacterSet___zhuyinToneCharacterSet;

  return v1;
}

+ (id)zhuyinPhonemeCharacterSet
{
  if (zhuyinPhonemeCharacterSet___onceToken != -1)
  {
    dispatch_once(&zhuyinPhonemeCharacterSet___onceToken, &__block_literal_global_13_17032);
  }

  v1 = zhuyinPhonemeCharacterSet___zhuyinPhonemeCharacterSet;

  return v1;
}

+ (id)zhuyinVowelCharacterSet
{
  if (zhuyinVowelCharacterSet___onceToken != -1)
  {
    dispatch_once(&zhuyinVowelCharacterSet___onceToken, &__block_literal_global_8_17037);
  }

  v1 = zhuyinVowelCharacterSet___zhuyinVowelCharacterSet;

  return v1;
}

+ (id)zhuyinMedialCharacterSet
{
  if (zhuyinMedialCharacterSet___onceToken != -1)
  {
    dispatch_once(&zhuyinMedialCharacterSet___onceToken, &__block_literal_global_3_17042);
  }

  v1 = zhuyinMedialCharacterSet___zhuyinMedialCharacterSet;

  return v1;
}

+ (id)zhuyinConsonantCharacterSet
{
  if (zhuyinConsonantCharacterSet___onceToken != -1)
  {
    dispatch_once(&zhuyinConsonantCharacterSet___onceToken, &__block_literal_global_17047);
  }

  v1 = zhuyinConsonantCharacterSet___zhuyinConsonantCharacterSet;

  return v1;
}

@end