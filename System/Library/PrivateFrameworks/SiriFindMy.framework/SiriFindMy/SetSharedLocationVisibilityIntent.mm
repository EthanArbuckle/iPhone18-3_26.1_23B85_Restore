@interface SetSharedLocationVisibilityIntent
- (SetSharedLocationVisibilityIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (SetSharedLocationVisibilityIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation SetSharedLocationVisibilityIntent

- (SetSharedLocationVisibilityIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  return SetSharedLocationVisibilityIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (SetSharedLocationVisibilityIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_266DAA70C();
  sub_266DAA70C();
  if (name)
  {
    sub_266DAA6AC();
  }

  return SetSharedLocationVisibilityIntent.init(domain:verb:parametersByName:)();
}

@end