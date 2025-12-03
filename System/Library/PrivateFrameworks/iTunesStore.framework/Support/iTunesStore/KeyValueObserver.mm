@interface KeyValueObserver
- (KeyValueObserver)init;
- (id)observeObject:(id)object keyPath:(id)path options:(unint64_t)options usingBlock:(id)block;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeObserver:(id)observer;
@end

@implementation KeyValueObserver

- (KeyValueObserver)init
{
  v4.receiver = self;
  v4.super_class = KeyValueObserver;
  v2 = [(KeyValueObserver *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.KeyValueObserver", 0);
    v2->_observers = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  observers = self->_observers;
  v4 = [(NSMutableArray *)observers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(observers);
        }

        [objc_msgSend(*(*(&v9 + 1) + 8 * i) "object")];
      }

      v5 = [(NSMutableArray *)observers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = KeyValueObserver;
  [(KeyValueObserver *)&v8 dealloc];
}

- (id)observeObject:(id)object keyPath:(id)path options:(unint64_t)options usingBlock:(id)block
{
  v10 = [[KeyValueObserverItem alloc] initWithObject:object keyPath:path block:block];
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10019EB10;
  v13[3] = &unk_100327350;
  v13[4] = self;
  v13[5] = v10;
  dispatch_sync(dispatchQueue, v13);
  [object addObserver:self forKeyPath:path options:options context:v10];
  return v10;
}

- (void)removeObserver:(id)observer
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10019EB90;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = observer;
  dispatch_sync(dispatchQueue, v4);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  block = [context block];
  if (block)
  {
    v9 = block;
    selfCopy = self;
    v11 = v9[2];

    v11(v9, change);
  }
}

@end