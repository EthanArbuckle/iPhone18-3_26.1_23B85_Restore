@interface TVRAlertController
- (CGRect)previousKeyboardFrame;
- (TVRAlertController)initWithCoder:(id)a3;
- (TVRAlertController)initWithKeyboardAttributes:(id)a3 styleProvider:(id)a4;
- (TVRAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (TVRAlertController)initWithTitle:(id)a3 PINEntryAttributes:(id)a4 styleProvider:(id)a5;
- (TVRAlertController)initWithTitle:(id)a3 keyboardAttributes:(id)a4 styleProvider:(id)a5;
- (TVRAlertController)initWithTitle:(id)a3 passcodeSize:(int64_t)a4;
- (TVRAlertControllerDelegate)delegate;
- (id)_contentViewBasedOnType;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)initForTextPasswordType:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancel;
- (void)_dictationDidFinish:(id)a3;
- (void)_keyboardChanged:(id)a3 completion:(id)a4;
- (void)_keyboardHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_layoutForKeyboardFrame:(CGRect)a3;
- (void)_observeKeyboardNotifications;
- (void)alertView:(id)a3 didUpdateText:(id)a4;
- (void)alertViewDidCancel:(id)a3;
- (void)keyboardView:(id)a3 didUpdateText:(id)a4;
- (void)keyboardView:(id)a3 generatedTextInputPayload:(id)a4;
- (void)keyboardViewDidCancel:(id)a3;
- (void)keyboardViewDidHitReturnKey:(id)a3;
- (void)keyboardViewPressedDictationButton:(id)a3;
- (void)keyboardViewReleasedDictationButton:(id)a3;
- (void)loadView;
- (void)setKeyboardAttributes:(id)a3;
- (void)setText:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVRAlertController

- (TVRAlertController)initWithKeyboardAttributes:(id)a3 styleProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 title];
  v9 = [(TVRAlertController *)self initWithTitle:v8 keyboardAttributes:v7 styleProvider:v6];

  return v9;
}

- (TVRAlertController)initWithTitle:(id)a3 keyboardAttributes:(id)a4 styleProvider:(id)a5
{
  objc_storeStrong(&self->_keyboardAttributes, a4);
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [v9 PINEntryAttributes];

  v13 = [(TVRAlertController *)self initWithTitle:v11 PINEntryAttributes:v12 styleProvider:v10];
  return v13;
}

- (TVRAlertController)initWithTitle:(id)a3 passcodeSize:(int64_t)a4
{
  v6 = MEMORY[0x277D6C510];
  v7 = a3;
  v8 = [[v6 alloc] initWithDigitCount:a4];
  v9 = [(TVRAlertController *)self initWithTitle:v7 PINEntryAttributes:v8 styleProvider:0];

  return v9;
}

- (TVRAlertController)initWithTitle:(id)a3 PINEntryAttributes:(id)a4 styleProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = TVRAlertController;
  v11 = [(TVRAlertController *)&v19 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    [(TVRAlertController *)v11 setModalPresentationStyle:4];
    [(TVRAlertController *)v12 setTransitioningDelegate:v12];
    [(TVRAlertController *)v12 setTitle:v8];
    [(TVRAlertController *)v12 _observeKeyboardNotifications];
    if (v9)
    {
      v12->_type = 0;
      v13 = objc_alloc_init(TVRAlertView);
      p_alertView = &v12->_alertView;
      alertView = v12->_alertView;
      v12->_alertView = v13;

      [(TVRAlertView *)v12->_alertView setTitle:v8];
      [(TVRAlertView *)v12->_alertView setPINEntryAttributes:v9];
    }

    else
    {
      v12->_type = 1;
      v16 = [[TVRKeyboardView alloc] initWithStyleProvider:v10];
      p_alertView = &v12->_keyboardView;
      keyboardView = v12->_keyboardView;
      v12->_keyboardView = v16;

      [(TVRKeyboardView *)v12->_keyboardView setAttributes:v12->_keyboardAttributes];
    }

    [*p_alertView setDelegate:v12];
    [*p_alertView setAlpha:0.0];
  }

  return v12;
}

