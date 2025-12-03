@interface DeepLaunchIntent
- (DeepLaunchIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (DeepLaunchIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation DeepLaunchIntent

- (DeepLaunchIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_26618C8B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return DeepLaunchIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (DeepLaunchIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_26618C8B0();
  sub_26618C8B0();
  if (name)
  {
    sub_26618C840();
  }

  return DeepLaunchIntent.init(domain:verb:parametersByName:)();
}

@end