@interface SBXXShutDown
@end

@implementation SBXXShutDown

void ___SBXXShutDown_block_invoke()
{
  v3 = [SBApp restartManager];
  v0 = MEMORY[0x277CCACA8];
  v1 = FBSProcessPrettyDescription();
  v2 = [v0 stringWithFormat:@"Request from process = %@", v1];
  [v3 shutdownForReason:v2];
}

@end