@interface SBDisplayArrangementItem(PreferredArrangement)
@end

@implementation SBDisplayArrangementItem(PreferredArrangement)

+ (void)_preferredArrangementOfExternalDisplay:()PreferredArrangement relativeToEmbeddedDisplay:preferences:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayIdentity" object:? file:? lineNumber:? description:?];
}

+ (void)preferredArrangementOfDisplay:()PreferredArrangement relativeTo:preferences:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayIdentity" object:? file:? lineNumber:? description:?];
}

+ (void)preferredArrangementOfDisplay:()PreferredArrangement relativeTo:preferences:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"relativeDisplayIdentity" object:? file:? lineNumber:? description:?];
}

@end