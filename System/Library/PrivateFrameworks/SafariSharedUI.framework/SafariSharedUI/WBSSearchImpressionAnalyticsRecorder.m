@interface WBSSearchImpressionAnalyticsRecorder
+ (WBSSearchImpressionAnalyticsRecorder)sharedRecorder;
- (WBSSearchImpressionAnalyticsRecorder)init;
@end

@implementation WBSSearchImpressionAnalyticsRecorder

+ (WBSSearchImpressionAnalyticsRecorder)sharedRecorder
{
  if (sharedRecorder_onceToken != -1)
  {
    +[WBSSearchImpressionAnalyticsRecorder sharedRecorder];
  }

  v3 = sharedRecorder_sharedRecorder;

  return v3;
}

void __54__WBSSearchImpressionAnalyticsRecorder_sharedRecorder__block_invoke()
{
  v0 = objc_alloc_init(WBSSearchImpressionAnalyticsRecorder);
  v1 = sharedRecorder_sharedRecorder;
  sharedRecorder_sharedRecorder = v0;
}

- (WBSSearchImpressionAnalyticsRecorder)init
{
  v6.receiver = self;
  v6.super_class = WBSSearchImpressionAnalyticsRecorder;
  v2 = [(WBSSearchImpressionAnalyticsRecorder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end