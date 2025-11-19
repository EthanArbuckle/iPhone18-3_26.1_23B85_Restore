@interface CRGetOSVersionDictionary
@end

@implementation CRGetOSVersionDictionary

uint64_t ___CRGetOSVersionDictionary_block_invoke()
{
  result = _CFCopyServerVersionDictionary();
  if (!result)
  {
    result = _CFCopySystemVersionDictionary();
  }

  _CRGetOSVersionDictionary__osVersionDict = result;
  return result;
}

@end