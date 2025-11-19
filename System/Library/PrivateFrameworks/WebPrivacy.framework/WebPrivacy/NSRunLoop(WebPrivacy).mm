@interface NSRunLoop(WebPrivacy)
- (void)_wp_runUntil:()WebPrivacy;
@end

@implementation NSRunLoop(WebPrivacy)

- (void)_wp_runUntil:()WebPrivacy
{
  v5 = *MEMORY[0x277CBE640];
  do
  {
    v6 = [MEMORY[0x277CBEAA8] distantPast];
    v7 = [a1 runMode:v5 beforeDate:v6];
  }

  while (v7 && (*a3 & 1) == 0);
}

@end