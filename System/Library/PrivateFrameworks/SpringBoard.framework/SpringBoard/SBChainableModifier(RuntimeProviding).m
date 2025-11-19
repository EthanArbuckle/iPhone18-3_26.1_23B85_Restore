@interface SBChainableModifier(RuntimeProviding)
@end

@implementation SBChainableModifier(RuntimeProviding)

+ (void)makeDynamicSubclassWithDescriptor:()RuntimeProviding implementation:forSelector:ofProtocol:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(v3);
  v5 = NSStringFromProtocol(v2);
  [v6 handleFailureInMethod:v1 object:v0 file:@"SBChainableModifier+RuntimeProviding.m" lineNumber:38 description:{@"%@ does not exist in %@", v4, v5}];
}

+ (void)makeDynamicSubclassWithDescriptor:()RuntimeProviding implementation:forSelector:ofProtocol:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(v3);
  [v5 handleFailureInMethod:v2 object:v1 file:@"SBChainableModifier+RuntimeProviding.m" lineNumber:48 description:{@"Implementation for %@ already exists in subclass %@", v4, v0}];
}

@end