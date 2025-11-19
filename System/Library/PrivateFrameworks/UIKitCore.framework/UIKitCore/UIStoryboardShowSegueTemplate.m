@interface UIStoryboardShowSegueTemplate
- (UIStoryboardShowSegueTemplate)initWithCoder:(id)a3;
- (id)newDefaultPerformHandlerForSegue:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIStoryboardShowSegueTemplate

- (UIStoryboardShowSegueTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIStoryboardShowSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIActionName"];
    v7 = [v6 copy];
    action = v5->_action;
    v5->_action = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIStoryboardShowSegueTemplate;
  v4 = a3;
  [(UIStoryboardSegueTemplate *)&v6 encodeWithCoder:v4];
  v5 = [(UIStoryboardShowSegueTemplate *)self action:v6.receiver];
  [v4 encodeObject:v5 forKey:@"UIActionName"];
}

- (id)newDefaultPerformHandlerForSegue:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, v4);
  if (self->_action)
  {
    v5 = [(UIStoryboardShowSegueTemplate *)self action];
    v6 = NSSelectorFromString(v5);
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