@interface _UINavigationBarVisualProviderModernCarPlay
- (BOOL)navigationItemIsBackItem:(id)item;
- (BOOL)navigationItemIsTopItem:(id)item;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIBarButtonItemAppearanceStorage)appearanceStorage;
- (id)defaultFontDescriptor;
- (void)__backButtonAction;
- (void)_configureBackground;
- (void)_installGradientLayerMaskForClippingView:(id)view;
- (void)_updateContentAnimated:(BOOL)animated completion:(id)completion direction:(unint64_t)direction;
- (void)_updateContentForTopItem:(id)item backItem:(id)backItem animated:(BOOL)animated direction:(unint64_t)direction;
- (void)navigationBarInvalidatedResolvedLayoutMargins;
- (void)navigationItemUpdatedBackButtonContent:(id)content animated:(BOOL)animated;
- (void)navigationItemUpdatedContentLayout:(id)layout animated:(BOOL)animated;
- (void)navigationItemUpdatedLeftBarButtonItems:(id)items animated:(BOOL)animated;
- (void)navigationItemUpdatedRightBarButtonItems:(id)items animated:(BOOL)animated;
- (void)navigationItemUpdatedTitleContent:(id)content animated:(BOOL)animated;
- (void)prepare;
- (void)provideViewsForContents:(id)contents topItem:(id)item backItem:(id)backItem;
- (void)setupTopNavigationItem;
- (void)stackDidChangeFrom:(id)from;
- (void)teardown;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTopNavigationItemAnimated:(BOOL)animated;
@end

@implementation _UINavigationBarVisualProviderModernCarPlay

- (void)_configureBackground
{
  v18[2] = *MEMORY[0x1E69E9840];
  navigationBar = [(_UINavigationBarVisualProvider *)self navigationBar];
  barStyle = [navigationBar barStyle];

  if (barStyle == 4)
  {
    backgroundView = [(_UINavigationBarVisualProviderModernCarPlay *)self backgroundView];
    v6 = +[UIColor clearColor];
    [backgroundView setBackgroundColor:v6];

    backgroundView2 = [(_UINavigationBarVisualProviderModernCarPlay *)self backgroundView];
    [backgroundView2 setBackgroundEffects:MEMORY[0x1E695E0F0]];
  }

  else
  {
    navigationBar2 = [(_UINavigationBarVisualProvider *)self navigationBar];
    traitCollection = [navigationBar2 traitCollection];
    v9 = dbl_18A67B790[[traitCollection accessibilityContrast] == 1];

    v10 = +[UIColor tableBackgroundColor];
    v11 = [v10 colorWithAlphaComponent:v9];
    backgroundView3 = [(_UINavigationBarVisualProviderModernCarPlay *)self backgroundView];
    [backgroundView3 setBackgroundColor:v11];

    v13 = [UIColorEffect colorEffectSaturate:1.5];
    v14 = [UIBlurEffect effectWithBlurRadius:10.0];
    backgroundView4 = [(_UINavigationBarVisualProviderModernCarPlay *)self backgroundView];
    v18[0] = v13;
    v18[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    [backgroundView4 setBackgroundEffects:v16];
  }
}

- (void)setupTopNavigationItem
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:topItem backItem:backItem animated:0 direction:0];
}