- (id)initForTextPasswordType:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TVRAlertController;
  v5 = [(TVRAlertController *)&v12 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(TVRAlertController *)v5 setModalPresentationStyle:4];
    [(TVRAlertController *)v6 setTransitioningDelegate:v6];
    [(TVRAlertController *)v6 setTitle:v4];
    [(TVRAlertController *)v6 _observeKeyboardNotifications];
    v6->_type = 2;
    v7 = [objc_alloc(MEMORY[0x277D6C508]) _init];
    keyboardAttributes = v6->_keyboardAttributes;
    v6->_keyboardAttributes = v7;

    [(TVRCKeyboardAttributes *)v6->_keyboardAttributes _setSecure:1];
    [(TVRCKeyboardAttributes *)v6->_keyboardAttributes _setAutocorrectionType:1];
    [(TVRCKeyboardAttributes *)v6->_keyboardAttributes _setAutocapitalizationType:0];
    [(TVRCKeyboardAttributes *)v6->_keyboardAttributes _setEnablesReturnKeyAutomatically:1];
    v9 = objc_alloc_init(TVRKeyboardView);
    keyboardView = v6->_keyboardView;
    v6->_keyboardView = v9;

    [(TVRKeyboardView *)v6->_keyboardView setAttributes:v6->_keyboardAttributes];
    [(TVRKeyboardView *)v6->_keyboardView setDelegate:v6];
  }

  return v6;
}

- (TVRAlertController)initWithCoder:(id)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TVRemoteUIAlertTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  v6 = [(TVRAlertController *)self initWithTitle:v5 passcodeSize:4];

  return v6;
}

- (TVRAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRemoteUIAlertTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  v7 = [(TVRAlertController *)self initWithTitle:v6 passcodeSize:4];

  return v7;
}

- (void)loadView
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *MEMORY[0x277CBF348];
  v13 = *(MEMORY[0x277CBF348] + 8);
  v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v7, v9, v11}];
  v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v12, v13, v9, v11}];
  dimmingView = self->_dimmingView;
  self->_dimmingView = v14;

  v16 = self->_dimmingView;
  v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
  [(UIView *)v16 setBackgroundColor:v17];

  [(UIView *)self->_dimmingView setAutoresizingMask:18];
  [v21 addSubview:self->_dimmingView];
  [(UIView *)self->_dimmingView setAlpha:0.0];
  if (self->_type - 1 <= 1)
  {
    v18 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__cancel];
    [v18 setNumberOfTapsRequired:1];
    [v18 setNumberOfTouchesRequired:1];
    [(UIView *)self->_dimmingView addGestureRecognizer:v18];
  }

  alertView = self->_alertView;
  if (!alertView)
  {
    alertView = self->_keyboardView;
  }

  [v21 addSubview:alertView];
  v20 = [(TVRAlertController *)self traitOverrides];
  [v20 setUserInterfaceStyle:2];

  [(TVRAlertController *)self setView:v21];
}

- (void)viewDidLayoutSubviews
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[TVRAlertController viewDidLayoutSubviews]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = TVRAlertController;
  [(TVRAlertController *)&v4 viewDidLayoutSubviews];
  [(TVRAlertController *)self _layoutForKeyboardFrame:self->_previousKeyboardFrame.origin.x, self->_previousKeyboardFrame.origin.y, self->_previousKeyboardFrame.size.width, self->_previousKeyboardFrame.size.height];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TVRAlertController;
  [(TVRAlertController *)&v5 viewWillAppear:a3];
  self->_shouldDismiss = 0;
  v4 = [(TVRAlertController *)self _contentViewBasedOnType];
  [v4 becomeFirstResponder];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(TVRAlertController *)self traitCollection];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)setText:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    text = self->_text;
    v8 = 136315650;
    v9 = "[TVRAlertController setText:]";
    v10 = 2114;
    v11 = text;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "%s setting text:%{public}@ to new text:%{public}@", &v8, 0x20u);
  }

  if (self->_text != v5)
  {
    objc_storeStrong(&self->_text, a3);
    [(TVRKeyboardView *)self->_keyboardView setText:v5];
    [(TVRAlertView *)self->_alertView setText:v5];
  }
}

