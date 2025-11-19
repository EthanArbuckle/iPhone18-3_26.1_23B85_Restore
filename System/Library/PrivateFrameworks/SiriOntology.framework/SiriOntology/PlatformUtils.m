@interface PlatformUtils
+ (BOOL)isInternalInstall;
@end

@implementation PlatformUtils

+ (BOOL)isInternalInstall
{
  if (+[PlatformUtils isInternalInstall]::onceToken != -1)
  {
    dispatch_once(&+[PlatformUtils isInternalInstall]::onceToken, &__block_literal_global);
  }

  return +[PlatformUtils isInternalInstall]::isInternalBuild;
}

uint64_t __34__PlatformUtils_isInternalInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  +[PlatformUtils isInternalInstall]::isInternalBuild = result;
  return result;
}

@end