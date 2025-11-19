@interface _UIViewControllerAnimatedTransitionHandoffData
- (_UIViewControllerAnimatedTransitionHandoffData)initWithFromViewControllerHandoffData:(id)a3 toViewControllerHandoffData:(id)a4 progressValue:(id)a5 captureBackdropView:(id)a6 isPush:(BOOL)a7;
- (id)handoffDataForViewController:(id)a3;
@end

@implementation _UIViewControllerAnimatedTransitionHandoffData

- (_UIViewControllerAnimatedTransitionHandoffData)initWithFromViewControllerHandoffData:(id)a3 toViewControllerHandoffData:(id)a4 progressValue:(id)a5 captureBackdropView:(id)a6 isPush:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = _UIViewControllerAnimatedTransitionHandoffData;
  v17 = [(_UIViewControllerAnimatedTransitionHandoffData *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fromViewControllerHandoffData, a3);
    objc_storeStrong(&v18->_toViewControllerHandoffData, a4);
    objc_storeStrong(&v18->_progressValue, a5);
    objc_storeStrong(&v18->_captureBackdropView, a6);
    v18->_isPush = a7;
  }

  return v18;
}

- (id)handoffDataForViewController:(id)a3
{
  v4 = a3;
  p_fromViewControllerHandoffData = &self->_fromViewControllerHandoffData;
  v6 = [(_UIViewControllerAnimatedTransitionViewControllerHandoffData *)self->_fromViewControllerHandoffData viewController];

  if (v6 != v4)
  {
    toViewControllerHandoffData = self->_toViewControllerHandoffData;
    p_toViewControllerHandoffData = &self->_toViewControllerHandoffData;
    v9 = [(_UIViewControllerAnimatedTransitionViewControllerHandoffData *)toViewControllerHandoffData viewController];

    if (v9 != v4)
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