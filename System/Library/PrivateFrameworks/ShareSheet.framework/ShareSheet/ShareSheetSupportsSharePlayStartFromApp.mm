@interface ShareSheetSupportsSharePlayStartFromApp
@end

@implementation ShareSheetSupportsSharePlayStartFromApp

void ___ShareSheetSupportsSharePlayStartFromApp_block_invoke()
{
  Default = CFAllocatorGetDefault();
  v1 = SecTaskCreateFromSelf(Default);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.developer.group-session", 0);
    CFRelease(v2);
    _ShareSheetSupportsSharePlayStartFromApp_hostEntitledForSharePlay = [v3 BOOLValue];
  }
}

@end