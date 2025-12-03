@interface SXActionManagerPreview
- (id)initWithAction:(void *)action viewController:(void *)controller previewActivity:;
- (id)viewController;
@end

@implementation SXActionManagerPreview

- (id)initWithAction:(void *)action viewController:(void *)controller previewActivity:
{
  v8 = a2;
  actionCopy = action;
  controllerCopy = controller;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = SXActionManagerPreview;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeWeak(self + 3, actionCopy);
      objc_storeStrong(self + 2, controller);
    }
  }

  return self;
}

- (id)viewController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    v1 = vars8;
  }

  return WeakRetained;
}

@end