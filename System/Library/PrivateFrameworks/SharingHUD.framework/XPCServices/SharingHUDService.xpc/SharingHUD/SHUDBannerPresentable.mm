@interface SHUDBannerPresentable
- (SHUDBannerPresentable)initWithModel:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
@end

@implementation SHUDBannerPresentable

- (SHUDBannerPresentable)initWithModel:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SHUDBannerPresentable;
  v6 = [(SHUDBannerPresentable *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    if ([v5 type])
    {
      if ([v5 type] == 1)
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
          sub_100009208(v5, bannerViewController);
        }
      }
    }

    else
    {
      bannerViewController = [v5 watchName];
      v10 = +[SHUDPairedUnlockUtilities deviceSpecificViewControllerWithWatchName:needsLockButton:needsUpdate:](SHUDPairedUnlockUtilities, "deviceSpecificViewControllerWithWatchName:needsLockButton:needsUpdate:", bannerViewController, [v5 needsLockButton], objc_msgSend(v5, "needsUpdate"));
      v11 = v7->_bannerViewController;
      v7->_bannerViewController = v10;
    }
  }

  return v7;
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v7 = a4;
  v5 = [(SHUDBannerPresentable *)self bannerDidDisappearHandler];

  if (v5)
  {
    v6 = [(SHUDBannerPresentable *)self bannerDidDisappearHandler];
    (v6)[2](v6, v7);
  }
}

@end