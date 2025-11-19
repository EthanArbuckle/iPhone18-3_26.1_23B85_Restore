@interface _UIViewControllerAnimatedTransitionViewControllerHandoffData
- (CGRect)frame;
- (CGRect)targetFrame;
- (UIViewController)viewController;
- (_UIViewControllerAnimatedTransitionViewControllerHandoffData)initWithViewController:(id)a3 containerView:(id)a4 snapshot:(id)a5 frame:(CGRect)a6 targetFrame:(CGRect)a7 dimmingAmount:(double)a8 targetDimmingAmount:(double)a9;
@end

@implementation _UIViewControllerAnimatedTransitionViewControllerHandoffData

- (_UIViewControllerAnimatedTransitionViewControllerHandoffData)initWithViewController:(id)a3 containerView:(id)a4 snapshot:(id)a5 frame:(CGRect)a6 targetFrame:(CGRect)a7 dimmingAmount:(double)a8 targetDimmingAmount:(double)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v13 = a6.size.height;
  v14 = a6.size.width;
  v15 = a6.origin.y;
  v16 = a6.origin.x;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v26.receiver = self;
  v26.super_class = _UIViewControllerAnimatedTransitionViewControllerHandoffData;
  v23 = [(_UIViewControllerAnimatedTransitionViewControllerHandoffData *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_viewController, v20);
    objc_storeStrong(&v24->_containerView, a4);
    objc_storeStrong(&v24->_snapshot, a5);
    v24->_frame.origin.x = v16;
    v24->_frame.origin.y = v15;
    v24->_frame.size.width = v14;
    v24->_frame.size.height = v13;
    v24->_targetFrame.origin.x = x;
    v24->_targetFrame.origin.y = y;
    v24->_targetFrame.size.width = width;
    v24->_targetFrame.size.height = height;
    v24->_dimmingAmount = a8;
    v24->_targetDimmingAmount = a9;
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