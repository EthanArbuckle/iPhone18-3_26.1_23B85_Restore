@interface RCPPlayerDisplayLinkWaiter
+ (void)wait;
- (void)_wait;
@end

@implementation RCPPlayerDisplayLinkWaiter

+ (void)wait
{
  v2 = objc_alloc_init(a1);
  [v2 _wait];
}

- (void)_wait
{
  v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__stop_];
  v2 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v4 addToRunLoop:v2 forMode:@"RecapDisplayLinkWaitMode"];
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  [v2 runMode:@"RecapDisplayLinkWaitMode" beforeDate:v3];
}

@end