@interface UIApplicationResolveURLUsingModalProgressControllerForNonOpenInPlaceBookmarkableString
@end

@implementation UIApplicationResolveURLUsingModalProgressControllerForNonOpenInPlaceBookmarkableString

uint64_t ___UIApplicationResolveURLUsingModalProgressControllerForNonOpenInPlaceBookmarkableString_block_invoke(uint64_t a1, char a2)
{
  [*(a1 + 32) stopAccessingSecurityScopedResource];
  if ((a2 & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  v4 = *(a1 + 40);

  return [v4 ui_scheduleForCleanup];
}

@end