- (void)prepare
{
  v220[2] = *MEMORY[0x1E69E9840];
  if (![(_UINavigationBarVisualProviderModernCarPlay *)self havePrepared])
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self setHavePrepared:1];
    v218.receiver = self;
    v218.super_class = _UINavigationBarVisualProviderModernCarPlay;
    [(_UINavigationBarVisualProvider *)&v218 prepare];
    [(UIView *)self->super._navigationBar setLayoutMargins:0.0, 0.0, 0.0, 0.0];
    v3 = +[UIColor clearColor];
    [(UIView *)self->super._navigationBar setBackgroundColor:v3];

    v4 = objc_alloc_init(UIVisualEffectView);
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UINavigationBarVisualProviderModernCarPlay *)self setBackgroundView:v4];
    v217 = v4;
    [(UIView *)self->super._navigationBar addSubview:v4];
    [(_UINavigationBarVisualProviderModernCarPlay *)self _configureBackground];
    v5 = objc_alloc_init(UIView);
    [(_UINavigationBarVisualProviderModernCarPlay *)self setContentView:v5];

    contentView = [(_UINavigationBarVisualProviderModernCarPlay *)self contentView];
    [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

    navigationBar = self->super._navigationBar;
    contentView2 = [(_UINavigationBarVisualProviderModernCarPlay *)self contentView];
    [(UIView *)navigationBar addSubview:contentView2];

    v9 = [_UICarTitleView alloc];
    v10 = [(UIView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_UINavigationBarVisualProviderModernCarPlay *)self setTitleView:v10];

    titleView = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [titleView setTranslatesAutoresizingMaskIntoConstraints:0];

    titleView2 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    LODWORD(v13) = 1144750080;
    [titleView2 setContentCompressionResistancePriority:0 forAxis:v13];

    titleView3 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    LODWORD(v15) = 1111752704;
    [titleView3 setContentHuggingPriority:0 forAxis:v15];

    contentView3 = [(_UINavigationBarVisualProviderModernCarPlay *)self contentView];
    titleView4 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [contentView3 addSubview:titleView4];

    v18 = _newButtonBar(self);
    [(_UINavigationBarVisualProviderModernCarPlay *)self setLeadingBar:v18];

    v19 = self->super._navigationBar;
    leadingBar = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBar];
    view = [leadingBar view];
    [(UIView *)v19 addSubview:view];

    v22 = _newButtonBar(self);
    [(_UINavigationBarVisualProviderModernCarPlay *)self setTrailingBar:v22];

    v23 = self->super._navigationBar;
    trailingBar = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBar];
    view2 = [trailingBar view];
    [(UIView *)v23 addSubview:view2];

    selfCopy = self;
    v27 = [_UIButtonBarButton alloc];
    v28 = objc_alloc_init(_UIButtonBarButtonVisualProviderCarPlay);
    v29 = [(_UIButtonBarButton *)v27 initWithVisualProvider:v28];

    [(UIView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v30) = 1144586240;
    [(UIView *)v29 setContentCompressionResistancePriority:0 forAxis:v30];
    [(UIControl *)v29 addTarget:selfCopy action:sel___backButtonAction forControlEvents:0x2000];

    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setBackBarButton:v29];
    contentView4 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy contentView];
    backBarButton = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy backBarButton];
    [contentView4 addSubview:backBarButton];

    [(UIView *)self->super._navigationBar _setWantsAutolayout];
    if ([(UIView *)self->super._navigationBar translatesAutoresizingMaskIntoConstraints])
    {
      [(UIView *)self->super._navigationBar _setHostsLayoutEngine:1];
    }

    leadingBar2 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy leadingBar];
    view3 = [leadingBar2 view];
    leadingAnchor = [view3 leadingAnchor];
    safeAreaLayoutGuide = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setLeadingBarConstraint:v38];

    leadingBar3 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy leadingBar];
    view4 = [leadingBar3 view];
    widthAnchor = [view4 widthAnchor];
    v42 = [widthAnchor constraintEqualToConstant:0.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setLeadingBarNoItemsConstraint:v42];

    trailingBar2 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy trailingBar];
    view5 = [trailingBar2 view];
    widthAnchor2 = [view5 widthAnchor];
    v46 = [widthAnchor2 constraintEqualToConstant:0.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setTrailingBarNoItemsConstraint:v46];

    backBarButton2 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy backBarButton];
    leadingAnchor3 = [backBarButton2 leadingAnchor];
    safeAreaLayoutGuide2 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
    v47 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v220[0] = v47;
    backBarButton3 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy backBarButton];
    trailingAnchor = [backBarButton3 trailingAnchor];
    leadingBar4 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy leadingBar];
    view6 = [leadingBar4 view];
    leadingAnchor5 = [view6 leadingAnchor];
    v53 = [trailingAnchor constraintEqualToAnchor:leadingAnchor5];
    v220[1] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v220 count:2];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setBackButtonConstraints:v54];

    titleView5 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy titleView];
    leadingAnchor6 = [titleView5 leadingAnchor];
    safeAreaLayoutGuide3 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    leadingAnchor7 = [safeAreaLayoutGuide3 leadingAnchor];
    v59 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setLargeTitleLeadingConstraint:v59];

    titleView6 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy titleView];
    trailingAnchor2 = [titleView6 trailingAnchor];
    safeAreaLayoutGuide4 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    trailingAnchor3 = [safeAreaLayoutGuide4 trailingAnchor];
    v64 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setLargeTitleTrailingConstraint:v64];

    titleView7 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy titleView];
    centerXAnchor = [titleView7 centerXAnchor];
    safeAreaLayoutGuide5 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    centerXAnchor2 = [safeAreaLayoutGuide5 centerXAnchor];
    v69 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setRegularTitleConstraint:v69];

    leadingBar5 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy leadingBar];
    view7 = [leadingBar5 view];
    trailingAnchor4 = [view7 trailingAnchor];
    titleView8 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy titleView];
    leadingAnchor8 = [titleView8 leadingAnchor];
    v75 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:leadingAnchor8 constant:-12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setLeadingBarWithTitleTrailingConstraint:v75];

    leadingBar6 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy leadingBar];
    view8 = [leadingBar6 view];
    trailingAnchor5 = [view8 trailingAnchor];
    trailingBar3 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy trailingBar];
    view9 = [trailingBar3 view];
    leadingAnchor9 = [view9 leadingAnchor];
    v82 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor9 constant:-12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setLeadingBarWithNoTitleTrailingConstraint:v82];

    trailingBar4 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy trailingBar];
    view10 = [trailingBar4 view];
    leadingAnchor10 = [view10 leadingAnchor];
    titleView9 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy titleView];
    trailingAnchor6 = [titleView9 trailingAnchor];
    v88 = [leadingAnchor10 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setTrailingBarWithTitleLeadingConstraint:v88];

    trailingBar5 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy trailingBar];
    view11 = [trailingBar5 view];
    leadingAnchor11 = [view11 leadingAnchor];
    leadingBar7 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy leadingBar];
    view12 = [leadingBar7 view];
    trailingAnchor7 = [view12 trailingAnchor];
    v95 = [leadingAnchor11 constraintGreaterThanOrEqualToAnchor:trailingAnchor7 constant:12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setTrailingBarWithNoTitleLeadingConstraint:v95];

    trailingBar6 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy trailingBar];
    view13 = [trailingBar6 view];
    trailingAnchor8 = [view13 trailingAnchor];
    safeAreaLayoutGuide6 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    trailingAnchor9 = [safeAreaLayoutGuide6 trailingAnchor];
    v101 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy setTrailingBarConstraint:v101];

    v102 = objc_alloc_init(UIFocusContainerGuide);
    focusContainerGuide = selfCopy->_focusContainerGuide;
    selfCopy->_focusContainerGuide = v102;

    v104 = self->super._navigationBar;
    focusContainerGuide = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy focusContainerGuide];
    [(UIView *)v104 addLayoutGuide:focusContainerGuide];

    v168 = MEMORY[0x1E69977A0];
    contentView5 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy contentView];
    topAnchor = [contentView5 topAnchor];
    safeAreaLayoutGuide7 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide7 topAnchor];
    v208 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v219[0] = v208;
    contentView6 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy contentView];
    bottomAnchor = [contentView6 bottomAnchor];
    safeAreaLayoutGuide8 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide8 bottomAnchor];
    v203 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v219[1] = v203;
    contentView7 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy contentView];
    leftAnchor = [contentView7 leftAnchor];
    safeAreaLayoutGuide9 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    leftAnchor2 = [safeAreaLayoutGuide9 leftAnchor];
    v198 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v219[2] = v198;
    contentView8 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy contentView];
    rightAnchor = [contentView8 rightAnchor];
    safeAreaLayoutGuide10 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    rightAnchor2 = [safeAreaLayoutGuide10 rightAnchor];
    v193 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v219[3] = v193;
    backBarButton4 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy backBarButton];
    topAnchor3 = [backBarButton4 topAnchor];
    contentView9 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy contentView];
    topAnchor4 = [contentView9 topAnchor];
    v188 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v219[4] = v188;
    backBarButton5 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy backBarButton];
    bottomAnchor3 = [backBarButton5 bottomAnchor];
    contentView10 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy contentView];
    bottomAnchor4 = [contentView10 bottomAnchor];
    v183 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v219[5] = v183;
    leadingBarConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy leadingBarConstraint];
    v219[6] = leadingBarConstraint;
    leadingBar8 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy leadingBar];
    view14 = [leadingBar8 view];
    topAnchor5 = [view14 topAnchor];
    safeAreaLayoutGuide11 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    topAnchor6 = [safeAreaLayoutGuide11 topAnchor];
    v176 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v219[7] = v176;
    leadingBar9 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy leadingBar];
    view15 = [leadingBar9 view];
    bottomAnchor5 = [view15 bottomAnchor];
    safeAreaLayoutGuide12 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    bottomAnchor6 = [safeAreaLayoutGuide12 bottomAnchor];
    v170 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v219[8] = v170;
    leadingBarWithTitleTrailingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy leadingBarWithTitleTrailingConstraint];
    v219[9] = leadingBarWithTitleTrailingConstraint;
    titleView10 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy titleView];
    centerYAnchor = [titleView10 centerYAnchor];
    contentView11 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy contentView];
    centerYAnchor2 = [contentView11 centerYAnchor];
    v163 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v219[10] = v163;
    titleView11 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy titleView];
    heightAnchor = [titleView11 heightAnchor];
    contentView12 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy contentView];
    heightAnchor2 = [contentView12 heightAnchor];
    v158 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v219[11] = v158;
    regularTitleConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy regularTitleConstraint];
    v219[12] = regularTitleConstraint;
    trailingBarWithTitleLeadingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy trailingBarWithTitleLeadingConstraint];
    v219[13] = trailingBarWithTitleLeadingConstraint;
    trailingBarConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy trailingBarConstraint];
    v219[14] = trailingBarConstraint;
    trailingBar7 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy trailingBar];
    view16 = [trailingBar7 view];
    topAnchor7 = [view16 topAnchor];
    safeAreaLayoutGuide13 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    topAnchor8 = [safeAreaLayoutGuide13 topAnchor];
    v149 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v219[15] = v149;
    trailingBar8 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy trailingBar];
    view17 = [trailingBar8 view];
    bottomAnchor7 = [view17 bottomAnchor];
    safeAreaLayoutGuide14 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    bottomAnchor8 = [safeAreaLayoutGuide14 bottomAnchor];
    v143 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v219[16] = v143;
    backgroundView = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy backgroundView];
    topAnchor9 = [backgroundView topAnchor];
    topAnchor10 = [(UIView *)self->super._navigationBar topAnchor];
    v139 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v219[17] = v139;
    backgroundView2 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy backgroundView];
    bottomAnchor9 = [backgroundView2 bottomAnchor];
    bottomAnchor10 = [(UIView *)self->super._navigationBar bottomAnchor];
    v135 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    v219[18] = v135;
    backgroundView3 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy backgroundView];
    leftAnchor3 = [backgroundView3 leftAnchor];
    leftAnchor4 = [(UIView *)self->super._navigationBar leftAnchor];
    v131 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v219[19] = v131;
    backgroundView4 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy backgroundView];
    rightAnchor3 = [backgroundView4 rightAnchor];
    rightAnchor4 = [(UIView *)self->super._navigationBar rightAnchor];
    v127 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v219[20] = v127;
    focusContainerGuide2 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy focusContainerGuide];
    leadingAnchor12 = [focusContainerGuide2 leadingAnchor];
    safeAreaLayoutGuide15 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    leadingAnchor13 = [safeAreaLayoutGuide15 leadingAnchor];
    v122 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
    v219[21] = v122;
    focusContainerGuide3 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy focusContainerGuide];
    trailingAnchor10 = [focusContainerGuide3 trailingAnchor];
    safeAreaLayoutGuide16 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    trailingAnchor11 = [safeAreaLayoutGuide16 trailingAnchor];
    v117 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v219[22] = v117;
    focusContainerGuide4 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy focusContainerGuide];
    topAnchor11 = [focusContainerGuide4 topAnchor];
    safeAreaLayoutGuide17 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    topAnchor12 = [safeAreaLayoutGuide17 topAnchor];
    v109 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
    v219[23] = v109;
    focusContainerGuide5 = [(_UINavigationBarVisualProviderModernCarPlay *)selfCopy focusContainerGuide];
    bottomAnchor11 = [focusContainerGuide5 bottomAnchor];
    safeAreaLayoutGuide18 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    bottomAnchor12 = [safeAreaLayoutGuide18 bottomAnchor];
    v114 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
    v219[24] = v114;
    v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v219 count:25];
    [v168 activateConstraints:v115];
  }
}

