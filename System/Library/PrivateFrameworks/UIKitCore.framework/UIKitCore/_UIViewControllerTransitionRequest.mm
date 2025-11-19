@interface _UIViewControllerTransitionRequest
- (_UIViewControllerTransitionRequest)initWithTransitionContext:(id)a3 animator:(id)a4 interactor:(id)a5 interactiveUpdateHandler:(id)a6 keyboardShouldAnimateAlongsideForInteractiveTransitions:(BOOL)a7 keyboardAnimationStyle:(id)a8 pinningInputViewsResponder:(id)a9 extraPinningInputViewsBlock:(id)a10 handoffData:(id)a11;
@end

@implementation _UIViewControllerTransitionRequest

- (_UIViewControllerTransitionRequest)initWithTransitionContext:(id)a3 animator:(id)a4 interactor:(id)a5 interactiveUpdateHandler:(id)a6 keyboardShouldAnimateAlongsideForInteractiveTransitions:(BOOL)a7 keyboardAnimationStyle:(id)a8 pinningInputViewsResponder:(id)a9 extraPinningInputViewsBlock:(id)a10 handoffData:(id)a11
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v17 = a6;
  v29 = a8;
  v28 = a9;
  v18 = a10;
  v19 = a11;
  v33.receiver = self;
  v33.super_class = _UIViewControllerTransitionRequest;
  v20 = [(_UIViewControllerTransitionRequest *)&v33 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_transitionContext, a3);
    objc_storeStrong(&v21->_animator, a4);
    objc_storeStrong(&v21->_interactor, a5);
    v22 = _Block_copy(v17);
    interactiveUpdateHandler = v21->_interactiveUpdateHandler;
    v21->_interactiveUpdateHandler = v22;

    v21->_keyboardShouldAnimateAlongsideForInteractiveTransitions = a7;
    objc_storeStrong(&v21->_keyboardAnimationStyle, a8);
    objc_storeStrong(&v21->_pinningInputViewsResponder, a9);
    v24 = [v18 copy];
    extraPinningInputViewsBlock = v21->_extraPinningInputViewsBlock;
    v21->_extraPinningInputViewsBlock = v24;

    objc_storeStrong(&v21->_handoffData, a11);
  }

  return v21;
}

@end