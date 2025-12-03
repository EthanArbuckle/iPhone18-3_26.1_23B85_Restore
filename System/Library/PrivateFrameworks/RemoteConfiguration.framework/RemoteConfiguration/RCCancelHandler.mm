@interface RCCancelHandler
+ (id)cancelHandlerWithBlock:(id)block;
+ (id)cancelHandlerWithStrongTarget:(id)target selector:(SEL)selector;
+ (id)cancelHandlerWithWeakTarget:(id)target selector:(SEL)selector;
- (RCCancelHandler)initWithBlock:(id)block;
- (RCCancelHandler)initWithStrongTarget:(id)target selector:(SEL)selector;
- (RCCancelHandler)initWithWeakTarget:(id)target selector:(SEL)selector;
- (SEL)selector;
- (id)weakTarget;
- (void)cancel;
- (void)setSelector:(SEL)selector;
@end

@implementation RCCancelHandler

+ (id)cancelHandlerWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy];

  return v5;
}

+ (id)cancelHandlerWithWeakTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v7 = [[self alloc] initWithWeakTarget:targetCopy selector:selector];

  return v7;
}

+ (id)cancelHandlerWithStrongTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v7 = [[self alloc] initWithStrongTarget:targetCopy selector:selector];

  return v7;
}

- (RCCancelHandler)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = RCCancelHandler;
  v5 = [(RCCancelHandler *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    cancelBlock = v5->_cancelBlock;
    v5->_cancelBlock = v6;
  }

  return v5;
}

- (RCCancelHandler)initWithWeakTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = RCCancelHandler;
  v7 = [(RCCancelHandler *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_weakTarget, targetCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v8->_selector = selectorCopy;
  }

  return v8;
}

- (RCCancelHandler)initWithStrongTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v12.receiver = self;
  v12.super_class = RCCancelHandler;
  v8 = [(RCCancelHandler *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_strongTarget, target);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v9->_selector = selectorCopy;
  }

  return v9;
}

- (void)cancel
{
  cancelBlock = [(RCCancelHandler *)self cancelBlock];

  if (cancelBlock)
  {
    cancelBlock2 = [(RCCancelHandler *)self cancelBlock];

    if (!cancelBlock2)
    {
      goto LABEL_11;
    }

    cancelBlock3 = [(RCCancelHandler *)self cancelBlock];
    cancelBlock3[2]();
  }

  else
  {
    if (![(RCCancelHandler *)self selector])
    {
      goto LABEL_11;
    }

    strongTarget = [(RCCancelHandler *)self strongTarget];
    if (strongTarget)
    {
      [(RCCancelHandler *)self strongTarget];
    }

    else
    {
      [(RCCancelHandler *)self weakTarget];
    }
    cancelBlock3 = ;

    if (cancelBlock3)
    {
      ([cancelBlock3 methodForSelector:{-[RCCancelHandler selector](self, "selector")}])(cancelBlock3, -[RCCancelHandler selector](self, "selector"));
    }
  }

LABEL_11:
  [(RCCancelHandler *)self setCancelBlock:0];
  [(RCCancelHandler *)self setWeakTarget:0];

  [(RCCancelHandler *)self setStrongTarget:0];
}

- (id)weakTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_weakTarget);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end