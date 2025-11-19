@interface VUIMetricsLocalRecorder
- (void)recordPagePerfRenderEventWithVuiDictionary:(id)a3;
@end

@implementation VUIMetricsLocalRecorder

- (void)recordPagePerfRenderEventWithVuiDictionary:(id)a3
{
  v4 = sub_1E4205C64();
  v5 = self;
  MetricsLocalRecorder.recordPagePerfRenderEvent(vuiDictionary:)(v4);
}

@end