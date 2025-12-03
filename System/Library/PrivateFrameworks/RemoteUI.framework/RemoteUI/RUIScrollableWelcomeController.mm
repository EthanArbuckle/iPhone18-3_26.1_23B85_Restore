@interface RUIScrollableWelcomeController
- (void)_floatButtonTray;
- (void)_inlineButtonTray;
- (void)_layoutButtonTray;
- (void)_setupScrollView;
- (void)_updateParentPreferredContentSize;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RUIScrollableWelcomeController

- (void)_layoutButtonTray
{
  v5.receiver = self;
  v5.super_class = RUIScrollableWelcomeController;
  [(RUIScrollableWelcomeController *)&v5 _layoutButtonTray];
  if ([(RUIScrollableWelcomeController *)self shouldUseCustomButtonTray])
  {
    buttonTray = [(RUIScrollableWelcomeController *)self buttonTray];
    stackView = [buttonTray stackView];
    [stackView setAlignment:3];
  }
}

- (void)_setupScrollView
{
  v43[4] = *MEMORY[0x277D85DE8];
  contentController = [(RUIScrollableWelcomeController *)self contentController];
  [(RUIScrollableWelcomeController *)self addChildViewController:contentController];

  view = [(RUIScrollableWelcomeController *)self view];
  contentController2 = [(RUIScrollableWelcomeController *)self contentController];
  view2 = [contentController2 view];
  [view addSubview:view2];

  contentController3 = [(RUIScrollableWelcomeController *)self contentController];
  view3 = [contentController3 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [[RUIScrollViewWeakLayoutObserver alloc] initWithLayoutObserver:self];
  scrollViewLayoutObserver = self->_scrollViewLayoutObserver;
  self->_scrollViewLayoutObserver = v9;

  v11 = self->_scrollViewLayoutObserver;
  scrollView = [(RUIScrollableWelcomeController *)self scrollView];
  [scrollView _setLayoutObserver:v11];

  view4 = [(RUIScrollableWelcomeController *)self view];
  bottomAnchor = [view4 bottomAnchor];
  contentController4 = [(RUIScrollableWelcomeController *)self contentController];
  view5 = [contentController4 view];
  bottomAnchor2 = [view5 bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  LODWORD(v18) = 1144750080;
  [v42 setPriority:v18];
  contentController5 = [(RUIScrollableWelcomeController *)self contentController];
  [contentController5 didMoveToParentViewController:self];

  v34 = MEMORY[0x277CCAAD0];
  view6 = [(RUIScrollableWelcomeController *)self view];
  topAnchor = [view6 topAnchor];
  contentController6 = [(RUIScrollableWelcomeController *)self contentController];
  view7 = [contentController6 view];
  topAnchor2 = [view7 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[0] = v36;
  view8 = [(RUIScrollableWelcomeController *)self view];
  leadingAnchor = [view8 leadingAnchor];
  contentController7 = [(RUIScrollableWelcomeController *)self contentController];
  view9 = [contentController7 view];
  leadingAnchor2 = [view9 leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v43[1] = v21;
  view10 = [(RUIScrollableWelcomeController *)self view];
  trailingAnchor = [view10 trailingAnchor];
  contentController8 = [(RUIScrollableWelcomeController *)self contentController];
  view11 = [contentController8 view];
  trailingAnchor2 = [view11 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v43[2] = v27;
  v43[3] = v42;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
  [v34 activateConstraints:v28];

  view12 = [(RUIScrollableWelcomeController *)self view];
  buttonTray = [(RUIScrollableWelcomeController *)self buttonTray];
  [view12 addSubview:buttonTray];

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
  scrollView = [(RUIScrollableWelcomeController *)self scrollView];
  [scrollView contentSize];
  v5 = v4;
  scrollView2 = [(RUIScrollableWelcomeController *)self scrollView];
  [scrollView2 contentInset];
  v8 = v5 + v7;
  scrollView3 = [(RUIScrollableWelcomeController *)self scrollView];
  [scrollView3 contentInset];
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
  buttonTray = [(RUIScrollableWelcomeController *)self buttonTray];
  [buttonTray removeFromSuperview];

  view = [(RUIScrollableWelcomeController *)self view];
  buttonTray2 = [(RUIScrollableWelcomeController *)self buttonTray];
  [view addSubview:buttonTray2];

  view2 = [(RUIScrollableWelcomeController *)self view];
  bottomAnchor = [view2 bottomAnchor];

  tabBarController = [(RUIScrollableWelcomeController *)self tabBarController];

  if (tabBarController)
  {
    view3 = [(RUIScrollableWelcomeController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];

    bottomAnchor = bottomAnchor2;
  }

  v27 = bottomAnchor;
  v24 = MEMORY[0x277CCAAD0];
  buttonTray3 = [(RUIScrollableWelcomeController *)self buttonTray];
  bottomAnchor3 = [buttonTray3 bottomAnchor];
  v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor constant:0.0];
  v33[0] = v30;
  buttonTray4 = [(RUIScrollableWelcomeController *)self buttonTray];
  leadingAnchor = [buttonTray4 leadingAnchor];
  view4 = [(RUIScrollableWelcomeController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v33[1] = v23;
  buttonTray5 = [(RUIScrollableWelcomeController *)self buttonTray];
  trailingAnchor = [buttonTray5 trailingAnchor];
  view5 = [(RUIScrollableWelcomeController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  v33[2] = v15;
  buttonTray6 = [(RUIScrollableWelcomeController *)self buttonTray];
  topAnchor = [buttonTray6 topAnchor];
  scrollView = [(RUIScrollableWelcomeController *)self scrollView];
  bottomAnchor4 = [scrollView bottomAnchor];
  v20 = [topAnchor constraintEqualToAnchor:bottomAnchor4 constant:0.0];
  v33[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [v24 activateConstraints:v21];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = RUIScrollableWelcomeController;
  [(RUIScrollableWelcomeController *)&v3 viewWillAppear:appear];
}

@end