@interface CLKUIPrimaryGamutMatrix
@end

@implementation CLKUIPrimaryGamutMatrix

__n128 __CLKUIPrimaryGamutMatrix_block_invoke()
{
  v0 = *(MEMORY[0x1E69E9B10] + 16);
  CLKUIPrimaryGamutMatrix_p3ToNativeMatrix = *MEMORY[0x1E69E9B10];
  *algn_1EBD0EB70 = v0;
  result = *(MEMORY[0x1E69E9B10] + 32);
  xmmword_1EBD0EB80 = result;
  return result;
}

@end