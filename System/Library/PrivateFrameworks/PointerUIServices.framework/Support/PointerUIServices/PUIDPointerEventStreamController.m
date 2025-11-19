@interface PUIDPointerEventStreamController
- (void)addPointerEventStreamObserver:(id)a3;
- (void)handleEvent:(id)a3;
- (void)removePointerEventStreamObserver:(id)a3;
@end

@implementation PUIDPointerEventStreamController

- (void)addPointerEventStreamObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)removePointerEventStreamObserver:(id)a3
{
  [(NSHashTable *)self->_observers removeObject:a3];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)handleEvent:(id)a3
{
  v4 = [a3 _hidEvent];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100015250(v4);
    v7 = [(NSHashTable *)self->_observers allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v7);
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

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

@end