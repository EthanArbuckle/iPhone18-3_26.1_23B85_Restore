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

+ (id)zhuyinConsonantCharacterSet
{
  if (zhuyinConsonantCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinConsonantCharacterSet];
  }

  v1 = zhuyinConsonantCharacterSet___zhuyinConsonantCharacterSet;

  return v1;
}

+ (id)zhuyinMedialCharacterSet
{
  if (zhuyinMedialCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinMedialCharacterSet];
  }

  v1 = zhuyinMedialCharacterSet___zhuyinMedialCharacterSet;

  return v1;
}

+ (id)zhuyinVowelCharacterSet
{
  if (zhuyinVowelCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinVowelCharacterSet];
  }

  v1 = zhuyinVowelCharacterSet___zhuyinVowelCharacterSet;

  return v1;
}

+ (id)zhuyinPhonemeCharacterSet
{
  if (zhuyinPhonemeCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinPhonemeCharacterSet];
  }

  v1 = zhuyinPhonemeCharacterSet___zhuyinPhonemeCharacterSet;

  return v1;
}

+ (id)zhuyinToneCharacterSet
{
  if (zhuyinToneCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinToneCharacterSet];
  }

  v1 = zhuyinToneCharacterSet___zhuyinToneCharacterSet;

  return v1;
}

+ (id)zhuyinCharacterSet
{
  if (zhuyinCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinCharacterSet];
  }

  v1 = zhuyinCharacterSet___zhuyinCharacterSet;

  return v1;
}

+ (id)punctuationAndSymbolCharacterSet
{
  if (punctuationAndSymbolCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) punctuationAndSymbolCharacterSet];
  }

  v1 = punctuationAndSymbolCharacterSet___punctuationAndSymbolCharacterSet;

  return v1;
}

@end