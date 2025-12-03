@interface UIDebuggingInformationOverlayInvokeGestureHandler
+ (id)mainHandler;
- (void)_handleActivationGesture:(id)gesture;
@end

@implementation UIDebuggingInformationOverlayInvokeGestureHandler

+ (id)mainHandler
{
  if (qword_1ED49AA30 != -1)
  {
    dispatch_once(&qword_1ED49AA30, &__block_literal_global_635);
  }

  v3 = qword_1ED49AA28;

  return v3;
}

void __64__UIDebuggingInformationOverlayInvokeGestureHandler_mainHandler__block_invoke()
{
  v0 = objc_alloc_init(UIDebuggingInformationOverlayInvokeGestureHandler);
  v1 = qword_1ED49AA28;
  qword_1ED49AA28 = v0;
}

- (void)_handleActivationGesture:(id)gesture
{
  if ([gesture state] == 3)
  {
    if (!self->_didCreateTools)
    {
      v4 = objc_opt_class();
      v5 = UIDebuggingViewControllerAtTopLevel(@"Prototyping", v4);
      v6 = objc_opt_class();
      v7 = UIDebuggingViewControllerAtTopLevel(@"View Hierarchy", v6);
      v8 = objc_opt_class();
      v9 = UIDebuggingViewControllerAtTopLevel(@"VC Hierarchy", v8);
      v10 = objc_opt_class();
      v11 = UIDebuggingViewControllerAtTopLevel(@"Ivar Explorer", v10);
      v12 = objc_opt_class();
      v13 = UIDebuggingViewControllerAtTopLevel(@"Measure", v12);
      v14 = objc_opt_class();
      v15 = UIDebuggingViewControllerAtTopLevel(@"Spec Compare", v14);
      self->_didCreateTools = 1;
    }

    v16 = +[UIDebuggingInformationOverlay overlay];
    [v16 toggleVisibility];
  }
}

@end