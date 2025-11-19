@interface SUAdParameters
+ (void)setStocksAdEnabled:(BOOL)a3;
@end

@implementation SUAdParameters

+ (void)setStocksAdEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CE9718] sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    [v4 setStocksAdEnabled:v3];
  }
}

@end