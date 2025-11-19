@interface SBLockOverlayContext
- (SBLockOverlayContext)initWithOverlayViewController:(id)a3 priority:(unint64_t)a4;
@end

@implementation SBLockOverlayContext

- (SBLockOverlayContext)initWithOverlayViewController:(id)a3 priority:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBLockOverlayContext;
  v8 = [(SBLockOverlayContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewController, a3);
    v9->_priority = a4;
  }

  return v9;
}

@end