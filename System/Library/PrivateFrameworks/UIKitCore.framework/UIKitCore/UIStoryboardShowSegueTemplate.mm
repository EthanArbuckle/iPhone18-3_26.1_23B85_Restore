@interface UIStoryboardShowSegueTemplate
- (UIStoryboardShowSegueTemplate)initWithCoder:(id)coder;
- (id)newDefaultPerformHandlerForSegue:(id)segue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIStoryboardShowSegueTemplate

- (UIStoryboardShowSegueTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UIStoryboardShowSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIActionName"];
    v7 = [v6 copy];
    action = v5->_action;
    v5->_action = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UIStoryboardShowSegueTemplate;
  coderCopy = coder;
  [(UIStoryboardSegueTemplate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(UIStoryboardShowSegueTemplate *)self action:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"UIActionName"];
}

- (id)newDefaultPerformHandlerForSegue:(id)segue
{
  segueCopy = segue;
  objc_initWeak(&location, segueCopy);
  if (self->_action)
  {
    action = [(UIStoryboardShowSegueTemplate *)self action];
    v6 = NSSelectorFromString(action);
  }

  else
  {
    v6 = sel_showViewController_sender_;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__UIStoryboardShowSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke;
  aBlock[3] = &unk_1E70F8DC8;
  objc_copyWeak(v10, &location);
  v10[1] = v6;
  v7 = _Block_copy(aBlock);
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return v7;
}

void __66__UIStoryboardShowSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained sourceViewController];
  v3 = [WeakRetained destinationViewController];
  v4 = *(a1 + 40);
  v5 = [WeakRetained sender];
  [v2 _showViewController:v3 withAction:v4 sender:v5];
}

@end