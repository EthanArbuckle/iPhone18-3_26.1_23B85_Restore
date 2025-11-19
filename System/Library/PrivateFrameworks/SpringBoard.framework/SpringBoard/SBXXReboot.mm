@interface SBXXReboot
@end

@implementation SBXXReboot

void ___SBXXReboot_block_invoke()
{
  v3 = [SBApp restartManager];
  v0 = MEMORY[0x277CCACA8];
  v1 = FBSProcessPrettyDescription();
  v2 = [v0 stringWithFormat:@"Request from process = %@", v1];
  [v3 rebootForReason:v2];
}

@end