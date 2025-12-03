@interface _UIViewControllerAnimatedTransitionHandoffData
- (_UIViewControllerAnimatedTransitionHandoffData)initWithFromViewControllerHandoffData:(id)data toViewControllerHandoffData:(id)handoffData progressValue:(id)value captureBackdropView:(id)view isPush:(BOOL)push;
- (id)handoffDataForViewController:(id)controller;
@end

@implementation _UIViewControllerAnimatedTransitionHandoffData

- (_UIViewControllerAnimatedTransitionHandoffData)initWithFromViewControllerHandoffData:(id)data toViewControllerHandoffData:(id)handoffData progressValue:(id)value captureBackdropView:(id)view isPush:(BOOL)push
{
  dataCopy = data;
  handoffDataCopy = handoffData;
  valueCopy = value;
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = _UIViewControllerAnimatedTransitionHandoffData;
  v17 = [(_UIViewControllerAnimatedTransitionHandoffData *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fromViewControllerHandoffData, data);
    objc_storeStrong(&v18->_toViewControllerHandoffData, handoffData);
    objc_storeStrong(&v18->_progressValue, value);
    objc_storeStrong(&v18->_captureBackdropView, view);
    v18->_isPush = push;
  }

  return v18;
}

- (id)handoffDataForViewController:(id)controller
{
  controllerCopy = controller;
  p_fromViewControllerHandoffData = &self->_fromViewControllerHandoffData;
  viewController = [(_UIViewControllerAnimatedTransitionViewControllerHandoffData *)self->_fromViewControllerHandoffData viewController];

  if (viewController != controllerCopy)
  {
    toViewControllerHandoffData = self->_toViewControllerHandoffData;
    p_toViewControllerHandoffData = &self->_toViewControllerHandoffData;
    viewController2 = [(_UIViewControllerAnimatedTransitionViewControllerHandoffData *)toViewControllerHandoffData viewController];

    if (viewController2 != controllerCopy)
    {
      v10 = 0;
      goto LABEL_6;
    }

    p_fromViewControllerHandoffData = p_toViewControllerHandoffData;
  }

  v10 = *p_fromViewControllerHandoffData;
LABEL_6:

  return v10;
}

@end