- (void)teardown
{
  titleView = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
  [titleView removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setTitleView:0];
  leadingBar = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBar];
  view = [leadingBar view];
  [view removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setLeadingBar:0];
  trailingBar = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBar];
  view2 = [trailingBar view];
  [view2 removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setTrailingBar:0];
  backBarButton = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
  [backBarButton removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setBackBarButton:0];
  backgroundView = [(_UINavigationBarVisualProviderModernCarPlay *)self backgroundView];
  [backgroundView removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setBackgroundView:0];
  contentView = [(_UINavigationBarVisualProviderModernCarPlay *)self contentView];
  [contentView removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setContentView:0];
  debugViews = [(_UINavigationBarVisualProviderModernCarPlay *)self debugViews];
  [debugViews enumerateObjectsUsingBlock:&__block_literal_global_240];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setDebugViews:0];
  navigationBar = self->super._navigationBar;
  focusContainerGuide = [(_UINavigationBarVisualProviderModernCarPlay *)self focusContainerGuide];
  [(UIView *)navigationBar removeLayoutGuide:focusContainerGuide];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setFocusContainerGuide:0];
  [(_UINavigationBarVisualProviderModernCarPlay *)self setLeadingBarConstraint:0];
  [(_UINavigationBarVisualProviderModernCarPlay *)self setLeadingBarNoItemsConstraint:0];
  [(_UINavigationBarVisualProviderModernCarPlay *)self setTrailingBarConstraint:0];
  [(_UINavigationBarVisualProviderModernCarPlay *)self setTrailingBarNoItemsConstraint:0];
  [(_UINavigationBarVisualProviderModernCarPlay *)self setBackButtonConstraints:0];
  [(_UINavigationBarVisualProviderModernCarPlay *)self setLargeTitleLeadingConstraint:0];
  [(_UINavigationBarVisualProviderModernCarPlay *)self setLargeTitleTrailingConstraint:0];
  [(_UINavigationBarVisualProviderModernCarPlay *)self setRegularTitleConstraint:0];
  [(_UINavigationBarVisualProviderModernCarPlay *)self setHavePrepared:0];
  v14.receiver = self;
  v14.super_class = _UINavigationBarVisualProviderModernCarPlay;
  [(_UINavigationBarVisualProvider *)&v14 teardown];
}

