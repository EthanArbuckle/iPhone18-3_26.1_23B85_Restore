@interface UIStoryboardUnwindSegueTemplate
- (UIStoryboardUnwindSegueTemplate)initWithCoder:(id)coder;
- (id)_legacyUnwindExecutorForTarget:(id)target;
- (id)_perform:(id)_perform;
- (id)_performWithDestinationViewController:(id)controller sender:(id)sender;
- (id)instantiateOrFindDestinationViewControllerWithSender:(id)sender;
- (id)newDefaultPerformHandlerForSegue:(id)segue;
- (id)segueWithDestinationViewController:(id)controller;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIStoryboardUnwindSegueTemplate

- (UIStoryboardUnwindSegueTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UIStoryboardUnwindSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIAction"];
    v7 = [v6 copy];
    action = v5->_action;
    v5->_action = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UIStoryboardUnwindSegueTemplate;
  coderCopy = coder;
  [(UIStoryboardSegueTemplate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(UIStoryboardUnwindSegueTemplate *)self action:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"UIAction"];
}

- (id)newDefaultPerformHandlerForSegue:(id)segue
{
  segueCopy = segue;
  sourceViewController = [segueCopy sourceViewController];
  destinationViewController = [segueCopy destinationViewController];
  if (sourceViewController == destinationViewController)
  {
    v8 = &__block_literal_global_117_2;
  }

  else
  {
    v6 = [[_UIStoryboardUnwindChain alloc] initFromSourceViewController:sourceViewController toDestinationViewController:destinationViewController];
    objc_initWeak(&location, segueCopy);
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

- (id)_legacyUnwindExecutorForTarget:(id)target
{
  targetCopy = target;
  viewController = [(UIStoryboardSegueTemplate *)self viewController];
  v6 = _UIFirstPopoverSeguePresentedControllerInUnwindingResponderChain(viewController, targetCopy);

  childModalViewController = [targetCopy childModalViewController];
  if (childModalViewController)
  {

LABEL_3:
    parentViewController = targetCopy;
    goto LABEL_6;
  }

  _sourceViewControllerIfPresentedViaPopoverSegue = [v6 _sourceViewControllerIfPresentedViaPopoverSegue];

  if (_sourceViewControllerIfPresentedViaPopoverSegue == targetCopy)
  {
    goto LABEL_3;
  }

  parentViewController = [targetCopy parentViewController];
LABEL_6:
  v10 = parentViewController;

  return v10;
}

- (id)instantiateOrFindDestinationViewControllerWithSender:(id)sender
{
  senderCopy = sender;
  v5 = [UIStoryboardUnwindSegueSource alloc];
  viewController = [(UIStoryboardSegueTemplate *)self viewController];
  action = [(UIStoryboardUnwindSegueTemplate *)self action];
  v8 = [(UIStoryboardUnwindSegueSource *)v5 _initWithSourceViewController:viewController action:NSSelectorFromString(action) sender:senderCopy];

  _findDestination = [v8 _findDestination];

  return _findDestination;
}

- (id)segueWithDestinationViewController:(id)controller
{
  controllerCopy = controller;
  action = [(UIStoryboardUnwindSegueTemplate *)self action];

  if (!action)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIStoryboardUnwindSegueTemplate.m" lineNumber:435 description:@"Cannot perform an unwind without an unwind action"];
  }

  v7 = [(UIStoryboardUnwindSegueTemplate *)self _legacyUnwindExecutorForTarget:controllerCopy];
  if (!v7 && (dyld_program_sdk_at_least() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIStoryboardUnwindSegueTemplate.m" lineNumber:442 description:{@"Could not find a view controller to execute unwinding for %@", controllerCopy}];
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
    viewController = [(UIStoryboardSegueTemplate *)self viewController];
    identifier = [(UIStoryboardSegueTemplate *)self identifier];
    v15 = [v9 segueForUnwindingToViewController:controllerCopy fromViewController:viewController identifier:identifier];

    goto LABEL_15;
  }

  v20.receiver = self;
  v20.super_class = UIStoryboardUnwindSegueTemplate;
  v15 = [(UIStoryboardSegueTemplate *)&v20 segueWithDestinationViewController:controllerCopy];
  if (!v15)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    viewController2 = [(UIStoryboardSegueTemplate *)self viewController];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIStoryboardUnwindSegueTemplate.m" lineNumber:453 description:{@"Failed to create a segue for unwinding from %@ to %@", viewController2, controllerCopy}];

LABEL_14:
    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (id)_perform:(id)_perform
{
  _performCopy = _perform;
  v5 = [(UIStoryboardUnwindSegueTemplate *)self instantiateOrFindDestinationViewControllerWithSender:_performCopy];
  if (v5)
  {
    v6 = [(UIStoryboardUnwindSegueTemplate *)self _performWithDestinationViewController:v5 sender:_performCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_performWithDestinationViewController:(id)controller sender:(id)sender
{
  controllerCopy = controller;
  senderCopy = sender;
  action = [(UIStoryboardUnwindSegueTemplate *)self action];
  v9 = NSSelectorFromString(action);

  v10 = [(UIStoryboardUnwindSegueTemplate *)self segueWithDestinationViewController:controllerCopy];
  if (v10)
  {
    viewController = [(UIStoryboardSegueTemplate *)self viewController];
    [viewController prepareForSegue:v10 sender:senderCopy];

    if (dyld_program_sdk_at_least())
    {
      [controllerCopy v9];
    }

    else
    {
      [controllerCopy performSelector:v9 withObject:v10];
    }

    v12 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:[(UIStoryboardSegueTemplate *)self animates]];
    [v10 perform];
    [UIView setAnimationsEnabled:v12];
  }

  return v10;
}

@end