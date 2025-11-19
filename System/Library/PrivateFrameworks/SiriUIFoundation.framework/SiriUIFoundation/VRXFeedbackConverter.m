@interface VRXFeedbackConverter
+ (id)convertFeedbackToVRX:(id)a3;
- (VRXFeedbackConverter)init;
@end

@implementation VRXFeedbackConverter

+ (id)convertFeedbackToVRX:(id)a3
{
  v3 = a3;
  v4 = _sSo27SFCommandEngagementFeedbackC16SiriUIFoundationE10asVRXEventSo23VRXInstrumentationEventCyF_0();

  return v4;
}

- (VRXFeedbackConverter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VRXFeedbackConverter();
  return [(VRXFeedbackConverter *)&v3 init];
}

@end