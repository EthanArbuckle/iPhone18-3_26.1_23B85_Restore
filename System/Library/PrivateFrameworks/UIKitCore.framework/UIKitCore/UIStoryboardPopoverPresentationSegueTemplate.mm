@interface UIStoryboardPopoverPresentationSegueTemplate
- (UIStoryboardPopoverPresentationSegueTemplate)initWithCoder:(id)a3;
- (id)newDefaultPerformHandlerForSegue:(id)a3;
- (id)newDefaultPrepareHandlerForSegue:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIStoryboardPopoverPresentationSegueTemplate

- (UIStoryboardPopoverPresentationSegueTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIStoryboardPopoverPresentationSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v14 initWithCoder:v4];
  if (v5)
  {
    v5->_permittedArrowDirections = [v4 decodeIntegerForKey:@"UIPermittedArrowDirections"];
    v6 = [v4 decodeObjectForKey:@"UIPassthroughViews"];
    v7 = [v6 copy];
    passthroughViews = v5->_passthroughViews;
    v5->_passthroughViews = v7;

    v9 = [v4 decodeObjectForKey:@"UIAnchorBarButtonItem"];
    anchorBarButtonItem = v5->_anchorBarButtonItem;
    v5->_anchorBarButtonItem = v9;

    v11 = [v4 decodeObjectForKey:@"UIAnchorView"];
    anchorView = v5->_anchorView;
    v5->_anchorView = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIStoryboardPopoverPresentationSegueTemplate;
  v4 = a3;
  [(UIStoryboardSegueTemplate *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_permittedArrowDirections forKey:{@"UIPermittedArrowDirections", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_passthroughViews forKey:@"UIPassthroughViews"];
  [v4 encodeObject:self->_anchorBarButtonItem forKey:@"UIAnchorBarButtonItem"];
  [v4 encodeObject:self->_anchorView forKey:@"UIAnchorView"];
}

- (id)newDefaultPrepareHandlerForSegue:(id)a3
{
  v4 = a3;
  v5 = [(UIStoryboardPopoverPresentationSegueTemplate *)self anchorView];
  v6 = [(UIStoryboardPopoverPresentationSegueTemplate *)self anchorBarButtonItem];
  v7 = [(UIStoryboardPopoverPresentationSegueTemplate *)self permittedArrowDirections];
  objc_initWeak(&location, v4);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__UIStoryboardPopoverPresentationSegueTemplate_newDefaultPrepareHandlerForSegue___block_invoke;
  aBlock[3] = &unk_1E70F9070;
  objc_copyWeak(v15, &location);
  v13 = v5;
  v14 = v6;
  v15[1] = v7;
  v8 = v6;
  v9 = v5;
  v10 = _Block_copy(aBlock);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v10;
}

void __81__UIStoryboardPopoverPresentationSegueTemplate_newDefaultPrepareHandlerForSegue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained destinationViewController];
  [v2 setModalPresentationStyle:7];

  v3 = [WeakRetained destinationViewController];
  v4 = [v3 popoverPresentationController];

  [v4 setSourceView:*(a1 + 32)];
  [v4 setSourceItem:*(a1 + 40)];
  [v4 setPermittedArrowDirections:*(a1 + 56)];
}

- (id)newDefaultPerformHandlerForSegue:(id)a3
{
  v5 = a3;
  v6 = [(UIStoryboardPopoverPresentationSegueTemplate *)self anchorBarButtonItem];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(UIStoryboardPopoverPresentationSegueTemplate *)self anchorView];
    v7 = v8 != 0;
  }

  objc_initWeak(&location, v5);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__UIStoryboardPopoverPresentationSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke;
  aBlock[3] = &unk_1E7122820;
  objc_copyWeak(v12, &location);
  v13 = v7;
  v12[1] = a2;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v9;
}

void __81__UIStoryboardPopoverPresentationSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained sourceViewController];
  v3 = [WeakRetained destinationViewController];
  [v3 _setSegueResponsibleForModalPresentation:WeakRetained];
  [v3 _setSourceViewControllerIfPresentedViaPopoverSegue:v2];
  if (*(a1 + 56) == 1)
  {
    [v2 presentViewController:v3 animated:+[UIView areAnimationsEnabled](UIView completion:{"areAnimationsEnabled"), 0}];
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"UIStoryboardPopoverPresentationSegueTemplate.m" lineNumber:70 description:@"A popover segue must have either an anchorBarButtonItem or an anchorView."];
  }
}

@end