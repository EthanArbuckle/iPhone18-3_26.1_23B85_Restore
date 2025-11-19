@interface UIResponder(TSWPAdditions)
+ (uint64_t)tswp_currentFirstResponder;
@end

@implementation UIResponder(TSWPAdditions)

+ (uint64_t)tswp_currentFirstResponder
{
  currentFirstResponder = 0;
  [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  return currentFirstResponder;
}

@end