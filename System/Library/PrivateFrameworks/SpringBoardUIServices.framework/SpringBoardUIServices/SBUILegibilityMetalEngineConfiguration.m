@interface SBUILegibilityMetalEngineConfiguration
@end

@implementation SBUILegibilityMetalEngineConfiguration

void __80___SBUILegibilityMetalEngineConfiguration__prepareImageForConvolution_settings___block_invoke(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v3 = [MEMORY[0x1E69DC888] blackColor];
  CGContextSetFillColorWithColor(CurrentContext, [v3 CGColor]);

  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -*(a1 + 48));
  v4 = [*(a1 + 32) CGImage];
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);

  CGContextDrawImage(CurrentContext, *&v5, v4);
}

@end