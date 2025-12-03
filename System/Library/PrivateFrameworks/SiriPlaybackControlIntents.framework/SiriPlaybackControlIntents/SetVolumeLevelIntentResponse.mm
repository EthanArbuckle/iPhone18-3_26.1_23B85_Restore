@interface SetVolumeLevelIntentResponse
- (SetVolumeLevelIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SetVolumeLevelIntentResponse

- (SetVolumeLevelIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return SetVolumeLevelIntentResponse.init(propertiesByName:)(v3);
}

@end