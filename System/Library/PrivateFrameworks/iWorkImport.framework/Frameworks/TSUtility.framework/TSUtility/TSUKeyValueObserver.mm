@interface TSUKeyValueObserver
+ (id)observerWithTarget:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 changeHandler:(id)a6;
- (TSUKeyValueObserver)initWithTarget:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 changeHandler:(id)a6;
- (void)dealloc;
@end

@implementation TSUKeyValueObserver

+ (id)observerWithTarget:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 changeHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithTarget:v12 keyPath:v11 options:a5 changeHandler:v10];

  return v13;
}

- (TSUKeyValueObserver)initWithTarget:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 changeHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = TSUKeyValueObserver;
  v13 = [(TSUKeyValueObserver *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_target, v10);
    v15 = [v11 copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    v17 = [v12 copy];
    changeHandler = v14->_changeHandler;
    v14->_changeHandler = v17;

    [v10 addObserver:v14 forKeyPath:v11 options:a5 context:0];
  }

  return v14;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained removeObserver:self forKeyPath:self->_keyPath];

  v4.receiver = self;
  v4.super_class = TSUKeyValueObserver;
  [(TSUKeyValueObserver *)&v4 dealloc];
}

@end