@interface FindDeviceAndPlaySoundIntent
- (FindDeviceAndPlaySoundIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (FindDeviceAndPlaySoundIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation FindDeviceAndPlaySoundIntent

- (FindDeviceAndPlaySoundIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_266DAA70C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return FindDeviceAndPlaySoundIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (FindDeviceAndPlaySoundIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_266DAA70C();
  sub_266DAA70C();
  if (name)
  {
    sub_266DAA6AC();
  }

  return FindDeviceAndPlaySoundIntent.init(domain:verb:parametersByName:)();
}

@end