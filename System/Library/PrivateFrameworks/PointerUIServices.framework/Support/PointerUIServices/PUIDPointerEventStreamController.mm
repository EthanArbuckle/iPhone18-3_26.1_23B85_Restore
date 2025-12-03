@interface PUIDPointerEventStreamController
- (void)addPointerEventStreamObserver:(id)observer;
- (void)handleEvent:(id)event;
- (void)removePointerEventStreamObserver:(id)observer;
@end

@implementation PUIDPointerEventStreamController

- (void)addPointerEventStreamObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removePointerEventStreamObserver:(id)observer
{
  [(NSHashTable *)self->_observers removeObject:observer];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)handleEvent:(id)event
{
  _hidEvent = [event _hidEvent];
  if (_hidEvent)
  {
    v5 = _hidEvent;
    v6 = sub_100015250(_hidEvent);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (v6)
          {
            [v12 pointerEventStreamProvider:self didReceivePointerEvent:v6];
          }

          else
          {
            [v12 pointerEventStreamProvider:self didReceiveNonPointerEvent:v5];
          }
        }

        v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

@end