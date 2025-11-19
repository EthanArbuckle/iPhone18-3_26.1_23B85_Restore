@interface ShareSheetHostCanPerformActivitySkippingShareSheet
@end

@implementation ShareSheetHostCanPerformActivitySkippingShareSheet

void ___ShareSheetHostCanPerformActivitySkippingShareSheet_block_invoke()
{
  Default = CFAllocatorGetDefault();
  v1 = SecTaskCreateFromSelf(Default);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.sharing.sharesheet.perform-activity", 0);
    CFRelease(v2);
    _ShareSheetHostCanPerformActivitySkippingShareSheet_hostEntitledForPerformActivity = [v3 BOOLValue];
  }
}

@end