@interface GetVolumeLevelIntentResponse
- (GetVolumeLevelIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation GetVolumeLevelIntentResponse

- (GetVolumeLevelIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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