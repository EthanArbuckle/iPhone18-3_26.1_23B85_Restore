@interface SHUDBannerPresentable
- (SHUDBannerPresentable)initWithModel:(id)model;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
@end

@implementation SHUDBannerPresentable

- (SHUDBannerPresentable)initWithModel:(id)model
{
  modelCopy = model;
  v13.receiver = self;
  v13.super_class = SHUDBannerPresentable;
  v6 = [(SHUDBannerPresentable *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    if ([modelCopy type])
    {
      if ([modelCopy type] == 1)
      {
        v8 = +[SHUDOnenessUnlockedUtilities deviceSpecificViewController];
        bannerViewController = v7->_bannerViewController;
        v7->_bannerViewController = v8;
      }

      else
      {
        bannerViewController = sharingHUDLog();
        if (os_log_type_enabled(bannerViewController, OS_LOG_TYPE_ERROR))
        {
          sub_100009208(modelCopy, bannerViewController);
        }
      }
    }

    else
    {
      bannerViewController = [modelCopy watchName];
      v10 = +[SHUDPairedUnlockUtilities deviceSpecificViewControllerWithWatchName:needsLockButton:needsUpdate:](SHUDPairedUnlockUtilities, "deviceSpecificViewControllerWithWatchName:needsLockButton:needsUpdate:", bannerViewController, [modelCopy needsLockButton], objc_msgSend(modelCopy, "needsUpdate"));
      v11 = v7->_bannerViewController;
      v7->_bannerViewController = v10;
    }
  }

  return v7;
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  reasonCopy = reason;
  bannerDidDisappearHandler = [(SHUDBannerPresentable *)self bannerDidDisappearHandler];

  if (bannerDidDisappearHandler)
  {
    bannerDidDisappearHandler2 = [(SHUDBannerPresentable *)self bannerDidDisappearHandler];
    (bannerDidDisappearHandler2)[2](bannerDidDisappearHandler2, reasonCopy);
  }
}

@end