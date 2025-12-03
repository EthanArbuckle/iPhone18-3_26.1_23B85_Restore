@interface SetSubtitleStateIntentResponse
- (SetSubtitleStateIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SetSubtitleStateIntentResponse

- (SetSubtitleStateIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return SetSubtitleStateIntentResponse.init(propertiesByName:)(v3);
}

@end