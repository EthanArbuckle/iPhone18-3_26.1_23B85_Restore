@interface SVKeyValueObserver
- (NSObject)object;
- (SVKeyValueObserver)initWithKeyPath:(id)a3 ofObject:(id)a4 withOptions:(unint64_t)a5 change:(id)a6;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation SVKeyValueObserver

- (SVKeyValueObserver)initWithKeyPath:(id)a3 ofObject:(id)a4 withOptions:(unint64_t)a5 change:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = SVKeyValueObserver;
  v13 = [(SVKeyValueObserver *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    keyPath = v13->_keyPath;
    v13->_keyPath = v14;

    objc_storeWeak(&v13->_object, v11);
    v13->_options = a5;
    v16 = [v12 copy];
    change = v13->_change;
    v13->_change = v16;

    [v11 addObserver:v13 forKeyPath:v10 options:a5 context:SVKeyValueObserverContext];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(SVKeyValueObserver *)self object];
  v4 = [(SVKeyValueObserver *)self keyPath];
  [v3 removeObserver:self forKeyPath:v4];

  v5.receiver = self;
  v5.super_class = SVKeyValueObserver;
  [(SVKeyValueObserver *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a5;
  if (SVKeyValueObserverContext == a6)
  {
    v11 = v8;
    v9 = [(SVKeyValueObserver *)self change];

    v8 = v11;
    if (v9)
    {
      v10 = [(SVKeyValueObserver *)self change];
      (v10)[2](v10, self, v11);

      v8 = v11;
    }
  }
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end