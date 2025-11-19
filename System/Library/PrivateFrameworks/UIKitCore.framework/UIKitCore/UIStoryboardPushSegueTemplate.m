@interface UIStoryboardPushSegueTemplate
- (UIStoryboardPushSegueTemplate)initWithCoder:(id)a3;
- (id)newDefaultPerformHandlerForSegue:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIStoryboardPushSegueTemplate

- (UIStoryboardPushSegueTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIStoryboardPushSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_destinationContainmentContext = [v4 decodeIntegerForKey:@"UIDestinationContainmentContext"];
    v5->_splitViewControllerIndex = [v4 decodeIntegerForKey:@"UISplitViewControllerIndex"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIStoryboardPushSegueTemplate;
  v4 = a3;
  [(UIStoryboardSegueTemplate *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[UIStoryboardPushSegueTemplate destinationContainmentContext](self forKey:{"destinationContainmentContext", v5.receiver, v5.super_class), @"UIDestinationContainmentContext"}];
  [v4 encodeInteger:-[UIStoryboardPushSegueTemplate splitViewControllerIndex](self forKey:{"splitViewControllerIndex"), @"UISplitViewControllerIndex"}];
}

- (id)newDefaultPerformHandlerForSegue:(id)a3
{
  destinationContainmentContext = self->_destinationContainmentContext;
  splitViewControllerIndex = self->_splitViewControllerIndex;
  objc_initWeak(&location, a3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__UIStoryboardPushSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke;
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

void __66__UIStoryboardPushSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v4 = *(a1 + 48);
  if (v4)
  {
    if (v4 != 1)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"UIStoryboardPushSegueTemplate.m" lineNumber:53 description:{@"Unknown push segue destination (%ld) encountered.", *(a1 + 48)}];

LABEL_16:
      v23 = [v3 identifier];
      v24 = @"Push segues can only be used when the source controller is managed by an instance of UINavigationController.";
      if (v23)
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = [v3 identifier];
        v24 = [v25 stringWithFormat:@"Could not find a navigation controller for segue '%@'. %@", v26, @"Push segues can only be used when the source controller is managed by an instance of UINavigationController."];
      }

      v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v24 userInfo:0];
      objc_exception_throw(v27);
    }

    v5 = [WeakRetained sourceViewController];
    v6 = [v5 splitViewController];

    if (!v6)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = *(a1 + 56);
      v12 = *(a1 + 32);
      v13 = [v3 sourceViewController];
      v14 = [v3 identifier];
      v15 = [v3 destinationViewController];
      [v10 handleFailureInMethod:v11 object:v12 file:@"UIStoryboardPushSegueTemplate.m" lineNumber:42 description:{@"Could not find a split view controller ancestor for '%@', while performing a split view controller replace segue (identifier '%@') with destination '%@'", v13, v14, v15}];
    }

    v7 = [v6 viewControllers];
    v8 = *(a1 + 64);
    if (v8 >= [v7 count])
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"UIStoryboardPushSegueTemplate.m" lineNumber:45 description:{@"Unexpected number of view controllers (%ld) for split view controller '%@'. Expected at least %ld view controllers to be present, to perform a push segue for index %ld.", objc_msgSend(v7, "count"), v6, *(a1 + 64) + 1, *(a1 + 64)}];
    }

    v28 = [v7 objectAtIndex:*(a1 + 64)];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = *(a1 + 56);
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = [v3 identifier];
      [v17 handleFailureInMethod:v18 object:v19 file:@"UIStoryboardPushSegueTemplate.m" lineNumber:48 description:{@"Expected a navigation controller, but got an instance of '%@' instead, while performing a split view controller push segue (identifier '%@') for index #%ld", v20, v21, *(a1 + 64)}];
    }
  }

  else
  {
    v6 = [WeakRetained sourceViewController];
    v28 = [v6 navigationController];
  }

  if (!v28)
  {
    goto LABEL_16;
  }

  v9 = [v3 destinationViewController];
  [v28 pushViewController:v9 animated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
}

@end