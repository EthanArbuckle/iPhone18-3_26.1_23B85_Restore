@interface NSUserActivity(NSUserActivityCoreSpotlightInteraction)
- (void)_sendToCoreSpotlightIndexer;
- (void)_updateForwardToCoreSpotlightIndexer:()NSUserActivityCoreSpotlightInteraction;
@end

@implementation NSUserActivity(NSUserActivityCoreSpotlightInteraction)

- (void)_updateForwardToCoreSpotlightIndexer:()NSUserActivityCoreSpotlightInteraction
{
  v5 = [a1 _internalUserActivity];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [a1 _internalUserActivity];
    [v7 updateForwardToCoreSpotlightIndexer:a3];
  }
}

- (void)_sendToCoreSpotlightIndexer
{
  v2 = [a1 _internalUserActivity];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [a1 _internalUserActivity];
    [v4 sendToCoreSpotlightIndexer];
  }
}

@end