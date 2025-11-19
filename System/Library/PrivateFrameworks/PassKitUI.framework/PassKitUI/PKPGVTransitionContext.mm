@interface PKPGVTransitionContext
+ (PKPGVTransitionContext)_createForAnimatedTransition:(void *)a3 withPassContext:(BOOL)a4 beginTerminal:;
+ (PKPGVTransitionContext)_createForPanGestureWithPassContext:(void *)a3 velocity:(BOOL)a4 beginTerminal:;
+ (PKPGVTransitionContext)createForAnimatedTransition:(void *)a3 withPassContext:;
+ (PKPGVTransitionContext)createForAnimatedTransition:(void *)a3 withPassContext:(BOOL)a4 beginTerminal:;
+ (PKPGVTransitionContext)createForPanGestureWithPassContext:(void *)a3 velocity:;
@end

@implementation PKPGVTransitionContext

+ (PKPGVTransitionContext)_createForAnimatedTransition:(void *)a3 withPassContext:(BOOL)a4 beginTerminal:
{
  v7 = a3;
  objc_opt_self();
  v8 = [PKPGVTransitionContext alloc];
  v9 = v7;
  if (v8)
  {
    v12.receiver = v8;
    v12.super_class = PKPGVTransitionContext;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    v8 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_passContext, a3);
    }
  }

  v8->_animated = a2;
  v8->_beginTerminal = a4;
  return v8;
}

+ (PKPGVTransitionContext)_createForPanGestureWithPassContext:(void *)a3 velocity:(BOOL)a4 beginTerminal:
{
  v6 = a3;
  objc_opt_self();
  v7 = [PKPGVTransitionContext _createForAnimatedTransition:v6 withPassContext:a4 beginTerminal:?];

  v7->_dragged = 1;
  v7->_velocity = a1;
  return v7;
}

+ (PKPGVTransitionContext)createForAnimatedTransition:(void *)a3 withPassContext:
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(PKPGVTransitionContext *)v5 _createForAnimatedTransition:a2 withPassContext:v4 beginTerminal:0];

  return v6;
}

+ (PKPGVTransitionContext)createForAnimatedTransition:(void *)a3 withPassContext:(BOOL)a4 beginTerminal:
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = [(PKPGVTransitionContext *)v7 _createForAnimatedTransition:a2 withPassContext:v6 beginTerminal:a4];

  return v8;
}

+ (PKPGVTransitionContext)createForPanGestureWithPassContext:(void *)a3 velocity:
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(PKPGVTransitionContext *)a1 _createForPanGestureWithPassContext:v5 velocity:v4 beginTerminal:0];

  return v6;
}

@end