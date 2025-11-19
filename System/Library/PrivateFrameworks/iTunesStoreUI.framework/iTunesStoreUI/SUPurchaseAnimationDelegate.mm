@interface SUPurchaseAnimationDelegate
- (SUPurchaseAnimationDelegate)initWithView:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
@end

@implementation SUPurchaseAnimationDelegate

- (SUPurchaseAnimationDelegate)initWithView:(id)a3
{
  v4 = [(SUPurchaseAnimationDelegate *)self init];
  if (v4)
  {
    v4->_view = a3;
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  [objc_msgSend(MEMORY[0x1E69DC668] sharedApplication];
  [(UIView *)self->_view removeFromSuperview];

  self->_view = 0;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];

  [v5 postNotificationName:@"SUPurchaseAnimationDidEndNotification" object:self];
}

@end