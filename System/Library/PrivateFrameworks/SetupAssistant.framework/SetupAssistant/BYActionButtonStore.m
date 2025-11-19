@interface BYActionButtonStore
+ (id)currentData;
@end

@implementation BYActionButtonStore

+ (id)currentData
{
  v2 = CFPreferencesCopyValue(@"SBSystemActionConfiguredActionArchive", @"com.apple.springboard", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

  return v2;
}

@end