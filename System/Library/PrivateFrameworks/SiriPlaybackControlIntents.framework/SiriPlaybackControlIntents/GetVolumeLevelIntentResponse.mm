@interface GetVolumeLevelIntentResponse
- (GetVolumeLevelIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation GetVolumeLevelIntentResponse

- (GetVolumeLevelIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return GetVolumeLevelIntentResponse.init(propertiesByName:)(v3);
}

@end