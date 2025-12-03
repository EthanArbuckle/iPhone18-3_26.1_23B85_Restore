@interface UIStoryboardReplaceSegueTemplate
- (UIStoryboardReplaceSegueTemplate)initWithCoder:(id)coder;
- (id)newDefaultPerformHandlerForSegue:(id)segue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIStoryboardReplaceSegueTemplate

- (UIStoryboardReplaceSegueTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UIStoryboardReplaceSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_destinationContainmentContext = [coderCopy decodeIntegerForKey:@"UIDestinationContainmentContext"];
    v5->_splitViewControllerIndex = [coderCopy decodeIntegerForKey:@"UISplitViewControllerIndex"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIStoryboardReplaceSegueTemplate;
  coderCopy = coder;
  [(UIStoryboardSegueTemplate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[UIStoryboardReplaceSegueTemplate destinationContainmentContext](self forKey:{"destinationContainmentContext", v5.receiver, v5.super_class), @"UIDestinationContainmentContext"}];
  [coderCopy encodeInteger:-[UIStoryboardReplaceSegueTemplate splitViewControllerIndex](self forKey:{"splitViewControllerIndex"), @"UISplitViewControllerIndex"}];
}

- (id)newDefaultPerformHandlerForSegue:(id)segue
{
  destinationContainmentContext = self->_destinationContainmentContext;
  splitViewControllerIndex = self->_splitViewControllerIndex;
  objc_initWeak(&location, segue);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__UIStoryboardReplaceSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke;
  v9[3] = &unk_1E7122870;
  objc_copyWeak(v10, &location);
  v10[1] = destinationContainmentContext;
  v10[2] = a2;
  v9[4] = self;
  v10[3] = splitViewControllerIndex;
  v7 = _Block_copy(v9);
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return v7;
}

void __69__UIStoryboardReplaceSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v18 = WeakRetained;
  if (*(a1 + 48) != 1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"UIStoryboardReplaceSegueTemplate.m" lineNumber:41 description:{@"Unknown push segue destination (%ld) encountered.", *(a1 + 48)}];

    WeakRetained = v18;
  }

  v3 = [WeakRetained sourceViewController];
  v4 = [v3 splitViewController];

  if (!v4)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = *(a1 + 56);
    v13 = *(a1 + 32);
    v14 = [v18 sourceViewController];
    v15 = [v18 identifier];
    v16 = [v18 destinationViewController];
    [v11 handleFailureInMethod:v12 object:v13 file:@"UIStoryboardReplaceSegueTemplate.m" lineNumber:44 description:{@"Could not find a split view controller ancestor for '%@', while performing a split view controller replace segue (identifier '%@') with destination '%@'", v14, v15, v16}];
  }

  v5 = [v4 viewControllers];
  v6 = [v5 mutableCopy];

  v7 = *(a1 + 64);
  if (v7 >= [v6 count])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"UIStoryboardReplaceSegueTemplate.m" lineNumber:47 description:{@"Unexpected number of view controllers (%ld) for split view controller '%@'. Expected at least %ld view controllers to be present, to perform a replace segue for index %ld.", objc_msgSend(v6, "count"), v4, *(a1 + 64) + 1, *(a1 + 64)}];
  }

  v8 = *(a1 + 64);
  v9 = [v18 destinationViewController];
  [v6 replaceObjectAtIndex:v8 withObject:v9];

  [v4 setViewControllers:v6];
}

@end