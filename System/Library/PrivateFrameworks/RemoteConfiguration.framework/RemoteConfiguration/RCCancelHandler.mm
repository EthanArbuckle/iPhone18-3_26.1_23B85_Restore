@interface RCCancelHandler
+ (id)cancelHandlerWithBlock:(id)a3;
+ (id)cancelHandlerWithStrongTarget:(id)a3 selector:(SEL)a4;
+ (id)cancelHandlerWithWeakTarget:(id)a3 selector:(SEL)a4;
- (RCCancelHandler)initWithBlock:(id)a3;
- (RCCancelHandler)initWithStrongTarget:(id)a3 selector:(SEL)a4;
- (RCCancelHandler)initWithWeakTarget:(id)a3 selector:(SEL)a4;
- (SEL)selector;
- (id)weakTarget;
- (void)cancel;
- (void)setSelector:(SEL)a3;
@end

@implementation RCCancelHandler

+ (id)cancelHandlerWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4];

  return v5;
}

+ (id)cancelHandlerWithWeakTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithWeakTarget:v6 selector:a4];

  return v7;
}

+ (id)cancelHandlerWithStrongTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithStrongTarget:v6 selector:a4];

  return v7;
}

- (RCCancelHandler)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RCCancelHandler;
  v5 = [(RCCancelHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    cancelBlock = v5->_cancelBlock;
    v5->_cancelBlock = v6;
  }

  return v5;
}

- (RCCancelHandler)initWithWeakTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RCCancelHandler;
  v7 = [(RCCancelHandler *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_weakTarget, v6);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v8->_selector = v9;
  }

  return v8;
}

- (RCCancelHandler)initWithStrongTarget:(id)a3 selector:(SEL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = RCCancelHandler;
  v8 = [(RCCancelHandler *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_strongTarget, a3);
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v9->_selector = v10;
  }

  return v9;
}

- (void)cancel
{
  v3 = [(RCCancelHandler *)self cancelBlock];

  if (v3)
  {
    v4 = [(RCCancelHandler *)self cancelBlock];

    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = [(RCCancelHandler *)self cancelBlock];
    v5[2]();
  }

  else
  {
    if (![(RCCancelHandler *)self selector])
    {
      goto LABEL_11;
    }

    v6 = [(RCCancelHandler *)self strongTarget];
    if (v6)
    {
      [(RCCancelHandler *)self strongTarget];
    }

    else
    {
      [(RCCancelHandler *)self weakTarget];
    }
    v5 = ;

    if (v5)
    {
      ([v5 methodForSelector:{-[RCCancelHandler selector](self, "selector")}])(v5, -[RCCancelHandler selector](self, "selector"));
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

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

@end