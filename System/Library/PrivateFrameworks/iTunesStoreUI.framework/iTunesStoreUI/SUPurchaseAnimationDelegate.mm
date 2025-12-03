@interface SUPurchaseAnimationDelegate
- (SUPurchaseAnimationDelegate)initWithView:(id)view;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
@end

@implementation SUPurchaseAnimationDelegate

- (SUPurchaseAnimationDelegate)initWithView:(id)view
{
  v4 = [(SUPurchaseAnimationDelegate *)self init];
  if (v4)
  {
    v4->_view = view;
  }

  return v4;
}

- (void)dealloc
{
  self->_view = 0;
  v3.receiver = self;
  v3.super_class = SUPurchaseAnimationDelegate;
  [(SUPurchaseAnimationDelegate *)&v3 dealloc];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  [objc_msgSend(MEMORY[0x1E69DC668] sharedApplication];
  [(UIView *)self->_view removeFromSuperview];

  self->_view = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"SUPurchaseAnimationDidEndNotification" object:self];
}

@end