@interface UICanExcludeExtensionActivities
@end

@implementation UICanExcludeExtensionActivities

void ___UICanExcludeExtensionActivities_block_invoke()
{
  Default = CFAllocatorGetDefault();
  v1 = SecTaskCreateFromSelf(Default);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.excludes-extensions", 0);
    CFRelease(v2);
    _UICanExcludeExtensionActivities_hostHasEntitlement = [v3 BOOLValue];
  }
}

@end