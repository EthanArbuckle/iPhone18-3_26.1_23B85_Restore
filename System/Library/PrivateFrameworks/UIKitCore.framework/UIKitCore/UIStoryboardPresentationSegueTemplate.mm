@interface UIStoryboardPresentationSegueTemplate
- (UIStoryboardPresentationSegueTemplate)initWithCoder:(id)coder;
- (id)newDefaultPerformHandlerForSegue:(id)segue;
- (id)newDefaultPrepareHandlerForSegue:(id)segue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIStoryboardPresentationSegueTemplate

- (UIStoryboardPresentationSegueTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UIStoryboardPresentationSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"UIModalPresentationStyle"])
    {
      v5->_modalPresentationStyle = [coderCopy decodeIntegerForKey:@"UIModalPresentationStyle"];
    }

    else
    {
      v5->_useDefaultModalPresentationStyle = 1;
    }

    if ([coderCopy containsValueForKey:@"UIModalTransitionStyle"])
    {
      v5->_modalTransitionStyle = [coderCopy decodeIntegerForKey:@"UIModalTransitionStyle"];
    }

    else
    {
      v5->_useDefaultModalTransitionStyle = 1;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = UIStoryboardPresentationSegueTemplate;
  [(UIStoryboardSegueTemplate *)&v5 encodeWithCoder:coderCopy];
  if (!self->_useDefaultModalPresentationStyle)
  {
    [coderCopy encodeInteger:self->_modalPresentationStyle forKey:@"UIModalPresentationStyle"];
  }

  if (!self->_useDefaultModalTransitionStyle)
  {
    [coderCopy encodeInteger:self->_modalTransitionStyle forKey:@"UIModalTransitionStyle"];
  }
}

- (id)newDefaultPrepareHandlerForSegue:(id)segue
{
  segueCopy = segue;
  useDefaultModalPresentationStyle = [(UIStoryboardPresentationSegueTemplate *)self useDefaultModalPresentationStyle];
  modalPresentationStyle = [(UIStoryboardPresentationSegueTemplate *)self modalPresentationStyle];
  useDefaultModalTransitionStyle = [(UIStoryboardPresentationSegueTemplate *)self useDefaultModalTransitionStyle];
  modalTransitionStyle = [(UIStoryboardPresentationSegueTemplate *)self modalTransitionStyle];
  objc_initWeak(&location, segueCopy);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__UIStoryboardPresentationSegueTemplate_newDefaultPrepareHandlerForSegue___block_invoke;
  aBlock[3] = &unk_1E7122848;
  objc_copyWeak(v12, &location);
  v13 = useDefaultModalPresentationStyle;
  v14 = useDefaultModalTransitionStyle;
  v12[1] = modalPresentationStyle;
  v12[2] = modalTransitionStyle;
  v9 = _Block_copy(aBlock);
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v9;
}

void __74__UIStoryboardPresentationSegueTemplate_newDefaultPrepareHandlerForSegue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = [WeakRetained destinationViewController];
    [v4 setModalPresentationStyle:v3];

    WeakRetained = v7;
  }

  if ((*(a1 + 57) & 1) == 0)
  {
    v5 = *(a1 + 48);
    v6 = [v7 destinationViewController];
    [v6 setModalTransitionStyle:v5];

    WeakRetained = v7;
  }
}

- (id)newDefaultPerformHandlerForSegue:(id)segue
{
  objc_initWeak(&location, segue);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__UIStoryboardPresentationSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke;
  v5[3] = &unk_1E70F5A28;
  objc_copyWeak(&v6, &location);
  v3 = _Block_copy(v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __74__UIStoryboardPresentationSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained destinationViewController];
  [v1 _setSegueResponsibleForModalPresentation:WeakRetained];
  v2 = [WeakRetained sourceViewController];
  [v2 presentViewController:v1 animated:+[UIView areAnimationsEnabled](UIView completion:{"areAnimationsEnabled"), 0}];
}

@end