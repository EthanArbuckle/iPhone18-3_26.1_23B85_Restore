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
  v3 = [(TLKObject *)self observer];
  if (v3)
  {
    v4 = v3;
    v5 = [(TLKObject *)self observer];
    v6 = [v5 batchUpdateCount];

    if (!v6)
    {
      v7 = [(TLKObject *)self observer];
      [v7 propertiesDidChange];
    }
  }
}

@end