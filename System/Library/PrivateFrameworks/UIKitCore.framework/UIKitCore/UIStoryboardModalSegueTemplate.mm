@interface UIStoryboardModalSegueTemplate
- (UIStoryboardModalSegueTemplate)initWithCoder:(id)coder;
- (id)newDefaultPerformHandlerForSegue:(id)segue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIStoryboardModalSegueTemplate

- (UIStoryboardModalSegueTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UIStoryboardModalSegueTemplate;
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
  v5.super_class = UIStoryboardModalSegueTemplate;
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

- (id)newDefaultPerformHandlerForSegue:(id)segue
{
  useDefaultModalPresentationStyle = self->_useDefaultModalPresentationStyle;
  modalPresentationStyle = self->_modalPresentationStyle;
  useDefaultModalTransitionStyle = self->_useDefaultModalTransitionStyle;
  modalTransitionStyle = self->_modalTransitionStyle;
  objc_initWeak(&location, segue);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__UIStoryboardModalSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke;
  aBlock[3] = &unk_1E7122848;
  objc_copyWeak(v10, &location);
  v11 = useDefaultModalPresentationStyle;
  v12 = useDefaultModalTransitionStyle;
  v10[1] = modalPresentationStyle;
  v10[2] = modalTransitionStyle;
  v7 = _Block_copy(aBlock);
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return v7;
}

void __67__UIStoryboardModalSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = [WeakRetained destinationViewController];
    [v2 setModalPresentationStyle:*(a1 + 40)];
  }

  if ((*(a1 + 57) & 1) == 0)
  {
    v3 = [WeakRetained destinationViewController];
    [v3 setModalTransitionStyle:*(a1 + 48)];
  }

  v4 = [WeakRetained sourceViewController];
  v5 = [WeakRetained destinationViewController];
  [v4 presentModalViewController:v5 animated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
}

@end