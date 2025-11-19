@interface WGGraphicsQuality
@end

@implementation WGGraphicsQuality

void ___WGGraphicsQuality_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  _WGGraphicsQuality___graphicsQuality = [v0 _graphicsQuality];

  if (_WGGraphicsQuality___graphicsQuality == -1)
  {
    ___WGGraphicsQuality_block_invoke_cold_1();
  }
}

void ___WGGraphicsQuality_block_invoke_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_UIDeviceGraphicsQuality _WGGraphicsQuality(void)_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"WGUtilities.m" lineNumber:28 description:@"Failed to initialized graphics quality!"];
}

@end