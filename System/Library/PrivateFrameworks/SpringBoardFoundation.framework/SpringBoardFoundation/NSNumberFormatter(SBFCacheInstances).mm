@interface NSNumberFormatter(SBFCacheInstances)
+ (id)sbf_cachedDecimalNumberFormatter;
@end

@implementation NSNumberFormatter(SBFCacheInstances)

+ (id)sbf_cachedDecimalNumberFormatter
{
  if (sbf_cachedDecimalNumberFormatter_onceToken != -1)
  {
    +[NSNumberFormatter(SBFCacheInstances) sbf_cachedDecimalNumberFormatter];
  }

  v1 = sbf_cachedDecimalNumberFormatter__cachedDecimalNumberFormatter;

  return v1;
}

@end