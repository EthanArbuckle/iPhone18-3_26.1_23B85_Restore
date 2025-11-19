@interface SBSceneRenderingEnvironmentParticipantSceneExtension
+ (id)hostComponents;
@end

@implementation SBSceneRenderingEnvironmentParticipantSceneExtension

+ (id)hostComponents
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end