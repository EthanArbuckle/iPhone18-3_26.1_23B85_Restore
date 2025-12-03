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

    defaultConfiguration = configurationWithEnvironmentMode__appConfiguration;
  }

  else
  {
    defaultConfiguration = [MEMORY[0x277D66190] defaultConfiguration];
  }

  return defaultConfiguration;
}

@end