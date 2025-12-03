@interface SBDashBoardViewExternalControllerBase
- (id)coverSheetViewController;
@end

@implementation SBDashBoardViewExternalControllerBase

- (id)coverSheetViewController
{
  v5.receiver = self;
  v5.super_class = SBDashBoardViewExternalControllerBase;
  coverSheetViewController = [(CSCoverSheetExternalViewControllerBase *)&v5 coverSheetViewController];
  if (!coverSheetViewController)
  {
    v3 = +[SBLockScreenManager sharedInstance];
    coverSheetViewController = [v3 coverSheetViewController];
  }

  return coverSheetViewController;
}

@end