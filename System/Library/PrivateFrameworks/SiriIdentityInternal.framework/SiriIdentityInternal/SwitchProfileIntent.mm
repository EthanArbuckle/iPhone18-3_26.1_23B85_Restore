@interface SwitchProfileIntent
- (SwitchProfileIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (SwitchProfileIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation SwitchProfileIntent

- (SwitchProfileIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_266E9D024();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return SwitchProfileIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (SwitchProfileIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_266E9D024();
  sub_266E9D024();
  if (name)
  {
    sub_266E9CFC4();
  }

  return SwitchProfileIntent.init(domain:verb:parametersByName:)();
}

@end