- (void)provideViewsForContents:(id)contents topItem:(id)item backItem:(id)backItem
{
  v12[1] = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  titleView = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
  [contentsCopy setTitleView:titleView];

  backBarButton = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
  isHidden = [backBarButton isHidden];

  if ((isHidden & 1) == 0)
  {
    backBarButton2 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    v12[0] = backBarButton2;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [contentsCopy setViewsRepresentingBackButton:v11];
  }
}

- (void)stackDidChangeFrom:(id)from
{
  [(_UINavigationBarItemStack *)self->super._stack setChangeObserver:self];

  [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentAnimated:0 completion:0 direction:0];
}

- (void)updateTopNavigationItemAnimated:(BOOL)animated
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:topItem backItem:backItem animated:0 direction:0];
}

- (void)navigationBarInvalidatedResolvedLayoutMargins
{
  [(UINavigationBar *)self->super._navigationBar _resolvedLayoutMargins];
  v5 = v4;
  if (v3 == 0.0)
  {
    v6 = 12.0;
  }

  else
  {
    v6 = v3;
  }

  leadingBarConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarConstraint];
  [leadingBarConstraint setConstant:v6];

  if (v5 == 0.0)
  {
    v8 = -12.0;
  }

  else
  {
    v8 = -v5;
  }

  trailingBarConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarConstraint];
  [trailingBarConstraint setConstant:v8];
}

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = -1.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (fits.width == 0.0)
  {
    superview = [(UIView *)self->super._navigationBar superview];
    v5 = superview;
    if (superview)
    {
      [superview bounds];
      width = v6;
    }
  }

  v7 = 44.0;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarVisualProviderModernCarPlay;
  [(_UINavigationBarVisualProvider *)&v4 traitCollectionDidChange:change];
  [(_UINavigationBarVisualProviderModernCarPlay *)self _configureBackground];
}

- (void)__backButtonAction
{
  navigationBar = self->super._navigationBar;
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  _effectiveBackBarButtonItem = [backItem _effectiveBackBarButtonItem];
  [(UINavigationBar *)navigationBar _sendNavigationPopForBackBarButtonItem:_effectiveBackBarButtonItem];
}

