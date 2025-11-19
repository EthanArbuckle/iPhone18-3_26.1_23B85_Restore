@interface SeekTimeIntent
- (SeekTimeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (SeekTimeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation SeekTimeIntent

- (SeekTimeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    v5 = sub_268B37BF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SeekTimeIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (SeekTimeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_268B37BF4();
  sub_268B37BF4();
  if (a5)
  {
    sub_268B37B64();
  }

  return SeekTimeIntent.init(domain:verb:parametersByName:)();
}

@end