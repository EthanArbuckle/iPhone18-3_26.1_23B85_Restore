@interface SBSAPreferences(Private)
@end

@implementation SBSAPreferences(Private)

- (void)copyWithBlock:()Private .cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAPreferences.m" lineNumber:374 description:@"Attempting to copy/mutate finalized preferences."];
}

@end