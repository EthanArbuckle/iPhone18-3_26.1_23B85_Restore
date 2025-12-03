@interface _UIStatusBarAction
+ (_UIStatusBarAction)actionWithBlock:(id)block;
- (void)performWithStatusBar:(id)bar completionHandler:(id)handler;
@end

@implementation _UIStatusBarAction

+ (_UIStatusBarAction)actionWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(self);
  [v5 setBlock:blockCopy];

  [v5 setEnabled:1];

  return v5;
}

- (void)performWithStatusBar:(id)bar completionHandler:(id)handler
{
  barCopy = bar;
  handlerCopy = handler;
  if (![(_UIStatusBarAction *)self isEnabled])
  {
    v7 = 0;
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = (*(self->_block + 2))();
  if (handlerCopy)
  {
LABEL_5:
    handlerCopy[2](handlerCopy, v7);
  }

LABEL_6:
}

@end