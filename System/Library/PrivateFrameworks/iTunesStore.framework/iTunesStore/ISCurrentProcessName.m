@interface ISCurrentProcessName
@end

@implementation ISCurrentProcessName

void ____ISCurrentProcessName_block_invoke()
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v2 processName];
  v1 = __ISCurrentProcessName_processName;
  __ISCurrentProcessName_processName = v0;
}

@end