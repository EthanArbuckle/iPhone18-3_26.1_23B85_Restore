@interface TLKObject
- (TLKObserver)observer;
- (void)propertiesDidChange;
@end

@implementation TLKObject

- (TLKObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->observer);

  return WeakRetained;
}

- (void)propertiesDidChange
{
  observer = [(TLKObject *)self observer];
  if (observer)
  {
    v4 = observer;
    observer2 = [(TLKObject *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKObject *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

@end