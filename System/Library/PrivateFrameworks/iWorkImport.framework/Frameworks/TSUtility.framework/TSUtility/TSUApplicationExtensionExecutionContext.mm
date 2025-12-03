@interface TSUApplicationExtensionExecutionContext
- (BOOL)isUILayoutRTL;
@end

@implementation TSUApplicationExtensionExecutionContext

- (BOOL)isUILayoutRTL
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  LOBYTE(preferredLocalizations) = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:firstObject] == 2;
  return preferredLocalizations;
}

@end