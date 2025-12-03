@interface SUAdParameters
+ (void)setStocksAdEnabled:(BOOL)enabled;
@end

@implementation SUAdParameters

+ (void)setStocksAdEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mEMORY[0x277CE9718] = [MEMORY[0x277CE9718] sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    [mEMORY[0x277CE9718] setStocksAdEnabled:enabledCopy];
  }
}

@end