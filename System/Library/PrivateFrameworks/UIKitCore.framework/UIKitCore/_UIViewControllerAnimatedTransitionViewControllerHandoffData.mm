@interface _UIViewControllerAnimatedTransitionViewControllerHandoffData
- (CGRect)frame;
- (CGRect)targetFrame;
- (UIViewController)viewController;
- (_UIViewControllerAnimatedTransitionViewControllerHandoffData)initWithViewController:(id)controller containerView:(id)view snapshot:(id)snapshot frame:(CGRect)frame targetFrame:(CGRect)targetFrame dimmingAmount:(double)amount targetDimmingAmount:(double)dimmingAmount;
@end

@implementation _UIViewControllerAnimatedTransitionViewControllerHandoffData

- (_UIViewControllerAnimatedTransitionViewControllerHandoffData)initWithViewController:(id)controller containerView:(id)view snapshot:(id)snapshot frame:(CGRect)frame targetFrame:(CGRect)targetFrame dimmingAmount:(double)amount targetDimmingAmount:(double)dimmingAmount
{
  height = targetFrame.size.height;
  width = targetFrame.size.width;
  y = targetFrame.origin.y;
  x = targetFrame.origin.x;
  v13 = frame.size.height;
  v14 = frame.size.width;
  v15 = frame.origin.y;
  v16 = frame.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  snapshotCopy = snapshot;
  v26.receiver = self;
  v26.super_class = _UIViewControllerAnimatedTransitionViewControllerHandoffData;
  v23 = [(_UIViewControllerAnimatedTransitionViewControllerHandoffData *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_viewController, controllerCopy);
    objc_storeStrong(&v24->_containerView, view);
    objc_storeStrong(&v24->_snapshot, snapshot);
    v24->_frame.origin.x = v16;
    v24->_frame.origin.y = v15;
    v24->_frame.size.width = v14;
    v24->_frame.size.height = v13;
    v24->_targetFrame.origin.x = x;
    v24->_targetFrame.origin.y = y;
    v24->_targetFrame.size.width = width;
    v24->_targetFrame.size.height = height;
    v24->_dimmingAmount = amount;
    v24->_targetDimmingAmount = dimmingAmount;
  }

  return v24;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetFrame
{
  x = self->_targetFrame.origin.x;
  y = self->_targetFrame.origin.y;
  width = self->_targetFrame.size.width;
  height = self->_targetFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end