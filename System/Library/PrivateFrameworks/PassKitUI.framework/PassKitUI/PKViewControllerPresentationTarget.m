@interface PKViewControllerPresentationTarget
+ (id)targetWithPresentingViewController:(id)a3;
+ (id)targetWithPresentingViewController:(id)a3 sourceItem:(id)a4;
+ (id)targetWithPresentingViewController:(id)a3 sourceView:(id)a4;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)_initWithPresentingViewController:(id)a3 sourceItem:(id)a4;
@end

@implementation PKViewControllerPresentationTarget

- (id)_initWithPresentingViewController:(id)a3 sourceItem:(id)a4
{
  v7 = a3;
  result = a4;
  if (v7)
  {
    v9 = result;
    v12.receiver = self;
    v12.super_class = PKViewControllerPresentationTarget;
    v10 = [(PKViewControllerPresentationTarget *)&v12 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_presentingViewController, a3);
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

+ (id)targetWithPresentingViewController:(id)a3
{
  v3 = a3;
  v4 = [[PKViewControllerPresentationTarget alloc] _initWithPresentingViewController:v3 sourceItem:0];

  return v4;
}

+ (id)targetWithPresentingViewController:(id)a3 sourceItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PKViewControllerPresentationTarget alloc] _initWithPresentingViewController:v6 sourceItem:v5];

  return v7;
}

+ (id)targetWithPresentingViewController:(id)a3 sourceView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PKViewControllerPresentationTarget alloc] _initWithPresentingViewController:v6 sourceItem:v5];

  return v7;
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end