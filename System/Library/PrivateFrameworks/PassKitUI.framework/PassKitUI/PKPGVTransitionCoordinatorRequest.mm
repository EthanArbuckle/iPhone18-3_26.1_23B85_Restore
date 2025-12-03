@interface PKPGVTransitionCoordinatorRequest
- (id)initToConnectLayout:(void *)layout sender:(void *)sender receiver:(void *)receiver forViewController:(void *)controller parentViewController:(void *)viewController withNavigationItem:(void *)item passGroupView:(void *)view completion:;
- (void)setTransitionContext:(uint64_t)context;
@end

@implementation PKPGVTransitionCoordinatorRequest

- (id)initToConnectLayout:(void *)layout sender:(void *)sender receiver:(void *)receiver forViewController:(void *)controller parentViewController:(void *)viewController withNavigationItem:(void *)item passGroupView:(void *)view completion:
{
  v17 = a2;
  layoutCopy = layout;
  senderCopy = sender;
  receiverCopy = receiver;
  controllerCopy = controller;
  obj = viewController;
  viewControllerCopy = viewController;
  itemCopy = item;
  itemCopy2 = item;
  result = view;
  v21 = result;
  if (!self)
  {
    goto LABEL_11;
  }

  if (v17 && layoutCopy && senderCopy && receiverCopy && controllerCopy && viewControllerCopy && itemCopy2)
  {
    v33.receiver = self;
    v33.super_class = PKPGVTransitionCoordinatorRequest;
    v22 = objc_msgSendSuper2(&v33, sel_init);
    self = v22;
    if (v22)
    {
      objc_storeStrong(v22 + 2, receiver);
      objc_storeStrong(self + 1, controller);
      objc_storeStrong(self + 3, a2);
      objc_storeStrong(self + 4, layout);
      objc_storeStrong(self + 5, sender);
      objc_storeStrong(self + 6, obj);
      objc_storeStrong(self + 7, itemCopy);
      v23 = [PKPGVTransitionContext _createForAnimatedTransition:0 withPassContext:0 beginTerminal:?];
      v24 = self[8];
      self[8] = v23;

      v25 = _Block_copy(v21);
      v26 = self[9];
      self[9] = v25;
    }

LABEL_11:

    return self;
  }

  __break(1u);
  return result;
}

- (void)setTransitionContext:(uint64_t)context
{
  v4 = a2;
  if (context)
  {
    v5 = v4;
    if (!v4)
    {
      __break(1u);
      return;
    }

    objc_storeStrong((context + 64), a2);
    v4 = v5;
  }
}

@end