@interface RemoveFromWatchListIntent
- (RemoveFromWatchListIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (RemoveFromWatchListIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation RemoveFromWatchListIntent

- (RemoveFromWatchListIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
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
  return RemoveFromWatchListIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (RemoveFromWatchListIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_269854A94();
  sub_269854A94();
  if (a5)
  {
    sub_2698549E4();
  }

  return RemoveFromWatchListIntent.init(domain:verb:parametersByName:)();
}

@end