@interface LearnPronunciationIntentResponse
- (LearnPronunciationIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation LearnPronunciationIntentResponse

- (LearnPronunciationIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
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