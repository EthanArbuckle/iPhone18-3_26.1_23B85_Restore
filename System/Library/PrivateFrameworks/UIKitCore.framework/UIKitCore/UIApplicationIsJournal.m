@interface UIApplicationIsJournal
@end

@implementation UIApplicationIsJournal

void ___UIApplicationIsJournal_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_1266 = [v0 isEqualToString:@"com.apple.journal"];
}

@end