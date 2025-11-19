@interface UIKeyEventContext
- (UIKeyEventContext)init;
- (UIKeyEventContext)initWithKeyEvent:(id)a3;
@end

@implementation UIKeyEventContext

- (UIKeyEventContext)initWithKeyEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIKeyEventContext;
  v6 = [(UIKeyEventContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyEvent, a3);
  }

  return v7;
}

- (UIKeyEventContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIKeyEventContext.m" lineNumber:21 description:{@"%s is not available. Use a designated initializer instead.", "-[UIKeyEventContext init]"}];

  return 0;
}

@end