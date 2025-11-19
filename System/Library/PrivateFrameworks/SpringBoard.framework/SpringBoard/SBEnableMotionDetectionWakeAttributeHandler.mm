@interface SBEnableMotionDetectionWakeAttributeHandler
+ (id)attributeClasses;
@end

@implementation SBEnableMotionDetectionWakeAttributeHandler

+ (id)attributeClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

void __70__SBEnableMotionDetectionWakeAttributeHandler_activateWithFirstEntry___block_invoke()
{
  v0 = +[SBAmbientMotionDetectionWakeAttributeMonitor sharedInstance];
  [v0 _setShouldEnableMotionDetectionWake:1];
}

void __72__SBEnableMotionDetectionWakeAttributeHandler_deactivateWithFinalEntry___block_invoke()
{
  v0 = +[SBAmbientMotionDetectionWakeAttributeMonitor sharedInstance];
  [v0 _setShouldEnableMotionDetectionWake:0];
}

@end