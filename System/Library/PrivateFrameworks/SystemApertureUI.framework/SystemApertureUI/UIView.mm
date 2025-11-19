@interface UIView
@end

@implementation UIView

uint64_t __53__UIView_SystemApertureUIAdditions___sauiBlurKeyPath__block_invoke()
{
  _sauiBlurKeyPath___sauiBlurKeyPath = [@"filters" stringByAppendingFormat:@".%@", *MEMORY[0x277CDA328]];

  return MEMORY[0x2821F96F8]();
}

void __64__UIView_SystemApertureUIAdditions___sauiBlurInputRadiusKeyPath__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _sauiBlurKeyPath];
  v1 = [v3 stringByAppendingFormat:@".%@", *MEMORY[0x277CDA4F0]];
  v2 = _sauiBlurInputRadiusKeyPath___sauiBlurInputRadiusKeyPath;
  _sauiBlurInputRadiusKeyPath___sauiBlurInputRadiusKeyPath = v1;
}

@end