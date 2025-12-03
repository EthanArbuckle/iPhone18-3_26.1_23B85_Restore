@interface SXComponentInteractionPreview
- (id)initWithInteraction:(void *)interaction viewController:;
- (id)viewController;
@end

@implementation SXComponentInteractionPreview

- (id)initWithInteraction:(void *)interaction viewController:
{
  v6 = a2;
  interactionCopy = interaction;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = SXComponentInteractionPreview;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeWeak(self + 2, interactionCopy);
    }
  }

  return self;
}

- (id)viewController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 2);
    v1 = vars8;
  }

  return WeakRetained;
}

@end