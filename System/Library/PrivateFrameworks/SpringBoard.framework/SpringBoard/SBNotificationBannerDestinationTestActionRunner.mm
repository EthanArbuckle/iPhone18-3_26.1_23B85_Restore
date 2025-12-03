@interface SBNotificationBannerDestinationTestActionRunner
- (void)executeAction:(id)action fromOrigin:(id)origin endpoint:(id)endpoint withParameters:(id)parameters completion:(id)completion;
@end

@implementation SBNotificationBannerDestinationTestActionRunner

- (void)executeAction:(id)action fromOrigin:(id)origin endpoint:(id)endpoint withParameters:(id)parameters completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

@end