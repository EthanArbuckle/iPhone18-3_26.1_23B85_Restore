@interface UIStoryboardUnwindSegueTemplate
- (UIStoryboardUnwindSegueTemplate)initWithCoder:(id)a3;
- (id)_legacyUnwindExecutorForTarget:(id)a3;
- (id)_perform:(id)a3;
- (id)_performWithDestinationViewController:(id)a3 sender:(id)a4;
- (id)instantiateOrFindDestinationViewControllerWithSender:(id)a3;
- (id)newDefaultPerformHandlerForSegue:(id)a3;
- (id)segueWithDestinationViewController:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIStoryboardUnwindSegueTemplate

- (UIStoryboardUnwindSegueTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIStoryboardUnwindSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIAction"];
    v7 = [v6 copy];
    action = v5->_action;
    v5->_action = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIStoryboardUnwindSegueTemplate;
  v4 = a3;
  [(UIStoryboardSegueTemplate *)&v6 encodeWithCoder:v4];
  v5 = [(UIStoryboardUnwindSegueTemplate *)self action:v6.receiver];
  [v4 encodeObject:v5 forKey:@"UIAction"];
}

- (id)newDefaultPerformHandlerForSegue:(id)a3
{
  v3 = a3;
  v4 = [v3 sourceViewController];
  v5 = [v3 destinationViewController];
  if (v4 == v5)
  {
    v8 = &__block_literal_global_117_2;
  }

  else
  {
    v6 = [[_UIStoryboardUnwindChain alloc] initFromSourceViewController:v4 toDestinationViewController:v5];
    objc_initWeak(&location, v3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__UIStoryboardUnwindSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke_2;
    aBlock[3] = &unk_1E70F2F80;
    objc_copyWeak(&v12, &location);
    v11 = v6;
    v7 = v6;
    v8 = _Block_copy(aBlock);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __68__UIStoryboardUnwindSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) modalAncestorContainingSourceViewController];
  [v3 dismissViewControllerAnimated:+[UIView areAnimationsEnabled](UIView completion:{"areAnimationsEnabled"), 0}];
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__UIStoryboardUnwindSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke_3;
  v7[3] = &unk_1E7122928;
  v8 = v3;
  v9 = WeakRetained;
  v5 = WeakRetained;
  v6 = v3;
  [v4 enumerateViewControllersFromModalAncestorUpToButNotIncludingDestination:v7];
}

void __68__UIStoryboardUnwindSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 childModalViewController];
  if (v6 != v5)
  {
    v7 = v8;
    if (v6 && *(a1 + 32) != v8)
    {
      [v8 dismissViewControllerAnimated:+[UIView areAnimationsEnabled](UIView completion:{"areAnimationsEnabled"), 0}];
      v7 = v8;
    }

    [v7 unwindForSegue:*(a1 + 40) towardsViewController:v5];
  }
}

- (id)_legacyUnwindExecutorForTarget:(id)a3
{
  v4 = a3;
  v5 = [(UIStoryboardSegueTemplate *)self viewController];
  v6 = _UIFirstPopoverSeguePresentedControllerInUnwindingResponderChain(v5, v4);

  v7 = [v4 childModalViewController];
  if (v7)
  {

LABEL_3:
    v8 = v4;
    goto LABEL_6;
  }

  v9 = [v6 _sourceViewControllerIfPresentedViaPopoverSegue];

  if (v9 == v4)
  {
    goto LABEL_3;
  }

  v8 = [v4 parentViewController];
LABEL_6:
  v10 = v8;

  return v10;
}

- (id)instantiateOrFindDestinationViewControllerWithSender:(id)a3
{
  v4 = a3;
  v5 = [UIStoryboardUnwindSegueSource alloc];
  v6 = [(UIStoryboardSegueTemplate *)self viewController];
  v7 = [(UIStoryboardUnwindSegueTemplate *)self action];
  v8 = [(UIStoryboardUnwindSegueSource *)v5 _initWithSourceViewController:v6 action:NSSelectorFromString(v7) sender:v4];

  v9 = [v8 _findDestination];

  return v9;
}

- (id)segueWithDestinationViewController:(id)a3
{
  v5 = a3;
  v6 = [(UIStoryboardUnwindSegueTemplate *)self action];

  if (!v6)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"UIStoryboardUnwindSegueTemplate.m" lineNumber:435 description:@"Cannot perform an unwind without an unwind action"];
  }

  v7 = [(UIStoryboardUnwindSegueTemplate *)self _legacyUnwindExecutorForTarget:v5];
  if (!v7 && (dyld_program_sdk_at_least() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIStoryboardUnwindSegueTemplate.m" lineNumber:442 description:{@"Could not find a view controller to execute unwinding for %@", v5}];
    goto LABEL_14;
  }

  v8 = qword_1ED4A0F10;
  v9 = v7;
  if (v8 != -1)
  {
    dispatch_once(&qword_1ED4A0F10, &__block_literal_global_150);
  }

  v10 = objc_opt_class();

  v11 = [v10 isSubclassOfClass:qword_1ED4A0F08];
  v12 = &qword_1ED4A0F00;
  if (v11)
  {
    v12 = &qword_1ED4A0F08;
  }

  if ([v10 doesOverrideViewControllerMethod:_MergedGlobals_1296 inBaseClass:*v12])
  {
    v13 = [(UIStoryboardSegueTemplate *)self viewController];
    v14 = [(UIStoryboardSegueTemplate *)self identifier];
    v15 = [v9 segueForUnwindingToViewController:v5 fromViewController:v13 identifier:v14];

    goto LABEL_15;
  }

  v20.receiver = self;
  v20.super_class = UIStoryboardUnwindSegueTemplate;
  v15 = [(UIStoryboardSegueTemplate *)&v20 segueWithDestinationViewController:v5];
  if (!v15)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [(UIStoryboardSegueTemplate *)self viewController];
    [v16 handleFailureInMethod:a2 object:self file:@"UIStoryboardUnwindSegueTemplate.m" lineNumber:453 description:{@"Failed to create a segue for unwinding from %@ to %@", v17, v5}];

LABEL_14:
    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (id)_perform:(id)a3
{
  v4 = a3;
  v5 = [(UIStoryboardUnwindSegueTemplate *)self instantiateOrFindDestinationViewControllerWithSender:v4];
  if (v5)
  {
    v6 = [(UIStoryboardUnwindSegueTemplate *)self _performWithDestinationViewController:v5 sender:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_performWithDestinationViewController:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIStoryboardUnwindSegueTemplate *)self action];
  v9 = NSSelectorFromString(v8);

  v10 = [(UIStoryboardUnwindSegueTemplate *)self segueWithDestinationViewController:v6];
  if (v10)
  {
    v11 = [(UIStoryboardSegueTemplate *)self viewController];
    [v11 prepareForSegue:v10 sender:v7];

    if (dyld_program_sdk_at_least())
    {
      [v6 v9];
    }

    else
    {
      [v6 performSelector:v9 withObject:v10];
    }

    v12 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:[(UIStoryboardSegueTemplate *)self animates]];
    [v10 perform];
    [UIView setAnimationsEnabled:v12];
  }

  return v10;
}

@end