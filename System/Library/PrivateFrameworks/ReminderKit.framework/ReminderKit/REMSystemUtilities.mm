@interface REMSystemUtilities
+ (BOOL)isInternalInstall;
+ (id)systemBuildVersion;
+ (id)systemVersionDictionary;
@end

@implementation REMSystemUtilities

+ (BOOL)isInternalInstall
{
  if (isInternalInstall_onceToken != -1)
  {
    +[REMSystemUtilities isInternalInstall];
  }

  return isInternalInstall_isInternalBuild;
}

uint64_t __39__REMSystemUtilities_isInternalInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalInstall_isInternalBuild = result;
  return result;
}

+ (id)systemVersionDictionary
{
  v2 = _CFCopyServerVersionDictionary();
  if (!v2)
  {
    v2 = _CFCopySystemVersionDictionary();
  }

  return v2;
}

+ (id)systemBuildVersion
{
  systemVersionDictionary = [self systemVersionDictionary];
  v3 = [systemVersionDictionary objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];

  return v3;
}

@end