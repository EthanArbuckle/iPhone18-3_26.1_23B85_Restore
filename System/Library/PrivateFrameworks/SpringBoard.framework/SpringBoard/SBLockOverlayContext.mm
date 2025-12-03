@interface SBLockOverlayContext
- (SBLockOverlayContext)initWithOverlayViewController:(id)controller priority:(unint64_t)priority;
@end

@implementation SBLockOverlayContext

- (SBLockOverlayContext)initWithOverlayViewController:(id)controller priority:(unint64_t)priority
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SBLockOverlayContext;
  v8 = [(SBLockOverlayContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewController, controller);
    v9->_priority = priority;
  }

  return v9;
}

@end