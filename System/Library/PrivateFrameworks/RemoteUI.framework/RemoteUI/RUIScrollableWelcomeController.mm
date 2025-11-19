@interface RUIScrollableWelcomeController
- (void)_floatButtonTray;
- (void)_inlineButtonTray;
- (void)_layoutButtonTray;
- (void)_setupScrollView;
- (void)_updateParentPreferredContentSize;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RUIScrollableWelcomeController

- (void)_layoutButtonTray
{
  v5.receiver = self;
  v5.super_class = RUIScrollableWelcomeController;
  [(RUIScrollableWelcomeController *)&v5 _layoutButtonTray];
  if ([(RUIScrollableWelcomeController *)self shouldUseCustomButtonTray])
  {
    v3 = [(RUIScrollableWelcomeController *)self buttonTray];
    v4 = [v3 stackView];
    [v4 setAlignment:3];
  }
}

- (void)_setupScrollView
{
  v43[4] = *MEMORY[0x277D85DE8];
  v3 = [(RUIScrollableWelcomeController *)self contentController];
  [(RUIScrollableWelcomeController *)self addChildViewController:v3];

  v4 = [(RUIScrollableWelcomeController *)self view];
  v5 = [(RUIScrollableWelcomeController *)self contentController];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(RUIScrollableWelcomeController *)self contentController];
  v8 = [v7 view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [[RUIScrollViewWeakLayoutObserver alloc] initWithLayoutObserver:self];
  scrollViewLayoutObserver = self->_scrollViewLayoutObserver;
  self->_scrollViewLayoutObserver = v9;

  v11 = self->_scrollViewLayoutObserver;
  v12 = [(RUIScrollableWelcomeController *)self scrollView];
  [v12 _setLayoutObserver:v11];

  v13 = [(RUIScrollableWelcomeController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [(RUIScrollableWelcomeController *)self contentController];
  v16 = [v15 view];
  v17 = [v16 bottomAnchor];
  v42 = [v14 constraintEqualToAnchor:v17];

  LODWORD(v18) = 1144750080;
  [v42 setPriority:v18];
  v19 = [(RUIScrollableWelcomeController *)self contentController];
  [v19 didMoveToParentViewController:self];

  v34 = MEMORY[0x277CCAAD0];
  v41 = [(RUIScrollableWelcomeController *)self view];
  v39 = [v41 topAnchor];
  v40 = [(RUIScrollableWelcomeController *)self contentController];
  v38 = [v40 view];
  v37 = [v38 topAnchor];
  v36 = [v39 constraintEqualToAnchor:v37];
  v43[0] = v36;
  v35 = [(RUIScrollableWelcomeController *)self view];
  v32 = [v35 leadingAnchor];
  v33 = [(RUIScrollableWelcomeController *)self contentController];
  v31 = [v33 view];
  v20 = [v31 leadingAnchor];
  v21 = [v32 constraintEqualToAnchor:v20];
  v43[1] = v21;
  v22 = [(RUIScrollableWelcomeController *)self view];
  v23 = [v22 trailingAnchor];
  v24 = [(RUIScrollableWelcomeController *)self contentController];
  v25 = [v24 view];
  v26 = [v25 trailingAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];
  v43[2] = v27;
  v43[3] = v42;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
  [v34 activateConstraints:v28];

  v29 = [(RUIScrollableWelcomeController *)self view];
  v30 = [(RUIScrollableWelcomeController *)self buttonTray];
  [v29 addSubview:v30];

  [(RUIScrollableWelcomeController *)self _layoutButtonTray];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = RUIScrollableWelcomeController;
  [(OBBaseWelcomeController *)&v3 viewDidLayoutSubviews];
  [(RUIScrollableWelcomeController *)self _updateParentPreferredContentSize];
}

- (void)_updateParentPreferredContentSize
{
  v3 = [(RUIScrollableWelcomeController *)self scrollView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(RUIScrollableWelcomeController *)self scrollView];
  [v6 contentInset];
  v8 = v5 + v7;
  v9 = [(RUIScrollableWelcomeController *)self scrollView];
  [v9 contentInset];
  v11 = v8 + v10;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__RUIScrollableWelcomeController__updateParentPreferredContentSize__block_invoke;
  v12[3] = &unk_2782E8458;
  v12[4] = self;
  *&v12[5] = v11;
  [MEMORY[0x277D75D18] performWithoutAnimation:v12];
}

void __67__RUIScrollableWelcomeController__updateParentPreferredContentSize__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) scrollView];
  [v6 frame];
  v3 = v2;
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) parentViewController];
  [v5 setPreferredContentSize:{v3, v4}];
}

- (void)_floatButtonTray
{
  self->_isButtonTrayInlined = 0;
  v2.receiver = self;
  v2.super_class = RUIScrollableWelcomeController;
  [(RUIScrollableWelcomeController *)&v2 _floatButtonTray];
}

- (void)_inlineButtonTray
{
  v33[4] = *MEMORY[0x277D85DE8];
  self->_isButtonTrayInlined = 1;
  v3 = [(RUIScrollableWelcomeController *)self buttonTray];
  [v3 removeFromSuperview];

  v4 = [(RUIScrollableWelcomeController *)self view];
  v5 = [(RUIScrollableWelcomeController *)self buttonTray];
  [v4 addSubview:v5];

  v6 = [(RUIScrollableWelcomeController *)self view];
  v7 = [v6 bottomAnchor];

  v8 = [(RUIScrollableWelcomeController *)self tabBarController];

  if (v8)
  {
    v9 = [(RUIScrollableWelcomeController *)self view];
    v10 = [v9 safeAreaLayoutGuide];
    v11 = [v10 bottomAnchor];

    v7 = v11;
  }

  v27 = v7;
  v24 = MEMORY[0x277CCAAD0];
  v32 = [(RUIScrollableWelcomeController *)self buttonTray];
  v31 = [v32 bottomAnchor];
  v30 = [v31 constraintEqualToAnchor:v7 constant:0.0];
  v33[0] = v30;
  v29 = [(RUIScrollableWelcomeController *)self buttonTray];
  v26 = [v29 leadingAnchor];
  v28 = [(RUIScrollableWelcomeController *)self view];
  v25 = [v28 leadingAnchor];
  v23 = [v26 constraintEqualToAnchor:v25 constant:0.0];
  v33[1] = v23;
  v22 = [(RUIScrollableWelcomeController *)self buttonTray];
  v12 = [v22 trailingAnchor];
  v13 = [(RUIScrollableWelcomeController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:0.0];
  v33[2] = v15;
  v16 = [(RUIScrollableWelcomeController *)self buttonTray];
  v17 = [v16 topAnchor];
  v18 = [(RUIScrollableWelcomeController *)self scrollView];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 constant:0.0];
  v33[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [v24 activateConstraints:v21];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = RUIScrollableWelcomeController;
  [(RUIScrollableWelcomeController *)&v3 viewWillAppear:a3];
}

@end