@interface CloseAppIntent
- (CloseAppIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (CloseAppIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation CloseAppIntent

- (CloseAppIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  return CloseAppIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (CloseAppIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_26618C8B0();
  sub_26618C8B0();
  if (name)
  {
    sub_26618C840();
  }

  return CloseAppIntent.init(domain:verb:parametersByName:)();
}

@end