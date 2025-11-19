@interface SetGeoFenceIntent
- (SetGeoFenceIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (SetGeoFenceIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation SetGeoFenceIntent

- (SetGeoFenceIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
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
  return SetGeoFenceIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (SetGeoFenceIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_266DAA70C();
  sub_266DAA70C();
  if (a5)
  {
    sub_266DAA6AC();
  }

  return SetGeoFenceIntent.init(domain:verb:parametersByName:)();
}

@end