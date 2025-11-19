@interface UserIdentifyIntent
- (UserIdentifyIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (UserIdentifyIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation UserIdentifyIntent

- (UserIdentifyIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    v5 = sub_266E9D024();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return UserIdentifyIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (UserIdentifyIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_266E9D024();
  sub_266E9D024();
  if (a5)
  {
    sub_266E9CFC4();
  }

  return UserIdentifyIntent.init(domain:verb:parametersByName:)();
}

@end