@interface WGMainScreenScale
@end

@implementation WGMainScreenScale

void ___WGMainScreenScale_block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  _WGMainScreenScale___mainScreenScale = v1;

  if (*&_WGMainScreenScale___mainScreenScale <= 0.0)
  {
    ___WGMainScreenScale_block_invoke_cold_1();
  }
}

void ___WGMainScreenScale_block_invoke_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGFloat _WGMainScreenScale(void)_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"WGUtilities.m" lineNumber:18 description:@"Failed to initialized main screen scale!"];
}

@end