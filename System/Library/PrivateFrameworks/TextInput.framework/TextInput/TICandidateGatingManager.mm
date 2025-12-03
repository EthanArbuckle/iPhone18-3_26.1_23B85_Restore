@interface TICandidateGatingManager
+ (unint64_t)stickerUsageCountForApp:(id)app;
@end

@implementation TICandidateGatingManager

+ (unint64_t)stickerUsageCountForApp:(id)app
{
  appCopy = app;
  if (getSTKStickerUsageManagerClass() && (getSTKStickerUsageManagerClass(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    sharedManager = [getSTKStickerUsageManagerClass() sharedManager];
    v5 = [sharedManager stickerCountsForBundleIdentifier:appCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end