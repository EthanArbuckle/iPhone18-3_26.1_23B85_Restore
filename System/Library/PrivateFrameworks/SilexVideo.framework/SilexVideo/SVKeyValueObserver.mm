@interface SVKeyValueObserver
- (NSObject)object;
- (SVKeyValueObserver)initWithKeyPath:(id)path ofObject:(id)object withOptions:(unint64_t)options change:(id)change;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SVKeyValueObserver

- (SVKeyValueObserver)initWithKeyPath:(id)path ofObject:(id)object withOptions:(unint64_t)options change:(id)change
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v19.receiver = self;
  v19.super_class = SVKeyValueObserver;
  v13 = [(SVKeyValueObserver *)&v19 init];
  if (v13)
  {
    v14 = [pathCopy copy];
    keyPath = v13->_keyPath;
    v13->_keyPath = v14;

    objc_storeWeak(&v13->_object, objectCopy);
    v13->_options = options;
    v16 = [changeCopy copy];
    change = v13->_change;
    v13->_change = v16;

    [objectCopy addObserver:v13 forKeyPath:pathCopy options:options context:SVKeyValueObserverContext];
  }

  return v13;
}

- (void)dealloc
{
  object = [(SVKeyValueObserver *)self object];
  keyPath = [(SVKeyValueObserver *)self keyPath];
  [object removeObserver:self forKeyPath:keyPath];

  v5.receiver = self;
  v5.super_class = SVKeyValueObserver;
  [(SVKeyValueObserver *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (SVKeyValueObserverContext == context)
  {
    v11 = changeCopy;
    change = [(SVKeyValueObserver *)self change];

    changeCopy = v11;
    if (change)
    {
      change2 = [(SVKeyValueObserver *)self change];
      (change2)[2](change2, self, v11);

      changeCopy = v11;
    }
  }
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end