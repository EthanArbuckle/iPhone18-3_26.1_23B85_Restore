@interface UIStoryboardPopoverPresentationSegueTemplate
- (UIStoryboardPopoverPresentationSegueTemplate)initWithCoder:(id)coder;
- (id)newDefaultPerformHandlerForSegue:(id)segue;
- (id)newDefaultPrepareHandlerForSegue:(id)segue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIStoryboardPopoverPresentationSegueTemplate

- (UIStoryboardPopoverPresentationSegueTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = UIStoryboardPopoverPresentationSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_permittedArrowDirections = [coderCopy decodeIntegerForKey:@"UIPermittedArrowDirections"];
    v6 = [coderCopy decodeObjectForKey:@"UIPassthroughViews"];
    v7 = [v6 copy];
    passthroughViews = v5->_passthroughViews;
    v5->_passthroughViews = v7;

    v9 = [coderCopy decodeObjectForKey:@"UIAnchorBarButtonItem"];
    anchorBarButtonItem = v5->_anchorBarButtonItem;
    v5->_anchorBarButtonItem = v9;

    v11 = [coderCopy decodeObjectForKey:@"UIAnchorView"];
    anchorView = v5->_anchorView;
    v5->_anchorView = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIStoryboardPopoverPresentationSegueTemplate;
  coderCopy = coder;
  [(UIStoryboardSegueTemplate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_permittedArrowDirections forKey:{@"UIPermittedArrowDirections", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_passthroughViews forKey:@"UIPassthroughViews"];
  [coderCopy encodeObject:self->_anchorBarButtonItem forKey:@"UIAnchorBarButtonItem"];
  [coderCopy encodeObject:self->_anchorView forKey:@"UIAnchorView"];
}

- (id)newDefaultPrepareHandlerForSegue:(id)segue
{
  segueCopy = segue;
  anchorView = [(UIStoryboardPopoverPresentationSegueTemplate *)self anchorView];
  anchorBarButtonItem = [(UIStoryboardPopoverPresentationSegueTemplate *)self anchorBarButtonItem];
  permittedArrowDirections = [(UIStoryboardPopoverPresentationSegueTemplate *)self permittedArrowDirections];
  objc_initWeak(&location, segueCopy);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__UIStoryboardPopoverPresentationSegueTemplate_newDefaultPrepareHandlerForSegue___block_invoke;
  aBlock[3] = &unk_1E70F9070;
  objc_copyWeak(v15, &location);
  v13 = anchorView;
  v14 = anchorBarButtonItem;
  v15[1] = permittedArrowDirections;
  v8 = anchorBarButtonItem;
  v9 = anchorView;
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

- (id)newDefaultPerformHandlerForSegue:(id)segue
{
  segueCopy = segue;
  anchorBarButtonItem = [(UIStoryboardPopoverPresentationSegueTemplate *)self anchorBarButtonItem];
  if (anchorBarButtonItem)
  {
    v7 = 1;
  }

  else
  {
    anchorView = [(UIStoryboardPopoverPresentationSegueTemplate *)self anchorView];
    v7 = anchorView != 0;
  }

  objc_initWeak(&location, segueCopy);
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