@interface PRXAction
+ (PRXAction)actionWithTitle:(id)a3 customColors:(id)a4 handler:(id)a5;
+ (PRXAction)actionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
+ (id)defaultDismissalActionForViewController:(id)a3;
+ (id)dismissalConfirmationActionForViewController:(id)a3 withTitle:(id)a4 message:(id)a5 confirmButtonTitle:(id)a6 cancelButtonTitle:(id)a7;
- (PRXAction)initWithTitle:(id)a3 style:(int64_t)a4 customColors:(id)a5 handler:(id)a6;
- (UIButton)button;
- (void)_callHandler;
- (void)setButton:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation PRXAction

- (PRXAction)initWithTitle:(id)a3 style:(int64_t)a4 customColors:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = PRXAction;
  v13 = [(PRXAction *)&v20 init];
  if (v13)
  {
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    v13->_style = a4;
    v16 = MEMORY[0x2666F6B00](v12);
    handler = v13->_handler;
    v13->_handler = v16;

    objc_storeStrong(&v13->_customColors, a5);
    v13->_enabled = 1;
    v18 = v13;
  }

  return v13;
}

+ (PRXAction)actionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithTitle:v9 style:a4 customColors:0 handler:v8];

  return v10;
}

+ (PRXAction)actionWithTitle:(id)a3 customColors:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithTitle:v10 style:2 customColors:v9 handler:v8];

  return v11;
}

- (void)_callHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_button);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_button);
    [v5 toggleActive];
  }

  handler = self->_handler;
  if (handler)
  {
    v7 = *(handler + 2);

    v7();
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    WeakRetained = objc_loadWeakRetained(&self->_button);
    [WeakRetained setEnabled:v4];
  }
}

- (void)setButton:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_button);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_button);
    [v5 removeTarget:self action:sel__callHandler forControlEvents:0x2000];

    v6 = objc_storeWeak(&self->_button, obj);
    [obj setTitle:self->_title forState:0];

    v7 = objc_loadWeakRetained(&self->_button);
    [v7 addTarget:self action:sel__callHandler forControlEvents:0x2000];

    enabled = self->_enabled;
    v9 = objc_loadWeakRetained(&self->_button);
    [v9 setEnabled:enabled];
  }
}

- (UIButton)button
{
  WeakRetained = objc_loadWeakRetained(&self->_button);

  return WeakRetained;
}

+ (id)dismissalConfirmationActionForViewController:(id)a3 withTitle:(id)a4 message:(id)a5 confirmButtonTitle:(id)a6 cancelButtonTitle:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, v12);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __136__PRXAction_ViewControllerActions__dismissalConfirmationActionForViewController_withTitle_message_confirmButtonTitle_cancelButtonTitle___block_invoke;
  v23[3] = &unk_279ACC3F8;
  objc_copyWeak(&v28, &location);
  v17 = v13;
  v24 = v17;
  v18 = v14;
  v25 = v18;
  v19 = v15;
  v26 = v19;
  v20 = v16;
  v27 = v20;
  v21 = [a1 actionWithTitle:&stru_2873787A8 style:0 handler:v23];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v21;
}

void __136__PRXAction_ViewControllerActions__dismissalConfirmationActionForViewController_withTitle_message_confirmButtonTitle_cancelButtonTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
    v6 = MEMORY[0x277D750F8];
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __136__PRXAction_ViewControllerActions__dismissalConfirmationActionForViewController_withTitle_message_confirmButtonTitle_cancelButtonTitle___block_invoke_2;
    v10[3] = &unk_279ACC3D0;
    objc_copyWeak(&v11, (a1 + 64));
    v8 = [v6 actionWithTitle:v7 style:0 handler:v10];
    [v5 addAction:v8];
    v9 = [MEMORY[0x277D750F8] actionWithTitle:*(a1 + 56) style:1 handler:0];
    [v5 addAction:v9];

    [v5 setPreferredAction:v8];
    [WeakRetained presentViewController:v5 animated:1 completion:0];

    objc_destroyWeak(&v11);
  }
}

void __136__PRXAction_ViewControllerActions__dismissalConfirmationActionForViewController_withTitle_message_confirmButtonTitle_cancelButtonTitle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

+ (id)defaultDismissalActionForViewController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, v4);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__PRXAction_ViewControllerActions__defaultDismissalActionForViewController___block_invoke;
  v7[3] = &unk_279ACC330;
  objc_copyWeak(&v8, &location);
  v5 = [a1 actionWithTitle:&stru_2873787A8 style:0 handler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

void __76__PRXAction_ViewControllerActions__defaultDismissalActionForViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

@end