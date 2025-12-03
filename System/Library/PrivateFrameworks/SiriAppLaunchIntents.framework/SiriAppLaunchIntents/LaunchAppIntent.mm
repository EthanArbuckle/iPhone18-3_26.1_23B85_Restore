@interface LaunchAppIntent
- (LaunchAppIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (LaunchAppIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation LaunchAppIntent

- (LaunchAppIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  return LaunchAppIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (LaunchAppIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_26618C8B0();
  sub_26618C8B0();
  if (name)
  {
    sub_26618C840();
  }

  return LaunchAppIntent.init(domain:verb:parametersByName:)();
}

@end