- (void)_updateContentForTopItem:(id)item backItem:(id)backItem animated:(BOOL)animated direction:(unint64_t)direction
{
  v307[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  backItemCopy = backItem;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  titleView = [itemCopy titleView];

  if (titleView)
  {
    titleView2 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [titleView2 setHidden:0];

    titleView3 = [itemCopy titleView];
    titleView4 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [titleView4 setView:titleView3];

    leadingBarWithNoTitleTrailingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithNoTitleTrailingConstraint];
    v307[0] = leadingBarWithNoTitleTrailingConstraint;
    trailingBarWithNoTitleLeadingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithNoTitleLeadingConstraint];
    v307[1] = trailingBarWithNoTitleLeadingConstraint;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v307 count:2];
    [v10 addObjectsFromArray:v18];

    leadingBarWithTitleTrailingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithTitleTrailingConstraint];
    v306[0] = leadingBarWithTitleTrailingConstraint;
    trailingBarWithTitleLeadingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithTitleLeadingConstraint];
    v306[1] = trailingBarWithTitleLeadingConstraint;
    v21 = v306;
  }

  else
  {
    title = [itemCopy title];
    if (title && (v23 = title, [itemCopy title], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToString:", &stru_1EFB14550), v24, v23, (v25 & 1) == 0))
    {
      titleView5 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [titleView5 setHidden:0];

      title2 = [itemCopy title];
      titleView6 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [titleView6 setText:title2];

      leadingBarWithNoTitleTrailingConstraint2 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithNoTitleTrailingConstraint];
      v305[0] = leadingBarWithNoTitleTrailingConstraint2;
      trailingBarWithNoTitleLeadingConstraint2 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithNoTitleLeadingConstraint];
      v305[1] = trailingBarWithNoTitleLeadingConstraint2;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v305 count:2];
      [v10 addObjectsFromArray:v35];

      leadingBarWithTitleTrailingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithTitleTrailingConstraint];
      v304[0] = leadingBarWithTitleTrailingConstraint;
      trailingBarWithTitleLeadingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithTitleLeadingConstraint];
      v304[1] = trailingBarWithTitleLeadingConstraint;
      v21 = v304;
    }

    else
    {
      titleView7 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [titleView7 setHidden:1];

      leadingBarWithTitleTrailingConstraint2 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithTitleTrailingConstraint];
      v303[0] = leadingBarWithTitleTrailingConstraint2;
      trailingBarWithTitleLeadingConstraint2 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithTitleLeadingConstraint];
      v303[1] = trailingBarWithTitleLeadingConstraint2;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v303 count:2];
      [v10 addObjectsFromArray:v29];

      leadingBarWithTitleTrailingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithNoTitleTrailingConstraint];
      v302[0] = leadingBarWithTitleTrailingConstraint;
      trailingBarWithTitleLeadingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithNoTitleLeadingConstraint];
      v302[1] = trailingBarWithTitleLeadingConstraint;
      v21 = v302;
    }
  }

  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v11 addObjectsFromArray:v36];

  _effectiveBackBarButtonItem = [backItemCopy _effectiveBackBarButtonItem];
  v270 = backItemCopy;

  hidesBackButton = [itemCopy hidesBackButton];
  [itemCopy leftItemsSupplementBackButton];
  leftBarButtonItems = [itemCopy leftBarButtonItems];
  v40 = leftBarButtonItems;
  v41 = MEMORY[0x1E695E0F0];
  if (leftBarButtonItems)
  {
    v42 = leftBarButtonItems;
  }

  else
  {
    v42 = MEMORY[0x1E695E0F0];
  }

  v43 = v42;

  rightBarButtonItems = [itemCopy rightBarButtonItems];
  v45 = rightBarButtonItems;
  if (!rightBarButtonItems)
  {
    rightBarButtonItems = v41;
  }

  reverseObjectEnumerator = [rightBarButtonItems reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  backBarButton = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
  isHidden = [backBarButton isHidden];

  v281 = v43;
  if ([v43 count])
  {
    v49 = v10;
  }

  else
  {
    v49 = v11;
  }

  leadingBarNoItemsConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarNoItemsConstraint];
  [v49 addObject:leadingBarNoItemsConstraint];

  if ([allObjects count])
  {
    v51 = v10;
  }

  else
  {
    v51 = v11;
  }

  trailingBarNoItemsConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarNoItemsConstraint];
  [v51 addObject:trailingBarNoItemsConstraint];

  backBarButton2 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
  v54 = backBarButton2;
  v279 = _effectiveBackBarButtonItem;
  if (!_effectiveBackBarButtonItem || (hidesBackButton & 1) != 0)
  {
    [backBarButton2 setHidden:1];

    backButtonConstraints = [(_UINavigationBarVisualProviderModernCarPlay *)self backButtonConstraints];
    [v10 addObjectsFromArray:backButtonConstraints];

    leadingBarConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarConstraint];
    [v11 addObject:leadingBarConstraint];

    v62 = v43;
    if ([v43 count])
    {
      regularTitleConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self regularTitleConstraint];
      [v11 addObject:regularTitleConstraint];

      largeTitleLeadingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleLeadingConstraint];
      [v10 addObject:largeTitleLeadingConstraint];

      largeTitleTrailingConstraint = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleTrailingConstraint];
      [v10 addObject:largeTitleTrailingConstraint];

      titleView8 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [titleView8 setLargeText:0];
    }

    else
    {
      largeTitleLeadingConstraint2 = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleLeadingConstraint];
      [v11 addObject:largeTitleLeadingConstraint2];

      regularTitleConstraint2 = [(_UINavigationBarVisualProviderModernCarPlay *)self regularTitleConstraint];
      [v10 addObject:regularTitleConstraint2];

      titleView9 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [titleView9 setLargeText:1];

      v71 = [allObjects count];
      titleView8 = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleTrailingConstraint];
      if (v71)
      {
        v72 = v10;
      }

      else
      {
        v72 = v11;
      }

      [v72 addObject:titleView8];
    }
  }

  else
  {
    [backBarButton2 setHidden:0];

    backBarButton3 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    [backBarButton3 configureBackButtonFromBarItem:_effectiveBackBarButtonItem withAppearanceDelegate:self];

    backButtonConstraints2 = [(_UINavigationBarVisualProviderModernCarPlay *)self backButtonConstraints];
    [v11 addObjectsFromArray:backButtonConstraints2];

    regularTitleConstraint3 = [(_UINavigationBarVisualProviderModernCarPlay *)self regularTitleConstraint];
    [v11 addObject:regularTitleConstraint3];

    largeTitleLeadingConstraint3 = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleLeadingConstraint];
    [v10 addObject:largeTitleLeadingConstraint3];

    largeTitleTrailingConstraint2 = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleTrailingConstraint];
    [v10 addObject:largeTitleTrailingConstraint2];

    leadingBarConstraint2 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarConstraint];
    [v10 addObject:leadingBarConstraint2];

    titleView8 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [titleView8 setLargeText:0];
    v62 = v43;
  }

  [MEMORY[0x1E69977A0] deactivateConstraints:v10];
  [MEMORY[0x1E69977A0] activateConstraints:v11];
  v73 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:v62 representativeItem:0];
  v74 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:allObjects representativeItem:0];
  v75 = v74;
  v278 = v73;
  if (!animated)
  {
    v301 = v73;
    v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v301 count:1];
    leadingBar = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBar];
    [leadingBar setBarButtonGroups:v90];

    v300 = v75;
    v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v300 count:1];
    trailingBar = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBar];
    [trailingBar setBarButtonGroups:v92];
