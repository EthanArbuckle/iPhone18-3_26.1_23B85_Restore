@interface _UIViewControllerTransitionRequest
- (_UIViewControllerTransitionRequest)initWithTransitionContext:(id)context animator:(id)animator interactor:(id)interactor interactiveUpdateHandler:(id)handler keyboardShouldAnimateAlongsideForInteractiveTransitions:(BOOL)transitions keyboardAnimationStyle:(id)style pinningInputViewsResponder:(id)responder extraPinningInputViewsBlock:(id)self0 handoffData:(id)self1;
@end

@implementation _UIViewControllerTransitionRequest

- (_UIViewControllerTransitionRequest)initWithTransitionContext:(id)context animator:(id)animator interactor:(id)interactor interactiveUpdateHandler:(id)handler keyboardShouldAnimateAlongsideForInteractiveTransitions:(BOOL)transitions keyboardAnimationStyle:(id)style pinningInputViewsResponder:(id)responder extraPinningInputViewsBlock:(id)self0 handoffData:(id)self1
{
  contextCopy = context;
  animatorCopy = animator;
  interactorCopy = interactor;
  handlerCopy = handler;
  styleCopy = style;
  responderCopy = responder;
  blockCopy = block;
  dataCopy = data;
  v33.receiver = self;
  v33.super_class = _UIViewControllerTransitionRequest;
  v20 = [(_UIViewControllerTransitionRequest *)&v33 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_transitionContext, context);
    objc_storeStrong(&v21->_animator, animator);
    objc_storeStrong(&v21->_interactor, interactor);
    v22 = _Block_copy(handlerCopy);
    interactiveUpdateHandler = v21->_interactiveUpdateHandler;
    v21->_interactiveUpdateHandler = v22;

    v21->_keyboardShouldAnimateAlongsideForInteractiveTransitions = transitions;
    objc_storeStrong(&v21->_keyboardAnimationStyle, style);
    objc_storeStrong(&v21->_pinningInputViewsResponder, responder);
    v24 = [blockCopy copy];
    extraPinningInputViewsBlock = v21->_extraPinningInputViewsBlock;
    v21->_extraPinningInputViewsBlock = v24;

    objc_storeStrong(&v21->_handoffData, data);
  }

  return v21;
}

@end