@interface VISharedAnalytics
@end

@implementation VISharedAnalytics

void ___VISharedAnalytics_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"com.apple.mediaanalysisd" userAgent:@"VisualIntelligence/1"];
  v4 = [MEMORY[0x1E6998670] sharedPARSessionWithConfiguration:v0];
  v1 = [[VIAFeedbackSubmitter alloc] initWithPARSession:v4];
  v2 = [[VIAnalytics alloc] initWithFeedbackSubmitter:v1];
  v3 = _VISharedAnalytics_analytics;
  _VISharedAnalytics_analytics = v2;
}

@end