@interface TRISystemDimensions(ServerFactory)
+ (id)fullSystemDimensions:()ServerFactory;
@end

@implementation TRISystemDimensions(ServerFactory)

+ (id)fullSystemDimensions:()ServerFactory
{
  v3 = MEMORY[0x277D73BB8];
  v4 = a3;
  v5 = [v3 systemDimensions];
  v6 = [TRIUserAdjustableSettings getExperimentOptOut:v4];

  [v5 setExperimentOptOutStatus:v6];

  return v5;
}

@end