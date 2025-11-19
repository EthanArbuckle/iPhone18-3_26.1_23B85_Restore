@interface FindDeviceAndPlaySoundIntent
- (FindDeviceAndPlaySoundIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (FindDeviceAndPlaySoundIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation FindDeviceAndPlaySoundIntent

- (FindDeviceAndPlaySoundIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    v5 = sub_266DAA70C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return FindDeviceAndPlaySoundIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (FindDeviceAndPlaySoundIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_266DAA70C();
  sub_266DAA70C();
  if (a5)
  {
    sub_266DAA6AC();
  }

  return FindDeviceAndPlaySoundIntent.init(domain:verb:parametersByName:)();
}

@end