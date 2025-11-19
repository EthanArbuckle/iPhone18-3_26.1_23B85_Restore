@interface SBDashBoardViewExternalControllerBase
- (id)coverSheetViewController;
@end

@implementation SBDashBoardViewExternalControllerBase

- (id)coverSheetViewController
{
  v5.receiver = self;
  v5.super_class = SBDashBoardViewExternalControllerBase;
  v2 = [(CSCoverSheetExternalViewControllerBase *)&v5 coverSheetViewController];
  if (!v2)
  {
    v3 = +[SBLockScreenManager sharedInstance];
    v2 = [v3 coverSheetViewController];
  }

  return v2;
}

@end