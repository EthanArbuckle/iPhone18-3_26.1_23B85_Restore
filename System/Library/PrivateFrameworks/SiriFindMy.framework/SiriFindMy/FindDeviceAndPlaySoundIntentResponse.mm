@interface FindDeviceAndPlaySoundIntentResponse
- (FindDeviceAndPlaySoundIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation FindDeviceAndPlaySoundIntentResponse

- (FindDeviceAndPlaySoundIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_266DAA6AC();
  }

  else
  {
    v3 = 0;
  }

  return FindDeviceAndPlaySoundIntentResponse.init(propertiesByName:)(v3);
}

@end