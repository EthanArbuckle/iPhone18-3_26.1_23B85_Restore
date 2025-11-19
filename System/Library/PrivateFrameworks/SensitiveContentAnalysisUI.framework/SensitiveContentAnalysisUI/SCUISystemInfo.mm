@interface SCUISystemInfo
+ (BOOL)isInternal;
@end

@implementation SCUISystemInfo

+ (BOOL)isInternal
{
  if (isInternal_onceToken[0] != -1)
  {
    +[SCUISystemInfo isInternal];
  }

  return isInternal_sHasInternalContent;
}

uint64_t __28__SCUISystemInfo_isInternal__block_invoke()
{
  result = os_variant_has_internal_content();
  isInternal_sHasInternalContent = result;
  return result;
}

@end