LABEL_87:

    goto LABEL_88;
  }

  v272 = v74;
  leadingBar2 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBar];
  view = [leadingBar2 view];
  v293[0] = MEMORY[0x1E69E9820];
  v293[1] = 3221225472;
  v277 = allObjects;
  v293[2] = __100___UINavigationBarVisualProviderModernCarPlay__updateContentForTopItem_backItem_animated_direction___block_invoke;
  v293[3] = &unk_1E70F35B8;
  v293[4] = self;
  v294 = v73;
  v75 = v272;
  [UIView transitionWithView:view duration:5242880 options:v293 animations:&__block_literal_global_19 completion:0.35];

  v62 = v281;
  trailingBar2 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBar];
  view2 = [trailingBar2 view];
  v291[0] = MEMORY[0x1E69E9820];
  v291[1] = 3221225472;
  v291[2] = __100___UINavigationBarVisualProviderModernCarPlay__updateContentForTopItem_backItem_animated_direction___block_invoke_3;
  v291[3] = &unk_1E70F35B8;
  v291[4] = self;
  v292 = v272;
  [UIView transitionWithView:view2 duration:5242880 options:v291 animations:&__block_literal_global_21_2 completion:0.35];

  if (direction)
  {
    backBarButton4 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    visualProvider = [backBarButton4 visualProvider];
    contentView = [visualProvider contentView];

    v83 = [UIView alloc];
    v84 = [(UIView *)v83 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v84 setClipsToBounds:1];
    navigationBar = [(_UINavigationBarVisualProvider *)self navigationBar];
    v273 = v84;
    [navigationBar addSubview:v84];

    backBarButton5 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    LODWORD(v84) = [backBarButton5 isHidden];

    v269 = contentView;
    v251 = v11;
    if (v84)
    {
      leadingBar3 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBar];
      view3 = [leadingBar3 view];
      trailingAnchor = [view3 trailingAnchor];
    }

    else
    {
      trailingAnchor = [contentView leadingAnchor];
    }

    v94 = objc_alloc_init(UILayoutGuide);
    navigationBar2 = [(_UINavigationBarVisualProvider *)self navigationBar];
    [navigationBar2 addLayoutGuide:v94];

    trailingAnchor2 = [(UILayoutGuide *)v94 trailingAnchor];
    trailingBar3 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBar];
    view4 = [trailingBar3 view];
    leadingAnchor = [view4 leadingAnchor];
    v100 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor];

    v258 = v100;
    LODWORD(v101) = 1148846080;
    [v100 setPriority:v101];
    v268 = v94;
    leadingAnchor2 = [(UILayoutGuide *)v94 leadingAnchor];
    v250 = trailingAnchor;
    v103 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor];

    LODWORD(v104) = 1148846080;
    [v103 setPriority:v104];
    backBarButton6 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    LOBYTE(trailingBar3) = [backBarButton6 isHidden];

    if ((trailingBar3 & 1) == 0)
    {
      [v103 setConstant:-4.0];
    }

    v252 = v10;
    v253 = itemCopy;
    v274 = objc_alloc_init(MEMORY[0x1E695DF70]);
    titleView10 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    v107 = [titleView10 snapshotViewAfterScreenUpdates:0];

    v254 = v107;
    if (v107)
    {
      [(UIView *)v107 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v273 addSubview:v107];
      centerXAnchor = [(UIView *)v107 centerXAnchor];
      titleView11 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      centerXAnchor2 = [titleView11 centerXAnchor];
      v111 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      v263 = v111;
      v299[0] = v111;
      heightAnchor = [(UIView *)v107 heightAnchor];
      titleView12 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [titleView12 frame];
      v113 = [heightAnchor constraintEqualToConstant:v112];
      v299[1] = v113;
      widthAnchor = [(UIView *)v107 widthAnchor];
      titleView13 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [titleView13 frame];
      v117 = [widthAnchor constraintEqualToConstant:v116];
      v299[2] = v117;
      centerYAnchor = [(UIView *)v107 centerYAnchor];
      centerYAnchor2 = [(UIView *)v273 centerYAnchor];
      [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v121 = v120 = v103;
      v299[3] = v121;
      v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v299 count:4];
      [v274 addObjectsFromArray:v122];

      v103 = v120;
    }

    else
    {
      v263 = 0;
    }

    v249 = v103;
    v298[0] = v103;
    v298[1] = v258;
    topAnchor = [(UILayoutGuide *)v268 topAnchor];
    navigationBar3 = [(_UINavigationBarVisualProvider *)self navigationBar];
    topAnchor2 = [navigationBar3 topAnchor];
    v126 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v298[2] = v126;
    bottomAnchor = [(UILayoutGuide *)v268 bottomAnchor];
    navigationBar4 = [(_UINavigationBarVisualProvider *)self navigationBar];
    bottomAnchor2 = [navigationBar4 bottomAnchor];
    v130 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v298[3] = v130;
    v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:v298 count:4];
    [v274 addObjectsFromArray:v131];

    v132 = objc_alloc_init(UIView);
    v133 = v273;
    [(UIView *)v273 addSubview:v132];
    v265 = v132;
    if (isHidden)
    {
      v262 = 0;
      v267 = 0;
      v134 = v269;
    }

    else
    {
      v134 = v269;
      v135 = [v269 snapshotViewAfterScreenUpdates:0];
      [v135 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v273 addSubview:v135];
      leadingAnchor3 = [v135 leadingAnchor];
      leadingAnchor4 = [(UIView *)v132 leadingAnchor];
      v138 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

      heightAnchor2 = [v135 heightAnchor];
      [v269 frame];
      v141 = [heightAnchor2 constraintEqualToConstant:v140];
      v297[0] = v141;
      widthAnchor2 = [v135 widthAnchor];
      [v269 frame];
      v144 = [widthAnchor2 constraintEqualToConstant:v143];
      v297[1] = v144;
      v262 = v138;
      v297[2] = v138;
      v267 = v135;
      topAnchor3 = [v135 topAnchor];
      topAnchor4 = [(UIView *)v132 topAnchor];
      v147 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v297[3] = v147;
      v148 = [MEMORY[0x1E695DEC8] arrayWithObjects:v297 count:4];
      [v274 addObjectsFromArray:v148];

      v133 = v273;
      v132 = v265;
    }

    [MEMORY[0x1E69977A0] activateConstraints:v274];
    navigationBar5 = [(_UINavigationBarVisualProvider *)self navigationBar];
    [navigationBar5 layoutIfNeeded];

    [(UILayoutGuide *)v268 layoutFrame];
    [(UIView *)v133 setFrame:?];
    [v134 frame];
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v157 = v156;
    backBarButton7 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    [(UIView *)v133 convertRect:backBarButton7 fromView:v151, v153, v155, v157];
    [(UIView *)v132 setFrame:?];

    [(_UINavigationBarVisualProviderModernCarPlay *)self _installGradientLayerMaskForClippingView:v133];
    titleView14 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    v160 = [titleView14 snapshotViewAfterScreenUpdates:1];

    [v160 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v133 addSubview:v160];
    if (direction == 1)
    {
      leadingAnchor5 = [v160 leadingAnchor];
    }

    else
    {
      leadingAnchor5 = [v160 leadingAnchor];
      if (v132)
      {
        leadingAnchor6 = [(UIView *)v132 leadingAnchor];
        goto LABEL_46;
      }
    }

    leadingAnchor6 = [(UIView *)v133 trailingAnchor];