- (void)setKeyboardAttributes:(id)a3
{
  v5 = a3;
  if (self->_keyboardAttributes != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_keyboardAttributes, a3);
    [(TVRKeyboardView *)self->_keyboardView setAttributes:v6];
    v5 = v6;
  }
}

- (void)keyboardView:(id)a3 didUpdateText:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[TVRAlertController keyboardView:didUpdateText:]";
    v13 = 2048;
    v14 = [v6 length];
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "%s text length: %lu", &v11, 0x16u);
  }

  objc_storeStrong(&self->_text, a4);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 alertController:self enteredText:v6];
  }
}

- (void)keyboardViewPressedDictationButton:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 alertControllerPressedDictationButton:self];
  }
}

- (void)keyboardViewReleasedDictationButton:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 alertControllerReleasedDictationButton:self];
  }
}

- (void)keyboardViewDidCancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 alertControllerCancelled:self];
  }

  [(TVRAlertController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)keyboardViewDidHitReturnKey:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 alertControllerHitKeyboardReturnKey:self];
  }
}

- (void)keyboardView:(id)a3 generatedTextInputPayload:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 alertController:self generatedTextInputPayload:v8];
  }
}

- (void)alertView:(id)a3 didUpdateText:(id)a4
{
  v9 = a4;
  objc_storeStrong(&self->_text, a4);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 alertController:self enteredText:v9];
  }
}

- (void)alertViewDidCancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 alertControllerCancelled:self];
  }

  [(TVRAlertController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[TVRPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

  return v8;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = objc_alloc_init(_TVRMAlertControllerTransitioning);
  [(_TVRMAlertControllerTransitioning *)v6 setIsPresentation:1];
  [(TVRAlertController *)self loadViewIfNeeded];
  if (!self->_type)
  {
    v7 = [(TVRAlertController *)self _contentViewBasedOnType];
    [(_TVRMAlertControllerTransitioning *)v6 setContentView:v7];

    [(_TVRMAlertControllerTransitioning *)v6 setDimmingView:self->_dimmingView];
  }

  return v6;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = objc_alloc_init(_TVRMAlertControllerTransitioning);
  [(_TVRMAlertControllerTransitioning *)v4 setIsPresentation:0];
  if (!self->_type)
  {
    v5 = [(TVRAlertController *)self _contentViewBasedOnType];
    [(_TVRMAlertControllerTransitioning *)v4 setContentView:v5];

    [(_TVRMAlertControllerTransitioning *)v4 setDimmingView:self->_dimmingView];
  }

  return v4;
}

- (void)_observeKeyboardNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__keyboardHide_ name:*MEMORY[0x277D76C50] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__dictationDidFinish_ name:*MEMORY[0x277D76888] object:0];
}

- (void)_keyboardHide:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[TVRAlertController _keyboardHide:]";
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s note:%{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__TVRAlertController__keyboardHide___block_invoke;
  v6[3] = &unk_279D87AE0;
  objc_copyWeak(&v7, buf);
  v6[4] = self;
  [(TVRAlertController *)self _keyboardChanged:v4 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __36__TVRAlertController__keyboardHide___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained shouldDismiss];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __36__TVRAlertController__keyboardHide___block_invoke_2;
    v5[3] = &unk_279D87AE0;
    objc_copyWeak(&v6, (a1 + 40));
    v5[4] = *(a1 + 32);
    [v4 dismissViewControllerAnimated:1 completion:v5];
    objc_destroyWeak(&v6);
  }
}

void __36__TVRAlertController__keyboardHide___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [v6 delegate];
      [v5 alertControllerCancelled:*(a1 + 32)];
    }

    [v6 setShouldDismiss:0];
    WeakRetained = v6;
  }
}

