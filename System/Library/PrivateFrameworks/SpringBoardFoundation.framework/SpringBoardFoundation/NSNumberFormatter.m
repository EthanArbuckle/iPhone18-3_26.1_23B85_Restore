@interface NSNumberFormatter
@end

@implementation NSNumberFormatter

uint64_t __72__NSNumberFormatter_SBFCacheInstances__sbf_cachedDecimalNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = sbf_cachedDecimalNumberFormatter__cachedDecimalNumberFormatter;
  sbf_cachedDecimalNumberFormatter__cachedDecimalNumberFormatter = v0;

  v2 = sbf_cachedDecimalNumberFormatter__cachedDecimalNumberFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  v4 = sbf_cachedDecimalNumberFormatter__cachedDecimalNumberFormatter;

  return [v4 setNumberStyle:1];
}

@end