LABEL_46:
    v163 = leadingAnchor6;
    v164 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

    v165 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v257 = v164;
    v296[0] = v164;
    heightAnchor3 = [v160 heightAnchor];
    titleView15 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [titleView15 frame];
    v167 = [heightAnchor3 constraintEqualToConstant:v166];
    v296[1] = v167;
    widthAnchor3 = [v160 widthAnchor];
    titleView16 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [titleView16 frame];
    v171 = [widthAnchor3 constraintEqualToConstant:v170];
    v296[2] = v171;
    v256 = v160;
    centerYAnchor3 = [v160 centerYAnchor];
    centerYAnchor4 = [(UIView *)v133 centerYAnchor];
    v174 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v296[3] = v174;
    v175 = [MEMORY[0x1E695DEC8] arrayWithObjects:v296 count:4];
    v255 = v165;
    [v165 addObjectsFromArray:v175];

    if (!v270)
    {
      v182 = 0;
      v271 = 0;
      v248 = 0;
      v178 = 0x1E6997000;
      v180 = v262;
      v179 = v263;
      v181 = v254;
      goto LABEL_50;
    }

    backBarButton8 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    isHidden2 = [backBarButton8 isHidden];

    v178 = 0x1E6997000;
    v180 = v262;
    v179 = v263;
    v181 = v254;
    if (isHidden2)
    {
      v182 = 0;
      v271 = 0;
      v248 = 0;
LABEL_50:
      v183 = v257;
      v184 = v255;
      goto LABEL_59;
    }

    backBarButton9 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    visualProvider2 = [backBarButton9 visualProvider];
    backIndicatorView = [visualProvider2 backIndicatorView];

    v188 = [backIndicatorView snapshotViewAfterScreenUpdates:1];
    navigationBar6 = [(_UINavigationBarVisualProvider *)self navigationBar];
    [navigationBar6 addSubview:v188];

    navigationBar7 = [(_UINavigationBarVisualProvider *)self navigationBar];
    v246 = backIndicatorView;
    [backIndicatorView frame];
    v192 = v191;
    v194 = v193;
    v196 = v195;
    v198 = v197;
    backBarButton10 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    [navigationBar7 convertRect:backBarButton10 fromView:{v192, v194, v196, v198}];
    [v188 setFrame:?];

    v200 = [v269 snapshotViewAfterScreenUpdates:1];
    [v200 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v273 addSubview:v200];
    v183 = v257;
    v248 = v188;
    if (direction == 1)
    {
      v201 = v265;
      if (!v254)
      {
        goto LABEL_57;
      }

      leadingAnchor7 = [v200 leadingAnchor];
      v203 = v254;
    }

    else
    {
      leadingAnchor7 = [v200 trailingAnchor];
      v201 = v265;
      v203 = v265;
    }

    leadingAnchor8 = [(UIView *)v203 leadingAnchor];
    v205 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];

    if (v205)
    {
      v206 = v255;
      v260 = v205;
      [v255 addObject:v205];
LABEL_58:
      heightAnchor4 = [v200 heightAnchor];
      [v269 frame];
      v208 = [heightAnchor4 constraintEqualToConstant:v207];
      v295[0] = v208;
      widthAnchor4 = [v200 widthAnchor];
      [v269 frame];
      v211 = [widthAnchor4 constraintEqualToConstant:v210];
      v295[1] = v211;
      v271 = v200;
      topAnchor5 = [v200 topAnchor];
      topAnchor6 = [(UIView *)v201 topAnchor];
      v214 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v295[2] = v214;
      v215 = [MEMORY[0x1E695DEC8] arrayWithObjects:v295 count:3];
      [v206 addObjectsFromArray:v215];

      v178 = 0x1E6997000uLL;
      v180 = v262;
      v179 = v263;
      v181 = v254;
      v184 = v206;
      v182 = v260;
LABEL_59:
      [*(v178 + 1952) activateConstraints:v184];
      navigationBar8 = [(_UINavigationBarVisualProvider *)self navigationBar];
      [navigationBar8 layoutIfNeeded];

      v217 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v218 = v217;
      allObjects = v277;
      if (v183)
      {
        [v217 addObject:v183];
      }

      if (v179)
      {
        [v218 addObject:v179];
      }

      if (v180)
      {
        [v218 addObject:v180];
      }

      if (v182)
      {
        [v218 addObject:v182];
      }

      v261 = v182;
      [*(v178 + 1952) deactivateConstraints:v218];
      v219 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v256)
      {
        centerXAnchor3 = [v256 centerXAnchor];
        titleView17 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
        centerXAnchor4 = [titleView17 centerXAnchor];
        v223 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
        [v219 addObject:v223];

        allObjects = v277;
      }

      if (direction == 2)
      {
        if (v267)
        {
          leadingAnchor9 = [v267 leadingAnchor];
          leadingAnchor10 = [v256 leadingAnchor];
          v226 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
          [v219 addObject:v226];

          allObjects = v277;
        }

        if (v181)
        {
          leadingAnchor11 = [(UIView *)v181 leadingAnchor];
          trailingAnchor3 = [(UIView *)v273 trailingAnchor];
          v229 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor3];
          [v219 addObject:v229];

          allObjects = v277;
        }

        if (!v271)
        {
          goto LABEL_84;
        }

        leadingAnchor12 = [v271 leadingAnchor];
        leadingAnchor13 = [(UIView *)v265 leadingAnchor];
        v232 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13 constant:0.0];
      }

      else
      {
        if (v261)
        {
          [v219 addObject:?];
        }

        if (v181 && v269)
        {
          leadingAnchor14 = [(UIView *)v181 leadingAnchor];
          leadingAnchor15 = [(UIView *)v265 leadingAnchor];
          v235 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
          [v219 addObject:v235];

          allObjects = v277;
        }

        if (!v267)
        {
          goto LABEL_84;
        }

        leadingAnchor12 = [v267 trailingAnchor];
        leadingAnchor13 = [(UIView *)v273 leadingAnchor];
        v232 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
      }

      v236 = v232;
      [v219 addObject:v232];

