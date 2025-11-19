@interface UISTouchAuthenticationVerboseLoggingEnabled
@end

@implementation UISTouchAuthenticationVerboseLoggingEnabled

void ___UISTouchAuthenticationVerboseLoggingEnabled_block_invoke()
{
  if (os_variant_allows_internal_security_policies())
  {
    v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.UIKit"];
    _MergedGlobals_12 = [v0 BOOLForKey:@"VerboseTouchAuthenticationLogging"];
  }
}

@end