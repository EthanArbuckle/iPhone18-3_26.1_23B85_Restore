@interface CloseAppIntent
- (CloseAppIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (CloseAppIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation CloseAppIntent

- (CloseAppIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    v5 = sub_26618C8B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return CloseAppIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (CloseAppIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_26618C8B0();
  sub_26618C8B0();
  if (a5)
  {
    sub_26618C840();
  }

  return CloseAppIntent.init(domain:verb:parametersByName:)();
}

@end