- (void)_keyboardChanged:(id)a3 completion:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v51 = "[TVRAlertController _keyboardChanged:completion:]";
    v52 = 2114;
    v53 = v6;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "%s note:%{public}@", buf, 0x16u);
  }

  v9 = [v6 userInfo];
  v10 = [v9 valueForKey:*MEMORY[0x277D76BB0]];
  [v10 CGRectValue];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [v6 userInfo];
  v20 = [v19 valueForKey:*MEMORY[0x277D76BB8]];
  [v20 CGRectValue];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = [v6 userInfo];
  v30 = [v29 valueForKey:*MEMORY[0x277D76B78]];
  [v30 floatValue];
  v42 = v31;

  v32 = [v6 userInfo];
  v33 = [v32 valueForKey:*MEMORY[0x277D76B70]];
  v34 = [v33 integerValue];

  v35 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v55.origin.x = v12;
    v55.origin.y = v14;
    v55.size.width = v16;
    v55.size.height = v18;
    v36 = NSStringFromCGRect(v55);
    v56.origin.x = v22;
    v56.origin.y = v24;
    v56.size.width = v26;
    v56.size.height = v28;
    v37 = NSStringFromCGRect(v56);
    *buf = 138543618;
    v51 = v36;
    v52 = 2112;
    v53 = v37;
    _os_log_impl(&dword_26CFEB000, v35, OS_LOG_TYPE_DEFAULT, "beginFrame:%{public}@  endFrame:%@", buf, 0x16u);
  }

  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  v58.origin.x = v22;
  v58.origin.y = v24;
  v58.size.width = v26;
  v58.size.height = v28;
  v38 = CGRectEqualToRect(v57, v58);
  v39 = [v6 name];
  v40 = [v39 isEqualToString:*MEMORY[0x277D76C50]];

  if (v38)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __50__TVRAlertController__keyboardChanged_completion___block_invoke_4;
    v43[3] = &unk_279D87B58;
    v43[4] = self;
    *&v43[5] = v22;
    *&v43[6] = v24;
    *&v43[7] = v26;
    *&v43[8] = v28;
    [MEMORY[0x277D75D18] performWithoutAnimation:v43];
  }

  else
  {
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __50__TVRAlertController__keyboardChanged_completion___block_invoke;
    v48[3] = &unk_279D87B08;
    v48[4] = self;
    v49 = v40;
    *&v48[5] = v12;
    *&v48[6] = v14;
    *&v48[7] = v16;
    *&v48[8] = v18;
    [MEMORY[0x277D75D18] performWithoutAnimation:v48];
    v41 = MEMORY[0x277D75D18];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __50__TVRAlertController__keyboardChanged_completion___block_invoke_2;
    v46[3] = &unk_279D87B08;
    v46[4] = self;
    *&v46[5] = v22;
    *&v46[6] = v24;
    *&v46[7] = v26;
    *&v46[8] = v28;
    v47 = v40;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __50__TVRAlertController__keyboardChanged_completion___block_invoke_3;
    v44[3] = &unk_279D87B30;
    v45 = v7;
    [v41 animateWithDuration:v34 << 16 delay:v46 options:v44 animations:v42 completion:0.0];
  }

  self->_previousKeyboardFrame.origin.x = v22;
  self->_previousKeyboardFrame.origin.y = v24;
  self->_previousKeyboardFrame.size.width = v26;
  self->_previousKeyboardFrame.size.height = v28;
}

uint64_t __50__TVRAlertController__keyboardChanged_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) _contentViewBasedOnType];
  [v3 setAlpha:v2];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);

  return [v4 _layoutForKeyboardFrame:{v5, v6, v7, v8}];
}

uint64_t __50__TVRAlertController__keyboardChanged_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _layoutForKeyboardFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  if (*(a1 + 72))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) _contentViewBasedOnType];
  [v3 setAlpha:v2];

  if (*(a1 + 72))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = *(*(a1 + 32) + 1048);

  return [v5 setAlpha:v4];
}

