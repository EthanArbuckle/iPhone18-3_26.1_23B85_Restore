@interface UIStoryboardPresentationSegueTemplate
- (UIStoryboardPresentationSegueTemplate)initWithCoder:(id)a3;
- (id)newDefaultPerformHandlerForSegue:(id)a3;
- (id)newDefaultPrepareHandlerForSegue:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIStoryboardPresentationSegueTemplate

- (UIStoryboardPresentationSegueTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIStoryboardPresentationSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v7 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"UIModalPresentationStyle"])
    {
      v5->_modalPresentationStyle = [v4 decodeIntegerForKey:@"UIModalPresentationStyle"];
    }

    else
    {
      v5->_useDefaultModalPresentationStyle = 1;
    }

    if ([v4 containsValueForKey:@"UIModalTransitionStyle"])
    {
      v5->_modalTransitionStyle = [v4 decodeIntegerForKey:@"UIModalTransitionStyle"];
    }

    else
    {
      v5->_useDefaultModalTransitionStyle = 1;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UIStoryboardPresentationSegueTemplate;
  [(UIStoryboardSegueTemplate *)&v5 encodeWithCoder:v4];
  if (!self->_useDefaultModalPresentationStyle)
  {
    [v4 encodeInteger:self->_modalPresentationStyle forKey:@"UIModalPresentationStyle"];
  }

  if (!self->_useDefaultModalTransitionStyle)
  {
    [v4 encodeInteger:self->_modalTransitionStyle forKey:@"UIModalTransitionStyle"];
  }
}

- (id)newDefaultPrepareHandlerForSegue:(id)a3
{
  v4 = a3;
  v5 = [(UIStoryboardPresentationSegueTemplate *)self useDefaultModalPresentationStyle];
  v6 = [(UIStoryboardPresentationSegueTemplate *)self modalPresentationStyle];
  v7 = [(UIStoryboardPresentationSegueTemplate *)self useDefaultModalTransitionStyle];
  v8 = [(UIStoryboardPresentationSegueTemplate *)self modalTransitionStyle];
  objc_initWeak(&location, v4);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__UIStoryboardPresentationSegueTemplate_newDefaultPrepareHandlerForSegue___block_invoke;
  aBlock[3] = &unk_1E7122848;
  objc_copyWeak(v12, &location);
  v13 = v5;
  v14 = v7;
  v12[1] = v6;
  v12[2] = v8;
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

- (id)newDefaultPerformHandlerForSegue:(id)a3
{
  objc_initWeak(&location, a3);
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