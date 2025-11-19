@interface NSCharacterSet(TextInputAdditions)
+ (id)pinyinInputCharacterSet;
+ (id)punctuationAndWhitespaceCharacterSet;
@end

@implementation NSCharacterSet(TextInputAdditions)

+ (id)pinyinInputCharacterSet
{
  if (pinyinInputCharacterSet___onceToken != -1)
  {
    dispatch_once(&pinyinInputCharacterSet___onceToken, &__block_literal_global_2);
  }

  v1 = pinyinInputCharacterSet___pinyinCharset;

  return v1;
}

+ (id)punctuationAndWhitespaceCharacterSet
{
  if (punctuationAndWhitespaceCharacterSet___onceToken != -1)
  {
    dispatch_once(&punctuationAndWhitespaceCharacterSet___onceToken, &__block_literal_global_17744);
  }

  v1 = punctuationAndWhitespaceCharacterSet___punctuationAndWhitespaceCharacterSet;

  return v1;
}

@end