@interface SetSharedLocationVisibilityIntent
- (SetSharedLocationVisibilityIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (SetSharedLocationVisibilityIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation SetSharedLocationVisibilityIntent

- (SetSharedLocationVisibilityIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
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
  return SetSharedLocationVisibilityIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (SetSharedLocationVisibilityIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_266DAA70C();
  sub_266DAA70C();
  if (a5)
  {
    sub_266DAA6AC();
  }

  return SetSharedLocationVisibilityIntent.init(domain:verb:parametersByName:)();
}

@end