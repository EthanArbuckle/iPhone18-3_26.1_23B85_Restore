@interface PKViewControllerPresentationTarget
+ (id)targetWithPresentingViewController:(id)controller;
+ (id)targetWithPresentingViewController:(id)controller sourceItem:(id)item;
+ (id)targetWithPresentingViewController:(id)controller sourceView:(id)view;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)_initWithPresentingViewController:(id)controller sourceItem:(id)item;
@end

@implementation PKViewControllerPresentationTarget

- (id)_initWithPresentingViewController:(id)controller sourceItem:(id)item
{
  controllerCopy = controller;
  result = item;
  if (controllerCopy)
  {
    v9 = result;
    v12.receiver = self;
    v12.super_class = PKViewControllerPresentationTarget;
    v10 = [(PKViewControllerPresentationTarget *)&v12 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_presentingViewController, controller);
      objc_storeWeak(p_isa + 2, v9);
    }

    return p_isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (id)targetWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [[PKViewControllerPresentationTarget alloc] _initWithPresentingViewController:controllerCopy sourceItem:0];

  return v4;
}

+ (id)targetWithPresentingViewController:(id)controller sourceItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  v7 = [[PKViewControllerPresentationTarget alloc] _initWithPresentingViewController:controllerCopy sourceItem:itemCopy];

  return v7;
}

+ (id)targetWithPresentingViewController:(id)controller sourceView:(id)view
{
  viewCopy = view;
  controllerCopy = controller;
  v7 = [[PKViewControllerPresentationTarget alloc] _initWithPresentingViewController:controllerCopy sourceItem:viewCopy];

  return v7;
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end