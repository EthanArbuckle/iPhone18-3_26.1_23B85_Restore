@interface PKPGVTransitionContext
+ (PKPGVTransitionContext)_createForAnimatedTransition:(void *)transition withPassContext:(BOOL)context beginTerminal:;
+ (PKPGVTransitionContext)_createForPanGestureWithPassContext:(void *)context velocity:(BOOL)velocity beginTerminal:;
+ (PKPGVTransitionContext)createForAnimatedTransition:(void *)transition withPassContext:;
+ (PKPGVTransitionContext)createForAnimatedTransition:(void *)transition withPassContext:(BOOL)context beginTerminal:;
+ (PKPGVTransitionContext)createForPanGestureWithPassContext:(void *)context velocity:;
@end

@implementation PKPGVTransitionContext

+ (PKPGVTransitionContext)_createForAnimatedTransition:(void *)transition withPassContext:(BOOL)context beginTerminal:
{
  transitionCopy = transition;
  objc_opt_self();
  v8 = [PKPGVTransitionContext alloc];
  v9 = transitionCopy;
  if (v8)
  {
    v12.receiver = v8;
    v12.super_class = PKPGVTransitionContext;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    v8 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_passContext, transition);
    }
  }

  v8->_animated = a2;
  v8->_beginTerminal = context;
  return v8;
}

+ (PKPGVTransitionContext)_createForPanGestureWithPassContext:(void *)context velocity:(BOOL)velocity beginTerminal:
{
  contextCopy = context;
  objc_opt_self();
  v7 = [PKPGVTransitionContext _createForAnimatedTransition:contextCopy withPassContext:velocity beginTerminal:?];

  v7->_dragged = 1;
  v7->_velocity = self;
  return v7;
}

+ (PKPGVTransitionContext)createForAnimatedTransition:(void *)transition withPassContext:
{
  transitionCopy = transition;
  v5 = objc_opt_self();
  v6 = [(PKPGVTransitionContext *)v5 _createForAnimatedTransition:a2 withPassContext:transitionCopy beginTerminal:0];

  return v6;
}

+ (PKPGVTransitionContext)createForAnimatedTransition:(void *)transition withPassContext:(BOOL)context beginTerminal:
{
  transitionCopy = transition;
  v7 = objc_opt_self();
  v8 = [(PKPGVTransitionContext *)v7 _createForAnimatedTransition:a2 withPassContext:transitionCopy beginTerminal:context];

  return v8;
}

+ (PKPGVTransitionContext)createForPanGestureWithPassContext:(void *)context velocity:
{
  contextCopy = context;
  v5 = objc_opt_self();
  v6 = [(PKPGVTransitionContext *)self _createForPanGestureWithPassContext:v5 velocity:contextCopy beginTerminal:0];

  return v6;
}

@end