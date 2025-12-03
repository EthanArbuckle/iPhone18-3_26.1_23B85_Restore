@interface NSRunLoop(WebPrivacy)
- (void)_wp_runUntil:()WebPrivacy;
@end

@implementation NSRunLoop(WebPrivacy)

- (void)_wp_runUntil:()WebPrivacy
{
  v5 = *MEMORY[0x277CBE640];
  do
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v7 = [self runMode:v5 beforeDate:distantPast];
  }

  while (v7 && (*a3 & 1) == 0);
}

@end