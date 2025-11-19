@interface WatchSportsEventIntent
- (WatchSportsEventIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (WatchSportsEventIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation WatchSportsEventIntent

- (WatchSportsEventIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    v5 = sub_269854A94();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return WatchSportsEventIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (WatchSportsEventIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_269854A94();
  sub_269854A94();
  if (a5)
  {
    sub_2698549E4();
  }

  return WatchSportsEventIntent.init(domain:verb:parametersByName:)();
}

@end