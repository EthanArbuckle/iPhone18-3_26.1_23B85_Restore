@interface ShareSheetHostCanUseCustomViewController
@end

@implementation ShareSheetHostCanUseCustomViewController

void ___ShareSheetHostCanUseCustomViewController_block_invoke()
{
  Default = CFAllocatorGetDefault();
  v1 = SecTaskCreateFromSelf(Default);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.sharesheet.allow-custom-view", 0);
    CFRelease(v2);
    _ShareSheetHostCanUseCustomViewController_hostHasEntitlement = [v3 BOOLValue];
  }
}

@end