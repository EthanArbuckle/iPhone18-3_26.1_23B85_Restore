@interface SMUTextEntryController
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (SMUTextEntryController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)preferredFocusEnvironments;
- (void)_cancelButtonPressed:(id)a3;
- (void)_doneButtonPressed:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)loadView;
- (void)systemInputViewController:(id)a3 didChangeAccessoryVisibility:(BOOL)a4;
- (void)textFieldDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SMUTextEntryController

- (SMUTextEntryController)initWithNibName:(id)a3 bundle:(id)a4
{
  v25.receiver = self;
  v25.super_class = SMUTextEntryController;
  v4 = [(SMUTextEntryController *)&v25 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    title = v4->_title;
    v4->_title = &stru_28230AF08;

    doneText = v5->_doneText;
    v5->_doneText = &stru_28230AF08;

    v8 = [SMUTextEntryTextField alloc];
    v9 = [(SMUTextEntryTextField *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    textField = v5->_textField;
    v5->_textField = v9;

    [(SMUTextEntryTextField *)v5->_textField _setBlurEnabled:0];
    v11 = v5->_textField;
    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
    [(SMUTextEntryTextField *)v11 setFont:v12];

    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v13;

    v15 = v5->_titleLabel;
    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
    [(UILabel *)v15 setFont:v16];

    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    messageLabel = v5->_messageLabel;
    v5->_messageLabel = v17;

    v19 = v5->_messageLabel;
    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v19 setFont:v20];

    [(UILabel *)v5->_messageLabel setNumberOfLines:2];
    v21 = [MEMORY[0x277D75220] buttonWithType:1];
    doneButton = v5->_doneButton;
    v5->_doneButton = v21;

    [(UIButton *)v5->_doneButton addTarget:v5 action:sel__doneButtonPressed_ forControlEvents:0x2000];
    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v5 selector:sel_textFieldDidChange_ name:*MEMORY[0x277D770B0] object:v5->_textField];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SMUTextEntryController;
  [(SMUTextEntryController *)&v4 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SMUTextEntryController;
  [(SMUTextEntryController *)&v4 loadView];
  v3 = [(SMUTextEntryController *)self view];
  [(SMUTextEntryTextField *)self->_textField setText:self->_text];
  [v3 addSubview:self->_textField];
  [(UILabel *)self->_titleLabel setText:self->_title];
  [v3 addSubview:self->_titleLabel];
  [(UILabel *)self->_messageLabel setText:self->_message];
  [v3 addSubview:self->_messageLabel];
  [(UIButton *)self->_doneButton setTitle:self->_doneText forState:0];
  [v3 addSubview:self->_doneButton];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SMUTextEntryController;
  [(SMUTextEntryController *)&v5 viewDidLoad];
  v3 = [(SMUTextEntryController *)self view];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__cancelButtonPressed_];
  [v4 setAllowedPressTypes:&unk_282356A98];
  [v3 addGestureRecognizer:v4];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SMUTextEntryController;
  [(SMUTextEntryController *)&v9 didMoveToParentViewController:v4];
  if (v4 && !self->_systemInputViewController)
  {
    v5 = [MEMORY[0x277D75AF8] systemInputViewControllerForResponder:self->_textField editorView:0 containingResponder:self];
    systemInputViewController = self->_systemInputViewController;
    self->_systemInputViewController = v5;

    [(UISystemInputViewController *)self->_systemInputViewController setSupportsRecentInputsIntegration:1];
    [(UISystemInputViewController *)self->_systemInputViewController setSystemInputViewControllerDelegate:self];
    if (!self->_systemInputViewController)
    {
      [SMUTextEntryController didMoveToParentViewController:];
    }

    [(SMUTextEntryController *)self addChildViewController:?];
    v7 = [(SMUTextEntryController *)self view];
    v8 = [(UISystemInputViewController *)self->_systemInputViewController view];
    [v7 addSubview:v8];

    [(UISystemInputViewController *)self->_systemInputViewController willMoveToParentViewController:self];
    self->_isTouchEnabled = [(UISystemInputViewController *)self->_systemInputViewController supportsTouchInput];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SMUTextEntryController;
  [(SMUTextEntryController *)&v3 viewWillLayoutSubviews];
  [(UISystemInputViewController *)self->_systemInputViewController reloadInputViewsForPersistentDelegate];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SMUTextEntryController;
  [(SMUTextEntryController *)&v4 viewWillAppear:a3];
  [(SMUTextEntryTextField *)self->_textField setUserInteractionEnabled:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SMUTextEntryController;
  [(SMUTextEntryController *)&v4 viewWillDisappear:a3];
  [(SMUTextEntryTextField *)self->_textField setUserInteractionEnabled:0];
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = [a3 nextFocusedView];
  LOBYTE(self) = [v4 isDescendantOfView:self->_textField];

  return self ^ 1;
}

- (id)preferredFocusEnvironments
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if (self->_preferredFocusedView)
  {
    [v3 addObject:?];
  }

  if (self->_systemInputViewController)
  {
    [v4 addObject:?];
  }

  v7.receiver = self;
  v7.super_class = SMUTextEntryController;
  v5 = [(SMUTextEntryController *)&v7 preferredFocusEnvironments];
  [v4 addObjectsFromArray:v5];

  return v4;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = a3;
  v9 = [(SMUTextEntryController *)self view];
  v6 = [v5 nextFocusedView];

  if ([v6 isDescendantOfView:v9])
  {
    v7 = [(UISystemInputViewController *)self->_systemInputViewController view];
    v8 = [v6 isDescendantOfView:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_preferredFocusedView, v6);
    }
  }
}

- (void)textFieldDidChange:(id)a3
{
  v3 = [(SMUTextEntryController *)self view];
  [v3 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v37.receiver = self;
  v37.super_class = SMUTextEntryController;
  [(SMUTextEntryController *)&v37 viewDidLayoutSubviews];
  v3 = [(UISystemInputViewController *)self->_systemInputViewController view];
  [v3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v36 = v4;
  v5 = [(SMUTextEntryController *)self view];
  [v5 bounds];
  v35 = v7;
  if (self->_isTouchEnabled)
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 + -838.0 + -90.0;
  }

  v10 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  [(UILabel *)self->_titleLabel sizeThatFits:*MEMORY[0x277CBF3A8], v9];
  v12 = v11;
  [(UILabel *)self->_messageLabel sizeThatFits:v8, 360.0];
  v14 = v13;
  v15 = v13 + 100.0;
  if (v14 <= 0.0)
  {
    v15 = 0.0;
  }

  v16 = v12 + v15 + 100.0;
  v17 = [(SMUTextEntryTextField *)self->_textField attributedText];
  [v17 boundingRectWithSize:8 options:0 context:{v10, v9}];
  v39 = CGRectIntegral(v38);
  width = v39.size.width;

  if (width + 40.0 > v8 * 0.9)
  {
    v19 = v8 * 0.9;
  }

  else
  {
    v19 = width + 40.0;
  }

  v20 = v36 + 30.0 + 70.0;
  if (!self->_isTouchEnabled)
  {
    v20 = 70.0;
  }

  [(UIButton *)self->_doneButton sizeThatFits:v8, v35 - (v16 + v20), v19];
  titleLabel = self->_titleLabel;
  UIRectCenteredXInRect();
  [(UILabel *)titleLabel setFrame:?];
  [(UILabel *)self->_titleLabel frame];
  CGRectGetMaxY(v40);
  messageLabel = self->_messageLabel;
  UIRectCenteredXInRect();
  [(UILabel *)messageLabel setFrame:?];
  if (v14 > 0.0)
  {
    [(UILabel *)self->_messageLabel frame];
    CGRectGetMaxY(v41);
  }

  textField = self->_textField;
  UIRectCenteredXInRect();
  [(SMUTextEntryTextField *)textField setFrame:?];
  if (self->_isTouchEnabled)
  {
    [(SMUTextEntryTextField *)self->_textField frame];
    v24 = CGRectGetMaxY(v42) + 30.0;
    v25 = [(SMUTextEntryController *)self view];
    [v25 bounds];
    v26 = CGRectGetWidth(v43);
    [v3 bounds];
    [v3 setFrame:{0.0, v24, v26, CGRectGetHeight(v44)}];
  }

  else
  {
    [v3 bounds];
    v27 = [(SMUTextEntryController *)self view];
    [v27 frame];
    UIRectCenteredYInRect();
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [v3 setFrame:{194.0, v29, v31, v33}];
  }

  doneButton = self->_doneButton;
  UIRectCenteredXInRect();
  [(UIButton *)doneButton setFrame:?];
}

- (void)systemInputViewController:(id)a3 didChangeAccessoryVisibility:(BOOL)a4
{
  v5 = !a4;
  self->_hideAccessoryViews = !a4;
  [(UILabel *)self->_titleLabel setHidden:v5];
  [(UILabel *)self->_messageLabel setHidden:v5];
  [(SMUTextEntryTextField *)self->_textField setHidden:v5];
  doneButton = self->_doneButton;

  [(UIButton *)doneButton setHidden:v5];
}

- (void)_doneButtonPressed:(id)a3
{
  v4 = [(SMUTextEntryTextField *)self->_textField text];
  text = self->_text;
  self->_text = v4;

  onCompletion = self->_onCompletion;
  if (onCompletion)
  {
    v7 = *(onCompletion + 2);

    v7();
  }
}

- (void)_cancelButtonPressed:(id)a3
{
  text = self->_text;
  self->_text = 0;

  onCompletion = self->_onCompletion;
  if (onCompletion)
  {
    v6 = *(onCompletion + 2);

    v6();
  }
}

@end