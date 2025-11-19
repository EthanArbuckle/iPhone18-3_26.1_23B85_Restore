@interface SBHFloatingDockStyleConfiguration(SBAppAdditions)
+ (id)configurationWithEnvironmentMode:()SBAppAdditions;
@end

@implementation SBHFloatingDockStyleConfiguration(SBAppAdditions)

+ (id)configurationWithEnvironmentMode:()SBAppAdditions
{
  if (a3 == 3)
  {
    if (configurationWithEnvironmentMode__onceToken != -1)
    {
      +[SBHFloatingDockStyleConfiguration(SBAppAdditions) configurationWithEnvironmentMode:];
    }

    v3 = configurationWithEnvironmentMode__appConfiguration;
  }

  else
  {
    v3 = [MEMORY[0x277D66190] defaultConfiguration];
  }

  return v3;
}

@end