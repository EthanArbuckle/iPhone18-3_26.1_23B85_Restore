@interface TRISystemDimensions(ServerFactory)
+ (id)fullSystemDimensions:()ServerFactory;
@end

@implementation TRISystemDimensions(ServerFactory)

+ (id)fullSystemDimensions:()ServerFactory
{
  v3 = MEMORY[0x277D73BB8];
  v4 = a3;
  systemDimensions = [v3 systemDimensions];
  v6 = [TRIUserAdjustableSettings getExperimentOptOut:v4];

  [systemDimensions setExperimentOptOutStatus:v6];

  return systemDimensions;
}

@end