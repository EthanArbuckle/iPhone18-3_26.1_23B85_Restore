@interface FindDeviceAndPlaySoundIntentResponse
- (FindDeviceAndPlaySoundIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation FindDeviceAndPlaySoundIntentResponse

- (FindDeviceAndPlaySoundIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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