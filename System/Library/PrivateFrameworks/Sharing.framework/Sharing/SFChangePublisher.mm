@interface SFChangePublisher
- (SFChangePublisher)init;
- (void)publishChangeDescriptor:(unint64_t)descriptor forObservable:(id)observable;
- (void)unregisterChangeObserver:(id)observer;
@end

@implementation SFChangePublisher

- (SFChangePublisher)init
{
  v6.receiver = self;
  v6.super_class = SFChangePublisher;
  v2 = [(SFChangePublisher *)&v6 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    observers = v2->_observers;
    v2->_observers = weakObjectsPointerArray;
  }

  return v2;
}

- (void)unregisterChangeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SFChangePublisher *)self observers];
  v5 = [observers count];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      observers2 = [(SFChangePublisher *)self observers];
      v8 = [observers2 pointerAtIndex:v6];

      if (v8 == observerCopy)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    observers3 = [(SFChangePublisher *)self observers];
    [observers3 removePointerAtIndex:v6];
  }

LABEL_7:
}

- (void)publishChangeDescriptor:(unint64_t)descriptor forObservable:(id)observable
{
  observableCopy = observable;
  observers = [(SFChangePublisher *)self observers];
  v7 = [observers count];

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      observers2 = [(SFChangePublisher *)self observers];
      v10 = [observers2 pointerAtIndex:i];

      [v10 observable:observableCopy didChange:descriptor];
    }
  }
}

@end