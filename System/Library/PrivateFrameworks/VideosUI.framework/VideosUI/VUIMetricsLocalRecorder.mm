@interface VUIMetricsLocalRecorder
- (void)recordPagePerfRenderEventWithVuiDictionary:(id)dictionary;
@end

@implementation VUIMetricsLocalRecorder

- (void)recordPagePerfRenderEventWithVuiDictionary:(id)dictionary
{
  v4 = sub_1E4205C64();
  selfCopy = self;
  MetricsLocalRecorder.recordPagePerfRenderEvent(vuiDictionary:)(v4);
}

@end