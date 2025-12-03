@interface TSPObjectContextObserver
- (SEL)action;
- (TSPObjectContextObserver)init;
- (TSPObjectContextObserver)initWithTarget:(id)target action:(SEL)action;
- (id)target;
@end

@implementation TSPObjectContextObserver

- (TSPObjectContextObserver)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContextObserver init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContext.mm"];
  [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:2746 description:@"Do not call method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSPObjectContextObserver init]"];
  v7 = [v5 exceptionWithName:*MEMORY[0x277CBE658] reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPObjectContextObserver)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = TSPObjectContextObserver;
  v7 = [(TSPObjectContextObserver *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v8->_action = actionCopy;
  }

  return v8;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

@end