@interface SBNotificationBannerDestinationTestActionRunner
- (void)executeAction:(id)a3 fromOrigin:(id)a4 endpoint:(id)a5 withParameters:(id)a6 completion:(id)a7;
@end

@implementation SBNotificationBannerDestinationTestActionRunner

- (void)executeAction:(id)a3 fromOrigin:(id)a4 endpoint:(id)a5 withParameters:(id)a6 completion:(id)a7
{
  if (a7)
  {
    (*(a7 + 2))(a7, 1);
  }
}

@end