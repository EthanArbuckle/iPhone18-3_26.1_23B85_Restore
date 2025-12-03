@interface SBSRemoteAlertDefinition(SBAdditions)
+ (id)definitionWithServiceName:()SBAdditions legacyAlertOptions:;
@end

@implementation SBSRemoteAlertDefinition(SBAdditions)

+ (id)definitionWithServiceName:()SBAdditions legacyAlertOptions:
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 bs_safeStringForKey:*MEMORY[0x277D67208]];
  if (v8)
  {
    v9 = [[self alloc] initWithServiceName:v6 viewControllerClassName:v8];
    if ([v7 bs_BOOLForKey:*MEMORY[0x277D671A8]])
    {
      [v9 setForCarPlay:1];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end