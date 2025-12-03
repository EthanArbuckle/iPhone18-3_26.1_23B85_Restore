@interface TSUKeyValueObserver
+ (id)observerWithTarget:(id)target keyPath:(id)path options:(unint64_t)options changeHandler:(id)handler;
- (TSUKeyValueObserver)initWithTarget:(id)target keyPath:(id)path options:(unint64_t)options changeHandler:(id)handler;
- (void)dealloc;
@end

@implementation TSUKeyValueObserver

+ (id)observerWithTarget:(id)target keyPath:(id)path options:(unint64_t)options changeHandler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  targetCopy = target;
  v13 = [[self alloc] initWithTarget:targetCopy keyPath:pathCopy options:options changeHandler:handlerCopy];

  return v13;
}

- (TSUKeyValueObserver)initWithTarget:(id)target keyPath:(id)path options:(unint64_t)options changeHandler:(id)handler
{
  targetCopy = target;
  pathCopy = path;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = TSUKeyValueObserver;
  v13 = [(TSUKeyValueObserver *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_target, targetCopy);
    v15 = [pathCopy copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    v17 = [handlerCopy copy];
    changeHandler = v14->_changeHandler;
    v14->_changeHandler = v17;

    [targetCopy addObserver:v14 forKeyPath:pathCopy options:options context:0];
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