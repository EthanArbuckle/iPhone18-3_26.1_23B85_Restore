@interface RemoveFromWatchListIntent
- (RemoveFromWatchListIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (RemoveFromWatchListIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation RemoveFromWatchListIntent

- (RemoveFromWatchListIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_269854A94();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return RemoveFromWatchListIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (RemoveFromWatchListIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_269854A94();
  sub_269854A94();
  if (name)
  {
    sub_2698549E4();
  }

  return RemoveFromWatchListIntent.init(domain:verb:parametersByName:)();
}

@end