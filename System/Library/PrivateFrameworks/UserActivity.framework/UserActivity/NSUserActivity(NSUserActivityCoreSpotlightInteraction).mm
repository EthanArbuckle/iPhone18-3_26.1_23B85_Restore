@interface NSUserActivity(NSUserActivityCoreSpotlightInteraction)
- (void)_sendToCoreSpotlightIndexer;
- (void)_updateForwardToCoreSpotlightIndexer:()NSUserActivityCoreSpotlightInteraction;
@end

@implementation NSUserActivity(NSUserActivityCoreSpotlightInteraction)

- (void)_updateForwardToCoreSpotlightIndexer:()NSUserActivityCoreSpotlightInteraction
{
  _internalUserActivity = [self _internalUserActivity];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _internalUserActivity2 = [self _internalUserActivity];
    [_internalUserActivity2 updateForwardToCoreSpotlightIndexer:a3];
  }
}

- (void)_sendToCoreSpotlightIndexer
{
  _internalUserActivity = [self _internalUserActivity];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    _internalUserActivity2 = [self _internalUserActivity];
    [_internalUserActivity2 sendToCoreSpotlightIndexer];
  }
}

@end