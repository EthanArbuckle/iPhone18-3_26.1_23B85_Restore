@interface SBSystemApertureViewController(Private)
@end

@implementation SBSystemApertureViewController(Private)

- (void)hostOrientationDidChangeTo:()Private withPreviousOrientation:context:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  v0 = BSInterfaceOrientationDescription();
  v7 = BSInterfaceOrientationDescription();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v1, v2, "Participant's previous orientation:(%@) does not match our previous view controller orientation:(%@) ", v3, v4, v5, v6, 2u);
}

- (void)hostOrientationDidChangeTo:()Private withPreviousOrientation:context:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end