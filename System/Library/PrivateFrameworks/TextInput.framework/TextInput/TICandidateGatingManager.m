@interface TICandidateGatingManager
+ (unint64_t)stickerUsageCountForApp:(id)a3;
@end

@implementation TICandidateGatingManager

+ (unint64_t)stickerUsageCountForApp:(id)a3
{
  v3 = a3;
  if (getSTKStickerUsageManagerClass() && (getSTKStickerUsageManagerClass(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v4 = [getSTKStickerUsageManagerClass() sharedManager];
    v5 = [v4 stickerCountsForBundleIdentifier:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end