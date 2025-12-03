@interface RCPPlayerDisplayLinkWaiter
+ (void)wait;
- (void)_wait;
@end

@implementation RCPPlayerDisplayLinkWaiter

+ (void)wait
{
  v2 = objc_alloc_init(self);
  [v2 _wait];
}

- (void)_wait
{
  v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__stop_];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [v4 addToRunLoop:currentRunLoop forMode:@"RecapDisplayLinkWaitMode"];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [currentRunLoop runMode:@"RecapDisplayLinkWaitMode" beforeDate:distantFuture];
}

@end