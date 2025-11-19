@interface TSUApplicationExtensionExecutionContext
- (BOOL)isUILayoutRTL;
@end

@implementation TSUApplicationExtensionExecutionContext

- (BOOL)isUILayoutRTL
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 preferredLocalizations];
  v4 = [v3 firstObject];

  LOBYTE(v3) = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v4] == 2;
  return v3;
}

@end