LABEL_84:
      [*(v178 + 1952) activateConstraints:v219];
      [v256 setAlpha:0.0];
      [v271 setAlpha:0.0];
      if (isHidden)
      {
        [v248 setAlpha:0.0];
      }

      contentView2 = [(_UINavigationBarVisualProviderModernCarPlay *)self contentView];
      [contentView2 setHidden:1];

      v285[0] = MEMORY[0x1E69E9820];
      v285[1] = 3221225472;
      v285[2] = __100___UINavigationBarVisualProviderModernCarPlay__updateContentForTopItem_backItem_animated_direction___block_invoke_5;
      v285[3] = &unk_1E7109190;
      v285[4] = self;
      v286 = v267;
      v287 = v181;
      v288 = v271;
      v289 = v256;
      v290 = v248;
      v282[0] = MEMORY[0x1E69E9820];
      v282[1] = 3221225472;
      v282[2] = __100___UINavigationBarVisualProviderModernCarPlay__updateContentForTopItem_backItem_animated_direction___block_invoke_6;
      v282[3] = &unk_1E70F4638;
      v282[4] = self;
      v283 = v273;
      v284 = v290;
      v238 = v290;
      v239 = v181;
      v240 = v273;
      v241 = v256;
      v242 = v271;
      v243 = v239;
      v244 = v267;
      [UIView animateWithDuration:0x20000 delay:v285 options:v282 animations:0.35 completion:0.0];

      v10 = v252;
      itemCopy = v253;
      trailingBar = v250;
      v11 = v251;
      v62 = v281;
      v75 = v272;
      v92 = v269;
      goto LABEL_87;
    }

LABEL_57:
    v260 = 0;
    v206 = v255;
    goto LABEL_58;
  }

LABEL_88:
}

- (void)_updateContentAnimated:(BOOL)animated completion:(id)completion direction:(unint64_t)direction
{
  animatedCopy = animated;
  completionCopy = completion;
  if (![(_UINavigationBarVisualProviderModernCarPlay *)self havePrepared])
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self prepare];
  }

  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:direction];
  if (completionCopy)
  {
    transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
    completionCopy[2](completionCopy, animatedCopy, transitionAssistant);
  }
}

- (BOOL)navigationItemIsTopItem:(id)item
{
  stack = self->super._stack;
  itemCopy = item;
  topItem = [(_UINavigationBarItemStack *)stack topItem];

  return topItem == itemCopy;
}

- (BOOL)navigationItemIsBackItem:(id)item
{
  stack = self->super._stack;
  itemCopy = item;
  backItem = [(_UINavigationBarItemStack *)stack backItem];

  return backItem == itemCopy;
}

- (void)navigationItemUpdatedTitleContent:(id)content animated:(BOOL)animated
{
  animatedCopy = animated;
  stack = self->super._stack;
  contentCopy = content;
  topItem = [(_UINavigationBarItemStack *)stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  state = [(_UINavigationBarItemStack *)self->super._stack state];

  if (state)
  {
    v10 = 0;
  }

  else
  {
    v10 = topItem == contentCopy;
  }

  if (v10)
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
  }
}

- (void)navigationItemUpdatedContentLayout:(id)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  stack = self->super._stack;
  layoutCopy = layout;
  topItem = [(_UINavigationBarItemStack *)stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  state = [(_UINavigationBarItemStack *)self->super._stack state];

  if (state)
  {
    v10 = 0;
  }

  else
  {
    v10 = topItem == layoutCopy;
  }

  if (v10)
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
  }
}

- (void)navigationItemUpdatedBackButtonContent:(id)content animated:(BOOL)animated
{
  animatedCopy = animated;
  stack = self->super._stack;
  contentCopy = content;
  topItem = [(_UINavigationBarItemStack *)stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  state = [(_UINavigationBarItemStack *)self->super._stack state];

  if (state)
  {
    v10 = 0;
  }

  else
  {
    v10 = backItem == contentCopy;
  }

  if (v10)
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
  }
}

- (void)navigationItemUpdatedLeftBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  stack = self->super._stack;
  itemsCopy = items;
  topItem = [(_UINavigationBarItemStack *)stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  state = [(_UINavigationBarItemStack *)self->super._stack state];

  if (state)
  {
    v10 = 0;
  }

  else
  {
    v10 = topItem == itemsCopy;
  }

  if (v10)
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
  }
}

- (void)navigationItemUpdatedRightBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  stack = self->super._stack;
  itemsCopy = items;
  topItem = [(_UINavigationBarItemStack *)stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  state = [(_UINavigationBarItemStack *)self->super._stack state];

  if (state)
  {
    v10 = 0;
  }

  else
  {
    v10 = topItem == itemsCopy;
  }

  if (v10)
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
  }
}

- (_UIBarButtonItemAppearanceStorage)appearanceStorage
{
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v4 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    v5 = self->_appearanceStorage;
    self->_appearanceStorage = v4;

    appearanceStorage = self->_appearanceStorage;
  }

  return appearanceStorage;
}

- (id)defaultFontDescriptor
{
  titleView = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
  traitCollection = [titleView traitCollection];
  v4 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleCallout" compatibleWithTraitCollection:traitCollection];

  return v4;
}

- (void)_installGradientLayerMaskForClippingView:(id)view
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6979380];
  viewCopy = view;
  layer = [v3 layer];
  layer2 = [viewCopy layer];
  [layer2 bounds];
  [layer setFrame:?];

  v7 = +[UIColor clearColor];
  cGColor = [v7 CGColor];

  v9 = +[UIColor blackColor];
  cGColor2 = [v9 CGColor];

  v20[0] = cGColor;
  v20[1] = cGColor2;
  v20[2] = cGColor2;
  v20[3] = cGColor;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [layer setColors:v11];

  layer3 = [viewCopy layer];
  [layer3 setMask:layer];

  [layer setStartPoint:{0.0, 0.5}];
  [layer setEndPoint:{1.0, 0.5}];
  [layer frame];
  v19[0] = &unk_1EFE2E3F8;
  v14 = 6.0 / v13;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:6.0 / v13];
  v19[1] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v14];
  v19[2] = v16;
  v19[3] = &unk_1EFE2E408;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [layer setLocations:v17];

  layer4 = [viewCopy layer];

  [layer4 setMask:layer];
}

@end