uint64_t __50__TVRAlertController__keyboardChanged_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_keyboardWillShow:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[TVRAlertController _keyboardWillShow:]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s note:%{public}@", &v6, 0x16u);
  }

  [(TVRAlertController *)self _keyboardChanged:v4 completion:0];
}

- (void)_layoutForKeyboardFrame:(CGRect)a3
{
  width = a3.size.width;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v40 = *MEMORY[0x277D85DE8];
  v6 = [(TVRAlertController *)self _contentViewBasedOnType];
  [v6 sizeThatFits:{270.0, 0.0}];
  v8 = v7;
  v10 = v9;
  v11 = [(TVRAlertController *)self view];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v34 = v8;
  v35 = v10;
  UIRectCenteredIntegralRect();
  if (self->_type)
  {
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    if (CGRectIsEmpty(v41))
    {
      v42.origin.x = v13;
      v42.origin.y = v15;
      v42.size.width = v17;
      v42.size.height = v19;
      v20 = v10;
      v21 = CGRectGetHeight(v42) + -8.0 - v10;
    }

    else
    {
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v52.origin.x = v13;
      v52.origin.y = v15;
      v52.size.width = v17;
      v52.size.height = v19;
      v26 = CGRectIntersectsRect(v45, v52);
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      MinY = CGRectGetMinY(v46);
      v20 = v10;
      if (v26)
      {
        v21 = MinY + -8.0 - v10;
      }

      else
      {
        v21 = MinY;
      }
    }

    v28 = _TVRUIKeyboardLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      [v6 frame];
      v29 = NSStringFromCGRect(v47);
      v30 = 16.0;
      v48.origin.x = 16.0;
      v48.origin.y = v21;
      v48.size.width = v8 + -32.0;
      v48.size.height = v20;
      v31 = NSStringFromCGRect(v48);
      *buf = 138543618;
      v37 = v29;
      v38 = 2114;
      v39 = v31;
      _os_log_impl(&dword_26CFEB000, v28, OS_LOG_TYPE_DEFAULT, "oldFrame:%{public}@ - newFrame:%{public}@", buf, 0x16u);
    }

    else
    {
      v30 = 16.0;
    }

    [v6 setFrame:{v30, v21, v8 + -32.0, v20}];
  }

  else
  {
    v43.origin.x = v13;
    v43.origin.y = v15;
    v43.size.width = v17;
    v43.size.height = v19;
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v44 = CGRectIntersection(v43, v51);
    v22 = v44.origin.x;
    v23 = v44.origin.y;
    v24 = v44.size.width;
    v25 = v44.size.height;
    if (!CGRectIsNull(v44))
    {
      v49.origin.x = v22;
      v49.origin.y = v23;
      v49.size.width = v24;
      v49.size.height = v25;
      if (!CGRectIsEmpty(v49))
      {
        v50.origin.x = v22;
        v50.origin.y = v23;
        v50.size.width = v24;
        v50.size.height = v25;
        CGRectGetHeight(v50);
        UIRectCenteredIntegralRect();
      }
    }

    UIRectGetCenter();
    [v6 setCenter:?];
    [v6 setBounds:{0.0, 0.0, v34, v35}];
  }
}

- (void)_dictationDidFinish:(id)a3
{
  keyboardView = self->_keyboardView;
  v4 = [(TVRKeyboardView *)keyboardView text];
  [(TVRKeyboardView *)keyboardView setText:v4];
}

- (id)_contentViewBasedOnType
{
  if (self->_type)
  {
    v2 = &OBJC_IVAR___TVRAlertController__keyboardView;
  }

  else
  {
    v2 = &OBJC_IVAR___TVRAlertController__alertView;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)_cancel
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRAlertController _cancel]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v4 = [(TVRAlertController *)self view];
  [v4 endEditing:1];

  self->_shouldDismiss = 1;
}

- (TVRAlertControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)previousKeyboardFrame
{
  x = self->_previousKeyboardFrame.origin.x;
  y = self->_previousKeyboardFrame.origin.y;
  width = self->_previousKeyboardFrame.size.width;
  height = self->_previousKeyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end