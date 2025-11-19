@interface LearnPronunciationIntentResponse
- (LearnPronunciationIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation LearnPronunciationIntentResponse

- (LearnPronunciationIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return LearnPronunciationIntentResponse.init(propertiesByName:)(v3);
}

@end