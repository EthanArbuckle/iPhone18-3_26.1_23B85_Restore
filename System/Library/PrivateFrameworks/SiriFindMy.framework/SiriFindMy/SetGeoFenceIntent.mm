@interface SetGeoFenceIntent
- (SetGeoFenceIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (SetGeoFenceIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation SetGeoFenceIntent

- (SetGeoFenceIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  return SetGeoFenceIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (SetGeoFenceIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_266DAA70C();
  sub_266DAA70C();
  if (name)
  {
    sub_266DAA6AC();
  }

  return SetGeoFenceIntent.init(domain:verb:parametersByName:)();
}

@end